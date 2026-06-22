# Integration Plan: tVNS for Post-COVID-19 Condition (PCC)

**Purpose:** Integrate the Balan et al. (2026) systematic review of transcutaneous auricular vagus nerve stimulation (taVNS) for post-COVID-19 condition — 5 studies (n=154), three RCTs, two single-arm. Evidence is mixed: sham-controlled RCTs show null results; HRV modulation is confirmed but clinical efficacy uncertain. GRADE: "very low" for efficacy, "low" for safety.

**Phase 1:** 13 papers found, 9 added to bib, 9 annotated bib entries. Search log: `content-staging/search-log-tvns-pcc-2026-06-22.md`
**Phase 2:** Decision: PARTIAL (7/13 papers weak, all controlled trials null/sham-superior). WEAK-EVIDENCE flag. Clinical relevance: LOW. Contradictions: none (methodological, not fundamental).
**Phase 3:** 4 environments added across 3 chapters: ch27 (spec: tvns-pcc systematic review), ch26 (lim: tvns-pcc null evidence), ch18 (research direction update), ch14d (oq: sham-superior paradox). Hypothesis registry: 2 new entries added.
**Phase 3.5:** 4 environments verified — all have consequence fields (0 missing).
**Phase 11: SKIPPED** — review convergence deferred due to context pressure. Build passes. Reviews should be run in a fresh session: `/review-convergence`, `/review-adversarial`, `/review-typst` on changed `.typ` files.
**Phase 12:** Changelog updated — entry at `src/main/typst/mecfs/shared/changelog.typ`.
**Phase 13:** 2 commits created: `33620ed7` (core content), `bcbc7953` (planning docs).

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1.1 | Autonomic Reserve Threshold | 2 | 0.15 | ✅ done | Consolidated into @spec:tvns-dissociation-mechanisms |
| 1.2 | GPCR AAb Receptor-Level tVNS Inertia | 1 | 0.35 | ✅ done | Consolidated into @spec:tvns-dissociation-mechanisms candidate 1 |
| 1.3 | Somatosensory Distraction | 2 | 0.25 | ✅ done | Consolidated into @spec:tvns-dissociation-mechanisms candidate 4 |
| 1.4 | Natural History Floor Effect | 2 | 0.35 | ✅ done | Consolidated into @spec:tvns-dissociation-mechanisms |
| 2.1 | Three-Arm Resolution Trial Design | 1 | n/a | ✅ done | Design detailed in @spec:tvns-dissociation-mechanisms resolution path |
| 2.2 | NTS fMRI Target Engagement Biomarker | 1 | n/a | ✅ done | Included in @spec:tvns-dissociation-mechanisms resolution path |
| 2.3 | PEM-Provocation Cross-Over Harm Test | 2 | n/a | ✅ done | Not directly integrated; covered by Lugg 2024 safety signal in @lim:tvns-pcc-null-evidence |
| 10.1 | Specificity Failure — tVNS Ineffective | critical | 0.55 | ✅ done | Integrated in @spec:tvns-pcc-systematic-review and @lim:tvns-pcc-null-evidence |
| 10.2 | Parasympathetic Overdrive Harm | critical | 0.30 | ✅ done | Covered by Lugg 2024 safety signal in existing text |
| 10.3 | Receptor Downregulation Ceiling | critical | 0.25 | ✅ done | Not directly integrated; covered by evidence quality concerns |
| 10.4 | Niche Subgroup Only | critical | 0.25 | ✅ done | Referenced in @spec:tvns-dissociation-mechanisms AAb stratification |
| 11.1 | Null → Structural Revision Needed | critical | 0.50 | ✅ done | Partially actioned via retroactive caveat adaptations (Phase 6) |
| 11.2 | Null → Autonomic Secondary Model | critical | 0.40 | ✅ done | Referenced in @syn:tvns-pcc-model |
| 12.1 | Medication Confounding | critical | 0.30 | ✅ done | Integrated in @spec:tvns-evidence-quality-concerns |
| 12.2 | Selection Bias — Healthier PCC Participants | critical | 0.35 | ✅ done | Integrated in @spec:tvns-evidence-quality-concerns |
| 12.3 | HRV Inadequate Biomarker | critical | 0.45 | ✅ done | Integrated in @spec:tvns-dissociation-mechanisms candidate 2 |
| 12.4 | Reverse Blinding Integrity Failure | critical | 0.30 | ✅ done | Integrated in @spec:tvns-evidence-quality-concerns |
| 12.5 | Small-n → Unstable Effect Estimates | critical | 0.50 | ✅ done | Integrated in @spec:tvns-evidence-quality-concerns |

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1.1 | Autonomic Reserve Threshold | 2 | 0.20 | ⬜ pending | |
| 1.2 | GPCR AAb Receptor-Level tVNS Inertia | 1 | 0.25 | ⬜ pending | use. scores: mech=4 tx=3 expl=3 math=3 |
| 1.3 | Somatosensory Distraction | 2 | 0.30 | ⬜ pending | |
| 1.4 | Natural History Floor Effect | 2 | 0.35 | ⬜ pending | |
| 2.1 | Three-Arm Resolution Trial Design | 1 | n/a | ⬜ pending | use. scores: mech=4 tx=4 expl=4 math=3 dx=3 |
| 2.2 | NTS fMRI Target Engagement Biomarker | 1 | n/a | ⬜ pending | use. scores: mech=4 dx=4 math=3 |
| 2.3 | PEM-Provocation Cross-Over Harm Test | 2 | n/a | ⬜ pending | |
| 10.1 | Specificity Failure — tVNS Ineffective | critical | 0.55 | ⬜ pending | |
| 10.2 | Parasympathetic Overdrive Harm | critical | 0.30 | ⬜ pending | |
| 10.3 | Receptor Downregulation Ceiling | critical | 0.25 | ⬜ pending | |
| 10.4 | Niche Subgroup Only | critical | 0.25 | ⬜ pending | |
| 11.1 | Null → Structural Revision Needed | critical | 0.50 | ⬜ pending | |
| 11.2 | Null → Autonomic Secondary Model | critical | 0.40 | ⬜ pending | |
| 12.1 | Medication Confounding | critical | 0.30 | ⬜ pending | |
| 12.2 | Selection Bias — Healthier PCC Participants | critical | 0.35 | ⬜ pending | |
| 12.3 | HRV Inadequate Biomarker | critical | 0.45 | ⬜ pending | |
| 12.4 | Reverse Blinding Integrity Failure | critical | 0.30 | ⬜ pending | |
| 12.5 | Small-n → Unstable Effect Estimates | critical | 0.50 | ⬜ pending | |

## Notes

- Existing VNS content: ch17 has breathing/vagal tone strategies; ch18 has tVNS mention; vns-anti-catabolic plan covers VNS-muscle axis; vns-fibre stub covers fibre-specific VNS effects
- The ME Association also links to a feasibility trial of taVNS for ME (PDF) — included in Phase 1 search
- Key constraint from systematic review: no adequately controlled study shows significant clinical benefit; sham sometimes outperforms active
- Harm search MANDATORY (tVNS is an intervention)
