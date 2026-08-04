# English AI-Prose Pattern Auditor and Review System - Complete Usage Guide

## Overview

The English AI-Prose Pattern Auditor and Review System is a comprehensive framework for identifying and revising English AI-generated prose patterns that may affect naturalness and readability. It combines deterministic pattern detection (Java tool) with contextual analysis (AI agent) to provide actionable, domain-aware recommendations.

**Scope**: English language prose analysis only. Not designed for code, mathematical notation, or other languages.

**Core Principle**: Pattern identification for prose improvement, NOT authorship detection or quality judgment.

## System Components

### 1. Pattern Registry
**File**: `.agents/context/prose-analysis/ai-prose-patterns.md`

Contains comprehensive pattern definitions across four categories:
- **Structural Patterns**: Transition stacking, formulaic openings, paragraph uniformity
- **Lexical Patterns**: Hedging stacking, abstract noun overuse, vocabulary compression
- **Syntactic Patterns**: Passive voice preference, sentence length uniformity
- **Rhetorical Patterns**: False balance, teaching tone, over-explanation

Each pattern includes:
- Description and examples
- Severity level (Suggestion/Recommendation/Strong Recommendation)
- Domain exceptions (when patterns are appropriate)
- Suggested revisions
- Research sources

### 2. Corpus Analysis Framework
**File**: `.agents/context/prose-analysis/corpus-analysis-framework.md`

Provides analysis protocols and baseline metrics for different domains:
- **Medical writing**: Higher hedge tolerance, passive voice convention
- **Academic writing**: Formulaic structures appropriate, disciplinary conventions
- **Technical documentation**: Uniformity desirable, precision over style
- **Educational content**: Teaching tone appropriate, scaffolding expected
- **Professional writing**: Mixed audiences, context-dependent conventions

### 3. AI-Style Auditor Agent
**File**: `.opencode/agents/english-prose-pattern-auditor.md`

Agent specification with:
- Core principles (pattern identification, not classification)
- Hard rules (no authorship claims, no probability scores)
- Output format (detailed findings with line numbers and suggestions)
- Domain expertise (medical, academic, technical, educational, professional)
- Quality assurance guidelines

### 4. Review AI-Style Skill
**File**: `.agents/skills/review-english-prose-style/SKILL.md`

Complete review pipeline with:
- 7-phase workflow (analysis → prioritization → revision → re-analysis)
- Convergence criteria (zero strong recommendations or max 5 rounds)
- Execution modes (analysis-only, interactive, batch, targeted)
- Integration with other review skills
- Quality assurance procedures

### 5. Java Analysis Tool
**File**: `ProsePatternAnalyzer.java`

Deterministic pattern detection tool with:
- Pattern matching using regex definitions
- Metric calculation (density, variance, diversity)
- Comprehensive reporting with before/after comparisons
- CLI interface for standalone usage

### 6. Limitations Documentation
**File**: `.agents/context/prose-analysis/ai-style-auditor-limitations.md`

Comprehensive documentation of:
- Known limitations (pattern-based analysis, domain variations, temporal evolution)
- False positive scenarios (domain-appropriate patterns)
- False negative scenarios (sophisticated AI writing, intentional style)
- Ethical considerations (avoiding stigmatization, preserving agency)

## Quick Start

### Basic Analysis
```bash
# Run Java analyzer directly
java ProsePatternAnalyzer.java path/to/document.md

# With domain specification
java ProsePatternAnalyzer.java path/to/document.md medical
```

### Interactive Review
```bash
# Launch comprehensive review with edits
/review-ai-style path/to/document.md

# Analysis only (no edits)
/review-ai-style --analyze-only path/to/document.md

# Batch processing directory
/review-ai-style path/to/directory/ --domain academic
```

### Integration with Other Reviews
```bash
# As part of comprehensive chapter review
/review-chapter path/to/chapter/

# In full volume review pipeline
/review-volume path/to/volume/

# Combined with other review types
/review-ai-style path/to/document.md
/style-naturalizer path/to/document.md
```

## Workflow Examples

### Example 1: Medical Document Review

**Scenario**: Review patient-facing health information for AI-like patterns while respecting medical conventions.

