# Search Log: The Serotonergic Bottleneck

**Date:** 2026-07-26
**Topic slug:** serotonergic-bottleneck
**Search type:** In-paper evidence synthesis (no new PubMed search — topic re-derives from already-integrated content)

## Methodology

No new literature search was conducted. The topic's mandate is: "doesn't need new literature — it re-derives from what's already integrated." Instead, a comprehensive grep of the paper's existing content identified all already-integrated serotonin-related evidence across 5 sub-domains.

## Evidence Inventory

### 1. Peripheral Serotonin Depletion (integrated 2026-06-26)

**Bib keys:** `audhya2012serotonin`, `szeitz2018serotonin`, `dejong2010serotonin`, `chen2012polyphenolido`, `chen2012naturalido`, `jung2010curcuminido`, `meyer2015cfs`, `bull2009sertfatigue`, `wong2023serotonin`, `thorpe2026serotonin`, `bai2024serotonin`, `taenzer2023urine`, `mathe2025noserotonin`, `anderson2024serotonin`, `raij2024serotonin`, `che2025innate`, `wirth2026neurotransmitter`, `gunning2016pots`, `raziq2021serotonin`, `mar2014ssripots`, `locasso2024serotonin`, `paredes2019serotonin`

**In-paper synthesis exists:** `hyp:peripheral-serotonin-multi-compartment-convergence` (ch15, cert 0.50), `spec:cross-disease-serotonin-convergence` (ch14d, cert 0.50), `oq:peripheral-serotonin-null-hypothesis` (ch15). Core mechanisms: IDO-mediated tryptophan diversion, enterochromaffin cell damage, platelet storage defects. Cross-disease: ME/CFS, Long COVID, POTS, fibromyalgia.

### 2. VMAT2 Striatal Loss (integrated, dopamine-predominant)

**Bib keys:** `Liu2026VMAT2longcovid`, `Braga2025astrogliosis`, `Visser2025TSPOfatigue`, `VanElzakker2024PASCneuro`, `Rudroff2024basalganglia`, `Sauve2023GnRHlongCOVID`, `Braga2023neuroCOVID`, `Yang2024dopaminesenescence`, `Eidhof2024dopaminecomment`, `Bantle2019alphavirus`, `Chen2020ACE2brain`, `Ferrero2017CNSautopsy`, `Capuron2012dopamineinterferon`

**In-paper synthesis exists:** VMAT2 content extensive in ch09 (neurotransmitter abnormalities), ch09 summary model (dopamine-quinone-NLRP3 loop), ch14g (TRPM3 — droxidopa bypasses VMAT2/ATP requirements), ch30 sec-10 (side-effect diagnostic probes — amphetamine crash = VMAT2 terminal compromise). Key gap: VMAT2 transports serotonin as well as dopamine, but paper discusses it almost exclusively as a dopamine transporter. PTPRN2 hypomethylation link notes it regulates vesicles for "NE, DA, and serotonin" — existing bridge point.

### 3. IDO2 Kynurenine Shunting (extensively integrated)

**Bib keys:** `Cervenka2017`, `Schwarcz2012`, `Chojnacki2026`, `Yan2026`, `Zhang2026MitochondriaFatigue` (via `kynurenine-excitotoxicity` stream), plus `che2025innate`, `wong2023serotonin` (from peripheral-serotonin stream), plus `Phair2019` (IDO metabolic trap, in modeling.bib)

**In-paper synthesis exists:** Extensive — IDO metabolic trap (Phair 2019), formal ODE model in ch51 (tryptophan-kynurenine branching equations, BH4 competition), cascade entry in ch30 sec-02 (mitochondrial hypotheses — kynurenine pathway as metabolic trap), medication reference compendium (tryptophan diagnostic probe). Key gap: serotonin-specific arm of kynurenine diversion is discussed but not connected to VMAT2 or GPCR-AAB serotonin autoantibodies.

### 4. Tryptophan → AhR Gut-Microbiome (thin)

**In-paper content:** Mentioned in ch11 (gut microbiome — tryptophan→AhR in IDO section), ch20 (universal mechanisms — "microbiome-tryptophan axis dysregulation"), ch52 (gut-brain-immune axis modeling), appendix H (Wang 2017 — AhR ligand FICZ triggers mast cell ER stress; Chojnacki 2026 — gut-kynurenine axis via probiotics; Yan 2026 — Dendrobium officinale upregulates TDO2/KMO/KAT1). Butyrate→EC cell→vagal pathway in ch30 sec-06 (autonomic hypotheses — vagal dysfunction cascade). Key gap: No dedicated AhR/tryptophan section exists. The tryptophan→AhR→immune axis is mentioned in passing but not developed as a mechanism.

### 5. GPCR Autoantibodies to Serotonin Receptors (limited)

**In-paper content:** Anti-5-HT autoantibody entry in ch16 (comparative nosology — cert 0.40, linked to LPS/IgA gut permeability), ch18 (symptom-producing mechanisms — "Gut-Peripheral Serotonin Dysregulation and IBS Comorbidity"), appendix H (Loebel 2016 — original GPCR AAb discovery in ME/CFS; Bynke 2020 — CSF detection; Sotzny 2022 — monocyte reprogramming; Stein 2025 — immunoadsorption). Key gap: GPCR-AAB content covers beta-adrenergic, M3, alpha1, AT1, ETAR, etc. — but anti-5-HT receptor autoantibodies are mentioned only briefly. No dedicated subsection on serotonin receptor autoantibodies.

### 6. Lee 2024 — Central Serotonin Hyperactivity

**In-paper content:** Appendix H entry describes Lee et al. (2024) — "Central 5-HTergic hyperactivity induces ME/CFS-like pathophysiology" — high-dose SSRI in mice produced severe fatigue, exercise intolerance, HPA axis dysfunction via 5-HT1A desensitization. Described as "the apparent paradox of central serotonin hyperactivity alongside peripheral serotonin depletion suggests compartmentalized dysregulation." Key gap: This finding exists but is not connected to the peripheral serotonin framework, VMAT2 model, or GPCR-AAB serotonin receptor autoantibodies.

## Synthesis Gap Analysis

| Gap | Description | Priority |
|-----|-------------|----------|
| Cross-compartment framework | No single environment unifies peripheral depletion + central dysregulation as a connected multi-compartment failure | HIGH |
| VMAT2-serotonin link | VMAT2 transports serotonin; paper treats it as dopamine-only. PTPRN2 link exists as bridge but undeveloped | HIGH |
| GPCR-AAB serotonin receptors | Anti-5-HT autoantibodies mentioned but not connected to kynurenine diversion or central hyperactivity | MEDIUM |
| AhR-tryptophan | Mentioned in passing; no dedicated mechanism development | MEDIUM |
| Tired-but-wired via serotonin | Existing wired-but-tired explanations use NE/dopamine and GABA/glutamate pathways. Serotonin compartment disconnect offers a novel explanation | HIGH |

## Inclusion Status

This topic does not require new bib additions. All literature already exists in the paper's bib files. The synthesis draws from existing integrated evidence across: immune.bib (peripheral serotonin), long-covid.bib + viral-infection.bib (VMAT2), neuroinflammation.bib (kynurenine), autoimmunity.bib (GPCR-AAB), gut-microbiome.bib (AhR/tryptophan), modeling.bib (IDO metabolic trap).
