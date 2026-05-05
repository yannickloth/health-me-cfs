# Research AI Prose Patterns & Build Detection System

## Objective

Research all types of statements, structures, and patterns typical of AI-generated prose, then design and implement an agent and review skill to identify passages where AI-style is too strong or present in your ME/CFS documentation.

## Phase 1: Research AI Prose Patterns

### 1.1 Literature Review
Search for and analyze:
- Academic papers on AI writing style analysis and stylometrics
- Studies comparing LLM outputs to human writing patterns
- AI detection false positive case studies (what human writing gets flagged)
- Domain-specific writing pattern research (technical, academic, medical writing)
- Research on burstiness, perplexity, and other detection metrics

**Output for each paper:**
- Citation (APA format)
- Key findings about AI prose patterns
- Specific patterns identified (with examples if available)
- Limitations and caveats
- Relevance to ME/CFS documentation domain

### 1.2 Pattern Category Research
Systematically research and document patterns in these categories:

**Structural Patterns:**
- Transition word overuse patterns
- Sentence structure tendencies (parallelism, balance, symmetry)
- Paragraph organization patterns
- Opening/closing formulaic phrases

**Lexical Patterns:**
- Corporate/academic jargon preferences
- Hedging language patterns
- Qualifier stacking tendencies
- Abstract noun overuse
- Vocabulary richness metrics

**Syntactic Patterns:**
- Passive voice frequency
- Nominalization patterns
- Sentence complexity distributions
- Punctuation pattern tendencies

**Rhetorical Patterns:**
- False balance constructions
- Over-explanation tendencies
- Unnecessary summary patterns
- "Teaching" tone markers

### 1.3 Domain-Specific Analysis
Analyze how these patterns apply to:
- Medical/technical documentation
- Academic writing in biomedical fields
- Patient-facing health information
- Research papers vs. educational materials

**Key question:** Which "AI-like" patterns are actually appropriate for this domain?

## Phase 2: Analyze Existing Corpus

### 2.1 Sample Analysis
Select and analyze 10-20 representative documents from your ME/CFS project:
- Treatment chapters
- Pathophysiology sections
- Patient-facing content
- Academic-style content

For each document, identify:
- Which AI-style patterns are present
- Frequency and severity of each pattern
- Context where patterns appear (examples, explanations, conclusions)
- Whether patterns enhance or hinder clarity

### 2.2 Baseline Establishment
Document:
- Natural writing patterns in your domain
- Expected levels of structure and formality
- Domain-appropriate transition phrases
- Technical writing conventions that may appear "AI-like" but are correct

## Phase 3: Build Pattern Library

### 3.1 Structured Database
Create `registry/ai-prose-patterns.md` with:

```markdown
# AI Prose Pattern Registry

## Pattern Categories

### Structural Patterns
- [Pattern Name]
  - Description: [What it looks like]
  - Example: "However, furthermore, moreover..."
  - Severity: [suggestion | recommendation | strong recommendation]
  - Domain exceptions: [Where this is appropriate]
  - Suggested revision: [How to fix]
  - Research sources: [citations]

### Lexical Patterns
[Same structure]

### Syntactic Patterns
[Same structure]

### Rhetorical Patterns
[Same structure]
```

### 3.2 Severity Guidelines
Define clear criteria:
- **Suggestion**: Minor style improvement, doesn't harm comprehension
- **Recommendation**: Noticeable AI-style, may affect reader engagement
- **Strong Recommendation**: Heavy AI-style, significantly impacts readability or voice

### 3.3 Exception Rules
Document when patterns are acceptable:
- Technical documentation requirements
- Academic convention
- Legal/medical precision needs
- Intentional stylistic choices

## Phase 4: Design AI-Style Auditor Agent

### 4.1 Agent Specification
Create `.claude/agents/ai-style-auditor.md`:

**Core Principles:**
- Pattern identification, NOT classification
- Severity-based recommendations, NOT probability scores
- Context-aware analysis, NOT static thresholds
- Voice preservation, NOT homogenization

**Rules:**
1. Never output "AI-written" or "human-written" classifications
2. Always provide specific line numbers and pattern names
3. Include concrete revision suggestions for each finding
4. Distinguish between "AI-like but effective" and "AI-like and problematic"
5. Respect domain-specific conventions (medical/technical writing)
6. Flag patterns, don't judge authorship

