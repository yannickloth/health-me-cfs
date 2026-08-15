# Literature Summary: Irisin Signaling Resistance in PEM

**Topic slug:** `irisin-signaling-resistance-pem`
**Primary paper:** Souma et al. 2026 (_Int J Mol Sci_ 27(11):4770, DOI 10.3390/ijms27114770)
**Date:** 2026-08-15
**Agent:** literature-integrator (deepseek-v4-pro)

## Scope

Phase 1 literature research for the integrate-topic pipeline. The primary paper
(Souma 2026) proposes a mechanistic framework: circulating thrombospondin-1
(TSP-1) antagonizes irisin signaling through the HSP90α–αvβ5 integrin axis,
producing "irisin signaling resistance" that contributes to the metabolic
dysfunction of post-exertional malaise (PEM).

The research targeted four evidence families:

1. **Direct:** irisin in ME/CFS / chronic fatigue (null/very sparse — only Souma 2026 exists).
2. **Mechanistic support:** irisin receptor biology (αV integrins, HSP90α two-step), TSP-1/NO/CD47 vascular biology.
3. **Competing/contradicting:** irisin in fibromyalgia (null), depression (low irisin), sarcopenia (null diagnostic accuracy).
4. **Indirect biochemical links:** irisin↔mitochondria/redox (CoQ10, PGC-1α), TSP-1↔NO/fibrosis, eHSP90α signaling.

## Included Papers (14 total)

| # | Paper | Key | Role | Population | Raw cert | Weight | Discounted |
|---|-------|-----|------|-----------|---------:|-------:|-----------:|
| 1 | Souma 2026 | Souma2026IrisinSignalingResistance | PRIMARY | ME/CFS (CCC, n=92) | 0.55 | 1.00 | **0.55** |
| 2 | Boström 2012 | Bostrom2012Irisin | Foundational (irisin discovery) | General | 0.85 | 0.75 | 0.64 |
| 3 | Kim 2018 | Kim2018IrisinIntegrin | Receptor (αV integrin) | Mouse/cell | 0.80 | 0.50 | 0.40 |
| 4 | A 2023 | A2023IrisinHsp90 | Receptor (HSP90α two-step) | In vitro | 0.80 | 0.40 | 0.32 |
| 5 | Rogers 2014 | Rogers2014TSP1CD47 | TSP-1/NO machinery | General | 0.75 | 0.75 | 0.56 |
| 6 | Roberts 2017 | Roberts2017MatricellularRedox | TSP-1 redox/NO | General | 0.75 | 0.75 | 0.56 |
| 7 | Bazzazi 2018 | Bazzazi2018TSP1eNOS | TSP-1/eNOS (computational) | In silico | 0.50 | 0.30 | 0.15 |
| 8 | Ercan 2026 | Ercan2026IrisinFMnull | NULL (irisin unchanged in FM) | Fibromyalgia | 0.40 | 0.80 | 0.32 |
| 9 | Belviranlı 2026 | Belviranli2026CoQ10IrisinFM | Indirect (CoQ10→irisin) | Animal | 0.45 | 0.50 | 0.23 |
| 10 | dos Santos 2023 | DosSantos2023WBVTIrisinFM | Indirect (vibration→irisin) | Fibromyalgia | 0.55 | 0.80 | 0.44 |
| 11 | Elsen 2014 | Elsen2014IrisinHumanCaveat | CONTROVERSY (ELISA/human) | General | 0.70 | 0.75 | 0.53 |
| 12 | Cicek 2023 | Cicek2023IrisinDepression | Indirect (irisin low in depression) | General | 0.50 | 0.75 | 0.38 |
| 13 | Lapauw 2026 | Lapauw2026IrisinSarcopeniaNull | NULL (sarcopenia panel) | General | 0.45 | 0.75 | 0.34 |
| 14 | Nepotchatykh 2020* | (pre-existing) | Cohort-overlap anchor | ME/CFS | 0.50 | 1.00 | 0.50 |

\* Nepotchatykh 2020 (`Nepotchatykh2020mirnaMECFS`) already exists in
`genetics-epigenetics.bib` — flagged for cohort overlap, not re-added.

## Key Findings from Primary Paper (Souma 2026)

1. ME patients (n=92, CCC) have LOWER baseline plasma irisin than sedentary controls (p<0.05).
2. Blunted irisin response to 90-min mechanical stress challenge (p<0.05).
3. Baseline irisin is an independent predictor of fatigue severity (MFI-20 β=0.728, p=0.018) — a paradox (higher irisin = worse fatigue), interpreted as compensatory-but-ineffective.
4. Moderate-to-severe fatigue patients show elevated irisin AND TSP-1 (p<0.05).
5. Functional CDS (Jurkat cells): TSP-1 inhibits irisin signaling concentration-dependently; signaling requires αvβ5 + eHSP90α; TSP-1 is the dominant antagonist.
6. Proposed targets: reduce TSP-1, block its receptor interactions, restore NO signaling, stabilize HSP90α-dependent irisin signaling.

