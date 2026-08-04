---
name: review-english-prose-style
description: Comprehensive English AI-prose style review pipeline. Identifies AI-generated prose patterns affecting naturalness and readability, then applies targeted revisions. Use for reviewing .typ/.md prose for AI-style patterns.
---

# Review English Prose Style

## Purpose

Comprehensive English AI-prose style review pipeline that identifies AI-generated prose patterns affecting naturalness and readability in English text, then applies targeted revisions to improve flow while preserving authorial voice and domain-appropriate conventions.

## Workflow

### Phase 1: Initial Analysis

**Primary Method: Manual Read-Through with Context Awareness**

1. **Read the entire document line-by-line** — 5-10 minutes for 500-word article
2. **Identify suspicious patterns** beyond regex matching:
   - Formulaic summaries ("Everything in Java. This is X.")
   - Quotation marks without citations (`"clean architecture"`)
   - Short parallel summary sentences
   - Meta-commentary in wrong contexts ("This is important to note")
   - Teaching tone in technical body text
3. **Context analysis for each finding**:
   - Document type (blog, paper, tutorial, code comment)
   - Section location (intro, conclusion, body, example)
   - Domain conventions (formal notation acceptable, technical jargon)
   - Purpose of text (explaining, summarizing, evidencing)
4. **Categorize by severity**:
   - Critical: Blatant AI tone blocking readability
   - High: Meta-commentary, teaching tone in wrong places
   - Medium: Subtle AI patterns (formulaic structure)
   - Low: Minor stylistic issues

**Supplemental Tool: Java Prose Pattern Analyzer**

1. **Execute** `java .agents/context/prose-analysis/ProsePatternAnalyzer.java` on target files with domain parameter
2. **Receive** deterministic pattern report with line numbers and matched text
3. **Use as cross-reference** — verify manual findings overlap with analyzer output
4. **Identify** domain from file content or user specification (medical, technical, academic)

**Command:**
```bash
java .agents/context/prose-analysis/ProsePatternAnalyzer.java <file> [domain]
```

**Output Note:** The Java analyzer catches **obvious regex patterns only**. It cannot detect:
- Context-appropriate usage (formal mathematical prose vs. AI tone)
- Rhetorical structures (formulaic summaries, parallel sentences)
- Citation verification (quotes without sources)
- Document structure awareness (intro vs. body vs. examples)

**The analyzer is a helper tool, not a substitute for manual critical reading.**

### Phase 2: Finding Prioritization

**Process Java Analyzer Results:**
1. **Parse analyzer output** to extract pattern matches and metrics
2. **Sort findings** by severity (Strong Recommendations → Recommendations → Suggestions)
3. **Group by impact** (readability vs. professionalism vs. precision)
4. **Identify high-impact clusters** (multiple findings in same section indicate systematic pattern)
5. **Check for dependencies** (some fixes may resolve multiple findings)

**Note:** The Java analyzer provides deterministic, repeatable pattern detection. All findings include exact line numbers and matched text.

**Prioritization Criteria (from Manual Analysis):**
- **Critical**: Blatant AI tone, meta-commentary in body text, teaching tone in technical sections
- **High**: Quotation marks without citations, formulaic summaries in body text, stacked hedging
- **Medium**: Subtle AI patterns (parallel sentences, formulaic structure)
- **Low**: Minor stylistic issues (word choice, phrasing)

**Note:** Java analyzer results are cross-reference only. Manual analysis drives prioritization.

### Phase 3: Revision Planning

**Style Conventions (IVP Book Series):**

**IVP Book Series Prose Style** (based on project pedagogical principles):

**Core Philosophy: Gentle, Open, Non-Coercive Prose**

**Characteristics:**
- **Inform, don't impose**: Present information without dictating reader perspective
- **Reason, don't command**: Explain concepts rather than telling readers what to think
- **Invite, don't corner**: Make readers want to explore ideas, not feel trapped into one viewpoint
- **Respectful, not aggressive**: Present ideas without attacking alternatives or pressuring positions
- **Honest, not manipulative**: Acknowledge complexity and trade-offs, don't oversell or hide difficulties

**Project-Specific Style (based on IVP pedagogical principles):**
- **Academic-formal tone**: Clear, direct statements suitable for technical theory (Volume 1: foundational theory)
- **Theoretical precision**: "We formalize software systems as mathematical structures" - formal, not vague
- **Causal clarity**: "Because architecture profoundly shapes how systems evolve" - clear causal relationships
- **Conceptual progression**: "This chapter establishes foundation. Software architecture exists first..." - building concepts sequentially
- **Evidence-based**: "We trace intellectual history..." - grounded claims with clear reasoning

