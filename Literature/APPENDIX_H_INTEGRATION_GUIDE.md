# Appendix H Integration Guide

**File:** `contents/appendices/appendix-h-annotated-bibliography.tex`

This guide shows exactly where to add the 7 new papers to Appendix H.

---

## 1. Esfandyarpour 2019 - Nanoelectronics Biomarker

**Add to:** Section "Diagnostic Criteria and Clinical Guidelines" (after line ~90, before "Systematic Reviews")

**Suggested new subsection:**

```latex
\subsection{Esfandyarpour et al.\ 2019 --- Nanoelectronics Diagnostic Biomarker}

\begin{description}
    \item[Full Citation:] Esfandyarpour R, Kashi A, Nemat-Gorgani M, Wilhelmy J, Davis RW. A nanoelectronics-blood-based diagnostic biomarker for myalgic encephalomyelitis/chronic fatigue syndrome (ME/CFS). \textit{Proceedings of the National Academy of Sciences}. 2019;116(21):10250--10257.
    \item[DOI:] \href{https://doi.org/10.1073/pnas.1901274116}{10.1073/pnas.1901274116}
    \item[PMID:] 31036648
    \item[PMCID:] PMC6535016
    \item[Published:] April 29, 2019
    \item[Study Design:] Pilot diagnostic test development study
    \item[Sample Size:] 20 ME/CFS patients (Canadian Consensus Criteria), 20 healthy controls
    \item[Key Findings:]
    \begin{itemize}
        \item 100\% sensitivity and 100\% specificity (20/20 ME/CFS identified, 0/20 false positives, $P = 4.48 \times 10^{-9}$)
        \item Nanoelectronics impedance assay measures PBMC stress response to hyperosmotic challenge
        \item ME/CFS PBMCs show 75.61--406.2\% impedance excursion vs. controls $-27.33$ to 34.7\%
        \item Support Vector Machine classifier achieved linear separability using 6 impedance features
        \item Test yields results within hours from small blood sample
    \end{itemize}
    \item[Significance:] First objective blood-based diagnostic test for ME/CFS; potential platform for drug screening. Addresses major clinical gap (currently diagnosis by exclusion).
    \item[Limitations:] Small pilot study requires larger multi-center validation; specialized equipment not yet widely available; optimal testing within 5 hours of blood draw.
    \item[Certainty:] High-quality pilot study (PNAS publication, rigorous methodology); awaiting independent validation in larger cohorts before clinical deployment.
\end{description}
```

---

## 2. Syed 2025 - Mitochondrial Dysfunction Review

**Add to:** Section "Pathophysiology: Metabolic and Mitochondrial Dysfunction" (line ~259)
**Location:** Add as first subsection under this section (before or after existing "Mitochondrial Dysfunction" subsection at line ~263)

```latex
\subsection{Syed et al.\ 2025 --- Mitochondrial Dysfunction Comprehensive Review}

\begin{description}
    \item[Full Citation:] Syed AM, Karius AK, Ma J, Wang P, Hwang PM. Mitochondrial Dysfunction in Myalgic Encephalomyelitis/Chronic Fatigue Syndrome. \textit{Physiology}. 2025;40(4). Published online February 17, 2025.
    \item[DOI:] \href{https://doi.org/10.1152/physiol.00056.2024}{10.1152/physiol.00056.2024}
    \item[PMID:] 39960432
    \item[PMCID:] PMC12151296
    \item[Published:] February 17, 2025
    \item[Review Type:] Comprehensive narrative review of mitochondrial dysfunction mechanisms
    \item[Key Findings:]
    \begin{itemize}
        \item Lower mitochondrial metabolism and ATP synthesis rates in skeletal muscle
        \item Increased intracellular acidosis and glycolytic activity (metabolic shift)
        \item Elevated oxidative stress markers: lipid peroxidation, protein carbonyls, oxidized DNA
        \item Reduced antioxidants (coenzyme Q10)
        \item \textbf{WASF3-ER stress mechanism:} ER stress induces WASF3 protein, which localizes to mitochondria, disrupts respiratory supercomplexes, impairs ATP production
        \item Transgenic mice overexpressing WASF3: reduced exercise capacity, elevated blood lactate
        \item ER stress modulator (salubrinal) restores mitochondrial function in patient cells \textit{in vitro}
        \item Long COVID shows parallel mitochondrial dysfunction (increased glycolytic fibers, PEM)
    \end{itemize}
    \item[Therapeutic Implications:] CoQ10 and NADH supplementation show modest benefits (variable efficacy); ER stress modulators promising in cell culture (clinical validation needed); supports pacing and energy conservation strategies.
    \item[Significance:] Synthesizes disparate findings into coherent WASF3-ER stress-mitochondrial pathway. Links viral infections to chronic energy dysfunction. Explains PEM via ATP depletion and slow regeneration.
    \item[Certainty:] High for core mechanisms (ATP depletion, oxidative stress replicated across studies); medium-high for WASF3 pathway (novel 2023 finding, validated in cells and mice); medium for therapeutic efficacy.
\end{description}
```

