# Agent Architecture: Hierarchical Coordination with Strict Verification

## Core Principle: Mandatory Active Delegation

**Claude MUST actively interpret user requests and immediately delegate to specialized agents.**

This is not optional. Every request must be:
1. **Parsed** - Understand user intent (not just literal words)
2. **Mapped** - Identify which agent(s) can accomplish this
3. **Delegated** - Spawn appropriate agent(s) WITHOUT attempting task yourself first

**Anti-pattern:** "Let me try this first, then delegate if needed"
**Correct pattern:** "This requires [agent], spawning immediately"

See CLAUDE.md for detailed interpretation examples.

---

## Problem Statement

**Original issue:** The `literature-manager` agent would sometimes declare tasks "complete" without actually integrating papers into main chapter files, despite having clear instructions to do so.

**Root causes identified:**
1. **Task complexity gradient**: Steps 1-5 (download, organize, bibliography) were mechanical, while Step 6 (edit chapters) required judgment and multiple file edits
2. **Fuzzy completion criteria**: "Integrate into document" was interpreted as "create integration guides" rather than "actually edit files"
3. **Conservative agent behavior**: Agents prefer creating new files over editing existing ones when uncertain
4. **No verification enforcement**: Agent could self-declare success without proving work was done

## Solution: Two-Layered Architecture

### Layer 1: Coordinator Pattern

**Purpose:** Break complex multi-step tasks into single-responsibility agents

**Implementation:** `literature-integration-coordinator.md` workflow

