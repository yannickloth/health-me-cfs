# Integration Plan: Experimental Hypoxia Probe — Virtual Hypoxia & Brainstem Volume in ME/CFS

**Purpose:** Integrate a new proof-of-concept multimodal MRI study that probes ME/CFS brain physiology under experimentally induced hypoxia, testing the "virtual hypoxia" hypothesis (elevated baseline thalamic lactate, reduced brainstem volume, blunted metabolic reactivity). Contrast with Thapaliya et al. 2023 (which reported *larger* brainstem volumes), resolving a measurement direction contradiction.

**Source papers:**
- Vienna preprint (Bader et al., 2026.08.10.26359935v1, medRxiv): Experimental hypoxia to probe neuro-metabolic and vascular dysregulation in ME/CFS — 26 patients / 27 controls; ASL CBF + 1H-MRSI + structural MRI under normoxia + 2 hypoxic challenges (SpO2 ~87%).
- Thapaliya et al. 2023 (Frontiers in Neuroscience, fnins-17-1125208): Brainstem volume changes in ME/CFS and long COVID (reported LARGER brainstem volumes).

**Target chapters:** ch12 (neurovascular/cerebral blood flow), ch06 (metabolism/bioenergetics), ch20 (biomarkers — imaging), ch13 (cross-disease), hypothesis registry, ch30 cascade sections (sec-02 mitochondrial, sec-04 neuroinflammatory/brainstem)

**Pre-identified hypotheses:**
- "Virtual hypoxia" — elevated resting brain lactate despite normal arterial O2, consistent with intrinsic mitochondrial/bioenergetic inefficiency (glycolytic shift, oxidative stress)
- Blunted metabolic reactivity: controls raise thalamic lactate under hypoxia, ME/CFS patients do not (already elevated at baseline) → impaired metabolic flexibility
- Reduced brainstem volume (incl. pons) in ME/CFS — contrasts Thapaliya 2023 (larger) → direction inconsistent across cohorts → open question
- Preserved gross CBF reactivity but greater inter-individual variability in the initial (H1) CBF response → dysregulated cerebrovascular adaptation
- Altered thalamic tNAA/tCr–CBF coupling → impaired cerebral metabolic flexibility

