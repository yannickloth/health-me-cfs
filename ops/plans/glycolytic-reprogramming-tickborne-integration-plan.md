# Integration Plan: Glycolytic Reprogramming by Borrelia / Bartonella / Babesia

**Purpose:** Evaluate whether tick-borne bacterial/protozoal pathogens (Borrelia burgdorferi, Bartonella spp., Babesia spp.) drive host-cell glycolytic reprogramming (a Warburg-like metabolic shift) analogous to the *viral* glial reprogramming already covered in ch08 (Rodrigues 2025), and whether this warrants integration into the ME/CFS paper. The paper covers viral-driven glial glycolytic shift and extensive glycolysis biology, plus tick-borne infections in ch07 — but pathogen-driven (non-viral tick-borne) glycolytic reprogramming as a distinct mechanism is absent.

**Topic slug:** glycolytic-reprogramming-tickborne
**Date:** 2026-07-17
**Parent topic:** tick-borne-symptom-domains (thematic group; Lyme/Bartonella/Babesia already covered in ch07, ch35, ch28, ch21)
**Origin:** standalone `/integrate-topic` (user-supplied; source hint: Spandidos — glycolytic reprogramming in host response to *Borrelia burgdorferi*)
**Tree mode:** MIXED / CONCURRENT — unrelated WIP present (`src/main/java/web/BuildWeb.java`, `src/main/java/web/ConvertAndSplit.java`). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by EXPLICIT file lists from per-phase reports, NOT `git diff`. Stage by explicit per-topic file list. All HARD CONCURRENCY GUARDS apply.

## Null hypothesis
Default = non-integration. Burden of proof on demonstrating tick-borne pathogen-driven glycolytic reprogramming has sufficient evidence + relevance to ME/CFS to warrant inclusion.

## Target chapters (provisional, pending Phase 2)
- `ch07 .../sec-06-viral-reactivation-and-persistence/subsec-06-tick-borne-infections` — existing tick-borne section (primary candidate)
- `ch08 neurological` — extend viral glial reprogramming (Rodrigues2025, lines ~941–963) to bacterial/protozoal glial metabolic shift, IF glial-specific evidence exists
- `ch17 universal-mechanisms` — Family: metabolic (glycolytic shift, CDR) — pathogen-agnostic glycolytic shift node
- `ch14d cross-disease` — cross-pathogen convergence on glycolytic endpoint, IF warranted
- `appendices/appendix-h-annotated-bibliography.typ`
- `part4-research/hypothesis-registry.typ`

## Existing coverage / bib (dedup reference — do NOT duplicate)
- Viral glial reprogramming: `@Rodrigues2025ViralReprogrammingGlialMetabolism` (ch08), `@Wendeln2018InnateImmuneMemoryBrain`, `@Nirakis2025MetabolicRegulationMicroglial`
- Tick-borne: PTLDSMECFSReview2023, BartonellaCFS2025, Bush2024Neurobartonelloses, Krause1996babesia, Breitschwerdt2025BabesiaCFS, Maggi2024BabesiaCoinfect, Feng2019BorreliaPersister, Nawrocki2025LymeSymptomsCDC
- Glycolysis/Warburg immune: Mandarano2020 (CD8 Warburg), gorman2024wasf3, naviaux2016metabolic (CDR), Naviaux CDR
- Bib target for new entries: `bib/immune.bib` (existing tick-borne + immune-metabolic entries live here); `bib/energy-metabolism.bib` if purely metabolic

## Pre-identified hypotheses / gaps
- Does *Borrelia burgdorferi* induce a Warburg-like glycolytic shift in host immune/glial cells (Spandidos source)? (certainty TBD)
- Do *Bartonella* (intracellular, endothelium-tropic) and *Babesia* (intra-erythrocytic protozoan) drive comparable host glycolytic reprogramming? (certainty TBD — likely divergent mechanisms per pathogen)
- Is pathogen-driven glycolytic reprogramming a *shared* endpoint with viral glial reprogramming → convergent metabolic mechanism? (certainty TBD)
- Persistence: does glycolytic shift persist post-clearance (epigenetic stabilization) as proposed for viral? (certainty TBD)

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none (11% papers <0.40 — below 50% WEAK-EVIDENCE trigger). NOTE: 0 direct ME/CFS papers → all ME/CFS-relevance claims capped at hypothesis/speculation with explicit "no direct ME/CFS data" caveat; CLINICAL-RISK not applicable (no clinical recommendation).

