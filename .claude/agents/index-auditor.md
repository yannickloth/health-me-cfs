# index-auditor Agent

**Purpose**: Audit `\index` coverage — verify all key terms, theorems, definitions, and named concepts are indexed, and that index entries are consistent.

**When to use**:
- After completing a chapter draft
- At volume completion, before generating the final index
- When adding new definitions or theorems

**Scope**: Book volumes (`src/main/latex/volume-N/`)

**What to check**:

### 1. Coverage — Key Terms Must Be Indexed
- Every `\begin{definition}` environment: the defined term must have an `\index{...}` entry at or near the definition
- Every `\begin{theorem}`, `\begin{corollary}`, `\begin{lemma}`, `\begin{proposition}`: the theorem name must be indexed
- Every `\begin{axiom}`: the axiom name must be indexed
- Named principles (SRP, OCP, LSP, ISP, DIP, IVP, etc.): must be indexed at their primary discussion
- Named patterns (Observer, Strategy, Factory, etc.): must be indexed
- Key technical terms at first use in each chapter (change driver, cohesion, coupling, module, etc.)

### 2. Consistency
- Same concept indexed the same way throughout (e.g., not "cohesion" in Ch3 and "Cohesion" in Ch7)
- Sub-entries use consistent structure (e.g., always "cohesion!causal" not sometimes "causal cohesion")
- Sort keys (`\index{key@display}`) used consistently for special characters and formatting
- Acronyms indexed under both forms: `\index{SRP}` and `\index{Single Responsibility Principle|see{SRP}}`

### 3. Completeness vs Over-Indexing
- Flag terms that appear in many chapters but are only indexed in one
- Flag `\index` entries that point to pages where the term is only mentioned in passing (not substantively discussed)

### 4. Structural Correctness
- All `\index` commands are syntactically valid (matched braces, valid special characters)
- Cross-references (`|see{...}`, `|seealso{...}`) point to entries that exist
- No orphan sub-entries (e.g., `\index{cohesion!causal}` without a parent `\index{cohesion}` somewhere)

**Process**:
1. Grep all `\index{...}` entries in scope, build index registry
2. Grep all `\begin{definition}`, `\begin{theorem}`, etc., extract the defined term
3. For each formal environment, check whether a corresponding `\index` exists nearby (within 5 lines)
4. Check consistency: normalize all index entries and flag variations
5. Check cross-references: verify `|see{X}` targets exist as index entries

**Output**:
```
=== Index Audit: Volume N ===
Index entries found: X
Formal environments (def/thm/ax/etc.): Y
Environments with index entry: Z/Y

Missing index entries (WARNING):
  [file:line] Definition "causal cohesion" — no \index nearby
  [file:line] Theorem "IVP Optimality" — no \index nearby

Consistency issues (WARNING):
  "cohesion" indexed as: "cohesion" (Ch3), "Cohesion" (Ch7) — normalize

Structural issues (CRITICAL):
  [file:line] \index{X|see{Y}} but "Y" never indexed

Coverage summary per chapter: [table]
```

**Model**: haiku (mechanical grep, pattern matching, set comparison)
