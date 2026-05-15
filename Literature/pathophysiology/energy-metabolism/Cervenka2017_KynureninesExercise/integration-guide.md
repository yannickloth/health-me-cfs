# Integration Guide: Cervenka 2017

## Paper Citation Key
**BibTeX key:** `Cervenka2017`

## Recommended Chapters for Integration

### Primary Target: ch14c-multi-lock-integration.typ
**File:** `src/main/typst/mecfs/part1-pathogenesis/ch14c-multi-lock-integration.typ`
**Section hint:** "Kynurenine pathway activation" or "Immune-metabolic-neurological axis"
**Environment type:** achievement
**Rationale:** This paper provides robust evidence for the kynurenine pathway as a key mechanism linking inflammation to neurological dysfunction. It's a high-impact Science review with extensive replication.

**Suggested LaTeX:**
```latex
\begin{achievement}[Kynurenine pathway mediates inflammation-to-brain signaling]
\label{ach:cervenka2017-inflammation-brain}
[Cervenka] et al.~\cite{Cervenka2017} demonstrate that peripheral inflammation drives kynurenine accumulation in the brain through systemic metabolic integration.
The kynurenine pathway, regulated by nutritional and inflammatory signals, generates neuroactive metabolites (KYNA: neuroprotective, QA: neurotoxic) that modulate neuronal excitability.
Exercise activates kynurenine clearance in skeletal muscle, providing a mechanistic explanation for exercise's mental health benefits.
Study: (Science journal, comprehensive review, certainty: 0.95).
\end{achievement}
```

### Secondary Target: chXX-energy-metabolism.typ (if exists)
**File:** `src/main/typst/mecfs/part2-pathophysiology/chXX-energy-metabolism.typ`
**Section hint:** "NAD+ depletion mechanisms" or "Tryptophan metabolism shunt"
**Environment type:** observation
**Rationale:** This paper establishes that chronic inflammation can divert tryptophan toward kynurenine pathway, potentially depleting NAD+ precursors.

**Suggested LaTeX:**
```latex
\begin{observation}[Inflammation diverts tryptophan toward kynurenine pathway]
\label{obs:cervenka2017-tryptophan-shunt}
[Cervenka] et al.~\cite{Cervenka2017} show that inflammatory activation upregulates IDO, shunting tryptophan away from serotonin production toward kynurenine metabolites.
This metabolic shift may reduce NAD+ biosynthesis capacity during chronic inflammation.
Study: (Science review, established mechanism, certainty: 0.95).
\end{observation}
```

## Key Points to Convey
1. **Main finding:** Kynurenine pathway integrates immune, metabolic, and neurological signaling across organs
2. **Critical detail:** Different kynurenine metabolites have opposite effects (KYNA neuroprotective vs. QA neurotoxic)
3. **Mechanism:** Inflammation activates IDO, increasing kynurenine production; muscle exercise clears kynurenine
4. **Relevance to ME/CFS:** Explains how peripheral immune activation can cause neurological symptoms via kynurenine accumulation

## Certainty Assessment for Integration
- **Quality:** High (Science, top-tier journal)
- **Sample:** N/A (review article synthesizing extensive primary literature)
- **Replication:** Yes - kynurenine pathway is well-established and extensively replicated
- **Limitations:** Review format but synthesizes robust evidence
- **Certainty:** 0.95 - Can cite as established mechanism with high confidence

## Acronym Definitions (for reference)
- **IDO**: Indoleamine 2,3-dioxygenase (inflammation-activated enzyme)
- **KYN**: Kynurenine (central metabolite)
- **KYNA**: Kynurenic acid (neuroprotective)
- **QA**: Quinolinic acid (neurotoxic, NMDA agonist)
- **NAD+**: Nicotinamide adenine dinucleotide (energy cofactor)