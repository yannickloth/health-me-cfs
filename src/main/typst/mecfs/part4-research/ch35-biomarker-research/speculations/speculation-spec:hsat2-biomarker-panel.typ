#import "../../../shared/environments.typ": *

#speculation(title: [Plasma Exosomal HSAT2 + HERV-K Panel as a Patient Stratification Biomarker])[


*(Certainty: 0.65 for technical feasibility; 0.40 for clinical utility — the measurement is straightforward, the clinical relevance remains to be established.)*

HSAT2 and HERV-K envelope RNA can be measured in plasma extracellular vesicles by qRT-PCR or ddPCR following size-exclusion chromatography EV isolation. Evdokimova et al.\ demonstrated this in Ewing sarcoma plasma at cohort scale (n=49). The protocol is transferable to ME/CFS research cohorts using existing biobanked plasma in principle, but adaptation requires several critical steps not yet published.

*Technical precedent — TRAP-ddPCR:* Kishikawa et al.\ established that circulating HSATII RNA is measurable in human serum using TRAP-ddPCR (Tandem Repeat Amplification by nuclease Protection followed by droplet digital PCR) This method overcomes the heterogeneous amplicon problem inherent to repetitive sequence PCR by collecting homogeneous protected core fragments before quantification. In pancreatic cancer (n=20+20 training, n=10+10+10 validation), AUC was 0.91 (training) and 0.90 (validation); 5/7 early-stage cases were detected with normal CA19-9. Median HSATII in serum: 14.75 versus 3.17 copies/µL (cancer vs control). This is currently the only published validated method for circulating HSATII RNA quantification. The Evdokimova preprint extends this to plasma EV fractions in a cancer context; the TRAP-ddPCR method in ME/CFS plasma remains to be adapted.

*ddPCR vs qRT-PCR for low-abundance targets:* For EV-packaged satellite RNA at non-cancer concentrations (expected far below the 14.75 copies/µL seen in pancreatic cancer), ddPCR is the necessary platform: it provides absolute quantification without standard curves, has lower coefficient of variation than qRT-PCR, and can detect targets at fewer than 1 copy/µL where qRT-PCR gives variable signal. TRAP-ddPCR is thus the starting platform for any ME/CFS HSAT2 biomarker study.

*EV isolation approach:* Size exclusion chromatography (CL-6B Sepharose, 20 mL bed volume) outperforms differential ultracentrifugation for EV purity. For HSAT2 RNA (a long repeat transcript, not a small ncRNA), large EV fractions (greater than 200 nm microvesicles) may be more relevant than small EVs (smaller than 200 nm exosomes), but this size-dependence has not been characterized for HSAT2 cargo.

*Pre-analytical variables (critical for multi-site standardization):* Hemolysis is the dominant confounder for EV RNA — erythrocyte miRNAs contaminate the EV fraction and hemolysis degrades EV integrity; hemolysis must be assessed quantitatively (not visually) as an exclusion criterion. Two-step centrifugation (300×g then 2500×g) before snap-freezing is standard to remove platelet-derived EVs. Up to three freeze-thaw cycles have negligible impact; more than three compromise RNA yield; single-use aliquots at −80°C are the standard. Samples must be processed within 2–4 h of collection for EV-RNA integrity.

A two-marker panel (HSAT2 + HERV-K) with HERV-W as a negative-specificity control could:

    - Identify a "HSAT2-high" subgroup (~hypothetical 30% of patients) with an active exosomal immunosuppressive loop
    - Distinguish this subgroup from HSAT2-low patients who may have alternative immunopathology
    - Correlate with MDSC frequency and NK cytotoxicity as functional validation
    - Serve as a pharmacodynamic endpoint for NRTI:nrti-hsat2 or methyl-donor:methyl-donor-hsat2 interventions

*Falsifiable prediction:* A two-marker panel (HSAT2 + HERV-K env) measured by TRAP-ddPCR in plasma EV fractions will distinguish a subgroup of ME/CFS patients from matched healthy controls with AUROC > 0.75 in n ≥ 100 cohort. If no subgroup is detectable above control levels, the exosomal loop mechanism is not operative in ME/CFS at clinically relevant concentrations.

*Limitations:* No published protocol exists for EV-packaged HSAT2 RNA from human plasma in any non-cancer clinical population; adaptation from the Kishikawa serum method is required. All prediction values (AUC estimates, effect sizes, subgroup prevalences) are extrapolated from cancer; effect sizes in chronic post-viral settings may be far smaller — potentially below the detection limit of current methods. Standardization of EV isolation and RNA quantification varies across laboratories; multi-site studies require harmonized protocols including hemolysis grading, two-step centrifugation, aliquoting schema, and TRAP-ddPCR primer sets. Not replicated in any chronic disease context. The Evdokimova preprint EV-HSAT2 finding in Ewing sarcoma plasma remains unpublished in a peer-reviewed journal.
] <spec:hsat2-biomarker-panel>
