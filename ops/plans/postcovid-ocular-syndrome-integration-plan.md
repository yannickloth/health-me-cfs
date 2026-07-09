# Post-COVID Ocular Syndrome — Integration Plan

**Origin:** `/integrate-topic` — Moustardas et al. 2026, *Nature Communications*, "Long-term ocular symptoms following COVID-19 linked to immune dysregulation, dysautonomia and peripheral neuropathy" (doi:10.1038/s41467-026-74858-4)
**Slug:** `postcovid-ocular-syndrome`
**Date:** 2026-07-09
**Parent topic:** root (standalone, user-initiated)
**Tree state:** CLEAN mode

## Purpose

Evaluate/integrate a peer-reviewed observational study (n=100 post-COVID ocular-symptom cases vs 32 controls) that ties long-term ocular symptoms after *mild* COVID-19 to three mechanisms the paper already models — immune dysregulation (T cells), dysautonomia (pupillary/oculomotor), and peripheral/small-fiber neuropathy (corneal nerves). The study is largely *confirmatory* of existing paper predictions; novel elements are tear-fluid proteomics (biofluid not yet covered), a formal ocular diagnostic model, and direct post-COVID ocular evidence.

## Target chapters

- Part 2 ch08-neurological — SFN, dysautonomia, pupillary/oculomotor; retinal-corneal CNS window subsection
- Part 2 ch07-immune-dysfunction — T-cell dysregulation signature matching severe/fatal COVID
- Part 1 ch03 sec-10-ocular — clinical ocular symptom documentation (photophobia, strabismus, accommodation)
- Part 2 ch10-cardiovascular — corneal confocal microscopy biomarker (Azcue 2025 already cited)
- Part 4 hypothesis-registry + appendix-h annotated bib

## Pre-identified hypotheses

- Tear-fluid proteomics as novel accessible biomarker window for ME/CFS neuro-immune status (new; certainty TBD)
- Post-COVID ocular syndrome as an instance of the paper's dysautonomia + SFN causal cascade (confirmatory; certainty high)
- Adult-onset strabismus from oculomotor nerve involvement (confirmatory of nerve-control model)

## Active Caps (set by Phase 2 — decision: PROCEED)

- Environments allowed: **all**
- #hypothesis-box / #fhypothesis: **allowed** (per idea certainty)
- Brainstorm categories (Phase 4): **all 1–12**
- Certainty bumps (Phases 6–7): **per normal rules**
- Phase 9 flags pre-fired: **none**
- Overclaim guard: ME/CFS ≡ post-COVID ocular syndrome must remain speculation/open-question; Moustardas cohort not ME/CFS-screened.

## Phase log

