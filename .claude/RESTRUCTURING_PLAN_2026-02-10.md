# ME/CFS Documentation Restructuring Plan
## Patient Case Separation and Parallel Research Integration

**Date:** February 10, 2026
**Patient:** Yannick (DOB: March 22, 1981, age 44)
**Status:** Planning Phase

---

## Executive Summary

This plan restructures the ME/CFS documentation project to:

1. **Separate patient case data from the academic paper** - Move from "Appendix I within the paper" to "patient as independent entity"
2. **Create structured patient folder** - `patients/yannick/` with organized medical tracking, protocols, and treatment planning
3. **Execute 4 parallel research tasks** - Diagnostic protocols, sleep specialist referral, activity tracking, and fluoride-pineal hypothesis integration
4. **Preserve document integrity** - Main paper includes patient case as a structured study (separate from appendices)

---

## Part 1: File Reorganization

### Current State

**Current Structure:**
```
contents/appendices/
├── appendix-i-personal-symptoms.tex        (1188 lines)
├── appendix-i-a-medical-management.tex     (1917 lines)
├── appendix-i-b-clinical-findings.tex      (861 lines)
└── appendix-i-c-case-analysis.tex          (1356 lines)
Total: 5,322 lines
```

**Current Inclusions in ms.tex:**
```latex
\include{contents/appendices/appendix-i-personal-symptoms}
\include{contents/appendices/appendix-i-a-medical-management}
\include{contents/appendices/appendix-i-b-clinical-findings}
\include{contents/appendices/appendix-i-c-case-analysis}
```

### New Structure

**Target Structure:**
```
patients/yannick/
├── 00-index.tex                          (Overview, case summary)
├── 01-demographics-and-history.tex       (DOB, medical history, timeline)
├── 02-current-status.tex                 (Current medications, baseline state)
├── 03-symptom-profile.tex                (Detailed symptoms - from appendix-i-personal-symptoms)
├── 04-medical-management.tex             (Treatments, protocols - from appendix-i-a-medical-management)
├── 05-clinical-findings.tex              (Lab results, assessments - from appendix-i-b-clinical-findings)
├── 06-case-analysis.tex                  (Diagnostic reasoning, patterns - from appendix-i-c-case-analysis)
├── 07-research-hypotheses.tex            (Testable hypotheses with certainty)
├── protocols/
│   ├── diagnostic-test-protocol.tex      (Tier 1 tests, timing, logistics)
│   ├── sleep-tracking-protocol.tex       (Sleep-activity-rebound systematic tracking)
│   ├── activity-tracking-protocol.tex    (Granular activity/crash tracking)
│   └── sleep-specialist-referral.tex     (Referral questions for specialist)
├── tracking/
│   ├── symptom-log.tex                   (Daily/weekly symptom tracking template)
│   ├── medication-trial-log.tex          (Ritalin MR dosing, response tracking)
│   └── activity-rebound-log.tex          (Activity log linked to subsequent PEM)
└── README.md                              (Navigation guide, key dates, current focus)
```

### Migration Steps

1. **Copy files** to new location (do not delete originals until build verified)
2. **Update LaTeX structure** - Add cross-references, improve navigation
3. **Update main document** - Change includes to point to patient folder
4. **Remove from appendices** - Delete original files after successful build
5. **Update references** - Fix all \ref, \label, and cross-references

---

## Part 2: Parallel Research Tasks

### Task 1: Diagnostic Test Protocol
**Output:** `patients/yannick/protocols/diagnostic-test-protocol.tex`

**Content Requirements:**
- Tier 1 tests (highest priority, logistically feasible)
  - Specific test names, reference ranges, interpretation guidance
  - Timing considerations (time of day, post-activity vs. baseline)
  - Logistics (where to get done, cost estimates if known)
  - Repeat schedule (how often, spacing between tests)
- Link each test to specific hypotheses in Yannick's case
- Certainty assessment for each test's diagnostic value (0.0-1.0)
- Timeline: Immediate/1-month/3-month priorities

**Patient Context:**
- Recent autonomic dysregulation during sleep-wake transition (Feb 11, 2026)
- Ritalin MR 30mg resumption after Provigil period
- 23-year ADHD medication history

