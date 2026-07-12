# Integration Guide: Lichen Sclerosus as ME/CFS Comorbidity Marker

**Date:** 2026-05-01
**Research stream:** `lichen-sclerosus-mecfs`
**BibTeX keys:** `Kassels2024LSAutoimmune`, `DeLuca2023LS2023Update`, `Paganelli2025LSCytokines`, `Oyama2022LSGeneticInterplay`, `Wang2025LSEpigenetic`, `Paulis2019LSOxidativeStress`, `Regauer2005LSImmuneDysregulation`, `Gulin2023LSComorbiditySweden`, `Hu2021LSComorbidityMichigan`, `Halonen2024LSRiskFactorsFinland`, `Batham2024MECFSAutoimmunity`

---

## Core Hypothesis Assessment

**Working hypothesis:** Lichen sclerosus (LS) and ME/CFS share root immune dysregulation (Th1 overactivation, chronic inflammation), making LS a potential comorbidity marker or early warning sign of ME/CFS immune terrain.

**Verdict: PARTIALLY SUPPORTED — mechanistic overlap is real; direct epidemiological link is UNPROVEN**

### What the evidence supports
- LS and ME/CFS share the same cytokine signature: IL-7, IL-15, IFN-gamma, TNF-alpha elevated in both
- Both show Treg dysfunction (miR-155/Foxp3 axis in LS; Treg abnormalities in ME/CFS)
- Both share genetic risk loci (PTPN22, CTLA4) and HLA associations
- Both conditions show phenotypic overlap with the same diseases: Hashimoto's, Sjögren's, SLE
- Oxidative stress with reduced antioxidant capacity documented in both
- Neither fulfills classical autoimmune disease criteria despite immune dysregulation

### What the evidence does NOT support
- No study has directly measured LS prevalence in ME/CFS populations, or ME/CFS prevalence in LS populations
- Fibromyalgia (closest ME/CFS proxy examined) showed NO significant association with LS in the largest study (Halonen 2024; n=10,692; OR 0.85, CI 0.61-1.18)
- ME/CFS is absent from all LS comorbidity condition sets — this is a research gap, not a confirmed negative
- The LS autoimmune pattern is selectively cutaneous/mucosal — NOT all autoimmune phenotypes (RA, T1DM, MS are either null or protective)

---

## Evidence Summary (11 papers)

| Citation Key | Type | n | Certainty | Key contribution |
|---|---|---|---|---|
| Kassels2024LSAutoimmune | Cohort | 83,103 LS | 0.75 | 17 autoimmune conditions elevated in LS; ME/CFS not examined |
| Halonen2024LSRiskFactorsFinland | Case-control | 10,692 LS | 0.78 | FIBROMYALGIA NULL (OR 0.85); morphea/lichen planus highest ORs; T1DM/RA protective |
| Gulin2023LSComorbiditySweden | Cohort | 5,680 LS | 0.72 | Swedish registry confirms autoimmune clustering; ME/CFS not examined |
| Hu2021LSComorbidityMichigan | Retrospective | 865 VLS | 0.45 | Fibromyalgia univariate only; not significant after adjustment |
| DeLuca2023LS2023Update | Review | — | 0.70 | Definitive LS pathophysiology: Th1, IL-7, IL-15, IFN-gamma, miR-155, ECM1, OS |
| Paganelli2025LSCytokines | Review | — | 0.65 | Current cytokine landscape; ECM1 in 75% VLS; miR-155/Foxp3 Treg failure |
| Oyama2022LSGeneticInterplay | Review+exp | up to 1052 | 0.70 | ECM1 multi-immune-regulatory role; HLA associations; genetic architecture |
| Wang2025LSEpigenetic | Case-control | 8 LS | 0.40 | Epigenomic Th1 activation (IFNG hypomethylated); n critically small |
| Paulis2019LSOxidativeStress | Review | — | 0.55 | Oxidative stress as LS pathogenic driver; shared OS mechanism with ME/CFS |
| Regauer2005LSImmuneDysregulation | Review | — | 0.50 | Foundational: antigen-driven clonal T-cell selection in LS |
| Batham2024MECFSAutoimmunity | Syst. review | 10 studies | 0.55 | ME/CFS autoimmunity insufficient evidence; shared terrain with Hashimoto's/Sjögren's/SLE |

---

## Recommended Target Chapters

### Primary: Chapter 7 — Immune Dysfunction
**File:** `src/main/typst/mecfs/part2-pathophysiology/ch07-immune-dysfunction.typ`
**Environment type:** `observation` (for mechanistic overlaps) + `speculation` (for LS as comorbidity marker)
**Rationale:** Shared Th1 cytokine signature, Treg dysfunction, and oxidative stress are mechanistic immune findings directly relevant to immune dysfunction chapter.

