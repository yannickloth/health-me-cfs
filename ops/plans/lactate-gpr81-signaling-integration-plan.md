# Lactate as a Signaling Molecule (GPR81) — Integration Plan

**Purpose:** Integrate the un-covered angle of lactate biology in ME/CFS — lactate as a **signaling hormone** (GPR81/HCAR1 receptor, monocarboxylate transporters, the lactate shuttle), not merely a metabolic waste product — **and** the interventions that may lower or clear lactate (lactate-lowering therapeutics). The paper currently discusses lactate only as a downstream consequence of impaired oxidative metabolism; it never treats lactate as an active signal. This is gap-analysis item **G6** ("Lactate as signaling molecule (GPR81)", certainty 0.45, MCT oil exists).

**Topic slug:** `lactate-gpr81-signaling`
**Queue alias:** `gap-g06-lactate-gpr81-signaling` (`ops/queued-topics.md`, ⬜ pending, from `ops/plans/20260726-document-gap-analysis.md`)

**Parent topic:** gap-analysis-20260726 (standalone, user-supplied scope addition: "focus on all that can help alleviate the lactic acid levels")
**Brainstorm origin:** none (queued from document gap analysis, not a Phase-4 brainstorm)
**Parent subtree node:** `ops/plans/hypotheses-trees/subtrees/` — no gap-analysis subtree file; record WHY in Phase 4a.

**Target chapters:**
- ch07 sec-19 (carbohydrate metabolism and lactate) — primary pathophysiology target
- ch07 sec-22 (compartmental energy models; astrocyte–neuron lactate shuttle) — lactate shuttle
- ch07 sec-27 (brain energy) — CNS lactate
- ch31 (supplements and nutraceuticals) — lactate-lowering supplements (thiamine/B1, riboflavin/B2, carnitine, MCT oil, bicarbonate)
- ch25 sec-12 (mechanistic cascade tracing — medication reference / pharmacodiagnostic compendium) — dichloroacetate (PDK inhibitor), other interceptors (if a cascade qualifies)
- ch50 sec-07 (lactate kinetics and metabolic flexibility model) — quantitative link
- `part4-research/hypothesis-registry.typ` — new hypothesis/speculation rows

**Pre-identified hypotheses (preliminary, from gap analysis G6 + user scope addition):**
- H1: Lactate acts as a signaling molecule via GPR81/HCAR1 in ME/CFS — a hormone-like signal, not inert waste (cert ~0.45).
- H2: Lactate-mediated GPR81 signaling modulates ME/CFS-relevant processes (immune suppression, neuroinflammation, pain/fatigue signaling, adipose/insulin).
- H3: Interventions that reduce production, increase clearance, or buffer lactate may improve symptoms — hypothesis only, NOT a recommendation (cert TBD; needs harm search).

**Dedup note (MANDATORY for Phase 3/5):** Lactate metabolism is **already extensively integrated** (ch07 sec-19 lactate accumulation; ch50 sec-07/09 lactate kinetics; fig-astrocyte-lactate-shuttle; appendix-h 62 hits; registry rows; bib keys Lien2019lactate, Jones2012lactate, Lien2019LactateAbnormal, Brooks2018lactate, Murrough2010VentricularLactate, Natelson2017Lactate, Kerstholt2022BorreliaLactate). This cycle must NOT re-integrate lactate-as-waste content. It adds ONLY: (a) lactate-as-signal (GPR81/HCAR1/MCT/lactate shuttle as signaling), (b) lactate-lowering interventions. Phase 3 must dedup against existing environments before writing.

**Working-tree mode:** MIXED/CONCURRENT (unrelated `patients/yannick/self-reported/**` changes present at cycle start; user approved MIXED mode).
- No shared-branch WIP commits; scratch pointers / reflog refs only.
- Rollback = `git checkout <ref> -- <explicit-files>` (NEVER reset/rebase/amend).
- All phases scoped by explicit file lists from per-phase reports, NOT `git diff`.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| G6-H1 | Lactate is a signaling molecule via GPR81/HCAR1 in ME/CFS | — | 0.45 | ✅ done | Core topic (gap G6). 14 papers, no ME/CFS GPR81 measurement. PARTIAL |
| G6-H2 | GPR81 signaling modulates ME/CFS-relevant processes | — | 0.35 | ✅ done | Animal/in-vitro effector roles; unmeasured in ME/CFS. PARTIAL → #speculation |
| G6-H3 | Lactate-lowering interventions may improve symptoms | — | 0.30–0.53 | ✅ done | User scope addition. DCA/Kuratsune/Bager strongest; bicarbonate null/harm |