## Phase 1 result
9 papers, all new → immune.bib (verified case-exact): Dong2026BorreliaGlycolysis, Barriales2021BorreliaMacrophage, Kerstholt2022BorreliaLactate, Oosting2016BorreliaCytokine, Bernard2020BorreliaTrained, Lynch2023LDHBorrelia, Kempf2005BartonellaHIF1, Ohmori2004BabesiaGlucose, Fitzgerald2021PTLDSMetabolic. appendix-h: 9 annotated entries. 0 key collisions. Seed paper (Dong2026, Exp Ther Med, DOI 10.3892/etm.2026.13182) VERIFIED. Search log: `ops/research/search-log-glycolytic-reprogramming-tickborne-2026-07-17.md`. Literature summary: `ops/research/literature-glycolytic-reprogramming-tickborne-2026-07-17.md`.

## Phase 2 result
PROCEED. 5 papers ≥0.60, 3 medium, 1 <0.40 (11%). Clinical relevance LOW (research-stage; no ME/CFS intervention). 0 direct ME/CFS papers → mechanistic parallel only. 1 resolvable/bidirectional contradiction (Dong ↑lactate vs Kerstholt ↓baseline glycolysis, diff 0.10 — present both as context-dependent). Synthesis: `tmp/synthesis-glycolytic-reprogramming-tickborne-2026-07-17.md`. Primary targets: ch08 (extend viral glial reprogramming — the named gap), ch07 tick-borne subsec, ch17 metabolic family.

## Phase 3 result
Environments added (3 files in built tree + 1 legacy monolith mirror):
- ch07 tick-borne subsec: new `==== Glycolytic Reprogramming of Host Cells by Tick-Borne Pathogens` prose + `#hypothesis` `<hyp:tickborne-glycolytic-reprogramming>` (cert 0.40).
- ch08 split `subsec-01-glial-cell-dysfunction.typ`: `#speculation` `<spec:tickborne-glial-reprogramming>` (cert 0.30) extending post-viral glial reprogramming. (Also mirrored in legacy monolith `ch08-neurological.typ` used only by p4-build.)
- ch17 `ch17-universal-mechanisms.typ`: new Family-1 bullet (pathogen-driven glycolytic reprogramming).
- registry: 2 new `#registry-entry` (new dated block 2026-07-17).
Files modified: subsec-06-tick-borne-infections.typ, ch08-neurological.typ (monolith), subsec-01-glial-cell-dysfunction.typ (split), ch17-universal-mechanisms.typ, hypothesis-registry.typ, immune.bib, appendix-h.

## Phase 3a result
Build PASS (after fixing split-file label location — main build uses split ch08 dir, not monolith).

## Phase 3.5 result
2 new environments verified; both `*Consequence:*` fields present. ch17 bullet not a tracked environment.

## Phase 4 result
Brainstorm: `ops/brainstorms/brainstorm-glycolytic-reprogramming-tickborne-2026-07-17.md`. 46 ideas (5+5+5+3+3+2+3+3+4+5+3+5). All 3 critical categories substantive (they seriously challenge the framework — 0-direct-evidence, Fitzgerald null, Kerstholt contradiction, thin Bartonella/Babesia). Top 3: 2.1 (Seahorse study, 0.50), 1.1 (ANLS gradient reversal, 0.22), 3.1 (metformin reset, 0.25).

## Phase 4a result
Subtree `subtrees/glycolytic-reprogramming-tickborne.md` written with 46 nodes + usefulness scores. Root index row added.

