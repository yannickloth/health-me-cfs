# Part 3 Restructuring: Detailed Implementation Plan

## Executive Summary

This is a major architectural restructuring that will transform Part 3 from a severity-based organization to a **dual-layer system-by-system structure** aligned with Part 2's pathophysiology chapters. The goal is to provide clinicians and patients with clear, evidence-based guidance on **how to intervene on each biological system**.

## Current State Analysis

### Part 2 (Pathophysiology) - Already System-Organized
- Ch06: Energy Metabolism (~1,118 lines)
- Ch07: Immune System (~1,725 lines)
- Ch08: Neurological (~1,198 lines)
- Ch09: Endocrine (~452 lines)
- Ch10: Cardiovascular (~643 lines)
- Ch11: Gastrointestinal/Microbiome (~705 lines)
- Ch12: Genetics/Epigenetics (~465 lines)
- Ch13: Integrative Models (~1,278 lines, includes inflammation discussion)
- Ch14: Speculative Hypotheses (~52 lines + 11 subfiles)

### Part 3 (Treatment) - Currently Mixed Organization
**Severity-based chapters** (rich content, needs extraction):
- Ch14a: Urgent Action (Severe) - 2,555 lines
- Ch14b: Action (Mild-Moderate) - 2,300 lines
- Ch14c: Pediatric (Severe) - 1,268 lines
- Ch14d: Pediatric (Ambulatory) - 1,336 lines

**Mixed-organization chapters** (partial system focus):
- Ch14: Symptom Management - 300 lines
- Ch15: Medications Targeting Mechanisms - 1,643 lines (has some system sections)
- Ch16: Supplements/Nutraceuticals - 870 lines
- Ch17: Lifestyle Interventions - 388 lines (mostly pacing)
- Ch18: Emerging Therapies - 2,158 lines
- Ch19: Integrative Approaches - 1,352 lines

**Total Part 3 content**: ~14,170 lines (substantial extraction source)

### Key Observations

1. **Cross-references exist** but are Part 2 → Part 3 only (no reverse links yet)
2. **Severity guidance is valuable** and must be preserved during restructuring
3. **Ch15 already has system sections** (immune, mitochondrial, autonomic, etc.) - good starting point
4. **Inflammation not a separate chapter** in Part 2 (integrated in Ch13) - decision needed
5. **Rich protocols exist** in Ch14a/14b that need system-based extraction
6. **Strong agent infrastructure** available for automated assistance

---

## Architecture Decisions

### Decision 1: Inflammation Chapter Placement

**Question**: Should inflammation get a dedicated chapter in Part 2, or remain integrated in Ch13?

**Recommendation**: **Keep inflammation in Ch13 (Integrative Models)**, add **Ch21: Anti-Inflammatory Treatment Protocols** to Part 3.

**Rationale**:
- Inflammation is not a single biological system—it's a cross-system phenomenon
- Ch13 already discusses it in context of multi-system interactions
- Part 3 treatment chapter can synthesize anti-inflammatory approaches across systems
- Avoids Part 2 restructuring (out of scope for this task)

### Decision 2: New Part 3 Chapter Structure

**Proposed numbering** (preserving backward compatibility where possible):

**System-Targeted Interventions** (NEW):
- Ch15: Energy System Interventions (replaces/expands current Ch15)
- Ch16: Immune System Interventions (NEW - extracts from Ch15, supplements immune section)
- Ch17: Nervous System Interventions (NEW - neurological + cognitive support)
- Ch18: Endocrine System Interventions (NEW)
- Ch19: Cardiovascular & Autonomic Interventions (NEW)
- Ch20: Gastrointestinal Interventions (NEW)
- Ch21: Anti-Inflammatory Treatment Protocols (NEW - synthesizes across systems)

**Comprehensive Interventions** (REORGANIZED):
- Ch22: Supplements and Nutraceuticals (current Ch16, reorganized by system)
- Ch23: Lifestyle and Behavioral Interventions (current Ch17, expanded)
- Ch24: Integrative and Personalized Treatment (current Ch19, refocused)
- Ch25: Experimental and Emerging Therapies (current Ch18, maintained)

**Severity & Population-Specific** (APPENDIX or separate part?):
- Ch26: Urgent Action Plan for Severe Cases (current Ch14a, preserved as-is)
- Ch27: Action Plans for Mild-Moderate Cases (current Ch14b, preserved with system cross-refs)
- Ch28: Pediatric Treatment Considerations (merge Ch14c + Ch14d)

