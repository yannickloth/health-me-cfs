# Integration Guide: Matits et al. 2026 — Circulating cf-mtDNA in Long COVID

**For:** chapter-integrator agent
**Status:** Ready for integration
**Literature folder:** `Literature/biomarkers/Matits_2026_cfmtDNA_LongCOVID/`

---

## Paper Summary

**Citation key:** `Matits2026cfmtDNA`
**Full citation:** Matits L, et al.; EPILOC Phase 2 Study Group. Circulating mitochondrial and cellular damage markers in long COVID: Links to cognitive function, psychological distress, and inflammation. _Molecular Psychiatry_. 2026. doi:10.1038/s41380-026-03471-0. PMID: 41654652.

**Design:** Nested case-control study from the EPILOC (Epidemiology of Long COVID) population-based cohort, Baden-Württemberg, Germany.

**Sample:** n=228 (PASC/Long COVID n=128; recovered controls n=100)

**Key measurements:**
- Relative circulating cell-free mitochondrial DNA (ccf-mtDNA) by qPCR (-ΔCT)
- Total ccf-DNA by UV-Vis spectroscopy
- CRP, systemic immune-inflammation index (SII)
- Cognitive/psychological assessment via PCA (3 components)

---

## Core Findings

1. PASC patients had **lower relative ccf-mtDNA** than recovered controls
   - With full covariates: F(1,192)=2.92; p=0.089; partial η²=0.01 (NOT significant)
   - Excluding high-CRP (>10 mg/L): F(1,181)=4.36; p=0.038; partial η²=0.02 (just significant; very small effect)

2. **Cognition correlated positively with ccf-mtDNA** (less ccf-mtDNA = worse cognition)

3. **CRP correlated negatively with ccf-mtDNA** (higher inflammation = less ccf-mtDNA)

4. **No elevation in total cfDNA** — the reduction is mitochondria-specific

5. **25% of PASC patients** showed low-grade inflammation (elevated CRP)

**Author interpretation:** Reduced ccf-mtDNA reflects impaired mitophagy / altered mitochondrial quality control — damaged mitochondria accumulate instead of being released and cleared.

**Alternative interpretation (important):** PASC patients are less physically active than controls; ccf-mtDNA rises with exercise. Deconditioning alone could explain the reduction.

---

## The ME/CFS vs Long COVID cf-mtDNA Question

**User's question:** Does this finding distinguish Long COVID from ME/CFS?

**Current evidence:**

| Condition | cf-mtDNA direction | Method | Notes |
|---|---|---|---|
| Acute COVID-19 | Elevated | Plasma | Mortality marker, massive cell death |
| Long COVID (Matits 2026) | Reduced | Plasma, free, qPCR | At rest; effect size very small |
| Long COVID (Szogi 2024) | Reduced | Tissue biopsy | n=5, selected for ciliary dyskinesia |
| ME/CFS (Tsilioni 2022) | Elevated post-exercise | Serum exosome-associated | Only after exercise, not at rest |
| ME/CFS (Myhill 2012) | Total cfDNA elevated 3.5x | Plasma, total | NOT mtDNA-specific; methodological concerns |

**Assessment:** The Long COVID vs ME/CFS cf-mtDNA contrast is PLAUSIBLE but NOT established by direct comparison. Key confounds:
- Different measurement compartments (free plasma vs. exosome-associated)
- Different timing (rest vs. post-exercise)
- No study has directly measured free cf-mtDNA in ME/CFS patients at rest using the same method
- Effect size in Matits 2026 is very small and borderline significant

**Recommended framing for the document:** Present as a preliminary observation and research gap, not a confirmed distinguishing biomarker.

---

## Certainty Assessment

- **Overall certainty:** Medium-Low
- **Study quality:** Medium-High (population-based, n=228, high-impact journal)
- **Effect size:** Very small (partial η²=0.01-0.02)
- **Significance:** Borderline (lost after full covariate adjustment)
- **Replication:** Not replicated in ME/CFS; only second PASC study (first n=5)
- **Key limitations:** Activity confound, heterogeneous PASC definition, multiple comparison issues

---

## Recommended Integration Points

### Primary: ch14d-cross-disease.typ

**File:** `src/main/typst/mecfs/part2-pathophysiology/ch14/ch14d-cross-disease.typ`
**Section hint:** ME/CFS vs Long COVID — biomarker comparison section
**Environment type:** `observation` (finding is real but interpretation uncertain) or `speculation` (for the distinguishing biomarker claim)

**Suggested content for ch14d:**

```typst
#observation[Lower circulating cf-mtDNA in Long COVID vs ME/CFS?][
  Matits et al.~@Matits2026cfmtDNA found lower relative circulating
  cell-free mitochondrial DNA (ccf-mtDNA) in Long COVID patients (PASC;
  n=128) compared to recovered controls (n=100; partial η²=0.01--0.02;
  p=0.038 after excluding high-CRP outliers). Lower ccf-mtDNA correlated
  with worse general cognition and higher CRP. Study: (population-based
  EPILOC cohort; certainty: medium-low due to very small effect size and
  loss of significance after full covariate adjustment).

  By contrast, Tsilioni et al.~@Tsilioni2022exosome found
  exosome-associated mtDNA _elevated_ in ME/CFS serum after exercise
  challenge (not at rest). These findings may point to different
  mitochondrial dynamics: Long COVID may involve impaired mitophagy
  (damaged mitochondria trapped intracellularly), whereas ME/CFS may
  involve exercise-triggered mitochondrial release via exosomes.
  Direct head-to-head comparison using identical methods is absent.
]
```