## Phase 5 result
Certainty reassessed (1.1 0.22→0.20, 3.1 0.25→0.22). Phase-3 dedup: most critical-category ideas (10.1/10.2/10.3/11.2/12.5) already covered by Phase 3 ch07 hypothesis → ⏭️. 3 new environments integrated (T1 by usefulness): ch08 `<spec:tickborne-anls-gradient-reversal>` (0.20, idea 1.1); ch07 `<spec:metformin-trained-immunity-reset>` (0.22, idea 3.1, research-stage + harm caveat); ch07 `<oq:tickborne-glycolytic-research-programme>` (consolidates 2.1/2.2/2.3/6.1/9.1). Critical ideas 10.4/10.5/11.3/12.1/12.3/12.4 → strengthened the ch07 hypothesis Limitations paragraph. Remaining 25 ideas → ↩️ tree-only; 4 → 🚫 (non-viable: 3.4, 4.3, 5.3 PEM-risk; 8.x flagged for possible Phase 10a synthesis). 0 child topics queued (Gate A: no standalone ≥5-paper base surfaced). Registry: 3 new entries. Files: subsec-06-tick-borne-infections.typ, subsec-01-glial-cell-dysfunction.typ, hypothesis-registry.typ.

## Phase 5b result
Build PASS.

## Phase 5a result
falsifiability-auditor: all 5 new environments FULLY falsifiable, all have `*Consequence:*` fields. 2 minor wording clarifications applied (metformin conjunction, ANLS 3-metric prediction). Report: `tmp/falsifiability-glycolytic-reprogramming-tickborne-2026-07-17.md`.

## Phase 6 result
Search via synonym map (`tmp/synonym-map-glycolytic-reprogramming-tickborne.md`); ~30 overlaps examined of 400+ hits. 2 adaptations (both reinforcement, citation-only — Evidence Quality Floor: all new evidence non-ME/CFS-specific + cross-context → NO certainty bumps):
- ch06 HIF-1α-mito-ECM triad (subsec-26): inserted @Kempf2005BartonellaHIF1 as external (non-ME/CFS) validation that infection stabilises HIF-1α. Cert unchanged (0.60).
- ch07 T-cell abnormalities (subsec-02): coherence cross-ref failed-Warburg → @hyp:tickborne-glycolytic-reprogramming (compound relationship). No new claim.
No-action: ch08 trained-immunity paragraph (already covered by adjacent Phase-3 spec). 0 contradictions of pre-existing claims. Visibility symmetry preserved. Build PASS. Files: subsec-26-speculative-metabolic-interventions.typ, subsec-02-t-cell-abnormalities.typ.

## Phase 7 result
Inline compat audit (`tmp/compat-audit-glycolytic-reprogramming-tickborne-2026-07-17.md`). 5 reinforcement pairs, 5 feed-into pairs, 0 conflicts, 0 independents. 0 certainty bumps / 0 reductions — correctly withheld: all new hypotheses rest on 0 direct ME/CFS data (cross-referencing ≠ certainty rise), and reinforcements share source literature (not independent convergence). Contingencies (N2→E1, N3→E6/N1, N4→N1) already annotated in registry. No registry edits.

## Phase 8 result
Build PASS. All 9 bib keys verified case-exact; all new @CiteKeys resolve. NOTE: transient build failure from a PARALLEL cycle's unstaged `immune.bib` duplicate (`Maes2009CoQ10`, also in energy-metabolism.bib) — user approved removing the 1 dup line, but the parallel cycle self-resolved it before I acted. My 9 keys unaffected.

## Phase 9 result
Quality: `tmp/quality-glycolytic-reprogramming-tickborne-2026-07-17.md`. Net certainty change 0.00 (appropriate — 0 direct evidence). Reinforcement:contradiction 2:0. 5 fully-falsifiable predictions. ~1500 words / 5 new environments. Tier: 7 integrated, 25 tree-only, 14 crit (11 covered/strengthened). Flags: NONE (no BLOAT, no WEAK-EVIDENCE, no CLINICAL-RISK — metformin spec has harm caveats).

## Phase 10 result
Cross-chapter coherence: ALL PASS (certainty consistency, terminology, cross-refs resolve, narrative coherence, compound-framing not contradiction, all consequence fields present). No inconsistencies requiring fix. 1 non-blocking note (metformin spec placement) — left as-is (defensible adjacent to mechanism).

