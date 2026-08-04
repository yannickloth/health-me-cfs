# Agent Architecture: Hierarchical Coordination + Strict Verification

## Core Principle: Mandatory Active Delegation

Claude MUST interpret user requests and immediately delegate to specialized agents.

| Step | Action |
|------|--------|
| Parse | Understand user intent (not literal words) |
| Map | Identify agent(s) that can accomplish this |
| Delegate | Spawn agent(s) WITHOUT attempting task first |

- ✗ Anti-pattern: "Let me try this first, then delegate if needed"
- ✓ Correct: "This requires [agent], spawning immediately"

See CLAUDE.md for interpretation examples.

---

## Problem Statement

**Original issue:** `literature-manager` would declare tasks "complete" without integrating papers into main chapter files.

**Root causes:**
1. Task complexity gradient — Steps 1–5 (download, organize, bibliography) mechanical; Step 6 (edit chapters) judgment + multi-file edits
2. Fuzzy completion criteria — "Integrate into document" interpreted as "create integration guides" not "edit files"
3. Conservative agent behavior — prefer creating new files over editing existing ones
4. No verification enforcement — self-declared success without proof

## Solution: Two-Layered Architecture

### Layer 1: Coordinator Pattern

- Purpose: break complex multi-step tasks → single-responsibility agents
- Implementation: `literature-integration-coordinator.md` workflow

**Benefits:** ONE job per agent · failure isolation · easier debugging · parallel execution potential

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

- Purpose: ensure each agent completes its work (not just claims to)
- Implementation: 3 verification levels

#### Level 2.1: Agent Self-Verification (Mandatory)

Each agent verifies own work before returning.

**`chapter-integrator` example:**
```bash
# Before declaring success, agent MUST run:
grep "cite{Che2025}" contents/part2-pathophysiology/ch07-immune-dysfunction.tex

# If grep returns 0 results:
#   → Edit FAILED
#   → Retry Edit tool
#   → Maximum 3 attempts
#   → If still failing, return ERROR status (not SUCCESS)
```

**`literature-manager` example:**
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

Coordinator independently verifies each agent output.

**Coordinator workflow example:**
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

Before declaring workflow complete:

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

| State | `literature-manager` | `chapter-integrator` | `scientific-insight-generator` |
|-------|----------------------|----------------------|--------------------------------|
| Before | Download + organize + bibliography + appendix + chapters + ??? (too many → skip steps) | — | — |
| After  | Download + organize + bibliography + appendix (bounded) | ONLY edit chapters (verifiable) | ONLY creative analysis (distinct phase) |

### 2. Explicit Verification Criteria

**Before** (no clear criteria, agent rationalizes "guides = integration"):
```markdown
## Step 6: Integrate into Main Document
When findings are significant, add to appropriate chapter...
```

**After** (unambiguous, verifiable):
```markdown
## Success Criteria (Non-Negotiable)

You have NOT completed this task until:
- [ ] Edit tool used on chapter file
- [ ] grep "cite{KEY}" CHAPTER.tex returns results
- [ ] Citation appears in at least one chapter

DO NOT return success if grep returns 0 results.
```

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

- Agent self-verification fails → Agent retries
- Agent returns success but coordinator verification fails → Coordinator retries agent
- Coordinator retries exhausted → Report partial completion to user

No silent failures.

## New Agents Created

### chapter-integrator

| Field | Value |
|-------|-------|
| Model | Haiku (focused, no Opus needed) |
| Purpose | Edit chapter .tex → add citations from integrated papers |
| Tools | Read, Edit only |
| Success | grep verification |

**Why separate?** Separates mechanical (bibliography) from judgment (placement). Invokable multiple times per chapter.

**Verification:**
```bash
# Must pass before returning
grep "cite{CITATION_KEY}" TARGET_CHAPTER.tex
```

### scientific-insight-generator

| Field | Value |
|-------|-------|
| Model | Opus (deep creative reasoning) |
| Purpose | After integration: novel phenomena, cross-lit connections, treatment implications, research directions |
| Phase | Optional (core integration succeeds without it) |
| Cost | Time-intensive (don't block other phases) |

**Output:** `scientific-insights.md` per paper — novel mechanisms · paper connections · pharmaceutical interventions · nutraceutical approaches · proposed studies · risk assessments

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

| Change | Detail |
|--------|--------|
| Removed | No longer edits chapter files |
| Added | Create `integration-guide.md` for chapter-integrator |
| Added | 4 mandatory verification steps before completion |
| Clarified | Reports what was done AND what's ready for next phase |

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

### User triggers coordinator

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

### Output to user

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

## Benefits

| Benefit | Detail |
|---------|--------|
| Reliability | Multi-level verification · explicit commands (grep, ls) · no rationalization |
| Debuggability | Exact failed phase known · verification output shows pass/fail · re-run individual phases |
| Modularity | Self-contained agents · improve one without affecting others · add new phases (e.g., `translation-checker`) easily |
| Transparency | Comprehensive report · partial completions marked · no silent failures |
| Maintainability | Simpler instructions (single responsibility) · explicit + testable verification · easy criteria updates |

## Lessons Learned

| # | Lesson | Implication |
|---|--------|-------------|
| 1 | Clear instructions ≠ reliable execution | Agents misinterpret, settle for "good enough", prefer low-risk actions → add unmissable verification |
| 2 | Verification must be mandatory + explicit | "verify your work" too vague → exact command (`grep "pattern" file.tex`), expected output ("Must return results"), failure action ("If 0, retry") |
| 3 | Hierarchical > monolithic | 1 agent × 10 steps = fragile · 10 agents × 1 step = robust |
| 4 | Match model to task | Haiku=mechanical (chapter-integrator) · Sonnet=moderate+tools (literature-manager) · Opus=creative (scientific-insight-generator) |
| 5 | Partial success is valuable | Not all-or-nothing — 2/3 papers integrated = progress worth reporting |

## Future Improvements

| # | Improvement | Detail |
|---|-------------|--------|
| 1 | Parallel agent execution | Run literature-manager on multiple papers in parallel |
| 2 | Verification test suite | `test-integration.sh`: create dummy paper → run coordinator → verify checkpoints → cleanup |
| 3 | Agent performance metrics | Track success rate, retry frequency, time per phase → identify weak points |
| 4 | User preferences | Certainty threshold · which phases to run · verification strictness |
| 5 | Rollback capability | Phase 5 (build) fails → auto-rollback Phase 3 (chapter edits) |

## Conclusion

**Hierarchical coordination + strict verification = reliability.**

| Combo | Result |
|-------|--------|
| Coordination without verification | Distributed wishful thinking |
| Verification without coordination | One agent doing too much |
| Both together | Clear responsibility · proven work · graceful failure · transparency |

Applies to any complex multi-step workflow in the project.