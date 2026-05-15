# Integration Guide: Xie 2013

## Paper Citation Key
**BibTeX key:** `Xie2013`

## Recommended Chapters for Integration

### Primary Target: ch14c-multi-lock-integration.typ
**File:** `src/main/typst/mecfs/part1-pathogenesis/ch14c-multi-lock-integration.typ`
**Section hint:** "Sleep disruption and metabolite accumulation" or "Glymphatic dysfunction"
**Environment type:** achievement
**Rationale:** This Science paper discovered the glymphatic system and established sleep as critical period for brain metabolite clearance. It provides the mechanistic foundation for understanding how sleep disruption causes neurotoxicity.

**Suggested LaTeX:**
```latex
\begin{achievement}[Sleep enhances glymphatic clearance of neurotoxic metabolites]
\label{ach:xie2013-glymphatic-clearance}
[Xie] et al.~\cite{Xie2013} discovered that sleep increases brain interstitial space by 60\%, enhancing convective exchange between cerebrospinal fluid and interstitial fluid.
This glymphatic system increases clearance of neurotoxic waste products, including β-amyloid, during sleep.
Sleep's restorative function is attributed to enhanced removal of potentially neurotoxic metabolites that accumulate during wakefulness.
Study: (Science, mouse model with real-time imaging, certainty: 0.90).
\end{achievement}
```

### Secondary Target: chXX-sleep-dysfunction.typ (if exists)
**File:** `src/main/typst/mecfs/part2-pathophysiology/chXX-sleep-dysfunction.typ`
**Section hint:** "Consequences of unrefreshing sleep" or "Glymphatic impairment"
**Environment type:** observation
**Rationale:** This paper establishes the physiological consequences of sleep disruption on brain metabolic homeostasis.

**Suggested LaTeX:**
```latex
\begin{observation}[Sleep disruption impairs glymphatic metabolite clearance]
\label{obs:xie2013-sleep-impairment}
[Xie] et al.~\cite{Xie2013} show that sleep-dependent increases in interstitial space drive glymphatic clearance of neurotoxic metabolites.
In ME/CFS, unrefreshing sleep and reduced slow-wave sleep may impair glymphatic function, leading to accumulation of neurotoxic substances including kynurenine metabolites, glutamate, and metabolic byproducts.
This impairment could contribute to cognitive dysfunction and post-exertional malaise.
Study: (established mechanism, ME/CFS application is extrapolation, certainty: 0.70).
\end{observation}
```

## Key Points to Convey
1. **Main finding:** Sleep increases brain interstitial space by 60%, activating glymphatic clearance
2. **Critical mechanism:** Glymphatic system removes neurotoxic metabolites (β-amyloid studied, likely others)
3. **Consequence of sleep disruption:** Impaired clearance leads to metabolite accumulation
4. **Relevance to ME/CFS:** Unrefreshing sleep may cause neurotoxicity via glymphatic dysfunction

## Certainty Assessment for Integration
- **Quality:** High (Science, innovative methodology)
- **Sample:** Animal study (mice)
- **Replication:** Yes - glymphatic system is now well-established in neuroscience
- **Limitations:** Animal model, but mechanism translated to humans via imaging
- **Certainty:** 0.90 - Can cite as established mechanism with high confidence

## Acronym Definitions (for reference)
- **CSF**: Cerebrospinal fluid
- **ISF**: Interstitial fluid
- **β-amyloid**: Amyloid-beta peptide (Alzheimer's marker)
- **Glymphatic**: Glial-lymphatic waste clearance system
- **SWS**: Slow-wave sleep (deep sleep stage)