**Notes:** This topic is distinct from the completed hypoxia-altitude-hif1a plan (which addressed altitude O2-sensing adaptation / HIF1α; rows there all ✅ done). New elements: experimental hypoxia as a *probe*, virtual-hypoxia lactate finding, structural brainstem contrast. Related existing threads in hypothesis registry: lactate/glycolytic shift, brainstem neuroinflammation (ch08), glymphatic clearance, HIF-2 post-viral.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| H2.1 | Virtual hypoxia: elevated resting brain lactate = bioenergetic inefficiency | core | 0.45 | 🔵 in progress | Thalamic Lac/tCr elevated at baseline (β=0.035, p=0.021) |
| H2.2 | Blunted metabolic reactivity to hypoxia | supporting | 0.40 | ⬜ pending | Patients lack hypoxia-induced lactate rise; controls show it |
| H2.3 | Reduced brainstem volume (contrast Thapaliya) | core | 0.45 | ⬜ pending | β=-0.10% eTIV, p=0.013; FDR 0.039 |
| H2.4 | Cerebrovascular adaptation variability | supporting | 0.35 | ⬜ pending | H1 var ratio 2.27–6.94; absent at H2 |
| H2.5 | Altered thalamic tNAA/tCr–CBF coupling | speculation | 0.35 | ⬜ pending | Exploratory network analysis |
| B1.1 | Virtual hypoxia set-point two-compartment model | hypothesis | 0.40 | ⬜ pending | origin: brainstorm |
| B1.2 | "Stuck high" blunted metabolic reactivity | hypothesis | 0.40 | ⬜ pending | origin: brainstorm |
| B1.3 | Hypoxia-response variability as loss of homeostatic tuning | speculation | 0.35 | ⬜ pending | origin: brainstorm |
| B1.4 | tNAA–CBF inverse coupling as bioenergetic-demand breach | speculation | 0.35 | ⬜ pending | origin: brainstorm |
| B2.1 | Single-cohort harmonized multimodal replication | research | 0.65 | ⬜ pending | origin: brainstorm; resolves brainstem + lactate |
| B2.2 | Longitudinal brain-lactate + symptom mapping across PEM | research | 0.50 | ⬜ pending | origin: brainstorm |
| B2.3 | Hypercapnia (CO2) cerebrovascular-reactivity study | research | 0.55 | ⬜ pending | origin: brainstorm; fills 0-hit literature gap |
| B3.1 | Thalamic Lac/tCr as PD biomarker for HBOT/mito trials | drug | 0.45 | ⏭️ queued/deferred | requires full drug-interaction safety gate; not applicable to this mechanistic topic |
| B3.2 | Metabolic-substrate modulators (ketone/MCT/PPAR) | drug | 0.30 | ⏭️ queued/deferred | requires full drug-interaction safety gate; not applicable to this mechanistic topic |
| B4.1 | Mitochondrial cofactor support w/ brain-lactate readout | supplement | 0.35 | ⏭️ queued/deferred | supplement category gated; not applicable to this mechanistic topic |
| B4.2 | Antioxidant targeting lactate–glutathione axis | supplement | 0.30 | ⏭️ queued/deferred | supplement category gated; not applicable to this mechanistic topic |
| B5.1 | Pacing informed by metabolic-flexibility marker | non-pharm | 0.35 | ⏭️ queued/deferred | non-pharmacological intervention gated; not applicable to this mechanistic topic |
| B5.2 | Slow-breathing / CO2 cerebrovascular modulation | non-pharm | 0.25 | ⏭️ queued/deferred | non-pharmacological intervention gated; not applicable to this mechanistic topic |
| B6.1 | Cost-accessible HBOT stratification pipeline | combination | 0.40 | ⏭️ queued/deferred | combination/access pipeline gated; not applicable to this mechanistic topic |
| B6.2 | Community metabolic-flexibility screening ME/CFS vs LC | combination | 0.35 | ⏭️ queued/deferred | combination/access pipeline gated; not applicable to this mechanistic topic |
| B7.1 | Brain-lactate ceiling/saturation term in bioenergetics ODE | model | 0.40 | ⏭️ queued/deferred | model-extension; deferred to formalization pipeline, not chapter prose |
| B7.2 | Brainstem-volume direction as two-compartment DAG node | model | 0.40 | ⏭️ queued/deferred | model-extension; deferred to formalization pipeline, not chapter prose |
| B7.3 | CBF variability as stochastic term in cerebrovascular model | model | 0.35 | ⏭️ queued/deferred | model-extension; deferred to formalization pipeline, not chapter prose |
| B8.1 | MS virtual-hypoxia template → ME/CFS bridge | cross-disease | 0.45 | ✅ done | integrated as #speculation in ch16 (@spec:ms-virtual-hypoxia-bridge) |
| B8.2 | Gulf War Illness brainstem-atrophy bridge | cross-disease | 0.40 | ⬜ pending | origin: brainstorm |
| B8.3 | Long COVID overlap shared virtual-hypoxia mechanism | cross-disease | 0.45 | ✅ done | integrated as #speculation in ch16 (@spec:long-covid-virtual-hypoxia-trajectory) |
| B9.1 | Thalamic Lac/tCr as stratification biomarker | biomarker | 0.40 | ✅ done | integrated as #speculation in ch35 (@spec:thalamic-lactate-stratification); cert corrected 0.45→0.40 (Phase 10) |
| B9.2 | Peripheral proxy for brain lactate | biomarker | 0.30 | ⬜ pending | origin: brainstorm |
| B9.3 | CBF-response variability index as diagnostic/severity marker | biomarker | 0.30 | ⬜ pending | origin: brainstorm |
| B10.1 | Method artifact in blunted-lactate finding (preprint, single site) | critical | n/a | ⬜ pending | origin: brainstorm |
| B10.2 | Brain lactate = generic stress marker, not ME/CFS-specific | critical | n/a | ⬜ pending | origin: brainstorm |
| B10.3 | Causal-direction reversal (brainstem change precedes, not caused by) | critical | n/a | ⬜ pending | origin: brainstorm |
| B11.1 | Null: virtual-hypoxia has no independent role (lactate bystander) | critical | n/a | ⬜ pending | origin: brainstorm |
| B11.2 | Weaker null: mechanism real but not actionable | critical | n/a | ⬜ pending | origin: brainstorm |
| B12.1 | Single-preprint, single-site, unharmonized MRS validity threat | critical | n/a | ⬜ pending | origin: brainstorm |
| B12.2 | Cohort confounds: severity, comorbidity, medication, deconditioning | critical | n/a | ⬜ pending | origin: brainstorm |
| B12.3 | Cohort-overlap + multiple-comparison concerns | critical | n/a | ⬜ pending | origin: brainstorm |

