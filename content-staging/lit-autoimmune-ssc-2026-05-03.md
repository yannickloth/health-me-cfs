# Literature Survey: Systemic Sclerosis and ME/CFS — 2026-05-03

**Task:** Research SSc/ME/CFS relationship: fatigue overlap, shared mechanisms (IFN, Raynaud's, TGF-β, endothelial injury, autonomic dysfunction), anti-mitochondrial antibodies, GPCR autoantibodies, Raynaud's genetics.
**Target chapters:** ch14d-cross-disease (primary), ch04/ch08 differential diagnosis (secondary)
**Already integrated:** `spec:ssc-ifn-fatigue-model` (IFN-I signature in SSc as ME/CFS fatigue model)

---

## Papers Added (7)

| Citation Key | Authors | Year | Journal | Certainty |
|---|---|---|---|---|
| vanEeden2023SScMECFS | van Eeden et al. | 2023 | Int J Mol Sci | Low-Medium |
| vanEeden2022fatigue | van Eeden, Osman, Cohen Tervaert | 2022 | Expert Rev Clin Immunol | Medium |
| Kwakkenbos2025SScFatigue | Kwakkenbos et al. | 2025 | Rheumatology (Oxford) | High |
| Basta2018SScFatigueSysRev | Basta, Afeltra, Margiotta | 2018 | Clin Exp Rheumatol | Medium |
| Hartmann2023ADRA2A | Hartmann et al. | 2023 | Nat Commun | High |
| Tervi2024RaynaudGWAS | Tervi et al. | 2024 | Cell Genomics | High |
| Masini2021SScAutonomic | Masini et al. | 2021 | J Scleroderma Relat Disord | Low-Medium |

---

## Research Questions — Answers

### Q1. Does SSc produce ME/CFS as a documented complication independent of organ fibrosis?

**Answer: Yes, in a subset — but evidence is preliminary (n=12).**

van Eeden et al. 2023 (PMID 37569433) applied formal ME/CFS criteria to 24 early SSc patients and found that a subgroup meeting ME/CFS criteria had a **distinct mitochondrial electron transport chain gene expression profile** (reduced CyB/Complex III; p=0.044) compared to fatigued-but-not-ME/CFS SSc patients, *despite no difference in skin scores, digital ulcers, lung function, or autoantibody type*. This is the strongest available evidence that ME/CFS-like phenotype in SSc is mechanistically distinct from fibrotic/organ-damage burden. Severely limited by n=12 per group; single centre; no functional mitochondrial assays.

### Q2. Is SSc fatigue mechanistically equivalent to ME/CFS fatigue (cytokine vs. fibrosis-driven)?

**Answer: Partially shared, not equivalent — SSc fatigue is multifactorial; fibrosis is a weak correlate; cytokine/immune overlap is real but less studied.**

Basta et al. 2018 systematic review (PMID 29303706) found SSc fatigue correlates most with psychosocial factors (depression, pain, sleep), with uncertain relationship to disease activity scores. Kwakkenbos et al. 2025 SPIN cohort (n=2,385) confirmed fatigue > general population (T-score 54.6 vs. 50) driven by GI involvement, pain, and smoking — not primarily skin fibrosis. The van Eeden 2022 review argues explicitly that SSc/ME/CFS fatigue share "immune and metabolic commonalities" but notes this remains a hypothesis; SSc fatigue research generally has not screened for PEM (a key ME/CFS discriminator).

**Critical gap:** No published study has systematically applied PEM assessment tools (e.g., PEM questionnaire, 2-day CPET) to SSc fatigue patients.

### Q3. Does Raynaud's vasospasm in SSc operate via the same α2C-adrenergic pathway as hypothesised in ME/CFS?

**Answer: Partially — Raynaud's genetics now implicate ADRA2A (α2A, not α2C), with NOS3 endothelial signalling; the ME/CFS hypothesis uses α2C. Overlap is real but the receptor subtype differs.**

- Hartmann et al. 2023 (PMID 37828025, Nat Commun): GWAS in 5,147 RP cases identified **ADRA2A** (α2A-adrenoreceptor, OR=1.26 per allele, p<9.6×10⁻²⁷) as a causal gene for Raynaud's phenotype. This is α2A, not α2C.
- Tervi et al. 2024 (PMID 39142284, Cell Genomics): Larger GWAS (11,358 cases, 1.1M controls, 4 biobanks) confirmed ADRA2A + added NOS3 (endothelial NO synthase), HLA (immune), IRX1 (microvasculature). The HLA signal points toward autoimmune/immune triggers in secondary Raynaud's.
- The ME/CFS vasospasm hypothesis specifically invokes α2C (cold-induced upregulation of α2C-AR on vascular smooth muscle via ROS/Rho-kinase). While α2C is implicated in Raynaud's physiology in experimental models, the genetic risk locus is α2A.
- **No study has measured ADRA2A or ADRA2C variants specifically in ME/CFS cohorts.**

### Q4. Are anti-topoisomerase I or anti-centromere antibodies found in ME/CFS cohorts?

**Answer: No published evidence — this has not been systematically tested.**

Anti-topoisomerase I (anti-Scl-70) and anti-centromere antibodies are hallmarks of diffuse and limited SSc respectively. The ME/CFS autoantibody literature focuses on GPCR antibodies (β2-AdR, M3/M4 mAChR), anti-nuclear antibodies (ANA; 15–25% of ME/CFS), and anti-PDC/AMA. No published ME/CFS cohort study has specifically assayed anti-Scl-70 or anti-CENP-A/B. The Germain et al. 2025 comprehensive antigen-profiling study (PMID in bib: GermainEtAl2025) found no significant GPCR autoantibody differences using PhIP-Seq, but SSc-specific antibodies were not the target.

**This is an open gap, not a negative finding.**

### Q5. Does the IFN-I signature in SSc overlap with that in ME/CFS SLE-like subtype?

**Answer: Mechanistic overlap is plausible; direct comparison data are lacking.**

Wu & Assassi 2021 (PMID 35694218) confirm that SSc has a prominent IFN-I signature in peripheral blood and skin, driven by genetic risk loci (IRF5, IRF7, STAT4) and correlating with disease severity. This is already captured in `spec:ssc-ifn-fatigue-model`. The additional angle not yet integrated is that **IFN-I in SSc correlates with disease severity markers but NOT specifically with fatigue** — the IFN-SSc-fatigue link is mechanistically proposed but not empirically confirmed.

---

## Null Results and Contradicting Evidence

1. **Anti-centromere/anti-Scl-70 in ME/CFS:** Not found — not because tested and negative, but because not systematically tested. Gap, not null.
2. **SSc fatigue not driven by skin fibrosis:** The SPIN cohort (Kwakkenbos 2025) and Basta 2018 systematic review both show fatigue correlates weakly with mRSS (skin score) — this contradicts a simple "fibrosis = fatigue" model and supports immune/functional mechanisms.
3. **Mitochondrial signature in SSc-CFS is exploratory only:** van Eeden 2023 is limited to n=12; gene expression changes not confirmed by functional assays. The finding should be treated as hypothesis-generating.
4. **α2A vs. α2C discrepancy:** Genetic evidence points to α2A for Raynaud's risk; the ME/CFS α2C hypothesis is mechanistically plausible but not genetically confirmed. These are different receptor subtypes with partially overlapping pharmacology.
5. **IFN-fatigue correlation in SSc not established:** Wu & Assassi 2021 do not report an IFN–fatigue correlation; the IFN signature correlates with organ severity.

---

## Integration Points for ch14d-cross-disease

### Primary integrations (new content)

1. **Mitochondrial signature (van Eeden 2023)** — SSc patients meeting ME/CFS criteria show reduced CyB (Complex III) independent of organ damage. Suggest as `achievement` environment (preliminary) or `speculation` given n=12.

2. **SSc fatigue independent of fibrosis (Basta 2018 + Kwakkenbos 2025)** — SSc fatigue is psychosocially and functionally driven, not proportional to fibrosis extent. Supports the argument that SSc is a useful model because its fatigue mechanism decouples from structural damage — potentially paralleling ME/CFS. Frame as `observation`.

3. **Raynaud's GWAS: ADRA2A + NOS3 (Hartmann 2023 + Tervi 2024)** — Genetic architecture of Raynaud's now confirmed: adrenergic (ADRA2A), endothelial (NOS3), immune (HLA). The NOS3 eNOS finding resonates with ME/CFS endothelial dysfunction. Frame as `observation` with note that α2A is the risk locus, not α2C.

4. **SSc autonomic dysfunction correlates with microvascular damage (Masini 2021)** — 50% of SSc patients have cardiac autonomic neuropathy correlated with nailfold capillaroscopy active pattern. Supports shared vascular-autonomic mechanism with ME/CFS orthostatic intolerance.

### Secondary integrations (ch04/ch08 differential)

- Anti-centromere and anti-Scl-70 are NOT reported in ME/CFS — these markers, if positive, suggest SSc over ME/CFS in differential. Clinically useful discriminator.
- Raynaud's in ME/CFS (~20–28%) vs. SSc (>90%) — prevalence difference supports secondary Raynaud's in ME/CFS as functional/adrenergic rather than structural vascular disease.

---

## Certainty Summary

| Domain | Evidence Level | Key Limitation |
|---|---|---|
| ME/CFS criteria in SSc | Low-Medium | n=12, single centre, not replicated |
| SSc fatigue ≠ fibrosis-driven | Medium-High | Large SPIN cohort; no PEM testing |
| ADRA2A in Raynaud's | High | GWAS; does not directly address ME/CFS |
| NOS3 in Raynaud's | High | GWAS; functional CRISPRi confirmation |
| SSc autonomic dysfunction | Low-Medium | n=26, pilot, no ME/CFS comparison |
| IFN-I fatigue link in SSc | Low | Mechanistic only; not empirically confirmed |
| Anti-Scl-70/CENP in ME/CFS | Gap | Not tested — cannot conclude |
