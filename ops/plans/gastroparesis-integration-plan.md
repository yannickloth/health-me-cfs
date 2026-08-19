# Integration Plan: Gastroparesis

**Topic:** Gastroparesis and delayed gastric emptying in ME/CFS — autonomic (vagal) gastric-motility failure, its mechanistic basis (vagal/cholinergic denervation, enteric neuropathy, autonomic dysfunction), clinical presentation across severity strata, and diagnostic/therapeutic implications for an urgent severe case.

**Purpose:** Evaluate and integrate the gastroparesis literature into the ME/CFS paper — strengthening the currently minimal ch04 gastroparesis subsection with evidence-based mechanism, severity-stratified clinical guidance, diagnostic pathway, and treatment options — for an urgent severe-case need.

**Topic slug:** `gastroparesis`
**Parent topic:** root (standalone invocation, user-supplied, urgent severe case)
**Date:** 2026-08-19

## Target chapters (preliminary)

- ch04 Additional Symptoms — sec-04 GI symptoms, subsec-04 gastroparesis (primary; currently minimal)
- Part 2 pathophysiology — autonomic/vagal gastric denervation mechanisms (ch11 cardiovascular/autonomic; ch08 SFN; ch12 gut microbiome)
- Cross-disease / Long COVID overlap (ch13, ch14d) — diabetic gastroparesis, post-viral gastroparesis
- ch18 symptom-producing mechanisms — area postrema / GLP-1 gate; vagal afferent signaling
- Part 3 treatment — prokinetics (ch12 sec-05 prokinetic limitations), ch24 differential analysis if medication
- ch30 mechanistic cascade tracing — cholinergic/vagal cascade
- Part 4 — hypothesis registry
- Appendix H — annotated bibliography

## Pre-identified hypotheses (preliminary)

- Gastroparesis in ME/CFS is a manifestation of vagal cholinergic denervation / autonomic dysfunction (preliminary certainty ~0.35 — cross-disease/indirect)
- Post-viral (SARS-CoV-2 / enteroviral) gastroparesis overlaps mechanistically with ME/CFS GI dysfunction (preliminary certainty ~0.30)
- Delayed gastric emptying is under-recognized in severe/very-severe ME/CFS and contributes to nutritional failure, PEM, and symptom burden (preliminary certainty ~0.40)
- Prokinetic and anti-nausea interventions address a real, distinct autonomic deficit (preliminary certainty ~0.30)

## Notes

