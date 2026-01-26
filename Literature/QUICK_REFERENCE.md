# Quick Reference: New Papers

## File Locations

### Paper 1: Rituximab Phase III Trial (NEGATIVE)
- **Folder:** `/home/nicky/code/health-me-cfs/Literature/treatments/immunological/Fluge_2019_RituximabPhaseIII/`
- **BibTeX key:** `Fluge2019`
- **Cite as:** `\cite{Fluge2019}`
- **Environment:** `\begin{warning}[Rituximab Inefficacy]...\end{warning}`

### Paper 2: 6-Year Follow-up (Rituximab + Cyclophosphamide)
- **Folder:** `/home/nicky/code/health-me-cfs/Literature/treatments/immunological/Rekeland_2024_Rituximab6YearFollowup/`
- **BibTeX key:** `Rekeland2024`
- **Cite as:** `\cite{Rekeland2024}`
- **Environment:** `\begin{observation}[Long-term Outcomes]...\end{observation}` or `\begin{warning}[Cyclophosphamide]...\end{warning}`

### Paper 3: Enterovirus in CFS
- **Folder:** `/home/nicky/code/health-me-cfs/Literature/pathophysiology/post-viral/Chia_2005_Enterovirus/`
- **BibTeX key:** `Chia2005`
- **Cite as:** `\cite{Chia2005}`
- **Environment:** `\begin{observation}[Enteroviral Persistence]...\end{observation}` or `\begin{hypothesis}[Enteroviral Etiology]...\end{hypothesis}`

### Paper 4: Low-Dose Naltrexone
- **Folder:** `/home/nicky/code/health-me-cfs/Literature/treatments/pharmacological/Polo_2019_LDN/`
- **BibTeX key:** `Polo2019`
- **Cite as:** `\cite{Polo2019}`
- **Environment:** `\begin{hypothesis}[LDN Efficacy]...\end{hypothesis}` (NOT observation!)

### Paper 5: BH4 Biomarkers (2 studies)
- **Folder:** `/home/nicky/code/health-me-cfs/Literature/biomarkers/Bulbule_2024_BH4/`
- **BibTeX keys:** `Gottschalk2023`, `Bulbule2024`
- **Cite as:** `\cite{Gottschalk2023}` or `\cite{Bulbule2024}` or `\cite{Gottschalk2023,Bulbule2024}`
- **Environment:** `\begin{observation}[BH4 Elevation]...\end{observation}` WITH caveats, or `\begin{hypothesis}[BH4 Biomarker]...\end{hypothesis}`

## Key Files

### Integration Guidance
- **Comprehensive guide:** `/home/nicky/code/health-me-cfs/Literature/INTEGRATION_GUIDE_ALL_PAPERS.md`
  - Contains LaTeX examples for all papers
  - Environment recommendations
  - Certainty assessments

### Updated Documentation Files
- **BibTeX database:** `/home/nicky/code/health-me-cfs/references.bib`
- **Appendix H:** `/home/nicky/code/health-me-cfs/contents/appendices/appendix-h-annotated-bibliography.tex`

## Quick Commands

### View a paper's integration guidance
```bash
cat /home/nicky/code/health-me-cfs/Literature/treatments/immunological/Fluge_2019_RituximabPhaseIII/key-findings.md
```

### View paper notes
```bash
cat /home/nicky/code/health-me-cfs/Literature/treatments/immunological/Fluge_2019_RituximabPhaseIII/notes.md
```

### Check BibTeX entry
```bash
grep -A 20 "Fluge2019" /home/nicky/code/health-me-cfs/references.bib
```

### Validate all BibTeX entries
```bash
cd /home/nicky/code/health-me-cfs
biber --tool --validate-datamodel references.bib
```

## LaTeX Environment Quick Reference

### For Rituximab (Fluge2019)
```latex
\begin{warning}[Rituximab Inefficacy in ME/CFS]
\label{warn:rituximab}
Despite promising early phase II results, a rigorous phase III RCT (n=151) 
found no benefit of rituximab over placebo~\cite{Fluge2019}.
\end{warning}
```

### For LDN (Polo2019)
```latex
\begin{hypothesis}[Low-Dose Naltrexone Efficacy]
\label{hyp:ldn-efficacy}
A retrospective study (n=218) reported 73.9\% improvement with LDN~\cite{Polo2019}.
However, the lack of placebo control precludes definitive efficacy conclusions.
\end{hypothesis}
```

### For Enterovirus (Chia2005)
```latex
\begin{observation}[Enteroviral Persistence in ME/CFS Subset]
\label{obs:enterovirus}
Chronic enteroviral infection was detected in 48\% of ME/CFS patients vs 
8\% of controls~\cite{Chia2005}.
\end{observation}
```

### For BH4 (Gottschalk2023, Bulbule2024)
```latex
\begin{observation}[Elevated BH4 in ME/CFS with OI]
\label{obs:bh4-oi}
Serum BH4 is significantly elevated in ME/CFS patients with orthostatic 
intolerance~\cite{Gottschalk2023}.
\end{observation}

\begin{warning}[BH4 Therapeutic Paradox]
\label{warn:bh4-paradox}
While BH4 is typically beneficial, its elevation in ME/CFS appears 
pathological~\cite{Bulbule2024}, and the mechanism requires clarification.
\end{warning}
```

## Critical Reminders

1. **Rituximab:** Use `warning` environment - it DOES NOT WORK
2. **LDN:** Use `hypothesis`, NOT `observation` - no placebo control
3. **BH4:** Note paradox and small sample size (n=10-32)
4. **Enterovirus:** 48% prevalence supports heterogeneity
5. **Always cite:** Every claim needs `\cite{...}`

## Status: ✅ COMPLETE

All papers ready for integration into main manuscript.
