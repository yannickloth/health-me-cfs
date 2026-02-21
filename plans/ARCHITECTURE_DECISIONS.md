# Architecture Decisions: Patient Reorganization and Research Section

**Date:** 2026-02-10
**Status:** Decision framework ready for user approval

---

## Decision 1: Patient Case File Organization

### Current Problem
- Patient case split across two locations:
  - `contents/appendices/appendix-i-*` (4 large files, 300+ KB)
  - `patients/yannick/` (3 files, ~60 KB)
- Risk of divergence and inconsistency
- Main document includes both, creating confusion about what's active
- `appendix-j-*` files are patient-specific but live in general appendices

### Proposed Solution

**Structure:**
```
patients/yannick/
  00-index.tex                    # Main case navigation
  01-medical-history.tex          # Medications, Ritalin history, medical background
  02-clinical-findings.tex        # Test results, diagnostic data
  03-symptom-profile.tex          # Detailed symptom documentation (already exists)
  04-case-analysis.tex            # Case reasoning and therapeutic analysis
  05-treatment-plans.tex          # Treatment recommendations and protocols
  06-daily-tracking.tex           # Daily journals and tracking logs
  07-research-hypotheses.tex      # Research hypotheses with testable predictions (already exists)
```

**Benefits:**
- Single source of truth for patient case
- Clear numbered organization (00-07 suggests scope and flow)
- Autonomous folder: patient case is completely independent from main paper
- Easy to archive/remove if patient chooses to publish anonymously
- Clear boundary between general reference (appendices A-H) and patient case

### Architecture Principle
Following **Independent Variation Principle (IVP)**:
- Main paper pathophysiology sections (change driver: research evolution)
- Patient case data (change driver: patient medical events)
- These have different change drivers → separate organizational units

**User Approval Needed:** ✓ Proceed with this structure?

---

## Decision 2: New Research Section for Fatigue/Sleepiness Mechanisms

### Current Problem
- Symptom-producing mechanisms (active triggers) vs. capacity-limiting mechanisms (energy deficits) conflated
- Adenosine accumulation mentioned only once in biomarker context
- Inflammatory cytokine sleep-induction pathways not documented
- Serotonin-sleepiness linkage absent
- Melatonin dysfunction incompletely explained
- Microglia activation and neuroinflammatory fatigue mentioned briefly but not developed
- No integrated cascade model

### Proposed Solution

**Create Chapter 15: "Symptom-Producing Mechanisms: Fatigue and Sleepiness"**

**Location options:**

| Option | Placement | Pros | Cons | Scope |
|--------|-----------|------|------|-------|
| **A (Recommended)** | New Ch. 15, Part 2 | Dedicated space, high visibility, complete mechanistic depth | Adds to book length | 40-50 pp |
| B | New section in Ch. 14 (Ch. 14k) | Fits with speculative content, shorter | Space constraints, crowds Ch. 14 | 15-25 pp |
| C | Expand Ch. 8 (new subsection 8.X) | Natural fit with sleep/circadian | Changes existing structure, makes Ch. 8 large | 15-20 pp |

**Content outline (Option A):**
1. **Conceptual framework:** Symptom-producing vs. capacity-limiting mechanisms
2. **Adenosine accumulation:** Sleep pressure pathway
3. **Inflammatory cytokines:** IL-6, TNF-α, IL-1β somnolence mechanisms
4. **Serotonin dysregulation:** Mood-sleepiness interaction
5. **Melatonin dysfunction:** Circadian desynchronization
6. **Microglia activation:** Neuroinflammatory fatigue
7. **Integrated cascade model:** How mechanisms reinforce each other
8. **Phenotype connections:** Which mechanisms dominate in which patient types
9. **Therapeutic implications:** Mechanism-targeted interventions
10. **Research directions:** Mechanism identification and measurement

**Architecture Principle:**
- Ch. 6-13: Mechanism-by-mechanism exploration (energy, immune, autonomic, etc.)
- Ch. 14: Speculative hypotheses (mechanisms not yet validated)
- **Ch. 15 (NEW): Symptom-producing mechanisms** (mechanisms known to trigger symptoms, now integrated into ME/CFS context)
- Ch. 31-32: Temporal/predictive modeling (using Ch. 6-15 mechanisms)

This creates logical flow: detailed mechanisms → speculative mechanisms → symptom-producing mechanisms → predictive models

**User Approval Needed:** ✓ Option A (new chapter) preferred? Or B/C?

---

## Decision 3: Main Document Structure with Patient Case

### Current ms.tex Structure (lines 280-317)

