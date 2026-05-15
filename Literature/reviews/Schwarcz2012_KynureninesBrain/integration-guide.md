# Integration Guide: Schwarcz 2012

## Paper Citation Key
**BibTeX key:** `Schwarcz2012`

## Recommended Chapters for Integration

### Primary Target: ch14c-multi-lock-integration.typ
**File:** `src/main/typst/mecfs/part1-pathogenesis/ch14c-multi-lock-integration.typ`
**Section hint:** "Kynurenine pathway central node" or "Multi-system convergence"
**Environment type:** achievement
**Rationale:** This Nature Reviews Neuroscience paper is the definitive review establishing kynurenine pathway as central mechanism linking immune activation to neurological dysfunction. It provides the foundational framework for understanding kynurenine's dual neuroprotective/neurotoxic effects.

**Suggested LaTeX:**
```latex
\begin{achievement}[Kynurenine pathway integrates immune activation with neurological dysfunction]
\label{ach:schwarcz2012-kynurenine-central}
[Schwarcz] et al.~\cite{Schwarcz2012} establish the kynurenine pathway as a critical immune-regulated metabolic system in the brain.
Tryptophan catabolism via kynurenine pathway generates neuroactive metabolites with opposing effects: kynurenic acid (KYNA) is neuroprotective, while quinolinic acid (QA) and 3-hydroxykynurenine (3-HK) are neurotoxic.
Immune activation via IDO shifts metabolism toward neurotoxic branch, activating NMDA receptors and causing excitotoxicity.
This pathway is dysregulated in neurodegenerative and psychiatric disorders, and can be pharmacologically targeted.
Study: (Nat Rev Neurosci, comprehensive review, certainty: 0.95).
\end{achievement}
```

### Secondary Target: chXX-neurological-manifestations.typ (if exists)
**File:** `src/main/typst/mecfs/part2-pathophysiology/chXX-neurological-manifestations.typ`
**Section hint:** "Glutamate excitotoxicity" or "Cognitive dysfunction mechanisms"
**Environment type:** hypothesis
**Rationale:** This paper provides mechanistic basis for kynurenine-mediated excitotoxicity via QA/NMDA activation.

**Suggested LaTeX:**
```latex
\begin{hypothesis}[Kynurenine pathway activation causes glutamate excitotoxicity in ME/CFS]
\label{hyp:schwarcz2012-excitotoxicity-mechanism}
[Schwarcz] et al.~\cite{Schwarcz2012} show that immune activation shifts kynurenine metabolism toward quinolinic acid (QA), a potent NMDA receptor agonist.
QA accumulation causes glutamate excitotoxicity, neuronal damage, and cognitive impairment.
In ME/CFS, chronic immune activation may maintain elevated QA levels, contributing to cognitive dysfunction via sustained NMDA receptor activation.
Prediction: ME/CFS patients will show altered KYNA/QA ratio correlating with cognitive symptom severity.
Study: (established mechanism in other disorders, needs ME/CFS confirmation, certainty: 0.45).
\end{hypothesis}
```

## Key Points to Convey
1. **Main finding:** Kynurenine pathway is immune-regulated and produces both neuroprotective (KYNA) and neurotoxic (QA, 3-HK) metabolites
2. **Critical mechanism:** QA is NMDA receptor agonist causing excitotoxicity; KYNA is NMDA antagonist protecting neurons
3. **Immune link:** IDO activation during inflammation shifts metabolism toward neurotoxic branch
4. **Relevance to ME/CFS:** Provides mechanism for immune-to-brain signaling and cognitive symptoms

## Certainty Assessment for Integration
- **Quality:** High (Nature Reviews Neuroscience, premier review journal)
- **Sample:** N/A (review article)
- **Replication:** Yes - kynurenine pathway is foundational, extensively replicated
- **Limitations:** Review format but synthesizes decades of robust research
- **Certainty:** 0.95 - Can cite as established mechanism with highest confidence

## Acronym Definitions (for reference)
- **KYNA**: Kynurenic acid (neuroprotective, NMDA antagonist)
- **QA**: Quinolinic acid (neurotoxic, NMDA agonist)
- **3-HK**: 3-hydroxykynurenine (pro-oxidant)
- **NMDA**: N-methyl-D-aspartate receptor
- **IDO**: Indoleamine 2,3-dioxygenase (immune-activated)
- **KMO**: Kynurenine 3-monooxygenase (to neurotoxic branch)
- **KAT**: Kynurenine aminotransferase (to neuroprotective branch)