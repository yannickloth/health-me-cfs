# Integration Guide: Kerrebijn et al. 2026 — Fibromyalgia Genetics

## Paper Citation Key
**bib key:** `Kerrebijn2026FibromyalgiaGWAS` (mixed case, VERIFIED in genetics-epigenetics.bib)

## Recommended Chapters for Integration

### Primary Target: ch04 (Comorbidity / Differential Diagnosis)
**File:** `src/main/typst/mecfs/part1-*/ch04-*.typ`
**Section hint:** fibromyalgia co-occurrence with ME/CFS
**Environment type:** hypothesis-box
**Rationale:** Fibromyalgia co-occurs with ME/CFS; this genetic architecture establishes a shared CNS/nociplastic basis relevant to the comorbidity relationship.

**Suggested Typst:**
```typst
#hypothesis-box(title: [Fibromyalgia genetic architecture implicates a shared CNS basis for ME/CFS comorbidity])[
Kerrebijn et al. @Kerrebijn2026FibromyalgiaGWAS identified 26 risk loci for fibromyalgia in a multi-ancestry GWAS of 2.5 million individuals, with heritability exclusively enriched in brain tissues and neural cell types. Genetic correlation rg > 0.7 with low back pain, PTSD, and IBS supports a shared chronic-pain/somatic genetic architecture. (Raw certainty: 0.85, from general population → discounted to 0.68.)

*Falsifiable prediction:* ME/CFS GWAS loci (e.g. DecodeME) should show partial genetic overlap with fibromyalgia loci if a shared CNS vulnerability underlies both.

*Consequence:* Fibromyalgia co-occurring with ME/CFS likely reflects a shared central-nervous-system genetic vulnerability rather than a purely peripheral cause, informing how comorbidity is modeled.
] <hyp:fibromyalgia-cns-shared-genetics>
```

### Secondary: ch14d (Cross-Disease Comparisons)
**Environment type:** achievement / hypothesis-box
**Rationale:** Shared genetic architecture across fibromyalgia, IBS, chronic pain, psychiatric disorders; ME/CFS overlap loci (OLFM4, RABGAP1L/GPR52).

### Secondary: ch13 (Integrative Models)
**Environment type:** hypothesis-box
**Rationale:** Central sensitization / CNS model integrating genetic evidence.

### Tertiary: ch30 (Mechanistic Cascade Tracing)
**Environment type:** speculation / hypothesis-box
**Rationale:** GPR52-HTT and DRD2 neural pathway cascades.

## Key Points to Convey
1. Fibromyalgia is a CNS/nociplastic disorder per exclusive brain/neural heritability enrichment.
2. rg > 0.7 with IBS, low back pain, PTSD — shared chronic-pain/somatic genetic architecture.
3. Neural genes (HTT, GPR52, DRD2/NCAM1, DCC, MDGA2, CELF4) as candidate shared mechanisms.
4. Not primarily autoimmune (no MHC signal, no immune/glial enrichment).
5. No sex difference in genetic architecture.
6. ME/CFS overlap loci: OLFM4, RABGAP1L/GPR52; long COVID: BPTF.

## Limitations to Note
- Mostly European (90%); ICD-code case definition; single published meta-analysis not fully externally replicated locus-by-locus; cell-type enrichment resolution limits; autoimmune rg subject to diagnostic misclassification.

## Certainty Assessment for Integration
- **Quality:** High (Nature Medicine)
- **Sample:** n = 2,563,755 (54,629 cases)
- **Replication:** 11-cohort internal consistency + partial external (Bright 2026); not fully locus-by-locus replicated
- **Population weight:** 0.80 (fibromyalgia/comorbid condition)
- **Raw certainty:** 0.85 → **discounted 0.68**
- **Limitations:** European skew; ICD-based phenotyping; single study

## Supporting Papers (same stream, optional co-citation)
- `Bright2026FibromyalgiaGenetics` — independent GWAS replication (discounted 0.60)
- `Johnston2025NociplasticPain` — nociplastic pain shared factor (discounted 0.52)
- `Rahman2021CWP` — CWP GWAS RNF123 (discounted 0.56)
- `Lin2026FibromyalgiaPsychiatric` — psychiatric shared liability (discounted 0.48)
- Existing corpus: `Steen2026sharedgenetic`, `DecodeME2025`, `Hajdarevic2022gwas`
