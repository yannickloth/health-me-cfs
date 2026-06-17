#import "../../../../../shared/environments.typ": *

#hypothesis(title: [HSAT2 Activation Pathways in ME/CFS])[
*Certainty: 0.40.*

ME/CFS may feature HSAT2 activation via multiple converging pathways: (1) viral infection → HSF1 activation → pericentromeric HSAT2 transcription; (2) oxidative stress/senescence → CTCF loss → loss of pericentromeric silencing; (3) global DNA hypomethylation → HSAT2 promoter demethylation. A newly identified mechanism (4) is centromeric DNA amplification triggered by herpesvirus proteins: Lahaye, Lomonte, Manel et al. (Cell 2025) demonstrated that herpesvirus proteins (HSV-1 ICP0, HCMV IE1/IE2, KSHV K8) disrupt centromeres, triggering centromeric DNA amplification — a pathway termed VICAR (viral-induced centromeric DNA amplification and recognition) @Lahaye2025centromere. This centromere rearrangement is proposed by Patrick Lomonte (pers. comm. May 2026) as the proximate trigger for HSAT2 transcription in infected cells. The 2019 finding that HCMV IE1 and IE2 proteins are required for HSAT2 transcription @Nogalski2019HSATII is now interpretable as: IE1/IE2 are required for centromere rearrangement, which then triggers HSAT2 — not direct HSAT2 transactivation.

Once activated, HSAT2 RNA may be packaged into extracellular vesicles and taken up by myeloid cells, driving immune exhaustion @Evdokimova2019HSAT2exosome. This mechanism links viral triggers, epigenetic dysregulation, and chronic immune dysfunction in a unified pathway.

Geneviève Fourel (pers. comm. May 2026) has clarified the causal framework for ME/CFS: in this model, loss of DNMT3B activity at HSAT2 is a *consequence* of HSAT2 transcriptional activation, not the initial cause. Viral infection → centromere rearrangement → HSAT2 transcription → loss-meCpG at the HSAT2 locus → propagation to other cells. This reverses the earlier framing (present in the first version of this hypothesis) where DNMT3B redistribution was treated as the upstream driver.

*Note on methylation backup mechanisms.* Methylation at CpG sites contributes to ProB function at ProB repeat sequences, but when these sequences are not methylated, other mechanisms can, to some extent, take over the silencing function. Geneviève Fourel (pers. comm. May 2026) notes that this makes Prediction 3 of the compartment bistability model partially false under certain conditions — methylation loss does not guarantee compartment collapse because backup silencing mechanisms provide partial compensation. The overall four predictions of the ProA/ProB framework are already verified (per the preprint), but Prediction 3 requires this caveat.

*Testable predictions:*

    - ME/CFS patient cells should show elevated HSAT2 RNA levels vs healthy controls (qPCR, RNA-seq)
    - ME/CFS patients should demonstrate HSF1 activation and pericentromeric hypomethylation vs controls (ChIP-seq, bisulfite sequencing)
    - ME/CFS patients should show CTCF loss at pericentromeric regions vs controls (ChIP-seq)
    - HSAT2 RNA levels should correlate with senescence markers (p16, p21, β-galactosidase) in ME/CFS cells
    - Post-viral ME/CFS patients should show higher HSAT2 levels than non-post-viral patients
    - Centromeric alpha-satellite DNA amplification should be detectable in cells from herpesvirus-triggered ME/CFS patients (FISH, qPCR for alpha-SAT copy number)

*Limitations.*
This hypothesis has certainty 0.40. No direct ME/CFS evidence exists for HSAT2 activation; the mechanism is inferred from cancer studies @Evdokimova2019HSAT2exosome, senescence models @Mullani2021senescenceRNA, viral HSF1 activation @Vourc_h2022HSF1SatIII, and the new centromere amplification mechanism @Lahaye2025centromere. HSAT2 may not be elevated in ME/CFS, or elevation may be restricted to specific subtypes. The exosomal transmission mechanism remains speculative in ME/CFS context. External validation of the satellite hypomethylation premise exists in the cancer literature: Bonnet, Hulo, Fourel et al.\ (Supplementary Data Figure 17) show GSATII (HSAT2) methylation is lost in liver cancer @BonnetFourel2026ProAB — confirming that satellite repeat methylation loss is a measurable, disease-associated event, though this does not directly demonstrate it in ME/CFS.

*Treatment implications.*
If HSAT2 activation contributes to ME/CFS pathology, therapeutic strategies could include: (1) reverse transcriptase inhibitors (AZT, lamivudine) to reduce HSAT2 accumulation @Evdokimova2019HSAT2exosome; (2) HSF1 inhibitors to block viral-induced HSAT2 activation; (3) epigenetic therapies to restore pericentromeric silencing (DNA methyltransferase activators, histone methyltransferase enhancers).
] <hyp:hsat2-activation-mecfs>
