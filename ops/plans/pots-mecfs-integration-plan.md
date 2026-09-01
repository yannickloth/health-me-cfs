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

## pots-consensus augmentation (2026-09-01)

Augmentation cycle `/integrate-topic pots-consensus` — Sivakoti et al. 2026 international Delphi consensus on POTS & non-POTS dysautonomia (PMID 42665152). Reuses this plan; does not create a new plan file.

### Phase 0
Existing plan located and reused. Working tree MIXED/CONCURRENT (unrelated WIP present). Phase 0 deferral/queue scan: no deferred/queued topic covers this consensus paper; not a recursive invocation.

### Phase 1
6 NEW bib keys in `bib/autonomic-cardiovascular.bib` (research_stream = pots-consensus): Sivakoti2026POTSConsensus (0.44), Parsaik2013OInoTachycardia (0.48), ChungRaj2026POTSReview (0.44), Uppal2026IvabradinePropranolol (0.48), Mauriello2026POTSPediatric (0.32), Boris2020HRnotPredictive (0.44). Annotated bib + search-log + literature-summary written. 16 existing-corpus POTS papers skipped as already-covered. Cohort-overlap: Parsaik 2013 (Mayo) and Boris 2020 (CHOP) distinct registries; Uppal 2026 RCT same program as existing Uppal 2026 qualitative (distinct PMID).

### Phase 2
Decision: **PROCEED** (5/6 papers discounted ≥0.44; 1/6 <0.40; not null; highest discounted 0.48). Topic is a diagnostic/recognition construct, not a new mechanism — integration favors `#achievement`/`#clinical-finding`/Phase 6 reinforcement over new `#hypothesis-box`. Clinical relevance: HIGH (not severity-stratified). Synthesis: `tmp/synthesis-pots-consensus-2026-09-01.md`.

#### Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed (none proposed — no new mechanism)
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

### Phase 3
New content in ch05:
- `cf:pots-hr-threshold-nonpredictive` (`#clinical-finding`) — HR threshold non-predictive; non-POTS dysautonomia population undiagnosed. Included in `sec-08-differential-diagnosis.typ` after "POTS as Primary".
- `lim:pots-threshold-recognition-limits` (`#limitation`) — critical-category balancing (C10.1 over-diagnosis risk + C11.1 null; C12.1 evidence quality).
- Cross-ref note added to `req-orthostatic-testing` (ch05 sec-06) → `@sec:comorbidity-primary`.
Files: cf-pots-hr-threshold-nonpredictive.typ, lim-pots-threshold-recognition-limits.typ, sec-08-differential-diagnosis.typ, req-orthostatic-testing.typ. No new hypothesis/speculation/prediction envs (recognition claim integrated as clinical-finding+limitation per C12.1).

### Phase 3a
Build PASS (0 errors) — fixed `$geq$`→`$gt.eq 40$` Typst math symbol in cf file.

### Phase 3b
`tmp/safety-gate-pots-consensus.md` — non-treatment topic; only item 2 (severity) applies; severity stated; 0 blocked.

### Phase 3.5
Both new envs have `*Consequence:*` fields (verified by falsifiability-auditor + manual). No banned phrases.

### Phase 4
`scientific-insight-generator` — `ops/brainstorms/brainstorm-pots-consensus-2026-09-01.md`, 19 ideas across all 12 categories (3 novel hypotheses, 3 research, 1 drug, 1 supplement, 1 non-pharm, 1 combos, 1 model, 2 cross-disease, 3 diagnostic, 3 critical). Tracked in plan table.

### Phase 4a
`subtrees/pots.md` appended 19 nodes (total 64); root index updated (2026-09-01, 64, 🔵 in progress).

### Phase 5
Certainty reassessment done (P1.1 0.45→0.42 effective; others held/reduced). Triage:
- P1.1 `⏭️ covered-by cf:pots-hr-threshold-nonpredictive` (spectrum note added to cf body)
- Critical C10.1/C11.1/C12.1 `✅` → integrated into `lim:pots-threshold-recognition-limits`
- All other constructive ideas `↩️` tree-only (parked; avoids BLOAT, respects C12.1 evidence-quality message)
ch30 tier: **None** (diagnostic-recognition content, no mechanistic cascade).
Phase 5d LEGIT-SKIP (no mechanistic cascade). Phase 5c RAN (ch33 sec-09 ivabradine + propranolol subsec updated with Uppal 2026 RCT differential evidence — HR response dissociates from symptom response, qualifying the differential inferences).

### Phase 5b
Build PASS (0 errors).

### Phase 5a
`falsifiability-auditor` (plugin subagent). Falsifiability gate N/A (no hypothesis/speculation/prediction envs created — LEGIT non-application). 5 bib keys resolve case-exact. 5 claims verified against source abstracts (Sivakoti, Parsaik, Boris, ChungRaj, Uppal). Both `*Consequence:*` present. 0 discrepancies.

