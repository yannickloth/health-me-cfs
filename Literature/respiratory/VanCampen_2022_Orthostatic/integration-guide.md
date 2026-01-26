# Integration Guide: VanCampen 2022 (Natelson first author)

## Paper Citation Key
**BibTeX key:** `Natelson2022` (first author) or `VanCampen2022` (if Van Campen is in author list - verify)

## Recommended Chapters for Integration

### Primary Target: ch03-additional-symptoms.tex
**File:** `contents/part1-clinical/ch03-additional-symptoms.tex`
**Section hint:** "Orthostatic intolerance" or "Autonomic dysfunction"
**Environment type:** `achievement`
**Rationale:** Well-powered study with standardized methodology, clinically significant findings

**Suggested LaTeX:**
```latex
\begin{achievement}[Hypocapnia as Dominant Orthostatic Abnormality]
\label{ach:natelson2022-hypocapnia}
Natelson et al.~\cite{Natelson2022} found that 60.3\% of ME/CFS patients (38/63)
demonstrated orthostatic abnormalities during standardized lean testing, with
hypocapnia (low end-tidal CO$_2$) detected in 85.2\% of abnormal tests.
Notably, POTS accounted for only 25\% of abnormal tests, and anxiety scores
did not correlate with hypocapnia presence, contradicting conventional teaching.
Study: (n=63, prospective, standardized protocol, certainty: High).
This finding emphasizes that capnography should be standard in ME/CFS orthostatic
assessment, as hypocapnia would be missed by traditional vital sign monitoring.
\end{achievement}
```

### Secondary Target: ch08-neurological.tex
**File:** `contents/part2-pathophysiology/ch08-neurological.tex`
**Section hint:** "Brainstem dysfunction" or "Respiratory control"
**Suggested inline citation:**
```latex
Respiratory dysregulation manifests as orthostatic hypocapnia in over 80\% of
ME/CFS patients with abnormal orthostatic responses, suggesting brainstem or
medullary involvement in autonomic control~\cite{Natelson2022}.
```

### Tertiary Target: ch14-symptom-management.tex
**File:** `contents/part3-treatment/ch14-symptom-management.tex`
**Section hint:** "Orthostatic intolerance management"
**Suggested inline citation:**
```latex
Given that hypocapnia is more prevalent than POTS in ME/CFS orthostatic
intolerance~\cite{Natelson2022}, breathing retraining and CO$_2$ management
may benefit patients beyond standard POTS interventions (salt, fluids,
compression garments).
```

## Key Points to Convey

1. **60.3% prevalence** - majority of ME/CFS patients have measurable orthostatic abnormality
2. **Hypocapnia dominates** - 85% of abnormalities involve low CO2, not just POTS
3. **Capnography essential** - cannot detect without proper equipment
4. **Not anxiety-related** - explicitly refutes psychiatric explanation
5. **Clinical implications** - standard orthostatic testing may miss most cases

## Certainty Assessment for Integration

- **Quality:** High (prospective, standardized protocol, peer-reviewed in J Transl Med)
- **Sample:** n=63 ME/CFS (moderate, adequate for primary endpoint)
- **Replication:** Single study, awaiting independent confirmation
- **Limitations:** No healthy control group; single-center; need larger multicenter validation

## Cross-References

- Related papers: VanCampen_2023 (MCAS vascular mechanisms - if applicable)
- Related sections: Ch09 (endocrine - cortisol/aldosterone affect blood volume)
- Related sections: Ch22 (mechanistic studies - cerebral hypoperfusion)
- Clinical note: 10-min lean test is simpler than full tilt table, may be more accessible for severe patients
