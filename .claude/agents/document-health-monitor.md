---
name: document-health-monitor
description: Generate structural health metrics for the document — chapter lengths, citation density, empty section detection, placeholder identification. Use when checking document balance, finding stub sections, or assessing Part V skeleton completeness. Works with Typst (.typ) files.
model: haiku
tools: Read, Grep, Glob, Bash
---

## Purpose

Provide a structural health overview of the document without reading full content: chapter sizes, citation counts per chapter, proportion of placeholder content, and which Part V skeleton sections still need work.

## Triggers

- "Document health check"
- "Document metrics"
- "Find empty sections / stubs"
- "How complete is Part V?"
- "Which chapters are shortest?"
- "Where are the \lipsum placeholders?"
- During planning sessions before a writing sprint

## Capabilities

- Count lines and approximate word count per chapter
- Count citations per chapter (LaTeX: `\cite{}`, Typst: `@Key`)
- Detect placeholder content (`\lipsum`, `lorem()`, `// TODO`, `% TODO`, `% PLACEHOLDER`)
- Identify empty environments or skeleton-only sections
- Flag chapters with zero citations (likely stub)
- Generate summary health report with rankings

## Constraints

- Read-only: does NOT modify files
- Does NOT assess content quality (use `content-reviewer`)
- Metrics are structural proxies, not quality measures
- Line counts include markup (not pure text)

## Format Detection

All files use Typst (.typ) format. Adapt grep patterns accordingly.

## Tools

- **Read:** Individual files for spot-checking placeholders
- **Grep:** Count citations, find placeholders, find empty environments
- **Glob:** List all chapter files
- **Bash:** `wc -l` for line counts

## Instructions

### Step 1: List All Chapter Files

```bash
# LaTeX
glob "src/main/typst/mecfs/**/*.typ"
# Typst
glob "typst/src/main/typst/mecfs/**/*.typ"
```

Group by part (part1 through part5, appendices).

### Step 2: Measure Line Counts

```bash
# Typst (primary)
wc -l typst/src/main/typst/mecfs/part1-clinical/*.typ typst/src/main/typst/mecfs/part2-pathophysiology/*.typ \
      typst/src/main/typst/mecfs/part3-treatment/*.typ typst/src/main/typst/mecfs/part4-research/*.typ \
      typst/src/main/typst/mecfs/part5-modeling/*.typ typst/src/main/typst/mecfs/appendices/*.typ
# LaTeX (if still present)
wc -l src/main/typst/mecfs/part1-clinical/*.typ src/main/typst/mecfs/part2-pathophysiology/*.typ \
      src/main/typst/mecfs/part3-treatment/*.typ src/main/typst/mecfs/part4-research/*.typ \
      src/main/typst/mecfs/part5-modeling/*.typ src/main/typst/mecfs/appendices/*.typ
```

### Step 3: Count Citations Per Chapter

```bash
# Typst
grep -c "@[A-Za-z]" typst/src/main/typst/mecfs/part1-clinical/*.typ 2>/dev/null
# LaTeX
grep -c "\\\\cite{" src/main/typst/mecfs/part1-clinical/*.typ 2>/dev/null
# Repeat for each part
```

### Step 4: Detect Placeholders

```bash
# Typst
grep -rn "// TODO\|// PLACEHOLDER\|// STUB\|lorem" typst/src/main/typst/mecfs/ --include="*.typ"
# LaTeX
grep -rn "% TODO\|% PLACEHOLDER\|% STUB\|\\\\lipsum\|lorem ipsum" src/main/typst/mecfs/ --include="*.typ"
```

### Step 5: Part V Skeleton Analysis

For each Part V chapter, check what exists:
```bash
# Typst
grep -c "^=" typst/src/main/typst/mecfs/part5-modeling/*.typ        # headings
grep -c "#" typst/src/main/typst/mecfs/part5-modeling/*.typ          # function calls (environments)
grep -c "@[A-Z]" typst/src/main/typst/mecfs/part5-modeling/*.typ     # citations
grep -c "// TODO" typst/src/main/typst/mecfs/part5-modeling/*.typ     # placeholders
```

### Step 6: Generate Health Report

```
DOCUMENT HEALTH REPORT
Date: [today]

CHAPTER SIZE RANKING (by line count)
  Largest:
    ch14-symptom-management.typ: [N] lines
    ...
  Smallest (potential stubs):
    ch26-modeling-foundations.typ: [N] lines ← Part V skeleton
    ...

CITATION DENSITY (citations per 100 lines)
  Dense (>5 cit/100): ch07, ch06, ...
  Sparse (<1 cit/100): ch26, ch27, ... ← likely need literature
  Zero citations: [list] ← definitely stub or intro-only

PLACEHOLDER CONTENT
  \lipsum found in: [N] files
    - src/main/typst/mecfs/part5-modeling/ch27-energy-metabolism-models.typ (3 uses)
    - ...
  % TODO found in: [N] files
    - ...

PART V COMPLETENESS
  ch26: [N lines, N sections, N citations, N lipsum] — STATUS: Skeleton
  ch27: [N lines, N sections, N citations, N lipsum] — STATUS: Skeleton
  ...

STRUCTURAL IMBALANCES
  - Part V has [N]% of total lines but [N]% of citations — heavily under-cited
  - ch[NN] is [X]× larger than average — may need splitting (use file-splitter)

RECOMMENDED ACTIONS (priority order):
  1. Fill Part V skeleton — 7 chapters are pure structure
  2. Add citations to: [list of zero-citation chapters]
  3. Remove \lipsum from: [list of files]
```