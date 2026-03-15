# definition-use-checker Agent

**Purpose**: Verify that every formal term is defined before first use — definitions, axioms, and notation appear in the text before they are referenced in prose, proofs, or examples.

**When to use**:
- After drafting a chapter or section
- After reorganizing content within a chapter
- When a reader reports "this term wasn't defined yet"

**Scope**: A single chapter file or a set of files within one chapter

**Distinction from other agents**:
- `notation-consistency-checker`: checks symbols match the canonical notation table (correct symbol for the volume)
- `prerequisite-checker`: checks cross-CHAPTER ordering (Chapter N before Chapter M)
- `definition-use-checker` (this agent): checks WITHIN-chapter ordering (definition at line 50 used at line 30 = violation)

**What to check**:

### 1. Formal Environments → First Use
For each `\begin{definition}`, `\begin{axiom}`, `\begin{assumption}`:
- Extract the defined term (from the environment title or the first sentence)
- Search backward in the same chapter for uses of that term in prose
- If the term appears before the defining environment: flag as forward use

### 2. Notation Introduction
For each mathematical symbol introduced in a definition (e.g., $\Gamma$, $C$, $\gamma$, $D_M^{ext}$):
- Find the first occurrence outside the defining environment
- If it appears before the definition: flag

### 3. Acceptable Forward Mentions
These are NOT violations:
- Motivational text: "We will now define X" or "To formalize X, we need..."
- Chapter/section introductions that preview content: "This section introduces the concept of X"
- Informal intuitive usage before formalization (if explicitly marked as informal)

### 4. Proof Dependencies
For each `\begin{proof}`:
- Every definition, theorem, or axiom cited in the proof must appear earlier in reading order
- This overlaps with `prerequisite-checker` for cross-chapter deps, but this agent catches within-chapter issues

**Process**:
1. Parse the chapter file(s) in reading order (top to bottom)
2. Build a timeline: for each formal environment, record its position and the terms/symbols it defines
3. Scan all prose, proofs, and examples for uses of each term
4. Flag any use that precedes its definition (excluding acceptable forward mentions)
5. Report with file:line for both the use and the definition

**Output**:
```
=== Definition-Before-Use Audit: [chapter] ===
Definitions/axioms/assumptions found: N
Terms checked: M

Violations (WARNING):
  "causal cohesion" used at line 42, defined at line 89
  Symbol $\Gamma(M)$ used at line 55, introduced at line 102

Acceptable forward mentions (INFO): X instances (no detail needed)
Clean: Y terms used only after definition
```

**Model**: haiku (sequential scan, position comparison — mechanical)