**Phase 6 (retrospective adaptation):** 1 match adapted (reinforcement — Bader2026Hypoxia citation added to ch20 glycolytic-shift claim); 0 bumps (incoming cert < 0.60 floor); 0 contradictions needing balance (brainstem direction covered as open-question). Synonym map: tmp/synonym-map-experimental-hypoxia-virtual-hypoxia-brainstem.md.
**Phase 7 (cross-hypothesis compatibility):** 22 pairs audited (7 reinforcement, 7 weak feed-into, 0 conflict, 8 independent); NO certainty adjustments justified (all new hypotheses rest on single unreplicated preprint below bump floor); bump log remains empty. Audit: tmp/compat-audit-experimental-hypoxia-virtual-hypoxia-brainstem-2026-08-14.md.

## Certainty bump log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|---|---|---|---|---|---|
| (empty — no certainty bumps applied in Phase 6/7) | | | | | Incoming certainty 0.40–0.55 (citation-only band; Evidence Quality Floor requires ≥0.60 for bumps). Phase 6: citation insertion only (Bader2026Hypoxia added to ch20 glycolytic-shift claim). Phase 7: no bumps proposed. |

## Active Caps (set by Phase 2 — decision: PROCEED)

| Cap | Value |
|-----|-------|
| Environments allowed | all |
| #hypothesis-box / #fhypothesis | allowed (certainty ≥0.45) |
| Brainstorm categories | all 1–12 |
| Certainty bumps | per normal rules |
| Phase 9 flags | none pre-fired |

**Phase 2 synthesis:** `tmp/synthesis-experimental-hypoxia-virtual-hypoxia-brainstem-2026-08-14.md`
**Decision rationale:** 10 papers discounted certainty ≥0.40; not uniformly null; 0 papers below 0.40. Brainstem volume direction is a FUNDAMENTAL contradiction (Vienna reduced 0.40 vs Griffith larger 0.55, Δ=0.15 boundary) → framed as `#open-question`, not weighted toward either.

## Phase 12 — Plan Record (integration summary)

**Topic slug:** experimental-hypoxia-virtual-hypoxia-brainstem
**Decision:** PROCEED

**Environments added (6):**
- `spec:virtual-hypoxia-brain-lactate` (ch07 sec-19 lactate)
- `spec:cbf-reactivity-variability` (ch09 sec-05, new subsec)
- `oq:brainstem-volume-direction` (ch09 sec-01)
- `spec:ms-virtual-hypoxia-bridge` + `spec:long-covid-virtual-hypoxia-trajectory` (ch16)
- `spec:thalamic-lactate-stratification` (ch35)
- `syn:experimental-hypoxia-virtual-hypoxia-brainstem-model` (ch07 sec-19, Phase 10a)
- Phase 10b propagation: ch19 CNS Energy Crisis section

**Chapters touched:** ch07, ch09 (×2), ch16, ch19, ch20 (citation), ch35; hypothesis registry (6 entries)
**Bib:** 10 new entries (Bader2026Hypoxia, Thapaliya2023Brainstem, Barnden2018T1Brainstem, Zhang2020GulfWarBrainstem, Trapp2009VirtualHypoxia, Mahad2015PathologicalMS, Biswal2011CBFASL, Staud2018TaskCBF, He2013CerebralVascularControl, Hadanny2024HBOTLongCovid); appendix-h annotated (10); glossary +3 terms

**Key finding + why it matters:** A proof-of-concept MRI study exposed ME/CFS to controlled hypoxia and found elevated resting brain lactate with a blunted metabolic response, reduced brainstem volume (direction unresolved vs Thapaliya), and preserved-but-variable CBF reactivity. This supports a "virtual hypoxia" / impaired neuro-metabolic adaptive capacity in ME/CFS and gives researchers a mechanism-proximal brain readout (thalamic lactate) for future stratification trials. Preliminary (single preprint, not peer-reviewed).

