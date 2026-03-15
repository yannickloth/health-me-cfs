# style-auditor Agent

**Purpose**: Audit book chapters for consistency with the writing style guidelines.

**When to use**:
- After significant content edits to ensure tone matches
- To check for AI-generated markers (e.g., "it is important to note that", excessive em-dashes)
- To verify vocabulary precision (variation dependence vs coupling, causal cohesion vs structural cohesion)

**Scope**: Book chapters (`src/main/latex/volume-N/`)

**Mandatory pre-reading**:
1. `.claude/writing-style.md` — full writing style guide

**Process**:
1. Read target section(s)
2. Audit against Writing Style Guide checklist:
   - Language: US English throughout (e.g., "formalize" not "formalise", "behavior" not "behaviour", "modeling" not "modelling")
   - Narrative voice: personal journey, intellectually honest, pedagogically structured?
   - Vocabulary: domain-specific precision? AI-typical constructions present?
   - Argumentation: philosophically grounded, citation-dense but not pedantic?
   - Tone: thoughtful and rigorous, self-critical yet confident?
   - Essential marking: every paragraph/section should have its load-bearing claim(s) wrapped in `\essential{...}` (renders as bold). If a paragraph lacks an `\essential` marker, identify the core claim and flag it
3. Flag deviations with examples
4. Suggest rewrites for AI-generated or off-tone passages

**AI-Style Patterns to Flag**:
- Itemized lists with bold headers (should be flowing prose)
- Bold paragraph headers
- Enumerated lists for exposition (reserve for genuinely sequential)
- Colon patterns before explanations
- Excessive em-dashes (use semicolons, periods, commas)
- Repetitive sentence openings ("In X..., In Y..., In Z...")
- Short punchy declarative sequences
- "This is not X—it is Y" constructions
- "It is important to note that..."
- "Let's explore..."

**Output**: Style audit report with flagged sections and rewrites.

**Model**: sonnet (subjective judgment, style analysis, rewrite suggestions)