### Phase 4 brainstorm rows (26 ideas, from `brainstorm-lactate-gpr81-signaling-2026-09-27.md`)

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1.1 | GPR81 tone vs lactate level | T2 | 0.30 | ✅ integrated | ch07 `@spec:lactate-signaling-mecfs` (Phase 3) |
| 1.2 | MCT clearance as independent node | T2 | 0.28 | ✅ integrated | ch07 `@spec:lactate-mct-transport-node` |
| 2.1 | Measure GPR81/HCAR1 + MCT cohort | T1 | n/a | ✅ integrated | ch07 `@oq:lactate-axis-measurement-agenda` |
| 2.2 | Lactate kinetics in intervention trial | T1 | n/a | ✅ integrated | ch07 `@oq:lactate-axis-measurement-agenda` |
| 3.1 | DCA PDH-activating probe | T2 | 0.40 | ⏭️ covered-by-sec12 | existing `@sec:pdh-cascade` + DCA sec-12 entry |
| 3.2 | MCT1-selective inhibition probe | T3 | 0.20 | ⏭️ deferred | ops-only, no interceptor |
| 4.1 | Thiamine as PDH-cofactor lever | T2 | 0.35 | ✅ covered-by | `@spec:lactate-lowering-strategies` (ch31) |
| 4.2 | MCT / ketogenic substrate shift | T2 | 0.30 | ✅ covered-by | `@spec:lactate-lowering-strategies` (ch31) |
| 4.3 | Carnitine reroutes substrate | T2 | 0.30 | ✅ covered-by | `@spec:lactate-lowering-strategies` (ch31) |
| 5.1 | Active-recovery / exertion timing | T2 | 0.20 | ✅ integrated | ch32 `@spec:lactate-clearance-levers` |
| 5.2 | Perfusion-directed clearance | T2 | 0.15 | ✅ folded into 5.1 | ch32 `@spec:lactate-clearance-levers` |
| 6.1 | Substrate/cofactor stack | T2 | 0.25 | ⏭️ covered-by | `@spec:lactate-lowering-strategies` (ch31) |
| 6.2 | At-home lactate meters | T3 | 0.15 | ✅ folded into 9.1 | ch07 `@oq:lactate-clearance-kinetics-biomarker` |
| 7.1 | GPR81 + MCT flux terms in model | T3 | 0.20 | ⏭️ deferred | future ch50 cycle |
| 7.2 | Model PDH gate + intervention term | T3 | 0.15 | ⏭️ deferred | future ch50 cycle |
| 8.1 | Borrow cancer lactate toolkit | T3 | 0.20 | ⏭️ deferred | — |
| 8.2 | Lactate-handling spectrum | T3 | 0.15 | ⏭️ deferred | — |
| 9.1 | Post-exertional lactate-kinetics biomarker | T1 | 0.35 | ✅ integrated | ch07 `@oq:lactate-clearance-kinetics-biomarker` |
| 9.2 | PBMC GPR81/MCT molecular biomarker | T3 | 0.20 | ✅ folded into 2.1 | ch07 `@oq:lactate-axis-measurement-agenda` |
| 10.1 | Resting lactate not universally elevated | critical | n/a | ✅ integrated | ch07 `@spec:lactate-signaling-mecfs` competing + `@lim:lactate-signaling-unmeasured` |
| 10.2 | Zero ME/CFS axis measurement — transfer gap | critical | n/a | ✅ integrated | ch07 `@lim:lactate-signaling-unmeasured` |
| 10.3 | Lactate may be inert consequence | critical | n/a | ✅ integrated | ch07 `@spec:lactate-signaling-mecfs` competing |
| 11.1 | Null: no axis difference → signal collapses | critical | n/a | ✅ integrated | ch07 `@lim:lactate-signaling-unmeasured` |
| 11.2 | Null: lowering lactate no symptom benefit | critical | n/a | ✅ integrated | ch31 `@spec:lactate-lowering-strategies` falsifier |
| 12.1 | Model-system ligand concentration unmeasured | critical | n/a | ✅ integrated | ch07 `@spec:lactate-signaling-mecfs` limitations |
| 12.2 | Intervention evidence population-mismatched | critical | n/a | ✅ integrated | ch07/ch31 limitations |

## Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: speculation/open-question/limitation/warning ONLY (PARTIAL)
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45 (PARTIAL)
- Brainstorm categories (Phase 4): **USER-AUTHORIZED DEVIATION** — user explicitly requested lactate-lowering intervention focus (2026-09-27) → categories 3–9 INCLUDED alongside 1–2 + 10–12. Intervention environments remain #speculation/#open-question/#warning/#limitation (never #hypothesis-box).
- Certainty bumps (Phases 6–7): capped: no bump may cross 0.45 (PARTIAL)
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL)

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Notes