**What We Prefer:**
- **Direct claims**: "Four conditions on cost-optimal modularization are necessary" (not "It is important to note that...")
- **Precise language**: Defined terms used consistently (change drivers, driver assignments, modules)
- **Logical structure**: Clear flow from premises to conclusions, mathematical and conceptual precision
- **Hedging where appropriate**: Use uncertainty markers for genuine complexity, not as filler
- **Varied sentence structure**: Mix simple and complex sentences for emphasis and flow

**What We Avoid:**
- **Meta-commentary**: "It is worth noting," "we can see that," "it is important to understand"
- **Teaching tone**: "Let's explore," "we can see," "it's helpful to note"
- **Stacked transitions**: "However, furthermore, moreover" - single meaningful transition preferred
- **Formulaic structures**: Avoid repetitive paragraph templates
- **Overselling**: Don't claim more than theory delivers, acknowledge limitations
- **Aggressive rhetoric**: No attacking alternatives, no dismissing opposing viewpoints

**Domain-Specific Guidance:**
- **Volume 1 (Foundational Theory)**: Academic-formal, mathematically precise, requires programming background
- **Audience**: Readers with 2+ years professional experience, comfort with basic design concepts
- **Purpose**: Establish formal IVP framework rigorously before practical applications
- **Tone**: Rigorous but accessible theory exposition - not teaching, not oversimplified

**Style Principles:**
- **Reader autonomy**: Never tell readers what they must think or how they should understand
- **Open exploration**: Invite consideration of ideas without closing off alternatives
- **Honest trade-offs**: Acknowledge complexity, limitations, and areas where theory doesn't fully apply
- **Respectful disagreement**: Present ideas without dismissing reasonable opposing views
- **Gentle precision**: Mathematical and conceptual precision without arrogance or condescension

**Guidelines for Revision:**
- **Pattern → Direct**: "Let's explore X" → "X involves..."
- **Compound → Simple**: "might potentially could indicate" → "Evidence suggests that..."
- **Formulaic → Natural**: "In conclusion, we have seen" → "The analysis shows..."
- **Passive → Active** (when clarity improves): "It was observed" → "We observed"
- **Complex → Varied**: Break nested structures when they hinder comprehension

**Example from Project:**
**Before**: "It is important to note that the implementation of the utilization of the facilitation of data processing systems requires careful consideration..."
**After**: "Implementing data processing involves careful consideration of system design..."
**Why**: Removes meta-commentary, breaks noun chain, active voice for clarity, same precision maintained

**Style to Avoid:**
- **Meta-commentary**: "It is worth noting," "we can see that," "it is important to understand"
- **Teaching tone in non-educational contexts**: "Let's explore" in technical/theoretical chapters
- **Excessive signposting**: Formulaic transitions stacked at paragraph boundaries
- **Vague generalizations**: "Good architecture remains frustratingly vague" (the project criticizes this)
- **Overly conversational tone**: Maintains academic formality while being accessible

**Domain-Specific Context:**
- **Volume 1 (Foundational Theory)**: Academic-formal, mathematically precise, requires programming background
- **Audience**: Readers with 2+ years professional experience, comfort with basic design concepts
- **Purpose**: Establish formal IVP framework before moving to practical applications
- **Tone**: Rigorous but accessible theory exposition

**Revision Guidelines:**
- **Pattern → Direct**: "Let's explore X" → "X involves"
- **Compound → Simple**: "might potentially could indicate" → "Evidence suggests"
- **Formulaic → Natural**: "In conclusion, we have seen" → "The analysis shows"
- **Passive → Active**: "It was observed that" → "We observed" (when appropriate)

**Plan Concrete Actions:**
1. **Select top 5-10 findings** for first revision round (focus on high-impact)
2. **Draft specific revisions** for each selected finding using style conventions above
3. **Check for conflicts** between revisions (e.g., removing transition affects sentence structure)
4. **Validate** revisions preserve technical meaning and domain precision
5. **Match domain style**: Ensure revisions fit document type (medical, technical, academic)

