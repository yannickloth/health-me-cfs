#import "../../../../shared/environments.typ": *

=== Extracellular Vesicles as Inter-Compartment Signaling Vectors


#speculation(title: [Extracellular Vesicle Count Elevation as a Consistently Replicated Finding in ME/CFS])[
*Certainty: 0.45.* Six-plus independent studies from four independent groups (Oltra, Castro-Marrero, Hanson, Rydland) report elevated circulating EV counts in ME/CFS vs healthy controls. None contradict. This is among the most consistently replicated findings in ME/CFS biomarker research. However, EV count elevation is non-specific — seen in sepsis, autoimmune disease, cancer, and cardiovascular disease.

Castro-Marrero et al.\ (2018) first reported elevated EV numbers (n=10 ME/CFS, n=5 HC) @castromarrero2018ev. Giloteaux et al.\ (2020, n=8 ME/CFS, n=9 HC) confirmed elevation and found IL-2 enriched in the EV fraction @giloteaux2020evcytokine. Almenar-Pérez et al.\ (2020, n=22 ME/CFS, n=17 HC) replicated EV count elevation in severely ill patients from the UK ME Biobank @almenarperez2020evmirna. Eguchi et al.\ (2020, n=25 ME/CFS, n=22 HC) found circulating EVs significantly increased, correlating with CRP (AUC 0.80 for diagnosis) @eguchi2020evbiomarker. Bonilla et al.\ (2022, n=15 ME/CFS, n=6 HC) found CD19+ B-cell and CD41a+ platelet-derived EVs elevated, particularly in severe ME/CFS @bonilla2022evseverity. Rydland et al.\ (2026, n=49 ME/CFS, n=50 HC) — the largest study to date — confirmed elevated EV counts in pre-pandemic samples meeting Canadian criteria, establishing that EV elevation is not a SARS-CoV-2 artifact @rydland2026evcargo. Seifert et al.\ (2026, n≤12) found concordant findings in post-COVID ME/CFS @seifert2026extracellular-vesicles.

*Protein cargo (nominal only).* Rydland et al.\ (2026) detected 424 EV proteins; 11 differed nominally between ME/CFS and controls (p\ \ 0.05 uncorrected). None survived multiple-comparison correction. Upregulated: ITIH3, AMBP, FGB (liver-derived — inter-alpha-trypsin inhibitor heavy chain, alpha-1-microglobulin/bikunin precursor, fibrinogen beta chain). Downregulated: immunoglobulin light chain variable domains (IGKV1-12, IGKV1-8, IGLV3-15, IGHV3-7), hemoglobin subunits (HBA1, HBB, HBD), and coagulation factor XIII A chain (F13A1) @rydland2026evcargo. These protein differences did not correlate with illness severity. The direction of change — increased liver-derived, decreased B-cell/erythrocyte-derived proteins — is intriguing but must be treated as hypothesis-generating only.

*EV miRNA discrimination.* González-Cebrián et al.\ (2022, n=51 ME/CFS, n=78 HC) achieved AUC 0.87–0.93 for ME/CFS diagnosis using PLS-DA on EV miRNA profiles, with four EV features (size and zeta-potential) selected among the top discriminators @gonzalezcebrian2022evdiagnosis. This is the strongest diagnostic signal from EV cargo to date, but remains single-lab (Oltra group) without independent replication.

*Falsifiable prediction:* Independent multi-centre replication of EV miRNA panels should reproduce AUC≥0.80 for ME/CFS diagnosis. EV proteomics studies with sample sizes adequate for FDR correction (n>100 per group) should identify proteins that survive multiple-comparison correction; if no proteins survive FDR in adequately powered studies, EV protein cargo has no disease-specific biomarker value.

*Consequence:* If independently replicated, elevated EV counts and EV miRNA signatures would give clinicians an objective blood-based test to support ME/CFS diagnosis — though non-specificity limits standalone use. The consistent EV count elevation across labs is stronger evidence for a real biological signal than any single study's protein findings.

*(Origin: literature-derived — @rydland2026evcargo + prior EV studies.)*
] <spec:ev-signaling-mecfs>

#speculation(title: [Dual-Pathway Model of Elevated EV Counts in ME/CFS: Ceramide-Driven and Complement-Driven Production vs. Impaired Clearance])[
*Certainty: 0.20.* Mechanistic inference from well-characterized EV biogenesis pathways; no direct measurement of ceramide, complement, or EV clearance in ME/CFS EVs specifically. Integrates known ME/CFS biochemistry with EV biology.

