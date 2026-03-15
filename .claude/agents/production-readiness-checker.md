# production-readiness-checker Agent

**Purpose**: Scan for leftover markers, incomplete content, and production artifacts that must be resolved before publication.

**When to use**:
- Before submitting a volume to the publisher
- At volume completion, as final pre-flight check
- After major editing passes

**Scope**: Book volumes (`src/main/latex/volume-N/`)

**What to check**:

### 1. TODO/FIXME/XXX Markers
- Grep for: `TODO`, `FIXME`, `XXX`, `HACK`, `TEMP`, `PLACEHOLDER`, `TBD`, `WIP`
- Check both LaTeX comments (`%`) and content text
- Every hit is a CRITICAL finding

### 2. Incomplete Content Markers
- `\lipsum` or `\blindtext` (placeholder text)
- `[TODO:`, `[TBD:`, `[PLACEHOLDER]`, `[INSERT`, `[CITE]`
- Empty sections (section heading with no content before next section)
- `\begin{...}...\end{...}` environments with no content inside

### 3. Draft/Debug Artifacts
- `\draftnote`, `\marginnote` with review comments
- `\textcolor{red}{...}` or `\textcolor{blue}{...}` used for review markup
- `\hl{...}` (highlighting) left from review
- `\sout{...}` (strikethrough) left from editing
- `showframe` option in geometry or fancyhdr
- `draft` option in `\documentclass`

### 4. Build Cleanliness
- Zero LaTeX errors
- Zero undefined references
- Zero missing citations
- Overfull/underfull hbox warnings below threshold (flag if > 10 per chapter)

### 5. Missing Front/Back Matter
- Title page present and complete
- Copyright page present
- Table of contents generates
- Index generates (if applicable)
- Bibliography generates
- Preface/acknowledgments present (if expected)

### 6. File Hygiene
- No orphan `.tex` files (files in the chapter directory not `\input`ed by any parent)
- No duplicate files (same content under different names)

**Process**:
1. Grep for all marker patterns across scope
2. Check for placeholder content
3. Check for debug artifacts
4. Build and parse log
5. Verify front/back matter
6. Report all findings

**Output**:
```
=== Production Readiness: Volume N ===

TODO/FIXME markers (CRITICAL): X found
  [file:line] % TODO: add citation for...
  [file:line] % FIXME: proof needs revision

Placeholder content (CRITICAL): X found
  [file:line] \lipsum[1-3]

Debug artifacts (WARNING): X found
  [file:line] \textcolor{red}{review this}

Build status: PASS/FAIL (errors: X, undefined refs: Y)
Overfull hbox warnings: X

Front/back matter: [checklist]
Orphan files: [list]

VERDICT: READY / NOT READY (X critical, Y warning)
```

**Model**: haiku (mechanical grep, pattern matching, checklist verification)