**Output Format:**
```
## Pattern Findings

### Structural Patterns
- **Lines 45-47**: [Pattern name]
  - Severity: [level]
  - Issue: [specific problem]
  - Suggestion: [concrete revision]
  - Context: [why this matters here]

### Lexical Patterns
[Same structure]

## Summary
- Total findings: X (Y strong recommendations)
- Overall AI-style strength: [low | medium | high]
- Domain compliance: [appropriate patterns noted]
```

### 4.2 Implementation Requirements
- Pattern matching against the registry
- Context window analysis for surrounding sentences
- Domain awareness (medical/technical writing)
- Severity calculation based on pattern frequency and type

## Phase 5: Design Review Skill

### 5.1 Skill Specification
Create `.claude/skills/review-ai-style.md`:

**Workflow:**
1. Run ai-style-auditor on target files
2. Generate comprehensive pattern report
3. Prioritize findings by severity
4. Propose revisions for high-severity issues
5. Apply fixes with user approval (edit tool)
6. Re-audit until convergence or max 5 rounds
7. Final report with before/after comparison

**Scope:**
- Focus on readability and natural flow
- Preserve authorial voice and intent
- Distinguish AI-like from poor writing
- Respect domain conventions
- Avoid over-correction (don't remove all structure)

**Convergence Criteria:**
- Zero strong recommendation findings
- OR maximum 5 rounds reached
- OR user stops the process

## Phase 6: Testing and Refinement

### 6.1 Test on Existing Content
Run the auditor on:
- Documents analyzed in Phase 2 (verify consistency)
- Known human-written sections (check false positives)
- Suspected AI-heavy sections (verify detection)

### 6.2 Refine Based on Results
- Adjust severity thresholds based on false positive/negative rates
- Add new patterns discovered during testing
- Refine exception rules
- Improve suggestion quality

### 6.3 Document Limitations
Create `registry/ai-style-auditor-limitations.md`:
- Known weaknesses
- False positive scenarios
- Domain-specific constraints
- Evolving nature of AI writing patterns

## Deliverables

1. **Literature Review Summary**: Consolidated findings from academic research
2. **Pattern Registry**: Complete structured database in `registry/ai-prose-patterns.md`
3. **Corpus Analysis Report**: Findings from analyzing your ME/CFS documentation
4. **AI-Style Auditor Agent**: Fully specified agent in `.claude/agents/`
5. **Review-Style Skill**: Complete skill definition in `.claude/skills/`
6. **Test Results**: Before/after examples, accuracy metrics, limitations documentation
7. **Usage Guide**: How to use the agent and skill effectively

## Critical Constraints

- **NO classification**: Never say "AI wrote this" or "human wrote this"
- **NO probability scores**: Use severity levels, not percentages
- **NO binary judgments**: Always provide context and nuance
- **YES pattern identification**: Be specific about what you find
- **YES concrete suggestions**: Provide actionable revisions
- **YES domain awareness**: Respect medical/technical writing conventions
- **YES transparency**: Document all limitations and uncertainties

## Success Criteria

1. Pattern library covers all major AI prose pattern categories
2. Agent identifies patterns with specific line numbers and severity
3. Review skill achieves convergence (or reasonable stopping point)
4. Testing shows meaningful improvements in text naturalness
5. Limitations are thoroughly documented
6. System is maintainable and updatable as AI writing evolves

## Timeline Estimate

- Phase 1 (Research): 2-3 hours
- Phase 2 (Corpus Analysis): 1-2 hours  
- Phase 3 (Pattern Library): 2-3 hours
- Phase 4 (Agent Design): 1-2 hours
- Phase 5 (Skill Design): 1 hour
- Phase 6 (Testing): 2-3 hours

**Total**: 9-14 hours of focused work

## Notes

- This is about **style guidance**, not detection or accusation
- The goal is **better writing**, not proving authorship
- Focus on **readability and naturalness**, not evasion
- Preserve **authorial voice** while reducing AI-like patterns
- Be **transparent** about limitations and uncertainty
