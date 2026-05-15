# Integration Guide: Yan 2026

## Paper Citation Key
**BibTeX key:** `Yan2026`

## Recommended Chapters for Integration

### Primary Target: ch14c-multi-lock-integration.typ
**File:** `src/main/typst/mecfs/part1-pathogenesis/ch14c-multi-lock-integration.typ`
**Section hint:** "Kynurenine pathway in fatigue models" or "Gut-microbiome-metabolism axis"
**Environment type:** observation
**Rationale:** This animal study provides direct evidence that kynurenine pathway dysregulation is associated with chronic fatigue, and that restoring this pathway alleviates symptoms. While it's a single study in rats using traditional medicine, it supports the mechanistic relevance of kynurenine metabolism to fatigue.

**Suggested LaTeX:**
```latex
\begin{observation}[Kynurenine pathway dysregulation in chronic fatigue model]
\label{obs:yan2026-kynurenine-fatigue}
[Yan] et al.~\cite{Yan2026} demonstrated that chronic fatigue induced by complex lifestyle stressors in rats is associated with inhibited kynurenine metabolic pathway.
Fatigued rats showed reduced kynurenine pathway metabolites and downregulated key enzymes (TDO2, KMO, KAT1).
Treatment with Dendrobium officinale restored kynurenine pathway function, increased metabolite production (3-HAA, QA, PA, XA), and alleviated fatigue symptoms.
This supports involvement of kynurenine pathway dysregulation in chronic fatigue pathophysiology.
Study: (rat model, n not specified, single study, certainty: 0.45).
\end{observation}
```

### Secondary Target: chXX-gut-brain-axis.typ (if exists)
**File:** `src/main/typst/mecfs/part2-pathophysiology/chXX-gut-brain-axis.typ`
**Section hint:** "Gut microbiota-tryptophan axis" or "Microbiome modulation of metabolism"
**Environment type:** hypothesis
**Rationale:** This study links gut microbiota disturbances to tryptophan metabolism dysregulation in fatigue.

**Suggested LaTeX:**
```latex
\begin{hypothesis}[Gut microbiota dysbiosis contributes to kynurenine pathway dysregulation in ME/CFS]
\label{hyp:yan2026-gut-kynurenine}
[Yan] et al.~\cite{Yan2026} found that chronic fatigue in rats was associated with gut microbiota disturbances and reduced tryptophan-derived indole metabolites.
Restoring gut microbiota and indole metabolite production coincided with kynurenine pathway restoration and symptom relief.
This suggests gut dysbiosis in ME/CFS may contribute to kynurenine pathway dysregulation via altered tryptophan metabolism.
Prediction: ME/CFS patients will show correlations between gut microbiota composition, tryptophan metabolite levels, and fatigue severity.
Study: (rat model, single study, needs ME/CFS confirmation, certainty: 0.30).
\end{hypothesis}
```

## Key Points to Convey
1. **Main finding:** Chronic fatigue associated with kynurenine pathway inhibition in rats
2. **Gut connection:** Fatigue model showed gut microbiota disturbances and reduced indole metabolites
3. **Therapeutic effect:** Restoring kynurenine pathway alleviated fatigue
4. **Limitations:** Animal model, traditional medicine, single study
5. **Relevance to ME/CFS:** Supports kynurenine pathway relevance to fatigue, but needs human confirmation

## Certainty Assessment for Integration
- **Quality:** Medium (J Ethnopharmacol, animal model)
- **Sample:** Animal study (rats), n not specified
- **Replication:** No (single study)
- **Limitations:** Animal model, traditional medicine focus, needs replication
- **Certainty:** 0.45 - Can cite as supporting observation with appropriate caveats

## Acronym Definitions (for reference)
- **DOW**: Dendrobium officinale water extract
- **TRP**: Tryptophan
- **KYN**: Kynurenine
- **QA**: Quinolinic acid (neurotoxic)
- **3-HAA**: 3-Hydroxyanthranilic acid
- **TDO2**: Tryptophan 2,3-dioxygenase 2
- **KMO**: Kynurenine 3-monooxygenase
- **KAT1**: Kynurenine aminotransferase 1
- **IAA**: Indole-3-acetic acid (gut metabolite)
- **IPA**: Indole-3-propionic acid (gut metabolite)