#import "../../../../shared/environments.typ": *

=== Anti-inflammatory Cytokines
<sec:anti-inflammatory>

==== Interleukin-10 (IL-10)

IL-10 is a potent immunosuppressive cytokine with variable findings in ME/CFS. Levels may be elevated (potentially reflecting an attempt to control inflammation) or reduced (which would permit inflammation to continue). IL-10 is important for resolving immune responses and is produced by regulatory T cells and other cell types.

==== Transforming Growth Factor-Beta (TGF-$beta$)
<sec:tgf-beta>

TGF-$beta$ is the most consistently elevated cytokine in ME/CFS. A systematic review of 38 papers and 77 cytokines found TGF-$beta$ elevated in 5 of 8 studies that measured it (63%)---the highest consistency of any cytokine @Blundell2015cytokines. The Montoya et al.\ Stanford study (192 patients, 392 controls, 51 cytokines) confirmed this elevation ($p = 0.0052$), with TGF-$beta$ and resistin being the only two analytes consistently different at the population level .

TGF-$beta$ has immunosuppressive and tissue remodeling functions. This elevation may represent an attempt to control inflammation, though chronic elevation can promote fibrosis. TGF-$beta$ is also important for regulatory T cell development. Critically, TGF-$beta$ is a potent suppressor of NK cell cytotoxicity through multiple established mechanisms: direct transcriptional repression of perforin (approximately 57% reduction) and granzyme B (approximately 38% reduction) via Smad pathway signaling, inhibition of mTOR (reducing NK cell metabolic capacity), and downregulation of activating receptors NKG2D and NKp30.

#limitation(title: [TGF-$beta$ Elevation: Centrifugation Artifact Concern])[
Roerink et al.\ (2018) raised a serious methodological challenge: TGF-$beta$1 measurements in ME/CFS may be confounded by platelet contamination during sample processing @Roerink2018TGFartifact. Platelets contain 40--100 times more TGF-$beta$1 than other cell types. Lower centrifuge g-force produces higher platelet activation (p-selectin correlated $r = 0.79$ with TGF-$beta$1), which artificially inflates measured concentrations. After controlling for platelet contamination in their cohort, no authentic TGF-$beta$1 elevation distinguished ME/CFS patients from controls. This methodological concern applies to all prior studies that did not standardize centrifugation protocols or measure platelet activation markers. The Montoya 2017 study used standardized multiplex plasma assays and remains the strongest evidence that TGF-$beta$ elevation is real, but even this single-site study cannot fully exclude centrifugation effects.
]

#speculation(title: [TGF-$beta$ as Unifying Explanation for the Two Most Replicated Immune Findings])[

*Certainty: 0.40.* Mechanistically well-supported by cancer immunology literature; not yet tested in ME/CFS.

The two most consistently replicated immune findings in ME/CFS are (1) elevated TGF-$beta$ and (2) reduced NK cell cytotoxicity. These are routinely treated as independent observations. We propose they may represent a single finding and its downstream consequence: chronic TGF-$beta$ elevation suppresses NK cell function.

*Mechanistic basis (established in cancer immunology):*
    - TGF-$beta$ directly represses perforin and granzyme B transcription via Smad/ATF1
    - TGF-$beta$ inhibits mTOR in NK cells, reducing metabolic capacity for sustained killing
    - TGF-$beta$ downregulates NKG2D and NKp30 activation receptors
    - Prolonged TGF-$beta$ exposure may cause persistent NK dysfunction through epigenetic remodeling of IRF, T-bet, and EOMES binding sites---meaning NK cells remain dysfunctional even after TGF-$beta$ normalizes

*Key evidence gap:* No published ME/CFS study has measured both TGF-$beta$ levels and NK cell cytotoxicity in the same cohort. This co-measurement study is the critical missing experiment.

*Implications if confirmed:*
    - Reduces the number of independent immune abnormalities in ME/CFS from two to one
    - Shifts therapeutic focus from NK cells to whatever drives TGF-$beta$ elevation
    - Explains why interventions targeting NK cells directly (BioBran, isoprinosine, interferon-$alpha$) have failed---they address the consequence, not the cause
    - Connects to the Roerink artifact concern: if TGF-$beta$ elevation is partly artifactual, the NK finding may be even more independent than assumed

*Falsification criteria:*
    - If TGF-$beta$ levels do not correlate with NK cytotoxicity within ME/CFS patients in a properly controlled co-measurement study
    - If in vitro TGF-$beta$ neutralization does not rescue NK cytotoxicity in ME/CFS patient samples
    - If the TGF-$beta$ elevation is entirely explained by centrifugation artifact (Roerink concern), eliminating the upstream driver
] <spec:tgf-beta-rosetta>

#speculation(title: [The TGF-$beta$ Lock: Epigenetic Hit-and-Run])[

*Certainty: 0.30.* Extends the TGF-$beta$ unifying hypothesis with emerging epigenetic evidence. The epigenetic locking mechanism is from a single 2026 preprint (not yet peer-reviewed); application to ME/CFS is entirely speculative.

The TGF-$beta$ Rosetta Stone speculation (Speculation @spec:tgf-beta-rosetta) assumes _ongoing_ TGF-$beta$ elevation suppresses NK cells. But the Roerink artifact concern and Hornig duration-dependent findings raise the possibility that TGF-$beta$ elevation is _transient_---present during early disease and normalising in chronic ME/CFS. If so, how does NK dysfunction persist?

A 2026 preprint demonstrated that prolonged TGF-$beta$ exposure causes persistent epigenetic remodeling of IRF, T-bet, and EOMES binding sites in NK cells---and critically, the dysfunction persists _even after TGF-$beta$ is withdrawn_. We propose a "hit-and-run" mechanism:

    + Initial infection triggers transient TGF-$beta$ elevation (normal immune regulation)
    + In susceptible individuals, TGF-$beta$ exposure exceeds a duration threshold sufficient for epigenetic locking
    + NK cell chromatin is permanently remodeled: perforin/granzyme loci become inaccessible
    + TGF-$beta$ normalizes (explaining null measurements in chronic patients)
    + NK cells remain dysfunctional indefinitely (explaining persistent cytotoxicity deficit)
    + Dysfunctional NK cells cannot clear herpesvirus reactivations
    + Chronic low-level viral stimulation may trigger further TGF-$beta$ from regulatory T cells, locking _new_ NK cells as they mature from progenitors

This model elegantly reconciles: (a) consistent NK dysfunction in chronic ME/CFS, (b) inconsistent TGF-$beta$ elevation (present early, absent late), (c) the Roerink artifact concern (even if current measurements are artifactual, past elevation was real), and (d) the failure of interventions targeting NK cells directly (the epigenetic lock cannot be reversed by providing BioBran or interferon).

*Testable prediction:* Epigenetic profiling (ATAC-seq, ChIP-seq for H3K27me3) of NK cells from ME/CFS patients should show persistent chromatin modifications at EOMES/T-bet/IRF loci characteristic of TGF-$beta$ exposure, even in patients with _normal_ current TGF-$beta$ levels. If this chromatin signature is absent, the hit-and-run model is falsified.
] <spec:tgf-beta-lock>

==== Balance Between Pro- and Anti-inflammatory Signals

The key issue in ME/CFS may not be absolute cytokine levels but rather the balance between pro- and anti-inflammatory signals. Patients may exhibit imbalanced pro-/anti-inflammatory ratios, inappropriate cytokine responses to stimuli, and failure to resolve inflammation properly. This results in chronic low-grade immune activation.