- **Phase 0** — plan created, CLEAN mode. ✅
- **Phase 1** — 7 papers (4 new bib entries in `neurology-comorbidities.bib`, 3 pre-existing reused). Verified keys: `moustardas2026ocular`, `smit2026pupillary`, `johansson2022visual`, `naseri2025dryeye`. Reused: `Cañadas2023CornealConfocal`, `Azcue2025sfn`, `Azcue2023sfn`. Primary paper verified via PMID 42420292. Lit summary + search log in content-staging. ✅
- **Phase 2** — Decision **PROCEED**. 2 strong, 4 medium, 1 weak, 0 null. Clinical relevance MEDIUM. No contradictions. Synthesis: `content-staging/synthesis-postcovid-ocular-syndrome-2026-07-09.md`. ✅
- **Phase 3** — 4 environments added: `#clinical-finding` + `#limitation` (ch08 retinal-corneal window), `#speculation` (ch07 T-cell abnormalities, tear proteomics), clinical-feature updates (ch03 sec-10-ocular vision). 3 registry entries. NOTE: initial edit misdirected to orphan flat `ch07-immune-dysfunction.typ`; corrected to live split file `ch07-immune-dysfunction/sec-02-adaptive-immunity/subsec-02-t-cell-abnormalities/`. ✅
- **Phase 3a** — build PASS after fixing 5 issues (p<0.001 label traps in registry + appendix-h; stray markdown trailer in appendix-h; orphan-file misdirection). ✅
- **Phase 3.5** — 3 new environments verified for consequence field; 1 missing (`lim:postcovid-ocular-mecfs-gap`) added. ✅
- **Phase 4** — 52 brainstorm ideas across all 12 categories. `content-staging/brainstorm-postcovid-ocular-syndrome-2026-07-09.md`. ✅
- **Phase 4a** — subtree `subtrees/postcovid-ocular-syndrome.md` (35 constructive nodes); root index row added. ✅
- **Phase 5** — 2 ideas integrated (ch41 `pred:cnfd-sfn-observable`, ch03 `spec:fl41-photophobia`); 4 covered-by existing; critical categories folded into `lim:postcovid-ocular-mecfs-gap`; 3 scope-escalation topics queued (Sjögren's, pupillometry, corneal-confocal cross-disease). ✅
- **Phase 5b** — build PASS. ✅
- **Phase 5a** — falsifiability sweep: 5 STRONG, 2 WEAK registry predictions quantified/fixed, 1 clinical-finding exempt. Build PASS after fixing `<5%` label trap. ✅
- **Phase 6** — retinal-corneal window cross-referenced to new evidence; certainty held 0.25 (retinal arm untested — no unearned bump). No contradictions. ✅
- **Phase 7** — new content reinforces T-cell exhaustion, SFN ODE, dysautonomia models; no conflicts; no unearned bumps. ✅
- **Phase 8** — final build PASS. ✅
- **Phase 9** — quality: PROCEED, no WEAK-EVIDENCE flag; all envs have certainty + consequence + falsifiable prediction; overclaim guard respected. ✅
- **Phase 10** — cross-chapter coherence: 5 new labels resolve, referenced across ch03/ch07/ch08/ch41/registry; no drift. ✅
- **Phase 12** — changelog entry added (Version 11). ✅
- **Phase 13** — squashed 2 WIP checkpoints into single scoped commit `081a90aa`. 16 files, all topic-scoped, no unrelated changes. Tree clean, not pushed. ✅ **DONE**
## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| L1 | Post-COVID ocular syndrome confirms dysautonomia+SFN+immune triad (confirmatory) | — | 0.75 | 🔵 in progress | Moustardas 2026; ch08/ch03 |
| L2 | Tear-fluid proteomics as novel neuro-immune biomarker window | — | 0.60 | 🔵 in progress | Novel biofluid; ch10/ch20 |
| L3 | Pupillary autonomic dysregulation (photophobia mechanism) | — | 0.65 | 🔵 in progress | Smit 2026 + Moustardas |
| L4 | Adult-onset strabismus = oculomotor nerve involvement | — | 0.50 | 🔵 in progress | ch03/ch08 clinical sign |
| B1.3/7.1 | Corneal nerve density as SFN ODE observable | T1 | 0.35 | ✅ integrated | ch41 `#prediction pred:cnfd-sfn-observable` |
| B2.1 | Multimodal ocular phenotyping in ME/CFS cohort | T1 | 0.30 | ⏭️ covered-by cf:postcovid-ocular-syndrome | prediction already in ch08 clinical-finding |
| B9.1 | Tear-based diagnostic test for ME/CFS | T1 | 0.30 | ⏭️ covered-by spec:tear-tcell-readout | ch07 |
| B8.2 | Diabetic neuropathy CNFD reference dynamics | T1 | 0.40 | ⏭️ folded into pred:cnfd-sfn-observable | ch41 |
| B5.1 | FL-41 tinted glasses for photophobia | T1 | 0.25 | ✅ integrated | ch03 `#speculation spec:fl41-photophobia` |
| B6.5 | Ocular biomarker suite for severe-ME/CFS trials | T1 | 0.30 | ⏭️ covered-by spec:tear-tcell-readout + pred:cnfd | overlap |
| B1.4 | Photophobia as quantifiable autonomic biomarker | T2 | 0.30 | ⏭️ queued | → pupillometry-autonomic-biomarker cycle |
| B8.1 | Sjögren's tear-signature overlap | escalate | 0.30 | ⏭️ queued | → ocular-sjogren-mecfs-overlap cycle |
| Bcrit | Categories 10–12 (not-relevant, null, evidence-quality) | crit | n/a | ✅ integrated | folded into ch08 `lim:postcovid-ocular-mecfs-gap` |
| Btier3 | ~28 remaining low-cert ideas | T3 | <0.20 | 📋 tree-only | recorded in subtree, not chapter |

## Notes

- Bib target: `src/main/typst/mecfs/bib/neurology-comorbidities.bib`, `research_stream = {postcovid-ocular-syndrome}`
- Framework already derives ocular manifestation (see chat analysis 2026-07-09): dysautonomia→pupil, SFN→corneal nerves, CNS energy→ciliary muscle. Integration angle = confirmatory evidence + tear proteomics novelty, NOT new mechanism.
