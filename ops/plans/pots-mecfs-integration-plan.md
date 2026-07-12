# POTS-ME/CFS Integration Plan

**Purpose:** Systematically integrate the latest POTS (postural orthostatic tachycardia syndrome) research as it relates to ME/CFS — including prevalence data, subtyping, pathophysiology, treatment evidence, and cross-disease connections. POTS is already extensively covered in the paper (ch10 main section, ch08 OI mechanisms, ch14d cross-disease, ch14/ch14b/ch15/ch19 treatment, ch25 translational, ch29/ch30 modeling); this integration focuses on new evidence and gap-filling.

**Target chapters:**
- ch02-core-symptoms — autonomic symptom characterization in POTS context
- ch08-neurological — OI mechanisms, blood volume, vascular dysfunction
- ch10-cardiovascular — primary POTS section (subtypes, SFN, splanchnic, MCAS-POTS)
- ch14-symptom-management — OI management, lifestyle
- ch14b-action-mild-moderate — orthostatic intolerance management
- ch14d-cross-disease — comorbidity, Septad, diagnostic validity
- ch15-medications-systems — pharmacological POTS treatment
- ch17-lifestyle-interventions — non-pharmacological POTS management
- ch19-integrative-approaches — integrative POTS management
- ch25-translational-findings — research translation
- ch29-modeling — POTS/ME/CFS model integration
- ch30-modeling — mechanistic model alignment

**Pre-identified hypotheses:**
- POTS subtypes: neuropathic (SFN-mediated), hyperadrenergic (NET deficiency), hypovolemic (low blood volume) — already covered but need updated prevalence data
- GPCR autoantibody role in POTS — replication conflict (Vernino 2022 null, Germain 2025 null vs positive CellTrend studies)
- POTS-MCAS-hEDS triad — prevalence, diagnostic validity, treatment response
- POGS (Postural Orthostatic Gut Syndrome) — novel construct already integrated
- Functional vs Structural OI distinction — already integrated

## Phase 0

Plan created 2026-06-07 and reviewed to convergence.

## Phase 1

Papers found: 12 (van Campen 2024, Malik 2026, Miranda-Hurtado 2026, Seeley 2025, Kwok 2026, Hedge 2026, Marchetta 2025, Ekman 2025, Mathew 2026, Chopra 2026, Lukáčová 2025, Uppal 2026). Added to references.bib + annotated bib.

## Phase 2

Content mapped: 12 findings → 5 target chapters (ch10 primary, ch08, ch07, ch14, ch14d)

## Phase 3

Brainstorm file: `ops/brainstorms/brainstorm-pots-2026-06-07.md` — 45 ideas across 9 categories.

## Phase 3a

Subtree file: `ops/plans/hypotheses-trees/subtrees/pots.md` — 45 nodes. Root index updated.

## Phase 4

Integrated Phase 1 findings (12 papers) into:
- ch10-cardiovascular: Hedge 2026 (test-retest in limitation), van Campen 2024 (hemodynamic subtypes), Miranda-Hurtado 2026 + Malik 2026 + Seeley 2025 (CBF deficits), Marchetta 2025 + Chopra 2026 (compensatory tachycardia speculation), Ekman 2025 (SFN→GI)
- ch14d-cross-disease: Mathew 2026 (central sensitization in POTS)
- ch14-symptom-management: Kwok 2026 (midodrine meta-analysis), Uppal 2026 (patient perspectives)
- ch07-immune-dysfunction: Lukáčová 2025 (autoantibody reinforcement)

Created environments: 1 achievement (van Campen subtypes), 2 hypotheses (CBF unifying hub, compensatory tachycardia), 2 speculations (POTS central sensitization, SFN→GI POGS link), 1 limitation enhancement (Hedge test-retest), 2 clinical-finding/qualitative additions (midodrine meta-analysis, patient perspectives), 1 reinforcement edit (Lukáčová autoantibody).

Queued topics: none triggered by Gate A/B/C (all novel findings are extensions, not standalone topics requiring separate cycles).

Hypothesis registry updated: 3 new entries (compensatory tachycardia S 0.50, CBF hub H 0.50, POTS central sensitization S 0.40).