**Revision Principles:**
- **Preserve meaning**: Never change technical content, claims, or evidence
- **Apply preferred style**: Use conventions above to improve naturalness
- **Maintain precision**: Keep domain-appropriate qualifiers and uncertainty markers
- **Improve flow**: Remove artificial patterns that hinder readability
- **Respect voice**: Keep authorial style where it's distinctive and effective

### Phase 4: Apply Revisions

**Execute Planned Changes:**
1. **Present revision plan** to user with before/after examples for each finding
2. **Request approval** to proceed with edits
3. **Apply revisions** using Edit tool (one change per Edit call for precision)
4. **Track changes** with clear commit messages

**Edit Protocol:**
- **One finding per edit** to ensure precision and avoid compound errors
- **Use exact matched text** from analysis report for old_string
- **Include context** (surrounding sentences) to ensure correct replacement
- **Verify** edit result preserves paragraph/document structure

### Phase 5: Re-Analysis

**Repeat Audit Cycle:**
1. **Re-run Java analyzer** on revised file: `java .agents/context/prose-analysis/ProsePatternAnalyzer.java <file> [domain]`
2. **Compare** new findings against initial analysis
3. **Identify** resolved issues (findings that disappeared)
4. **Note** any new issues introduced by revisions
5. **Assess** overall improvement in metrics and naturalness

### Phase 6: Iterative Refinement

**Continue Until Convergence:**

**Convergence Criteria (stop when ANY is met):**
- **Zero Strong Recommendations** remain (all critical/high-impact findings resolved)
- **Maximum 5 rounds** of review-edit cycles completed
- **User requests** to stop process
- **Diminishing returns** (new round < 10% impact of previous round)

**Each Round:**
1. **Prioritize remaining findings** focusing on highest severity
2. **Plan revisions** for top findings
3. **Get user approval** for planned changes
4. **Apply revisions** systematically
5. **Re-analyze** to assess progress
6. **Document** improvement metrics

### Phase 7: Final Report

**Generate Comprehensive Summary:**

**Before/After Comparison:**
```
## AI-Style Review Complete

### Files Analyzed
- [File paths]

### Initial Assessment
- **Total Findings**: X (Y strong recommendations, Z recommendations)
- **Overall AI-Style Strength**: [Medium-High]
- **Key Issues**: [List of top 3-5 problems]

### Review Process
- **Rounds Completed**: N
- **Total Edits Made**: M
- **Findings Resolved**: P
- **New Issues Introduced**: Q

### Final Assessment
- **Remaining Findings**: X' (Y' strong recommendations, Z' recommendations)
- **Overall AI-Style Strength**: [Low-Medium]
- **Key Improvements**: [What improved significantly]

### Metric Improvements
- **Transition Density**: [Initial] → [Final] ([Δ%] improvement)
- **Hedge Density**: [Initial] → [Final] ([Δ%] improvement)
- **Vocabulary Diversity**: [Initial] → [Final] ([Δ%] improvement)
- **Teaching Tone Density**: [Initial] → [Final] ([Δ%] improvement)
- **Sentence Length Variance**: [Initial] → [Final] ([Δ%] improvement)

### Sample Revisions (Applying Global Style Conventions)

#### Example 1: Teaching Tone → Direct Statement
**Before**: "Let's explore the concept of modular design principles..."
**After**: "Modular design principles involve..."
**Style Applied**: Removed pedagogical marker ("Let's"), used direct subject-verb structure
**Context**: Professional document - teaching tone inappropriate

#### Example 2: Abstract Noun Chain → Active Verbs
**Before**: "The implementation of the utilization of the facilitation of data processing..."
**After**: "Implementing data processing involves utilization and facilitation..."
**Style Applied**: Converted nominalizations to active verbs, reduced chain from 4 to 2 nouns
**Context**: Technical documentation - active voice preferred for clarity

#### Example 3: Stacked Transitions → Single Transition
**Before**: "However, furthermore, moreover, it is important to note that..."
**After**: "However, it is important to note that..."
**Style Applied**: Removed redundant transitions, kept single meaningful boundary marker
**Context**: General prose - excessive signposting hinders flow

#### Example 4: Stacked Hedging → Single Precise Hedge
**Before**: "It might be suggested that potentially could indicate..."
**After**: "Evidence suggests that..." or "This may indicate..."
**Style Applied**: Replaced stacked uncertainty markers with single precise hedge
**Context**: Medical/technical writing - precision preferred over hedging

#### Example 5: Formulaic Opening → Direct Statement
**Before**: "In conclusion, we can see that what we've discussed above demonstrates..."
**After**: "The analysis shows..."
**Style Applied**: Removed meta-commentary, used direct statement without summary marker
**Context**: Academic/professional writing - direct conclusions preferred

#### Example 6: Passive Voice → Active Voice
**Before**: "It was observed by the research team that results were obtained..."
**After**: "The research team observed that we obtained..." (if appropriate)
**Style Applied**: Converted to active voice while maintaining precision
**Context**: Technical report - active voice preferred unless passive serves specific purpose

#### Example 7: Complex Sentence Structure → Varied Structure
**Before**: "Although the implementation of the system, which was designed to facilitate the processing of data, encountered several challenges, the team decided to proceed with an alternative approach."
**After**: "The system encountered several challenges during data processing implementation. Consequently, the team decided to pursue an alternative approach."
**Style Applied**: Broke complex sentence into two simpler sentences, varied structure
**Context**: General prose - sentence variety improves readability

### Domain-Appropriate Patterns Preserved
- **Medical uncertainty**: Appropriate hedging maintained for precision
- **Scientific passive voice**: Conventional passive structures preserved
- **Technical jargon**: Domain-specific vocabulary unchanged
- **Academic conventions**: Disciplinary norms respected throughout

### Recommendations for Future Writing
1. **Vary sentence structures** to avoid uniformity patterns
2. **Use single, precise hedges** instead of stacking uncertainty markers
3. **Prefer active voice** where it improves clarity without losing objectivity
4. **Break nominalization chains** by converting to verbs where possible
5. **Match teaching tone to document type** (educational vs. professional)

### Limitations
- Analysis based on observed patterns, not authorship determination
- Domain-appropriate patterns identified and preserved
- Some patterns may be intentional stylistic choices
- AI writing evolves; patterns may change over time

---

**Note**: This review improves prose naturalness and readability by identifying and revising AI-like patterns.
Findings are stylistic, not determinations of authorship or content quality.
Domain-specific conventions are respected throughout.
```