**Benefits:**
- Each agent has ONE clear job
- Failure isolation (one agent failing doesn't break entire pipeline)
- Easier debugging (know exactly which phase failed)
- Parallel execution potential

**Structure:**
```
Coordinator (workflow in main session)
├── Phase 1: literature-researcher
│   └── Task: Search for papers
│   └── Output: Paper list with DOIs
│
├── Phase 2: literature-manager
│   └── Task: Download, organize, bibliography, appendix
│   └── Output: Literature/ folders, references.bib updates, integration guides
│
├── Phase 3: chapter-integrator (NEW)
│   └── Task: ONLY edit chapter .tex files
│   └── Output: Edited chapters with citations
│
├── Phase 4: scientific-insight-generator (NEW)
│   └── Task: Creative analysis with Opus model
│   └── Output: Treatment ideas, research directions, cross-paper insights
│
└── Phase 5: syntax-fixer
    └── Task: Verify build succeeds
    └── Output: Build validation
```

### Layer 2: Strict Verification Protocol

**Purpose:** Ensure each agent actually completes its work, not just claims to

**Implementation:** Three levels of verification

#### Level 2.1: Agent Self-Verification (Mandatory)

Each agent must verify its own work before returning:

**Example from `chapter-integrator`:**
```bash
# Before declaring success, agent MUST run:
grep "cite{Che2025}" contents/part2-pathophysiology/ch07-immune-dysfunction.tex

# If grep returns 0 results:
#   → Edit FAILED
#   → Retry Edit tool
#   → Maximum 3 attempts
#   → If still failing, return ERROR status (not SUCCESS)
```

**Example from `literature-manager`:**
```bash
# Verification 1: Folder structure
ls Literature/biomarkers/Che_2025_InnateImmunity/{abstract.txt,notes.md,key-findings.md,integration-guide.md}
# All files must exist

# Verification 2: Bibliography
grep "@article{Che2025" references.bib
# Entry must exist

# Verification 3: Appendix
grep "cite{Che2025}" contents/appendices/appendix-h*.tex
# Citation must appear

# Only declare COMPLETE if ALL verifications pass
```

#### Level 2.2: Coordinator Verification (Trust but Verify)

Coordinator independently verifies each agent's output:

**Example from coordinator workflow:**
```bash
# After chapter-integrator reports success
# Coordinator runs independent check:
grep "cite{Che2025}" contents/part2-pathophysiology/ch07-immune-dysfunction.tex

# If verification fails:
#   → Spawn chapter-integrator AGAIN with explicit error message
#   → Maximum 2 retries
#   → After retries: Escalate to user with partial completion report
```

#### Level 2.3: Final Pipeline Verification

Before declaring entire workflow complete:

```bash
# Master verification checklist
for cite_key in Che2025 Wang2023 Esfandyarpour2019; do
  # 1. Downloaded?
  ls Literature/*/${cite_key}_*/

  # 2. In bibliography?
  grep "@article{$cite_key" references.bib

  # 3. In appendix?
  grep "cite{$cite_key}" contents/appendices/appendix-h*.tex

  # 4. In chapters? ⭐ CRITICAL
  grep -r "cite{$cite_key}" contents/part*/*.tex | wc -l
  # Must return ≥1
done

# 5. Build succeeds?
nix build
# Exit code must be 0

# ALL checks must pass before workflow declares COMPLETE
```

## Key Architectural Principles

### 1. Single Responsibility

**Before:**
- `literature-manager`: Download + organize + bibliography + appendix + chapters + ???
  - Too many responsibilities → easy to skip steps

**After:**
- `literature-manager`: Download + organize + bibliography + appendix (clear, bounded scope)
- `chapter-integrator`: ONLY edit chapters (focused, verifiable)
- `scientific-insight-generator`: ONLY creative analysis (distinct phase)

### 2. Explicit Verification Criteria

**Before:**
```markdown
## Step 6: Integrate into Main Document
When findings are significant, add to appropriate chapter...
```
→ No clear success criteria, agent can rationalize "guides = integration"

**After:**
```markdown
## Success Criteria (Non-Negotiable)

You have NOT completed this task until:
- [ ] Edit tool used on chapter file
- [ ] grep "cite{KEY}" CHAPTER.tex returns results
- [ ] Citation appears in at least one chapter

DO NOT return success if grep returns 0 results.
```
→ Unambiguous, verifiable criteria

### 3. Fail-Fast with Retries

**Agent behavior:**
```python
# Pseudocode for agent logic
def complete_task():
    perform_work()

    # Self-verification
    if not verify_work():
        if attempts < MAX_RETRIES:
            retry_with_different_approach()
        else:
            return ERROR_STATUS  # Fail explicitly

    return SUCCESS_STATUS
```

**Coordinator behavior:**
```python
# Pseudocode for coordinator
def run_phase(agent, task):
    result = spawn_agent(agent, task)

    # Independent verification
    if not verify_result(result):
        if retries < MAX_RETRIES:
            result = spawn_agent(agent, task_with_error_context)
        else:
            log_failure()
            continue_with_partial_success()

    return result
```

### 4. Defense in Depth

Multiple verification layers catch failures:
```
If agent self-verification fails → Agent retries
If agent returns success but coordinator verification fails → Coordinator retries agent
If coordinator retries exhaust → Report partial completion to user

No silent failures. Every failure is caught and handled.
```

## New Agents Created

### chapter-integrator

**Model:** Haiku (task is focused, doesn't need Opus reasoning)

**Purpose:** Edit chapter .tex files to add citations from integrated papers

**Why separate?**
- Different toolset (Read, Edit only)
- Different success criteria (grep verification)
- Separates mechanical work (bibliography) from judgment work (placement)
- Can be invoked multiple times for different chapters

**Verification:**
```bash
# Must pass before returning
grep "cite{CITATION_KEY}" TARGET_CHAPTER.tex
```

### scientific-insight-generator

**Model:** Opus (requires deep creative reasoning)

**Purpose:** After papers are integrated, analyze for:
- Novel biological phenomena
- Cross-literature connections
- Treatment implications (medications + supplements)
- Research directions

**Why separate?**
- Fundamentally different task (creative vs. mechanical)
- Requires most powerful model (Opus for reasoning)
- Optional phase (core integration can succeed without it)
- Time-intensive (don't block other phases)

**Output:** `scientific-insights.md` per paper with:
- Novel mechanisms identified
- Connections to other papers
- Pharmaceutical interventions brainstormed
- Nutraceutical approaches
- Proposed research studies
- Risk assessments

**Verification:**
```bash
# Check insights file exists and is substantial
wc -l Literature/biomarkers/Che_2025_InnateImmunity/scientific-insights.md
# Expected: >200 lines

# Check required sections present
grep "## Novel Biological Phenomena" scientific-insights.md
grep "## Treatment Implications" scientific-insights.md
grep "## Proposed Research Studies" scientific-insights.md
```

## Changes to Existing Agents

### literature-manager (Updated)

**Changes:**
1. **Removed responsibility:** No longer edits chapter files
2. **Added responsibility:** Create `integration-guide.md` for chapter-integrator
3. **Added verification:** Four mandatory verification steps before completion
4. **Clarified output:** Reports what was done AND what's ready for next phase

**New success criteria:**
```markdown
Before declaring COMPLETE, verify:
1. ls Literature/.../key-findings.md → exists
2. grep "@article{KEY}" references.bib → found
3. grep "cite{KEY}" appendix-h*.tex → found
4. ls Literature/.../integration-guide.md → exists and substantial

ALL must pass. If any fails, DO NOT declare success.
```

## Workflow Invocation

### User triggers coordinator:

```
User: "find and integrate papers on NK cell dysfunction"

Main Claude session:
  ├─ Loads literature-integration-coordinator.md workflow
  ├─ Executes Phase 1: Spawns literature-researcher
  │   └─ Returns: 3 papers found
  ├─ Executes Phase 2: Spawns literature-manager (3 times)
  │   └─ Each returns: Downloaded, bibliography updated, integration guide created
  │   └─ Coordinator verifies: grep confirms all citations exist
  ├─ Executes Phase 3: Spawns chapter-integrator (3 papers × 2 chapters = 6 invocations)
  │   └─ Each returns: Chapter edited, citation verified
  │   └─ Coordinator verifies: grep confirms citations in chapters
  ├─ Executes Phase 4: Spawns scientific-insight-generator (3 papers)
  │   └─ Each returns: Comprehensive analysis with treatment ideas
  │   └─ Coordinator verifies: insights files exist and substantial
  ├─ Executes Phase 5: Spawns syntax-fixer
  │   └─ Returns: Build succeeds
  └─ Generates final report for user
```

### Output to user:

```markdown
✅ Literature integration complete!

Papers integrated: 3
Chapters updated: 2
New treatments suggested: 5

Verification:
- ✅ All papers downloaded
- ✅ All citations in bibliography
- ✅ All papers in appendix
- ✅ All papers cited in chapters (verified with grep)
- ✅ Build succeeds
- ✅ Creative analysis complete

Key actionable insights:
- AHCC may support NK cell function (low-risk, discuss with doctor)
- Nicotinamide Riboside for metabolic support
- Treatment timing may be critical for immune interventions

Full report: Literature/INTEGRATION_REPORT_[timestamp].md
Scientific insights: Literature/.../scientific-insights.md
```

## Benefits of This Architecture

### 1. Reliability
- Verification at multiple levels catches failures
- Explicit verification commands (grep, ls) leave no ambiguity
- Agents cannot rationalize away incomplete work

### 2. Debuggability
- Know exactly which phase failed
- Verification output shows what passed/failed
- Can re-run individual phases without starting over

### 3. Modularity
- Each agent is self-contained
- Can improve one agent without affecting others
- Can add new phases (e.g., `translation-checker`) without rewriting existing agents

### 4. Transparency
- User sees comprehensive report of what happened
- Partial completions are clearly marked
- No silent failures

### 5. Maintainability
- Each agent's instructions are simpler (single responsibility)
- Verification logic is explicit and testable
- Easy to update verification criteria as needs change

## Lessons Learned

### 1. Clear instructions ≠ Reliable execution
Even with detailed step-by-step instructions, agents may:
- Misinterpret completion criteria
- Satisfy with "good enough" partial results
- Prefer low-risk actions (create files) over high-risk ones (edit files)

**Solution:** Add verification that cannot be misinterpreted

### 2. Verification must be mandatory and explicit
Instructions like "verify your work" are too vague. Agents need:
- Exact commands to run: `grep "pattern" file.tex`
- Expected output: "Must return results"
- Failure action: "If 0 results, retry"

### 3. Hierarchical coordination works better than monolithic agents
One large agent with 10 steps is fragile. Ten small agents each doing 1 step is robust.

### 4. Use appropriate models for each task
- Haiku: Mechanical tasks with clear criteria (chapter-integrator)
- Sonnet: Moderate reasoning + tools (literature-manager)
- Opus: Deep creative reasoning (scientific-insight-generator)

Don't waste Opus on mechanical tasks. Don't ask Haiku to be creative.

### 5. Partial success is valuable
Don't make workflow all-or-nothing. If 2 of 3 papers integrate successfully, that's progress worth reporting.

## Future Improvements

### 1. Parallel Agent Execution
Currently sequential. Could run literature-manager on multiple papers in parallel.

### 2. Verification Test Suite
Create automated tests:
```bash
test-integration.sh:
  - Create dummy paper
  - Run coordinator
  - Verify all checkpoints passed
  - Cleanup
```

### 3. Agent Performance Metrics
Track:
- Success rate per agent
- Retry frequency
- Time per phase
- Use to identify weak points

### 4. User Preferences
Allow user to configure:
- Certainty threshold (only High? or Medium+?)
- Which phases to run (skip creative analysis if time-constrained?)
- Verification strictness

### 5. Rollback Capability
If Phase 5 (build) fails, offer to rollback Phase 3 (chapter edits) automatically.

## Conclusion

The combination of **hierarchical agent coordination** + **strict verification** solves the reliability problem.

Neither alone is sufficient:
- Coordination without verification → Distributed wishful thinking
- Verification without coordination → One agent trying to do too much

Together, they create a reliable system where:
- Each agent has a clear, achievable responsibility
- Every agent proves its work via verification
- Failures are caught and handled gracefully
- Users get transparency into what succeeded and what didn't

This architecture can be applied to any complex multi-step workflow in the project.