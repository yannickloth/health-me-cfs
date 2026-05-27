# Integration Guide: DecodeME Genetics Consortium 2025

## Paper Citation Key
**BibTeX key:** `DecodeME2025`

## Recommended Chapters for Integration

### Primary Target: Genetics chapter (to be created)
**File:** `src/main/typst/mecfs/part2-pathophysiology/genetics/me-cfs-genetics.typ`
**Section hint:** "ME/CFS genetic associations and brain tissue enrichment"
**Environment type:** achievement
**Rationale:** First large-scale GWAS identifying genetic loci and brain tissue enrichment in ME/CFS

**Suggested LaTeX:**
```latex
\begin{achievement}[DecodeME ME/CFS GWAS: Brain Tissue Enrichment]
\label{ach:decodeme2025-brain-enrichment}
DecodeME Genetics Consortium~\cite{DecodeME2025} conducted the largest ME/CFS GWAS to date (n=15,579 cases, n=259,909 controls), identifying eight genome-wide significant loci. MAGMA gene-tissue analysis revealed significant enrichment of ME/CFS-related genes in all 13 brain tissues examined, implicating neurological involvement. Genes BTN2A2, OLFM4, RABGAP1L (immune function) and CA10, ARFGEF2 (neurological processes) were implicated.
Study: (GWAS, REGENIE, MAGMA, certainty: High, preprint).
\end{achievement}
```

### Secondary Target: Basal ganglia chapter (to be created)
**File:** `src/main/typst/mecfs/part2-pathophysiology/neurological/basal-ganglia.typ`
**Section hint:** "Genetic evidence for striatal involvement in ME/CFS"
**Environment type:** limitation
**Rationale:** Brain tissue enrichment includes striatum but no eMSN-specific findings

**Suggested LaTeX:**
```latex
\begin{limitation}[No eMSN-Specific Genetic Findings in DecodeME]
\label{lim:decodeme2025-no-emsn}
Despite significant brain tissue enrichment in DecodeME GWAS~\cite{DecodeME2025}, no eMSN-specific genes were identified. The MAGMA analysis examined broad tissue categories but did not perform cell-type specific analysis. This is a negative result for the eMSN hypothesis but does not refute it, as cell-type specific MAGMA analysis was not performed.
Study: (n=15,579 cases, certainty: High, preprint).
\end{limitation}
```

### Tertiary Target: Hypotheses chapter
**File:** `src/main/typst/mecfs/part4-research/hypotheses/neurological-hypotheses.typ`
**Section hint:** "eMSN hypothesis and genetic evidence"
**Environment type:** observation
**Rationale:** Documents that eMSN hypothesis is not yet supported by genetic evidence

**Suggested LaTeX:**
```latex
\begin{observation}[eMSN Hypothesis Lacks Direct Genetic Support]
\label{obs:decodeme2025-emsn-hypothesis}
The eMSN hypothesis is not directly supported by DecodeME GWAS findings~\cite{DecodeME2025}. Brain tissue enrichment suggests striatal involvement, but cell-type specific analysis (required to test eMSN involvement) was not performed. Future genetic studies should apply MAGMA or similar tools specifically to striatal cell types including eMSN.
Study: (GWAS, MAGMA, certainty: High, preprint).
\end{observation}
```

## Key Points to Convey
1. DecodeME provides first large-scale genetic evidence for ME/CFS
2. Brain tissue enrichment suggests neurological/striatal involvement
3. **Critical null result:** No eMSN-specific genes identified (analysis was tissue-level, not cell-type specific)
4. **Not a refutation:** eMSN hypothesis requires cell-type specific analysis
5. Future direction: Cell-type specific genetic analysis needed

## Certainty Assessment for Integration
- **Quality:** High (large sample, rigorous methods, preprint)
- **Sample:** n=15,579 cases, n=259,909 controls
- **Replication:** Partial (some loci replicated, external replication limited)
- **Limitations:** Preprint, European ancestry only, no cell-type specific analysis

## Notes
- This is the most important paper for ME/CFS genetics to date
- Brain tissue enrichment is significant but broad
- **Emphasize null result for eMSN** while noting analysis limitation
- Should motivate future cell-type specific genetic studies
- Cell-type specific analysis could still support eMSN hypothesis