**Alternative**: Move severity-specific chapters (26-28) to **new appendices** to keep main Part 3 focused on systems.

### Decision 3: Severity Guidance Preservation

**Challenge**: Current Ch14a/14b contain critical severity-specific protocols that must not be lost.

**Solution**:
1. **Extract system-specific interventions** from Ch14a/14b into respective system chapters
2. **Preserve severity chapters as comprehensive quick-start guides** (Ch26-28 or appendices)
3. **Add severity annotations** to each system chapter (e.g., "Severe cases: start here", "Mild cases: optional")
4. **Cross-reference bidirectionally**: Severity chapters point to system chapters for details; system chapters note severity appropriateness

### Decision 4: Chapter Template Structure

Each system intervention chapter should follow this template:

```latex
\chapter{[System] Interventions}
\label{ch:[system]-interventions}

% FORWARD REFERENCE to Part 2
\textbf{Understanding the mechanism:} See Chapter~\ref{ch:[system]-pathophysiology} for detailed pathophysiology.

\section{Overview and Treatment Rationale}
% Why treat this system, what outcomes to expect

\section{Pharmacological Interventions}
\subsection{[Medication Class 1]}
\subsection{[Medication Class 2]}

\section{Supplements and Nutraceuticals}
\subsection{[Key Supplement 1]}
\subsection{[Key Supplement 2]}

\section{Lifestyle and Behavioral Interventions}
% System-specific lifestyle modifications

\section{Emerging and Experimental Approaches}
% Cutting-edge treatments for this system

\section{Severity-Specific Considerations}
\subsection{Severe Cases}
% Dosing, priorities, safety
\subsection{Mild-Moderate Cases}
% Optimization strategies
\subsection{Pediatric Considerations}
% Age-specific modifications

\section{Monitoring and Adjustment}
% How to track response, when to adjust

\section{Integration with Other Systems}
% CROSS-REFERENCES to other system intervention chapters
```

---

## Implementation Phases

### Phase 1: Audit and Content Mapping (READ-ONLY)

**Goal**: Understand exactly what content exists, where it lives, and how to reorganize it.

**Tasks**:

1. **Content Inventory** (Haiku agent)
   - Scan all Part 3 chapters and extract section-level table of contents
   - Identify which sections discuss which biological systems
   - Tag content by: system, severity, population, evidence level
   - Output: `/home/nicky/code/health-me-cfs/.claude/content-staging/part3-content-inventory.md`
   - **Model**: `haiku` via `general-purpose` agent
   - **Estimated time**: 30 minutes

2. **System-Specific Content Extraction Map** (Sonnet agent)
   - For each target system chapter, identify all source locations containing relevant content
   - Map: Ch14a lines 227-450 → Ch19 (Cardiovascular), severity: severe
   - Map: Ch15 sections → Ch15 (Energy), Ch16 (Immune), etc.
   - Create move/copy/reference decision for each content block
   - Output: `/home/nicky/code/health-me-cfs/.claude/content-staging/part3-extraction-map.md`
   - **Model**: `sonnet` via `general-purpose` agent
   - **Estimated time**: 2 hours

3. **Cross-Reference Audit** (Haiku agent)
   - Find all `\ref{ch:...}` references in Part 3 pointing to Part 2
   - Find all `\ref{sec:...}` references within Part 3
   - Identify which references will break during restructuring
   - Output: `/home/nicky/code/health-me-cfs/.claude/content-staging/part3-cross-references.txt`
   - **Model**: `haiku` via `general-purpose` agent
   - **Estimated time**: 15 minutes

4. **Severity Content Analysis** (Sonnet agent)
   - Analyze Ch14a/14b to identify severity-specific vs system-specific guidance
   - Extract "universal protocols" that apply regardless of severity
   - Identify "severity-critical warnings" that must be preserved
   - Output: `/home/nicky/code/health-me-cfs/.claude/content-staging/severity-content-analysis.md`
   - **Model**: `sonnet` via `general-purpose` agent
   - **Estimated time**: 1 hour

**Phase 1 Deliverable**: Complete content map with source → destination assignments for every paragraph/section.

