# ADHD Mortality Meta-Analysis — Integration Plan

## Purpose

Evaluate whether a 2026 JAMA Network Open meta-analysis linking ADHD to elevated all-cause and cause-specific mortality — and ADHD medication to lower all-cause mortality — warrants integration into the ME/CFS paper, given ADHD comorbidity and stimulant prescribing in ME/CFS.

## Driving source

Corrigan LE, Shelford H, Stott J, John A. *Mortality Among People With Attention-Deficit/Hyperactivity Disorder: A Systematic Review and Meta-Analysis.* JAMA Netw Open. 2026; published online October 19, 2026. doi:10.1001/jamanetworkopen.2026.39448.

## Target chapters (preliminary)

- ch39 (epidemiology/outcomes) — mortality studies subsection (existing `@subsec:mortality-summary`)
- ch23 (symptom management) — comorbidity management / ADHD subsection
- ch32 (lifestyle interventions) — stimulant-prescribing context, if any
- hypothesis registry — only if a new claim environment is added

## Pre-identified hypotheses

- H1: Comorbid ADHD may carry an independent mortality-relevant risk layer in ME/CFS (certainty TBD after Phase 1).
- H2: ADHD medication's mortality association (HR 0.75, 3 studies, observational) is indirect and confounded; it cannot be transferred to ME/CFS stimulant use (certainty TBD).

## Active Caps (set by Phase 2 — decision: PROCEED)

- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed by rule; NOT used this cycle — transfer certainty stays ≤0.35, so `#speculation` applies
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| H1 | Comorbid ADHD marks a higher-risk (mortality-relevant) ME/CFS subgroup | spec | 0.25 | ✅ integrated | @spec:adhd-mortality-comorbid-layer (stratification claim, not causal) | Phase 1/2 derived; no ME/CFS-ADHD mortality cohort exists |
| H2 | ADHD-medication mortality association cannot transfer to ME/CFS stimulant use | oq | n/a | ✅ integrated | @lim:adhd-mortality-transfer-gap + @oq:adhd-medication-mediation (prudential non-transfer) | Observational, indication-confounded; CV harm arm is surrogate-only |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| — | — | — | — | — | — |

## Phase Reports

- **Phase 0:** plan created at `ops/plans/adhd-mortality-integration-plan.md`; validated (no empty statuses; tracking rows H1/H2 present). Tree state MIXED (user-authorized 2026-10-20).
- **Phase 1:** 13 papers included (12 discounted cert ≥0.40; 5 ≥0.60); 11 entries → `bib/epidemiology.bib`, 2 → `bib/neurology-comorbidities.bib` (keys verified by grep, case-exact); appendix H updated for all 13; search log `ops/research/search-log-adhd-mortality-2026-10-20.md`; PDFs filed 3/13 (Vasiliadis2024mortality, Rice2024stimulantSuicide, Hennissen2017CVmeta), 10 recorded unavailable (publisher Cloudflare/paywall). Rival framings F1–F4 + C searched.
- **Phase 2:** PROCEED. 12/13 papers ≥0.40 discounted; 5 ≥0.60; 1 <0.40. Clinical relevance LOW (prognostic context). Healing relevance `diagnostic`. PRISMA-lite complete. Synthesis: `tmp/synthesis-adhd-mortality-2026-10-20.md`.
- **Phase 3:** 2 environments (1 `#speculation` @0.35, 1 `#limitation`) in new ch39 subsection `comparative-cause-profiles/` + registry block `Entries added 2026-10-20: ADHD mortality`. Fragments: `ops/research/fragments-adhd-mortality-2026-10-20.md` (15 fragments). Files: `mortality-studies.typ` (include), `comparative-cause-profiles.typ` (new), `adhd-mortality-comorbidity-layer.typ` (new), `hypothesis-registry.typ` (append).
- **Phase 3a:** build PASS after fixing two import depths (shared import off by one level in both new files).
- **Phase 3b:** `tmp/safety-gate-adhd-mortality.md` — non-treatment bypass; item 2 PASS; 0 blocked, 0 warnings.
- **Phase 3.5:** 2/2 environments carry `*Consequence:*`; no additions needed.
- **Phase 4:** 16 ideas across categories 1–12 (categories 10/11/12 each ≥2); `ops/brainstorms/brainstorm-adhd-mortality-2026-10-20.md`.
- **Phase 4a:** subtree `ops/plans/hypotheses-trees/subtrees/adhd-mortality.md` (16 nodes); root index row added (8 integrated).
- **Phase 5:** 16 ideas triaged — 5 deduped as already covered (7.1, 2.1, 11.2, 12.1, plus 5.2/9.1 merged), 2 Tier 3 tree-only (8.1, 4.1), 8 integrated: 3 new environments (`@oq:adhd-impulsivity-channel`, `@oq:adhd-medication-mediation`, `@spec:adhd-screening-stratification`, `@oq:adhd-nonstimulant-option` — 4 new) plus 4 limitation strengthenings (10.1, 10.2, 11.1, 12.2). ch30 tiers: all "none" (no ≥3-step biochemical cascade with a drug intercept). No new ch30 files.
- **Phase 5d:** LEGIT-SKIP — no specifiable ≥3-step biochemical cascade; mortality claim is epidemiological, not a pathway model.
- **Phase 5c:** LEGIT-SKIP — topic is not a medication integration; no ME/CFS human evidence for the mortality association; stimulant/non-stimulant content is capped at open questions.
- **Phase 5z:** 3 glossary entries added (`guanfacine`, `atomoxetine`, `WURS-25`); ADHD/HR/CI/PEM already present.
- **Phase 6:** 6 overlaps examined (4 ADHD∩mortality files, and 6 stimulant files — 10 examined); 3 adapted (ch23 comorbidity caveat, ch23 methylphenidate mortality caveat, ch39 summary cross-ref); 5 no-action; 0 certainty changes. Synonym map `tmp/synonym-map-adhd-mortality.md` (zg unavailable → rg).
- **Phase 7:** 9 existing ADHD hypotheses, 8 pairs examined: 0 reinforcement bumps, 2 feed-into (weak), 5 independent, 0 conflicts. No certainty adjustments; bump log unchanged. `tmp/compat-audit-adhd-mortality-2026-10-20.md`.
- **Phase 9:** net certainty change 0; reinforcement:contradiction 3:0 (0 suppressed below floor); 2 new falsifiable predictions; gross words ≈ +2200 with 6 new environments (no BLOAT); honesty lint 1 finding (absolute phrasing) → fixed; flags NONE. Clinical relevance LOW.
- **Phase 10:** 5 chapter files audited, 9 labels resolve, 0 inconsistencies. `tmp/coherence-audit-adhd-mortality-2026-10-20.md`.
- **Phase 10a:** synthesis `@syn:adhd-mortality-comparison-model` added to ch39 comparative-profiles (auto-added per standing default); registry row added.
- **Phase 11:** Full tier (2 chapters, 6 new environments, treatment-adjacent content). Round 1: 8 passes (11a content, 6 × 11b personas, 11c xref). Findings fixed: 1 CRITICAL (guanfacine/midodrine interaction direction reversed), 5 HIGH (atomoxetine monitoring; screen≠diagnosis; no survival-benefit framing; "same shape" overreach; screening falsifier self-satisfying), 9 MEDIUM, 5 LOW. Round 2: re-review of fixed text. Build: typst compile PASS.
- **Phase 12.5 / 8:** pending final build + ledger.