## Phase 4a

Falsifiability audit: 3 hypotheses inspected, all 3 had weak falsifiability (missing "Falsified if" clauses). Fixed with explicit refutation conditions in all 3 environments.

## Phase 4b

Retrospective adaptation: 12 matches examined, 0 adapted. All new evidence was already properly integrated into pre-existing claims. All 12 papers classified as reinforcement — no contradictions, no adaptations needed.

## Phase 4c

Cross-hypothesis compatibility audit: 35 pairwise relationships — 10 reinforcement, 18 feed-into, 0 conflict, 7 independent. No certainty adjustments triggered. File: (not retained)

## Phase 5

Build: PASS (after 8 fix-verify iterations: bib key mismatches, Typst syntax errors, pre-existing broken xrefs fixed opportunistically).

## Phase 6

Reviews converged:
- 6a (review-convergence): 2 findings, 1 fixed (broken CPETMeta cite) + known placeholders
- 6b (adversarial): 7 findings, 7 fixed (midodrine overstated, ivabradine contradiction, Ekman SFN overreach, CSI certainty inflated 0.50→0.40, van Campen trajectory caveat, Uppal framing caveat, midodrine safety understated) + 3 ambiguities flagged for author
- 6c (typst): 9 findings, 9 fixed (LaTeX→Unicode, math escapes, unclosed label fix)

## Phase 7

Changelog updated under Version 11.

## Phase 8

