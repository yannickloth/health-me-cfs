# Integration Guide: Nicholson 2023

## Paper Citation Key
**BibTeX key:** `Nicholson2023`

## Recommended Chapters for Integration

### Primary Target: Appendix (Diagnostic Guidelines/Reference Ranges)
**File:** Create table/appendix section for CCI diagnostic criteria
**Environment type:** Table or plain text
**Rationale:** Reference ranges are best presented as table for clinical use

**Suggested LaTeX:**
```latex
\subsection{Updated CCI Reference Ranges (Upright Dynamic MRI)}

Based on Nicholson et al.~\cite{Nicholson2023} study of 50 healthy adults:

\begin{table}[h]
\centering
\begin{tabular}{llll}
\toprule
\textbf{Measurement} & \textbf{Neutral} & \textbf{Flexion} & \textbf{Extension} \\
\midrule
Grabb-Oakes (mm) & 4.2±1.8 (UL: 7.8) & 5.1±2.1 (UL: 9.3) & 3.6±1.5 (UL: 6.6) \\
Clivo-axial angle (°) & 151±8 (LL: 135) & 145±9 (LL: 127) & 157±7 (LL: 143) \\
Basion-dens (mm) & 7.1±1.6 (UL: 10.3) & 8.3±1.8 (UL: 11.9) & 6.2±1.4 (UL: 9.0) \\
Atlantodens (mm) & 1.8±0.6 (UL: 3.0) & <3.0 & <3.0 \\
\bottomrule
\end{tabular}
\caption{CCI reference ranges from upright dynamic MRI (UL=upper limit, LL=lower limit)}
\label{tab:cci-reference}
\end{table}

Note: These ranges are for healthy adults in upright position. Previous
thresholds from supine imaging may be overly strict.
```

### Secondary Target: ch06-comorbidities.tex (where CCI diagnosis discussed)
**File:** `contents/part1-clinical/ch06-comorbidities.tex`
**Suggested inline citation:**
```latex
Updated reference ranges from upright dynamic MRI~\cite{Nicholson2023}
suggest that previous diagnostic thresholds derived from supine imaging
may be overly strict, potentially leading to overdiagnosis of CCI when
applied to upright studies.
```

## Key Points to Convey

1. **Updated ranges:** First comprehensive reference ranges from upright dynamic MRI
2. **Position matters:** Measurements vary significantly between flexion/neutral/extension
3. **Previous thresholds may be wrong:** Supine-derived thresholds too strict for upright imaging
4. **No age/sex effect:** Reference ranges applicable across adult age range

## Certainty Assessment for Integration

- **Quality:** Medium-High (prospective, standardized protocol, healthy controls)
- **Sample:** n=50 healthy adults (adequate for reference ranges)
- **Limitations:** Single center, need validation in larger multicenter cohort

## Cross-References

- **Lohkamp2022:** Discusses diagnostic heterogeneity that Nicholson helps resolve
- **Bragee2020:** Used various measurements; Nicholson provides updated thresholds
- **All CCI papers:** Provides reference standard for interpreting measurements

## Special Notes

- **Technical reference:** This is primarily a reference standard, not clinical findings
- **Appendix placement:** Best in appendix/table rather than main text narrative
- **Cite when discussing thresholds:** Reference whenever quoting specific CCI measurement thresholds