**Verification Criteria**:
- Every line of existing Part 3 content is accounted for (moved, copied, or deprecated)
- No critical severity guidance is lost
- All cross-references are documented

---

### Phase 2: Architecture Finalization (DECISION-MAKING)

**Goal**: Make final structural decisions before implementation.

**Tasks**:

5. **Chapter Numbering Decision** (Human decision, Sonnet recommendations)
   - Finalize Ch15-Ch28 numbering scheme
   - Decide: severity chapters as Ch26-28 vs new appendices vs separate part?
   - Update ms.tex structure comments
   - **Model**: `sonnet` via `general-purpose` agent (recommendations) → Human approval
   - **Estimated time**: 30 minutes discussion

6. **Template Customization** (Sonnet agent)
   - Adapt base chapter template for each system's unique needs
   - Example: Ch19 (Cardiovascular) needs POTS subsection; Ch17 (Neurological) needs sleep spindles
   - Create chapter-specific templates in `.claude/content-staging/templates/`
   - **Model**: `sonnet` via `general-purpose` agent
   - **Estimated time**: 1 hour

7. **Label Naming Convention** (Haiku agent)
   - Design consistent label scheme: `ch:[system]-interventions`, `sec:[topic]-[system]`
   - Generate label migration map: old → new labels
   - Output: `/home/nicky/code/health-me-cfs/.claude/content-staging/label-migration-map.txt`
   - **Model**: `haiku` via `general-purpose` agent
   - **Estimated time**: 20 minutes

**Phase 2 Deliverable**: Approved architecture specification document.

**Verification Criteria**:
- Chapter structure approved by user
- All templates ready
- Label scheme documented

---

### Phase 3: File Creation and Structure (WRITE OPERATIONS BEGIN)

**Goal**: Create new chapter files with correct structure, placeholder content, and labels.

**Tasks**:

8. **Create New Chapter Files** (Haiku agent)
   - Create Ch15-Ch25 files (new numbering) with template structure
   - Add chapter headers, labels, skeleton sections
   - Add placeholder comments for content to be inserted
   - **Agent**: `general-purpose` agent
   - **Model**: haiku
   - **Estimated time**: 30 minutes

9. **Update ms.tex** (Haiku agent)
   - Insert new `\include{contents/part3-treatment/chXX-...}` lines
   - Update Part 3 intro comments to reflect new organization
   - Keep old chapter includes commented out temporarily (for reference)
   - **Agent**: `general-purpose` agent
   - **Model**: haiku
   - **Estimated time**: 15 minutes

10. **Initial Compilation Test** (Haiku agent)
    - Run `nix build` to verify LaTeX compiles with new structure
    - Fix any immediate syntax errors
    - **Agent**: `test-runner`
    - **Model**: haiku
    - **Estimated time**: 20 minutes

**Phase 3 Deliverable**: Compiling document with new chapter structure (mostly empty content).

**Verification Criteria**:
- `nix build` succeeds
- All new chapters appear in table of contents
- No LaTeX errors

---

### Phase 4: Content Extraction and Migration (BULK CONTENT WORK)

**Goal**: Move/copy content from old chapters to new chapters according to extraction map.

**Tasks**:

11. **Extract Energy System Content** (Sonnet agent)
    - From: Ch15 (current), Ch14a (severe protocols), Ch16 (CoQ10, NAD+, D-ribose)
    - To: Ch15 (new Energy System Interventions)
    - Preserve severity annotations
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

12. **Extract Immune System Content** (Sonnet agent)
    - From: Ch15 sections (LDN, IVIG, rituximab), Ch14a (immune protocols)
    - To: Ch16 (new Immune System Interventions)
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

13. **Extract Neurological/Cognitive Content** (Sonnet agent)
    - From: Ch15 (neuroprotective agents), Ch14a (sleep spindles, glymphatic, CNS protocols), Ch08 references
    - To: Ch17 (new Nervous System Interventions)
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 3 hours (complex content)

14. **Extract Cardiovascular/Autonomic Content** (Sonnet agent)
    - From: Ch15 (autonomic medications, H2 antagonists), Ch14a (blood volume expansion, compression), Ch10 references
    - To: Ch19 (new Cardiovascular & Autonomic Interventions)
    - Include: POTS protocols, OI management, tachycardia control
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