## Scope

### In Scope
- **Prose improvement**: Enhanced naturalness and readability
- **Pattern reduction**: Removing AI-like prose patterns
- **Voice preservation**: Maintaining authorial intent and style
- **Domain respect**: Following disciplinary conventions
- **Precision maintenance**: Keeping technical accuracy and uncertainty expression

### Out of Scope
- **Content rewriting**: Never change claims, evidence, or technical substance
- **Voice homogenization**: Don't force all text to sound identical
- **Over-correction**: Don't remove all structure or formulaic elements
- **Domain violation**: Don't change patterns that are appropriate for the field
- **Authorship claims**: Never determine or speculate about who wrote the text

## File Selection

### Input Parameters
- **Files**: One or more text files (.txt, .md, .typ, .tex, .docx if readable)
- **Domain**: Optional (inferred from content if not specified)
- **Document type**: Optional (inferred from structure if not specified)

### Supported Formats
- **Plain text** (.txt, .md)
- **Typst documents** (.typ) - analyzes prose sections
- **LaTeX documents** (.tex) - analyzes prose outside math environments
- **Word documents** (.docx) - extracts and analyzes text content

### Content Filtering
- **Skip code blocks**: Programming code, configuration files
- **Skip math environments**: LaTeX equations, Typst math blocks
- **Skip citations**: Reference lists, bibliographies
- **Skip tables**: Tabular data content
- **Focus on prose**: Narrative text, explanations, arguments

## Execution Modes

### Mode 1: Analysis Only (Review Without Editing)
```bash
# Run Java analyzer directly for pattern detection
java .agents/context/prose-analysis/ProsePatternAnalyzer.java path/to/file.md [domain]

# Or use skill wrapper
/review-english-prose-style --analyze-only path/to/file.md
```

**Note:** Java analyzer provides deterministic, repeatable results. Skill wrapper adds contextual analysis and revision suggestions.
- Runs full analysis pipeline
- Generates comprehensive report
- Does NOT apply any edits
- Useful for understanding patterns before revising

### Mode 2: Interactive Review (Edit With Approval)
```bash
/review-english-prose-style path/to/file.md
```

**Process:**
1. **Run Java analyzer**: `java .agents/context/prose-analysis/ProsePatternAnalyzer.java path/to/file.md [domain]`
2. **Parse results** and categorize findings by severity
3. **Prioritize** high-impact patterns for revision
4. **Spawn new agent** per small text unit (paragraph/section) to avoid context rot
5. **Present revision plan** with before/after examples
6. **Apply edits** only after explicit user approval
7. **Re-run analyzer** on revised text
8. **Continue** until convergence or max 5 rounds