Commit pending.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| H1.1 | SV→ETCO2→CBF: missing link POTS↔brain fog | 1 | 0.55 | ⬜ | Core mechanistic hypothesis |
| H1.2 | HR reduction without SV support worsens CBF | 1 | 0.50 | ⬜ | Informs ivabradine/beta-blocker use |
| H1.3 | Central sensitization as distorted interoception | 2 | 0.45 | ⬜ | Mathew 2026 (67% CSI) |
| H1.4 | Test-retest variability as state-dependent signal | 1 | 0.55 | ⬜ | Hedge 2026 operationalized |
| H1.5 | CBF as unifying hub of all POTS symptoms | 1 | 0.50 | ⬜ | Malik+Miranda-Hurtado+Seeley |
| H1.6 | van Campen subtypes as trajectory waypoints | 2 | 0.40 | ⬜ | Longitudinal hypothesis |
| H1.7 | SFN→GI POTS: enteric autonomic denervation | 2 | 0.45 | ⬜ | Ekman 2025 + POGS |
| R2.1 | CBF-titrated ivabradine trial | 1 | n/a | ⬜ | Priority #1 research direction |
| R2.2 | CO2 augmentation for brain fog | 1 | n/a | ⬜ | Capnometry-guided breathing |
| R2.3 | Test-retest variability as prognostic biomarker | 2 | n/a | ⬜ | Hedge 2026 operationalized |
| R2.4 | Central sensitization × CBF fMRI+HUT | 2 | n/a | ⬜ | Mathew+Malik integration |
| R2.5 | SFN sweat testing for subtype prediction | 2 | n/a | ⬜ | Ekman+Azcue |
| R2.6 | Serial standing CBF+cognitive monitoring | 2 | n/a | ⬜ | Ecological validity |
| DR3.1 | Acetazolamide for CO2→CBF | 3 | 0.35 | ⬜ | Cerebral vasodilation |
| DR3.2 | Ivabradine+midodrine combination | 2 | 0.40 | ⬜ | HR↓ + SV↑ |
| DR3.3 | Guanfacine for CSI + PFC CBF | 3 | 0.35 | ⬜ | Dual CNS+autonomic |
| DR3.4 | Droxidopa+pyridostigmine balanced | 3 | 0.35 | ⬜ | Symp+para balance |
| DR3.5 | Tapentadol for POTS pain+CSI | 3 | 0.30 | ⬜ | NRI+MOR dual mechanism |
| SU4.1 | NaHCO3 pre-load for hypocapnia | 3 | 0.30 | ⬜ | CO2 retention |
| SU4.2 | Inhaled CO2 microbolus rescue | 3 | 0.25 | ⬜ | On-demand vasodilation |
| SU4.3 | Benfotiamine+ALA for SFN | 2 | 0.35 | ⬜ | Neuropathy-directed |
| SU4.4 | Mg glycinate/threonate for CSI | 3 | 0.30 | ⬜ | NMDA block + vasorelax |
| SU4.5 | CoQ10+L-carnitine cardiac energetics | 2 | 0.30 | ⬜ | SV improvement |
| NP5.1 | Capnometry biofeedback for CO2 | 2 | 0.35 | ⬜ | Behavioral CO2 control |
| NP5.2 | CO2-enriched compression garments | 3 | 0.20 | ⬜ | Dual mechanical+chemical |
| NP5.3 | Seated calf muscle pump training | 2 | 0.40 | ⬜ | Ultra-low entry exercise |
| NP5.4 | Vertical water immersion training | 2 | 0.45 | ⬜ | Zero-gravity orthostatic |
| NP5.5 | Auditory biofeedback sonification | 3 | 0.25 | ⬜ | Interoceptive support |
| C6.1 | Tiered POTS protocol by standing tolerance | 1 | 0.45 | ⬜ | Severity-based triage |
| C6.2 | Fludrocortisone+ORS volume expansion | 1 | 0.50 | ⬜ | Structured hypovolemia Rx |
| C6.3 | Three-pillar SV-sparing management | 2 | 0.40 | ⬜ | Compression+midodrine+ivabradine |
| M7.1 | CO2-mediated CBF coupling ODE | 2 | 0.55 | ⬜ | Add ETCO2 variable |
| M7.2 | SV-HR coupling regime ODE | 2 | 0.50 | ⬜ | Compensatory→pathological |
| M7.3 | CSI-baroreflex coupling ODE | 3 | 0.35 | ⬜ | Interoceptive gain |
| M7.4 | SFN-autonomic coupling ODE | 2 | 0.45 | ⬜ | IENFD structural parameter |
| M7.5 | Multi-compartment CBF ODE | 3 | 0.40 | ⬜ | Regional perfusion |
| CD8.1 | POTS ⇔ HFpEF low-SV parallel | 3 | 0.35 | ⬜ | SGLT2i? |
| CD8.2 | POTS ⇔ SCI denervation parallel | 3 | 0.40 | ⬜ | FES, neurogenic OH |
| CD8.3 | POTS ⇔ OSA nocturnal stress | 3 | 0.30 | ⬜ | CPAP effect? |
| CD8.4 | POTS ⇔ migraine cerebrovascular | 3 | 0.30 | ⬜ | CGRP antagonists |
| D9.1 | SV-CO2-CBF triad orthostatic index | 1 | 0.55 | ⬜ | 3D subtyping |
| D9.2 | CO2 reactivity index biomarker | 1 | 0.60 | ⬜ | Cerebrovascular sensitivity |
| D9.3 | HR increment CV autonomic stability index | 2 | 0.50 | ⬜ | Hedge+ASI |
| D9.4 | Post-standing I-FABP/LPS POGS test | 2 | 0.35 | ⬜ | Gut permeability challenge |
| D9.5 | Glycocalyx shedding markers in POTS | 2 | 0.45 | ⬜ | Syndecan-1 ELISA |

## Notes

- POTS already covered in ch10 §POTS (subtypes, SFN, splanchnic, MCAS-POTS, POGS)
- GPCR autoantibody conflict well-documented in ch07 (Vernino null, Germain null)
- Dallas/Leeds protocol integrated via land-rowing topic
- beyond-pots-subtypes.md is a stub in hypotheses-trees — this broader topic should feed into its population
- POTS prevalence post-COVID (Wang 36%) already cited in ch10
- Kulin 2026 POTS comorbidities meta-analysis already in annotated bib
- Boris 2026 telemedicine POTS clinic already in annotated bib
- Blitshteyn 2026 POTS menopause already in annotated bib
- Yao 2025 POTS/HSD/MCAS triad already in annotated bib
- Moak 2024 SFN in pediatric POTS already in annotated bib
- Fu/Levine Dallas protocol already in annotated bib + ch17
- Two queued child topics from myboussole: pots-prevalence-wang-2026, pots-mcas-savigamin-2026