## Phase 12 — Plan record

- **Decision:** PROCEED, scope-limited at Phase 2 to a comparative cause-profile, one comorbidity transfer, and one limitation.
- **Environments added (6):** `@spec:adhd-mortality-comorbid-layer` (0.25), `@lim:adhd-mortality-transfer-gap`, `@oq:adhd-impulsivity-channel`, `@oq:adhd-medication-mediation`, `@spec:adhd-screening-stratification` (0.20), `@oq:adhd-nonstimulant-option`, plus `@syn:adhd-mortality-comparison-model`.
- **Chapters touched:** ch39 mortality-studies (new comparator subsection + summary cross-ref), ch23 sec-01 (new ADHD subsection + expanded bullet), ch23 sec-05 (methylphenidate mortality caveat).
- **Bibliography:** 13 entries (11 epidemiology.bib, 2 neurology-comorbidities.bib); appendix H updated; 3 PDFs filed, 10 abstract-only with recorded reasons.
- **Registry:** 10 rows across three blocks (Phase 3, Phase 5, Phase 10a).
- **Key finding:** ADHD mortality is suicide- and injury-dominated with a contested natural-cause component; ME/CFS shares only the suicide concentration and differs on all-cause, injury and magnitude. The comparison rules out using the elevated suicide rate as proof of a unique lethal mechanism, and supplies no treatment to borrow.
- **Quality flags:** NONE. Clinical relevance LOW.
- **Anecdote / driving source:** the driving paper IS the integrated source. No patient anecdote existed.

- **Phase 10b:** no framing propagation needed — the synthesis is a downstream interpretive constraint (decision matrix row "downstream consequence / methodological constraint"); it does not change the abstract, ch16 trigger-vs-amplifier classification, root-cause assessments, reading guide, or ch13.

## Notes