```bash
# Step 1: Initial analysis
/review-ai-style --analyze-only patient-guide.md --domain medical

# Step 2: Review findings
# - Note: Higher hedge density may be appropriate (medical uncertainty)
# - Teaching tone likely inappropriate (professional context)
# - Passive voice may be conventional (objectivity)

# Step 3: Interactive review
/review-ai-style patient-guide.md --domain medical

# Step 4: Review proposed revisions
# - Approve teaching tone removals (inappropriate for professional docs)
# - Reject passive voice changes (conventional for medical writing)
# - Approve transition stacking reduction (improves clarity)

# Step 5: Continue until convergence
# System re-analyzes after each round
# Stop when zero Strong Recommendations remain
```

**Expected Outcome**:
- Reduced teaching tone (inappropriate for professional medical docs)
- Preserved appropriate hedging (medical uncertainty convention)
- Maintained passive voice where conventional (objectivity)
- Improved flow through transition reduction

### Example 2: Academic Paper Revision

**Scenario**: Improve naturalness of research paper introduction while respecting academic conventions.

```bash
# Step 1: Analyze paper
/review-ai-style --analyze-only introduction.md --domain academic

# Step 2: Review findings in context
# - Formulaic openings may be appropriate (abstract conventions)
# - Hedging likely appropriate (complex claims)
# - Nominalization may be conceptually necessary (theoretical work)

# Step 3: Targeted review
/review-ai-style introduction.md --domain academic --focus transition-stacking,teaching-tone

# Step 4: Apply selective revisions
# - Reduce transition stacking (improves flow)
# - Remove inappropriate teaching tone (not suitable for academic paper)
# - Preserve formulaic structures (disciplinary conventions)
# - Keep appropriate hedging (claim complexity requires uncertainty)

# Step 5: Re-analyze and continue
# System will identify remaining issues
# Focus on high-impact findings first
```

**Expected Outcome**:
- Improved flow without losing academic conventions
- Reduced artificial transitions while preserving structure
- Removed inappropriate teaching tone markers
- Maintained appropriate hedging and nominalization

### Example 3: Technical Documentation Polish

**Scenario**: Enhance readability of API documentation while maintaining precision and consistency.

```bash
# Step 1: Analyze documentation
/review-ai-style --analyze-only api-docs.md --domain technical

# Step 2: Understand domain constraints
# - Uniform paragraph structure may be desirable (reproducibility)
# - Technical jargon is expected (domain-specific vocabulary)
# - Low hedging appropriate (precision over uncertainty)
# - Teaching tone inappropriate (professional context)

# Step 3: Review with domain awareness
/review-ai-style api-docs.md --domain technical

# Step 4: Apply precision-focused revisions
# - Remove teaching tone (inappropriate for technical docs)
# - Reduce over-explanation (audience mismatch)
# - Preserve technical jargon (domain-specific)
# - Maintain uniform structure (reproducibility)
# - Simplify hedging where precision allows

# Step 5: Final polish
# Continue rounds until convergence
# Focus on readability improvements
```

**Expected Outcome**:
- Improved readability without losing technical precision
- Removed inappropriate pedagogical framing
- Maintained domain-appropriate structure and vocabulary
- Enhanced flow while preserving reproducibility

## Domain-Specific Guidelines

### Medical Writing

**Appropriate Patterns** (preserve these):
- **Hedging**: Medical claims require appropriate uncertainty expression
- **Passive voice**: Objectivity convention in medical reporting
- **Precision modifiers**: Medical accuracy requires careful qualification
- **Technical jargon**: Medical terminology is domain-specific

**Problematic Patterns** (revise these):
- **Teaching tone**: Inappropriate for professional medical documents
- **Over-explanation**: Assumes too little medical knowledge
- **False balance**: Misleading in evidence-based medicine
- **Summary inflation**: Redundant in concise medical communication

### Academic Writing

**Appropriate Patterns** (preserve these):
- **Formulaic structures**: Abstract and introduction conventions
- **Hedging**: Complex claims require appropriate uncertainty
- **Nominalization**: Theoretical concepts may require abstract language
- **Citation patterns**: Disciplinary conventions vary

**Problematic Patterns** (revise these):
- **False balance**: Inappropriate unless genuine controversy exists
- **Teaching tone**: Generally inappropriate for research papers
- **Summary inflation**: Redundant in focused academic writing
- **Excessive hedging**: Reduces claim precision unnecessarily

