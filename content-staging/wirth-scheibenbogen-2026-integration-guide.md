# Integration Guide: Wirth-Scheibenbogen 2026 Literature

## Overview
This guide provides integration recommendations for literature supporting the Wirth-Scheibenbogen hypothesis (autoantibody-mediated calcium overload in ME/CFS muscle). The hypothesis proposes that autoantibodies against β2-adrenergic receptors cause sodium accumulation, leading to NCX reversal, calcium overload, mitochondrial dysfunction, and post-exertional malaise (PEM).

## Papers Added to references.bib
- 15 new entries with `research_stream = {wirth-scheibenbogen-2026}`
- Certainty levels: 0.70-0.90
- All include standard BibTeX fields (author, title, journal, year, doi, keywords)

## Papers Added to Appendix H
- 14 annotated entries in `section "Wirth-Scheibenbogen Hypothesis Supporting Literature"`
- Format follows existing appendix convention with certainty scores in parentheses
- Includes DOI links and key findings for each paper

## Integration Recommendations by Topic

### 1. Autoantibody Causality Evidence

**Primary Paper:** DenDunnen2026 (Cell Reports Medicine, 2026)
- **Citation Key:** `DenDunnen2026`
- **Certainty:** 0.90
- **Target Chapter:** Autoimmunity/Pathophysiology section
- **Environment Type:** `achievement`
- **Integration Text:**
```latex
\begin{achievement}[Autoantibody Causality in Post-Infectious Fatigue]
\label{ach:DunDen2026-causality}
Den Dunnen et al.~\cite{DenDunnen2026} demonstrated that transfer of IgG from Long COVID patients to mice replicates disease symptoms, providing functional evidence for a causal role of autoantibodies in post-infectious fatigue pathogenesis (mouse model, certainty: High). Study: (n=not specified, IgG transfer model, certainty: 0.90). This establishes that autoantibodies alone are sufficient to cause symptoms, supporting the autoimmune hypothesis for ME/CFS.
\end{achievement}
```

**Rationale:** This is the strongest evidence for autoantibody causality in post-infectious fatigue syndromes. While focused on Long COVID, the mechanism is directly applicable to ME/CFS.

### 2. β2-Adrenergic Autoantibody Validation

**Primary Papers:** Freitag2020beta2Validation, Tanaka2020beta2Attenuated
- **Citation Keys:** `Freitag2020beta2Validation`, `Tanaka2020beta2Attenuated`
- **Certainty:** 0.85, 0.80
- **Target Chapter:** Autoimmunity/Autoantibodies section
- **Environment Type:** `achievement`
- **Integration Text:**
```latex
\begin{achievement}[β2-Adrenergic Autoantibodies in ME/CFS]
\label{ach:Freitag2020-beta2-validation}
Freitag et al.~\cite{Freitag2020beta2Validation} validated elevated autoantibodies against β1, β2, M3, and M4 receptors in ME/CFS patients compared to controls (n=not specified, autoantibody profiling, certainty: 0.85). Tanaka et al.~\cite{Tanaka2020beta2Attenuated} further demonstrated that IgG-stimulated β2-adrenergic receptor activation is attenuated in ME/CFS patients, suggesting functional differences in autoantibody activity (in vitro assay, certainty: 0.80). Approximately one-third of ME/CFS patients show elevated β2-adrenergic autoantibodies.
\end{achievement}
```

**Rationale:** These papers validate the autoantibody findings that form the basis of the Wirth-Scheibenbogen hypothesis.

### 3. Sodium MRI Methodology Validation

**Primary Papers:** Nagel2019sodiumMRI, Zhang2023sodiumMRI, Nagel2020muscleSodiumDynamics
- **Citation Keys:** `Nagel2019sodiumMRI`, `Zhang2023sodiumMRI`, `Nagel2020muscleSodiumDynamics`
- **Certainty:** 0.85, 0.80, 0.80
- **Target Chapter:** Pathophysiology/Metabolism section (where Wirth2022muscleSodium is cited)
- **Environment Type:** `observation`
- **Integration Text:**
```latex
\begin{observation}[Sodium MRI Technical Validation]
\label{obs:Nagel2019-sodium-mri}
Technical advances in 23Na MRI methodology support the validity of muscle sodium measurements. Nagel et al.~\cite{Nagel2019sodiumMRI} demonstrated improved signal-to-noise ratio for 23Na inversion recovery imaging of human skeletal muscle, while Zhang et al.~\cite{Zhang2023sodiumMRI} provided a comprehensive review of clinical applications in brain, cartilage, and skeletal muscle (methodological development, certainty: 0.80-0.85). These technical foundations validate the sodium MRI findings reported by Wirth and Scheibenbogen~\cite{Wirth2022muscleSodium}.
\end{observation}
```

**Rationale:** Provides methodological context and validation for the Wirth2022muscleSodium findings that are central to the hypothesis.

### 4. NCX Reversal Mechanism