- Standalone/gap-fill invocation (queued from gap analysis, not a parent brainstorm). Phase 4a subtree: record WHY if not created.
- This topic likely triggers **Phase 5d** (mechanism→drug: PDK/DCA, MCT, transporters) AND **Phase 5c** (drug→mechanism) if a lactate-lowering medication with human ME/CFS evidence is integrated.
- "Lactate acid levels" alleviation maps to ch31 (supplements) + ch25 sec-12 (drugs) + possibly ch07 sec-23 (potential interventions).
- Chapter-numbering note: the pipeline SKILL.md says "ch30" for cascade tracing, but the repo's actual path is `part3-treatment/ch25-mechanistic-cascade-tracing/` (chapters renumbered). Use ACTUAL paths; cross-check before writing.

## Phase Reports

### Phase 1 — Literature Research (2026-09-27)
- **Papers found:** 14 (8 signaling/biology → `energy-metabolism.bib`; 6 interventions → `treatments.bib`).
- **Bib entries added (VERIFIED via awk):**
  - energy-metabolism.bib: `Ahmed2010GPR81lipolysis`, `Pucino2019LactateCD4Tcell`, `Morland2017HCAR1VEGF`, `Hoque2014GPR81innateimmunity`, `Colegio2014TAMLacticAcid`, `Yang2014LactateNMDA`, `Halestrap2012MCTfamily`, `Haunhorst2025PEMmicrovascular`.
  - treatments.bib: `Stacpoole2006DCA`, `Teitelbaum2006Dribose`, `Kuratsune1998Acylcarnitine`, `Forsythe2000Bicarbonate`, `Bager2021ThiamineFatigue`, `Colgan2026KetogenicPostviral`.
- **Search log:** `ops/research/search-log-lactate-gpr81-signaling-20260927.md`
- **Literature summary:** `ops/research/literature-summary-lactate-gpr81-signaling.md`
- **Integration guide:** `ops/integration-guides/INTEGRATION_GUIDE_lactate-gpr81-signaling.md`
- **Annotated bib:** 14 entries appended to `appendix-h-annotated-bibliography.typ`.
- **Dedup honored:** reused (not re-added) `Brooks2018lactate`, `Magistretti2018`, `Yang2020GPR81`, `Godlewska2025MRS`, `Natelson2017Lactate`, `Lien2019lactate`, `Murrough2010VentricularLactate`, `Kerstholt2022BorreliaLactate`.
- **Research gap:** no study measures GPR81/HCAR1 or MCT expression/signaling in ME/CFS patients.
- **Null/competing anchored:** Forsythe2000 (bicarbonate unsupported); corpus-reuse Godlewska2025MRS/Ryback2026myoblastNull.
- **Highest discounted cert:** Stacpoole2006DCA 0.53; Kuratsune1998Acylcarnitine 0.50 (ME/CFS population); Bager2021 0.49.

### Phase 0 — Plan Maintenance (2026-09-27)
- WTC: MIXED tree (unrelated `patients/yannick/self-reported/**`); user approved MIXED mode. No `git add -A`; explicit file lists; scratch pointers only.
- Deferred topics checked — no lactate deferral. Plan created + validated mechanically. Queue row `gap-g06-lactate-gpr81-signaling` → `🔵 in progress`.

### Phase 2 — Evidence Synthesis and Integration Decision (2026-09-27)
- **Synthesis:** `tmp/synthesis-lactate-gpr81-signaling-2026-09-27.md`.
- **Evidence:** strong = Stacpoole DCA 0.53, Kuratsune ME/CFS carnitine 0.50, Bager thiamine 0.49, Haunhorst 0.47, Halestrap 0.45; weak = 9/14 <0.40 (all six signaling papers animal/in-vitro); null/competing = Forsythe bicarbonate, Godlewska resting-lactate null; missing = no ME/CFS GPR81 measurement.
- **Decision: PARTIAL** (64% of papers <0.40 discounted; indirect-link override ruled out DEFER).
- **Clinical relevance: MEDIUM — mechanistic context for treatment decisions. Subset/severity: unknown.**
- **Contradictions:** no comparable-certainty opposing pair; competing/harm arm (bicarbonate, nulls) presented as `#limitation`/`#open-question`.
- **Cohort overlap:** none (14 independent sources).
- **Standing epistemic checklist:** #1 ✓ / #2 ✓ / #3 ✓ / #4 ✓ / #5 ✓ / #6 ✓.
- **Active Caps written.** User-authorized deviation: Phase 4 categories 3–9 included (lactate-lowering scope).

### Phase 3 — Content Development and Integration (2026-09-27)