Six-plus independent studies consistently find elevated circulating EV counts in ME/CFS @spec:ev-signaling-mecfs, yet EV size findings conflict across studies — some find smaller EVs, some find no size difference, one finds larger EVs. This pattern is not contradictory; it is a *prediction* of a multi-mechanism model in which three distinct processes converge to elevate total plasma EV counts while producing different EV populations:

*1. Ceramide-driven exosome production (↑ count, smaller EVs).* Neutral sphingomyelinase 2 (nSMase2) hydrolyses sphingomyelin to ceramide at the plasma membrane, triggering ESCRT-independent exosome biogenesis via ceramide-enriched microdomains. This pathway is TNF-α- and oxidative stress-inducible. ME/CFS has documented TNF-α elevation, oxidative stress, and a ceramide:S1P rheostat shift toward ceramide dominance @hyp:ceramide-s1p-rheostat. Ceramide accumulation in immune cell membranes would drive nSMase2-dependent production of small exosomes (30–150 nm). This pathway is independent of the ESCRT machinery — ESCRT impairment @spec:exosome-biogenesis-impairment would NOT reduce nSMase2-dependent exosome production.

*2. Complement-mediated microvesicle shedding (↑ count, larger EVs).* Complement activation — documented in ME/CFS via elevated C3a, C5a, C4a — generates C5b-9 membrane attack complexes (MAC) that insert into cell membranes. MAC deposition triggers endothelial and immune cell membrane blebbing, releasing microvesicles (200–1000 nm) directly from the plasma membrane. This is documented in the ME/CFS paper already (Chapter @ch:cardiovascular, Section on POTS): "membrane attack complex (C5b-9) deposition causing endothelial microvesicle shedding that carries glycocalyx components into circulation." Complement-mediated shedding produces larger EVs than ceramide-driven exosomes.

*3. Impaired EV clearance (↑ count, both populations).* Circulating EVs are removed by Kupffer cells (liver), splenic macrophages, and phosphatidylserine (PS) receptor-mediated uptake. If clearance is saturated — as occurs in sepsis and SLE — EV half-life extends, and both small and large EVs accumulate. ME/CFS has two clearance-impairment candidates: (a) opsonization of EVs by complement C3b and fibrinogen (FGB was upregulated in ME/CFS EVs @rydland2026evcargo), which may saturate CR1 and FcγR clearance receptors; (b) impaired reticuloendothelial system function, consistent with the cellular fog hypothesis @spec:cellular-fog.

*Reconciling variable EV size across studies.* If ceramide-driven exosome production dominates → smaller EVs predominate (Castro-Marrero 2018 finding). If complement-mediated shedding predominates → larger EVs predominate (some studies). If all three mechanisms operate simultaneously at comparable levels → no net size difference (Rydland 2026 finding). The dominant pathway in a given cohort depends on: disease stage, severity composition, complement activation level, and the EV isolation protocol (differential centrifugation enriches differently from size-exclusion chromatography). Size variability is expected, not anomalous.

*Falsifiable predictions:* (1) ME/CFS EVs should have elevated ceramide content relative to healthy controls. (2) Plasma nSMase2 activity should be elevated in ME/CFS. (3) Endothelial-derived EVs (CD31+, CD144+) should be elevated in ME/CFS and correlate with plasma C5b-9 levels. (4) PS-receptor-positive macrophage frequency in spleen/liver (by imaging) should be reduced in ME/CFS — or EV clearance rate (using labelled EV injection in an animal model) should be slower. (5) EV size distribution should shift toward smaller EVs when ceramide dominates and toward larger EVs when complement dominates — testable by measuring ceramide:C5b-9 ratio in the same samples as NTA sizing.

*Consequence:* If confirmed, this model transforms EV count elevation from a non-specific biomarker into a mechanistic readout — the ceramide:C5b-9 ratio in EVs could reveal which pathological process dominates in a given patient, enabling physiology-guided subgrouping rather than relying on symptoms alone.

*(Origin: literature synthesis — integrates @rydland2026evcargo, @castromarrero2018ev, @kell2022microclots, and the paper's existing @hyp:ceramide-s1p-rheostat and complement hypotheses.)*
] <spec:ev-dual-pathway-count>

