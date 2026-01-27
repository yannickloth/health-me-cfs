# Integration Guide: Lohkamp 2022

## Paper Citation Key
**BibTeX key:** `Lohkamp2022`

## Recommended Chapters for Integration

### Primary Target: ch06-comorbidities.tex
**File:** `contents/part1-clinical/ch06-comorbidities.tex`
**Section hint:** "Hypermobility and connective tissue disorders" or "Structural comorbidities"
**Environment type:** `observation` + `warning`
**Rationale:** CCI is a structural comorbidity relevant to hypermobile ME/CFS subset; diagnostic complexity warrants warning environment

**Suggested LaTeX:**
```latex
\begin{observation}[Craniocervical Instability in Hypermobile Patients]
\label{obs:cci-eds}
Lohkamp et al.~\cite{Lohkamp2022} systematically reviewed craniocervical
instability (CCI) in 695 Ehlers-Danlos syndrome patients across 16 studies,
finding common symptoms of suboccupital headaches (75-90\%), neck pain
(70-85\%), paresthesias (60-75\%), and autonomic dysfunction (45-60\%)---all
overlapping significantly with ME/CFS presentation. Dynamic upright MRI
provides superior diagnostic information compared to supine imaging
(systematic review, Medium-High certainty).
\end{observation}

\begin{warning}[Diagnostic Heterogeneity]
\label{warn:cci-diagnosis}
No consensus exists on CCI diagnostic criteria; studies use varying
measurement thresholds (Grabb-Oakes, clivo-axial angle, atlantodens interval).
Clinical correlation is essential---imaging findings alone are insufficient,
as asymptomatic individuals may have measurements outside reference ranges~\cite{Lohkamp2022}.
\end{warning}
```

### Secondary Target: ch03-differential-diagnosis.tex
**File:** `contents/part1-clinical/ch03-differential-diagnosis.tex`
**Section hint:** "Structural causes" or "When to pursue alternative diagnoses"
**Suggested inline citation:**
```latex
Screening for craniocervical instability should be considered in ME/CFS
patients with hypermobility (Beighton score ≥5) and progressive neurological
symptoms, particularly if positional headaches or myelopathy signs are
present~\cite{Lohkamp2022}. Upright dynamic MRI is preferred over supine
static imaging when CCI evaluation is indicated.
```

### Tertiary Target: Appendix (Imaging Guidelines)
**File:** Create new or add to existing diagnostic appendix
**Content:** Summary table of CCI diagnostic measurements
**Suggested LaTeX:**
```latex
\subsection{Craniocervical Instability Screening Criteria}

Based on systematic review by Lohkamp et al.~\cite{Lohkamp2022}:

\begin{table}[h]
\centering
\begin{tabular}{lll}
\toprule
\textbf{Measurement} & \textbf{Threshold} & \textbf{Interpretation} \\
\midrule
Grabb-Oakes line & >9mm & Ventral brainstem compression \\
Clivo-axial angle & <135° & Cranial settling \\
Atlantodens interval & >3mm & Atlantoaxial instability \\
Basion-dens interval & >8.5mm & Craniocervical instability \\
Powers ratio & >1.0 & Atlanto-occipital dislocation \\
\bottomrule
\end{tabular}
\caption{CCI diagnostic measurements (note: thresholds vary between studies)}
\end{table}

\paragraph{Clinical Indications for CCI Screening:}
\begin{itemize}
  \item Hypermobility (Beighton ≥5)
  \item Progressive neurological symptoms
  \item Positional headaches (worse upright)
  \item Myelopathy signs (weakness, spasticity, pathological reflexes)
  \item Autonomic dysfunction worsening with posture
\end{itemize}
```

## Key Points to Convey

1. **Diagnostic heterogeneity:** Emphasize lack of consensus, need for clinical correlation
2. **Symptom overlap:** CCI symptoms overlap significantly with ME/CFS (important for differential diagnosis)
3. **Hypermobile subset:** Most relevant to 20-40% of ME/CFS patients with hypermobility
4. **Dynamic imaging:** Upright MRI superior to supine static imaging

## Certainty Assessment for Integration

- **Quality:** Medium-High (systematic review, PRISMA methodology)
- **Sample:** n=695 across 16 studies
- **Replication:** Multiple independent studies, but high heterogeneity
- **Limitations:**
  - No RCTs (observational studies only)
  - Selection bias toward severe cases
  - Diagnostic criteria vary significantly between studies
  - Limited long-term outcome data

## Cross-References

- **Bragee2020:** ME/CFS-specific CCI imaging study (80% had craniocervical obstructions) - cite together to show ME/CFS relevance
- **Henderson2024, Henderson2018:** Surgical outcomes data - cite when discussing treatment options
- **Russek2023:** Physical therapy consensus - cite for conservative management
- **Nicholson2023:** Updated reference ranges - cite when discussing diagnostic thresholds

## Special Notes

- **Do NOT overstate CCI prevalence in ME/CFS** - Lohkamp is EDS-specific, use Bragee2020 for ME/CFS prevalence estimates
- **Acknowledge diagnostic complexity** - this is NOT a simple screening test
- **Conservative management first** - surgical outcomes are for selected cases only
- **Subset-specific relevance** - primarily relevant to hypermobile ME/CFS patients, not general population