---

## 3. Viral Papers (EBV, Enterovirus, Herpesvirus)

**Add to:** Section "Pathophysiology: Viral Persistence and Reactivation" (line ~339)

**Three new subsections:**

```latex
\subsection{Ruiz-Pablos et al.\ 2021 --- Epstein-Barr Virus and ME/CFS Origin}

\begin{description}
    \item[Full Citation:] Ruiz-Pablos M, Paiva B, Montero-Mateo R, Garcia N, Zabaleta A. Epstein-Barr Virus and the Origin of Myalgic Encephalomyelitis or Chronic Fatigue Syndrome. \textit{Frontiers in Immunology}. 2021;12:656797.
    \item[DOI:] \href{https://doi.org/10.3389/fimmu.2021.656797}{10.3389/fimmu.2021.656797}
    \item[PMID:] 34867935
    \item[Published:] November 15, 2021
    \item[Key Findings:]
    \begin{itemize}
        \item EBV latency and immune evasion may trigger ME/CFS in genetically predisposed individuals
        \item Specific HLA-II alleles (DRB1, DQB1 variants) confer greater EBV susceptibility
        \item $\sim$10\% of infectious mononucleosis patients develop ME/CFS at 6 months
        \item ME/CFS patients show elevated anti-EBV antibodies, defective EBV-specific immune responses
        \item Severity of acute EBV infection predicts ME/CFS development
    \end{itemize}
    \item[Mechanism:] EBV establishes latency in B cells; in susceptible individuals, latently infected cells evade immune surveillance; persistent infection/reactivation triggers chronic immune dysregulation.
    \item[Certainty:] Medium (clinical associations established; mechanism plausible; therapeutic trials show mixed results).
\end{description}

\subsection{O'Neal \& Hanson 2021 --- Enterovirus Theory Critical Review}

\begin{description}
    \item[Full Citation:] O'Neal AJ, Hanson MR. The Enterovirus Theory of Disease Etiology in Myalgic Encephalomyelitis/Chronic Fatigue Syndrome: A Critical Review. \textit{Frontiers in Medicine}. 2021;8:688486.
    \item[DOI:] \href{https://doi.org/10.3389/fmed.2021.688486}{10.3389/fmed.2021.688486}
    \item[PMID:] 34222292
    \item[Published:] June 18, 2021
    \item[Key Findings:]
    \begin{itemize}
        \item Historical ME/CFS epidemics (1930s--1960s) coincided with polio outbreaks
        \item Increased prevalence of chronic enteroviral infections in ME/CFS vs. controls
        \item All brain/CSF tissue studies detected enteroviral RNA or VP1 capsid protein
        \item Certain coxsackievirus strains downregulate mitochondrial energy metabolism proteins
        \item Enteroviruses establish chronic CNS infections (hypothalamus, brainstem, cortex)
    \end{itemize}
    \item[Critical Methodology Review:] Prior negative studies used inadequate methods (serology non-specific, RT-PCR primers covered only 21--85 of 117 enterovirus species, blood sampling instead of CNS/muscle tissue). Recommends brain, CSF, muscle biopsies with comprehensive RT-PCR or RNAseq.
    \item[Certainty:] Medium (epidemiological/historical evidence strong; mechanistic proof limited by methodological challenges).
\end{description}

\subsection{Nunes et al.\ 2024 --- Herpesvirus Endothelial Dysfunction Hypothesis}

\begin{description}
    \item[Full Citation:] Nunes JM, Kell DB, Pretorius E. Herpesvirus Infection of Endothelial Cells as a Systemic Pathological Axis in Myalgic Encephalomyelitis/Chronic Fatigue Syndrome. \textit{Viruses}. 2024;16(4):572.
    \item[DOI:] \href{https://doi.org/10.3390/v16040572}{10.3390/v16040572}
    \item[PMID:] 38675914
    \item[Published:] April 8, 2024
    \item[Key Findings:]
    \begin{itemize}
        \item Novel hypothesis: latent herpesvirus infection of endothelial cells causes chronic vascular dysfunction
        \item EBV latent proteins (EBNA-1, LMP-1) induce proinflammatory endothelial phenotype
        \item LMP-1 activates NF-$\kappa$B, increases IL-1$\beta$, IL-6, IL-8, adhesion molecules
        \item HHV-6 U94 protein reduces endothelial migration and angiogenic capacity
        \item Systemic consequences: impaired tissue perfusion, reduced cerebral blood flow, microclot formation, blood-brain barrier compromise
    \end{itemize}
    \item[Clinical Implications:] May explain multisystem symptoms (cognitive dysfunction via cerebral hypoperfusion, orthostatic intolerance, exercise intolerance). Parallels with long COVID endothelial pathology.
    \item[Certainty:] Medium-Low (novel 2024 hypothesis with plausible mechanisms; requires validation with endothelial cell sampling/imaging studies).
\end{description}
```

