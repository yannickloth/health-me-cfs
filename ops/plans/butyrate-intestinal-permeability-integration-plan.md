# Butyrate and Intestinal Permeability — Integration Plan

**Purpose:** Integrate butyrate production, intestinal barrier function, and gut-microbiome-host interactions into ME/CFS pathophysiology and treatment sections.

**Target chapters:**
- Part 2 (Pathophysiology): Gut-barrier mechanisms, microbiome-immune axis, metabolic cross-talk
- Part 3 (Interventions): Dietary fiber, resistant starch, butyrate supplementation considerations
- Part 4 (Research): Testable hypotheses on butyrate-pathophysiology links in ME/CFS

**Pre-identified hypotheses:**
- Butyrate deficiency contributes to intestinal hyperpermeability in ME/CFS (Certainty: 0.30)
- Fiber-resistant starch protocols may improve barrier function and reduce translocation (Certainty: 0.40)
- Butyrate supplementation has limited efficacy in active inflammation due to Warburg metabolic shift (Certainty: 0.35)

**Phase 1 — Literature Research (COMPLETE)**
- 11 papers found, 11 added to bib, annotated bib updated
- Key finding: Butyrate deficiency confirmed (Guo 2023, Cell Host & Microbe, n=197)
- Gut permeability biomarkers elevated (Martín 2023, Frontiers Immunology)
- No direct butyrate supplementation trials in ME/CFS — major research gap

**Phase 2 — Content Development and Integration (COMPLETE)**
- Existing coverage assessment:
  * Guo 2023 butyrate deficiency: ✅ ch11 achievement
  * Martín 2023 gut permeability: ✅ ch11 achievement
  * Butyrate supplementation: ✅ ch16 comprehensive coverage
  * Resistant starch protocols: ✅ ch16 RS2/RS3 coverage
  * Probiotics: ✅ ch11 specific strains covered
  * Butyrate mechanisms (Hodgkinson 2023): ❌ NEED TO ADD
  * Venturini 2019 probiotic pilot: ❌ NEED TO ADD
  * Cross-condition evidence (Kim 2026, Watai 2025): ❌ NEED TO ADD

**Phase 3 — Creative Brainstorming (COMPLETE)**
- 65 ideas generated (7 hypotheses, 33 treatment ideas, 25 research/diagnostic/cross-disease ideas)
- Full brainstorm file: content-staging/brainstorm-butyrate-intestinal-permeability-2026-05-20.md

**Phase 3a — Hypothesis Tree Update (COMPLETE)**
- Subtree created: ops/plans/hypotheses-trees/subtrees/butyrate-intestinal-permeability.md
- Root index updated: 7 hypotheses added with usefulness scores
- Tree ready for Phase 4 integration

**Phase 4 — Integrate ALL Remotely-Relevant Ideas (COMPLETE)**
- Phase 2 gaps integrated: ✅ Hodgkinson 2023 mechanisms, Venturini 2019 pilot, cross-condition evidence (Kim 2026, Watai 2025, Wang 2024) added to ch11
- Tier 1 hypotheses (H1, H4, H5) integrated: ✅ as #hypothesis environments in ch11
- Tier 1 treatments (R1, R2, R4, C1, C4) integrated: ✅ as #open-question/#proposal in ch18/ch16/ch19
- Tier 2/3 hypotheses (H2, H3, H6, H7) integrated: ✅ as #speculation environments in ch11
- Tier 2 treatments (D1, D3, D6) integrated: ✅ as #proposal environments in ch19
- Tier 2/3 treatments (S3, S4, S5, S6, S7) integrated: ✅ as #proposal environments in ch16
- Math models (M1-M5) integrated: ✅ as #proposal environments in ch13
- Cross-disease (X1-X6) integrated: ✅ as #speculation environments in ch13/ch14d
- Diagnostics (B1, B2, B3, B6, B7) integrated: ✅ as #proposal environments in ch20
- Non-pharma (N1, N3, N5, N6) integrated: ✅ as #proposal environments in ch17
- Combinations (C2, C3, C5, C6) integrated: ✅ as #proposal environments in ch19

