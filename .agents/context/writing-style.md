# Writing Style Guide

LaTeX content guidelines. Reference when generating or editing document content.

## Core Principles (All Writing)

| Principle | Rule |
|-----------|------|
| Conciseness | Brevity > elaboration; every sentence earns its place |
| Intellectual honesty | Distinguish intuition from proven fact; acknowledge limitations/uncertainty upfront |
| Precision without obscurantism | Technical terms for semantic weight, not decoration; remain accessible |
| No artificial suspense | Reveal conclusions as they become relevant; don't withhold for dramatic effect |
| No unnecessary superlatives | ✗ over-validation, excessive praise |
| Thoughtful and rigorous | Balance precision with readability; acknowledge struggles/limitations |

## For Academic/Technical Writing

### Narrative and Voice

| Rule | Detail |
|------|--------|
| Personal journey narrative | First-person to trace intellectual development: "I realized," "I have been able to formulate" |
| Pedagogically structured | Explicit scaffolding: scope boundaries, numbered contributions, roadmaps |
| Reflective | Show reasoning process: "I then realized...", "With this understanding...", "Now, I can say that..." |

### Vocabulary and Precision

| Rule | Detail |
|------|--------|
| Domain-specific precision | Distinguish overlapping concepts with consistent terminology |
| Measured qualification | Epistemic care: "typically," "generally," "may be insufficient" |
| Concrete-abstract balance | Pair abstract claims with concrete examples immediately |

### Argumentation Style

| Rule | Detail |
|------|--------|
| Grounded in literature | Reference established work; don't let citations dominate |
| Explicit metalanguage | Metacognitive markers: "Note that," "Observe that," "Critically," "This is an important observation because" |
| Relational vocabulary | Position ideas relative to each other — see table below |

**Relational vocabulary:**
- Contrast: "in contrast to," "whereas," "conversely"
- Alignment: "aligns with," "extends," "generalizes," "instantiates"
- Derivation: "emerges from," "derives from," "reduces to"

### Formatting and Emphasis

| Rule | Detail |
|------|--------|
| Strategic typographic emphasis | *italics* → key concepts introduced; **bold** → critical insights |
| Active voice for agency | First-person active: "I argue," "I demonstrate" |
| Technical quotation integration | Integrate quoted terminology seamlessly as building blocks |

## Avoiding AI-Style Patterns

### Structural patterns to avoid

| ✗ Anti-pattern | ✓ Instead |
|----------------|-----------|
| Itemized lists with bold headers per item: `\begin{itemize} \item \textbf{First point.} Explanation...` | Flowing prose paragraphs |
| Bold paragraph headers: `\textbf{The variation analysis remains valid.}` followed by content | Integrate topic into paragraph's natural flow |
| `\begin{enumerate}` for exposition (related ideas) | Reserve for genuinely sequential steps or formal derivations |
| Colon patterns: "The relationship:" or "Examples:" followed by lists | Integrate examples into prose |
| Fragment/dramatic section titles: "The Boxed Type: Boolean", "A Critical Insight" | Descriptive, complete phrases indicating content, not suspense |

### Sentence-level patterns to avoid

| ✗ Anti-pattern | ✓ Instead |
|----------------|-----------|
| Excessive em-dashes | Semicolons, periods, commas; em-dashes rare |
| Repetitive sentence openings: "In X..., In Y..., In Z..." or "First... Second... Third..." consecutively | Vary sentence structure |
| Short punchy declaratives in sequence | Vary sentence length and structure |
| "This is not X—it is Y" constructions | Rephrase more naturally |

### Preferred alternatives

- **Flowing prose paragraphs**: connected sentences that build on each other
- **Inline enumeration**: "First, X. Second, Y. Third, Z." within paragraphs, not as list items
- **Varied transitions**: "however," "moreover," "in contrast," "consider also" > mechanical enumeration
- **Reasoning chains**: "If X, then Y. This means Z." > bullet points
- **Integrated examples**: weave into argument flow, don't isolate in lists

### Transitional phrases and connective tissue

Each sentence must connect logically to what came before.

| Function | Phrases |
|----------|---------|
| Addition/continuation | "Furthermore," "In addition," "Moreover," "Building on this," "Along similar lines," |
| Contrast | "However," "In contrast," "On the other hand," "That said," "Nevertheless," "Conversely," |
| Consequence | "As a result," "Consequently," "This means that," "Therefore," "It follows that," |
| Clarification | "In other words," "Put differently," "To clarify," "Specifically," "More precisely," |
| Example | "For instance," "Consider," "To illustrate," "A concrete example:" |
| Emphasis | "Importantly," "Crucially," "The key point is," "What matters here is," |
| Concession | "Admittedly," "Granted," "While it's true that," "Even so," |
| Sequence | "First," "Next," "Finally," "Once this is done," "At this point," |

**Anti-patterns:**
- Choppy sequences of short, disconnected sentences
- Every sentence starts with subject (vary structure)
- Missing "why" that connects one idea to next
- Related ideas treated as isolated facts, not connected reasoning
- Overusing "Now," as transition (AI-typical) → vary with "At this point," "With this in place," "Given this," "Here's," or restructure

**Test:** After each sentence, ask "why is the author telling me this now?" If connection isn't clear → add transition making logical relationship explicit.

### When lists ARE appropriate

- Genuinely parallel items (e.g., catalog of architectural smells)
- Formal definitions with multiple clauses
- Step-by-step procedures or algorithms
- Tables comparing alternatives

### Test

Read aloud. Sounds like a presentation slide deck → rewrite as prose.