15. **Extract Gastrointestinal Content** (Sonnet agent)
    - From: Ch11 (gut microbiome), Ch16 (probiotics), Ch17 (dietary approaches)
    - To: Ch20 (new Gastrointestinal Interventions)
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

16. **Create Anti-Inflammatory Chapter** (Sonnet agent)
    - Synthesize from: Ch15 (herbal anti-inflammatories), Ch13 references, Ch07 (immune inflammation)
    - To: Ch21 (Anti-Inflammatory Treatment Protocols)
    - Cross-system synthesis (not just extraction)
    - **Agent**: `scientific-insight-generator` + `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 3 hours (synthesis work)

17. **Extract Endocrine Content** (Sonnet agent)
    - From: Ch09 (endocrine pathophysiology), scattered thyroid/cortisol references
    - To: Ch18 (new Endocrine System Interventions)
    - May need literature search to fill gaps
    - **Agent**: `chapter-integrator` + `literature-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours + literature time

18. **Reorganize Supplements Chapter** (Sonnet agent)
    - Current Ch16 → New Ch22
    - Reorganize by system instead of alphabetically
    - Add cross-references to system intervention chapters
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 1 hour

19. **Expand Lifestyle Chapter** (Sonnet agent)
    - Current Ch17 → New Ch23
    - Incorporate relevant lifestyle sections from Ch14a/14b
    - Maintain pacing as core section
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 1 hour

20. **Refocus Integrative Chapter** (Sonnet agent)
    - Current Ch19 → New Ch24
    - Remove system-specific content (now in dedicated chapters)
    - Focus on: personalization, phenotyping, combination strategies
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 1 hour

21. **Maintain Emerging Therapies Chapter** (Sonnet agent)
    - Current Ch18 → New Ch25
    - Minimal changes, update cross-references
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 30 minutes

**Phase 4 Deliverable**: All system intervention chapters populated with extracted content.

**Verification Criteria**:
- Each new chapter has substantial content (>500 lines for major systems)
- No duplicate content (or duplicates are intentional with cross-references)
- Severity annotations preserved
- LaTeX compiles without errors

---

### Phase 5: Severity Chapter Handling

**Goal**: Preserve critical severity-specific guidance while integrating with new structure.

**Tasks**:

22. **Refactor Severe Cases Chapter** (Sonnet agent)
    - Current Ch14a → New Ch26 (or Appendix)
    - Remove system-specific content that's now in Ch15-21
    - Add cross-references: "For cardiovascular protocols, see Ch19"
    - Preserve: 2-week rapid relief overview, emergency protocols, sensitization prevention
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

23. **Refactor Mild-Moderate Chapter** (Sonnet agent)
    - Current Ch14b → New Ch27 (or Appendix)
    - Add subtype-specific cross-references to system chapters
    - Preserve: subtype assessment, prioritization frameworks
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

24. **Merge Pediatric Chapters** (Sonnet agent)
    - Current Ch14c + Ch14d → New Ch28 (or Appendix)
    - Organize by severity within pediatric context
    - Add developmental considerations
    - **Agent**: `chapter-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

**Phase 5 Deliverable**: Refactored severity chapters that work with new system structure.

**Verification Criteria**:
- Severity chapters serve as "quick start" guides
- All critical protocols preserved
- Clear navigation to system chapters for details

---

### Phase 6: Cross-Reference Integration

**Goal**: Create bidirectional links between Part 2 (pathophysiology) and Part 3 (interventions).

**Tasks**:

25. **Add Forward References (Part 2 → Part 3)** (Haiku agent)
    - Each Part 2 chapter gets pointer to corresponding Part 3 intervention chapter
    - Example: Ch06 (Energy Metabolism) adds: "For interventions targeting energy systems, see Chapter~\ref{ch:energy-interventions}."
    - **Agent**: `general-purpose` agent
    - **Model**: haiku
    - **Estimated time**: 30 minutes

26. **Add Back References (Part 3 → Part 2)** (Haiku agent)
    - Each Part 3 intervention chapter references corresponding Part 2 pathophysiology
    - Already specified in chapter template
    - **Agent**: `general-purpose` agent
    - **Model**: haiku
    - **Estimated time**: 30 minutes

27. **Add Inter-System Cross-References** (Sonnet agent)
    - Within Part 3, link related systems
    - Example: Ch17 (Neurological) references Ch19 (Autonomic) for cerebral blood flow
    - **Agent**: `protocol-linker`
    - **Model**: sonnet
    - **Estimated time**: 1 hour

28. **Update Severity Chapter Cross-References** (Haiku agent)
    - Ensure Ch26-28 correctly point to new Ch15-21 numbering
    - **Agent**: `general-purpose` agent
    - **Model**: haiku
    - **Estimated time**: 30 minutes

29. **Verify All Cross-References** (Haiku agent)
    - Run automated check: all `\ref{}` commands resolve
    - Generate list of undefined references
    - **Agent**: `link-checker`
    - **Model**: haiku
    - **Estimated time**: 20 minutes

**Phase 6 Deliverable**: Fully cross-referenced document with bidirectional navigation.

**Verification Criteria**:
- No undefined references
- Each Part 2 chapter links to Part 3 intervention chapter
- Each Part 3 chapter links back to Part 2 pathophysiology
- System chapters link to related systems

---

### Phase 7: Literature Integration

**Goal**: Ensure all treatment claims are cited and evidence levels are clear.

**Tasks**:

30. **Identify Uncited Claims** (Sonnet agent)
    - Scan new chapters for treatment recommendations without citations
    - Flag high-priority gaps (pharmacological interventions, dosing recommendations)
    - Output: `/home/nicky/code/health-me-cfs/.claude/content-staging/citation-gaps.md`
    - **Agent**: `literature-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