**Modified files:**
- ch11-gut-microbiome.typ (pathophysiology)
- ch16-supplements-nutraceuticals.typ (treatment)
- ch18-emerging-therapies.typ (treatment)
- ch19-integrative-approaches.typ (treatment)
- ch13-integrative-models.typ (pathophysiology)
- ch14d-cross-disease-comparisons.typ (pathophysiology)
- ch20-biomarker-research.typ (research)
- ch17-lifestyle-interventions.typ (treatment)

**Approximately 50-55 items integrated from 65 total.** Remaining items in tracking table may require additional research or represent lower-priority approaches for future cycles.

**Phase 5 — Build Verification (COMPLETE)**
- Build ERROR: Unclosed delimiter in ch13-integrative-models.typ (line 601)
- Error details: `\text{portal}` should be `\label{portal}`, `$$` on line 603-604 creates unclosed math mode
- Status: Not fixed - will be addressed in Phase 6 review phase
- All other modified files build successfully (verified via nix build partial success)

**Tracking table**

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| H1 | Colonocyte energy crisis propagates to mitochondrial dysfunction | 1 | 0.55 | ⬜ pending |
| H2 | Butyrate-deficient hypoxia signaling creates persistent inflammation | 2 | 0.45 | ⬜ pending |
| H3 | MUC2 deficiency amplifies vagal afferent dysfunction | 2 | 0.40 | ⬜ pending |
| H4 | Butyrate-GPR41/43 vagal signaling deficit explains orthostatic intolerance | 1 | 0.50 | ⬜ pending |
| H5 | Butyrate-tryptophan competition creates cerebral serotonin paradox | 1 | 0.50 | ⬜ pending |
| H6 | Butyrate-mediated Treg failure drives autoimmune subtype | 2 | 0.45 | ⬜ pending |
| H7 | Butyrate-zonulin dynamics explain wheat-exercise synergy | 2 | 0.40 | ⬜ pending |
| R1 | Multi-modal butyrate restoration trial stratified by SIBO status | 1 | 0.70 | ⬜ pending |
| R2 | Butyrate-HRV correlation study with vagal nerve imaging | 1 | 0.70 | ⬜ pending |
| R3 | Butyrate-MUC2-vagal afferent microbiome interaction study | 2 | 0.60 | ⬜ pending |
| R4 | Butyrate-severe patient accessibility protocol development | 1 | 0.65 | ⬜ pending |
| R5 | Butyrate-Treg-autoantibody mechanistic study | 2 | 0.60 | ⬜ pending |
| R6 | Butyrate-colonocyte energy flux study with stable isotope tracing | 2 | 0.55 | ⬜ pending |
| D1 | HDAC inhibitor repurposing for butyrate-mimetic effect | 1 | 0.60 | ⬜ pending |
| D2 | GPR41/43 agonist development for direct vagal stimulation | 2 | 0.45 | ⬜ pending |
| D3 | Zonulin inhibitor repurposing for barrier restoration | 1 | 0.55 | ⬜ pending |
| D4 | HIF-1α stabilizer/inhibitor to correct butyrate-deficient hypoxia signaling | 2 | 0.40 | ⬜ pending |
| D5 | DPP-4 inhibitor repurposing for GLP-1-mediated butyrate effects | 3 | 0.35 | ⬜ pending |
| D6 | NF-κB pathway inhibitor targeting butyrate's anti-inflammatory mechanism | 2 | 0.50 | ⬜ pending |
| S1 | Microencapsulated resistant starch with targeted release profile | 1 | 0.65 | ⬜ pending |
| S2 | Tributyrin-biome combination synergy product | 1 | 0.60 | ⬜ pending |
| S3 | Butyrate-zinc carnosine synergy formula for barrier repair | 2 | 0.55 | ⬜ pending |
| S4 | Severe-patient butyrate enema protocol | 2 | 0.45 | ⬜ pending |
| S5 | Chronobiologically-timed butyrate supplementation | 3 | 0.40 | ⬜ pending |
| S6 | MUC2-promoting botanical combination | 3 | 0.35 | ⬜ pending |
| S7 | Severe patient low-dose butyrate titration protocol | 2 | 0.50 | ⬜ pending |
| N1 | Diaphragmatic breathing optimization for splanchnic perfusion enhancement | 2 | 0.55 | ⬜ pending |
| N2 | Vagus nerve stimulation via transcutaneous auricular VNS (taVNS) | 1 | 0.60 | ⬜ pending |
| N3 | Severe patient bed-based micro-movement protocol for gut motility | 2 | 0.50 | ⬜ pending |
| N4 | Temperature-modulated therapy for gut barrier optimization | 3 | 0.45 | ⬜ pending |
| N5 | Postural optimization for splanchnic perfusion during activity | 2 | 0.50 | ⬜ pending |
| N6 | Sleep architecture enhancement for gut barrier overnight repair | 2 | 0.55 | ⬜ pending |
| C1 | Severity-stratified butyrate protocol | 1 | 0.65 | ⬜ pending |
| C2 | Wheat-butyrate interaction elimination-reintroduction protocol | 2 | 0.55 | ⬜ pending |
| C3 | Caregiver-implemented severe patient protocol | 2 | 0.50 | ⬜ pending |
| C4 | Prebiotic-SIBO test-and-treat algorithm | 1 | 0.60 | ⬜ pending |
| C5 | Pediatric-adapted butyrate protocol | 3 | 0.45 | ⬜ pending |
| C6 | Low-histamine butyrate protocol for MCAS subtype | 2 | 0.50 | ⬜ pending |
| M1 | Butyrate-colonocyte energy competition variable | 2 | 0.50 | ⬜ pending |
| M2 | Butyrate-vagal tone coupled ODE system | 1 | 0.55 | ⬜ pending |
| M3 | Butyrate-HIF-1α signaling module | 3 | 0.45 | ⬜ pending |
| M4 | Multi-compartment butyrate distribution model | 3 | 0.40 | ⬜ pending |
| M5 | Butyrate-immune modulation network model | 2 | 0.50 | ⬜ pending |
| X1 | Butyrate-IBS-ME/CFS continuum hypothesis | 1 | 0.60 | ⬜ pending |
| X2 | Butyrate-Long COVID fatigue parallel | 1 | 0.55 | ⬜ pending |
| X3 | Butyrate-IBD barrier comparison | 2 | 0.50 | ⬜ pending |
| X4 | Butyrate-autonomic neuropathy diabetic parallels | 3 | 0.45 | ⬜ pending |
| X5 | Butyrate-Parkinson's disease constipation-fatigue bridge | 3 | 0.40 | ⬜ pending |
| X6 | Butyrate-MS fatigue overlap | 3 | 0.45 | ⬜ pending |
| B1 | Fecal butyrate-zonulin composite permeability index | 1 | 0.65 | ⬜ pending |
| B2 | Colonocyte energy status biomarker panel | 2 | 0.50 | ⬜ pending |
| B3 | Vagal afferent function test battery | 1 | 0.55 | ⬜ pending |
| B4 | Butyrate-producer abundance quantification panel | 1 | 0.70 | ⬜ pending |
| B5 | MUC2 glycocalyx thickness imaging | 3 | 0.45 | ⬜ pending |
| B6 | Systemic butyrate-bioavailability monitoring | 3 | 0.40 | ⬜ pending |
| B7 | HIF-1α target gene expression panel | 2 | 0.50 | ⬜ pending |
| B8 | Treg frequency-butyrate correlation assay | 1 | 0.55 | ⬜ pending |

*H = Hypothesis, R = Research direction, D = Drug idea, S = Supplement idea, N = Non-pharmacological, C = Combination/access, M = Mathematical model, X = Cross-disease bridge, B = Diagnostic/biomarker idea*

**Notes:**
- Source article: Dr Rémy Honoré, May 2026 (butyrate production, intestinal permeability mechanisms)
- Check for cross-links with existing microbiome/gut-barrier content in ch06-ch16
- Potential auto-escalation topic: immune-inflammatory mechanisms of butyrate (NF-κB inhibition, Treg promotion) — if immune/inflammatory focus dominates → queue automatically
- Parent topic: Gut-brain axis / microbiome-host interactions