---

## 4. Guo 2023 - IDO-2 in Long COVID

**Add to:** Section "Systematic Reviews and Meta-Analyses" → Subsection "Long COVID and ME/CFS Overlap" (line ~119)

**OR create new subsection in Pathophysiology: Metabolic section**

```latex
\subsection{Guo et al.\ 2023 --- IDO-2 Pathway in Long COVID and ME/CFS}

\begin{description}
    \item[Full Citation:] Guo L, Appelman B, Mooij-Kalverda K, et al. Prolonged indoleamine 2,3-dioxygenase-2 activity and associated cellular stress in post-acute sequelae of SARS-CoV-2 infection. \textit{eBioMedicine}. 2023;95:104729.
    \item[DOI:] \href{https://doi.org/10.1016/j.ebiom.2023.104729}{10.1016/j.ebiom.2023.104729}
    \item[PMID:] 37506544
    \item[PMCID:] PMC10406961
    \item[Published:] July 26, 2023
    \item[Study Type:] Mechanistic study in long COVID/PASC patients with ME/CFS symptom overlap
    \item[Key Findings:]
    \begin{itemize}
        \item IDO-2 expressed and active in PBMCs and brain tissue months/years after SARS-CoV-2 infection
        \item IDO-2 degrades tryptophan via kynurenine pathway, generating toxic metabolites (quinolinic acid, 3-hydroxy-anthranilic acid)
        \item Aryl hydrocarbon receptor (AHR) drives IDO-2 expression; kynurenine activates AHR (positive feedback loop)
        \item Paralleled by autophagy, reduced mitochondrial function, depleted amino acids and Krebs cycle metabolites
        \item AHR antagonist halts IDO-2 expression and autophagy \textit{ex vivo}
        \item Authors note: ``symptoms of PASC are related to symptoms of patients with chronic fatigue syndrome''
    \end{itemize}
    \item[ME/CFS Connection:] Recent studies found elevated kynurenine metabolites in ME/CFS, suggesting overlapping tryptophan-kynurenine pathway dysregulation.
    \item[Therapeutic Implications:] AHR antagonists suppress IDO-2 pathway (no human trials yet).
    \item[Certainty:] High for long COVID findings; medium for ME/CFS connection (mechanistic overlap suggestive but not directly tested).
\end{description}
```