## Phase 10a result
Trigger MET (5 environments across ch07+ch08). Added `#synthesis` `<syn:tickborne-glycolytic-reprogramming-model>` (cert 0.30 after Phase-11 reduction) to ch07 after the open-question, condensing the convergent "post-infectious (not merely post-viral) metabolic memory" model; cross-refs 5 environments + post-viral-cns-reprogramming. Registry entry added. Build PASS.

## Phase 11 result
Tier: FULL (multi-chapter), executed as scoped adversarial (6-persona) + mechanical passes on explicit file list (MIXED mode — not git diff). Round 1: 3 CRITICAL + 6 HIGH adversarial findings (mechanical: 0 real — `$gt.eq$` false positive, "missing consequence" all pre-existing). Fixed all legitimate findings: hyp certainty 0.40→0.35 + open with 0-ME/CFS-data & Fitzgerall null (was buried); glial spec 0.30→0.25 (compound speculation); synthesis 0.35→0.30; metformin disclaimer-first + simplified falsification; Babesia RBC "reprogramming"→"transporter-level metabolic shift" (RBCs lack nuclei); Kempf "host cells"/"general-principle"→"single unreplicated cell-line study"; Dong/Kerstholt→orthogonal-but-unresolved; T-cell cross-ref + "hypothetical, untested in humans"; Bernard "murine". Rejected: IDO/kynurenine finding (line 161 = different cycle's environment, already caveated — not my scope). Round 2 re-review: ZERO CRITICAL/HIGH — CONVERGED. Build PASS. Registry certs synced. NOTE: session tool-output tampering detected mid-phase; verified all builds via file-captured exit codes (`/tmp/opencode/b*_status.txt`).

## Phase 12 result
Changelog entry added under Version 11 (top). Escaped `\<0.40` (Typst label-opener hazard). Build PASS.

## Phase 13 result
MIXED/CONCURRENT commit. A parallel cycle's commit `4d47c86a` swept my earlier-staged shared-file entries (bib/immune.bib 9 keys, appendix-h 9 entries, changelog entry, registry 6 entries incl. synthesis, ch07 tick-borne subsec, hypotheses-trees root row) into HEAD — VERIFIED all present with my FINAL Phase-11 values (hyp cert 0.35, metformin disclaimer-first, Babesia RBC fix, synthesis). My remaining uncommitted files committed here by explicit list: ch06 subsec-26 (Kempf cite), ch07 subsec-02 (cross-ref), ch08 subsec-01 (2 specs), ch17 bullet, queued-topics row, + 5 ops artifacts (plan, subtree, literature, search-log, brainstorm). EXCLUDED foreign `registry/scrape-registry.md` (parallel CoQ10 cycle). Legacy monolith ch08-neurological.typ restored to HEAD (half-mirror avoided). Status: ✅ done.

## Tracking table (Phase 4 ideas; Tier/Status set in Phase 5)

| # | Idea / hypothesis | Tier | Cert | Status | Notes |
|---|-------------------|------|------|--------|-------|
| 1.1 | Borrelia-trained macrophage lactate → ANLS gradient reversal | — | 0.22 | ⬜ | — |
| 1.2 | Bartonella HIF-1α → endothelial glycolysis → BBB two-hit | — | 0.18 | ⬜ | — |
| 1.3 | Borrelia trained memory × WASF3 convergence | — | 0.20 | ⬜ | — |
| 1.4 | Babesia glucose piracy → cerebral glucose deficit | — | 0.10 | ⬜ | — |
| 1.5 | Kerstholt–Dong paradox as biphasic time-course | — | 0.15 | ⬜ | — |
| 2.1 | Ex-vivo monocyte Seahorse tick-borne vs viral | — | 0.50 | ⬜ | top research idea |
| 2.2 | Replicate Kerstholt2022 cell-type/timepoint | — | 0.55 | ⬜ | — |
| 2.3 | PTLDS CSF metabolomics | — | 0.40 | ⬜ | — |
| 2.4 | scRNA-seq tick-borne vs viral PBMCs | — | 0.40 | ⬜ | — |
| 2.5 | Serial lactate 2-day CPET | — | 0.35 | ⬜ | — |
| 3.1 | Metformin trained-immunity reset | — | 0.25 | ⬜ | — |
| 3.2 | Belzutifan Bartonella HIF-2α | — | 0.18 | ⬜ | — |
| 3.3 | Rapamycin epigenetic erasure | — | 0.15 | ⬜ | — |
| 3.4 | Sodium oxamate LDH inhibitor | — | 0.08 | ⬜ | — |
| 3.5 | Daprodustat HIF-PH inhibitor | — | 0.12 | ⬜ | — |
| 4.1 | Ketone esters ANLS bypass | — | 0.30 | ⬜ | — |
| 4.2 | Benfotiamine PDH reactivation | — | 0.20 | ⬜ | — |
| 4.3 | MCT1/4 modulation | — | 0.05 | ⬜ | not actionable |
| 5.1 | Cyclical low-carb diet | — | 0.15 | ⬜ | — |
| 5.2 | Intermittent hypoxic training | — | 0.15 | ⬜ | — |
| 5.3 | Cold exposure lactate clearance | — | 0.08 | ⬜ | PEM risk |
| 6.1 | Tick-exposure stratification variable | — | 0.35 | ⬜ | — |
| 6.2 | Metformin + clarithromycin combo | — | 0.15 | ⬜ | — |
| 7.1 | ODE trained-immunity glycolysis → ANLS | — | 0.30 | ⬜ | — |
| 7.2 | Causal DAG HIF isoform-specific | — | 0.25 | ⬜ | — |
| 7.3 | ABM Babesia RBC glucose (self-falsifying) | — | 0.12 | ⬜ | — |
| 8.1 | PTLDS↔tick-borne ME/CFS bridge | — | 0.30 | ⬜ | — |
| 8.2 | Bartonella → Long COVID vascular bridge | — | 0.15 | ⬜ | — |
| 8.3 | Unifying post-infectious mechanism | — | 0.18 | ⬜ | — |
| 9.1 | Whole-blood Seahorse biomarker | — | 0.30 | ⬜ | — |
| 9.2 | Serum L:P ratio biomarker | — | 0.25 | ⬜ | — |
| 9.3 | Monocyte LDHA mRNA qPCR | — | 0.20 | ⬜ | — |
| 9.4 | Hp/LDH ratio extended tick-borne | — | 0.20 | ⬜ | — |
| 10.1 | CRIT: zero direct ME/CFS evidence | crit | 0.75 | ⬜ | already in ch07 limitation |
| 10.2 | CRIT: PTLDS metabolomics null glycolysis | crit | 0.65 | ⬜ | already in ch07 limitation |
| 10.3 | CRIT: Kerstholt contradicts narrative | crit | 0.50 | ⬜ | already in ch07 |
| 10.4 | CRIT: trained immunity needs ongoing stim | crit | 0.40 | ⬜ | — |
| 10.5 | CRIT: Bartonella single old study | crit | 0.60 | ⬜ | — |
| 11.1 | NULL: no different from other triggers | crit | 0.55 | ⬜ | — |
| 11.2 | NULL: direction contradiction | crit | 0.45 | ⬜ | partly in ch07 |
| 11.3 | NULL: Bartonella/Babesia too thin | crit | 0.60 | ⬜ | partly in ch07 |
| 12.1 | EQC: Barriales mouse/7-day | crit | 0.65 | ⬜ | partly in ch07 |
| 12.2 | EQC: Dong preprint/THP-1 | crit | 0.50 | ⬜ | — |
| 12.3 | EQC: Kempf 20yr/cancer cells | crit | 0.70 | ⬜ | — |
| 12.4 | EQC: Ohmori single animal | crit | 0.35 | ⬜ | partly in ch07 |
| 12.5 | EQC: Fitzgerald human null | crit | 0.65 | ⬜ | already in ch07 |

## Notes
- Standalone cycle; thematically nested under tick-borne group. Not a re-integration of existing tick-borne coverage — targets the *glycolytic-reprogramming mechanism* angle only.
- Related plans: tick-borne-symptom-domains, babesia-50pct-mecfs, shor-seronegative-lyme-cfs, ige-sensitization-spike-tick-neuroinflammation.
- Active Caps block set by Phase 2.