**Key Feature:** Each revision cycle spawns a fresh agent instance, ensuring clean context and no compaction from previous rounds.

### Mode 3: Batch Processing (Multiple Files)
```bash
/review-english-prose-style path/to/directory/ --domain medical
```

**Process:**
1. **Run Java analyzer** on each file: `java .agents/context/prose-analysis/ProsePatternAnalyzer.java file.md [domain]`
2. **Parse results** and categorize findings per file
3. **Generate per-file reports** with metrics and suggestions
4. **Spawn new agents** per small text unit for each file (avoid context rot)
5. **Present revision plans** file-by-file with user approval
6. **Apply revisions** systematically across all files
7. **Re-run analysis** on revised documents
8. **Continue** per file until convergence

**Key Feature:** Each file gets fresh agent instances per revision cycle, preventing cross-file context contamination.

### Mode 4: Targeted Review (Specific Patterns)
```bash
/review-english-prose-style path/to/file.md --focus teaching-tone,hedging
```

**Process:**
1. **Run Java analyzer** for all patterns: `java .agents/context/prose-analysis/ProsePatternAnalyzer.java file.md [domain]`
2. **Parse results** and filter to specified pattern categories only
3. **Spawn new agents** per small text unit focusing on target patterns
4. **Present revision plans** for target patterns only
5. **Apply revisions** to target patterns with user approval
6. **Re-run analyzer** to verify target patterns resolved
7. **Continue** until target patterns eliminated or convergence

**Key Feature:** Focused analysis prevents noise from non-target patterns while maintaining fresh context per unit.
- Analyzes only specified pattern categories
- Useful for focusing on known issues
- Skips other pattern types entirely

## Integration with Other Skills

### Complementary Skills
- **review-chapter**: Run English prose style review as part of comprehensive chapter review
- **review-volume**: Include English prose analysis in full volume review pipeline
- **style-naturalizer**: Use English prose findings to guide naturalization work
- **simplify**: Combine English prose review with simplification analysis

## Agent Spawning Strategy

### Context Isolation per Unit
**Principle:** Each small text unit (paragraph/section) gets a fresh agent instance to avoid context rot and compaction.

**Implementation:**
1. **Java analyzer runs first**: Provides deterministic pattern detection with exact line numbers
2. **Text segmented into units**: Paragraphs, sections, or logical prose chunks
3. **New agent spawned per unit**: Each agent receives clean context with minimal surrounding text
4. **Analysis focused on unit**: Agent only sees patterns within that specific text unit
5. **Results aggregated back**: Skill combines unit-level findings into document-level report
6. **Fresh agents each round**: Next analysis cycle spawns new agent instances again

**Benefits:**
- **No context rot**: Each agent starts with fresh context for its unit
- **No compaction**: Previous rounds don't contaminate new analysis
- **Focused attention**: Each agent concentrates on patterns within its unit only
- **Scalable**: Can process large documents by breaking into manageable units
- **Repeatability**: Same unit analyzed across rounds gets consistent results

**Example Flow:**
```bash
# Initial analysis
java .agents/context/prose-analysis/ProsePatternAnalyzer.java document.md medical
# Output: 16 findings across document

# Segmentation and agent spawning
# Agent 1 gets paragraphs 1-5 (findings: 3)
# Agent 2 gets paragraphs 6-10 (findings: 4)
# Agent 3 gets paragraphs 11-15 (findings: 5)
# Agent 4 gets paragraphs 16-20 (findings: 4)

# After revisions, re-run
java .agents/context/prose-analysis/ProsePatternAnalyzer.java document.md medical
# Output: 6 findings remaining

# Fresh agent spawning (new instances)
# Agent 1 gets revised paragraphs 1-5 (findings: 1)
# Agent 2 gets revised paragraphs 6-10 (findings: 0)
# Agent 3 gets revised paragraphs 11-15 (findings: 2)
# Agent 4 gets revised paragraphs 16-20 (findings: 0)
```

### Sequential Workflows
```
1. /review-ai-style (remove AI-like patterns)
2. /style-naturalizer (improve overall flow and voice)
3. /simplify (check for redundancy and complexity)
```

