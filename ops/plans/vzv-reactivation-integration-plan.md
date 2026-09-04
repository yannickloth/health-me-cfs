# Integration Plan: VZV Reactivation / Rash-Less VZV Disease

**Topic slug:** vzv-reactivation
**Origin:** `/integrate-topic <VZV Nature Reviews Disease Primers 2026 summary>`
**Date created:** 2026-09-04
**Mode:** MIXED/CONCURRENT (user-approved full pipeline run alongside active episwitch cycle)

## Purpose

Evaluate and integrate the 2026 Nature Reviews Disease Primers VZV review
(Bubak et al., DOI 10.1038/s41572-026-00735-5) — rash-less VZV disease (zoster
sine herpete), VZV-driven neurovascular disease (stroke, dementia, Ramsay Hunt),
and diagnostic challenges. Assess ME/CFS relevance against the paper's existing
poly-herpesvirus reactivation model (EBV/HHV-6/VZV, ch08 sec-06) and ALR theme.

## Target chapters (provisional — Phase 2 confirms)

- Part 2 pathophysiology: ch08-immune-dysfunction sec-06 (existing thin VZV
  subsection at lines 94-102)
- Possibly ch14d cross-disease / ch16 causal-hierarchy if a trigger/amplifier role
  emerges
- Note: NOT a treatment topic (antivirals already covered in ch33/ch28; no new
  drug proposed)

## Working-tree MIXED note

Tree dirty with ACTIVE episwitch-crosscondition-hunter2026 cycle (Phases 0-5 done,
5d-13 pending) + committed-unpushed mitochondrial work. Shared files at risk:
`hypothesis-registry.typ`, `bib/viral-infection.bib`, `appendix-h`, `hypotheses-trees.md`.
This cycle will use explicit per-phase file lists; never `git diff`/`git add -A`;
no history rewrite. Own shared-file entries by key/label.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1.4 | Rash-less zoster sine herpete as mimicry/diagnostic-signal of one-sided ME/CFS pain | 3 | 0.22 | ⬜ | cat1 |
| 1.1 | VZV age-at-primary-infection as subtype discriminator | 3 | 0.20 | ⬜ | cat1 |
| 9.1 | Longitudinal anti-VZV-ORF8 IgG as subset-defining marker | 3 | 0.25 | ⬜ | cat9 (single-lineage risk) |
| 2.1 | Subclinical VZV shedding probe (not visible-event diary) | 3 | n/a | ⬜ | cat2 |
| 1.2 | Rash-less VZV as cascade-positioned neurovascular amplifier | 3 | 0.15 | ⬜ | cat1 |
| 5.1 | Recognition: one-sided neuropathic pain warrants VZV work-up | 3 | 0.20 | ⬜ | cat5 |
| 3.1 | Immune-reconstitution timing as threshold-probe study design | 3 | n/a | ⬜ | cat3 |
| 7.1 | Immune-threshold + virus-occupancy reactivation model | 3 | n/a | ⬜ | cat7 |
| 2.3 | Shingles-vaccine natural-experiment analysis | 3 | n/a | ⬜ | cat2 |
| 1.3 | VZV ORF8 dUTPase distinct neuromodulatory signal | 3 | 0.20 | ⬜ | cat1 (single-lineage) |
| 8.1 | VZV childhood-AIS → ME/CFS focal-vascular bridge | 3 | 0.15 | ⬜ | cat8 (contingent) |
| 2.2 | VZV neurovascular imaging probe (contingent/gated) | 3 | n/a | ⬜ | cat2 |
| 3.2 | Shingles-vaccine-as-therapy: NOT to pursue | 3 | 0.05 | ⬜ | cat3 flag |
| 10.1-10.5 | Reasons mechanism may NOT be relevant | — | 0.15-0.56 | ⬜ | cat10 (critical) |
| 11.1-11.2 | Null assessment (null is default) | — | 0.35 | ⬜ | cat11 (critical) |
| 12.1-12.5 | Evidence quality concerns | — | n/a | ⬜ | cat12 (critical) |