## Null / Negative / Competing Evidence

- **Ercan 2026 (FM):** serum irisin unchanged vs controls — contradicts simple "low irisin = chronic fatigue/pain" model.
- **Lapauw 2026 (sarcopenia):** irisin-inclusive panel has poor diagnostic accuracy — cautions against irisin as a standalone biomarker.
- **Elsen 2014:** canonical caution — human FNDC5/irisin regulation not reproduced across studies; commercial ELISA kits conflicting. Directly qualifies Souma 2026's plasma irisin ELISA.
- **Cicek 2023 (depression):** irisin LOW in depression (fatigue) — the *opposite* direction to Souma's paradoxical high-irisin-with-worse-fatigue in severe ME; highlights the paradox is ME-specific and not a generic fatigue correlate.
- **Retracted paper (excluded):** Samanci 2019 "serum irisin in fibromyalgia" (_North Clin Istanb_) is RETRACTED (2025) — excluded; do not cite.

## Indirect Biochemical Links (MANDATORY — search logic)

- **Topic does:** irisin is a PGC-1α-dependent exercise myokine (Boström 2012) signaling via αV integrins (Kim 2018) + eHSP90α (A 2023); TSP-1 antagonizes this and suppresses NO via CD47 (Rogers 2014; Roberts 2017).
- **Searched the downstream effect in ME/CFS-adjacent conditions:** irisin in fibromyalgia (null: Ercan 2026), irisin in depression-fatigue (Cicek 2023), irisin in sarcopenia (null: Lapauw 2026), CoQ10/redox→FNDC5-irisin axis (Belviranlı 2026, animal), mechanical stimulus→irisin (dos Santos 2023, RCT).
- **Documented logic:** "Irisin is downstream of PGC-1α/mitochondrial biogenesis and upstream of αvβ5/HSP90α signaling; TSP-1 antagonizes both NO and irisin pathways → searched 'irisin + fatigue/fibromyalgia/sarcopenia', 'TSP-1 + NO/vascular', 'HSP90α + extracellular signaling' → 14 papers screened, 13 added."

## Cohort-Overlap Detection (Augment B)

**FLAGGED — Moreau-group biobank overlap.** Souma 2026 is from the Moreau lab
(CHU Sainte-Justine / ICanCME / OMF Collaborative Center, Montreal). The same
biobank/team produced:

- `Nepotchatykh2020mirnaMECFS` (Sci Rep 2020) — circulating miRNA in severe ME, stress-PEM context. Shared co-authors (Elremaly, Godbout, Franco, Moreau).
- `Nepotchatykh2023mirnaMECFS` (Sci Rep 2023) — miRNA discriminating ME/CFS vs FM.
- `ChalderMoreau2026ptprn2` (J Transl Med 2026) — PTPRN2/PHB2 epigenetics; shared co-authors (Elremaly, Elbakry, Godbout, Moreau).
- `Fineberg2025Metformin` (ACS Pharm Transl Sci 2025) — Moreau co-author.

**Integration consequence:** Souma 2026 is NOT independent of the existing
Moreau-group evidence in the corpus. Its irisin/TSP-1 findings must be framed
as part of the same Montreal cohort lineage, not as independent replication of
those miRNA/epigenetic findings. The sample (n=92 ME vs 44 controls) may overlap
with prior Moreau-group cohorts.

## Certainty Summary

- Highest discounted certainty (ME/CFS-specific): Souma 2026 = **0.55**.
- Strongest mechanistic support (general biology): Boström 0.64, Rogers/Roberts 0.56, Elsen 0.53.
- All irisin-in-FM/psychiatric/sarcopenia findings: discounted 0.23–0.44 (low-medium).
- No independent ME/CFS replication of the irisin finding exists (the field is Souma 2026 alone).

## Integration Guidance (for Phase 2)

The primary paper is the only direct ME/CFS evidence, and it is a single cohort
with a pre-existing Moreau-group lineage. The mechanistic chain (PGC-1α → FNDC5
→ irisin → αvβ5/eHSP90α signaling ← TSP-1 antagonism → NO suppression) is
well-established in general biology but the ME/CFS-specific application rests on
one cross-sectional study with an ELISA-measurement caveat. Recommendation for
Phase 2: expect a **PARTIAL** (or cautious PROCEED) decision — treat the
TSP-1–irisin axis as a `#speculation`/`#open-question` candidate, with the null
(Ercan), controversy (Elsen), and cohort-overlap caveats explicitly attached.
