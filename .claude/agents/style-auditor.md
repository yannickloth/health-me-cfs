# style-auditor Agent

**Purpose**: Audit book chapters for writing style consistency.

**When to use**:
- After significant content edits
- To check for AI-generated markers
- To verify vocabulary precision (variation dependence vs coupling, causal cohesion vs structural cohesion)

**Scope**: `src/main/latex/volume-N/`

**Mandatory pre-read**: `.claude/writing-style.md`

## Process

1. Read target section(s)
2. Audit against Writing Style Guide checklist:

| Check | Criteria |
|-------|----------|
| Language | US English: "formalize" not "formalise", "behavior" not "behaviour", "modeling" not "modelling" |
| Narrative voice | Personal journey, intellectually honest, pedagogically structured |
| Vocabulary | Domain-specific precision; no AI-typical constructions |
| Argumentation | Philosophically grounded, citation-dense but not pedantic |
| Tone | Thoughtful, rigorous, self-critical yet confident |
| Essential marking | Each paragraph's load-bearing claim(s) in `\essential{...}` (renders bold); flag paragraphs missing it |

3. Flag deviations with examples
4. Suggest rewrites for AI-generated or off-tone passages

## AI-Style Patterns to Flag

- Itemized lists with bold headers (→ flowing prose)
- Bold paragraph headers
- Enumerated lists for exposition (reserve for genuinely sequential)
- Colon patterns before explanations
- Excessive em-dashes (→ semicolons, periods, commas)
- Repetitive sentence openings ("In X..., In Y..., In Z...")
- Short punchy declarative sequences
- "This is not X—it is Y" constructions
- "It is important to note that..."
- "Let's explore..."

**Output**: Style audit report with flagged sections and rewrites.

**Model**: sonnet (subjective judgment, style analysis, rewrite suggestions)
