# Context Efficiency Guide

Best practices for minimizing token usage in Claude Code configuration files while maintaining clarity.

## Core Principles

### 1. Semantic Preservation (Critical)

**ABSOLUTE RULE: Optimizations transform presentation, never content.**

**Before and after MUST be semantically equivalent:**
- Same rules and constraints
- Same decision logic and branches
- Same instructions and actions
- Same examples covering same patterns

**What optimizations change:**
- Format (boxes → arrows, nested → flat)
- Tone (conversational → imperative)
- Redundancy (3 sections → 1 section)
- Verbosity (paragraph → bullet point)

**What optimizations NEVER change:**
- Rules or constraints
- Decision branches or conditions
- Instruction specificity
- Unique patterns in examples
- Safety warnings or critical details

### 2. Token Efficiency

**Every token counts.** Agent definitions, workflows, and instructions are loaded into context. Verbose documentation wastes tokens that could be used for actual work.

**Goal:** Minimal viable documentation that agents can execute on, with ALL original semantics preserved.

---

## Quick Reference: Anti-Patterns

| ❌ Anti-Pattern | ✅ Best Practice | Token Savings |
|----------------|------------------|---------------|
| ASCII art boxes | Arrow notation: `A → B → C` | ~60% |
| Nested decision trees | Flat bullet lists | ~40% |
| Redundant sections | Single purpose statement | ~50% |
| Conversational tone | Imperative instructions | ~30% |
| 5+ examples | 1-2 focused examples | ~70% |
| Verbose explanations | Terse action steps | ~40% |

---

## Verification Principle

**Before making any optimization, verify:**

1. **Understand all content** - Read entire file, identify all rules/constraints
2. **Map semantics** - List all decision branches, instructions, examples
3. **Plan transformation** - How to reduce tokens WITHOUT changing meaning
4. **Verify equivalence** - After edit, confirm all original semantics preserved

**Example verification:**
- Original: 5 decision branches
- Optimized: 5 decision branches (same logic, different format)
- ✅ Valid optimization

**Invalid optimization:**
- Original: 5 decision branches
- Optimized: 3 decision branches (merged "similar" cases)
- ❌ Invalid - lost specificity

---

## Diagram Guidelines

### ❌ Avoid: ASCII Art Boxes

**Bad (verbose):**
```
┌─────────────────────────────────┐
│ Step 1: Search papers           │
│ - Use PubMed                    │
│ - Filter by year                │
└─────────────────────────────────┘
           ↓
┌─────────────────────────────────┐
│ Step 2: Download                │
│ - Save to folder                │
└─────────────────────────────────┘
```
**Tokens:** ~200

**Good (concise):**
```
Step 1: Search PubMed, filter by year → Step 2: Download to Literature/
```
**Tokens:** ~50

**Savings:** 75%

### ✅ Acceptable: Directory Trees

**Good (compact, useful):**
```
Literature/
├── biomarkers/
├── pathophysiology/
│   ├── energy-metabolism/
│   └── immune-dysfunction/
└── treatments/
```

Directory trees using `├──` are **acceptable** because they're compact and convey structure efficiently.

### ✅ Acceptable: Simple Arrows

**Good:**
```
User → router → agent
literature-integrator → chapter-integrator → test-runner
```

Single-line arrow notation is **optimal** for showing flow.

---

## Decision Tree Simplification

### ❌ Avoid: Nested Tree Structure

**Bad (nested):**
```
Is condition A true?
├── Yes → Do X
└── No → Is condition B true?
    ├── Yes → Do Y
    └── No → Is condition C true?
        ├── Yes → Do Z
        └── No → Skip
```
**Tokens:** ~150

### ✅ Use: Flat Bullet List

**Good (flat):**
```
- Condition A? → Do X
- Condition B? → Do Y
- Condition C? → Do Z
- Otherwise → Skip
```
**Tokens:** ~60

**Savings:** 60%

**Semantic equivalence check:**
- ✅ Same 4 outcomes (X, Y, Z, Skip)
- ✅ Same conditions (A, B, C)
- ✅ Same decision order (A first, then B, then C)
- ✅ Same default (Skip if none match)

**This is valid because:** All decision branches preserved, only presentation changed.

---

## Agent Definition Structure

### Minimal Template

```yaml
---
name: agent-name
description: One-sentence trigger description
model: haiku|sonnet|opus
tools: Read, Edit, Bash
---

## Purpose

Single clear sentence.

## Triggers

- "user phrase"
- "another phrase"

## Instructions

1. Action step
2. Action step
3. Verify with command

**Example:**
```bash
grep "result" file.tex
```
```

### ❌ Avoid: Redundant Sections

**Bad (3 sections saying same thing):**
```markdown
## Purpose
This agent handles literature integration.

## What This Agent Does
This agent integrates literature into documentation.

## Role
The literature integrator finds and adds papers.
```

