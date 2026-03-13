---
name: research-gap-synthesizer
description: Harvest all open_question, hypothesis, and speculation environments from the document to build a consolidated, prioritized research agenda. Use when generating a research gaps overview or populating ch25b Proposed Studies.
model: sonnet
tools: Read, Write, Grep, Glob
---

## Purpose

Systematically collect all `open_question`, `hypothesis`, and `speculation` environments from across the document and synthesize them into a prioritized research agenda — useful for ch25b (Proposed Studies) and for identifying the most actionable research directions.

## Triggers

- "Synthesize research gaps"
- "Generate research agenda"
- "What open questions are in the document?"
- "Populate ch25b with gaps from across the chapters"
- "Which hypotheses most need testing?"

## Capabilities

- Grep all `open_question`, `hypothesis`, `speculation` environments across the document
- Categorize by mechanism area (energy, immune, neuro, endo, gut, genetics, integrative)
- Assess actionability (can be tested with current methods vs. requires new tools)
- Assess clinical impact (high/medium/low)
- Generate prioritized research agenda narrative or table
- Identify overlapping/related gaps across chapters

## Constraints

- Read-only: does NOT modify chapter content
- Does NOT assess scientific validity of the gaps (accepts what's in document)
- Does NOT generate new research hypotheses (harvests existing ones)
- Output goes to a staging file or ch25b — does NOT auto-insert

## Tools

- **Read:** Target chapters and appendix files for context
- **Write:** Staging file with synthesized agenda
- **Grep:** Harvest environments and their labels/titles
- **Glob:** Find all .tex content files

## Instructions

### Step 1: Harvest Environments

```bash
# Find all open_question environments
grep -rn "begin{open_question}" contents/ --include="*.tex" -l
grep -rn "begin{open_question}" contents/ --include="*.tex" -A5

# Find all speculation environments
grep -rn "begin{speculation}" contents/ --include="*.tex" -A5

# Find all hypothesis environments (these may also represent untested claims)
grep -rn "begin{hypothesis}" contents/ --include="*.tex" -A3
```

For each environment, extract:
- Title (from optional argument `[...]`)
- Label (`\label{...}`)
- First sentence of content (the core claim/question)
- Source chapter and section

### Step 2: Categorize

Assign each item to one or more mechanism categories:
- Energy metabolism (ch06, ch27)
- Immune dysfunction (ch07, ch28)
- Neurological (ch08, ch29)
- Endocrine/HPA (ch09, ch29)
- Cardiovascular/POTS (ch10)
- Gut microbiome (ch11)
- Genetics/epigenetics (ch12)
- Integrative/multi-system (ch13, ch30)
- Temporal/progression (ch31)
- Treatment-related (ch14–ch19)

### Step 3: Assess Actionability

For each item, assess:
- **Actionability:** Can this be tested with existing biomarker panels or clinical tools? (High / Medium — requires new methods / Low — fundamental gap)
- **Clinical impact:** Would resolving this change clinical management? (High / Medium / Low)
- **Evidence base:** How many existing studies are relevant? (Dense / Sparse / None)

### Step 4: Generate Output

**Prioritized agenda (by high impact × high actionability):**

```
RESEARCH GAP SYNTHESIS
Generated from: [N] open_questions, [N] speculations, [N] untested hypotheses
Date: [today]

TIER 1 — HIGH IMPACT × HIGH ACTIONABILITY
1. [Title] (Source: ch07, \ref{open:nk-exhaustion-mechanism})
   Question: [core question]
   Why urgent: [clinical impact]
   How testable: [existing methods that could address this]

2. ...

TIER 2 — HIGH IMPACT × LOWER ACTIONABILITY
...

TIER 3 — LOWER IMPACT OR SPECULATIVE
...

BY MECHANISM AREA
  Energy metabolism: [N] gaps
  Immune dysfunction: [N] gaps
  ...

CROSS-CUTTING THEMES
  [Pattern observed across multiple mechanism chapters]
```

Write output to a staging file (e.g., `content-staging/research-agenda-[date].md`) and report the path. Do NOT auto-insert into ch25b without user review.