### Sequential Workflows
```
1. /review-ai-style (pattern analysis and revision)
2. /review-convergence (ensure zero remaining critical findings)
3. /review-formalism (check mathematical and formal content)
```

## Error Handling

### Common Issues

**No findings detected:**
- **Cause**: Text already has strong naturalness, or domain-appropriate patterns dominate
- **Action**: Report "No actionable AI-style patterns found"
- **Next steps**: Consider if document needs other review types

**All findings domain-appropriate:**
- **Cause**: Domain conventions align with identified patterns
- **Action**: Report "All identified patterns are domain-appropriate"
- **Next steps**: Skip AI-style review for this document type

**Excessive findings (>50):**
- **Cause**: Document may need comprehensive rewrite rather than targeted revision
- **Action**: Flag as "comprehensive revision recommended"
- **Next steps**: Suggest drafting new content rather than editing

**Convergence not reached after 5 rounds:**
- **Cause**: Deep structural issues or fundamental style differences
- **Action**: Report "Partial improvement achieved; consider comprehensive rewrite"
- **Next steps**: Provide summary of remaining issues and recommend broader revision

## User Interaction

### Approval Points
1. **Initial analysis review**: User reviews findings before any edits
2. **Revision plan approval**: User approves specific revisions before application
3. **Round continuation**: User decides whether to proceed with additional rounds
4. **Final report review**: User reviews comprehensive before/after summary

### Customization Options
- **Domain specification**: Override inferred domain for better baseline matching
- **Severity threshold**: Adjust minimum severity for findings (default: Recommendation)
- **Max rounds**: Set custom maximum (default: 5)
- **Pattern focus**: Restrict to specific pattern categories

### Abort Conditions
- **User abort**: Stop immediately at any point
- **File not found**: Report error and request valid path
- **Unsupported format**: Report limitation and suggest conversion
- **Permission denied**: Skip file and continue with others in batch

## Quality Assurance

### Before Each Edit
1. **Verify finding is still present** (may have been resolved by previous edit)
2. **Check old_string matches exactly** current file content
3. **Ensure new_string preserves meaning** and domain precision
4. **Confirm edit improves naturalness** without losing voice

### After Each Edit
1. **Verify file compiles/builds** if applicable (Typst, LaTeX)
2. **Check for broken references** or cross-file dependencies
3. **Confirm no new errors** introduced (syntax, structure, formatting)
4. **Update tracking** of findings resolved vs. remaining

### Final Verification
1. **Zero Strong Recommendations** remain in final analysis
2. **All metrics show improvement** or are within acceptable ranges
3. **Domain-appropriate patterns** correctly preserved
4. **User satisfied** with improvements and approves final state

## Success Metrics

### Quantitative Metrics
- **Strong Recommendations**: Reduced to 0 or >90% resolved
- **Overall AI-Style Strength**: Improved by at least one level (High → Medium, Medium → Low)
- **Key metrics**: Transition density, hedge density, vocabulary diversity all improve >15%
- **Edit efficiency**: >80% of edits resolve intended findings without introducing new issues

### Qualitative Metrics
- **Readability**: Significant improvement in flow and naturalness
- **Voice preservation**: Authorial intent and distinctive style maintained
- **Domain compliance**: All disciplinary conventions respected
- **User satisfaction**: User approves improvements and final state

### Process Metrics
- **Convergence**: Reached within 5 rounds or user stopped earlier
- **Efficiency**: Mean time per finding < 3 minutes (analysis + edit)
- **Accuracy**: <10% of edits need correction or reversion
- **Completeness**: All high-impact findings addressed or documented

## Documentation

### Session Logs
- **Analysis reports**: Saved per file with timestamp
- **Edit history**: Tracked with finding ID and revision details
- **Metric comparisons**: Before/after for each round
- **User decisions**: Approval points and abort conditions recorded

### Final Report
- **Comprehensive summary**: All findings, edits, and improvements
- **Before/after examples**: Representative revisions
- **Metric improvements**: Quantitative changes
- **Recommendations**: Guidance for future writing
- **Limitations**: Clear statement of scope and constraints

## Notes

- **Style guidance, not detection**: Focus on improving writing, not proving authorship
- **Readability priority**: Naturalness and flow are primary goals
- **Context matters**: Domain conventions override pattern rules
- **Iterative process**: Multiple rounds expected for comprehensive improvement
- **Voice preservation**: Don't homogenize; respect distinctive authorial choices
- **Precision maintained**: Never sacrifice technical accuracy for stylistic improvement
