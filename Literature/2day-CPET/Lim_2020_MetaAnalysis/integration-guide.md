# Integration Guide: Lim 2020

## Paper Citation Key
**BibTeX key:** `Lim2020`

## Recommended Chapters for Integration

### Primary Target: ch02-core-symptoms.tex
**File:** `contents/part1-clinical/ch02-core-symptoms.tex`
**Section hint:** "Post-Exertional Malaise" or "PEM characteristics"
**Environment type:** `achievement`
**Rationale:** Meta-analysis provides high-certainty, replicated evidence of objective PEM measurement - worthy of achievement environment

**Suggested LaTeX:**
```latex
\begin{achievement}[Objective PEM Measurement via 2-Day CPET]
\label{ach:lim2020-cpet}
Lim et al.~\cite{Lim2020} conducted a meta-analysis of 5 studies (n=98 ME/CFS patients,
n=51 controls) demonstrating that workload at ventilatory threshold (Workload@VT)
provides objective discrimination of post-exertional malaise.
ME/CFS patients showed a mean decline of 14.6 Watts on day-2 testing while healthy
controls improved by 6.5 Watts (p=0.01), a pattern that distinguishes ME/CFS from
other fatiguing conditions.
Study: (meta-analysis, 5 independent studies, peer-reviewed, certainty: High).
This provides objective biomarker validation of the hallmark ME/CFS symptom.
\end{achievement}
```

### Secondary Target: ch22-mechanistic-studies.tex
**File:** `contents/part4-research/ch22-mechanistic-studies.tex`
**Section hint:** "Exercise physiology" or "Diagnostic methods"
**Suggested inline citation:**
```latex
Two-day cardiopulmonary exercise testing has emerged as a validated method for
objectively measuring post-exertional malaise, with meta-analysis confirming
significant differences in ventilatory threshold work capacity between ME/CFS
patients and controls~\cite{Lim2020}.
```

### Tertiary Target: Appendix H (already integrated, verify entry)
**File:** `contents/appendices/appendix-h-annotated-bibliography.tex`
**Section:** Exercise Physiology / Objective Testing
**Verify comprehensive entry exists**

## Key Points to Convey

1. **Workload@VT most discriminatory** - emphasize this specific parameter outperformed other CPET measures
2. **Opposite trajectories** - decline vs. improvement distinguishes ME/CFS from deconditioning
3. **Meta-analysis strength** - 5 independent studies replicated the finding
4. **Diagnostic utility** - objective validation of subjective PEM reports

## Certainty Assessment for Integration

- **Quality:** High (meta-analysis, systematic review, peer-reviewed)
- **Sample:** n=98 ME/CFS, n=51 HC (moderate, across 5 studies)
- **Replication:** Yes (meta-analysis of 5 independent studies)
- **Limitations:** Predominantly female cohort; individual studies small; may not be feasible for severe patients

## Cross-References

- Related papers: Keller2024cpet (in references.bib - cite together for comprehensive 2-day CPET evidence)
- Related papers: Joseph2023 (new, exercise pathophysiology review)
- Related sections: Ch05 (severe reality - note CPET may be contraindicated for severe patients)
- Related sections: Ch14 (symptom management - pacing informed by objective PEM assessment)
