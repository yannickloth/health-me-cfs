# Integration Plan: Prolactin Response to Buspirone Challenge in ME/CFS

**Purpose:** Evaluate the replicated finding that ME/CFS patients show a much higher prolactin rise after buspirone (a 5-HT1A serotonin-receptor agonist with dopamine-blocking effects) than healthy controls or depression controls, despite normal baseline prolactin. This line of research was abandoned for years, rediscovered by S4ME members, and a modern replication study has been proposed. Relevant mechanisms: dopaminergic signaling (dopamine is the main brake on prolactin), and estradiol regulation of prolactin (potential link to ~80% female predominance).

**Origin:** Standalone /integrate-topic (blog/S4ME/Forestglip overview; proposed replication study). This is primarily a *research-question / biomarker-challenge / neuroendocrine-mechanism* topic, not a treatment topic.

**Target chapters:** ch08 (neuroendocrine), ch09 (neurological), ch20 (biomarkers/diagnostics), ch26 (research methods/proposed studies), hypothesis registry, ch30 (cascade tracing, category sec-04 neuroinflammatory / sec-06 autonomic — if mechanistic cascade with drug interception is established).

**Pre-identified hypotheses:**
1. ME/CFS patients show exaggerated prolactin response to buspirone (5-HT1A/dopamine D2 challenge), indicating altered serotonergic/dopaminergic regulation — candidate neuroendocrine biomarker / challenge-test discriminator vs depression. (Provisional cert MEDIUM ~0.5; effect large + replicated but small studies, abandoned line.)
2. The exaggerated prolactin response may reflect altered dopamine D2 autoreceptor/hypothalamic dopaminergic tone rather than primarily serotonergic 5-HT1A hypersensitivity.
3. Estradiol-mediated regulation of prolactin may partly explain female predominance — sex-differential mechanism hypothesis.

