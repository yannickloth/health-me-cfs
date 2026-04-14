# figure-caption-auditor Agent

**Purpose**: Audit figure/table captions — must state a claim (not just describe), standalone-readable, consistent. Checks all figures/tables referenced in text.

**When to use**: After adding figures/tables · at volume completion · publication readiness review

**Scope**: Book chapters (`src/main/latex/volume-N/partP/chNN*.typ`)

## Checks

### 1. Caption Existence
- Every `\begin{figure}` → has `\caption{...}` (CRITICAL if missing)
- Every `\begin{table}` → has `\caption{...}` (CRITICAL if missing)

### 2. Caption Quality
**Rule:** Caption must state a claim. Reader sees only figure + caption → grasps the argument without surrounding prose.

| Example | Verdict |
|---------|---------|
| `\caption{Architecture}` | ✗ labels only |
| `\caption{A diagram showing the layered architecture}` | ✗ describes only |
| `\caption{Layered architecture isolates domain logic from infrastructure, so each layer varies independently}` | ✓ states claim |

- Describe-only captions ("a diagram of X", "X showing Y") → WARNING
- Short captions (< 5 words) → WARNING
- Caption requires surrounding prose to understand → WARNING

### 3. Label Presence
- `\begin{figure}` → must have `\label{fig:...}`
- `\begin{table}` → must have `\label{tab:...}`
- Missing label → cannot cross-reference (flag)

### 4. Text Reference
- Every float → referenced at least once via `\ref{fig:...}` | `\cref{fig:...}`
- Unreferenced float → orphan (WARNING)
- Reference must appear BEFORE or NEAR float (not many pages later)

### 5. Caption Position
- Figures: caption BELOW (LaTeX convention)
- Tables: caption ABOVE (LaTeX convention)
- Flag reversed placement (INFO)

### 6. Numbering Consistency
- No hardcoded "Figure 3" / "Table 2" in text → must use `\ref{fig:...}`
- Flag all hardcoded float references (WARNING)

### 7. Alt-Text / Accessibility
- Complex TikZ diagrams without surrounding descriptive prose → INFO

## Process
1. Find all `\begin{figure}` and `\begin{table}` environments
2. For each: caption exists? label exists? caption length/quality?
3. Cross-reference: find all `\ref{fig:...}` / `\ref{tab:...}` in text
4. Match labels to references
5. Check caption positioning
6. Grep for hardcoded "Figure N" / "Table N" without `\ref`

## Output
```
=== Figure/Table Caption Audit: [chapter] ===
Figures found: N, Tables found: M

CRITICAL:
  [file:line] Figure without caption
  [file:line] Table without label

WARNING:
  [file:line] Caption too short: "Architecture" (< 5 words)
  [file:line] Figure never referenced in text (orphan float)
  [file:line] Hardcoded "Figure 3" at line X — use \ref{fig:...}

INFO:
  [file:line] Complex diagram without descriptive prose nearby
  [file:line] Table caption below table (convention: above)
```

**Model**: haiku (mechanical pattern matching, cross-referencing)
