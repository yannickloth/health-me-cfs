# Remaining Synthesis Files Needed

## Status
4 papers have complete synthesis (notes.md + key-findings.md + integration-guide.md):
- ✓ Cervenka2017
- ✓ Schwarcz2012
- ✓ Xie2013
- ✓ Yan2026

## Remaining Papers (8 papers)

These papers have abstract.txt but need notes.md, key-findings.md, integration-guide.md:

### High Priority for Integration (certainty 0.5+)
1. **Che2025** - `/home/nicky/code/health-me-cfs/Literature/pathophysiology/immune-dysfunction/Che2025_InnateImmunityPEM/`
   - Certainty: 0.65 (medium)
   - Relevance: ME/CFS-specific multi-omics study
   - Priority: HIGH - direct ME/CFS evidence

2. **Chojnacki2026** - `/home/nicky/code/health-me-cfs/Literature/treatments/Chojnacki2026_ProbioticTryptophanCFS/`
   - Certainty: 0.60 (medium)
   - Relevance: Clinical study (n=40), kynurenine pathway
   - Priority: HIGH - clinical evidence

3. **Jin2026PEMMechanism** - `/home/nicky/code/health-me-cfs/Literature/reviews/Jin2026_PEMMechanisms/`
   - Certainty: 0.65 (medium, review)
   - Relevance: PEM multi-system review, ME/CFS/Long COVID
   - Priority: HIGH - PEM framework

4. **FanoIllic2026SkeletalMuscle** - `/home/nicky/code/health-me-cfs/Literature/reviews/Fano2026_MuscleMECFS/`
   - Certainty: 0.70 (medium-high, comprehensive review)
   - Relevance: ME/CFS skeletal muscle, mitochondrial dysfunction
   - Priority: HIGH - mitochondrial evidence

### Medium Priority (certainty 0.3-0.49)
5. **Zhang2026MitochondriaFatigue** - `/home/nicky/code/health-me-cfs/Literature/pathophysiology/energy-metabolism/Zhang2026_MitochondriaFatigueGenetics/`
   - Certainty: 0.50 (medium)
   - Relevance: Genetic evidence, large GWAS (n=449,019)
   - Priority: MEDIUM - general fatigue, not ME/CFS-specific

### Low Priority (extrapolation, certainty <0.4)
6. **Elbaga2026** - `/home/nicky/code/health-me-cfs/Literature/neurological/Elbaga2026_EAAT2Excitotoxicity/`
   - Certainty: 0.40 (low)
   - Relevance: EAAT2 mechanism (Alzheimer's rat model)
   - Priority: LOW - extrapolation required

7. **Manisha2026** - `/home/nicky/code/health-me-cfs/Literature/neurological/Manisha2026_EAAT2Alzheimers/`
   - Certainty: 0.40 (low)
   - Relevance: EAAT2 modulators (Alzheimer's in vitro)
   - Priority: LOW - extrapolation required

8. **Zhang2026PirBEAAT2** - `/home/nicky/code/health-me-cfs/Literature/neurological/Zhang2026_PirBEAAT2/`
   - Certainty: 0.40 (low)
   - Relevance: PirB-EAAT2 pathway (Alzheimer's mouse)
   - Priority: LOW - extrapolation required

## Recommended Action Plan

### Phase 1: High-Priority Papers (Do first)
Create synthesis files for Che2025, Chojnacki2026, Jin2026, Fano2026
- These have highest certainty and direct ME/CFS relevance
- Ready for immediate integration into ch14c-multi-lock-integration.typ
- Estimated effort: ~2-3 hours

### Phase 2: Medium-Priority Paper (Optional)
Create synthesis for Zhang2026MitochondriaFatigue
- Supports mitochondrial dysfunction genetic basis
- Useful but not ME/CFS-specific
- Estimated effort: ~30 minutes

### Phase 3: Low-Priority Papers (Optional/May skip)
Create synthesis for Elbaga2026, Manisha2026, Zhang2026PirBEAAT2
- These are extrapolation from Alzheimer's literature
- Use only as mechanistic support with caveats
- Estimated effort: ~1-2 hours

## Integration Readiness

### Ready for Integration NOW (have integration guides)
- Cervenka2017 (0.95) - Achievement
- Schwarcz2012 (0.95) - Achievement
- Xie2013 (0.90) - Achievement (already in bib)
- Yan2026 (0.45) - Observation

### Ready after Phase 1 (2-3 hours)
- Che2025 (0.65) - Observation
- Chojnacki2026 (0.60) - Observation
- Jin2026PEMMechanism (0.65) - Hypothesis (already in bib)
- FanoIllic2026SkeletalMuscle (0.70) - Achievement (already in bib)

## Integration Strategy

1. **Start with high-certainty achievement environments:**
   - Cervenka2017 (kynurenine pathway central node)
   - Schwarcz2012 (QA as NMDA agonist)
   - Xie2013glymphatic (sleep-glymphatic clearance)
   - FanoIllic2026 (mitochondrial dysfunction)

2. **Add medium-certainty observation environments:**
   - Che2025 (ME/CFS kynurenine dysregulation)
   - Chojnacki2026 (clinical kynurenine/gut axis)
   - Yan2026 (kynurenine in fatigue, with caveats)

3. **Add hypothesis environment for PEM loop:**
   - Jin2026PEMMechanism (multi-system feedback framework)

4. **Use EAAT2 papers as mechanistic support (hypothesis with caveats):**
   - Cite Elbaga2026, Manisha2026, Zhang2026PirBEAAT2
   - Note extrapolation from Alzheimer's literature
   - Use as supporting mechanism only

## Files to Process

For each remaining paper, create:
1. `notes.md` - Methodology, acronyms, certainty assessment
2. `key-findings.md` - Key findings, clinical implications, integration points
3. `integration-guide.md` - Recommended chapters, LaTeX examples, certainty for integration

Template structure available in completed papers (Cervenka2017 folder).

## Notes

- All abstracts are already downloaded
- BibTeX entries are ready in `kynurenine-excitotoxicity-bibtex-additions.bib`
- Literature summary document (`kynurenine-excitotoxicity-literature-summary.md`) has all key findings
- Research complete report (`KYNURENINE-EXCITOTOXICITY-RESEARCH-COMPLETE.md`) provides overview

Focus on creating integration guides for the 4 high-priority papers (Che2025, Chojnacki2026, Jin2026, Fano2026) to enable immediate integration into ch14c.