#speculation(title: [Exosomal HSAT2/HERV-K RNA as a Self-Perpetuating MDSC Expansion Mechanism])[


*(Certainty: 0.30 — mechanistic inference from Ewing sarcoma biology upgraded by post-viral MDSC persistence evidence; no direct ME/CFS HSAT2 data.)*

Evdokimova et al.\  demonstrated that exosomes from Ewing sarcoma cells enriched with HSAT2 and HERV-K RNA are taken up by CD33+ myeloid cells and CD8+ T-cells, inducing MDSC-like phenotypes (CD33+HLA-DR−, CD33+PD-1+, CD33+CD25+) and T-cell exhaustion (CD8+CD25+PD-1+) respectively. Critically, recipient cells become secondary transmitters — releasing their own HSAT2-containing EVs and propagating the immunosuppressive signal through at least three serial passages without ongoing tumor input.

This mechanism is candidate-relevant to ME/CFS because:

    + Herpesviruses (HSV-1, HCMV) induce HSAT2 expression via viral microRNAs ; EBV and HHV-6 — the primary ME/CFS viral triggers — have not been tested but the pathway is plausible; EBV specifically expands PMN-MDSCs during acute infectious mononucleosis @Mihatsch2026MDSCMono
    + Post-viral MDSC persistence is directly demonstrated: M-MDSCs remain elevated at 5 months post-SARS-CoV-2 infection, correlating with IL-6 (r = 0.62) and suppressing T-cell IFNγ by arginase+ROS mechanisms ; MDSC expansion during acute COVID-19 reaches 90% of mononuclear cells in severe cases @Agrati2020MDSCCoVID19
    + ME/CFS shows widespread DNA methylation alterations; if pericentromeric loci (chr2p11.2, 4p11) are hypomethylated, HSAT2 could be chronically expressed without active viral replication ; folate-cycle impairment reduces H3K9me3 at pericentromeric loci, permitting satellite repeat transcription 
    + The NK cell and T-cell exhaustion pattern in ME/CFS — reduced NK cytotoxicity (Hedges' g = 0.96 ), epigenetically locked CD8+ T-cell exhaustion (TBX21/EOMES up, TCF7 closed ), and PD-1/CTLA-4 checkpoint dysregulation  — is phenotypically consistent with exosomal MDSC-mediated suppression
    + The paradox of simultaneous immune activation (interferon signatures, cytokines) and immune suppression (impaired NK killing, T-cell exhaustion) mirrors the Ewing sarcoma phenotype characterized in Evdokimova 2019

The exosomal propagation loop would be self-sustaining: once established post-infection, it does not require continued viral presence. This provides a concrete mechanism for the loss of viral control in ME/CFS without identifying a single persisting pathogen.

*Falsifiable prediction:* HSAT2 and HERV-K RNA should be detectable in plasma EVs from ME/CFS patients at higher levels than healthy controls; these levels should correlate inversely with NK cytotoxicity and directly with MDSC frequency. If EV HSAT2 levels are comparable to healthy controls, this mechanism is not operative.

*Limitations:* All supporting evidence for the HSAT2 exosomal mechanism is from Ewing sarcoma (aggressive paediatric cancer), a context with far higher transcript levels than chronic infection. Post-viral MDSC persistence (Beliakova-Bethell 2022) was demonstrated for T-cell suppression; NK assays were not performed. The folate-MTHFR-H3K9me3 link (Zhu 2014) used extreme siRNA knockdown in cell lines — partial dietary/genetic depletion may not reach the same threshold. Not yet replicated in ME/CFS or any post-viral chronic disease context.
] <spec:hsat2-exosome-mdsc>

#speculation(title: [HSAT2 RNA as ETS Transcription Factor Sponge: Immune Reprogramming via SPI1/PU.1])[
*Certainty: 0.35.*

HSAT2 RNA contains tandem GGAA repeats — the canonical binding motif for the ETS family of transcription factors. This structural feature suggests that HSAT2 RNA may function as a molecular sponge, sequestering ETS family TFs and reducing their availability for normal genomic target binding. In Ewing sarcoma, pericentromeric HSAT2 RNA has been shown to siphon the ETS family TFs ERG and FLI1, contributing to oncogenic reprogramming (Evdokimova et al., "Oncogenic ETS fusions promote DNA damage and proinflammatory responses via pericentromeric RNAs in extracellular vesicles"). For ME/CFS, the most consequential target may be SPI1 (also called PU.1):