31. **Energy System Literature Search** (Sonnet agent)
    - Search for: CoQ10, NAD+ precursors, D-ribose, mitochondrial support in ME/CFS
    - Add citations to Ch15
    - **Agent**: `literature-integrator`
    - **Model**: sonnet
    - **Estimated time**: 3 hours

32. **Immune System Literature Search** (Sonnet agent)
    - Search for: LDN, immunoadsorption, rituximab, daratumumab trials in ME/CFS
    - Add citations to Ch16
    - **Agent**: `literature-integrator`
    - **Model**: sonnet
    - **Estimated time**: 3 hours

33. **Neurological Literature Search** (Sonnet agent)
    - Search for: sleep architecture, cognitive enhancers, neuroprotection in ME/CFS
    - Add citations to Ch17
    - **Agent**: `literature-integrator`
    - **Model**: sonnet
    - **Estimated time**: 3 hours

34. **Cardiovascular/Autonomic Literature Search** (Sonnet agent)
    - Search for: POTS treatment, autonomic dysfunction, blood volume expansion
    - Add citations to Ch19
    - **Agent**: `literature-integrator`
    - **Model**: sonnet
    - **Estimated time**: 3 hours

35. **GI System Literature Search** (Sonnet agent)
    - Search for: probiotics, FMT, dietary interventions in ME/CFS
    - Add citations to Ch20
    - **Agent**: `literature-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

36. **Anti-Inflammatory Literature Search** (Sonnet agent)
    - Search for: neuroinflammation treatment, systemic inflammation reduction
    - Add citations to Ch21
    - **Agent**: `literature-integrator`
    - **Model**: sonnet
    - **Estimated time**: 3 hours

37. **Endocrine Literature Search** (Sonnet agent)
    - Search for: thyroid treatment, HPA axis, cortisol management in ME/CFS
    - Add citations to Ch18
    - **Agent**: `literature-integrator`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

38. **Add Certainty Assessments** (Sonnet agent)
    - For each intervention, add evidence level (Established/Probable/Preliminary/Theoretical/Speculative)
    - Use project's existing evidence framework from Ch13
    - **Agent**: `scientific-rigor-auditor`
    - **Model**: sonnet
    - **Estimated time**: 3 hours

**Phase 7 Deliverable**: Fully cited treatment chapters with evidence level annotations.

**Verification Criteria**:
- Every pharmacological recommendation has citation
- Evidence levels clearly marked
- All claims supported or marked as speculative

---

### Phase 8: Content Creation (Gap Filling)

**Goal**: Write new content for areas where extraction/reorganization leaves gaps.

**Tasks**:

39. **Identify Content Gaps** (Sonnet agent)
    - Compare chapter templates to actual content
    - List missing sections (e.g., "Ch18 has no section on cortisol management")
    - Prioritize by clinical importance
    - Output: `/home/nicky/code/health-me-cfs/.claude/content-staging/content-gaps.md`
    - **Agent**: `content-reviewer`
    - **Model**: sonnet
    - **Estimated time**: 1 hour

40. **Write Missing Energy Content** (Opus agent)
    - Fill gaps in Ch15 identified by gap analysis
    - Examples: metabolic switching protocols, exercise intolerance management
    - **Agent**: `scientific-insight-generator`
    - **Model**: opus
    - **Estimated time**: 4 hours

41. **Write Missing Immune Content** (Opus agent)
    - Fill gaps in Ch16
    - Examples: immunomodulator selection criteria, timing strategies
    - **Agent**: `scientific-insight-generator`
    - **Model**: opus
    - **Estimated time**: 3 hours

42. **Write Missing Neurological Content** (Opus agent)
    - Fill gaps in Ch17
    - Examples: cognitive rehabilitation protocols, sensory sensitivity management
    - **Agent**: `scientific-insight-generator`
    - **Model**: opus
    - **Estimated time**: 4 hours

43. **Write Missing Endocrine Content** (Opus agent)
    - Fill gaps in Ch18 (likely substantial)
    - Examples: thyroid optimization, HPA axis support, sex hormone management
    - **Agent**: `scientific-insight-generator`
    - **Model**: opus
    - **Estimated time**: 5 hours (major gap)

44. **Write Missing Cardiovascular Content** (Sonnet agent)
    - Fill gaps in Ch19
    - Examples: POTS phenotype-specific protocols, syncope prevention
    - **Agent**: `scientific-insight-generator`
    - **Model**: sonnet
    - **Estimated time**: 3 hours

45. **Write Missing GI Content** (Sonnet agent)
    - Fill gaps in Ch20
    - Examples: SIBO treatment, motility disorders, dietary elimination protocols
    - **Agent**: `scientific-insight-generator`
    - **Model**: sonnet
    - **Estimated time**: 3 hours

46. **Write Anti-Inflammatory Synthesis** (Opus agent)
    - Synthesize cross-system anti-inflammatory approaches in Ch21
    - This is new synthesis work, not extraction
    - **Agent**: `scientific-insight-generator`
    - **Model**: opus (synthesis complexity)
    - **Estimated time**: 5 hours

**Phase 8 Deliverable**: Complete system intervention chapters with no major gaps.

**Verification Criteria**:
- All template sections filled
- Content meets minimum word count (500+ lines per major chapter)
- Scientific rigor maintained

---

### Phase 9: Quality Assurance

**Goal**: Review, refine, and validate all changes.

**Tasks**:

47. **LaTeX Syntax Check** (Haiku agent)
    - Run `syntax-fixer` on all modified chapters
    - Fix errors, warnings, overfull boxes
    - **Agent**: `syntax-fixer`
    - **Model**: haiku
    - **Estimated time**: 1 hour

48. **Formatting Consistency Check** (Haiku agent)
    - Verify consistent use of environments (observation, recommendation, speculation, etc.)
    - Check citation formatting
    - **Agent**: `formatting-fixer`
    - **Model**: haiku
    - **Estimated time**: 1 hour

49. **Content Review - System Chapters** (Sonnet agent, per chapter)
    - Review each Ch15-21 for: accuracy, completeness, consistency
    - Check that severity annotations are appropriate
    - **Agent**: `content-reviewer`
    - **Model**: sonnet
    - **Estimated time**: 1 hour per chapter = 7 hours

50. **Scientific Rigor Audit** (Opus agent)
    - Verify evidence levels are correctly assigned
    - Check for overstatement of evidence
    - Ensure speculative content is clearly marked
    - **Agent**: `scientific-rigor-auditor`
    - **Model**: opus
    - **Estimated time**: 4 hours

51. **Logic Audit** (Opus agent)
    - Check for circular reasoning
    - Verify treatment recommendations follow from pathophysiology
    - **Agent**: `logic-auditor`
    - **Model**: opus
    - **Estimated time**: 3 hours

52. **Style Naturalization** (Sonnet agent)
    - Remove AI-generated patterns
    - Ensure medical writing standards
    - **Agent**: `style-naturalizer`
    - **Model**: sonnet
    - **Estimated time**: 2 hours

53. **Cross-Reference Validation** (Haiku agent)
    - Final check that all references resolve
    - Verify navigation paths make sense
    - **Agent**: `link-checker`
    - **Model**: haiku
    - **Estimated time**: 30 minutes

54. **Full Document Compilation Test** (Haiku agent)
    - Run `nix build` on complete document
    - Verify PDF generates correctly
    - Check table of contents, cross-references render properly
    - **Agent**: `test-runner`
    - **Model**: haiku
    - **Estimated time**: 30 minutes

**Phase 9 Deliverable**: Publication-ready restructured Part 3.

**Verification Criteria**:
- LaTeX compiles without errors or warnings
- All content meets scientific writing standards
- Evidence levels correctly assigned
- Navigation works smoothly

---

### Phase 10: Documentation and Appendices

**Goal**: Update supporting documentation to reflect new structure.

**Tasks**:

55. **Update Part 3 Introduction** (Sonnet agent)
    - Rewrite `/home/nicky/code/health-me-cfs/contents/part3-treatment/part3-intro.tex`
    - Explain new system-by-system organization
    - Provide navigation guidance
    - **Agent**: `general-purpose` agent
    - **Model**: sonnet
    - **Estimated time**: 1 hour

56. **Create Treatment Index Appendix** (Haiku agent)
    - Optional: new appendix listing all interventions by category
    - Quick lookup: "What treats fatigue?" → points to relevant chapters
    - **Agent**: `general-purpose` agent
    - **Model**: haiku
    - **Estimated time**: 2 hours

57. **Update Reading Guide** (Sonnet agent)
    - Update `/home/nicky/code/health-me-cfs/contents/shared/reading-guide.tex`
    - Explain how to navigate Part 2 → Part 3 connections
    - **Agent**: `general-purpose` agent
    - **Model**: sonnet
    - **Estimated time**: 1 hour

58. **Update Project Documentation** (Haiku agent)
    - Update `.claude/CLAUDE.md` if needed
    - Document new chapter structure for agents
    - **Agent**: `general-purpose` agent
    - **Model**: haiku
    - **Estimated time**: 30 minutes

59. **Create Migration Guide** (Sonnet agent)
    - Document: "What happened to content from old Ch14a?"
    - Help readers of previous versions find content in new structure
    - Output: `.claude/migration-guide-part3-restructure.md`
    - **Agent**: `general-purpose` agent
    - **Model**: sonnet
    - **Estimated time**: 1 hour

**Phase 10 Deliverable**: Complete documentation for new structure.

**Verification Criteria**:
- Readers can navigate effectively
- Migration guide explains all changes
- Project documentation updated

---

## Task Dependencies

```
Phase 1 (Audit) → Phase 2 (Architecture) → Phase 3 (File Creation)
                                                    ↓