**Phase 9 quality flags:** NONE (no BLOAT/WEAK-EVIDENCE/CLINICAL-RISK/G-UNSUSTAINED)
**Phase 2 clinical relevance:** MEDIUM — mechanistic context + candidate stratification biomarker; not directly actionable for clinicians yet.

**Concurrency note:** Parallel `adult-red-flags-safety-netting-protocol` cycle active in same tree. This cycle's content and the parallel cycle's ch23 content coexist. Phase 13 commit must be scoped by explicit file list (exclude ch23-* and agentfeed/).

## Phase Ledger (Phase 12.5 Completion Gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 Plan Maintenance | RAN | plan created + validated; no deferred reactivation |
| 1 Literature Research | RAN | search-log + 10 bib entries + appendix-h + scrape-registry |
| 2 Evidence Synthesis + Decision | RAN | tmp/synthesis-...-2026-08-14.md; PROCEED |
| 3 Content Development | RAN | 3 envs (ch07/ch09×2) + 3 registry rows |
| 3a Intermediate Build Check | RAN | nix build PASS (multiple) |
| 3b Pre-Integration Safety Gate | RAN | tmp/safety-gate-...-2026-08-14.md (bypass: mechanistic only; severity=unknown added) |
| 3.5 Consequences Verification | RAN | 3/3 Phase-3 envs have *Consequence:* |
| 4 Creative Brainstorming | RAN | ops/brainstorms/brainstorm-...-2026-08-14.md (32 ideas) |
| 4a Hypothesis Tree Update | RAN | subtrees/experimental-hypoxia-...-brainstem.md + root index |
| 5 Tiered Integration | RAN | 3 more envs (ch16×2, ch35); treatment/model ideas queued ⏭️; no ch33 cascade (duplicates existing) |
| 5b Intermediate Build Check | RAN | nix build PASS (post-staging) |
| 5d Pathway-Drug Trace | LEGIT-SKIP | no standalone cascade created — duplicates existing sec-12/PDH content; cited inline |
| 5c Medication Differential | LEGIT-SKIP | no medication topic; no target mechanism for differential analysis |
| 5a Falsifiability Sweep | RAN | falsifiability-auditor: 6/6 envs + registry PASS; fixed ms-bridge cert inconsistency |
| 5z Glossary Review | RAN | +3 terms (virtual hypoxia, ASL, Lac/tCr); flake glossary-test PASS |
| 6 Retrospective Adaptation | RAN | 1 reinforcement citation (Bader→ch20); 0 bumps (<0.60 floor); synonym-map written |
| 7 Cross-Hypothesis Compatibility | RAN | 22 pairs audited; 0 bumps justified; tmp/compat-audit-... |
| 8 Build Verification | RAN | nix build exit 0 + flake check 5/5 PASS (after concurrency resolution) |
| 9 Integration Quality Assessment | RAN | metrics in synthesis file; NO flags |
| 10 Cross-Chapter Coherence | RAN | 7 files, 4 findings; 1 fix-now (ch35 cert 0.45→0.40) fixed; tmp/coherence-audit-... |
| 10a High-Level Synthesis | RAN | syn:experimental-hypoxia-virtual-hypoxia-brainstem-model in ch07 |
| 10b Strategic-Framing Propagation | RAN | light caveated propagation to ch19 CNS Energy Crisis; abstract/guide unchanged (downstream/non-actionable) |
| 11 Review to Convergence | RAN | 5 personas, 7 findings fixed round 1, round 2 = zero (CONVERGED) |
| 12 Plan Record | RAN | Phase 12 section written (no changelog.typ) |
| 13 Commit | RAN | be4cf154 — 21 files scoped; parallel ch23 left for owning session |

**Verification:** build 0 errors, flake 5/5 PASS; all 6 envs + synthesis have *Consequence:*; all 6 registry entries present with falsifiability; all 10 bib keys resolve.
**States:** 26 RAN, 2 LEGIT-SKIP (5d, 5c), 0 WAIVED, 1 PENDING (Phase 13), 0 OMISSION.