- **Dedup correction (bib integrity):** the Phase 1 agent added two duplicate bib entries for papers already in the corpus — `Teitelbaum2006Dribose` (duplicate of `Teitelbaum2006ribose`, same DOI 10.1089/acm.2006.12.857) and `Bager2021ThiamineFatigue` (duplicate of `Bager2021thiamineIBD`, same DOI 10.1111/apt.16166). Both new duplicates were **removed** from `treatments.bib`; appendix-h annotations re-pointed to the canonical existing keys. New unique entries: 8 (energy-metabolism.bib) + 4 (treatments.bib).
- **New content (caps honored — speculation/open-question/limitation only):**
  - ch07 sec-19 → new `subsec-19-lactate-as-signaling-molecule/subsec-19-lactate-as-signaling-molecule.typ` with `@spec:lactate-signaling-mecfs` (0.35), `@spec:lactate-mct-transport-node` (0.30), `@oq:lactate-signaling-mecfs`, `@lim:lactate-signaling-unmeasured`; parent `#include` added.
  - ch31 → new `=== Lactate-Lowering Strategies` subsection with `@spec:lactate-lowering-strategies` (0.30) and `@lim:bicarbonate-buffering-unsupported` (0.50 against efficacy); DCA cross-referenced to `@sec:pdh-cascade`.
  - hypothesis-registry → new dated block (2026-09-27), 6 rows.
- **Files modified/created:** `part2-.../sec-19-.../sec-19-carbohydrate-metabolism-and-lactate.typ`; `part2-.../sec-19-.../subsec-19-lactate-as-signaling-molecule/subsec-19-lactate-as-signaling-molecule.typ` (new); `part3-treatment/ch31-supplements-nutraceuticals/ch31-supplements-nutraceuticals.typ`; `part4-research/hypothesis-registry.typ`; `appendices/appendix-h-annotated-bibliography.typ`; `bib/energy-metabolism.bib`; `bib/treatments.bib`.
- **Label cross-ref fixes:** `@sec:astrocyte-lactate-shuttle` (nonexistent) → `@sec:compartmental-energy`; verified `@sec:carbohydrate`, `@sec:pdh-cascade` exist.
- **Standing epistemic checklist per-claim:** #1 ✓ (keys verified case-exact) / #2 ✓ (model-system causality vs ME/CFS inference separated) / #3 ✓ (translation gap flagged) / #4 ✓ (null/competing arm included) / #5 ✓ (testable) / #6 ✓ (framed as non-recommendation).

### Phase 3a — Intermediate Build Check (2026-09-27)
- `typst compile --root <repo> loth2026-mecfs.typ` → exit 0. **PASS (0 errors).** (Pipeline specifies `nix build`; lighter `typst compile` used for the intermediate check per AGENTS.md; `nix build` run at Phase 8.)

### Phase 3b — Pre-Integration Safety Gate (2026-09-27)
- `tmp/safety-gate-lactate-gpr81-signaling.md`. 6 environments gated; 6 passed applicable checks; 1 warning (item 5, bedbound); 0 blocked. Recompile after safety edit → exit 0.

### Phase 3.5 — Non-Specialist Consequences Verification (2026-09-27)
- All 6 new environments carry a `*Consequence:*` field (ch07 file: 4/4; ch31 new envs: 2/2). **PASS.**

### Phase 4 — Creative Brainstorming (2026-09-27)
- `ops/brainstorms/brainstorm-lactate-gpr81-signaling-2026-09-27.md`. **26 ideas** across all 12 categories (cats 3–9 included per user-authorized deviation). Every idea tagged `origin: brainstorm`; all ≤0.40 (cap 0.45 not crossed). Plan tracking table populated with 26 rows.

### Phase 4a — Hypothesis Tree Update (2026-09-27)
- Subtree `ops/plans/hypotheses-trees/subtrees/lactate-gpr81-signaling.md` (26 nodes) created; root index row added (26 ideas, 0 child subtrees, 🔵 in progress). No parent subtree (standalone gap-analysis invocation — recorded here).