### Phase 5z
Glossary entries added: `non-POTS dysautonomia` (EN/FR/DE). glossary-test PASS.

### Phase 6
`tmp/synonym-map-pots-consensus.md` created. Incoming discounted certainty all <0.60 → citation insertions only, no certainty bumps.
- ch14d-cross-disease.typ: reinforced existing `POTS Diagnostic Validity` limitation with Sivakoti 2026 + Boris 2020 citations (supports the subthreshold-recognition claim).
- hyp-multi-domain-cooccurrence: overlap noted, no action (existing Newton 2007 citation adequate; consensus adds no ME/CFS-specific prevalence).
Certainty Bump Log: empty (0 bumps — correctly, all incoming <0.60).

### Phase 10
`tmp/coherence-audit-pots-consensus-2026-09-01.md` — 0 inconsistencies across ch05 (sec-06, sec-08) and ch14d. Certainty/terminology/cross-ref/narrative/consequence all consistent.

### Phase 10a
`#synthesis` `syn:pots-consensus-recognition` added to ch05 sec-08 (cross-refs @cf:pots-hr-threshold-nonpredictive + @lim:pots-threshold-recognition-limits; states open question; includes *Consequence:*). Auto-added per standing default (≥2 related envs in single chapter forming convergent argument). Build PASS.

### Phase 10b
LEGIT-SKIP — no framing propagation needed. Synthesis is diagnostic-recognition/downstream (refines orthostatic assessment, does not change trigger-vs-amplifier, genetic architecture, or ME/CFS causal hierarchy). Content correctly placed in ch05 diagnostic chapter, not framing layers.

### Phase 11
Full tier (multi-chapter + clinical content). CONVERGED.
- 11a review-convergence: 2 rounds, 0 findings.
- 11b review-adversarial (6 personas): findings on new content fixed (Boris band gloss, certainty reconciliation, Uppal made load-bearing, clinical decision path added, "POTS as Primary" contradiction resolved, severity/deconditioning discriminator, ch14d balancing caveat, titles softened, consensus framing tempered, category distinction added). Report: `tmp/review-adversarial-pots-consensus.md`. 0 HIGH/CRITICAL remain on new content.
- 11c review-typst (typst-xref-checker): clean — 0 CRITICAL/HIGH/MEDIUM; 1 LOW pre-existing style note (sec-08 `$gt.eq$30` spacing, not this cycle).
- Build PASS after fixes. SLOW-CONVERGENCE: no (converged cleanly).

### Phase 12
Integration summary (no changelog.typ — recorded here per pipeline):
- Topic slug: pots-consensus; decision: PROCEED.
- Environments added: `cf:pots-hr-threshold-nonpredictive` (clinical-finding), `lim:pots-threshold-recognition-limits` (limitation), `syn:pots-consensus-recognition` (synthesis) — all in ch05 sec-08. Cross-ref note in req-orthostatic-testing (ch05 sec-06); reinforcement sentence in ch14d POTS Diagnostic Validity limitation.
- Chapters touched: ch05 (sec-06, sec-08), ch14d (cross-disease). Bib: 6 entries in autonomic-cardiovascular.bib. Registry: no new hypothesis/speculation/prediction rows (recognition claim integrated as clinical-finding+limitation). Glossary: 1 entry (non-POTS dysautonomia, EN/FR/DE).
- Key finding + why it matters: The POTS HR-rise threshold does not reliably predict symptom burden; a "non-POTS dysautonomia" population below it may be under-recognized in ME/CFS, but the claim is consensus-and-single-center and not yet validated — recognize clinically, do not loosen the diagnostic threshold.
- Phase 9 quality flags: NONE.
- Clinical relevance: HIGH (not severity-stratified).
- Driving source: Sivakoti 2026 consensus (PMID 42665152) integrated. No anecdote to flag.

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