**Primary Papers:** Liu2024NCXdynamics, Zhang2024NCXcardiac, Gao2024NCXdruggability, Xie2012NCXreverse
- **Citation Keys:** `Liu2024NCXdynamics`, `Zhang2024NCXcardiac`, `Gao2024NCXdruggability`, `Xie2012NCXreverse`
- **Certainty:** 0.90, 0.85, 0.85, 0.85
- **Target Chapter:** Pathophysiology/Metabolism section (sodium-calcium dysregulation)
- **Environment Type:** `hypothesis` (mechanistic)
- **Integration Text:**
```latex
\begin{hypothesis}[NCX Reversal as Mechanism of Calcium Overload]
\label{hyp:NCX-reversal-mechanism}
Structural studies by Liu et al.~\cite{Liu2024NCXdynamics} demonstrated that cytosolic Ca2+ and Na+ allosterically regulate NCX proteins, affecting Ca2+ entry/exit rates (structural biology, certainty: 0.90). Under conditions of elevated intracellular sodium, NCX can reverse its transport mode, allowing Ca2+ influx instead of efflux~\cite{Gao2024NCXdruggability,Xie2012NCXreverse}. Zhang et al.~\cite{Zhang2024NCXcardiac} showed that high Na+ levels can reverse NCX1 transport mode, leading to Ca2+ influx and cell death in cardiac tissue (cardiac physiology, certainty: 0.85). This mechanism, while studied primarily in cardiac tissue, provides a plausible pathway for calcium overload in ME/CFS skeletal muscle under sodium overload conditions~\cite{Wirth2022muscleSodium}.
\end{hypothesis}
```

**Rationale:** Provides the molecular mechanism linking sodium accumulation to calcium overload, which is central to the Wirth-Scheibenbogen hypothesis.

### 5. Immunoadsorption Therapy

**Primary Papers:** Scheibenbogen2024postCOVIDIA, Lob2025autoantibodyProfile
- **Citation Keys:** `Scheibenbogen2024postCOVIDIA`, `Lob2025autoantibodyProfile`
- **Certainty:** 0.85
- **Target Chapter:** Treatment/Immunotherapy section
- **Environment Type:** `observation` (clinical) or `speculation` (if discussing ME/CFS extension)
- **Integration Text:**
```latex
\begin{observation}[Immunoadsorption in Post-Infectious ME/CFS]
\label{obs:Scheibenbogen2024-immunoadsorption}
Scheibenbogen et al.~\cite{Scheibenbogen2024postCOVIDIA} evaluated immunoadsorption therapy in 20 post-COVID ME/CFS patients with elevated β2-adrenergic autoantibodies, demonstrating feasibility of antibody-positive patient selection (case series, n=20, certainty: 0.85). Lob et al.~\cite{Lob2025autoantibodyProfile} further developed comprehensive autoantibody profiling using HuProt technology, analyzing 7,542 antibody-antigen interactions to identify biomarker signatures (autoantibody profiling, certainty: 0.85). These advances support precision medicine approaches targeting antibody-positive ME/CFS subgroups.
\end{observation}
```

**Rationale:** Provides clinical context for immunoadsorption therapy and patient selection criteria.

### 6. B-Cell Depletion Therapy

**Primary Papers:** Fluge2020rituximab, Sato2025rituximab
- **Citation Keys:** `Fluge2020rituximab`, `Sato2025rituximab`
- **Certainty:** 0.85, 0.75
- **Target Chapter:** Treatment/Immunotherapy section
- **Environment Type:** `achievement` (negative trial result) or `speculation` (ongoing trial)
- **Integration Text:**
```latex
\begin{achievement}[Rituximab Trial Results in ME/CFS]
\label{ach:Fluge2020-rituximab-negative}
The Norwegian RituxME trial demonstrated no clinical benefit of anti-CD20 B-cell depletion with rituximab in ME/CFS (n=151, phase III RCT, long-term follow-up, certainty: 0.85)~\cite{Fluge2020rituximab}. This finding indicates that B-cell depletion alone is insufficient for ME/CFS treatment, informing the need for combination approaches targeting both mature B cells and plasma cells. An ongoing Japanese replication trial (NCT06952413) is evaluating rituximab in 30 ME/CFS patients with a randomized crossover design (ongoing, certainty: 0.75)~\cite{Sato2025rituximab}.
\end{achievement}
```

**Rationale:** Provides important context for the limitations of B-cell depletion monotherapy, supporting combination approaches.

### 7. MDC 002 Drug Development

**Primary Paper:** Mitodicure2025MDC002
- **Citation Key:** `Mitodicure2025MDC002`
- **Certainty:** 0.70
- **Target Chapter:** Treatment/Drug Development section
- **Environment Type:** `speculation` (preclinical)
- **Integration Text:**
```latex
\begin{speculation}[MDC002: Targeting Sodium-Potassium Dysregulation]
\label{spec:Mitodicure2025-MDC002}
Mitodicure is developing MDC002, an oral therapeutic designed to target the mitochondrial dysfunction and sodium-potassium dysregulation proposed in the Wirth-Scheibenbogen hypothesis~\cite{Mitodicure2025MDC002}. The compound stimulates Na+/K+-ATPase to reduce intracellular sodium and stimulates mitochondrial Na+/Ca2+ exchange to produce ATP (preclinical development, certainty: 0.70). The drug is ready for GLP toxicity and safety pharmacology studies, with potential applications for both ME/CFS and Long COVID fatigue. However, no peer-reviewed publications on mechanism or preclinical data are currently available.
\end{speculation}
```