**Key Tests to Include:**
- Autonomic function testing (given recent dysregulation)
- Sleep architecture studies (EEG, actigraphy)
- Mitochondrial function markers
- HPA axis assessment
- Immune markers relevant to ME/CFS

---

### Task 2: Sleep Medicine Specialist Referral Questions
**Output:** `patients/yannick/protocols/sleep-specialist-referral.tex`

**Content Requirements:**
- Specific, testable questions for sleep medicine evaluation
- Link to Yannick's symptom constellation:
  - Sleep-related autonomic dysregulation
  - Activity-triggered PEM patterns
  - Ritalin's effects on sleep architecture
- Assessment of fluoride-pineal-sleep hypothesis
- Chronotype assessment and circadian disruption
- Sleep study recommendations with specific parameters

**Structured Format:**
- Background summary (brief case overview)
- Chief complaint: Sleep-related autonomic events
- Specific tests to request:
  - Polysomnography (with what parameters?)
  - MSLT (if narcolepsy suspected)
  - Actigraphy (continuous for how long?)
  - Autonomic testing during sleep transitions
- Research questions to explore together

---

### Task 3: Systematic Sleep-Activity-Rebound Tracking Protocol
**Output:** `patients/yannick/protocols/sleep-tracking-protocol.tex` + template

**Content Requirements:**
- Daily tracking structure:
  - Sleep metrics: bedtime, sleep onset latency, awakenings, wake time, total duration
  - Sleep quality subjective assessment
  - Dreams/nightmares tracking (relevant to pineal hypothesis)
  - Morning autonomic symptoms (HR variability, BP, dizziness)
- Activity metrics (link to subsequent sleep/crashes):
  - Activity level previous day (quantified somehow: METs, activity score)
  - Cognitive exertion level
  - Time from activity to crash onset
  - Severity of rebound
- Timing considerations:
  - Ritalin timing and effect on sleep
  - Light exposure (fluoride-pineal links to melatonin → light exposure critical)
  - Meal timing

**Correlation Analysis Framework:**
- How to identify patterns: activity dose → sleep disruption → autonomic dysregulation
- Quantification scheme for activity (simple but systematic)
- Statistical measures for tracking correlation strength

---

### Task 4: Fluoride-Pineal-Sleep-ME/CFS Hypothesis Integration
**Output:** `patients/yannick/07-research-hypotheses.tex` (new section)

**Content Requirements:**
- **Hypothesis Statement** (with certainty assessment 0.0-1.0)
  - Fluoride accumulation → pineal calcification → melatonin dysfunction
  - Melatonin dysfunction → autonomic dysregulation → activity intolerance exacerbation
  - Specific to Yannick's recent autonomic event during sleep-wake transition

- **Mechanistic Pathway:**
  - Fluoride bioaccumulation (sources: water, some medications like Prozac)
  - Pineal gland calcification and melatonin synthesis
  - Melatonin's role in circadian rhythm, autonomic regulation
  - Link to ME/CFS pathophysiology (immune timing, HPA axis, mitochondrial cycling)

- **Testable Predictions:**
  - Melatonin levels (saliva test, specific timing)
  - Pineal calcification markers (if available via imaging/biomarkers)
  - Sleep architecture changes with targeted melatonin supplementation
  - Fluoride exposure assessment and sources
  - Response to specific interventions (melatonin timing, fluoride reduction)

- **Evidence Base:**
  - Cited research on fluoride and pineal health
  - ME/CFS sleep and autonomic literature
  - Melatonin's documented effects in similar conditions
  - Certainty levels for each component

- **Treatment Implications:**
  - Melatonin supplementation protocol (timing, dosing for Yannick)
  - Fluoride reduction strategies (water filter, medication review)
  - Sleep hygiene recommendations specific to pineal hypothesis
  - Monitoring approach (sleep studies, lab markers)

- **Limitations & Alternative Explanations:**
  - Other causes of pineal dysfunction
  - Confounding factors (Ritalin use, ADHD, medication history)
  - Difficulty isolating fluoride effect from other pathways

---

## Part 3: Integration Strategy