### pots-consensus augmentation brainstorm (2026-09-01) — 19 ideas, all 12 categories

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| P1.1 | Subthreshold dysautonomia = same spectrum, not separate entity | 1 | 0.45 | ⏭️ | covered-by cf:pots-hr-threshold-nonpredictive (spectrum note added) |
| P1.2 | HR threshold as selection/ascertainment bias | 1 | 0.40 | ↩️ | tree-only — sampling hypothesis, no direct ME/CFS data |
| P1.3 | Subthreshold may be less-compensated, worse CBF | 2 | 0.35 | ↩️ | tree-only — speculative, imported CBF angle |
| R2.1 | Prospective outcome study of subthreshold dysautonomia | 1 | n/a | ↩️ | tree-only — research proposal, park for future cycle |
| R2.2 | Multi-center threshold-free classification validation | 1 | n/a | ↩️ | tree-only — research proposal |
| R2.3 | HR-threshold inclusion bias in ME/CFS research | 1 | n/a | ↩️ | tree-only — research proposal |
| DR3.1 | Same drugs as response-based diagnostic probe | 2 | 0.30 | ↩️ | tree-only — off-label, subthreshold evidence absent |
| SU4.1 | Salt/volume as threshold-independent first-line probe | 2 | 0.35 | ↩️ | tree-only — overlaps corpus C6.2 ORS; no subthreshold data |
| NP5.1 | Compression/upright access for subthreshold patients | 2 | 0.40 | ↩️ | tree-only — general physiology, access-gated |
| C6.1 | Threshold-free diagnostic-and-treatment pathway | 1 | n/a | ↩️ | tree-only — framework proposal, needs validation |
| M7.1 | Continuous HR-rise axis in orthostatic model | 2 | 0.35 | ↩️ | tree-only — model extension, no data |
| CD8.1 | Long-COVID ⇔ ME/CFS subthreshold recognition bridge | 3 | 0.30 | ↩️ | tree-only — cross-disease translation |
| CD8.2 | IST ⇔ ME/CFS mirror-image threshold problem | 3 | 0.25 | ↩️ | tree-only — differential clarification |
| D9.1 | Orthostatic CBF drop as threshold-free index | 1 | 0.35 | ↩️ | tree-only — overlaps corpus D9.x CBF indices |
| D9.2 | Composite threshold-free dysautonomia score | 2 | 0.30 | ↩️ | tree-only — composite unvalidated |
| D9.3 | Subjective-measurable discrepancy as recognition signal | 2 | 0.30 | ↩️ | tree-only — connects corpus discrepancy work |
| C10.1 | Over-diagnosis / dilution risk (critical) | crit | 0.30 | ✅ | integrated into lim:pots-threshold-recognition-limits |
| C11.1 | Null: label may carry no prognostic/therapeutic meaning | crit | 0.30 | ✅ | integrated into lim:pots-threshold-recognition-limits |
| C12.1 | Consensus/single-center evidence-quality concern | crit | n/a | ✅ | documented in cf + lim (certainty 0.44 rationale) |

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

## Phase Ledger (pots-consensus cycle, Phase 12.5)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | existing plan reused; augmentation section added; validated |
| 1 | RAN | 6 bib keys in autonomic-cardiovascular.bib; search-log + lit-summary on disk |
| 2 | RAN | tmp/synthesis-pots-consensus-2026-09-01.md; PROCEED; Active Caps written |
| 3 | RAN | cf + lim envs in ch05 sec-08; req cross-ref; no hyp/spec/pred envs |
| 3a | RAN | build PASS |
| 3b | RAN | tmp/safety-gate-pots-consensus.md (non-treatment; item 2 only) |
| 3.5 | RAN | cf/lim consequence fields present |
| 4 | RAN | ops/brainstorms/brainstorm-pots-consensus-2026-09-01.md (19 ideas) |
| 4a | RAN | subtrees/pots.md +19 nodes (64); root index updated |
| 5 | RAN | P1.1 covered-by; C10/11/12 integrated; 15 tree-only; ch30 None |
| 5b | RAN | build PASS |
| 5d | LEGIT-SKIP | no mechanistic cascade (diagnostic-recognition topic) |
| 5c | RAN | ch33 sec-09 ivabradine + propranolol subsec updated with Uppal 2026 RCT differential evidence (HR response ≠ symptom proxy); build PASS |
| 5a | RAN | falsifiability-auditor; gate N/A (no hyp/spec/pred envs); 5 keys verified |
| 5z | RAN | glossary non-POTS dysautonomia EN/FR/DE; glossary-test PASS |
| 6 | RAN | synonym-map; 1 citation insertion (ch14d); 0 bumps |
| 7 | RAN | zero mechanism overlap (guard); compat-audit written; 0 bumps |
| 8 | RAN | build PASS; section/qmd-label/typst-source audits PASS; blog-audit FAIL pre-existing/unrelated |
| 9 | RAN | quality flags NONE |
| 10 | RAN | coherence-audit 0 inconsistencies |
| 10a | RAN | syn:pots-consensus-recognition added; build PASS |
| 10b | LEGIT-SKIP | no framing implication (diagnostic-recognition/downstream) |
| 11 | RAN | Full tier; 11a/11b/11c converged; build PASS |
| 12 | RAN | plan-record summary written |
| 12.5 | RAN | this ledger |
| 13 | pending | commit |

RAN: 23 | LEGIT-SKIP: 2 (5d, 10b) | WAIVED: 0 | OMISSION: 0

Independent spot-checks:
- hypothesis registry updated if new hyp/spec/pred/oq added: N/A — none added (recognition claim integrated as clinical-finding+limitation)
- falsifiability on new #hypothesis-box/#speculation: N/A — none added
- *Consequence:* on new envs: cf ✓, lim ✓, syn ✓
- bib keys resolve (case-exact): all 5 ✓
- build: PASS