### Phase 5 — Tiered Integration of Brainstorm Ideas (2026-09-27)
- **Certainty reassessment:** all ideas kept at/below Phase 4 values; none raised (no direct ME/CFS measurement). No usefulness score changed → subtree unchanged except statuses.
- **Phase-3 dedup (zg + rg):** intervention ideas 4.1/4.2/4.3/6.1 are covered by the Phase 3 `@spec:lactate-lowering-strategies`; 3.1 covered by the pre-existing `@sec:pdh-cascade` + DCA sec-12 entry; 10–12 covered by `@lim:lactate-signaling-unmeasured` / `@spec:lactate-signaling-mecfs` competing clauses. Genuinely new → integrated: 9.1 → `@oq:lactate-clearance-kinetics-biomarker`; 2.1+2.2+9.2 → `@oq:lactate-axis-measurement-agenda`; 5.1+5.2 → `@spec:lactate-clearance-levers` (ch32); 6.2 folded into 9.1.
- **Tier summary:** T1 integrated = 9.1, 2.1, 2.2 (3); T2 integrated/covered = 1.1, 1.2, 4.1–4.3, 5.1/5.2, 6.1 (7); T3 deferred = 3.2, 6.2(→9.1), 7.1, 7.2, 8.1, 8.2, 9.2(→2.1); critical 10–12 integrated as caveats.
- **Phase 5 Safety Gate (drug-interaction pre-check):** run — no NEW Tier 1/2 drug idea (DCA is pre-existing in sec-12 with its harm note); nothing to check.
- **Scope-escalation:** 3 conditional future-topic candidates recorded in `ops/queued-topics.md` (gated on future evidence).
- **Files modified/created:** ch07 sec-19 file (2 new `#open-question` envs added); ch32 (1 new `#speculation`); registry (3 new rows).

### Phase 5d — Pathway-to-Drug Tracing / ch30 Cascade (2026-09-27)
- **LEGIT-SKIP** — no new cascade with a drug interception point. The PDH→lactate production branch already exists in `@sec:pdh-cascade` (DCA + thiamine sec-12 entries); the new GPR81 signaling branch has no existing sec-12 interceptor (only an investigational MCT1 inhibitor, cert 0.20). Trace recorded at `ops/integration-guides/pathway-drug-trace-lactate-gpr81-signaling.md`. No new ch25 files; no sec-12/sec-13 edits.

### Phase 5c — Differential Analysis for Treatment Topics (2026-09-27)
- **LEGIT-SKIP** — no medication with ME/CFS human evidence integrated; DCA (drug) already has a sec-12 differential entry and this cycle adds only a cross-ref. Non-pharmacological supplements are not medication-differential-analyst inputs.

### Phase 5b — Intermediate Build Check (2026-09-27)
- `typst compile` → exit 0. **PASS.**

### Phase 5a — Falsifiability Sweep (2026-09-27)
- `falsifiability-auditor` audited 4 `#speculation` envs → all fully falsifiable; 5 open-question/limitation envs carry consequences. Standing-epistemic cross-check: **17/17 citation keys resolve case-exact**, 0 discrepancies (3 sampled: Morland2017HCAR1VEGF, Bager2021thiamineIBD, Haunhorst2025PEMmicrovascular — all match). 1 optional fidelity tweak applied (Haunhorst flagged "review" in ch32). Build PASS.

### Phase 5z — Glossary Review (2026-09-27)
- 7 terms added to `glossary-en.json` **and** `glossary-fr.json` + `glossary-de.json` (parity maintained for new keys): GPR81, HCAR1, MCT4, Dichloroacetate, Acylcarnitine, ketogenic, medium-chain triglycerides. JSON validated; categories + non-empty definitions present; `node` parity criterion (EN⊆FR, EN⊆DE) holds for all 7 new keys.
- **Pre-existing debt discovered (NOT caused by this cycle):** ~17 EN-only glossary keys from prior cycles (eckey: `drug-set enrichment`, `split-half reliability`, `negative-constraint`, `Net Assessment Score`; kay: `ICI`, `Immunometabolism`, `arousal`, `salience network`, `endophenotype`, `effort discounting`, `ABCD Study`, `norepinephrine`, `methylphenidate`, `modafinil`, `pitolisant`, `solriamfetol`, `wakefulness`) are missing from FR/DE → the `glossary-parity` test is likely already red on `main`. Flagged for a separate cleanup; out of scope for this cycle.

### Phase 6 — Retrospective Adaptation (2026-09-27)
- **Synonym map:** `tmp/synonym-map-lactate-gpr81-signaling.md`.
- **M matches examined:** 7 overlap sites (ch07 sec-19 accumulation; ch07 sec-22 ANLS; ch31 thiamine; ch31 carnitine; ch25 sec-12 DCA; resting-lactate null `@Godlewska2025MRS`; bicarbonate — no pre-existing claim).
- **N adapted: 4** (all Reinforcement, citation/cross-ref only — incoming certainties 0.49/0.50/0.53 all <0.60 → **no certainty bumps**):
  - ch31 Thiamine → cite `@Bager2021thiamineIBD`; ch31 Carnitine → cite `@Kuratsune1998Acylcarnitine`; ch25 sec-12 DCA → cite `@Stacpoole2006DCA`; ch07 sec-19 lactate-accumulation → cross-ref `@sec:lactate-as-signaling`.
  - Contradiction: 0. Ambiguous: 0. No action: 3 (ANLS covered by new MCT env; null anchors already present; bicarbonate had no pre-existing claim). Bump log updated: **empty** (no bumps).