Brainstorm file: `ops/brainstorms/brainstorm-vzv-reactivation-2026-09-04.md` (25 ideas). No Gates A/B queues (evidence too weak to escalate).

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed (per-claim certainty applies; ME/CFS-causal
  claim lands at #speculation on 0.30 evidence)
- Brainstorm categories (Phase 4): all 1-12
- Certainty bumps (Phases 6-7): per normal rules
- Phase 9 flags pre-fired: none (numeric PROCEED met)

## Phase reports
- **Phase 0 (2026-09-04):** Standalone invocation. No existing VZV plan/deferred/
  queued topic found. Paper already has VZV subsection ch08 (lines 94-102) +
  extensive herpesvirus content. Bubak 2026 NOT in bib; rash-less VZV + neurovascular
  angles absent. Plan file created (standalone; tracking + MIXED ownership).
  Working tree MIXED (active episwitch cycle) — user approved full VZV run in MIXED mode.
- **Phase 1 (2026-09-04):** 7 papers added to `bib/viral-infection.bib`
  (research_stream=vzv-reactivation; keys verified via grep): Bubak2026VZVInfection,
  Shapiro2009VZVgangliaCFS, Halpin2017VZVdUTPase, Karachaliou2024VZV_PASC,
  Li2026PostCOVIDVZVthreshold, Fullerton2025VIPSII, Livieratos2025VZVstroke.
  Search log at `ops/research/search-log-vzv-reactivation-2026-09-04.md`; summary at
  `ops/research/literature-vzv-reactivation-2026-09-04.md`. 7 appendix-h entries
  appended. Null evidence: no rash-less-VZV→ME/CFS cohort exists; static serology
  nulls (Koelle2002, Buchwald1996, Domingues2023). Cohort overlap: Halpin shares
  Ariza/Williams+Klimas lineage with existing Palomo/Ariza → count once. Build exit 0.
- **Phase 2 (2026-09-04):** Decision **PROCEED** (4 papers ≥0.40 incl. Bubak 0.64
  ≥0.60; 43% <0.40; not uniformly null). Synthesis at `tmp/synthesis-vzv-reactivation-2026-09-04.md`.
  Honest scope caveat: PROCEED on general/long-COVID weight; ME/CFS-direct only via
  cohort-overlapped Halpin + hypothesis-level Shapiro (0.30). Gap-fill of thin ch08
  VZV section, NOT a claim VZV is an independent ME/CFS cause. ME/CFS-causal claim →
  #speculation. Clinical relevance LOW. Active Caps block written (PROCEED).
  Standing epistemic checklist: #1-5 ✓, #6 N/A.
- **Phase 3 (2026-09-04):** Content integrated as gap-fill of thin ch08 VZV section.
  Augmented `ch08 .../subsec-06-herpesviruses.typ`: prose on rash-less VZV disease
  (zoster sine herpete) + VZV neurovascular/stroke content + one `#speculation`
  `<spec:rashless-vzv-mecfs>` (cert 0.30, falsifiability, consequence, severity
  unknown, translation gap general→ME/CFS, competing explanations incl. poly-herpesvirus
  pattern + static serology nulls + consequence-of-immunedysfunction framing @Li2026).
  Added 1 registry row (`spec rashless-vzv-mecfs`) as a complete dated block
  2026-09-04 (registry is MIXED-shared with episwitch cycle; appended after their block).
  Files: ch08 subsec-06-herpesviruses.typ (modified), hypothesis-registry.typ (modified).
  Standing epistemic checklist per-claim: #1 ✓, #2 ✓, #3 ✓ (translation gap stated),
  #4 ✓ (competing explanations enumerated), #5 ✓, #6 N/A (non-treatment).
- **Phase 3a (2026-09-04):** Intermediate build — PASS (exit 0, 0 error lines) after
  fixing a `@Key---` Typst label-absorption error in the registry row.
- **Phase 3b (2026-09-04):** Safety gate — NON-TREATMENT topic → full gate bypassed
  (mechanism claim; no drug proposed). Item 2 severity applicable + stated
  (unknown). Scratch at `tmp/safety-gate-vzv-reactivation.md`. 0 blocked.
- **Phase 3.5 (2026-09-04):** Consequence verification — spec:rashless-vzv-mecfs has
  complete, non-overstated, specific `*Consequence:*` field. PASS.
- **Phase 4 (2026-09-04):** Brainstorm (PROCEED — all categories). 25 ideas at
  `ops/brainstorms/brainstorm-vzv-reactivation-2026-09-04.md`. Cat 1-3,5,7-9
  constructive (13 ideas, cert 0.05-0.25 mostly); cat 10-12 critical (12 ideas)
  keeping directional claims at speculation. Scope discipline: avoided duplicating
  ch08 Phase-3 content (rash-less VZV spec, ORF8 dUTPase, HSV-probe). No Gate A/B
  queues. Plan tracking table populated with all idea rows (status ⬜).
- **Phase 4a (2026-09-04):** Subtree created
  `ops/plans/hypotheses-trees/subtrees/vzv-reactivation.md` (25 nodes with
  usefulness scores). Root index row added (`vzv-reactivation`, 25 ideas, 1
  integrated). Shared index file tracked by slug (episwitch rows untouched).
- **Phase 5 (2026-09-04):** Triage under PROCEED. **Zero new chapter environments**
  integrated. Certainty reassessment: all constructive brainstorm ideas cert ≤0.25
  (below Tier-1 0.45); critical categories 10-12 bypass triage. Phase-3
  deduplication (MANDATORY): ideas 1.4, 5.1, 2.1, 1.2, 1.3 are **covered by
  spec:rashless-vzv-mecfs** (one-sided-pain diagnostic awareness, longitudinal VZV
  PCR probe, ORF8 dUTPase already in content) → marked `⏭️ covered-by`, NOT
  duplicated. Novel research proposals (1.1, 9.1 marker-dev, 3.1, 7.1, 2.3, 8.1,
  2.2) are Tier 3 (cert <0.20 or n/a, usefulness ≤2) → tree-only, NOT chapter text.
  Critical categories already folded into spec's competing-explanations/severity and
  existing lim:dUTPase-evidence-base. ch30/34 tier: **Citation cross-ref only** —
  rash-less VZV is a ch08 pathophysiological addition, NOT a specifiable ≥3-step
  cascade with drug-interception differential diagnosis (antivirals already in
  ch33/ch28; no new cascade hypothesis). Subtree statuses updated: covered nodes ⏭️,
  Tier-3 nodes ↩️.
- **Phase 5d (2026-09-04):** LEGIT-SKIP — ch34 cascade trace not warranted. The
  rash-less VZV content is a ch08 pathophysiological augmentation describing
  well-established general VZV biology, NOT a novel ME/CFS mechanistic hypothesis
  with specifiable ≥3-step cascade + drug-interception differential diagnosis.
  ch30/34 footprint classified "citation cross-ref only" in Phase 5; antivirals
  already documented (ch33 sec-04, ch28). No ch34 sec-* / sec-09 / sec-12 / sec-13
  changes.
- **Phase 5c (2026-09-04):** LEGIT-SKIP — non-pharmacological topic (VZV is a
  virus; no drug/supplement/intervention proposed). Skip condition fired per
  Phase 5c "Skip if: topic is non-pharmacological."
- **Phase 5b (2026-09-04):** Build PASS (exit 0, 0 error lines). No new .typ
  content in Phase 5 (all Phase-5 output = ops/plan/subtree markdown). Intermediate
  build checks: Phase 3a PASS, Phase 5b PASS.
- **Phase 5a (2026-09-04):** Falsifiability sweep on the single new environment
  (spec:rashless-vzv-mecfs) by falsifiability-auditor. Verdict: falsifiability PASS
  (specific markers, directional, refutation condition pre-empts competing
  explanation); consequence field PASS; 10/10 bib keys resolve case-exact. **1
  claim-fidelity discrepancy found + fixed:** the claim "static VZV serology does
  not discriminate ME/CFS" cited @Koelle2002TwinsHSV @Buchwald1996ViralSerologies,
  which are HSV-1/2 (not VZV) nulls. Corrected to cite @Domingues2023HerpesIgG
  (VZV-inclusive UK Biobank panel) in ch08 speculation AND registry; HSV nulls
  reframed as leaving temporal-reactivation question open. Build PASS after fix.
- **Phase 5z (2026-09-04):** Glossary review. Terms in new content already present
  (VZV, HHV-6, HSV, dUTPase, ALR, PEM, CSF, IgG) or inline-defined. Added 1 glossary
  entry: `zoster sine herpete` (category condition; the central novel clinical
  concept). JSON validated (1455 keys).
- **Phase 6 (2026-09-04):** Retrospective adaptation (evidence→claim). Semantic +
  grep sweep across all VZV/varicella/zoster mentions (ch04, ch06, ch08 sec-06 +
  antibody-persistence, ch14a, ch14d, ch17, ch20, ch28, ch33, ch47). Outcome:
  **zero adaptations.** All overlaps are descriptive or consistent; no pre-existing
  ME/CFS-specific claim is reinforced/corrected at the ≥0.60 threshold. Only incoming
  paper ≥0.60 is Bubak (general-population mechanism, not ME/CFS-direct) → does not
  independently warrant a bump to poly-herpesvirus or cause-vs-consequence claims.
  Li2026 (consequence framing, cert 0.38) is <0.40 → below edit floor, no edit.
  Antibody-persistence content (structural VZV gE IgG = LLPC baseline, not alone
  diagnostic of reactivation) is already consistent with the new speculation's caveat.
  Synonym map: tmp/synonym-map-vzv-reactivation.md. Standing epistemic checklist: no
  violations.
- **Phase 7 (2026-09-04):** Cross-hypothesis compatibility. 5 pairs audited (compat
  audit at tmp/compat-audit-vzv-reactivation-2026-09-04.md). Relationships:
  feed-into spec:poly-herpesvirus-alr, hyp:viral-reactivation-consequence,
  hyp:viral-reactivation-bidirectional (VZV rash-less mode parallels ALR);
  independent/consistent: hyp:viral-reactivation-cause,
  spec:combination-antiviral-longcovid-pilot. **No certainty adjustments** — new spec
  cert 0.30 below all bump thresholds (feed-in ≥0.50, independent ≥0.60). No conflicts,
  no bumps, no reductions. Registry [compat note] row added. Bump log empty.
- **Phase 8 (2026-09-04):** Build verification — PASS (exit 0, 0 error lines). All
  Phase 3-7 content files staged by explicit list (MIXED mode).
- **Phase 9 (2026-09-04):** Quality assessment appended to tmp/synthesis. Net cert
  change 0; 1 new falsifiable prediction; small length delta; 0 Tier-1/2 brainstorm
  integrations. Quality flags: NONE (BLOAT no, WEAK-EVIDENCE no [PROCEED numeric],
  CLINICAL-RISK no, G-UNSUSTAINED-CERTAINTY no).
- **Phase 10 (2026-09-04):** Cross-chapter coherence — clean pass. Single-chapter
  (ch08) + registry + glossary; no scattered cross-chapter claims, no certainty
  changes. All new cross-references verified to resolve (@spec:hsv-pem-probe,
  @spec:poly-herpesvirus-alr, @spec:rashless-vzv-mecfs); build 0 errors confirms.
  Coherence audit at tmp/coherence-audit-vzv-reactivation-2026-09-04.md. 0
  inconsistencies.
- **Phase 10a (2026-09-04):** LEGIT-SKIP — only 1 new environment this cycle
  (spec:rashless-vzv-mecfs) which stands alone; no ≥2-environment convergent point
  added in this cycle. Existing ch08 viral content already has its own synthesis.
- **Phase 10b (2026-09-04):** LEGIT-SKIP — no Phase 10a synthesis created, so no
  framing propagation trigger. New content is a downstream consequence/non-actionable
  mechanistic note (rash-less VZV as poly-herpesvirus member), NOT a new trigger/
  amplifier/genetic/diagnostic-bifurcation claim → no abstract/ch16/reading-guide/ch13
  update warranted per decision matrix.
- **Phase 11 (2026-09-04):** Review — LIGHTWEIGHT tier (single chapter, 1 new env,
  PROCEED, no treatment/clinical). Adversarial pass (devil-advocate) on new content
  found 1 HIGH + 1 MEDIUM + 2 LOW; 0 CRITICAL. **Fixed H1** (consequence field re-hedged:
  removed un-guarded "VZV should be considered in ME/CFS" clinical directive; added
  guardrail that static VZV serology non-discriminative + no ME/CFS cohort supports
  invasive testing/antivirals; anchored the heuristic as general-neurology practice).
  **Fixed M1** (title reframed to "Underrecognized Neurovascular Mode within the
  Poly-Herpesvirus Pattern" — foregrounds the novel mode, not VZV membership).
  LOW findings documented (L1 0.30 calibration acceptable; L2 "third member" ok in
  context) — no action. typst-xref check: all 10 citations resolve case-exact to
  bib; all labels resolve; build 0 errors after fixes. CONVERGED (0 HIGH/CRITICAL).

## Phase 12 — Plan Record (2026-09-04)
- **Topic slug + decision:** vzv-reactivation — PROCEED (numeric gate), integrated as
  a disciplined gap-fill of the thin ch08 VZV subsection. NOT a claim VZV is an
  independent ME/CFS cause.
- **Environments added:** 1 speculation (`spec:rashless-vzv-mecfs`) in ch08 + 1
  registry row + 1 compat note. Chapters touched: ch08 (pathophysiology).
- **Bib:** 7 entries added to `bib/viral-infection.bib` (research_stream=vzv-reactivation);
  7 appendix-h annotated entries.
- **Key finding + why it matters:** rash-less VZV disease (zoster sine herpete) is a
  well-established general-population mechanism (rash-less VZV → stroke/neurovascular,
  ~1/3 pediatric AIS) whose rash-less mode parallels the paper's abortive-lytic
  replication theme. VZV is the 3rd member of the poly-herpesvirus co-reactivation
  pattern; its rash-less presentations may be underrecognized in ME/CFS. ME/CFS
  application is hypothesis-level (cert 0.30) — honest speculation, not a causal claim.
- **Phase 9 quality flags:** none.
- **Phase 2 clinical relevance:** LOW.
- **Note:** driving source (Bubak 2026 NRDP review) integrated; not yet PubMed-indexed.

## Phase 12.5 — Completion Gate (Phase Ledger) (2026-09-04)
Every phase resolved to exactly one state. Zero OMISSION.

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file created + validated |
| 1 | RAN | 7 bib keys (verified) + search-log + lit-summary + 7 appendix-h |
| 2 | RAN | synthesis + PROCEED decision + Active Caps |
| 3 | RAN | ch08 spec env + registry row |
| 3a | RAN | build PASS |
| 3b | RAN | non-treatment → gate bypass; severity stated |
| 3.5 | RAN | consequence field present |
| 4 | RAN | brainstorm 25 ideas (cats 1-3,5,7-12) |
| 4a | RAN | subtree + root index row |
| 5 | RAN | triage: zero new envs (covered-by/Tier 3) |
| 5d | LEGIT-SKIP | non-novel-cascade → no ch34 trace |
| 5c | LEGIT-SKIP | non-pharmacological |
| 5b | RAN | build PASS |
| 5a | RAN | falsifiability audit + 1 fidelity fix |
| 5z | RAN | glossary +1 (zoster sine herpete) |
| 6 | RAN | zero adaptations (documented) |
| 7 | RAN | 5 pairs, no adjustments |
| 8 | RAN | build PASS |
| 9 | RAN | quality; flags NONE |
| 10 | RAN | coherence clean |
| 10a | LEGIT-SKIP | single standalone env |
| 10b | LEGIT-SKIP | no framing implication |
| 11 | RAN | lightweight: H1+M1 fixed; converged |
| 12 | RAN | this record |
| 12.5 | RAN | this ledger |

Report: 21 phases RAN, 4 LEGIT-SKIP (5d, 5c, 10a, 10b — conditions recorded above),
0 WAIVED, 0 OMISSION. Build: PASS. Ledger clean — Phase 13 may proceed.

## Phase 1 (Literature Research; 2026-09-04)
- 7 papers found + added to `bib/viral-infection.bib` (research_stream =
  {vzv-reactivation}). Keys VERIFIED against bib: Bubak2026VZVInfection,
  Shapiro2009VZVgangliaCFS, Halpin2017VZVdUTPase, Karachaliou2024VZV_PASC,
  Li2026PostCOVIDVZVthreshold, Fullerton2025VIPSII, Livieratos2025VZVstroke.
- Discounted cert per paper: Bubak 0.64, Shapiro 0.30, Halpin 0.55, Karachaliou
  0.55, Li 0.38, Fullerton 0.56, Livieratos 0.38.
- Direct ME/CFS VZV evidence THIN (Shapiro hypothesis only); support indirect via
  LC serology (Karachaliou) + asymptomatic-reactivation→vasculopathy mechanism
  (Fullerton) + Bubak scaffold. Likely PARTIAL in Phase 2.
- Null findings: no cohort links rash-less VZV→ME/CFS (0 hits); corpus nulls
  reused (Koelle2002TwinsHSV VZV PCR, Buchwald1996). Li2026 frames VZV reactivation
  as consequence (threshold), not causal trigger.
- Cohort overlap: Halpin2017 shares Ariza/Williams+Klimas/Fletcher lab lineage
  with Palomo2026/Ariza2025 (count once); Karachaliou + Fullerton independent.
- Existing-corpus reuse (NOT re-added): Palomo2026herpesvirus,
  Ariza2025polyherpesvirus, Koelle2002TwinsHSV, Buchwald1996ViralSerologies,
  Domingues2023HerpesIgG, Apostolou2022Saliva.
- Search log + literature summary:
  `ops/research/search-log-vzv-reactivation-2026-09-04.md`,
  `ops/research/literature-vzv-reactivation-2026-09-04.md`.
- Appendix-h: 7 annotated entries appended (keys cross-referenced, matched).
- Scrape-registry: PubMed + Crossref session recorded.
- No main chapter (ch08 etc.) files edited (Phase 1 scope).