### Certainty Assessment Framework
All hypotheses use scale: **0.0 (speculation) to 1.0 (high confidence)**
- 0.0-0.30: Wild speculation (interesting but very uncertain)
- 0.30-0.45: Plausible hypothesis (worth exploring, limited evidence)
- 0.45-0.70: Testable hypothesis (sufficient evidence base to warrant investigation)
- 0.70-1.0: High confidence (strong evidence, likely mechanism)

### Implementation Order
1. Create patient folder structure
2. Migrate files (keep originals until build verified)
3. Execute diagnostic protocol task
4. Execute sleep specialist referral task
5. Execute activity tracking protocol task
6. Execute fluoride-pineal hypothesis integration
7. Build and verify all references
8. Remove original appendix files
9. Commit comprehensive changeset

### Build Verification Strategy
- After each major change: `nix build`
- Check for reference errors: `grep -n "undefined.*ref\|Warning.*undefined" *.log`
- Verify all patient file includes resolve
- Test PDF generation with patient folder structure

---

## Part 4: Documentation Dependencies

### Cross-References to Update
```
appendix-i-personal-symptoms.tex
  → App Ref: appendix-i-a-medical-management
  → App Ref: appendix-i-b-clinical-findings
  → App Ref: appendix-i-c-case-analysis

appendix-i-a-medical-management.tex
  → Cross-refs to symptom sections

appendix-i-c-case-analysis.tex
  → Cross-refs to findings, symptoms
```

**Post-Migration:**
All internal cross-references rewritten to point within `patients/yannick/` structure.

---

## Part 5: Patient Context & Critical Information

### Yannick Profile
- **Name:** Yannick
- **DOB:** March 22, 1981 (age 44 as of Feb 2026)
- **ADHD History:** ~23 years medication history (started ~age 20)
- **Medication Timeline:**
  - Long-term Ritalin use (~23 years)
  - Trial of Concerta
  - Trial of Provigil (modafinil)
  - Current: Ritalin MR 30mg (resumption after Provigil period)

### Critical Events
- **Feb 11, 2026:** Autonomic dysregulation during sleep-wake transition (recent, needs investigation)
- **Feb 8-10, 2026:** Recent activity-triggered PEM episodes documented
- **Ritalin Response:** Generally positive, documented in appendix-i-a

### Current Medical Situation
- On active medication management
- Recent autonomic event suggests need for sleep medicine evaluation
- Activity-rebound pattern well-established; systematic tracking would help characterize
- Candidate for targeted diagnostic testing protocol

---

## Timeline

| Phase | Duration | Deliverable |
|-------|----------|-------------|
| Planning (current) | 1 hour | This document |
| File Migration | 2 hours | New folder structure, updated includes |
| Research Task Execution | 8 hours | 4 parallel research outputs |
| Build Verification | 1 hour | Successful nix build, PDF generation |
| Documentation Review | 1 hour | Final verification, cross-reference check |
| Commit & Archive | 30 min | Comprehensive git commit |
| **Total** | **~13.5 hours** | **Complete restructured patient system** |

---

## Success Criteria

✓ Patient folder structure created and organized
✓ All 5,322 lines migrated with preserved formatting
✓ ms.tex includes updated to point to new patient folder
✓ All internal cross-references resolved (no "undefined ref" warnings)
✓ Diagnostic test protocol document complete (50+ tests with timing)
✓ Sleep specialist referral document complete (structured questions)
✓ Sleep-activity tracking protocol template with correlation framework
✓ Fluoride-pineal hypothesis with testable predictions and certainty assessment
✓ nix build succeeds, PDF generates without warnings
✓ Comprehensive git commit created with clear message

---

## Notes for Implementation

- **Preserve original files during migration** - Don't delete appendix-i files until build succeeds with new structure
- **Test references carefully** - LaTeX label/ref system is fragile; verify each chapter file
- **Patient folder as "Case Study 1"** - This creates extensibility for future patients if needed
- **Hypothesis environment choices** - Consult `template-advisor` for fluoride-pineal hypothesis environment selection
- **Medical review requirement** - All diagnostic and treatment recommendations in protocols must be reviewed by physician before clinical use
- **Uncertainty quantification** - Ensure all hypothesis certainty assessments are explicit and justified