- Standing epistemic checklist: no violations.

### Phase 7 — Cross-Hypothesis Compatibility (2026-09-27)
- `tmp/compat-audit-lactate-gpr81-signaling-2026-09-27.md`. **11 candidate pairs audited** (inline): Reinforcement 4 (brain-lactate/virtual-hypoxia cluster), Feed-into 4 (ANLS, PDH cascade, ch50 kinetics, PEM perfusion), Independent 3 (epistemic/limitation entries), Weak reinforcement 1, 1 pair reclassified independent→weak feed-into. **Conflicts: 0.**
- **Certainty adjustments: 0 bumps, 0 reductions** (incoming evidence <0.60; PARTIAL cap 0.45; per-cycle cap). Bump log empty. Registry `[compat note lactate-gpr81-signaling]` row added.
- Standing epistemic checklist: no violations.

### Phase 8 — Build Verification (2026-09-27)
- `nix build` **FAILED twice, then PASSED**. Errors fixed: (1) raw `<0.60` in a registry row parsed as an unclosed Typst label → reworded "below 0.60"; (2) `@hyp:virtual-hypoxia-brain-lactate` label does not exist (the registry display id is not the label) → corrected to `@spec:virtual-hypoxia-brain-lactate`. Final `nix build` → exit 0. Intermediate checks: Phase 3a PASS, 5b PASS.

### Phase 9 — Integration Quality Assessment (2026-09-27)
- `tmp/quality-lactate-gpr81-signaling.md`. Net certainty 0; reinforcement:contradiction 4:0; 4 new falsifiable predictions; small length delta; T1 3 / T2 7 / T3-deferred 5. **Flags: `WEAK-EVIDENCE` (pre-fired by PARTIAL); BLOAT, CLINICAL-RISK, G-UNSUSTAINED-CERTAINTY NOT fired.**

### Phase 10 — Cross-Chapter Coherence Review (2026-09-27)
- `tmp/coherence-audit-lactate-gpr81-signaling-2026-09-27.md`. 6 files; 0 inconsistencies (2 cross-ref label errors fixed in Phase 8). Certainty/terminology consistent; all cross-refs resolve (nix build). Standing epistemic checklist: no violations.

### Phase 10a — High-Level Synthesis (2026-09-27)
- Auto-added `@syn:lactate-gpr81-signaling-model` to ch07 sec-19 (per standing default ≥2 convergent environments). Condenses 7 environments; cross-refs ≥2 envs; states the open question; registry row added. Build PASS.

### Phase 10b — Strategic-Framing Propagation (2026-09-27)
- **No framing propagation needed** (valid protocol outcome). The synthesis is a mechanistic/measurement constraint at ≤0.35 (animal/in-vitro), not a trigger-capable mechanism, amplifier, genetic-architecture, diagnostic-bifurcation, or actionable treatment-strategy claim at the framing level. Abstract / ch16 intro / ch16 root-cause sections / reading guide / ch13 unchanged.

### Phase 11 — Review to Convergence (2026-09-27)
- **Tier: FULL** (multi-chapter: ch07/ch31/ch32/ch25; 9 new environments; PARTIAL). Ran the three pass types via their underlying auditor agents (scoped to changed files, MIXED mode explicit file list):
  - **11a rigor/claim-substance** (`scientific-rigor-auditor`) — round 1: 1 CRITICAL + 1 HIGH + 3 MEDIUM + 3 LOW. **CRITICAL:** `@Godlewska2025MRS` misattributed as a muscle-lactate null (it actually found elevated brain lactate with resting calf-muscle metabolites not differing). HIGH: uncited "slower clearance" premise. MEDIUM/LOW: Ryback non-sequitur, duplication, missing ch32 fields, subset qualifier.
  - **11b adversarial** (`devil-advocate-auditor` 4 personas + `clinician-auditor`) — round 1: clinician HIGH ×2 (MCT severe caution missing; heat without orthostatic warning) + MEDIUM/LOW (DCA imperative; single-cause framing; finger-prick over-promise; "rather than patient report").
  - **11c xref/citation** (`typst-xref-checker`) — CLEAN: 20/20 label refs resolve, 21/21 citation keys case-exact, no Typst hygiene defects.
  - **Fixes applied:** all CRITICAL/HIGH + all actionable MEDIUM/LOW (Godlewska correction ×9 occurrences incl. registry; clearance premise softened; Ryback removed; MCT/ketogenic severe caution split; heat orthostatic caution; DCA imperative removed; ch32 safety fields added; competing-cause cross-ref added; redox caveat; "alongside patient report"; finger-prick caveat; "in a subset").
  - **Round 2 (convergence):** rigor + clinician re-review → prior findings RESOLVED; **0 new CRITICAL/HIGH. CONVERGED.** Build PASS after every pass.
  - `SLOW-CONVERGENCE`: not fired (2 rounds).
