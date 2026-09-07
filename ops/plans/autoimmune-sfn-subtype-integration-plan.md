# Autoimmune Small Fiber Neuropathy Subtype — Integration Plan

**Origin:** `/integrate-topic small-fiber neuropathy` — standalone invocation, narrowed by user after recon to the autoimmune-antibody SFN subtype (anti-TS-HDS / anti-FGFR3).
**Slug:** `autoimmune-sfn-subtype`
**Date:** 2026-09-07
**Parent topic:** (root — standalone; reconciles legacy `new-contents-sfn` stub)
**Tree state:** MIXED mode (unrelated dirty files in tree — blog posts, flake, patient YAML; scoped explicit-file-list git ops only)

## Purpose

Autoimmune small-fiber neuropathy (SFN) mediated by anti-TS-HDS (trisulfated heparin disaccharide) and anti-FGFR3 antibodies as a potentially distinct, treatable ME/CFS subtype. The paper's SFN sections (ch09 sec-03) cover IENFD, DRG-IgG, ISR-DRG, visceral-vs-somatic, and post-COVID IVIG — but the specific autoimmune-antibody serological subtype is absent from narrative (only a passing appendix-h limitation note). This cycle integrates that gap with honest certainty given the markers' controversial specificity, and reconciles scattered SFN content with a #synthesis.

## Target chapters