**Mode:** MIXED (parallel osteoporosis integration in tree). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>`; all phases scoped by explicit file lists. Never `git add -A`.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Exaggerated prolactin response to buspirone (5-HT1A/D2 challenge) in ME/CFS — candidate neuroendocrine biomarker / discriminator vs depression | Research-question | 0.62 (discounted; Sharpe 1996) | 🔵 integrated | 14 papers in bib/endocrine-reproductive.bib; search log + lit summary in ops/research/. Highest ME/CFS-specific discounted 0.62; mechanism reviews 0.64 (general-pop weighted). No post-2010 replication exists (research gap). |
| 2 | Exaggerated prolactin response reflects altered dopamine D2 / hypothalamic dopaminergic tone, not primary 5-HT1A hypersensitivity | Research-question | 0.60 (Bearn 1995); probe-specific (fenfluramine null: Yatham 1995) | 🔵 integrated | Supported by probe-specificity (buspirone D2-blocker positive; fenfluramine releaser null). |
| 3 | Estradiol-mediated regulation of prolactin partly explains ~80% female predominance | Research-question | 0.64 (Ben-Jonathan 2001, general-pop weighted) | 🔵 integrated | Mechanism plausibility only; NO ME/CFS prolactin-by-sex study found (gap — requires direct test). |
| 1.1 | Reduced hypothalamic dopaminergic tone (D2 brake hypoactivity) is the primary defect | hypothesis | 0.55 | ⬜ pending | brainstorm |
| 1.2 | Prolactin as peripheral window on hypothalamic dopamine (challenge-test imaging) | speculation | 0.50 | ⬜ pending | brainstorm |
| 1.3 | Medium-spiny-neuron dopaminergic link (cortico-striatal dopamine surrogate) | speculation | 0.35 | ⬜ pending | brainstorm |
| 1.4 | Buspirone-prolactin as dopaminergic-vs-serotonergic subtype marker | speculation | 0.40 | ⬜ pending | brainstorm |
| 1.5 | State-dependence/recovery: prolactin response as modifiable neuroendocrine signal | speculation | 0.35 | ⬜ pending | brainstorm |
| 2.1 | Sex-stratified replication with estradiol measurement (disambiguates mech a vs b) | research-direction | 0.55 | ⬜ pending | brainstorm |
| 2.2 | Three-arm challenge panel (buspirone + D2-antag + 5-HT1A-agonist) ME/CFS vs depression vs healthy | research-direction | 0.50 | ⬜ pending | brainstorm |
| 2.3 | Cortisol-interaction control (Dinan cortisol-prolactin coupling) in ME/CFS | research-direction | 0.45 | ⬜ pending | brainstorm |
| 2.4 | Severity stratification: does exaggerated response scale with severity/effort intolerance | research-direction | 0.35 | ⬜ pending | brainstorm |
| 3.1 | Domperidone/metoclopramide as pure D2-antagonist comparator probes (diagnostic) | probe | 0.45 | ⬜ pending | brainstorm; D2-isolation probe |
| 3.2 | Haloperidol as central D2-antagonist probe to localize central vs peripheral dopamine | probe | 0.30 | ⬜ pending | brainstorm |
| 3.3 | OSU6162-type dopamine-stabilizer probe: does modulating dopamine normalize prolactin response | probe | 0.30 | ⬜ pending | brainstorm |
| 4.1 | None supported unless dopamine-precursor rationale emerges | supplement | 0.10 | ⬜ pending | brainstorm |
| 5.1 | Dopamine-tone-sensitive challenge as pacing/recovery monitoring tool (diagnostic) | non-pharm | 0.30 | ⬜ pending | brainstorm |
| 6.1 | Buspirone-prolactin challenge as part of standardized neuroendocrine diagnostic panel | access | 0.45 | ⬜ pending | brainstorm |
| 6.2 | Standardized protocol + multi-center validation before clinical use | access | 0.40 | ⬜ pending | brainstorm |
| 7.1 | ODE model of prolactin-dopamine brake (D2 occupancy vs prolactin AUC, estradiol-modulated gain) | model | 0.45 | ⬜ pending | brainstorm |
| 8.1 | Long COVID dopamine bridge (VMAT2-PET, DAT) as independent dopaminergic evidence | cross-disease | 0.45 | ⬜ pending | brainstorm |
| 8.2 | Depression-contrast validation: discriminator only useful if survives modern criteria | cross-disease | 0.40 | ⬜ pending | brainstorm |
| 8.3 | Fibromyalgia/chronic-pain bridge: shared neuroendocrine/dopaminergic dysregulation | cross-disease | 0.30 | ⬜ pending | brainstorm |
| 9.1 | Challenge-test discriminator vs depression (primary diagnostic proposition) | diagnostic | 0.50 | ⬜ pending | brainstorm |
| 9.2 | Baseline prolactin insufficiency / ratio measures as low-cost alternatives | diagnostic | 0.30 | ⬜ pending | brainstorm |
| 9.3 | Prolactin response as objective trial outcome/endpoint | diagnostic | 0.40 | ⬜ pending | brainstorm |
| 10.1 | Artifact of pre-Fukuda criteria / diagnostic contamination | critical | n/a | ⬜ pending | critical-category (bypass triage) |
| 10.2 | Small-sample bias / non-replication (effect may be type-I error) | critical | n/a | ⬜ pending | critical-category |
| 10.3 | Buspirone probe confounded (multi-receptor, cannot localize mechanism) | critical | n/a | ⬜ pending | critical-category |
| 10.4 | Medication/confounder effects (unmeasured drugs, lifestyle) | critical | n/a | ⬜ pending | critical-category |
| 10.5 | Epiphenomenon of known ME/CFS physiology (HPA/stress/autonomic), no novel mechanism | critical | n/a | ⬜ pending | critical-category |
| 10.6 | Sex-bias artifact: ~80% female predominance could drive sex-confounded signal | critical | n/a | ⬜ pending | critical-category |
| 11.1 | Null: exaggerated response has no functional role (minimal consequence for most claims) | critical | n/a | ⬜ pending | critical-category |
| 11.2 | Null: revision map of which claims would need correction | critical | n/a | ⬜ pending | critical-category |
| 11.3 | Null: depression discriminator is the highest-stakes claim under null | critical | n/a | ⬜ pending | critical-category |
| 12.1 | Cohort overlap / non-independence of the "replication" | critical | n/a | ⬜ pending | critical-category |
| 12.2 | Small, single-center, underpowered, no pre-registration | critical | n/a | ⬜ pending | critical-category |

## Phase 1 Results (2026-08-29)
- **Papers found:** 14 (all added to `src/main/typst/mecfs/bib/endocrine-reproductive.bib`, research_stream `prolactin-buspirone`).
- **Search log:** `ops/research/search-log-prolactin-buspirone-2026-08-29.md`
- **Literature summary:** `ops/research/literature-summary-prolactin-buspirone.md`
- **Annotated bib:** appendix-h, `sec:bib-prolactin-buspirone`, 14 entries.
- **Research gap:** zero post-2010 replication of buspirone→prolactin in ME/CFS (the line is 1992–2001 and was abandoned) — supports the proposed replication study.
- **Null evidence:** Yatham 1995 (fenfluramine: no difference) genuine null; Bearn 1995 attenuated hypoglycemia-prolactin. Consistent with D2/dopamine mechanism (probe-specific).
- **Highest discounted certainty:** 0.64 (Ben-Jonathan 2001); highest ME/CFS-specific: 0.62 (Sharpe 1996, Cleare 1995). No paper ≥ 0.70; 3 of 14 < 0.40 → Phase 2 decision likely PARTIAL-to-PROCEED.

## Certainty Bump Log

(empty at creation; populated by Phases 6 and 7)

## Phase 2 Decision (2026-08-29)

**DECISION: PROCEED** — evidence meets the bar: ≥2 papers ≥0.40 (12 after cohort-overlap discount), ≥1 paper ≥0.60 (Sharpe1996 0.62; Cleare1995 0.62), evidence not uniformly null, ≤50% <0.40 (1/14=7%). Cohort-overlap discount (Augment B): KCL cluster (Cleare1995, Bearn1995, Cleare1996) treated as 1 independent source; PROCEED still holds via Sharpe1996 (independent Oxford replication) + Cleare1995 + Bakheit1992 + Yatham1995 (independent null) + physiology reviews.

Synthesis: `tmp/synthesis-prolactin-buspirone-2026-08-29.md`.

Standing epistemic checklist: #1 ✓ / #2 ✓ / #3 ✓ / #4 ⚠ (dopamine-D2 vs estradiol competing → #open-question) / #5 ✓ / #6 ⚠ (MEDIUM utility, research-stage).

Clinical relevance: MEDIUM — mechanistic context + potential diagnostic challenge-test discriminator. Subset: unknown (studies not stratified by severity).

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed (core dopamine-D2 mechanism); estradiol competing mechanism → #speculation/#open-question
- Brainstorm categories (Phase 4): all 1–12 (research/probe topic; treatment categories 3–9 expected sparse)
- Certainty bumps (Phases 6–7): per normal rules (no PARTIAL cap)
- Phase 9 flags pre-fired: none

## Phase 3 Integration (2026-08-29)
- **New section:** ch10 `sec-09-prolactin-axis-and-dopaminergic-regulation/` — `#clinical-finding` (`cf:prolactin-buspirone-exaggerated`, cert 0.62), `#open-question` (`oq:prolactin-buspirone-mechanism`, cert 0.50), `#prediction` (`pred:prolactin-buspirone-replication`), `#limitation` (`lim:prolactin-buspirone-limits`). Added `#include` to ch10 aggregator.
- **ch21** `sec-01/subsec-03`: added `#speculation` `spec:fra-estradiol-prolactin-link` (cert 0.30).
- **ch47** new study `buspirone-challenge-replication/` with `pred:buspirone-challenge-replication` + full protocol (rationale, design, if-confirmed/if-null, limitations). Added `#include` to ch47 aggregator.
- **hypothesis registry:** 4 new rows (cf prolactin-buspirone-exaggerated / oq prolactin-buspirone-mechanism / spec fra-estradiol-prolactin-link / pred buspirone-challenge-replication).
- **Phase 3a build:** PASS (nix build, 0 error).
- Severity applicability stated "unknown — not stratified" (Augment A); diagnostic criteria stated (Augment D); compartment bridging stated (Augment C).
- Standing epistemic checklist: #1 ✓ / #2 ✓ / #3 ✓ / #4 ✓ (competing dopamine vs estradiol → open-question) / #5 ✓ / #6 ✓.