- Standalone invocation, MIXED/CONCURRENT mode (unrelated WIP present: agentfeed ledger, patient symptom YAML, ADHD blog dirs). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>`; all phases scoped by explicit file lists, NOT `git diff`.
- Related prior plan: `ops/plans/vagal-gastric-denervation-longcovid-integration-plan.md` (row 8.1 diabetic gastroparesis comparative model 0.30, 3.6 low-dose erythromycin 0.20; subtree node 8.1/8.2). Cross-reference for overlap; gastroparesis here is a distinct symptom/mechanism topic with its own literature base.
- Existing coverage: `ch04/.../subsec-04-gastroparesis.typ` (15 lines, clinical presentation + 2-sentence mechanism) — minimal, to be deepened.
- Bib targets: NO `gastrointestinal.bib` exists. Phase 1 confirmed actual targets: `bib/gut-microbiome.bib` (primary), `bib/treatments.bib`, `bib/autonomic-cardiovascular.bib`, `bib/long-covid.bib`.

## Tracking table

Tiers/certainty assigned in Phase 5 (reassessed). Cat 10–12 bypass triage.

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1.1 | Autoimmune ganglionic AChR blockade → ME/CFS gastroparesis | — | 0.30 | ✅ | mechanism; integrated as `spec:gastroparesis-autoimmune-ganglionic-blockade` (reassessed 0.25→0.30); Phase 5d: sec-03 category, partial-overlap (existing sec-06 ganglionic AChR AAb finding) → cross-ref only, no cascade file |
| 1.2 | Vagal afferent/efferent dissociation | — | 0.20 | ↩️ | Tier 3 tree-only; aligns with existing ch34 vagal cascade, no distinct ME/CFS data |
| 1.3 | Nitrergic (nNOS) pyloric innervation loss | — | 0.20 | ↩️ | Tier 3 tree-only |
| 1.4 | Enteric/ICC loss secondary to chronic vagal failure | — | 0.15 | ↩️ | Tier 3 tree-only; Phase 5d: merged into `oq:gastroparesis-enteric-icc-loss-mecfs` (0.40), sec-06 category, partial-overlap → cross-ref only |
| 1.5 | Endogenous GLP-1 excess → gastroparesis | — | 0.15 | ⏭️ | covered-by spec-area-postrema-gpcr-glp1-gate (existing) |
| 2.1 | Modern-criteria GES cohort stratified by severity | — | 0.60 | ↩️ | research proposal; Tier 3 tree-only (future cycle) |
| 2.2 | GCSI + GES concordance | — | 0.45 | ↩️ | research proposal; tree-only |
| 2.3 | Paired antral+skin biopsy + AChR panel | — | 0.50 | ↩️ | research proposal; tree-only |
| 2.4 | Serial GES around PEM episode (state vs trait) | — | 0.40 | ↩️ | research proposal; tree-only |
| 3.1 | Time-limited lowest-risk prokinetic algorithm (prucalopride-first) | — | 0.35 | ✅ | treatment; folded into `warn:gastroparesis-prokinetic-safety` (lowest-risk-first guidance) |
| 3.2 | Relamorelin (ghrelin agonist) | — | 0.20 | ↩️ | Tier 3 tree-only |
| 3.3 | Pyridostigmine as mechanism-directed prokinetic | — | 0.20 | ↩️ | Tier 3 tree-only; no ME/CFS gastric trial |
| 3.4 | GLP-1 agonist counterindicated in ME/CFS gastroparesis (warning) | — | 0.35 | ✅ | treatment/dx; added to `warn:gastroparesis-prokinetic-safety` (reassessed 0.30→0.35) |
| 4.1 | Ginger as first-line adjunctive prokinetic | — | 0.30 | ↩️ | Tier 3 tree-only (deferred — interaction scope) |
| 4.2 | Liquid-nutrient optimisation (very-severe) | — | 0.40 | ✅ | treatment; integrated as `practical-warning:gastroparesis-nutritional-escalation` |
| 4.3 | Low-fibre/low-fat dietary modification | — | 0.30 | ✅ | treatment; folded into `practical-warning:gastroparesis-nutritional-escalation` |
| 5.1 | Severity-graded feeding strategies + enteral escalation | — | 0.45 | ✅ | treatment; integrated as `practical-warning:gastroparesis-nutritional-escalation` |
| 5.2 | Postural feeding + meal-time pacing | — | 0.20 | ↩️ | Tier 3 tree-only |
| 6.1 | Caregiver-implementable feeding + ginger protocol (severe) | — | 0.40 | ↩️ | Tier 3 tree-only (overlaps 4.2/5.1) |
| 6.2 | Low-risk prokinetic protocol with specialist escalation gate | — | 0.30 | ↩️ | covered-by warn:gastroparesis-prokinetic-safety |
| 7.1 | ODE variable E_g (gastric emptying rate) | — | 0.25 | ↩️ | Tier 3 tree-only; model extension |
| 7.2 | DAG node: gastroparesis independent contributor | — | 0.25 | ↩️ | Tier 3 tree-only; model extension |
| 8.1 | AGID as shared treatable mechanism (ME/CFS + post-viral) | — | 0.25 | ✅ | cross-disease; folded into `spec:gastroparesis-autoimmune-ganglionic-blockade` |
| 8.2 | hEDS/POTS gastroparesis as proximal management model | — | 0.45 | ✅ | cross-disease; folded into `practical-warning:gastroparesis-nutritional-escalation` (Tseng/Aziz) |
| 8.3 | Post-viral gastroparesis as reversibility-test population | — | 0.25 | ↩️ | Tier 3 tree-only |
| 9.1 | GES as dysautonomia-severity biomarker | — | 0.30 | ↩️ | Tier 3 tree-only |
| 9.2 | Breath-test alternative to GES (repeatable) | — | 0.35 | ↩️ | Tier 3 tree-only |
| 9.3 | GCSI screen → GES confirm (two-stage pathway) | — | 0.35 | ↩️ | Tier 3 tree-only |
| 10.1 | Delayed emptying = medication side-effect | crit | 0.40 | ✅ | critical; integrated as `lim:gastroparesis-evidence-anchor-and-alternatives` |
| 10.2 | Functional dyspepsia, not true emptying delay | crit | 0.35 | ✅ | critical; integrated (lim env + cf competing-mechanism note) |
| 10.3 | Deconditioning/severe-illness effect, not specific lesion | crit | 0.30 | ✅ | critical; integrated as lim |
| 10.4 | Subjective reporting bias inflates prevalence | crit | 0.30 | ✅ | critical; integrated as lim |
| 11.1 | Which claims revise if gastroparesis no role | crit | 0.30 | ✅ | critical; integrated as lim |
| 11.2 | Gastroparesis real but epiphenomenal | crit | 0.25 | ✅ | critical; integrated as lim |
| 11.3 | Single unreplicated cohort; null replication topples it | crit | 0.30 | ✅ | critical; integrated as lim |
| 12.1 | Fukuda-era criteria: anchor cohort not modern ME/CFS | crit | 0.40 | ✅ | evidence quality; integrated as lim |
| 12.2 | n=32 single cohort never replicated | crit | 0.35 | ✅ | evidence quality; integrated as lim |
| 12.3 | Scintigraphy protocol heterogeneity | crit | 0.35 | ✅ | evidence quality; integrated as lim |
| 12.4 | Discounted cross-disease evidence anchors mechanism | crit | 0.35 | ✅ | evidence quality; integrated as lim |
| 12.5 | Winner's curse / publication bias | crit | 0.30 | ✅ | evidence quality; integrated as lim |

## Active Caps (set by Phase 2 — decision: PROCEED)

- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (none) | — | — | — | — | 0 bumps applied (Phase 6: descriptive claims only; Phase 7: no independent-line convergence, all related hypotheses speculative) |

## Phase progress log

- Phase 0 → plan created (this file). MIXED mode confirmed. HEAD b848e191.
- Phase 1 → 13 papers found, 13 bib entries added across gut-microbiome.bib (6: Burnet2004GastricEmptyingCFS, Corrado1998NormalGastricEmptying, Debourdeau2024GastricVolumetry, Grover2011CellularChangesGastroparesis, Wang2009ICCLossDiabetes, Wise2021GastricEmptyingScans), treatments.bib (4: Ingrosso2023GastroparesisDrugsNMA, Patel2024SHT4Gastroparesis, Gupta2016GastroparesisDiet, Shakhatreh2019Metoclopramide), autonomic-cardiovascular.bib (2: Tseng2019POTSNutritionalSupport, Aziz2025AGAGIHyperEhlersDanlos), long-covid.bib (1: Montalvo2022LongCovidGIDysmotility). Annotated bib updated (13 entries). Search log: ops/research/search-log-gastroparesis-2026-08-19.md. Lit summary: ops/research/literature-summary-gastroparesis.md. Scrape registry updated. VERIFIED keys via grep (ground truth) — all present.
- Phase 2 → Decision: **PROCEED**. 9 papers discounted ≥0.40, 2 at 0.60 (Burnet 2004 direct ME/CFS; Ingrosso 2023 NMA), 4/13 (31%) <0.40, 1 null (Corrado n=1). Indirect links confirmed (vagal denervation via Acanfora 2026 cross-ref; enteric/ICC loss Grover/Wang; autoimmune ganglionic AChR Montalvo 2022; POTS/hEDS Tseng/Aziz). Clinical relevance: HIGH (severe-case actionable). Contradictions: Corrado vs Burnet resolvable (n=1 null, weight-caveated, not open-question). No cohort overlap. Caps: PROCEED. Synthesis: tmp/synthesis-gastroparesis-2026-08-19.md.
- Phase 3 → ch04 subsec-04-gastroparesis deepened: 3 env added (`cf:gastroparesis-delayed-emptying-mecfs` 0.60, `oq:gastroparesis-enteric-icc-loss-mecfs` 0.40, `warn:gastroparesis-prokinetic-safety`) + cross-disease paragraph (diabetic/post-viral/hEDS-POTS). Registry: +2 rows (`cf gastroparesis-delayed-emptying-mecfs` 0.60, `oq gastroparesis-enteric-icc-loss-mecfs` 0.40). Files: ch04 subsec-04-gastroparesis.typ, hypothesis-registry.typ. Caps: PROCEED — compliant.
- Phase 3a → build PASS (0 errors).
- Phase 3b → safety gate: 1 treatment env gated (warn:gastroparesis-prokinetic-safety), items 1-4 PASS (pregnancy/lactation + drug-interaction added during gate), 0 blocked, 2 non-blocking warnings. tmp/safety-gate-gastroparesis.md.
- Phase 3.5 → 3 env verified, all have Consequence fields (3/3).
- Phase 4 → brainstorm written (ops/brainstorms/brainstorm-gastroparesis-2026-08-19.md); 40 ideas across all 12 categories (5/4/4/3/2/2/2/3/3/4/3/5); critical cats 10/11/12 each ≥1. Plan table populated with 40 rows. Top: 2.1 (GES cohort, 0.60), 2.3 (paired biopsy, 0.50), 8.2 (hEDS/POTS model, 0.45), 5.1 (severity-graded feeding, 0.45), 2.2 (GCSI/GES, 0.45).
- Phase 4a → subtree subtrees/gastroparesis.md written (40 nodes, usefulness scored); root index updated (40 ideas, 0 integrated, in progress).
- Phase 5 → Certainty reassessment done (1.1 0.25→0.30, 3.4 0.30→0.35). Drug-interaction pre-check recorded (prokinetics done in Phase 3b; GLP-1 counterindication is pharmacovigilance not prescribing; feeding non-pharm; ginger deferred). Triage: 3 Tier-1 integrations + critical-cat bypass. New envs: `spec:gastroparesis-autoimmune-ganglionic-blockade` (0.30, covers 1.1+8.1), `practical-warning:gastroparesis-nutritional-escalation` (covers 4.2+4.3+5.1+8.2), `lim:gastroparesis-evidence-anchor-and-alternatives` (covers crit 10-12). Prokinetic warning extended with 3.4 GLP-1 counterindication + 3.1 lowest-risk-first. Registry +3 rows (spec, lim; practical-warning not registered as it's a warning). 3 envs added to ch04 (now 6 total). Caps: PROCEED compliant.
- Phase 5 triage summary: 40 ideas → 1 hypothesis/spec integrated (1.1), 4 treatment/clinical integrated (3.1, 3.4, 4.2, 5.1 + 4.3/8.2 folded), 16 critical-cat ideas integrated (10.1-12.5 as lim env), 5 deduped/covered (1.5, 6.2, 8.1-folded), 18 tree-only Tier 3 (1.2, 1.3, 1.4, 2.1-2.4, 3.2, 3.3, 4.1, 5.2, 6.1, 7.1, 7.2, 8.3, 9.1-9.3). No Gate A/B/scope-escalation (all extensions <5 separable papers).
- Phase 5d → ch34 cascade integration (delegated to model-integrator): ch34 category assigned (spec→sec-03, oq→sec-06); overlap verdict PARTIAL→cross-ref-only, NO duplicate cascade created (existing sec-06 vagal cascade + sec-03 GPCR already cover the branch); sec-12 updated (5 Appears-in lines + NEW Prucalopride entry); trace at ops/integration-guides/pathway-drug-trace-gastroparesis.md; sec-09 flagged-new-pattern-no-file (anti-force); sec-13 skip (conceptual matrix, no built table); 2 branches pruned (<0.05); non-deletion confirmed (ADD-only).
- Phase 5c → LEGIT-SKIP: topic is mechanism/symptom; prokinetics have known MOA but NO human ME/CFS evidence → no evidence-based EM differential entry. Prucalopride sec-12 entry (from 5d) references mechanism, not a validated EM diagnosis.
- Phase 5b → build PASS (0 errors).
- Phase 5a → falsifiability-auditor PASS: oq + spec FULLY falsifiable; 13/13 citations resolve (P=13, Q=0); 3 claim-fidelity spot-checks pass; 1 annotation fix (Montalvo raw 0.45→disc 0.38). Subtree statuses updated (20 ✅, 17 ↩️, 2 ⏭️); root index integrated count → 20.
- Phase 5z → glossary +7 keys (gastroparesis, GES, gastric emptying scintigraphy, interstitial cells of Cajal, prokinetic, 5-HT4, prucalopride); JSON valid; existing med keys not duplicated.
- Phase 6 → 5 matches examined, 2 adapted (citation insertions): ch03 gastroparesis bullet + ch34 vagal-cascade GI-motility consequence both reinforced with @Burnet2004GastricEmptyingCFS. 0 certainty bumps (descriptive claims; ch34 cascade cert 0.40 unchanged). 0 contradictions. 1 FLAG (pre-existing, not edited): ch12 obs:gastroparesis-prevalence cites @GastricDysmotility2023 with 72%/38% figures identical to Burnet 2004 — possible prior-cycle citation-accuracy concern, recommend verification; left untouched (shared-file ownership). GLP-1 counterindication consistent with existing spec-area-postrema-gpcr-glp1-gate (reinforcement, no edit). Synonym map: tmp/synonym-map-gastroparesis.md.
- Phase 7 → 5 pairs audited inline (1 reinforcement, 3 feed-into, 1 independent-with-overlap, 0 conflict). spec:gastroparesis-autoimmune-ganglionic-blockade feeds into / reinforces existing spec:ganglionic-achr-mecfs (same α3 mechanism, cross-ref added). oq + cf feed into hyp:structural-vagal-denervation-cap. 0 certainty bumps (both ganglionic pairs speculative; upstreams <0.50 so no feed-into bump). 0 reductions. 0 tensions. Audit: tmp/compat-audit-gastroparesis-2026-08-19.md.
- Phase 8 → build PASS (0 errors). Intermediate: Phase 3a PASS, Phase 5b PASS.
- Phase 9 → Net certainty 0; reinforcement:contradiction 2:0; 2 falsifiable predictions; ~1930 chapter-prose words (full gross 6236 incl. bibliographic records); 21/40 ideas integrated, 18 Tier-3 tree-only. Flags: BLOAT fired-by-letter but NOT actionable (bibliographic-driven, 6 focused non-redundant envs); no WEAK-EVIDENCE, no CLINICAL-RISK, no G-UNSUSTAINED-CERTAINTY. Quality: tmp/quality-gastroparesis-2026-08-19.md.
- Phase 10 → 4 chapters audited (ch03, ch04, ch34 + registry/appendix-h), 0 inconsistencies, 0 fixes, 0 user decisions. Certainty gradient (0.60/0.40/0.30/0.40) = intentional evidence-base calibration. Audit: tmp/coherence-audit-gastroparesis-2026-08-19.md.
- Phase 10a → synthesis @syn:gastroparesis-autonomic-manifestation added to ch04, condensing 7 environments (finding, mechanism-question, prokinetic safety, autoimmune spec, nutritional escalation, limitation) into convergent model (measurable manifestation + mechanistic uncertainty + safe-first treatment ladder). Build PASS.
- Phase 10b → no framing propagation needed: synthesis is a downstream clinical manifestation with management implications already reflected in ch34 sec-12; does not alter abstract/ch16 causal-hierarchy/reading-guide/ch13 unified-model framing (not a trigger/amplifier/genetic-architecture/diagnostic-bifurcation change).
- Phase 1 → 13 papers found, 13 bib entries added (gut-microbiome 5, treatments 4, autonomic-cardiovascular 2, long-covid 1); appendix-h `sec:bib-gastroparesis` (13 annotated entries); search log `ops/research/search-log-gastroparesis-2026-08-19.md`; literature summary `ops/research/literature-summary-gastroparesis.md`; scrape-registry updated. VERIFIED bib keys: Burnet2004GastricEmptyingCFS, Corrado1998NormalGastricEmptying, Debourdeau2024GastricVolumetry, Grover2011CellularChangesGastroparesis, Wang2009ICCLossDiabetes, Ingrosso2023GastroparesisDrugsNMA, Patel2024SHT4Gastroparesis, Gupta2016GastroparesisDiet, Shakhatreh2019Metoclopramide, Tseng2019POTSNutritionalSupport, Aziz2025AGAGIHyperEhlersDanlos, Montalvo2022LongCovidGIDysmotility. Highest discounted cert 0.60 (Burnet 2004, direct ME/CFS; Ingrosso 2023 NMA) — ≥2 papers discounted ≥0.40 and ≥1 at 0.60 → PROCEED-grade evidence base (Phase 2 confirms).
- Phase 5d → ch34 integration: **cross-reference-only outcome** (both mechanistic claims PARTIAL OVERLAP with existing cascades — no cascade files created). Categories: `spec:gastroparesis-autoimmune-ganglionic-blockade` → sec-03 (autoimmune); `oq:gastroparesis-enteric-icc-loss-mecfs` → sec-06 (autonomic/enteric). Overlap evidence: sec-06 vagal cascade `subsubsec-03` already has the "ganglionic (α3-β4) nicotinic AChR AAb positive — autoimmune autonomic ganglionopathy" finding (IVIG/rituximab/plasma exchange) covering the spec claim's identical receptor+mechanism; sec-06 `subsubsec-01` consequence b + sec-03 GPCR Step I3 cover the gastroparesis clinical endpoint for the oq claim. Only genuinely novel node = structural ICC/enteric-neuron loss (no existing cascade addresses it). sec-12: 5 `*Appears in:*` lines updated (Domperidone, Erythromycin, Metoclopramide, IVIG, Pyridostigmine) + NEW Prucalopride entry (5-HT4, differential diagnostic value, was absent). sec-09: convergence flagged (gastric-motility node), NO file created — within-cascade coverage already present, no existing sec-09 subsec fits, anti-force rule. sec-13: skip — conceptual matrix, no built table. Trace: `ops/integration-guides/pathway-drug-trace-gastroparesis.md`. Pruned branches: 2 (source-level depletion probes for gastroparesis; structural-node therapeutic interception). NO prior-cycle ch34 content deleted/modified.

## Phase 12 — Plan-record summary

- **Topic:** gastroparesis (delayed gastric emptying in ME/CFS)
- **Decision:** PROCEED
- **Environments added (7, in ch04 subsec-04-gastroparesis):** `cf:gastroparesis-delayed-emptying-mecfs` (0.60), `oq:gastroparesis-enteric-icc-loss-mecfs` (0.40), `warn:gastroparesis-prokinetic-safety`, `spec:gastroparesis-autoimmune-ganglionic-blockade` (0.30), `warn:gastroparesis-nutritional-escalation`, `lim:gastroparesis-evidence-anchor-and-alternatives`, `syn:gastroparesis-autonomic-manifestation`
- **Chapters touched:** ch04 (subsec-04-gastroparesis), ch03 (autonomic-symptoms Burnet cite), ch34 (sec-06 vagal-cascade cite + sec-12 compendium: Prucalopride new + 5 Appears-in), hypothesis-registry (+4 rows), appendix-h (+13 annotated entries), glossary-en.json (+7 keys)
- **Bib count:** 13 entries added across gut-microbiome (6), treatments (4), autonomic-cardiovascular (2), long-covid (1)
- **Registry entries:** 4 (cf, oq, spec, lim gastroparesis rows)
- **Key finding + why it matters:** Delayed gastric emptying is a documented, measurable ME/CFS feature (Burnet 2004, n=32, 0.60) — not a vague complaint — with an actionable safe-first treatment ladder (nutritional before prokinetic) and honest mechanism uncertainty (structural vs autoimmune vs functional). Directly relevant to severe-case management and urgent-care decisions.
- **Phase 9 flags:** BLOAT fired-by-letter (bibliographic-record-driven, NOT actionable — 6 focused non-redundant envs); no WEAK-EVIDENCE, no CLINICAL-RISK, no G-UNSUSTAINED-CERTAINTY.
- **Phase 2 clinical relevance:** HIGH (severe-case actionable: diagnostic pathway, prokinetic safety, nutritional management).
- **Anecdote/provenance note:** No unverifiable anecdote integrated; all content traces to the 13 bib sources.
- **Driving sources:** Burnet 2004 (direct ME/CFS emptying), Ingrosso 2023 (prokinetic NMA), Grover 2011 + Wang 2009 (enteric/ICC mechanism), Montalvo 2022 (post-viral autoimmune GI dysmotility), Tseng 2019 + Aziz 2025 (POTS/hEDS nutritional burden), Shakhatreh 2019 (metoclopramide safety).

## Phase Ledger

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file created + validated |
| 1 | RAN | search-log + lit-summary + 13 bib entries (verified) + appendix-h |
| 2 | RAN | tmp/synthesis-gastroparesis-2026-08-19.md; decision PROCEED |
| 3 | RAN | ch04 6 envs + registry rows (Phase 3); later extended in Phase 5 |
| 3a | RAN | build PASS (0 errors) |
| 3b | RAN | tmp/safety-gate-gastroparesis.md; 1 env gated, items 1-4 PASS, 0 blocked |
| 3.5 | RAN | 3 env consequence-verified (Phase 3); later verified for all 7 (Phase 3.5 + 5 + 11) |
| 4 | RAN | ops/brainstorms/brainstorm-gastroparesis-2026-08-19.md (40 ideas) |
| 4a | RAN | subtrees/gastroparesis.md (40 nodes); root index updated |
| 5 | RAN | triage + 3 Phase-5 envs (spec, warn-nutritional, lim) + warn extension; registry +2 rows |
| 5d | RAN | ops/integration-guides/pathway-drug-trace-gastroparesis.md; sec-12 updates; cross-ref-only overlap outcome |
| 5c | LEGIT-SKIP | Topic is mechanism/symptom; prokinetics have known MOA but NO human ME/CFS evidence → no evidence-based EM differential entry |
| 5b | RAN | build PASS (0 errors) |
| 5a | RAN | falsifiability-auditor PASS; oq+spec fully falsifiable; 13/13 citations; 1 annotation fix |
| 5z | RAN | glossary +7 keys; JSON valid |
| 6 | RAN | synonym-map; 2 adaptations (ch03 + ch34 Burnet cites); 0 bumps |
| 7 | RAN | tmp/compat-audit; 5 pairs; 0 bumps; 1 cross-ref |
| 8 | RAN | build PASS (0 errors) |
| 9 | RAN | tmp/quality-gastroparesis; BLOAT fired-by-letter not-actionable |
| 10 | RAN | tmp/coherence-audit; 0 inconsistencies |
| 10a | RAN | syn:gastroparesis-autonomic-manifestation added to ch04; build PASS |
| 10b | LEGIT-SKIP | downstream clinical manifestation; no framing-layer implication (not trigger/amplifier/genetic/diagnostic-bifurcation) |
| 11 | RAN | 11a/11b/11c all CONVERGED (2 consecutive zero-finding rounds); build PASS after each fix |
| 12 | RAN | this plan-record section |
| 12.5 | RAN | this ledger walk; zero OMISSION |
| 13 | (Phase 13) | pending commit |

**Completion gate report:** N phases RAN, 2 LEGIT-SKIP (5c, 10b with conditions), 0 WAIVED, 0 OMISSION. Build: PASS (0 error lines). Ledger clean — Phase 13 may proceed.
