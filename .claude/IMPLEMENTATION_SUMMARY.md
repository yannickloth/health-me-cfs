# Implementation Summary: Scientific Rigor Rules and Environment Guidelines

**Date**: 2026-01-23

## Overview

Added comprehensive rules and tooling to enforce scientific rigor in the ME/CFS documentation through proper use of LaTeX environments and mandatory citation requirements.

## Changes Made

### 1. Updated [CLAUDE.md](.claude/CLAUDE.md)

Added new section: **"Scientific Rigor: Environments and Citations"**

**Key components**:
- **Environment Selection Guide**: Categorized all available environments by epistemic status
  - Research Results: `achievement`, `prediction`, `postdiction`
  - Foundational Claims: `hypothesis`, `axiom`, `assumption`
  - Questions and Gaps: `open_question`, `warning`
  - Requirements and Observations: `requirement`, `observation`, `consistency_check`
  - Design and Methodology: `principle`, `pattern`, `construction`, `speculation`
  - Standard Academic: `definition`, `theorem`, `lemma`, etc.

- **Citation Requirements**: Mandatory `\cite{...}` for all literature-derived claims

- **Ad-hoc Tcolorbox Guidelines**:
  - ❌ FORBIDDEN for scientific claims (hypotheses, research findings, mechanisms)
  - ✅ ACCEPTABLE for pedagogical content (protocols, key points, practical warnings)

- **Anti-Patterns**: Clear examples of violations and correct usage

- **Verification Checklist**: Pre-commit validation checklist

### 2. Created [scientific-rigor-auditor.md](.claude/agents/scientific-rigor-auditor.md)

New subagent specialized in detecting and fixing scientific rigor violations:

**Capabilities**:
- Detects uncited claims in prose
- Identifies scientific claims without appropriate environments
- Distinguishes between acceptable pedagogical tcolorbox and forbidden scientific tcolorbox
- Converts ad-hoc tcolorbox to formal environments
- Adds missing citations (with placeholders when source unknown)
- Converts hypotheses stated as facts to proper `hypothesis` environments

**Violation categories detected**:
1. Missing environment (claim in prose)
2. Missing citation (environment without `\cite{...}`)
3. Wrong environment (hypothesis stated as fact)
4. Uncited prose (literature claim without environment or citation)
5. Ad-hoc tcolorbox (for scientific claims)

**Tools**: Read, Edit, Glob, Grep (read-only except Edit for fixes)

### 3. Created [template-proposal-pedagogical-environments.md](.claude/template-proposal-pedagogical-environments.md)

Comprehensive proposal for adding pedagogical/instructional environments to the LaTeX template:

**Proposed environments**:
- `protocol` - Step-by-step procedures, treatment protocols
- `clinicalfinding` - Documented case observations
- `keypoint` - Critical pedagogical insights
- `practicalwarning` - Real-world caveats and safety warnings
- `continuation` - Cross-references to other sections

**Benefits**:
- Semantic clarity over ad-hoc tcolorbox
- Consistent styling across documents
- Automatic numbering
- Template-level maintenance

## Current State of Document

### Ad-hoc Tcolorbox Usage Found: 45 instances

**Requires conversion (scientific claims)**:
- 8 instances with titles like "Novel Therapeutic Insight/Proposal/Framework"
  - Location: ch14a-urgent-action-severe.tex, ch14b-action-mild-moderate.tex
  - Should use: `speculation` or `hypothesis` environment with citations

**Acceptable (pedagogical content)**:
- ~37 instances for protocols, clinical findings, key points, warnings, navigation
- Will be improved once pedagogical environments are added to template

## Usage

### For Claude Code

When working on ME/CFS content, Claude will:
1. Automatically enforce environment usage rules from CLAUDE.md
2. Can invoke `scientific-rigor-auditor` agent to audit sections
3. Distinguish between scientific claims (need formal environments) and pedagogical content (ad-hoc tcolorbox acceptable)

### Example Agent Invocations

```
User: "Audit chapter 14a for scientific rigor violations"
→ Spawns scientific-rigor-auditor agent
→ Detects 5 ad-hoc tcolorbox with "Novel Therapeutic" titles
→ Converts to speculation environments
→ Adds citation placeholders
→ Reports summary
```

```
User: "Review this hypothesis section for missing citations"
→ scientific-rigor-auditor scans for observation/hypothesis without \cite{}
→ Marks locations requiring citations
→ Suggests literature-researcher agent to find appropriate papers
```

## Next Steps

### Immediate
1. ✅ Rules documented in CLAUDE.md
2. ✅ scientific-rigor-auditor agent created
3. ✅ Template proposal written

### Near-term
1. Run scientific-rigor-auditor on treatment chapters (ch14a, ch14b) to convert therapeutic tcolorboxes
2. Add missing citations for converted environments
3. Test agent on other chapters

### Future
1. Submit pedagogical environment proposal to template repository
2. Once pedagogical environments are in template, convert remaining ad-hoc tcolorboxes
3. Add scientific-rigor-auditor to pre-commit workflow
4. Consider automation: git hook to detect violations before commit

## Files Modified

- `.claude/CLAUDE.md` - Added Scientific Rigor section
- `.claude/agents/scientific-rigor-auditor.md` - New agent (created)
- `.claude/template-proposal-pedagogical-environments.md` - Template proposal (created)
- `.claude/IMPLEMENTATION_SUMMARY.md` - This file (created)

## Verification

To verify the implementation works:

```bash
# Test the agent on a sample chapter
claude "Audit chapter 14a for scientific rigor violations and report findings"

# Check if rules are being followed in new content
claude "Write a hypothesis about mitochondrial dysfunction"
# → Should produce \begin{hypothesis}...\cite{...}\end{hypothesis}
```

## References

- [template-environments.md](.claude/template-environments.md) - Full environment reference
- [CLAUDE.md](.claude/CLAUDE.md) - Main project configuration
- [scientific-rigor-auditor.md](.claude/agents/scientific-rigor-auditor.md) - Agent specification