**Speculation environment for the distinguishing biomarker hypothesis:**

```typst
#speculation[cf-mtDNA as a potential Long COVID vs ME/CFS distinguishing marker][
  If Low cf-mtDNA at rest (Long COVID) contrasts with elevated
  exosome-associated mtDNA after exercise (ME/CFS), cf-mtDNA dynamics
  could in principle help distinguish the two conditions. However, no
  direct comparison exists: studies use different compartments (free
  plasma vs. exosome-associated), different timing (rest vs.
  post-exercise), and no study has measured free cf-mtDNA at rest in
  a well-characterised ME/CFS cohort. This remains a hypothesis
  requiring direct experimental validation.
  @Matits2026cfmtDNA @Tsilioni2022exosome
]
```

---

### Secondary: ch20-biomarker-research.typ

**File:** `src/main/typst/mecfs/part4-research/ch20-biomarker-research.typ`
**Section hint:** Mitochondrial biomarkers / emerging biomarkers section
**Environment type:** `observation` plus a `limitation` note

**Suggested content:**

```typst
#observation[Circulating cf-mtDNA as a Long COVID biomarker candidate][
  Matits et al.~@Matits2026cfmtDNA (n=228; EPILOC population-based
  cohort) found reduced relative ccf-mtDNA in Long COVID patients
  compared to recovered controls, with the reduction correlating with
  worse cognition and higher CRP. Effect sizes were very small (partial
  η²≤0.02) and significance was borderline after covariate adjustment.
  A prior study (Szögi et al.~@Szogi2024cfmtDNA; n=5) also found
  reduced ccf-mtDNA alongside mitochondrial ultrastructural abnormalities
  in Long COVID. Importantly, physically active individuals have higher
  cf-mtDNA; deconditioning may partially explain the reduction in PASC
  patients independently of underlying pathology.
]
```

---

### Tertiary: ch06-energy-metabolism.typ

**File:** `src/main/typst/mecfs/part2-pathophysiology/ch06-energy-metabolism.typ`
**Section hint:** Mitochondrial dynamics / quality control section
**Environment type:** `hypothesis` (for the mitophagy dysregulation angle)

**Suggested content:**

```typst
#hypothesis[Impaired mitophagy traps damaged mitochondria in Long COVID][
  In acute SARS-CoV-2 infection, markedly elevated cf-mtDNA signals
  massive mitochondrial release during cell death. Paradoxically,
  Long COVID patients show _reduced_ cf-mtDNA
  (Matits et al.~@Matits2026cfmtDNA; Szögi et al.~@Szogi2024cfmtDNA).
  One interpretation: impaired mitophagy prevents clearance and
  extracellular release of damaged mitochondria, causing their
  intracellular accumulation. This would produce chronic cellular stress
  and energy deficits without the external damage signal seen in acute
  infection. This remains hypothetical; the deconditioning alternative
  explanation has not been ruled out.
]
```

---

### Tertiary: ch08-neurological.typ

**File:** `src/main/typst/mecfs/part2-pathophysiology/ch08-neurological.typ`
**Section hint:** Cognitive impairment / brain fog biological correlates
**Environment type:** `observation`

**Suggested content:**

```typst
#observation[cf-mtDNA correlates with cognition in Long COVID][
  In a population-based Long COVID cohort (n=228), Matits et al.\
  ~@Matits2026cfmtDNA found that general cognition score correlated
  positively with relative circulating cf-mtDNA (less mtDNA = worse
  cognition). CRP showed no independent association with cognition after
  controlling for cf-mtDNA, suggesting mitochondrial dynamics may be
  a more proximal correlate of cognitive dysfunction than systemic
  inflammation. Effect sizes were small; causal direction is unknown.
]
```

---

## Additional BibTeX Entries Required

Three entries need to be added to references.bib (Matits 2026 is new; Szogi 2024 may also be new):

1. `Matits2026cfmtDNA` — primary paper (new)
2. `Szogi2024cfmtDNA` — Szögi et al. GeroScience 2024 (check if already present)
3. `Tsilioni2022exosome` — already present as `Tsilioni2022exosome` (verify key matches)

---

## Notes for chapter-integrator

1. The effect sizes in this paper are genuinely very small. Do not overstate the finding.
2. The ME/CFS vs Long COVID comparison is speculative — use `speculation` environment, not `achievement` or `observation`.
3. Always pair Matits 2026 with Tsilioni 2022 when discussing ME/CFS cf-mtDNA contrast.
4. The physical activity confound should be acknowledged in any integration.
5. The EPILOC cohort defines PASC heterogeneously — some participants may not meet ME/CFS criteria even if symptomatic.
6. The Szögi 2024 paper (n=5, tissue biopsy, ciliary dyskinesia controls) is very limited; cite with caution.