```tex
% Part 5: Modeling
\include{contents/part5-modeling/ch31-temporal-evolution}
\include{contents/part5-modeling/ch32-predictive-applications}

\appendix

% Appendices A-H: General reference
\include{contents/appendices/appendix-a-terminology}
...
\include{contents/appendices/appendix-h-annotated-bibliography}

% Personal case data - now organized under patients/yannick/
\include{patients/yannick/00-index}
\include{patients/yannick/03-symptom-profile}
\include{patients/yannick/07-research-hypotheses}

% Daily tracking
\include{contents/appendices/appendix-j-daily-journal}
\include{contents/appendices/appendix-j-recommendations}

\printbibliography[heading=bibintoc]
\printindex
\end{document}
```

### Proposed Structure (Reorganization Complete)

```tex
% Part 5: Modeling
\include{contents/part5-modeling/ch31-temporal-evolution}
\include{contents/part5-modeling/ch32-predictive-applications}

\appendix

% General reference materials (A-H)
\include{contents/appendices/appendix-a-terminology}
\include{contents/appendices/appendix-b-abbreviations}
\include{contents/appendices/appendix-c-diagnostic-tools}
\include{contents/appendices/appendix-d-resources}
\include{contents/appendices/appendix-e-mathematical-details}
\include{contents/appendices/appendix-f-supplement-guide}
\include{contents/appendices/appendix-g-research-synthesis}
\include{contents/appendices/appendix-h-annotated-bibliography}

% Case study: Patient with ME/CFS (research subject Yannick)
% This section documents one patient's ME/CFS presentation in detail.
% See README in patients/yannick/ for usage notes.
%
% NOTE: This is a single-patient case study for illustration and hypothesis testing.
% Findings should NOT be generalized to all ME/CFS patients.
% Patient phenotypes vary significantly; this case represents one presentation pattern.
\include{patients/yannick/00-index}
\include{patients/yannick/01-medical-history}
\include{patients/yannick/02-clinical-findings}
\include{patients/yannick/03-symptom-profile}
\include{patients/yannick/04-case-analysis}
\include{patients/yannick/05-treatment-plans}
\include{patients/yannick/06-daily-tracking}
\include{patients/yannick/07-research-hypotheses}

\printbibliography[heading=bibintoc]
\printindex
\end{document}
```

**Key changes:**
- Clear separation: General reference (A-H) before patient case
- Explicit boundary comment explaining what the patient case is
- Warning that case is single patient, not generalizable
- All patient files organized in sequence (00-07)
- Removed old appendix-j references

**User Approval Needed:** ✓ Okay to add explanatory note?

---

## Decision 4: Handling Old appendix-i and appendix-j Files

### Current files in `contents/appendices/`

1. `appendix-i-personal-symptoms.tex` (82 KB) — NOT included in ms.tex
2. `appendix-i-a-medical-management.tex` (98 KB) — NOT included in ms.tex
3. `appendix-i-b-clinical-findings.tex` (45 KB) — NOT included in ms.tex
4. `appendix-i-c-case-analysis.tex` (74 KB) — NOT included in ms.tex
5. `appendix-j-daily-journal.tex` (10 KB) — Included in ms.tex
6. `appendix-j-recommendations.tex` (21 KB) — Included in ms.tex

### Proposal

**Phase 1 (this session): Content consolidation**
- Extract content from appendix-i-* files
- Consolidate into patients/yannick/ structure
- Update appendix-j files → patients/yannick/06-daily-tracking.tex

**Phase 2 (verify):
- Build document and verify no broken references
- Check all content migrated correctly

**Phase 3 (cleanup):
- Create git commit noting file deprecation
- Delete old appendix-i-*.tex files
- Delete old appendix-j-*.tex files OR
- Keep them as archived backups (git history preserves them)?

**User Preference:** ✓ Delete old files or keep as backup in deprecated/ folder?

---

## Decision 5: Pathophysiology Section Completeness

### Added in This Session (Planning Only)
- Framework for Ch. 15 (symptom-producing mechanisms)
- Research gap analysis (12 categories identified)

### Future Sessions (Recommended Order)

**High priority (addresses major gaps):**
1. **Ch. 15 implementation** (symptom-producing mechanisms)
   - 40-50 pages of detailed mechanisms
   - Adenosine, cytokines, serotonin, melatonin, microglia
   - Integrated cascade model

2. **Heterogeneity explanation** (new section in Part 1 or new chapter)
   - Why patients have different phenotypes
   - Genetic-mechanism mapping
   - Age, sex, severity factors
   - 25-35 pages