- *SPI1 biology.* SPI1 is a master transcription factor of the ETS family, fundamental for all hematopoiesis — from hematopoietic stem cell maintenance through myeloid and lymphoid lineage commitment. SPI1 binds GGAA DNA motifs to activate lineage-specific gene programs. Its expression level determines cell fate: high SPI1 → myeloid differentiation; low SPI1 → lymphoid differentiation.
- *HSAT2 GGAA repeats.* HSAT2 RNA contains hundreds of GGAA tandem repeats, creating a high-capacity decoy sink for ETS family TFs. If HSAT2 RNA is elevated in ME/CFS immune cells, it could reduce the effective nuclear concentration of SPI1.
- *Consequence: immune reprogramming.* Reduced functional SPI1 would impair normal hematopoiesis and immune cell differentiation. In the hematopoietic stem and progenitor cell (HSPC) compartment, SPI1 insufficiency biases differentiation away from lymphoid lineages toward myeloid output — mechanistically consistent with the MDSC expansion and NK/T-cell deficits observed in ME/CFS.
- *Endothelial-immune developmental link.* SPI1 also operates in the endothelial-to-hematopoietic transition during embryonic development (SPI1-KLF1/LYL1 axis), establishing the close developmental relationship between endothelial cells and the immune system. The shared reliance on SPI1 creates a mechanistic bridge between endothelial dysfunction and immune dysregulation — both prominent in ME/CFS.

This hypothesis predicts: (1) HSAT2 RNA in ME/CFS immune cells co-immunoprecipitates with SPI1 protein (RNA-IP); (2) SPI1 ChIP-seq in ME/CFS PBMCs shows reduced genome-wide binding at canonical target genes compared to healthy controls; (3) the expression of SPI1 target genes involved in lymphoid differentiation is reduced in ME/CFS, while myeloid gene programs are relatively preserved or expanded.

*Limitations.* Certainty 0.35. HSAT2 RNA sponging of ERG/FLI1 is demonstrated in Ewing sarcoma but has not been measured for SPI1 specifically. No HSAT2-SPI1 interaction has been tested in any disease context. HSAT2 RNA expression levels in ME/CFS immune cells are unknown. The GGAA motif is recognized by >25 human ETS TFs — HSAT2 sponging may affect multiple family members, creating complex combinatorial effects that are difficult to deconvolute. The endothelial-immune SPI1 developmental link is well-established in developmental biology but has not been measured in ME/CFS.
] <spec:hsat2-ets-spi1-sponge>

#speculation(title: [Impaired Exosome Biogenesis as Contributor to ME/CFS Chronicity])[
*Certainty: 0.20.* (Reduced from 0.25 — EV count data from 6+ independent studies contradict the prediction of reduced total circulating exosome concentration.) No direct ME/CFS ESCRT-pathway data; mechanistic inference from viral interference with ESCRT and mitochondrial dysfunction.

The HSAT2 exosome pathway above addresses pathological cargo — retroelement RNAs that exosomes carry. An orthogonal question is whether the exosome production machinery itself is impaired in ME/CFS, independent of cargo content. Two lines of reasoning suggest partial impairment may coexist with overall elevated EV counts:

*Evidence for impaired ESCRT-dependent EV biogenesis.* (1) Chronic viral proteins (EBV LMP1, HHV-6) interfere with ESCRT complex function — the same machinery required for exosome biogenesis — documented in latent herpesvirus infection. (2) Mitochondrial dysfunction reduces ATP available for the energy-intensive processes of vesicle budding, cargo sorting, and membrane fusion. (3) The cellular fog hypothesis (Speculation @spec:cellular-fog) predicts functional impairment of intracellular machinery across cell types — ESCRT-dependent exosome biogenesis pathways would be affected like any other ATP- and calcium-dependent process.