- Phase-0 tree state: **MIXED** (independent uncommitted cycle `chronic-cns-brain-inflammation` in tree; user authorized MIXED mode 2026-10-20). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` only (NEVER reset/rebase/amend); all phases scoped by explicit file lists, not `git diff`.
- Standalone `/integrate-topic` invocation (no parent cycle) → plan file optional per skill step 3, created here for ledger/audit traceability.
- Related existing plans: `adhd-asd-comorbidity-mecfs`, `adhd-same-causes-mecfs`, `adhd-dementia-energy-deficit`, `adhd-movement-arousal-energy`, `adhd-nrf2-adultonset-update`.

## Phase 12.5 — Phase Ledger

| Phase | State | Evidence |
|---|---|---|
| 0 | RAN | `ops/plans/adhd-mortality-integration-plan.md` created + validated; MIXED tree note |
| 1 | RAN | `ops/research/search-log-adhd-mortality-2026-10-20.md`; 13 bib entries; appendix H; 3/13 PDFs + 10 recorded unavailable |
| 2 | RAN | `tmp/synthesis-adhd-mortality-2026-10-20.md`; decision PROCEED; Active Caps written |
| 3 | RAN | 2 environments in new ch39 subsection; registry block; fragments file |
| 3a | RAN | build PASS (two import-depth fixes) |
| 3b | RAN | `tmp/safety-gate-adhd-mortality.md` (non-treatment bypass + Phase 5 addendum) |
| 3.5 | RAN | 6/6 new environments carry `*Consequence:*` |
| 4 | RAN | `ops/brainstorms/brainstorm-adhd-mortality-2026-10-20.md` (16 ideas, categories 1–12) |
| 4a | RAN | `ops/plans/hypotheses-trees/subtrees/adhd-mortality.md`; root index row |
| 5 | RAN | triage + 4 new environments + 4 limitation strengthenings |
| 5d | LEGIT-SKIP | no specifiable ≥3-step biochemical cascade with a drug interception point (mortality epidemiology, not a pathway) |
| 5c | LEGIT-SKIP | topic is not a medication integration; no ME/CFS human mortality evidence; stimulant/non-stimulant content capped at open questions |
| 5b | RAN | build PASS (import-depth fix) |
| 5a | RAN | `falsifiability-auditor`: 12/12 citations exist, 15/15 fragments contain quotes, 0 figure drift; 6 findings fixed |
| 5z | RAN | 3 glossary entries added |
| 6 | RAN | 10 overlaps examined, 3 adapted, 0 certainty changes; `tmp/synonym-map-adhd-mortality.md` |
| 7 | RAN | 8 pairs, 0 conflicts, 0 adjustments; `tmp/compat-audit-adhd-mortality-2026-10-20.md` |
| 8 | RAN | `nix build` PASS on the final tree |
| 9 | RAN | honesty lint 1 finding fixed; flags NONE |
| 10 | RAN | `tmp/coherence-audit-adhd-mortality-2026-10-20.md`; 0 inconsistencies |
| 10a | RAN | `@syn:adhd-mortality-comparison-model` + registry row |
| 10b | RAN | no framing implication — explicit no-propagation decision recorded |
| 11 | RAN | Full tier: 8 passes round 1 (1 CRITICAL, 5 HIGH, 9 MEDIUM, 5 LOW fixed), round 2 zero CRITICAL/HIGH, round 3 deterministic re-check of 11c HIGH findings (all fixed) |
| 12 | RAN | plan record above |
| 12.5 | RAN | this ledger |
| 13 | RAN | commit hash recorded below |

## Phase 13 — Commit record

- `577e174c` docs(literature): file ADHD-mortality source set (13 papers, 3 full-text PDFs)
- `4b7177de` content(ch39,ch23): add an ADHD mortality comparator and ADHD comorbidity questions
- `20c11a39` docs(bib): add 13 ADHD-mortality entries and appendix H annotations
- `11edede4` docs(registry): add ADHD-mortality hypothesis rows, glossary terms, scrape rows
- `46773dde` docs(ops): record the adhd-mortality integration plan, tree, search log and brainstorm

Shared-file note: appendix H, the hypothesis registry, the glossary and the scrape
registry also carried uncommitted entries from the concurrent
chronic-cns-brain-inflammation cycle; those entries front-ran that cycle's commit
and are not claimed here. Excluded on purpose: `tmp/` audit scratch, the other
cycle's `Literature/neurological/*` and ch09/ch18/ch25/ch47 changes. No reset,
rebase, amend or `git add -A` was used at any point.

## Post-integration correction (2026-10-20, after user review)

The user challenged the "depression-independent suicidality" premise: entrapment and hopelessness in severe disease plausibly produce depression even when it is undocumented. Review confirmed the challenge:

- 39–57% report ideation and 7.1% of *all* patients report ideation without a diagnosis → roughly one in six ideators has no diagnosis; most ideation co-occurs with depression.
- The 60% figure counts documented diagnoses, not ascertained depression.
- The ADHD attenuation contrast comes from registers with structured diagnoses; the ME/CFS figure does not — so the apparent mediation inversion is partly an ascertainment artifact.

Corrections applied (`fix(content): separate documented depression from depression, add demoralization mediator`):
- ch06 prognosis and ch39 suicide subsection: "no depression diagnosis" → "no documented depression diagnosis"; the overclaim that suffering "not psychiatric comorbidity" drives suicide replaced with "not fully explained by diagnosed depression"; base-rate arithmetic added.
- ch04 depression: new paragraph — reactive ≠ untreatable, scale contamination and under-recording, demoralization as the intermediate state.
- ch23 mental-health bullet and ch28 mental-health-crisis section: reactive depression still treatable; demoralization risks named.
- ch39 limitation and `@oq:adhd-impulsivity-channel`: three-way mediator structure (depression / demoralization / impulsivity) with a severity split; the mediation-inversion claim downgraded to a possible ascertainment difference; discriminating measurement now requires SCID/MINI + DS-II + an impulsivity measure.
- Registry row for the open question updated to match.

The integration's conclusion is unchanged; the supporting argument is now weaker and more honest.
