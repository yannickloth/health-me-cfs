# Integration Guide: Maccallini 2025

## Paper Citation Key
**BibTeX key:** `Maccallini2025`

## Recommended Chapters for Integration

### Primary Target: Energy metabolism chapter
**File:** `src/main/typst/mecfs/part2-pathophysiology/energy-metabolism/metabolic-dysfunction.typ`
**Section hint:** "ME/CFS disease module and metabolic pathways"
**Environment type:** achievement
**Rationale:** Network analysis identifies metabolic dysfunction as core ME/CFS pathology

**Suggested LaTeX:**
```latex
\begin{achievement}[ME/CFS Disease Module: Metabolic Dysfunction]
\label{ach:maccallini2025-metabolic-module}
Maccallini~\cite{Maccallini2025} identified a 272-gene ME/CFS disease module via network analysis (22 seed genes from UK Biobank, WGS of 20 severe ME/CFS patients, 3 Mendelian cases). The module is enriched in sphingolipid metabolism, energy-related pathways (oxidative phosphorylation, TP53-regulated metabolic genes), heme degradation, and thermogenesis, supporting metabolic dysfunction as core ME/CFS pathology.
Study: (network analysis, STRING PPI, RWR, certainty: Medium, preprint).
\end{achievement}
```

### Secondary Target: Hypotheses chapter
**File:** `src/main/typst/mecfs/part4-research/hypotheses/energy-metabolism-hypotheses.typ`
**Section hint:** "Network-based metabolic module hypothesis"
**Environment type:** hypothesis
**Rationale:** Proposes computational model of ME/CFS as metabolic disorder

**Suggested LaTeX:**
```latex
\begin{hypothesis}[ME/CFS as Metabolic Network Disorder]
\label{hyp:maccallini2025-metabolic-network}
Maccallini~\cite{Maccallini2025} proposes that ME/CFS is a disorder of metabolic networks, with a 272-gene module enriched in sphingolipid metabolism, oxidative phosphorylation, heme degradation, and thermogenesis. Genes in this module overlap with neurodegenerative diseases (Parkinson's, Alzheimer's), suggesting shared metabolic dysfunction mechanisms.
Study: (network analysis, certainty: Medium, preprint, not yet replicated).
\end{hypothesis}
```

### Tertiary Target: Basal ganglia chapter (to be created)
**File:** `src/main/typst/mecfs/part2-pathophysiology/neurological/basal-ganglia.typ`
**Section hint:** "Neurodegenerative overlap but no eMSN findings"
**Environment type:** limitation
**Rationale:** Network analysis finds neurodegenerative overlap but not eMSN

**Suggested LaTeX:**
```latex
\begin{limitation}[No eMSN in ME/CFS Disease Module]
\label{lim:maccallini2025-no-emsn}
Maccallini's network analysis~\cite{Maccallini2025} identified neurodegenerative disease overlap (Parkinson's, Alzheimer's) but no eMSN or striatum-specific genes in the 272-gene ME/CFS module. The analysis focused on metabolic pathways and did not include cell-type specific analysis of striatal neurons.
Study: (network analysis, certainty: Medium, preprint).
\end{limitation}
```

## Key Points to Convey
1. Network analysis identifies metabolic dysfunction as core ME/CFS pathology
2. 272-gene module enriched in sphingolipids, energy metabolism, heme degradation
3. **No eMSN findings:** Analysis focused on metabolic pathways, not cell-type specific
4. **Neurodegenerative overlap:** Genes overlap with Parkinson's and Alzheimer's
5. **Computational model:** Requires experimental validation

## Certainty Assessment for Integration
- **Quality:** Medium (computational analysis, single author, preprint)
- **Sample:** 22 seed genes from multiple sources
- **Replication:** Not yet replicated
- **Limitations:** Preprint, no experimental validation, pseudogene substitution may introduce error

## Notes
- This is a complementary approach to DecodeME GWAS
- Both find no eMSN but via different methods (network vs GWAS)
- Metabolic focus is well-supported by other ME/CFS research
- Should be cited as hypothesis requiring experimental validation
- Does not support or refute eMSN hypothesis (different focus)