*Reconciling impaired ESCRT biogenesis with elevated plasma EV counts.* Six-plus independent studies consistently find elevated — not reduced — circulating EV counts in ME/CFS @spec:ev-signaling-mecfs. This does not refute ESCRT impairment; it suggests a dual-pathway model (Speculation @spec:ev-dual-pathway-count). The net plasma EV pool reflects the sum of multiple production and clearance processes. If ESCRT-dependent exosome production is reduced but ceramide-driven (ESCRT-independent) exosome production and complement-mediated microvesicle shedding are upregulated — and EV clearance is impaired — the net effect is elevated plasma EV counts despite impaired ESCRT biogenesis. The prediction that "ME/CFS patients should show reduced total circulating exosome concentration" is therefore withdrawn; the revised prediction is:

*Revised testable prediction.* ME/CFS patients should show: (1) reduced ESCRT-dependent exosome markers (TSG101, Alix, CD63) in EV isolates relative to total EV count compared to controls; (2) elevated ceramide content in circulating EVs and elevated plasma nSMase2 activity; (3) elevated endothelial-derived microvesicles (CD31+, CD144+) reflecting complement-mediated shedding; (4) ESCRT marker deficits proportional to disease duration and severity, while ceramide and complement-pathway EV markers are elevated independent of duration.

*Consequence of exosome insufficiency.* If ESCRT-dependent exosome production is impaired (even while total EV counts are elevated via alternative pathways), two consequences follow: (1) the normal intercellular signaling functions of ESCRT-sorted exosomes — tissue repair signaling, immune modulation, metabolic coordination — are impaired, and (2) therapeutic exosome delivery (Speculation @spec:engineered-exosome-bbb-mrna) faces an additional obstacle: even if engineered exosomes reach CNS targets, endogenous uptake and processing machinery may be dysfunctional in chronic disease.

*Severity-layering.* If ESCRT-dependent exosome biogenesis impairment worsens with disease duration (as viral protein accumulation, mitochondrial decline, and epigenetic locking progress), this would predict that late-stage, severe ME/CFS patients are poorer candidates for exosome-based therapies than early-stage patients — not because the therapy is ineffective but because the recipient's cellular machinery for processing exosome-delivered cargo is degraded. This is the "exosome resistance" hypothesis: therapeutic exosomes may be less effective in patients with the longest disease duration and highest severity, independent of BBB permeability or CNS target engagement.

*Limitations.* Certainty 0.20. No study has directly measured ESCRT protein expression, ceramide content, or nSMase2 activity in ME/CFS EVs. Viral interference with ESCRT is documented for EBV/HHV-6 in vitro but not in ME/CFS patients. The dual-pathway model is untested. The Kang et al. @Kang2026ExosomeHSP70Sleep finding that exosome-delivered mRNA is functional in CNS cells suggests that recipient machinery can be intact even if donor machinery is impaired, but this was in healthy (sleep-deprived) mice, not chronically ill animals.

*(Origin: literature-derived — updated with @rydland2026evcargo and prior EV replication data. Certainty reduced 0.25→0.20: core prediction of reduced EV concentration contradicted by consistent elevation across 6+ studies.)*
] <spec:exosome-biogenesis-impairment>

#limitation(title: [Evidence Quality Caveats for EV Research in ME/CFS])[
Several limitations apply to the entire ME/CFS EV literature, not just individual studies:

*All studies underpowered.* The total ME/CFS EV literature comprises fewer than 200 unique patients across all studies combined. Rydland 2026 (n=99 total) is the largest but still underpowered for FDR correction across 424 proteins — power analysis indicates n>200 per group would be needed for moderate effect sizes. No study has a pre-registered analysis plan or a priori power analysis. The large RepliME/JUSME/DecodeME cohorts (>1000 patients) have not included EV measurements.

*Single-lab dominance in EV miRNA.* The strongest cargo-based discrimination finding (AUC 0.87–0.93) comes exclusively from the Oltra group (University of Valencia), with possible cohort overlap between the 2020 and 2022 studies. No independent laboratory has replicated the EV miRNA panel. Single-lab biomarker findings have poor replication rates (>80% fail to replicate, Ioannidis 2005).

*No longitudinal EV data.* Every ME/CFS EV study is cross-sectional — a single blood draw at one timepoint. Without longitudinal data (multiple draws over weeks to months paired with symptom diaries, activity tracking, and PEM logs), EV measurements cannot distinguish trait from state and cannot serve as pharmacodynamic endpoints in treatment trials.

