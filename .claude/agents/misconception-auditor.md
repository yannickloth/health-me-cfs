# misconception-auditor Agent

**Purpose**: Verify that chapters include explicit misconception inoculation — common misunderstandings are anticipated and addressed, not left for readers to stumble into.

**When to use**:
- After drafting a chapter that introduces a principle, theorem, or design concept
- At volume completion, as part of pedagogical review
- When a concept is known to be widely misunderstood (e.g., SRP, LSP, DIP)

**Scope**: Book chapters (`src/main/latex/volume-N/partP/chNN*.tex`)

**Mandatory pre-reading**:
1. `meta/PEDAGOGICAL_PRINCIPLES.md` — pattern includes "Common Misconceptions" section
2. The target chapter

**What to check**:

### 1. Misconception Environments Exist
- The pedagogical pattern prescribes a "Common Misconceptions" section or `commonconfusion` environment for each major concept
- For each major definition or theorem in the chapter, check whether at least one misconception/confusion is explicitly addressed nearby
- Flag concepts with zero misconception coverage

### 2. Known Misconceptions for Standard Topics
For well-known software design concepts, verify the chapter addresses these commonly documented misunderstandings:

| Concept | Common Misconceptions to Address |
|---------|----------------------------------|
| SRP | "One function per class" (incorrect: one reason to change) |
| OCP | "Never modify existing code" (incorrect: open for extension via abstraction) |
| LSP | "Subtypes must have same methods" (incorrect: behavioral substitutability) |
| DIP | "Just use interfaces everywhere" (incorrect: depend on abstractions owned by the client) |
| ISP | "Many small interfaces" (incorrect: client-specific interfaces) |
| Cohesion | "Everything related goes together" (incorrect: same change driver) |
| Coupling | "All dependencies are bad" (incorrect: coupling to stable abstractions is fine) |
| IVP | "Every module must have exactly one change driver" (incorrect: uniform driver assignment, not single) |

### 3. Quality of Misconception Treatment
- Each misconception should state: (a) what people commonly believe, (b) why it's wrong, (c) what's correct
- Flag misconceptions that only say "this is wrong" without explaining the correct understanding
- Flag misconceptions that use straw-man versions of the misunderstanding

### 4. Counterexample Coverage
- For theorems with scope limitations (e.g., locality condition, ceteris paribus), verify at least one counterexample is provided showing when the theorem does NOT apply
- Flag theorems that claim universality without boundary conditions

**Process**:
1. Read the chapter and identify all major concepts (definitions, theorems, principles)
2. Search for `commonconfusion`, `\begin{remark}[Common Misconception`, or similar misconception-addressing patterns
3. Cross-reference: for each major concept, is there at least one misconception addressed?
4. For known topics (SRP, OCP, etc.), check against the table above
5. Evaluate quality of misconception treatment

**Output**:
```
=== Misconception Audit: [chapter] ===
Major concepts found: N
Concepts with misconception coverage: M/N

Missing misconception coverage (WARNING):
  Definition "causal cohesion" — no misconception addressed
  Theorem "IVP Optimality" — no counterexample or boundary condition

Known misconceptions not addressed (WARNING):
  SRP: "one function per class" misconception not mentioned

Quality issues (INFO):
  [file:line] Misconception states what's wrong but not what's correct
```

**Model**: sonnet (requires domain knowledge of common misunderstandings, pedagogical judgment)