---

## 5. Lim 2020 - Two-Day CPET Meta-Analysis

**Add to:** Section "Exercise Physiology and Post-Exertional Malaise" (line ~408)

```latex
\subsection{Lim et al.\ 2020 --- Two-Day CPET Meta-Analysis}

\begin{description}
    \item[Full Citation:] Lim EJ, Kang EB, Jang ES, Son CG. The Prospects of the Two-Day Cardiopulmonary Exercise Test (CPET) in ME/CFS Patients: A Meta-Analysis. \textit{Journal of Clinical Medicine}. 2020;9(12):4040.
    \item[DOI:] \href{https://doi.org/10.3390/jcm9124040}{10.3390/jcm9124040}
    \item[PMID:] 33327624
    \item[PMCID:] PMC7765094
    \item[Published:] December 14, 2020
    \item[Study Type:] Meta-analysis of 5 studies, standardized cycling protocols
    \item[Sample Size:] 98 ME/CFS patients (90 female, 8 male), 51 healthy controls
    \item[Key Findings:]
    \begin{itemize}
        \item \textbf{Workload at ventilatory threshold (VT):} most significant difference
        \item ME/CFS: $-14.6$ watts decline from test 1 to test 2
        \item Controls: $+6.5$ watts improvement
        \item Difference highly significant ($p < 0.05$)
        \item VO$_2$peak showed minimal decline in ME/CFS ($-1.4$) vs. controls ($+0.3$), not statistically significant
        \item Workload@VT represents aerobic-anaerobic transition point, sensitive to mitochondrial function
    \end{itemize}
    \item[Clinical Significance:] Validates 2-day CPET as objective measure of post-exertional malaise. Workload@VT most sensitive metric. Complements Keller et al.\ 2024 findings (see also this appendix).
    \item[Certainty:] High (meta-analysis of multiple studies, replicated in larger Keller 2024 study).
\end{description}
```

---

## Summary of Additions

| Paper | Section | Subsection Location | Priority |
|-------|---------|---------------------|----------|
| Esfandyarpour 2019 | Diagnostic Criteria | New subsection after line ~90 | High |
| Syed 2025 | Metabolic/Mitochondrial | First subsection at line ~263 | High |
| Ruiz-Pablos 2021 | Viral Persistence | New subsection at line ~339 | Medium |
| O'Neal 2021 | Viral Persistence | New subsection at line ~339 | Medium |
| Nunes 2024 | Viral Persistence | New subsection at line ~339 | Medium |
| Guo 2023 | Long COVID Overlap | Subsection at line ~119 | Medium |
| Lim 2020 | Exercise Physiology | New subsection at line ~408 | High |

---

## Integration Order Recommendation

1. **First:** Lim 2020 (complements existing Keller 2024, straightforward addition)
2. **Second:** Esfandyarpour 2019 (diagnostic section, high impact)
3. **Third:** Syed 2025 (major pathophysiology contribution)
4. **Fourth:** Viral papers (Ruiz-Pablos, O'Neal, Nunes) as a group
5. **Fifth:** Guo 2023 (long COVID connection)

This order prioritizes papers that complement existing content first, then adds novel mechanisms.

---

## LaTeX Environment Usage in Citations

When citing these papers in main chapters, use:

**Esfandyarpour 2019:**
- `\begin{achievement}` for diagnostic test (note validation needed)
- `\begin{observation}` for cellular abnormality
- `\begin{open_question}` for mechanism

**Syed 2025:**
- `\begin{observation}` for ATP depletion, oxidative stress
- `\begin{hypothesis}` for WASF3 mechanism
- `\begin{postdiction}` for PEM predictions
- `\begin{speculation}` for ER stress therapies

**Viral papers:**
- `\begin{observation}` for clinical associations
- `\begin{hypothesis}` for mechanisms
- `\begin{warning}` for methodological limitations

**Lim 2020:**
- `\begin{observation}` for meta-analytic findings (established)

**Guo 2023:**
- `\begin{observation}` for long COVID (direct evidence)
- `\begin{hypothesis}` for ME/CFS connection (suggestive)