Suggested framing:
```
Lichen sclerosus (LS), a chronic Th1-mediated dermatosis, shares a cytokine
signature with ME/CFS: IL-7, IL-15, IFN-gamma, and TNF-alpha are elevated
in both conditions, while IL-10 is reduced @DeLuca2023LS2023Update
@Paganelli2025LSCytokines. Both conditions also show Treg dysfunction via
the miR-155/Foxp3 pathway and genetic risk loci (PTPN22, CTLA4) shared with
established autoimmune diseases @Batham2024MECFSAutoimmunity. Whether this
mechanistic overlap reflects a shared immune predisposition terrain remains
undemonstrated: no study has directly measured LS-ME/CFS co-occurrence.
```

### Secondary: Chapter 5 — Subgroups
**File:** `src/main/typst/mecfs/part1-clinical/ch05-subgroups.typ`
**Environment type:** `speculation`
**Rationale:** If LS is a marker of the "autoimmune immune dysregulation subgroup" of ME/CFS patients, it belongs in subgroup discussion.

Suggested framing:
```
A hypothesis worth prospective investigation: ME/CFS patients with lichen
sclerosus may represent a subgroup with heightened autoimmune terrain
predisposition, given shared genetic risk architecture (PTPN22, CTLA4,
HLA-DQ7/DR12) and overlapping comorbidity profiles
@Oyama2022LSGeneticInterplay @Batham2024MECFSAutoimmunity. This remains
a speculation: no cohort data exist on LS prevalence in ME/CFS.
Certainty: Low (0.30).
```

### Tertiary: Chapter 20 — Biomarker Research
**File:** `src/main/typst/mecfs/part4-research/ch20-biomarker-research.typ`
**Environment type:** `open_question`
**Rationale:** ECM1 autoantibodies (94% specificity for LS, present in 75% of vulvar LS) could hypothetically serve as a stratification biomarker if LS co-occurs in ME/CFS patients.

---

## Null Results to Include

MANDATORY: The following null results must accompany any integration:

1. **Fibromyalgia-LS association: NOT established.** Halonen 2024 (n=10,692) shows OR 0.85 (CI 0.61-1.18) — no significant association. This is the best-powered data point and constrains fibromyalgia-mediated LS-ME/CFS overlap theories.

2. **Direct LS-ME/CFS epidemiology: entirely absent.** Zero studies have measured LS prevalence in ME/CFS cohorts or vice versa. This is a research gap, not a null result — but the absence of data is real.

3. **ME/CFS is not an established autoimmune disease** (Batham 2024 systematic review). Any integration framing LS as an "autoimmune comorbidity" of ME/CFS must note this limitation.

4. **LS selectively associates with cutaneous/mucosal autoimmunity, NOT all autoimmune conditions.** RA, T1DM, MS are null or protective in LS. This selective pattern constrains the shared-terrain hypothesis.

---

## Certainty Assessment for Integration

| Claim | Evidence base | Certainty | Integration environment |
|---|---|---|---|
| LS and ME/CFS share Th1 cytokine profile | Multiple replicated reviews | 0.65 | observation |
| LS and ME/CFS share genetic risk loci | Limited data; genetic overlap not directly tested | 0.35 | speculation |
| LS could be a comorbidity marker for ME/CFS | No epidemiological data; indirect inference only | 0.20 | speculation |
| LS and ME/CFS share oxidative stress pathology | Both documented in isolation; no joint studies | 0.50 | observation |
| Fibromyalgia is an LS comorbidity | Null result (Halonen 2024) | NOT supported | warning/null |

---

## Research Gap Statement

No published study has directly measured:
- LS prevalence in ME/CFS populations
- ME/CFS prevalence in LS populations
- ECM1 autoantibody status in ME/CFS patients
- Joint cytokine profiling in patients with both conditions

**Proposed research question** (for hypothesis-registry or ch20):
> Does lichen sclerosus occur at higher than expected prevalence in ME/CFS patients, and if so, does ECM1 autoantibody status correlate with ME/CFS immune dysregulation severity?

---

## Integration Procedure for Main Session

1. Do NOT add LS as a confirmed comorbidity of ME/CFS — no epidemiological evidence
2. DO add LS as an example of Th1-dominant immune dysregulation sharing mechanistic features with ME/CFS (ch07)
3. DO include the fibromyalgia null result (Halonen 2024) if discussing LS-fibromyalgia overlap
4. DO note the research gap: no direct LS-ME/CFS prevalence studies exist
5. Frame any LS-ME/CFS connection as "shared immune terrain hypothesis" or "speculation" — not established fact
6. Cite null results alongside positive mechanistic findings — do not cherry-pick