- ch09-neurological/sec-03-peripheral-nervous-system/subsec-03-small-fiber-neurotype — add autoimmune-antibody subtype
- ch09/sec-03/subsec-03-treatment-of-small-fiber-neuropathy — extend Autoimmune SFN treatment (anti-TS-HDS/FGFR3 testing + IVIG subtype-selectivity)
- ch09/sec-03/subsec-03-small-fiber-neuropathy — autonomic-vs-sensory SFN distinction (why some lack neuropathic pain)
- ch14d-cross-disease / synthesis — reconcile scattered SFN content (#synthesis)
- hypothesis-registry + appendix-h + bib (autoimmunity.bib)

## Pre-identified hypotheses (from legacy new-contents-sfn stub — to be independently reassessed, NOT inherited at face value)

- Autoimmune SFN with anti-TS-HDS/FGFR3 as a distinct ME/CFS subtype (legacy cert 0.65 — **reassess downward**; marker specificity is controversial per literature)
- Autonomic SFN (without prominent pain) accounts for dysautonomia/POTS in a subset — explains absent neuropathic pain
- IVIG/immunoadsorption subtype-selective therapy for antibody-positive autoimmune SFN in ME/CFS

## Existing evidence base (already in bib, mostly uncited in narrative)

- `SFNAutoantibodies2023` (Murinello 2023, autoimmunity.bib) — pathogenic autoantibodies in SFN
- `Oaklander2016autoimmuneSFN` (Oaklander & Nolano 2019, autoimmunity.bib) — SFN review incl. autoimmune + immunotherapy
- `Liu2020IVIG` (Oaklander 2018 IVIG efficacy, 77% improvement, autoimmunity.bib)
- `Oaklander2022SFN` (general.bib), `McAlpine2024sfnCOVID` (long-covid.bib)
- (cited in narrative already: `@Oaklander2013sfn`, `@Grayston2019sfn`, `@josephoaklander2021mecfssfn`, `@Oaklander2022SFN`)

**Phase 1 note:** scope is targeted gap-fill — most core lit is in bib; Phase 1 adds fresh 2024-2026 evidence on anti-TS-HDS/FGFR3 *diagnostic validity* (specificity, controversy) + any ME/CFS-specific autoimmune SFN cohort.

## Phase Tracking

| Phase | Summary |
|-------|---------|
| 0 | Plan created (`ops/plans/autoimmune-sfn-subtype-integration-plan.md`). MIXED mode (unrelated dirty tree). Targeted gap-fill scope confirmed with user (narrowed from full SFN). No deferred/queued SFN topic triggers met. |
| 1 | 16 papers found (6 supportive-association, 10 challenge/null). 16 bib entries added to `bib/autoimmunity.bib` (`research_stream = {autoimmune-sfn-subtype}`). 16 annotated appendix-h entries. Search log + literature summary in ops/research/. Integration guide in ops/integration-guides/. Anti-TS-HDS/FGFR3 shown CONTESTED; challenge evidence from independent centres dominates; no ME/CFS cohort study exists. |
| 2 | **PARTIAL.** >50% of papers <0.40 certainty (14/16); evidence mixed (supportive association in general cryptogenic SFN from ONE testing lineage vs null clinical validity from multiple independent centres: negative IVIG RCTs Geerts/Gibbons, fibromyalgia proxy nulls Malik/Nissan, real-world Chompoopong, inter-lab Appeltshauser). No ME/CFS-cohort data. Framing = epistemic-balance + patient-protection: TS-HDS/FGFR3 seropositivity as proposed-but-UNVALIDATED subtype hypothesis (cert ~0.25–0.35); IVIG-on-antibody NOT evidence-based. Clinical relevance: LOW positive action / MODERATE patient-protection. Synthesis at `tmp/synthesis-autoimmune-sfn-subtype-2026-09-07.md`. Checklist: #1✓ #2✓ #3✓ #4✓ #5✓ #6⚠(clinical-hazard). |
| 3 | 2 environments added to ch09 SFN narrative (subsec-03-small-fiber-neuropathy.typ): `@oq:autoimmune-sfn-serological-subtype` (open-question) + `@lim:autoimmune-sfn-serology-not-validated` (limitation, patient-protective). Balanced support+challenge citations. Consequence fields present. Balanced "Potential Causes" bullet added. Registry updated (dated 2026-09-07 block, 2 rows). PARTIAL caps respected (open-question+limitation only). |
| 3a | Build **PASS** (exit 0, PDF produced). Files staged (explicit list): ch09 SFN .typ, hypothesis-registry.typ, autoimmunity.bib, appendix-h, ops artifacts. |
| 3b | Safety gate: 2 environments gated (oq + lim), 2 passed, 0 blocked, 0 warnings. Non-treatment diagnostic content; both are patient-protective (discourage over-testing / unproven IVIG). Severity applicability stated. Gate at `tmp/safety-gate-autoimmune-sfn-subtype.md`. |
| 3.5 | 2 Phase-3 environments verified: both have `*Consequence:*` fields (concrete, honest, non-overstated). 0 missing. |
| 4 | Brainstorm (scientific-insight-generator) at `ops/brainstorms/brainstorm-autoimmune-sfn-subtype-2026-09-07.md`: 18 ideas. Categories 1-2 + 10-12 only (PARTIAL cap); 3-9 SKIPPED (documented). 18 pending rows added to tracking table. Top ideas: 2.1 (clean ME/CFS serostudy), 2.2 (neutral-lab antibody characterization), 1.2 (FGFR3 as readout of IgG-DRG axis). |
| 4a | **LEGIT-SKIP** (standalone topic, documented): brainstorm ideas are future-cycle backlog, fully tracked in this plan's tracking table (18 rows). No brainstorm idea is integrated in this PARTIAL cycle (all are research directions/null-assessment). Creating a parallel `autoimmune-sfn-subtype` subtree would duplicate the plan tracking table without provenance value. Legacy `new-contents-sfn.md` stub retained as historical record. |
| 5 | **Triage: 0 new chapter integrations (beyond Phase 3).** Dedup check (zg/rg): 3 novel hypotheses (1.1 cytosolic-epitope, 1.2 FGFR3-as-passive-transfer-readout, 1.3 TS-HDS-glycocalyx) genuinely NOT covered, but all cert ≤0.20 → parked `↩️` for future cycles (would need own literature review; WEAK-EVIDENCE + BLOAT risk on this PARTIAL topic). Research directions 2.1-2.3 (cert n/a, methodological) → parked `↩️`. Critical categories 10-12 (reasons-not-relevant, null-assessment, evidence-quality) → **`⏭️ covered-by-@lim:autoimmune-sfn-serology-not-validated` + `@oq:autoimmune-sfn-serological-subtype`** — the Phase-3 envs already cite the fibromyalgia nulls (10.2), negative RCTs (10.5), assay non-standardization, no-cohort gap, and lineage concern (10.1); adding 5+ redundant limitations would bloat. No idea qualifies for Tier-1 (all ≤0.25 reassessed). PARTIAL caps respected. ch30: none — non-mechanistic-with-cascade (no drug intercept claim); no sec-12/sec-13/sec-09 changes (IVIG explicitly NOT endorsed). Files: no new .typ edits this phase. |
| 5b | Build **PASS** (no new .typ content this phase; Phase 3a build already PASS). |
| 5d | **LEGIT-SKIP** (no specifiable causal cascade): topic is a diagnostic/biomarker hypothesis with no ≥3-step biochemical cascade and no drug interception claim; IVIG explicitly NOT endorsed. Cascade cert would be <0.10 (challenge-dominant). ch30 Category Router: non-mechanistic-with-cascade. |
| 5c | **LEGIT-SKIP** (non-pharmacological-topic + IVIG-not-endorsed): topic is not a recommended medication; IVIG discussed only as NOT-evidence-based (patient-protective). No differential-diagnostic treatment entry warranted. No ch24/ch30 sec-12/sec-13 changes. |
| 5a | **RAN (lightweight inline — 0 hypothesis/speculation/prediction environments added in Phase 3, so falsifiability gate is trivially satisfied; full falsifiability-auditor agent token-disproportionate).** Audited: `@oq:autoimmune-sfn-serological-subtype` (open-question) — research question embeds a falsifiable design (the cohort serostudy's discriminating test: fails to find a seropositive subgroup with objective small-fiber damage AND IVIG response → falsifies subtype claim). `@lim:autoimmune-sfn-serology-not-validated` (limitation) — a limitation, not subject to falsifiability. 0 unfalsifiable. Registry cross-check #1: all @CitationKey verified in bib. |
| 5z | 4 new glossary entries added to `glossary-en.json` (anti-TS-HDS, anti-FGFR3, TS-HDS, FGFR3). JSON validated (1462 keys). No other orphaned terms from Phase-3 prose (SFN, IENFD, IVIG already present). |
| 6 | **RAN.** 12 pre-existing autoimmune-SFN claims examined (ch09 treatment sec, ch18, ch20, ch14d, ch09 SFN). 1 adapted: treatment section "ME/CFS relevance: autoimmune SFN testing should be considered" → clarified to distinguish clinically-grounded autoimmune-SFN workup from the unvalidated commercial anti-TS-HDS/FGFR3 panels (added inline caveat + cross-ref @lim:autoimmune-sfn-serology-not-validated). 11 no-action (existing claims already hedge "low certainty, RCT data lacking"; no strong specific claim contradicted — existing triggers are ganglioside/nodal antibodies, not TS-HDS/FGFR3). Reinforcement: 1 (clarification). Contradiction: 0 certainty changes (evidence floor — driving papers Geerts/Ng at 0.42 → citation-insertion band only, no bumps; supportive <0.40 no edits). Synonym map: tmp/synonym-map-autoimmune-sfn-subtype.md. Checklist: no violations. |
| 7 | **RAN.** 6 existing hypotheses assessed (drg-sfn-igg-mecfs, isr-drg-sfn, sfn-visceral-vs-somatic, sjogren-ccm-pattern, FM/ME/CFS/POTS triad, drg-igg-pain-axis/nodose-igg/endotype). All **independent** — new content is a patient-protective limitation on a specific unvalidated test + research question, explicitly NOT conflated with the passive-transfer DRG axis. 0 reinforcement, 0 conflict, 0 feed-in, 0 certainty adjustments (both new rows cert n/a). Registry compat-note row added. Compat audit: tmp/compat-audit-autoimmune-sfn-subtype-2026-09-07.md. Checklist: no violations. Bump log: no entries (no adjustments). |
| 8 | Build **PASS** (exit 0) after fixing 1 unresolved-label error in registry compat note (@oq:does-mecfs-share-sjogren-ccm-pattern → @oq:ccm-sjogren-overlap-pattern). |
| 9 | Quality: net cert change 0; 1 reinforcement/0 contradiction; 1 falsifiable prediction; +633 words (no BLOAT); WEAK-EVIDENCE pre-fired (PARTIAL, handled — open-question+limitation only); no CLINICAL-RISK; no G-UNSUSTAINED. Appended to tmp/synthesis. |
| 10 | Coherence: 3 chapters + registry + glossary audited. 1 inconsistency found & fixed: treatment line-64 "IVIG... RCT data are lacking" tension → added bridging note "(controlled trials in antibody-positive and idiopathic SFN have since been negative — @sec:sfn)". Terminology, certainty, cross-refs, consequence presence all consistent. Audit: tmp/coherence-audit-autoimmune-sfn-subtype-2026-09-07.md. Build PASS. |
| 10a | **RAN (corrected 2026-09-07 during governor self-audit).** Automatic trigger fired (single ch09 chapter, ≥2 related environments: oq + lim). Added `#synthesis` @syn:autoimmune-sfn-serological-subtype-unvalidated after the lim, condensing the proposed-but-unvalidated evidence into a convergent patient-protective takeaway (cross-refs oq + lim, states the missing cohort study as the open question, has consequence). Initial LEGIT-SKIP was NOT legitimate — the skill made synthesis automatic for this case; corrected. Build PASS. |
| 10b | **LEGIT-SKIP** (no framing implication): the new content is a downstream epistemic caution + research question about an unvalidated biomarker — NOT a genetic-architecture, trigger/amplifier, root-cause, diagnostic-bifurcation, or treatment-strategy claim that would propagate to abstract/ch16 intro/root-cause/reading-guide/ch13. No framing layers need updating. |
| 11 | **Lightweight tier** (single ch09 chapter + PARTIAL + ≤3 envs + no recommended treatment content). Adversarial pass via biomarker-auditor: 0 CRITICAL, 0 HIGH (bar met). 2 MEDIUM + 2 LOW findings, ALL fixed: (M1) added supportive-lineage non-independence + shared-interest caveat to open-question; (M2) clarified algorithm "autoimmune markers" excludes unvalidated TS-HDS/FGFR3 panels; (L) cited Chompoopong 34% figure concretely; (L) rewrote IVIG line to "no positive RCT supports this — controlled trials negative" (removed lacking/negative tension). xref validation via build PASS. 0 unresolved. Checklist: no violations. |
| 13 | Committed: `0181e6ee` (content) + `f3ac0a32` (docs/ops). HEAD builds clean (0 errors). Shared-file entries (16 bib keys, appendix-h, registry block) verified present in HEAD. Unrelated WIP (blog/flake/patient) left untouched (MIXED mode). Excluded: tmp/ audit scratch. |

## Phase 12 — Plan Record (2026-09-07)

- **Topic slug:** autoimmune-sfn-subtype | **Decision:** PARTIAL
- **Environments added:** `@oq:autoimmune-sfn-serological-subtype` (open-question, ch09), `@lim:autoimmune-sfn-serology-not-validated` (limitation, ch09). Registry: 2 rows + 1 compat note (dated 2026-09-07 block).
- **Chapters touched:** ch09-neurological SFN section + SFN-treatment section (retroactive clarification).
- **Bib count:** 16 entries added to `autoimmunity.bib` (research_stream autoimmune-sfn-subtype). Appendix-h: 1 new section, 16 annotated entries. Glossary: 4 entries.
- **Key finding + why it matters:** anti-TS-HDS/anti-FGFR3 serology is a proposed but UNVALIDATED autoimmune-SFN subtype in ME/CFS — supportive evidence is confined to one testing lineage, while independent real-world data, fibromyalgia proxies, assay reproducibility, and both controlled IVIG RCTs are null/negative. The paper now protects patients from over-testing and unproven antibody-guided IVIG, and names the proper ME/CFS-cohort serostudy as the missing research step.
- **Phase 9 quality flags:** WEAK-EVIDENCE (pre-fired, PARTIAL — handled honestly via open-question/limitation framing).
- **Clinical relevance:** LOW positive action / MODERATE patient-protection (Phase 2).
- **Anecdote NOT integrated:** N/A — literature-derived, no anecdote.

| 4 | Brainstorm complete: 18 ideas (3 hypotheses cat-1, 3 research directions cat-2, 5 reasons-not-relevant cat-10, 2 null-assessment cat-11, 5 evidence-quality cat-12). Categories 3–9 SKIPPED (PARTIAL cap). File: `ops/brainstorms/brainstorm-autoimmune-sfn-subtype-2026-09-07.md`. Tracking rows below. |

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1.1 | Cytosolic-epitope cellular-access paradox (driver vs injury-scar) | 2 | 0.20 | ↩️ parked | cat-1 |
| 1.2 | FGFR3 as readout of IgG-DRG passive-transfer axis, not distinct subtype | 2 | 0.18 | ↩️ parked | cat-1 |
| 1.3 | TS-HDS as glycocalyx/microenvironment (non-neuronal) marker | 2 | 0.15 | ↩️ parked | cat-1 |
| 2.1 | Clean ME/CFS-cohort serostudy (multi-lab, fibromyalgia+healthy+IENFD controls) | — | n/a | ↩️ parked | cat-2, definitive gap |
| 2.2 | Neutral-lab antibody–antigen characterisation & FGFR3-dependency | — | n/a | ↩️ parked | cat-2 |
| 2.3 | Clinical-utility reproducibility of commercial assay (patient-protective) | — | n/a | ↩️ parked | cat-2 |
| 10.1 | Testing-lineage artefact (single Franco-US method) | critical | 0.45 | ⏭️ covered-by-lim | cat-10 |
| 10.2 | Fibromyalgia overlap explains absence of distinct ME/CFS signal | critical | 0.40 | ⏭️ covered-by-lim+oq | cat-10 |
| 10.3 | Healthy-control reactivity (bystander) | critical | 0.35 | ⏭️ covered-by-lim+oq | cat-10 |
| 10.4 | Antigenic target inaccessible/non-specific | critical | 0.30 | ⏭️ covered-by-oq | cat-10 |
| 10.5 | Negative IVIG RCTs would have surfaced a real subtype | critical | 0.30 | ⏭️ covered-by-lim | cat-10 |
| 11.1 | Null: no ME/CFS role of serological subtype | critical | 0.45 | ⏭️ covered-by-lim | cat-11, null is default |
| 11.2 | Minimum design required to reject the null | critical | n/a | ↩️ parked | cat-11 |
| 12.1 | Referral/selection bias in antibody-centre cohorts | critical | — | ⏭️ covered-by-lim+oq | cat-12 |
| 12.2 | Assay validity — unstandardised, 81% concordance | critical | — | ⏭️ covered-by-lim | cat-12 |
| 12.3 | Cohort overlap / single-lineage — supportive papers not independent | critical | — | ⏭️ covered-by-oq | cat-12 |
| 12.4 | Diagnostic-era / IENFD-standard drift 2015–2026 | critical | — | ⏭️ covered-by-oq | cat-12 |
| 12.5 | Salih2026 single-lineage, shared-interest, mouse-only | critical | — | ⏭️ covered-by-lim | cat-12 |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (populated by Phases 6, 7) | | | | | |

## Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: **speculation / open-question / limitation ONLY**
- #hypothesis-box / #fhypothesis: **FORBIDDEN** even if idea cert ≥0.45 or a bump crosses 0.45
- Brainstorm categories (Phase 4): **1–2 + 10–12 ONLY** (skip 3–9 — therapeutic brainstorming premature on weak evidence)
- Certainty bumps (Phases 6–7): **capped — no bump may cross 0.45** (moot here, certs ≤0.35)
- Phase 9 flags pre-fired: **WEAK-EVIDENCE**

### Framing directive (Phase 2, checklist #6 clinical-hazard)

Integrate the anti-TS-HDS/FGFR3 serological SFN subtype as a **proposed-but-unvalidated subtype
hypothesis with explicit patient-protective framing** — NOT a diagnostic entity, NOT an IVIG-selection
tool. Named in ch09 narrative must: (1) state the markers are NOT validated in ME/CFS (no cohort study
exists); (2) cite the negative controlled-IVIG and specificity data explicitly; (3) present a proper
ME/CFS serostudy as the missing research step.

(To be filled after Phase 2 integration decision)

## Notes

- Do NOT duplicate: ch09 already covers DRG-IgG mechanism (`@hyp:drg-sfn-igg-mecfs`), McAlpine 2024 post-COVID SFN + IVIG, ISR-DRG, visceral-vs-somatic. This cycle adds the *serological autoimmune-antibody subtype* + reconciles with a synthesis.
- Anti-TS-HDS / anti-FGFR3 specificity is **controversial** — several studies show poor discrimination from controls. Represent honestly; do not inherit legacy 0.65.
- Legacy `new-contents-sfn.md` subtree is a stub (never populated). Reference its header claims, do not treat as authoritative.

## Phase Ledger (Phase 12.5 completion gate — 2026-09-07)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 Plan | RAN | Plan file present + validated |
| 1 Literature | RAN | search-log + lit-summary + 16 bib entries + appendix-h + integration guide on disk |
| 2 Synthesis+decision | RAN | tmp/synthesis-* (PARTIAL decision recorded) |
| 3 Content dev | RAN | 2 envs in ch09 SFN .typ + registry rows |
| 3a Build | RAN | build PASS (Phase 3a) |
| 3b Safety | RAN | tmp/safety-gate-* (2 passed, 0 blocked) |
| 3.5 Consequence | RAN | consequence fields present in both envs |
| 4 Brainstorm | RAN | ops/brainstorms/* (18 ideas, cat 1-2+10-12) |
| 4a Tree | LEGIT-SKIP | standalone topic; brainstorm = future backlog, tracked in plan; legacy stub retained |
| 5 Triage | RAN | 0 new integrations (parked/covered); PARTIAL caps |
| 5b Build | RAN | build PASS |
| 5d Cascade | LEGIT-SKIP | no specifiable causal cascade; cert<0.10 |
| 5c Differential | LEGIT-SKIP | non-treatment topic; IVIG not endorsed |
| 5a Falsifiability | RAN | 0 hyp/spec/pred envs added (trivially satisfied); oq falsifiable |
| 5z Glossary | RAN | 4 glossary entries added |
| 6 Retro | RAN | 1 treatment-line clarification + synonym-map |
| 7 Compat | RAN | compat-audit + registry compat note; 0 adjustments |
| 8 Build | RAN | build PASS |
| 9 Quality | RAN | quality summary (WEAK-EVIDENCE pre-fired) |
| 10 Coherence | RAN | coherence-audit + 1 fix |
| 10a Synthesis | RAN | #synthesis @syn:autoimmune-sfn-serological-subtype-unvalidated added (auto-trigger fired); build PASS |
| 10b Framing | LEGIT-SKIP | no framing implication (clinical-utility caution, not mechanism/framing claim) |
| 11 Review | RAN | lightweight; 0 CRIT/HIGH; MEDIUM+LOW fixed |
| 12 Plan record | RAN | Phase 12 section above |
| 13 Commit | pending | next |

Build: PASS (0 error lines). Registry updated (new envs). Falsifiability + consequence checks pass. Bib keys resolve (build PASS).