### Technical Documentation

**Appropriate Patterns** (preserve these):
- **Uniform structure**: Reproducibility requires consistency
- **Technical jargon**: Domain-specific vocabulary expected
- **Explicit transitions**: Clarity benefits from clear signposting
- **Precision over variety**: Technical accuracy trumps stylistic concerns

**Problematic Patterns** (revise these):
- **Teaching tone**: Inappropriate for professional documentation
- **Over-explanation**: Audience mismatch for technical docs
- **Summary inflation**: Redundant in concise technical writing
- **Excessive hedging**: Reduces precision in technical content

### Educational Content

**Appropriate Patterns** (preserve these):
- **Teaching tone**: Pedagogical framing is intentional
- **Scaffolding**: Progressive complexity requires structured explanations
- **Summary reinforcement**: Learning involves strategic repetition
- **Meta-commentary**: Learning guidance benefits from explicit structure

**Problematic Patterns** (revise these):
- **False balance**: Misleading in educational content
- **Over-explanation**: Exceeds scaffolding needs for target level
- **Formulaic excess**: Excessive structure reduces engagement
- **Vocabulary compression**: Reduces learning richness

### Professional Writing

**Appropriate Patterns** (context-dependent):
- **Business terminology**: May be domain-specific jargon
- **Formal tone**: Professional expectations vary by context
- **Summary structures**: Executive conventions may require summaries
- **Action language**: Business norms favor active constructions

**Problematic Patterns** (revise these):
- **Teaching tone**: Generally inappropriate for professional docs
- **Excessive hedging**: Reduces impact in business communication
- **False balance**: Misleading in professional contexts
- **Over-formalization**: May distance readers unnecessarily

## Advanced Usage

### Custom Pattern Detection

Extend `ProsePatternAnalyzer.java` for custom patterns:

```java
// Add custom pattern regex
private static final Pattern CUSTOM_PATTERN = Pattern.compile(
    "\\b(your custom pattern here)\\b",
    Pattern.CASE_INSENSITIVE
);

// Add detection method
public List<PatternMatch> analyzeCustomPattern(String text, String[] lines) {
    List<PatternMatch> matches = new ArrayList<>();
    Matcher matcher = CUSTOM_PATTERN.matcher(text);

    while (matcher.find()) {
        int lineNumber = findLineNumber(text, matcher.start(), lines);
        matches.add(new PatternMatch(
            "Custom Pattern",
            lineNumber,
            matcher.group().trim(),
            "Custom"
        ));
    }

    return matches;
}
```

### Domain-Specific Baselines

Create custom baseline metrics in `corpus-analysis-framework.md`:

```markdown
#### Custom Domain: [Your Domain]
**Appropriate Patterns**:
- [Pattern]: [Why appropriate]
- [Pattern]: [Why appropriate]

**Problematic Patterns**:
- [Pattern]: [Why problematic]
- [Pattern]: [Why problematic]

**Baseline Metrics**:
- **Transition Density**: [expected range]
- **Hedge Density**: [expected range]
- **Passive Voice Rate**: [expected range]
```

### Integration with CI/CD

Add automated style checks to build pipeline:

```bash
# In CI configuration
- name: AI-Style Check
  run: |
    java .agents/context/prose-analysis/ProsePatternAnalyzer.java docs/**/*.md
  continue-on-error: true

# Fail only on Strong Recommendations
- name: AI-Style Validation
  run: |
    REPORT=$(java .agents/context/prose-analysis/ProsePatternAnalyzer.java docs/**/*.md)
    if echo "$REPORT" | grep -q "Strong Recommendation"; then
      echo "Critical AI-style issues found"
      exit 1
    fi
```

### Batch Processing for Document Sets

Process entire documentation sets:

```bash
# Analyze all markdown files
for file in docs/**/*.md; do
  echo "Analyzing: $file"
  java .agents/context/prose-analysis/ProsePatternAnalyzer.java "$file" technical
done | tee ai-style-report.txt

# Review findings and prioritize
# Identify patterns across multiple documents
# Plan systematic revisions
# Apply changes iteratively
```

## Troubleshooting

### Common Issues

**Issue: Too many findings detected**
- **Cause**: Document may need comprehensive rewrite rather than targeted revision
- **Solution**: Focus on high-impact patterns first; consider broader revision if >50 findings