- **Note:** passes ran through the same auditor agents the project review skills delegate to, scoped to this cycle's changed files; the full skill wrappers were not re-expanded.

### Phase 12 — Integration Record (2026-09-27)

**Topic:** lactate-gpr81-signaling — lactate as a signaling molecule (GPR81/HCAR1; MCT transport; astrocyte–neuron lactate shuttle) in ME/CFS, plus lactate-lowering interventions.
**Decision:** PARTIAL (64% of papers discounted <0.40; no ME/CFS measurement of the receptor/transporter axis).
**Deliverables:** ch07 sec-19 new `subsec-19-lactate-as-signaling-molecule` (2 `#speculation`, 3 `#open-question`, 1 `#limitation`, 1 `#synthesis`); ch31 new `=== Lactate-Lowering Strategies` (1 `#speculation`, 1 `#limitation`, DCA note); ch32 `@spec:lactate-clearance-levers`; registry dated block (9 rows + compat note + synthesis); 12 new bib entries (energy-metabolism.bib 8, treatments.bib 4) + appendix-h annotations; 3 retrospective citation/cross-ref edits (thiamine/carnitine/DCA + lactate-accumulation); 7 glossary entries (en/fr/de); search log + literature summary in `ops/research/`; integration guide + pathway-drug trace in `ops/integration-guides/`; brainstorm (26 ideas); subtree (26 nodes); 3 conditional queued topics.
**Key finding:** the paper's lactate content treated lactate only as a waste marker. The evidence shows lactate is a signaling molecule (GPR81/HCAR1) — but its receptor/transporter axis is *unmeasured* in ME/CFS, and no ME/CFS trial has used lactate as an endpoint. The synthesis reframes the treatment question from "lower lactate" to "measure the axis and kinetics first, and do not buffer."
**Why it matters:** it converts the common patient question ("how do I clear lactic acid?") into a testable measurement agenda, surfaces the unsupported bicarbonate practice, and distinguishes production-lowering (thiamine/carnitine/MCT) from buffering.
**Phase 9 flags:** WEAK-EVIDENCE (pre-fired by PARTIAL).
**Clinical relevance:** MEDIUM — mechanistic context for treatment decisions. Severity applicability: unknown.
**Provenance note:** standalone invocation of gap-analysis item G6; user added the lactate-lowering scope mid-cycle ("focus on all that can help alleviate the lactic acid levels"), handled as a documented category-3–9 deviation under PARTIAL caps.
**Dedup correction:** two Phase-1 bib entries duplicated existing papers (`Teitelbaum2006Dribose`, `Bager2021ThiamineFatigue`) — removed; canonical keys `Teitelbaum2006ribose` / `Bager2021thiamineIBD` used.

## Phase 12.5 — Completion Gate (Phase Ledger)

`nix build` → 0 `error:` lines, exit 0.

| Phase | State | Evidence / skip condition |
|-------|-------|---------------------------|
| WTC | RAN | MIXED tree; user approved MIXED mode (plan Phase Reports) |
| 0 | RAN | plan created + validated; queue row → in progress |
| 1 | RAN | `ops/research/search-log-*` + `literature-summary-*`; 12 unique bib keys verified; appendix-h |
| 2 | RAN | `tmp/synthesis-lactate-gpr81-signaling-2026-09-27.md`; decision PARTIAL |
| 3 | RAN | ch07 sec-19 envs; ch31 envs; registry rows; bib dedup fix |
| 3a | RAN | `typst compile` exit 0 |
| 3b | RAN | `tmp/safety-gate-lactate-gpr81-signaling.md` (6 envs, 1 warning) |
| 3.5 | RAN | all 6 new envs carry `*Consequence:*` |
| 4 | RAN | `ops/brainstorms/brainstorm-lactate-gpr81-signaling-2026-09-27.md` (26 ideas) |
| 4a | RAN | subtree (26 nodes) + root index row |
| 5 | RAN | 3 new envs + registry rows; triage recorded |
| 5-Safety | RAN | no new Tier1/2 drug idea (DCA pre-existing) |
| 5d | LEGIT-SKIP | overlap (PDH cascade pre-existing) + no GPR81 drug interceptor → ops-only trace |
| 5c | LEGIT-SKIP | "non-pharmacological / no ME/CFS drug evidence" |
| 5b | RAN | `typst compile` exit 0 |
| 5a | RAN | 4 speculations fully falsifiable; 17/17 keys resolve; 0 discrepancies |
| 5z | RAN | 7 glossary entries en/fr/de (parity) |
| 6 | RAN | `tmp/synonym-map-*`; 4 citation/cross-ref edits; 0 bumps |
| 7 | RAN | `tmp/compat-audit-*`; registry compat note; 0 bumps/reductions |
| 8 | RAN | `nix build` exit 0 (2 fix iterations) |
| 9 | RAN | `tmp/quality-*`; WEAK-EVIDENCE pre-fired |
| 10 | RAN | `tmp/coherence-audit-*`; 0 inconsistencies |
| 10a | RAN | `@syn:lactate-gpr81-signaling-model` + registry row |
| 10b | LEGIT-SKIP | "no framing implication" — weak downstream mechanistic/measurement synthesis |
| 11 | RAN | FULL tier; round 1 fixed 1 CRITICAL + HIGH/MEDIUM/LOW; round 2 CONVERGED |
| 12 | RAN | Phase 12 integration record (no changelog.typ) |
| 13 | RAN | commit (see Phase 13 report) |