**Good (1 section, more specific):**
```markdown
## Purpose
Integrate research papers: search, download, add to bibliography.
```

**Semantic equivalence check:**
- ✅ Same core meaning (literature integration)
- ✅ Same scope (finding and adding papers)
- ✅ Actually MORE specific (lists concrete steps)
- ❌ INVALID if sections had different information

**This is valid because:** All three sections were redundant. If "Purpose" said "integration", "Role" said "verification", and "What This Does" said "formatting", merging would LOSE information.

---

## Writing Style

### Imperative vs. Conversational

**❌ Bad (conversational):**
```
You should probably check if the file exists before trying to edit it,
because otherwise you might run into errors. It's usually a good idea
to verify things first before making changes.
```
**Tokens:** ~80

**✅ Good (imperative):**
```
Verify file exists before editing:
```bash
grep -l "pattern" file.tex
```
```
**Tokens:** ~25

**Savings:** 69%

### Active Voice

**❌ Bad (passive):**
```
Papers should be searched for using PubMed. The results will be
reviewed and the relevant ones should be downloaded.
```

**✅ Good (active):**
```
1. Search PubMed
2. Review results
3. Download relevant papers
```

---

## Example Minimization

### How Many Examples?

**Rule:** 1-2 examples max, unless demonstrating distinct patterns.

**❌ Bad (excessive):**
```
Example 1: Searching for immune papers...
Example 2: Searching for metabolic papers...
Example 3: Searching for neurological papers...
Example 4: Searching for treatment papers...
Example 5: Searching for review papers...
```

**✅ Good (focused):**
```
Example 1: Search immune papers
Example 2: Search treatment RCTs (different pattern)
```

**Semantic equivalence check:**
- ✅ Examples 1-5 all showed SAME pattern (searching papers in different categories)
- ✅ One example demonstrates the pattern sufficiently
- ✅ Example 2 shows DIFFERENT pattern (filtering by study type)

**This is valid because:** Examples 1-5 were redundant (same pattern, different nouns). If they showed different search strategies, grep flags, or error handling, keeping all would be necessary.

### Example Content

**❌ Bad (verbose):**
```
Example: Finding papers on mitochondrial dysfunction

First, you want to go to PubMed and enter your search terms.
Make sure to use quotes for exact phrases. Then review the
results carefully to see which ones are relevant. Click on
each one to read the abstract. If it's good, download it.

grep "mitochondria" Literature/pathophysiology/*.md
```

**✅ Good (terse):**
```
Example: Search mitochondrial dysfunction papers

grep "mitochondria" Literature/pathophysiology/*.md
```

---

## Tables vs. Lists

### When to Use Tables

**Use tables for:**
- Structured comparisons (model tiers, certainty levels)
- Multi-column reference data
- Quick lookup information

**✅ Good:**
| Model | Cost | Use For |
|-------|------|---------|
| Haiku | 1x | Mechanical |
| Sonnet | 10x | Reasoning |

### When to Use Lists

**Use lists for:**
- Sequential steps
- Trigger phrases
- Single-dimension categorization

**✅ Good:**
- Search PubMed
- Download PDFs
- Add to bibliography

---

## Section Organization

### Optimal Hierarchy

```markdown
# Agent Name (H1 - from YAML name)

## Purpose (H2)
Single sentence.

## Triggers (H2)
Bullet list of phrases.

## Instructions (H2)
Numbered steps with verification.

## Examples (H2)
1-2 minimal examples.
```

### ❌ Avoid: Deep Nesting

**Bad:**
```markdown
## Instructions
### Phase 1
#### Step 1
##### Substep A
###### Detail 1
```

**Good:**
```markdown
## Instructions

**Phase 1: Search**
1. Step with detail inline
2. Step with detail inline
```

---

## Code Block Guidelines

### Minimal Context

**❌ Bad:**
```bash
# First, navigate to the directory
cd /path/to/Literature

# Now we need to check if the folder exists
ls -la

# If it exists, we can proceed to search for the pattern
grep -r "pattern" .

# Finally, let's verify the results were found
echo "Search complete"
```

**✅ Good:**
```bash
# Search for pattern
grep -r "pattern" Literature/

# Verify
ls Literature/category/
```

### Inline Commands

**When to inline vs. code block:**

- **Single command** → Inline: ``grep "pattern" file``
- **Multiple related commands** → Code block
- **Command with output** → Code block

---

## Common Patterns

### Search → Triage → Execute

**❌ Verbose:**
```
First, search for all .tex files in the contents directory.
Then, for each file, check if it contains the citation.
After that, read the relevant sections.
Finally, make the edits.
```

**✅ Concise:**
```
1. Grep for citation across contents/
2. Read matching sections
3. Edit with proper context
```

### Conditional Actions

