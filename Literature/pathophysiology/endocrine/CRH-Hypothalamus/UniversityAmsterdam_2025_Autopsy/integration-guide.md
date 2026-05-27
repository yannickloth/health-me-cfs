# Integration Guide: University of Amsterdam Autopsy Study 2025

## Paper Citation Key
**BibTeX key:** `HealthRising2025`

## Recommended Chapters for Integration

### Primary Target: HPA axis chapter (to be created)
**File:** `src/main/typst/mecfs/part2-pathophysiology/endocrine/hpa-axis.typ`
**Section hint:** "Hypothalamic CRH depletion in ME/CFS"
**Environment type:** observation
**Rationale:** Provides preliminary evidence for HPA axis dysfunction via CRH depletion

**Suggested LaTeX:**
```latex
\begin{observation}[Hypothalamic CRH Depletion in ME/CFS]
\label{obs:healthrising2025-crh-depletion}
University of Amsterdam autopsy study of 7-10 ME/CFS patients found very low levels of CRH-producing neurons in the hypothalamus, indicating dramatic CRH depletion and HPA axis dysfunction~\cite{HealthRising2025}. Presented at IACFS 2025 conference.
Study: (n=7-10 autopsies, CRH neuron quantification, certainty: Low, conference presentation).
\end{observation}
```

### Secondary Target: Hypothalamic function chapter (to be created)
**File:** `src/main/typst/mecfs/part2-pathophysiology/neurological/hypothalamus.typ`
**Section hint:** "Hypothalamic pathology in ME/CFS"
**Environment type:** observation
**Rationale:** Suggests hypothalamic CRH neurons are depleted in ME/CFS

**Suggested LaTeX:**
```latex
\begin{observation}[Hypothalamic Pathology in ME/CFS]
\label{obs:healthrising2025-hypothalamic}
Autopsy findings suggest hypothalamic pathology in ME/CFS, with very low levels of CRH-producing neurons observed in 7-10 ME/CFS brain autopsies~\cite{HealthRising2025}. This finding supports HPA axis dysfunction but requires peer-reviewed publication and replication.
Study: (n=7-10 autopsies, certainty: Low, conference presentation).
\end{observation}
```

### Tertiary Target: Basal ganglia chapter (to be created)
**File:** `src/main/typst/mecfs/part2-pathophysiology/neurological/basal-ganglia.typ`
**Section hint:** "CRH depletion but no striatal findings"
**Environment type:** limitation
**Rationale:** CRH depletion suggests HPA dysfunction but study did not examine striatum

**Suggested LaTeX:**
```latex
\begin{limitation}[No Striatal Findings in CRH Autopsy Study]
\label{lim:healthrising2025-no-striatum}
University of Amsterdam autopsy study found hypothalamic CRH depletion in ME/CFS but did not examine striatum or eMSN~\cite{HealthRising2025}. The study focused on hypothalamus and HPA axis, not basal ganglia. CRH is present in striatum but eMSN-specific CRH production unknown.
Study: (n=7-10 autopsies, certainty: Low, conference presentation).
\end{limitation}
```

## Key Points to Convey
1. Preliminary evidence for HPA axis dysfunction via CRH depletion
2. Hypothalamic CRH neurons depleted in ME/CFS (n=7-10 autopsies)
3. **No striatal findings:** Study focused on hypothalamus, not striatum
4. **CRH in striatum:** Known to be present but eMSN-specific CRH unknown
5. **Requires validation:** Conference presentation needs peer-reviewed publication

## Certainty Assessment for Integration
- **Quality:** Low (secondary source, conference presentation, not peer-reviewed)
- **Sample:** n=7-10 autopsies
- **Replication:** Not replicated, no primary publication yet
- **Limitations:** Secondary source, no peer review, limited details

## Notes
- This is a conference report, not a peer-reviewed publication
- **Treat with caution:** Requires peer-reviewed publication before strong claims
- **Hypothalamic focus:** Does not address striatum or eMSN
- **CRH-eMSN relationship:** Unknown if eMSN produce or respond to CRH
- **Complementary to other HPA findings:** Suggests hypothalamic pathology
- **Future direction:** Peer-reviewed publication with full methods needed