**0 OMISSION. Ledger clean — Phase 13 may proceed.**

## Phase 13 — Commit

- **3 commits:** `15e7f346` content(paper): integrate lactate GPR81 signaling and lactate-lowering strategies; `4b8dd38e` docs(bib): add lactate signaling and lactate-lowering references; `a097e371` docs(ops): record lactate-gpr81-signaling integration cycle.
- Shared-file entries verified present in HEAD (bib keys, registry block, plan, subtree, queue). No parallel-stream loss.
- Excluded (foreign, untouched): `patients/yannick/self-reported/**` (unrelated WIP).
- Post-commit `nix build`: 0 `error:` lines.
- Queue row `gap-g06-lactate-gpr81-signaling` → `✅ done`.
- **Report:** "Phase 13 complete: 3 commits (15e7f346, 4b8dd38e, a097e371). Shared-file entries verified present. Excluded: patient-record WIP."

## Addendum (2026-09-27, user-requested)

User follow-up: "shouldn't we add sections about how to get rid of lactic acid?" and two physiology questions (soft movement; cold-then-warm). Scope: consolidate the levers + fix a missed compatibility pair.

- **Consolidated lever map** — expanded the intro of ch31 `=== Lactate-Lowering Strategies` into a two-group map: *reduce production* (thiamine, carnitine, MCT/ketogenic) vs *increase clearance* (perfusion/hydration `@spec:lactate-clearance-levers`; NAD⁺ route `@hyp:lactate-clearance` + `@spec:nad-lactate`), plus *substrate support* (D-ribose); flagged bicarbonate `@lim:bicarbonate-buffering-unsupported` and cold `@oq:cold-exposure-lactic-acid` as unsupported/unproven; anchored "safest lever is pacing" (`@sec:pacing`).
- **New env** `@oq:cold-exposure-lactic-acid` (ch32): frames the "cold-exposed people look better" observation as dominated by **selection/reverse causation** (tolerance of cold is a marker of function; those who worsen stop — attrition), lists candidate mechanisms (catecholamine, hormesis) as *not established*, notes cold as a PEM trigger, and rebuts cold-then-warm contrast (cold constricts muscle flow; shivering adds lactate; rewarming risks pre-syncope/mast-cell symptoms). Falsifiable: unselected randomized cold/contrast vs warm control.
- **Movement clarification** in `@spec:lactate-clearance-levers`: explicit "this is not an argument to move more" — safe default is pacing; only a narrow sub-threshold dose might help.
- **Compat gap fixed:** added cross-refs to the pre-existing ch34 clearance entries (`@hyp:lactate-clearance`, `@spec:nad-lactate`) that the Phase 7 audit missed; registry `[compat note lactate-gpr81-signaling-addendum]` row added.
- **Pre-existing bug fixed (surfaced by the new reference):** `hypothesis-13.typ`, `proposal-4.typ`, `proposal-5.typ` were each included **twice** in `ch34 .../sec-07-...typ` (directly + via `subsec-lactate-clearance-dysfunction`), producing duplicate labels `<hyp:lactate-clearance>`, `<prop:hif1a-stabilizer>`, `<prop:gpr4143-agonist>`. Removed the three redundant direct `#include` lines (content preserved via the aggregator). This latent defect had not been caught because nothing referenced those labels.
- **Review:** addendum rigor + clinician passes → **0 CRITICAL/HIGH**; 2 MEDIUM fixed (uncited catecholamine claim hedged; D-ribose moved out of the "clearance" group; rewarming-hazard clause added). Build PASS.
- **Registry:** 2 new rows (`[oq cold-exposure-lactic-acid]`, `[compat note lactate-gpr81-signaling-addendum]`).
- **Commit:** `docs(ops)` + content addendum commit (see Phase 13 addendum hash below).


