# Gabapentine Sleep Architecture Warnings - Integration Plan

## Scope
Reduced integration targeting physiologically significant gabapentine warnings for ME/CFS sleep management.

## Primary Questions

1. Does gabapentin-induced N3 differ physiologically from natural N3?
2. Does gabapentin worsen obstructive sleep apnea (OSA)?
3. What are the cognitive/memory implications of gabapentin-altered sleep architecture?

## Target Content Areas
- `src/main/typst/mecfs/part3-treatment/ch14-symptom-management.typ` (Sleep medications section)
- Current gabapentin entry: "Gabapentin: 100–600 mg at bedtime. Increases slow-wave sleep. Dizziness and cognitive effects may limit use"

## Required Evidence

### Priority 1: OSA/Sleep Disordered Breathing
- Does gabapentin worsen OSA?
- Mechanism: respiratory muscle tone suppression
- Clinical relevance for ME/CFS (dysautonomia prevalence)

### Priority 2: N3 Physiologic Differences
- EEG studies comparing gabapentin N3 vs natural N3
- Sleep architecture preservation/degradation
- Glymphatic clearance implications

### Priority 3: Cognitive Effects During Sleep
- Memory consolidation differences
- Next-day cognitive outcomes
- Long-term cognitive impact (ch14i mentions dementia signal)

## Key Constraints
- **Scientific validity only**: No patient anecdotes, no forum posts
- **ME/CFS-relevant**: Focus on implications for ME/CFS patients
- **Mechanistic precision**: Distinguish between established vs hypothetical mechanisms
- **Certainty quantification**: Use standard 0.0-1.0 certainty scale

## Search Strategy

### Query Set 1: OSA/Sleep Breathing
1. "gabapentin obstructive sleep apnea polysomnography"
2. "gabapentin respiratory depression sleep disordered breathing"
3. "gabapentin CPAP adherence sleep apnea"

### Query Set 2: Sleep Architecture
4. "gabapentin slow wave sleep polysomnography architecture"
5. "gabapentin N3 sleep EEG microarousals"
6. "gabapentin REM sleep suppression"

### Query Set 3: Cognitive Effects
7. "gabapentin memory consolidation sleep"
8. "gabapentin next-day cognitive performance"
9. "gabapentin dementia risk long-term use sleep"

### Query Set 4: ME/CFS Specific
10. "gabapentin ME/CFS sleep quality"
11. "gabapentin myalgic encephalomyelitis polysomnography"
12. "gabapentin fibromyalgia sleep architecture" (as proxy)

## Integration Format

### Warning Environment Template
```typst
#warning-env(title: [Gabapentin Sleep Architecture Limitations])[
Gabapentin increases N3 sleep quantitatively but the physiological quality may differ from natural N3:
- *OSA risk*: Gabapentin may worsen obstructive sleep apnea through respiratory muscle tone suppression (certainty: X.XX)
- *Sleep architecture*: Gabapentin-induced N3 may differ from natural N3 in [specific aspects] (certainty: X.XX)
- *Cognitive implications*: [next-day or long-term effects] (certainty: X.XX)
]
```

### Revision to Current Entry
Replace current single-line gabapentin entry with:
```typst
- *Gabapentin*: 100–600 mg at bedtime. [benefits] [WARNING-ENV-REFERENCE]
```

## Review Categories Required
1. **Safety-auditor**: Patient-facing safety check (PEM harm from overexertion advice, severe/very-severe representation)
2. **Patient-safety-auditor**: Medical safety violations (missing contraindications, dosing errors, harm potential)
3. **Neuro-auditor**: Neurological and neuroendocrine content precision
4. **Clinician-auditor**: Clinical practice applicability

## Success Criteria
- All claims supported by peer-reviewed literature
- Certainty values quantified where evidence exists
- ME/CFS-specific clinical context preserved
- No overclaiming beyond evidence
- Clear distinction between established vs hypothesized mechanisms
- Patient safety warnings appropriately prominent
- Build verification successful

## Timeline
- Literature search: 1-2 passes (agent delegation)
- Evidence integration: 1 pass
- Adversarial review: 1-2 passes
- Build verification: 1 pass

## Risk Mitigation
- Avoid updating if evidence is conflicting or low-quality
- Focus on consensus areas first
- Flag areas requiring future research as "hypothesis" environments
- Maintain gabapentine as viable option with appropriate caveats (not contraindication blanket)