## Phase 3.5 Consequence Verification (2026-08-29)
- All new environments verified to carry `*Consequence:*` field: ch10 sec-09 (4 envs), ch21 spec, ch47 prediction, registry (4 rows).
- Build PASS after Phase 3 staging. Note: a parallel severe-mecfs-management cycle briefly broke the shared appendix-h (2 malformed `*Limitations:*:*` lines); the parallel cycle fixed them; build green again.

## Phase 4 Brainstorm (2026-08-29)
- Brainstorm file: `ops/brainstorms/brainstorm-prolactin-buspirone-2026-08-29.md` (37 ideas: 23 constructive across cat 1-9, 14 critical across mandatory cat 10-12).
- All 12 categories covered; all three mandatory critical categories (10/11/12) present.
- All 37 ideas added as tracking-table rows above (status ⬜ pending).
- PROCEED caps honored (all categories allowed; no suppression).

## Phase 4a Hypothesis Tree (2026-08-29)
- Subtree: `ops/plans/hypotheses-trees/subtrees/prolactin-buspirone.md` (34 nodes with usefulness scores).
- Root index updated: `hypotheses-trees.md` row `prolactin-buspirone` (2026-08-29, 31 ideas, 24 integrated).

## Phase 5 Tiered Integration (2026-08-29)
- Certainty reassessment done (Phase 4 certs adjusted to evidence-supported values).
- **Phase-3 deduplication:** ideas already covered by Phase 3 envs marked ⏭️ (1.1 → oq:prolactin-buspirone-mechanism) or ✅ via ch47 study/comparator-probes (2.1/2.2/2.3/6.1/6.2/8.2/9.1 → pred:buspirone-challenge-replication; 3.1/3.2 → ch47 comparator-probes subsection).
- **New environments integrated (brainstorm origin):** ch10 sec-09 gained 4 `#speculation` envs — `spec:prolactin-dopamine-window` (idea 1.2, cert 0.45), `spec:prolactin-msn-link` (1.3, 0.35), `spec:prolactin-subtype-marker` (1.4, 0.35), `spec:long-covid-dopamine-bridge` (8.1, 0.40). All carry falsifiability + consequence + `(Origin: brainstorm)`.
- **Critical categories (10-12):** bypass triage; themes already covered by `lim:prolactin-buspirone-limits` + `oq:prolactin-buspirone-mechanism` (which enumerate competing mechanisms, cohort overlap, diagnostic-era limits, null implications) — marked ✅ in subtree.
- **Tree-only (Tier 3 / low-certainty, ↩️):** 1.5, 2.4, 3.3, 4.1, 5.1, 7.1, 8.3, 9.2, 9.3 — recorded in subtree for future cycles, not integrated.
- **Drug-interaction note (Phase 5 gate):** comparator probe ideas (3.1 domperidone/metoclopramide, 3.2 haloperidol) recorded in ch47 as supervised single-dose *research* probes with explicit safety caveat — NOT clinical recommendations; interaction profile not checked (web unavailable), flagged for prior review.
- **Phase 5b build:** PASS after staging (intermittently blocked by parallel cycles' in-flight work; resolved by them, build green at 0 errors).
- ch30 relevance triage: no ch30 cascade (this is a diagnostic/research-probe topic; no drug-treatment cascade with interception established). Ch30 tier: NONE for mechanistic cascade; the challenge is a diagnostic probe (ch10/ch20/ch47), not a ch30 mechanism cascade.
- Standing epistemic checklist: no violations.

## Phase 5a Falsifiability (2026-08-29)
- `falsifiability-auditor` agent absent from `.opencode/agents/` (skill registry lists it but file missing) → **user-approved manual inline verification**.
- All 4 new brainstorm speculations have explicit `*Falsifiable prediction:*`; both prediction envs have "falsified if" statements. Falsifiability PASS.
- Checklist #1-2 cross-check: all 14 bib keys used in new content resolve case-exact in `bib/endocrine-reproductive.bib`; claim-fidelity consistent with literature summary.

## Phase 5z Glossary (2026-08-29)
- Added 8 new glossary entries: Prolactin, Buspirone, Estradiol, Dopamine, Serotonin, Fenfluramine, Lactotroph, TIDA. (Well under the >20-term guard.)
- Terms already present (not re-added): D2, VMAT2.
- Other new acronyms (AUC, D2, 5-HT1A) either already in glossary or false-positive/covered by existing entries.

## Phase 6 Retrospective Adaptation (2026-08-29)
- Synonym map: `tmp/synonym-map-prolactin-buspirone.md`; coverage: prolactin (7 files), buspirone (6), dopamine/MSN (ch09/ch14/ch18/ch19/ch34); <30 matches, no truncation.
- **1 REINFORCEMENT (citation insertion only, NO certainty bump):** ch09 `subsec-01-neurotransmitter-abnormalities` Dopaminergic Dysfunction section — added Sharpe1996 + Cleare1995 (both 0.62) as independent human D2-level evidence + cross-ref to ch10 `@sec:prolactin-buspirone`. No bump: pre-existing dopamine claims already carry higher-certainty evidence (VMAT2 obs cert 0.72); incoming 0.62 permits citation; bump skipped per "never silently inflate" + conservative floor.
- **No-action overlaps:** ch18 ssri-paradox (buspirone-fatigue claim tangential to prolactin-response finding); ch34 biochemical-flashlight (already covers prolactin-as-dopamine-probe; cross-referenced from ch10); ch09 MSN content (reinforced via new `spec:prolactin-msn-link` cross-ref).
- Standing epistemic checklist: no violations.

## Phase 7 Cross-Hypothesis Compatibility (2026-08-29)
- Audit: `tmp/compat-audit-prolactin-buspirone-2026-08-29.md`. 7 pairs audited: 3 reinforcement, 1 feed-into, 0 conflict, 3 independent (1 reclassified from initial assessment).
- Certainty adjusted: 0 bumps, 0 reductions, 1 tension flagged (prolactin-D2-hypothalamic vs Aregawi normal-CSF-DA indices — different compartments, documented, mirrors ch09's own open tension; no change).
- Bump log: no entries (per-cycle cap trivially respected; no adjustments approved/applied).
- Standing epistemic checklist: no violations.

## Phase 8 Build (2026-08-29)
- Build PASS (0 error). Intermediate checks: Phase 3a PASS, Phase 5b PASS (after transient parallel-cycle staging conflicts resolved).

## Phase 9 Quality (2026-08-29)
- Net certainty change: 0 (no bumps/reductions — conservative cycle).
- Reinforcement:contradiction: 1:0 (citation-only reinforcement; no contradictions found).
- New falsifiable predictions: 6 (4 specs + 2 prediction envs).
- Length delta: ~1 new section (74 lines) + 1 spec + 1 study + 1 reinforcement sentence + 8 registry rows + 8 glossary entries — gross additions moderate.
- Tier distribution: 8 new hypotheses/speculations; tree-only 9 (↩️); covered 17 — healthy spread, not verbose.
- Clinical relevance: MEDIUM (from Phase 2).
- Quality flags: NONE (BLOAT no — 8 new hypotheses; WEAK-EVIDENCE no — PROCEED, 7% papers <0.40; CLINICAL-RISK no — non-treatment, comparator probes caveated; G-UNSUSTAINED-CERTAINTY no — 0 bumps).

## Phase 10 Coherence (2026-08-29)
- Audit: `tmp/coherence-audit-prolactin-buspirone-2026-08-29.md` — 0 inconsistencies; certainty/terminology consistent; all cross-refs resolve (build); no contradictions; consequence fields present.

## Phase 10a Synthesis (2026-08-29)
- `#synthesis` env `syn:prolactin-buspirone-model` added to ch10 sec-09, condensing the 8 environments into the convergent model (finding → mechanism question → dopamine-window/MSN/Long-COVID/subtype implications → replication as decisive test). Cross-refs ≥2 env labels; open question stated; established-vs-speculative distinguished; Consequence field present; no new citations. **Auto-added per user's standing default** (2026-08-29: "make this automatic instead of each time asking me"); SKILL.md Phase 10a trigger updated accordingly. Build PASS.

## Phase 10b Strategic Framing (2026-08-29)
- Synthesis content type: research-direction/diagnostic-probe proposal (speculative mechanism, unreplicated in modern era). It changes no trigger-vs-amplifier classification, no causal-hierarchy claim, no clinical strategy. Per propagation rule (downstream/non-actionable synthesis): **no framing propagation needed** — abstract/ch16 intro/reading guide/ch13 unchanged. Explicit note recorded (this is the documented valid no-op outcome).

## Phase 11 Review to Convergence (2026-08-29)
- **Tier: Full** (multi-chapter integration, PROCEED with 8 new environments).
- **11a (convergence):** Round 1: 1 HIGH, 2 MEDIUM, 1 LOW (dominant: Cleare-1995 d-fenfluramine study misattributed as buspirone evidence across ch09/registry/ch47; probe-specificity "localizing" overreach; oq certainty annotation). **11b (6 adversarial personas: cynic/sophist/strawman/reductionist/clinician/devil's-advocate):** Round 1: 1 CRITICAL (nausea confound unaddressed — differential emetic response could explain the whole signal), 5 HIGH (Cleare misattribution; discriminator asserted on wrong probe; one-dial dopamine treatment in synthesis; haloperidol outside safety caveat; x2 overlap), plus MEDIUMs (powering-on-uncertain-effect, independence title vs overlap, abandonment narrative missing fenfluramine-withdrawal, "not anticipated" unsourced, "seductive" wording).
- **Fixes applied** (ch10 sec-09, ch47 study, ch09 dopamine paragraph, registry block): Cleare 1995 reattributed to d-fenfluramine everywhere + buspirone-vs-depression stated as never tested; nausea added as 4th mechanism candidate + required replication covariate; synthesis reframed "candidate model"; dopaminergic subsystems stated distinct with untested co-variation; haloperidol brought inside safety caveat with QT/EPS/NMS warning; independence claims scoped (Bakheit/Sharpe independent; Cleare cluster not); "not anticipated" sourced to secondary accounts; abandonment reasons (fenfluramine 1997 withdrawal, null-replication risk) acknowledged; powering caveat added; severity caveat extended to severe/very-severe burden note in ch47 limitations; oq certainty → n/a per open-question convention.
- **Round 2 (verification pass):** all prior findings RESOLVED; ZERO new HIGH/CRITICAL. **CONVERGED.**
- **11c (typst):** build PASS 0 errors; all 11 citation keys verified case-exact against bib; all labels/includes resolve. (Executed via round-2 verification task + build rather than separate review-typst skill invocation — method noted.)
- Gate C: no missing topics surfaced. Standing epistemic checklist: no violations.

## Phase 12 Plan Record (2026-08-29)
- **Topic:** prolactin-buspirone — **Decision: PROCEED**.
- **Environments added:** ch10 new `sec-09-prolactin-axis-and-dopaminergic-regulation` (cf + oq + pred + 4 specs + lim + syn = 8 envs); ch21 `spec:fra-estradiol-prolactin-link`; ch47 new `buspirone-challenge-replication` study (pred + protocol). Chapters touched: ch09 (reinforcement sentence), ch10, ch21, ch47. Bib: 14 entries in `endocrine-reproductive.bib`. Registry: 9 rows.
- **Key finding:** the replicated-but-abandoned exaggerated buspirone→prolactin response in ME/CFS; the ME/CFS-vs-depression contrast was never measured with buspirone (d-fenfluramine only); nausea is a live confound; a modern replication with depression arm, sex stratification, and nausea recording is the cheap decisive test.
- **Phase 9 quality flags:** NONE. **Phase 2 clinical relevance:** MEDIUM (research-stage discriminator; not actionable clinically today).
- **Provenance note:** the S4ME/Forestglip overview and blog post were the *topic origin* only — no unverifiable blog claims were integrated as facts; all claims trace to the 14 peer-reviewed papers (the "not anticipated in advance" assurance is attributed to secondary accounts, not asserted as fact).

## Notes
- Related but distinct plans: `dopamine-nigrostriatal-long-covid-integration-plan.md` (VMAT2-PET), `peripheral-serotonin-depletion-integration-plan.md`, `serotonergic-bottleneck-integration-plan.md`. This topic is distinct: buspirone challenge → prolactin response as a discriminative probe.
- Potential ch30 relevance: if a mechanistic cascade (5-HT1A / D2 → hypothalamic dopamine tone → prolactin) is established with a drug interception point, route via ch30 Category Router.
- Replication-study proposal (point 9 of topic) → ch26 proposed-studies / open-question.

## Phase Ledger (Phase 12.5 — 2026-08-29)

| Phase | State | Evidence |
|-------|-------|----------|
| Tree check | RAN | MIXED mode user-confirmed |
| 0 | RAN | this plan file created + validated |
| 1 | RAN | search-log + literature-summary in ops/research/; 14 bib keys verified case-exact; appendix-h; scrape-registry row |
| 2 | RAN | PROCEED; tmp/synthesis-prolactin-buspirone-2026-08-29.md; Active Caps block |
| 3 | RAN | ch10 sec-09 (4 envs), ch21 spec, ch47 study, registry 4 rows |
| 3a | RAN | build PASS |
| 3b | RAN | tmp/safety-gate-prolactin-buspirone.md — non-treatment topic, item-2-only gate, all PASS |
| 3.5 | RAN | all envs carry *Consequence:* |
| 4 | RAN | brainstorm 37 ideas, all 12 categories; plan rows added |
| 4a | RAN | subtree prolactin-buspirone.md + root index row |
| 5 | RAN | triage; +4 brainstorm specs (ch10), registry +5 rows, ch47 comparator-probes subsection |
| 5b | RAN | build PASS (transient parallel-cycle staging conflicts, resolved) |
| 5d | LEGIT-SKIP | diagnostic/research-probe topic; no drug-treatment cascade with interception; ch30 tier = NONE |
| 5c | LEGIT-SKIP | buspirone is a single-dose diagnostic probe, not a treatment; no ch24 treatment-response entry warranted |
| 5a | RAN | falsifiability-auditor agent ABSENT from .opencode/agents/ → user-approved manual inline verification; all specs/predictions falsifiable; checklist #1-2 cross-checked |
| 5z | RAN | 8 glossary entries added (<20 guard) |
| 6 | RAN | 1 citation-only reinforcement (ch09); synonym map; 3 no-action overlaps; 0 bumps |
| 7 | RAN | compat audit 7 pairs; 0 bumps/reductions, 1 tension flagged; bump log empty |
| 8 | RAN | build PASS 0 error |
| 9 | RAN | quality flags NONE |
| 10 | RAN | coherence audit, 0 inconsistencies |
| 10a | RAN | syn:prolactin-buspirone-model added; auto-added per user standing default (SKILL.md trigger updated per user instruction) |
| 10b | RAN (no-op) | explicit note: synthesis is research-direction/downstream; no framing propagation |
| 11 | RAN | Full tier; round 1 found 1 CRITICAL + 5 HIGH → fixed; round 2 zero HIGH/CRITICAL → CONVERGED; 11c via round-2 typst/citation verification + build (method noted) |
| 12 | RAN | plan record above (no changelog.typ) |
| 12.5 | RAN | this ledger |
| 13 | RAN | 3 commits: f5f4e7e3 (content), abe2432d (ops), 699e78bd (config); shared-file entries verified shipped in HEAD via parallel commits; post-commit build PASS |

## Phase 13 Report (2026-08-29)
- Commits: `f5f4e7e3` content (7 files), `abe2432d` ops artifacts (5 files), `699e78bd` skill config (1 file). No `git add -A`; explicit lists only; no history rewrite.
- Shared-file ownership re-check: my bib/appendix-h/glossary/hypotheses-trees/scrape-registry entries were swept into parallel streams' commits and VERIFIED present in HEAD (grep per key) — noted per skill rule; nothing lost.
- Excluded: parallel cycles' uncommitted files (severe-mecfs, ops/README, integration-guides cleanup deletions, glossary-de, web styles) left untouched.
- Post-commit: `git status` shows 0 prolactin files; `nix build` 0 errors.

0 OMISSION. 0 WAIVED.