**Issue: All findings seem domain-appropriate**
- **Cause**: Domain conventions align with identified patterns
- **Solution**: Review analysis for incorrect domain inference; adjust domain parameter if needed

**Issue: Analysis takes too long**
- **Cause**: Large document or complex pattern matching
- **Solution**: Use targeted review with `--focus` parameter; split large documents

**Issue: Revisions don't improve metrics**
- **Cause**: Patterns may be structural rather than surface-level
- **Solution**: Consider broader rewrite; focus on sentence-level patterns first

**Issue: False positives on technical content**
- **Cause**: Technical jargon or formulaic content flagged as AI-like
- **Solution**: Ensure correct domain specified; add domain-specific exceptions to registry

### Getting Help

**Analysis Interpretation**:
- Review `ai-style-auditor-limitations.md` for context
- Check domain-specific guidelines for your field
- Consider document purpose and audience

**Technical Issues**:
- Verify Java 25+ installed: `java --version`
- Check file permissions: `ls -la ProsePatternAnalyzer.java`
- Test with simple document first

**Integration Problems**:
- Review skill documentation for correct syntax
- Check file paths and permissions
- Ensure compatible document formats

## Best Practices

### Before Analysis
1. **Identify domain** correctly (medical, academic, technical, educational, professional)
2. **Consider audience** and document purpose
3. **Review existing content** for known issues to focus analysis
4. **Set expectations** for revision scope (targeted vs. comprehensive)

### During Analysis
1. **Review findings contextually** - don't assume all patterns need revision
2. **Prioritize by impact** - focus on readability and naturalness
3. **Respect domain conventions** - preserve patterns that are appropriate
4. **Consider authorial intent** - some patterns may be deliberate choices

### During Revision
1. **Preserve meaning** - never change technical content or claims
2. **Maintain precision** - keep domain-appropriate qualifiers
3. **Improve flow** - focus on naturalness without losing voice
4. **Iterate gradually** - one round at a time with re-analysis

### After Revision
1. **Verify improvements** - check metrics and naturalness
2. **Build/compile** - ensure documents still render correctly
3. **Get feedback** - peer review for domain appropriateness
4. **Document lessons** - note patterns to watch for in future writing

## Ethical Usage

### What This System Does
- ✅ Identifies prose patterns that may affect readability
- ✅ Provides specific revision suggestions
- ✅ Respects domain conventions and authorial voice
- ✅ Improves naturalness through targeted revisions
- ✅ Supports iterative improvement with re-analysis

### What This System Does NOT Do
- ❌ Determine authorship (AI vs. human)
- ❌ Judge writing quality (good vs. bad)
- ❌ Detect academic dishonesty or plagiarism
- ❌ Make binary classifications or probability claims
- ❌ Provide definitive answers about text origin

### Ethical Principles
1. **No stigmatization**: Never disadvantage writers for using patterns
2. **No bias**: Don't penalize non-native writers or domain-specific conventions
3. **No gatekeeping**: Never use to exclude or disadvantage content
4. **Transparency**: Always acknowledge limitations and uncertainty
5. **Agency preservation**: Respect intentional stylistic choices and domain expertise

## Future Development

### Planned Enhancements
- **Machine learning integration**: Improve pattern detection with ML models
- **Better context understanding**: Deeper analysis of document purpose and audience
- **Cross-lingual support**: Extend beyond English to other languages
- **Real-time feedback**: Integration with writing tools and editors
- **Community patterns**: Crowd-sourced pattern library from user feedback

### Contributing
- **Report false positives**: Document domain-appropriate patterns flagged incorrectly
- **Suggest new patterns**: Propose patterns not in current registry
- **Share domain guidelines**: Contribute expertise for underserved domains
- **Improve suggestions**: Provide better revision examples

## Conclusion

The AI-Style Auditor and Review System is a **prose improvement tool** designed to help writers identify and revise patterns that may affect naturalness and readability. It combines deterministic pattern detection with contextual analysis to provide actionable, domain-aware recommendations.

**Remember**: This system identifies patterns, not authorship. Use it to improve writing, not to judge who wrote it or to make determinations about quality or originality.

For questions, issues, or contributions, refer to the component documentation files or the project maintainers.