*Severity representation gap.* Severe and very severe ME/CFS patients are nearly absent from EV research. Bonilla 2022 (n=8 severe) is the only severity-stratified study. All other cohorts are clinic-recruited and likely predominantly mild-to-moderate. The sickest patients — those with the greatest clinical need — may have different EV profiles entirely.

*Potential publication bias.* Zero null/negative EV studies have been published in ME/CFS. With small sample sizes (n=15–99) and noisy assays as the norm, a 100% positive rate warrants caution. This pattern does not prove EV elevation is false — the replication across labs is genuine — but published effect sizes may overestimate the true difference (Winner's Curse).

*Pre-analytical variables.* EV measurement is sensitive to blood collection tube type, needle gauge, processing delay, centrifugation protocol, freeze-thaw cycles, and storage conditions. ME/CFS patients have documented platelet abnormalities and coagulation differences — differences in ex vivo platelet activation or processing delay could generate apparent EV elevation as a pre-analytical artifact rather than a disease signal. Rigorous ISEV-standardized protocols would be needed to rule this out.

*Rydland protein findings compatible with chance.* Of 424 detected EV proteins, 11 were nominally significant at p<0.05 uncorrected. By chance alone, we expect 21.2 false positives. The observed 11 hits are *fewer* than what random chance would predict. This does not prove the hits are noise, but it means the data are compatible with the null hypothesis that no true EV protein cargo difference exists between ME/CFS and controls. None of the 11 hits is expected to replicate in an independent cohort at equivalent nominal significance (11 × 0.05 = 0.55 expected by chance).

*EV elevation may be epiphenomenal.* EV count elevation may be a correlate of cellular stress — the metabolic exhaust of dysfunctional cells — rather than a driver of pathophysiology. All ME/CFS EV studies are cross-sectional; none has demonstrated that EV manipulation changes symptoms. In sepsis, where EV elevation is massive, therapeutic EV reduction has not improved outcomes. Under the null, EV count retains potential biomarker utility (like CRP or ESR) but has no more pathophysiological significance than a fever.

*Consequence:* The replicated EV count elevation is a real biological signal, but its clinical and mechanistic significance is currently unproven. EV research in ME/CFS needs larger, pre-registered, independently replicated, and longitudinally designed studies before EV cargo differences or EV counts can be considered biomarkers or therapeutic targets. The strongest next step is an adequately powered pre-registered study with rigorous pre-analytical controls.
] <lim:ev-evidence-quality-caveats>

#open-question(title: [What Is the Minimum Sample Size for FDR-Significant EV Proteomics in ME/CFS?])[
Rydland 2026 detected 424 EV proteins but found zero FDR-significant differences at n=49 ME/CFS and n=50 HC. The effect sizes of the 11 nominally-significant proteins are not reported in the paper but are obtainable from the authors. A power analysis using these effect sizes is urgently needed to determine: (a) whether effect sizes justify n<100 per group (meaning existing studies are underpowered but correctable with a modest multi-centre effort), or (b) whether effect sizes require n>200 per group (meaning resource allocation should prioritize a consortium approach). Without this analysis, the field cannot distinguish "no real protein cargo differences" from "real differences but underpowered study."

*Consequence:* Before allocating scarce ME/CFS research funding to further EV proteomics, a power analysis from the largest existing dataset would tell investigators whether the effect sizes justify the investment — or whether EV proteomics in ME/CFS requires sample sizes that dwarf any single centre's capacity.
] <oq:ev-proteomics-power-study>

#open-question(title: [Are Longitudinal EV Measurements Feasible and Informative in ME/CFS?])[
The single most important evidence gap in ME/CFS EV research is the absence of longitudinal data. Without serial EV measurements paired with symptom diaries, activity tracking, and PEM logs, we cannot answer: do EV counts change with symptom severity (state) or are they stable (trait)? Do EV counts rise before, during, or after PEM episodes? Can EV changes serve as a pharmacodynamic marker in treatment trials? A study of n=30 ME/CFS patients with weekly EV measurements over 12 weeks, paired with daily symptom diaries and actigraphy, would establish the basic temporal dynamics of EVs in ME/CFS.

*Consequence:* Until EV data are collected longitudinally in ME/CFS, EV measurement cannot serve as a trial endpoint or patient monitoring tool — the field lacks even basic knowledge of whether EV changes precede, accompany, or follow symptom changes.
] <oq:ev-longitudinal-studies>

