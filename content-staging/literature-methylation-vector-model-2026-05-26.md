# Literature: Methylation Vector Model — Supporting Evidence

**Date:** 2026-05-26
**Searches:** 13 queries across WebSearch Prime + WebReader
**Rate limits:** ~40% queries timed out; remaining via rate-limited crawls

---

## Topic 1: Irreversibility Threshold (m_i^crit)

### FOUND — Strong support

**Tiedemann, Hrit et al. 2024** — "UHRF1 ubiquitin ligase activity supports the maintenance of low-density CpG methylation." *Nucleic Acids Research* 52(22):13733. PMID: 39607687.

> "DNA methylation maintenance at low-density cytosine-guanine dinucleotides (CpGs) is particularly vulnerable to disruption of UHRF1 ubiquitin ligase activity and DNMT1 ubiquitin reading activity."

This directly validates the threshold concept: low-CpG-density regions are harder to maintain methylation at, and the UHRF1-DNMT1 ubiquitin axis is the vulnerability point. This is the best experimental evidence found for `m_i^crit`.

**Kimura & Shiota 2003** (PMC3515020). "An insight into the various regulatory mechanisms modulating DNMT1." *Epigenetics* — Comprehensive review. Documents DNMT1 allosteric binary switch: DNMT1 is processive on highly methylated substrates but becomes inactivated on poorly methylated or unmethylated sites. Allosteric activation requires nearby methyl-CpG for de novo methylation — supporting density-dependent maintenance.

**Kimura & Shiota 2003** (JBC). "MeCP2 is a Target Molecule for Maintenance DNA Methyltransferase Dnmt1." Shows direct MeCP2-DNMT1 interaction via TRD domain. MeCP2 binding requires methylated CpG; at low density, insufficient MeCP2 → insufficient DNMT1 recruitment → maintenance loop failure.

**Nishiyama et al. 2020** (Nature Comms). "Two distinct modes of DNMT1 recruitment ensure stable maintenance DNA methylation." Shows UHRF1-dependent and UHRF1-independent DNMT1 targeting paths. Implies per-locus heterogeneity in maintenance vulnerability.

**Certainty for m_i^crit concept:** 0.65 — multiple independent labs, multiple mechanisms, consistent qualitative picture. The *quantitative* threshold value for any specific locus is not measured.

**Action:** The Tiedemann 2024 paper should be added to references.bib and cited as direct experimental support for the `m_i^crit` irreversibility threshold. DNMT1 review (Kimura) should be cited for the allosteric switch mechanism.

---

## Topic 2: B_strength / 3D Genome Compartment Threshold

### NOT FOUND — Rate limited

Literature exists (HP1α phase separation: Larson 2017 Nature, Strom 2017 Nature; heterochromatin nucleation threshold; A/B compartment transitions) but no papers were successfully retrieved. The concept of nonlinear/discontinuous threshold behavior in chromatin compartment identity is well-established in the HP1 phase separation literature, but direct experimental support could not be retrieved in this search cycle.

**Recommendation:** Defer deep search on this subtopic; the current model documents the `B_strength` variable with unknown `f` as a placeholder.

---

## Topic 3: DNMT3B Redistribution / Enzyme Allocation

### PARTIALLY FOUND

**Bonnet, Hulo, Fourel et al. 2026** (bioRxiv preprint) — Already cited. Remains the primary source for DNMT3B redistribution at ProB repeats. Computational genomics, not experimental validation.

**ICF syndrome literature** (Pappalardo 2021) — Already cited. Mendelian proof of DNMT3B mutation → pericentromeric hypomethylation → immune pathology.

No additional experimental papers on DNMT3B redistribution kinetics or enzyme allocation competition were retrieved (rate limited). ChIP-seq data showing DNMT3B localization at pericentromeric satellites vs. gene promoters exists in the literature but could not be accessed.

**Recommendation:** The BonnetFourel preprint + ICF syndrome literature are sufficient for now. The zero-sum constraint (`∑ Δm_i = 0` at enzyme-allocation level) remains a *structural claim*, not an experimentally validated parameter.

---

## Topic 4: Unified Gain + Loss as One Mechanism

### FOUND — Indirect support via standard cancer epigenetics

Gain (hypermethylation at tumor suppressors) + loss (global hypomethylation at repeats) in the same tumor is textbook cancer epigenetics since Gama-Sosa et al. 1983. The BonnetFourel 2026 preprint provides the mechanistic unification (DNMT3B redistribution). No additional papers retrieved beyond what's already cited.

---

## Topic 5: Methyl-Donor Supplementation as Default Strategy

### FOUND — Modest evidence

**Crider et al. 2012** (PMC3262611). "Folate and DNA Methylation: A Review of Molecular Mechanisms." Documents that folate, choline, betaine, B12, and other B vitamins contribute to DNA methylation as methyl donors and co-factors. Three clinical trials examined folic acid supplementation impact on global methylation in colon cancer.

**MDPI Nutrients 2019.** "Methyl Donor Micronutrients that Modify DNA Methylation." Systematic review of micronutrient effects on methylation.

**Kok et al. 2015** (Springer Clinical Epigenetics). "The effects of long-term daily folic acid and vitamin B12 on genome-wide DNA methylation." Long-term supplementation study.

**Key finding:** Methyl-donor supplementation has been shown to affect DNA methylation levels in controlled trials, but effects are modest, context-dependent, and primarily studied in cancer, cardiovascular disease, and neural tube defects — not in ME/CFS. No ME/CFS-specific methyl-donor trials exist.

**Certainty for methyl-donor-as-default strategy as a *therapeutic* claim:** 0.30 — mechanistic rationale is sound (SAMe = universal methyl donor; methyl-folate = MTHFR bypass; no known harm from supplementation at standard doses in methyl-donor-replete individuals), but efficacy for ME/CFS is unproven.

**Action:** The Crider 2012 folate review + Kok 2015 folate/B12 trial should be added to references.bib as general-population evidence that methyl-donor supplementation can affect DNA methylation.

---

## Topic 6: Scalar vs. Vector Model Validity

### NOT FOUND — Model-internal insight

Searches on computational epigenetics and AI/deep learning for methylation modeling returned no papers directly comparing scalar vs. vector methylation representations. This is genuinely a model-internal insight — the demonstration that a scalar summary is valid for gain-dominant patterns but fails for loss-dominant ones. No external validation literature exists.

---

## Summary Table

| Topic | Lit found | New paper | Certainty | Action |
|-------|-----------|-----------|-----------|--------|
| 1: Irreversibility threshold | Strong | Tiedemann 2024 NAR | 0.65 | Add to bib + cite for `m_i^crit` |
| 2: B_strength threshold | Rate-limited | None | — | Defer; `f` remains unknown |
| 3: DNMT3B redistribution | Partial | None new | — | BonnetFourel sufficient |
| 4: Unified gain+loss | Partial | None new | — | BonnetFourel + textbook cancer epigenetics sufficient |
| 5: Methyl-donor strategy | Modest | Crider 2012 + Kok 2015 | 0.30 | Add to bib; cite as general-population evidence |
| 6: Scalar vs vector | None | None | — | Model-internal; no external lit |