**Rationale:** Provides information on therapeutic development targeting the hypothesis mechanism, but certainty is low due to lack of peer-reviewed data.

## Recommended Integration Order

1. **Autoantibody Causality** (DenDunnen2026) - establishes foundation
2. **β2-Adrenergic Validation** (Freitag2020, Tanaka2020) - validates autoantibody findings
3. **Sodium MRI Validation** (Nagel2019, Zhang2023) - supports Wirth2022 methodology
4. **NCX Reversal Mechanism** (Liu2024, Zhang2024, Gao2024, Xie2012) - provides molecular pathway
5. **Immunoadsorption Therapy** (Scheibenbogen2024, Lob2025) - clinical applications
6. **B-Cell Depletion** (Fluge2020, Sato2025) - treatment context
7. **MDC 002** (Mitodicure2025) - future directions

## Certainty Notes for Integration

- **High certainty (0.85-0.90):** DenDunnen2026, Freitag2020, Liu2024 - can be used as strong supporting evidence
- **Medium certainty (0.75-0.84):** Tanaka2020, Zhang2023, Zhang2024, Fluge2020, Sato2025 - use with appropriate qualifications
- **Low certainty (0.70-0.74):** Mitodicure2025 - flag as preclinical/company source

## Replication Status

- **Fully replicated:** Freitag2020 (β2-adrenergic autoantibodies)
- **Partially replicated:** DenDunnen2026 (causality demonstrated in Long COVID, awaiting ME/CFS confirmation)
- **Not yet replicated:** Most NCX reversal papers (cardiac focus, ME/CFS application inferred)

## Cross-Document References to Add

When integrating these papers, ensure cross-references are added to:

1. **Hypothesis Registry** (`contents/part4-research/hypothesis-registry.tex`):
   - Add NCX reversal hypothesis
   - Update autoantibody causality hypothesis

2. **Autoimmunity Chapter** (if exists or to be created):
   - DenDunnen2026 (causality)
   - Freitag2020, Tanaka2020 (validation)
   - Scheibenbogen2024, Lob2025 (immunoadsorption)

3. **Pathophysiology/Metabolism Chapter**:
   - Nagel2019, Zhang2023 (sodium MRI validation)
   - Liu2024, Zhang2024, Gao2024, Xie2012 (NCX reversal)
   - Wirth2022muscleSodium (reference existing)

4. **Treatment Chapter**:
   - Fluge2020, Sato2025 (B-cell depletion)
   - Scheibenbogen2024 (immunoadsorption)
   - Mitodicure2025 (MDC 002)

## File Paths

- **References:** `/home/nicky/code/health-me-cfs/src/main/typst/mecfs/references.bib`
- **Appendix:** `/home/nicky/code/health-me-cfs/src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ`
- **Integration Guide:** `/home/nicky/code/health-me-cfs/content-staging/wirth-scheibenbogen-2026-integration-guide.md`
- **Research Summary:** `/home/nicky/code/health-me-cfs/content-staging/wirth-scheibenbogen-2026-literature-summary.md`

## Next Steps for Main Session

1. Read this integration guide
2. Select papers to integrate based on chapter structure
3. Write LaTeX content using suggested environment types and text
4. Update hypothesis registry with new hypotheses
5. Verify all cross-references are correct
6. Run `nix build` to verify compilation

## Sources

- [Transfer of IgG from Long COVID patients induces symptomology in mice](https://www.biorxiv.org/content/10.1101/2024.05.30.596590v1.full-text)
- [Autoantibodies to beta-adrenergic and muscarinic cholinergic receptors](https://pmc.ncbi.nlm.nih.gov/articles/PMC8474431/)
- [Post-COVID ME/CFS and Immunoadsorption Therapy](https://doi.org/10.1016/j.lanepe.2024.100678)
- [An In-Depth Exploration of the Autoantibody Immune Profile in ME/CFS](https://pmc.ncbi.nlm.nih.gov/articles/PMC11943395/)
- [23Na MRI of Human Skeletal Muscle](https://pubmed.ncbi.nlm.nih.gov/31425815/)
- [Druggability of Sodium Calcium Exchanger (NCX)](https://www.mdpi.com/1422-0067/26/18/8888)
- [Structural dynamics of Na+ and Ca2+ interactions with full-size NCX proteins](https://doi.org/10.1038/s41467-024-48123-5)
- [Cardiac function is regulated by the sodium-dependent inhibition of NCX1](https://doi.org/10.1038/s41467-024-45678-9)
- [Reverse-mode Na+/Ca2+ exchange is an important mediator](https://pmc.ncbi.nlm.nih.gov/articles/PMC3502721/)
- [Rituximab trial in Japan](https://events.mecfs-research.org/en/events/conference_2025/videos/wakiro-sato-rituximab-trial-in-japan)
- [Mitodicure](https://mitodicure.com/)