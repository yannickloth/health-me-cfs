# Integration Plan: HSV Dormancy-Undormancy Probe

**Purpose:** Integrate HSV-1/2 as a visible, patient-reportable, timestamped viral reactivation readout — a practical, falsifiable probe of endogenous viral reactivation dynamics during PEM crashes. Exploit HSV's advantage over EBV/HHV-6: lesions are visible, linked to catecholamine stress (known trigger), and have well-studied latency-reactivation kinetics.

**Target chapters:**
- ch08 (sec-06 viral reactivation — herpesviruses subsection): expand HSV-1 section from HSE focus to include dormancy-undormancy as a probe
- ch08 (sec-06 antibody persistence subsection): LSR-HSV intersection
- Hypothesis registry

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation, open-question, limitation, prediction ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥ 0.45 or Phase 7 bump crosses 0.45 (PARTIAL)
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45 (PARTIAL)
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL)

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|------------------|------|-----------|--------|-------|
| 1 | HSV dormancy-undormancy probe — outbreak timing × PEM as endogenous reactivation readout | — | 0.20 | ✅ done | Integrated as spec:hsv-pem-probe in ch08. Phase 3 environment. |
| 2 | LSR-HSV outbreak pattern intersection | — | n/a | ✅ done | Integrated as oq:lsr-hsv-patterns in ch08 antibody persistence. Phase 3 environment. |
| 3 | Catecholamine-stress → HSV reactivation → PEM trigger pathway | — | — | ⬜ pending | Partially covered by spec:hsv-pem-probe. |
| 4 | Treg-mediated CD8+ T cell suppression at HSV latency sites | — | n/a | ✅ done | Integrated as oq:hsv-treg-latency in ch08. Phase 3 environment. |
| 5 | HSV-specific LSR analog (anti-ICP0 ÷ anti-gB) | — | n/a | ✅ done | Integrated as oq:hsv-lsr-analog + lim:hsv-lsr-assay-gap in ch08. Phase 3 environment. |
| 6 | Brainstorm 1.1: PEM-to-HSV catecholamine relay | — | 0.20 | ⬜ pending | Duplicates core Phase 3 spec. Covered. |
| 7 | Brainstorm 1.2: HSV outbreak latency as immune stopwatch | — | 0.15 | ⬜ pending | |
| 8 | Brainstorm 1.3: HSV outbreak severity as IFN competence readout | — | 0.15 | ⬜ pending | |
| 9 | Brainstorm 1.4: PEM-induced microvascular collapse at ganglion | — | 0.10 | ⬜ pending | |
| 10 | Brainstorm 2.1: Smartphone diary study (n≥200) | — | n/a | ⬜ pending | |
| 11 | Brainstorm 2.2: Salivary HSV DNA kinetics during CPET | — | n/a | ⬜ pending | |
| 12 | Brainstorm 2.3: LCM outbreak frequency vs CPET performance | — | n/a | ⬜ pending | |
| 13 | Brainstorm 2.4: Valacyclovir suppression RCT with co-primary endpoints | — | n/a | ⬜ pending | SKIPPED — PARTIAL decision caps skip drug/intervention brainstorming (cat 2 research design is in-bounds, but valacyclovir trial design edges toward cat 3 territory). |
| 14 | Brainstorm 10.1: Base rate too high | — | — | ⬜ pending | |
| 15 | Brainstorm 10.2: Epiphenomenal (shared trigger) | — | — | ⬜ pending | |
| 16 | Brainstorm 10.3: ~33% HSV− excluded | — | — | ⬜ pending | |
| 17 | Brainstorm 11.1: No frequency difference | — | — | ⬜ pending | |
| 18 | Brainstorm 11.2: No PEM tracking | — | — | ⬜ pending | |
| 19 | Brainstorm 11.3: Valacyclovir null | — | — | ⬜ pending | |
| 20 | Brainstorm 12.1: Recall bias | — | — | ⬜ pending | |
| 21 | Brainstorm 12.2: Aphthous ulcer misclassification | — | — | ⬜ pending | |
| 22 | Brainstorm 12.3: HSV-1 vs HSV-2 conflation | — | — | ⬜ pending | |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Notes

- MIXED tree — no shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists
- Parent topic: standalone (user-supplied)
- Phase 1: 13 papers (11 new bib in viral-infection.bib). Bib keys: Chida2009StressHSVMetaAnalysis, Buchwald1996ViralSerologies, Koelle2002TwinsHSV, Yu2018TregHSVLlatency, Sepulveda2019TregMEHypothesis, Schreiner2020HHV6MitochondriaME, Henderson2014ValacyclovirAdolescents, Gopinath2023HerpesLabialis, Schalkwijk2022AcyclovirResistance, Ariza2020CommentaryHerpesvirus, Domingues2021HerpesvirusesSubgroups. Search log: ops/research/search-log-hsv-dormancy-undormancy-probe-20260726.md
- Phase 2: PARTIAL decision. Active caps: speculation/open-question/limitation/prediction only; no hypothesis-box; brainstorm categories 1–2 + 10–12 only; bumps capped at 0.45.
- Phase 3: 5 new environments in ch08 (sec-06 herpesviruses expanded with HSV dormancy-undormancy probe section; antibody persistence expanded with LSR-HSV intersection). 4 registry entries added. Files: subsec-06-herpesviruses.typ, subsec-06-antibody-persistence.typ, hypothesis-registry.typ
- Phase 3a: build PASS
- Phase 3.5: 5 environments verified, all have consequence fields
- Phase 4: 17 ideas across cat 1 (4), 2 (4), 10 (3), 11 (3), 12 (3). Brainstorm: ops/brainstorms/brainstorm-hsv-dormancy-undormancy-probe-20260726.md
