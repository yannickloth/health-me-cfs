# Writing Style Guide

This file contains writing guidelines for LaTeX content. Reference this when generating or editing document content.

## Core Principles (All Writing)

- **Conciseness**: Favor brevity; eliminate filler words, redundant phrases, and unnecessary elaboration. Every sentence should earn its place.
- **Intellectual honesty**: Distinguish between intuition and proven fact; acknowledge limitations and uncertainty upfront
- **Precision without obscurantism**: Use technical terms accurately but remain accessible; choose precise terms for semantic weight, not decoration
- **No artificial suspense**: Be direct and informative, revealing conclusions and insights as they become relevant rather than withholding information for dramatic effect
- **No unnecessary superlatives**: Avoid over-the-top validation or excessive praise
- **Thoughtful and rigorous**: Balance precision with readability; acknowledge struggles and limitations while maintaining clarity

## For Academic/Technical Writing

When the document is academic or technical in nature, additionally follow these conventions:

### Narrative and Voice

- **Personal journey narrative**: Use first-person when appropriate to trace intellectual development ("I realized," "I have been able to formulate")
- **Pedagogically structured**: Provide explicit scaffolding (scope boundaries, numbered contributions, roadmaps)
- **Reflective**: Show reasoning process ("I then realized...", "With this understanding...", "Now, I can say that...")

### Vocabulary and Precision

- **Domain-specific precision**: Carefully distinguish overlapping concepts with consistent terminology
- **Measured qualification**: Use epistemically careful language ("typically," "generally," "may be insufficient")
- **Concrete-abstract balance**: Pair abstract claims with concrete examples immediately

### Argumentation Style

- **Grounded in literature**: Reference established work appropriately without letting citations dominate
- **Explicit metalanguage**: Use metacognitive markers: "Note that," "Observe that," "Critically," "This is an important observation because"
- **Relational vocabulary**: Position ideas relative to each other:
  - "in contrast to," "whereas," "conversely"
  - "aligns with," "extends," "generalizes," "instantiates"
  - "emerges from," "derives from," "reduces to"

### Formatting and Emphasis

- **Strategic typographic emphasis**: Use *italics* for key concepts being introduced, **bold** for critical insights
- **Active voice for agency**: First-person active constructions for intellectual work ("I argue," "I demonstrate")
- **Technical quotation integration**: Integrate quoted terminology seamlessly as building blocks

## Avoiding AI-Style Patterns

When generating or editing LaTeX content, actively avoid these mechanical patterns that mark text as AI-generated:

### Structural patterns to avoid

- **Itemized lists with bold headers inside each item**: Instead of `\begin{itemize} \item \textbf{First point.} Explanation... \end{itemize}`, convert to flowing prose paragraphs
- **Bold paragraph headers**: Patterns like `\textbf{The variation analysis remains valid.}` followed by content. Instead, integrate the topic into the paragraph's natural flow
- **Enumerated lists for exposition**: Reserve `\begin{enumerate}` for genuinely sequential steps or formal derivations, not for presenting related ideas
- **Colon patterns before explanations**: Avoid "The relationship:" or "Examples:" followed by lists. Instead, integrate examples into prose
- **Impactful fragment titles**: Avoid incomplete sentences or dramatic statements as section titles (e.g., "The Boxed Type: Boolean", "The Method Signature Question", "A Critical Insight"). Use descriptive, complete phrases that indicate content rather than suspense

### Sentence-level patterns to avoid

- **Excessive em-dashes**: Use semicolons, periods, or commas instead. Em-dashes should be rare, not a primary punctuation tool
- **Repetitive sentence openings**: Avoid "In X..., In Y..., In Z..." or "First... Second... Third..." as sentence starters in consecutive sentences
- **Short, punchy declarative sentences** in sequence: Vary sentence length and structure
- **"This is not X—it is Y" constructions**: Overused AI pattern; rephrase more naturally

### Preferred alternatives

- **Flowing prose paragraphs**: Present ideas in connected paragraphs where sentences build on each other
- **Inline enumeration**: "First, X. Second, Y. Third, Z." within paragraphs, not as list items
- **Varied transitions**: Use "however," "moreover," "in contrast," "consider also" rather than mechanical enumeration
- **Reasoning chains**: "If X, then Y. This means Z." rather than bullet points
- **Integrated examples**: Weave examples into argument flow rather than isolating them in lists

### Transitional phrases and connective tissue

AI-generated prose often lacks the conjunctions and linking phrases that make writing feel natural and cohesive. Each sentence should connect logically to what came before.

**By function:**

- **Addition/continuation**: "Furthermore," "In addition," "Moreover," "Building on this," "Along similar lines,"
- **Contrast**: "However," "In contrast," "On the other hand," "That said," "Nevertheless," "Conversely,"
- **Consequence**: "As a result," "Consequently," "This means that," "Therefore," "It follows that,"
- **Clarification**: "In other words," "Put differently," "To clarify," "Specifically," "More precisely,"
- **Example**: "For instance," "Consider," "To illustrate," "A concrete example:"
- **Emphasis**: "Importantly," "Crucially," "The key point is," "What matters here is,"
- **Concession**: "Admittedly," "Granted," "While it's true that," "Even so,"
- **Sequence**: "First," "Next," "Finally," "Once this is done," "At this point,"

**Anti-patterns:**

- Choppy sequences of short, disconnected sentences
- Starting every sentence with the subject (vary sentence structure)
- Missing the "why" that connects one idea to the next
- Treating related ideas as isolated facts rather than connected reasoning
- Overusing "Now," as a transition (AI-typical; "Now" is fine occasionally, but vary with "At this point," "With this in place," "Given this," "Here's," or restructure to avoid repetition)

**Test:** After each sentence, ask "why is the author telling me this now?" If the connection isn't clear, add a transition that makes the logical relationship explicit.

### When lists ARE appropriate

- Genuinely parallel items (e.g., a catalog of architectural smells)
- Formal definitions with multiple clauses
- Step-by-step procedures or algorithms
- Tables comparing alternatives

### Test

Read the text aloud. If it sounds like a presentation slide deck, rewrite it as prose.