Phase 4 (Content Extraction) ← Phase 3            ↓
         ↓                                          ↓
Phase 5 (Severity) ← Phase 4                      ↓
         ↓                                          ↓
Phase 6 (Cross-Refs) ← Phase 5 ← Phase 3         ↓
         ↓                                          ↓
Phase 7 (Literature) ← Phase 6 ← Phase 4         ↓
         ↓                                          ↓
Phase 8 (Gap Fill) ← Phase 7 ← Phase 4           ↓
         ↓                                          ↓
Phase 9 (QA) ← Phase 8 ← Phase 6 ← Phase 5      ↓
         ↓                                          ↓
Phase 10 (Docs) ← Phase 9 ← Phase 3 ←←←←←←←←←←←←
```

**Critical path**: Phase 1 → 2 → 3 → 4 → 6 → 8 → 9 → 10

**Parallel opportunities**:
- Phase 7 (literature) can run concurrently with Phase 8 (gap filling)
- Phase 5 (severity) can run concurrently with late Phase 4 tasks
- Within Phase 4, system extractions can run in parallel (with coordination)

---

## Estimated Scope

### File Impact
- **New files**: 7-14 chapter files (Ch15-21 or Ch15-28)
- **Modified files**: 10+ existing chapter files, ms.tex, part3-intro.tex
- **Supporting files**: Templates, migration guides, content maps

### Line Count (Estimated)
- **Ch15 (Energy)**: 1,500 lines (extract + new)
- **Ch16 (Immune)**: 1,800 lines
- **Ch17 (Neurological)**: 2,000 lines (complex)
- **Ch18 (Endocrine)**: 1,200 lines (mostly new)
- **Ch19 (Cardiovascular)**: 1,600 lines
- **Ch20 (GI)**: 1,000 lines
- **Ch21 (Anti-Inflammatory)**: 1,400 lines (synthesis)
- **Ch22-25**: ~4,000 lines (reorganized)
- **Ch26-28**: ~5,000 lines (refactored)
- **Total new Part 3**: ~20,000 lines (vs current 14,170)

### Time Estimates (Agent Hours)
- **Haiku tasks**: ~15 hours
- **Sonnet tasks**: ~60 hours
- **Opus tasks**: ~30 hours
- **Total agent time**: ~105 hours
- **Human review/decision time**: ~20 hours
- **Total calendar time**: 4-6 weeks (depending on parallelization)

---

## Risk Assessment

### High Risks
1. **Content loss during extraction** - Mitigation: Preserve old files as `.old` backups
2. **Broken cross-references** - Mitigation: Automated link checking at every phase
3. **Evidence quality degradation** - Mitigation: Opus-level scientific rigor audit
4. **LaTeX compilation failure** - Mitigation: Compile after every major phase

### Medium Risks
1. **Duplicate content** - Mitigation: Extraction map prevents duplication
2. **Inconsistent terminology** - Mitigation: Dictionary manager + style audit
3. **Lost severity guidance** - Mitigation: Phase 5 dedicated to preservation
4. **Incomplete literature coverage** - Mitigation: Phase 7 comprehensive search

### Low Risks
1. **Chapter numbering confusion** - Mitigation: Clear migration guide
2. **Agent coordination issues** - Mitigation: Sequential phases with clear handoffs
3. **Over-scoped gap filling** - Mitigation: Prioritize by clinical importance

---

## Success Criteria

### Must-Have (Blocking)
- [ ] All 7+ system intervention chapters created and populated
- [ ] Severity guidance preserved (Ch26-28 or appendices)
- [ ] No LaTeX compilation errors
- [ ] All cross-references resolve
- [ ] Every treatment recommendation has evidence level
- [ ] Part 2 ↔ Part 3 bidirectional links work

### Should-Have (Important)
- [ ] All chapters >500 lines (substantial content)
- [ ] Literature citations for all pharmacological interventions
- [ ] Anti-inflammatory synthesis chapter complete
- [ ] Migration guide written
- [ ] Treatment index appendix created

### Nice-to-Have (Optional)
- [ ] Illustrations for system intervention pathways
- [ ] Quick reference tables in each chapter
- [ ] Protocol flowcharts for complex interventions
- [ ] Video/multimedia appendix references

---

## Critical Decisions Required Before Starting

1. **Chapter numbering scheme**: Confirm Ch15-28 as proposed, or alternative?
2. **Severity chapter placement**: Keep as Ch26-28, or move to appendices?
3. **Inflammation chapter**: Confirm Ch21 as separate chapter in Part 3?
4. **Prioritization**: Which system chapters are highest priority if time is limited?
5. **Literature search depth**: Comprehensive (30+ papers per system) or focused (10-15 key papers)?

---

## Critical Files for Implementation

Based on this planning analysis, the **5 most critical files** for implementing this restructuring are:

1. **`/home/nicky/code/health-me-cfs/ms.tex`** - Document structure; must be updated with new chapter includes, defines entire Part 3 architecture

2. **`/home/nicky/code/health-me-cfs/contents/part3-treatment/ch14a-urgent-action-severe.tex`** - 2,555 lines of rich severity-specific protocols; primary extraction source for system-specific interventions (cardiovascular, sleep, mast cell, etc.)

3. **`/home/nicky/code/health-me-cfs/contents/part3-treatment/ch15-medications-systems.tex`** - 1,643 lines already organized by system (immune, mitochondrial, autonomic); serves as foundation for new Ch15-19 structure

4. **`/home/nicky/code/health-me-cfs/contents/part3-treatment/ch14b-action-mild-moderate.tex`** - 2,300 lines containing subtype assessment framework and prioritization logic; critical for severity annotations in new chapters

5. **`/home/nicky/code/health-me-cfs/contents/part2-pathophysiology/ch13-integrative-models.tex`** - 1,278 lines including hypothesis ranking table, evidence framework, and inflammation discussion; defines evidence levels and integration logic that Part 3 must reference

These files represent the structural anchor (ms.tex), the two largest extraction sources (ch14a, ch14b), the existing system-organized foundation (ch15), and the methodological framework (ch13) that the new Part 3 structure depends on.