3. **Cascade dynamics expansion** (Ch. 13 or new section)
   - Sleep-immune-adenosine cascades
   - Energy-autonomic-vascular cascades
   - 20-30 pages

4. **Temporal dynamics** (new chapter Ch. 16 or Ch. 17)
   - Acute-to-chronic transition mechanisms
   - Disease progression timeline
   - Remission patterns
   - 20-25 pages

**Medium priority (addresses moderate gaps):**
5. Therapeutic mechanism matching (Part 3 expansion)
6. Viral persistence mechanisms (Ch. 7 expansion)
7. Barrier dysfunction systems (Ch. 8 & 10 expansion)
8. State transition models (Ch. 14 expansion)

**Lower priority (specialist topics):**
9. Cellular stress paradoxes
10. Mitochondrial communication systems
11. Epigenetic mechanisms of persistence

### Current Document Length
- Part 2 (pathophysiology): ~450 pages (est.)
- Adding all recommended content: ~200-250 additional pages
- Total: 650-700 pages for comprehensive coverage

**User Guidance Needed:** ✓ Prioritize which gaps to address in which order?

---

## Decision 6: Patient Case Metadata

### New README for patients/yannick/

```markdown
# Patient Case Study: Yannick

## Overview
Detailed medical documentation of a 44-year-old male with ME/CFS.

## Structure
- 00-index: Navigation and overview
- 01-medical-history: Medical background, medications (Ritalin, modafinil history)
- 02-clinical-findings: Laboratory results, diagnostic data
- 03-symptom-profile: Detailed symptom documentation
- 04-case-analysis: Clinical reasoning and analysis
- 05-treatment-plans: Treatment protocols and recommendations
- 06-daily-tracking: Daily journals and tracking logs
- 07-research-hypotheses: Research hypotheses with testable predictions

## Usage Notes

### In Main Document
This case is included in the main ms.tex as a patient case study in the appendices.
It serves to illustrate how ME/CFS pathophysiology manifests in a specific individual.

### Generalization
**IMPORTANT:** This is a single patient case and should NOT be generalized to all ME/CFS patients.
- Patient phenotypes vary significantly within the ME/CFS spectrum
- This case represents ONE presentation pattern
- Treatment responses are patient-specific

### Updates and Maintenance
Daily tracking and symptom data are updated in 06-daily-tracking.tex
Research hypotheses are maintained in 07-research-hypotheses.tex

See case-documenter agent documentation for update workflows.

## Privacy and Attribution
Patient name redacted in main document as "research subject Yannick"
Full medical history available here for reference and clinical reasoning.
```

**User Approval Needed:** ✓ Content and scope of README?

---

## Implementation Timeline

### This Session
- [x] Analysis and planning documents created
- [ ] User approval of architecture decisions
- [ ] Phase 1 patient file reorganization (pending approval)

### Next Session (If Approved)
- [ ] Phase 2-4: Complete patient file migration
- [ ] Update ms.tex includes
- [ ] Build verification
- [ ] Commit reorganization

### Session After
- [ ] Begin Ch. 15 content creation (symptom-producing mechanisms)
- [ ] OR address other high-priority gaps per user direction

---

## References

### Planning Documents
- `REORGANIZATION_AND_RESEARCH_PLAN.md` (detailed planning)
- `RESEARCH_GAPS.md` (gap inventory and priorities)
- `ARCHITECTURE.md` (design principles - Independent Variation Principle)

### Affected Files (if approved)
- `ms.tex` (lines 302-309: include statements)
- `patients/yannick/*` (reorganized structure)
- `contents/appendices/appendix-i-*.tex` (to be consolidated)
- `contents/appendices/appendix-j-*.tex` (to be moved)

---

## User Action Items

1. **Review architecture decisions** in sections 1-6
2. **Confirm:**
   - [ ] Patient file organization structure (Decision 1)
   - [ ] Ch. 15 placement (Decision 2, recommend Option A)
   - [ ] ms.tex structure update (Decision 3)
   - [ ] Old file handling (Decision 4)
   - [ ] Gap priority ordering (Decision 5)
   - [ ] README metadata (Decision 6)

3. **If approved, specify:**
   - "Proceed with Phase 1-4 reorganization" (full patient consolidation)
   - "Create Ch. 15 structure" (symptom-producing mechanisms chapter)
   - "Both in this session" or "stagger across sessions"
   - Preferred timeline for addressing research gaps

4. **Flag concerns:**
   - Document length implications
   - Reorganization scope
   - Ch. 15 placement vs. alternatives
   - Any additional considerations

---

**Next:** Await user approval and specific implementation requests.