**❌ Nested:**
```
If file exists:
  If file is .tex:
    If file contains pattern:
      Edit file
    Else:
      Skip
  Else:
    Skip
Else:
  Create file
```

**✅ Flat:**
```
- File exists + is .tex + contains pattern → Edit
- File exists but no pattern → Skip
- File doesn't exist → Create
```

---

## Verification Commands

### Minimal Verification

**❌ Verbose:**
```bash
# First let's check if the file was created successfully
if [ -f "file.tex" ]; then
  echo "File exists!"
  # Now let's verify the content is correct
  cat file.tex | grep "expected content"
  # And check the line count
  wc -l file.tex
fi
```

**✅ Concise:**
```bash
# Verify creation and content
ls file.tex && grep "expected" file.tex
```

---

## Agent-Specific Patterns

### Read-Only Agents

**Tools:** `Read, Grep, Glob`
**NOT:** `Edit, Write, Bash`

Keep focused on analysis, not modification.

### Write-Only Agents

**Tools:** `Write, Bash`
**NOT:** `Edit` (unless truly needed)

If creating new content, use Write. Don't read-then-write.

### Full-Pipeline Agents

**Tools:** `Read, Edit, Write, Bash, Grep, Glob`

Reserve for complex multi-step workflows (like literature-integrator).

---

## When to Preserve Verbosity

### Don't Optimize:

1. **Safety warnings** - Medical disclaimers, critical alerts
2. **Complex methodology** - Formalization rules, mathematical specs
3. **Legal disclaimers** - Privacy, HIPAA, licensing
4. **Tutorial content** - User-facing learning material
5. **Nuanced trade-offs** - Decision matrices requiring explanation
6. **Distinct examples** - Each showing different pattern or edge case

**Indicators:**
- Contains "CRITICAL", "MANDATORY", "WARNING"
- Reference material (loaded on-demand)
- External-facing documentation

### What "Preserve" Means

**Even when preserving verbosity:**
- Keep ALL content
- May still improve formatting (better markdown, clearer headings)
- May add structure (headings, bullet points)
- Never remove rules or constraints

**"Don't optimize" ≠ "don't touch"**
- ✅ Can improve organization
- ✅ Can fix markdown issues
- ✅ Can add clarity
- ❌ Can't remove content
- ❌ Can't merge distinct sections
- ❌ Can't simplify away specificity

---

## Optimization Workflow

### Step-by-Step Process (CRITICAL ORDER)

1. **Read and understand** - Identify ALL rules, constraints, decision branches
2. **Map semantics** - List what must be preserved (every rule, every branch, every constraint)
3. **Identify** anti-patterns (boxes, nested trees, verbosity) in presentation
4. **Measure** baseline token count (rough: word count)
5. **Plan transformation** - How to change format WITHOUT changing content
6. **Verify equivalence BEFORE editing** - Confirm transformation preserves all semantics
7. **Simplify** using patterns above
8. **Verify equivalence AFTER editing** - Confirm all original semantics still present
9. **Measure** savings

**Never skip steps 1-2 and 6-8.** Optimizing without understanding semantics will remove critical information.

**When uncertain:** Ask the user rather than guessing. Better to ask "Are these two branches semantically identical?" than to merge them and lose important distinctions.

### Tools

```bash
# Count words (rough token proxy)
wc -w .claude/agents/*.md

# Find ASCII boxes
grep "┌\|─{3,}" .claude/**/*.md

# Find nested trees
grep "    ├──" .claude/**/*.md
```

---

## Quick Wins

Highest-impact optimizations:

1. **Replace ASCII boxes** → ~60% savings per diagram
2. **Flatten decision trees** → ~40% savings per tree
3. **Remove redundant sections** → ~50% savings
4. **Condense examples** → ~70% savings
5. **Switch to imperative** → ~30% savings

---

## File Size Targets

**Optimal sizes:**
- Agent definitions: <200 lines (~3-4KB)
- Workflows: <300 lines (~5-6KB)
- System docs: <500 lines (~8-10KB)

**If exceeding:**
- Split into multiple files with lazy loading
- Move examples to separate reference doc
- Extract methodology to dedicated file

---

## Agent Invocation

**To use the config-optimizer agent:**

```
"optimize agent definitions for context efficiency"
"simplify diagrams in documentation"
"create a new agent following best practices"
"audit config files for verbosity"
```

The agent will:
1. Read and understand all content
2. Identify anti-patterns in presentation
3. Verify semantic preservation before editing
4. **Ask user when uncertain** about whether content is truly redundant
5. Apply transformations that preserve all rules/constraints
6. Report token savings and verify equivalence

**The agent NEVER removes:**
- Rules or constraints
- Decision branches
- Instruction specificity
- Unique example patterns
- Safety warnings

**When uncertain about equivalence, the agent asks rather than guessing.**
