#import "../../../../shared/environments.typ": *

=== The mtDNA--cGAS-STING Inflammaging Pathway
<sec:mtdna-cgas-sting>

A critical molecular bridge between the mitochondrial dysfunction documented in Chapter @ch:energy-metabolism and the immune activation described above is the cGAS-STING pathway. Kim et al.\ (2023) review the mechanisms by which damaged mitochondrial DNA escapes into the cytosol and activates innate immune signaling @Kim2023cGASSTING.

The pathway operates through VDAC oligomerization: when mitochondria are stressed (by ROS, calcium overload, or membrane potential loss), voltage-dependent anion channels (VDAC1) oligomerise to form pores in the outer mitochondrial membrane large enough for mtDNA fragments to escape. Once in the cytosol, mtDNA binds cyclic GMP-AMP synthase (cGAS), which produces the second messenger 2'3'-cGAMP. cGAMP activates stimulator of interferon genes (STING), triggering type I interferon production and NF-$kappa$B-dependent pro-inflammatory gene expression @Kim2023cGASSTING.

Crucially, oxidized mtDNA (a product of mitochondrial ROS) also activates the NLRP3 inflammasome, producing IL-1$beta$ and IL-18 @Kim2023cGASSTING. VDAC inhibition (by DIDS or VBIT-4) mitigates both pathways in preclinical models, suggesting a druggable bottleneck.

In the ME/CFS context, this pathway provides a mechanistic link from sympathetic overdrive (documented in Chapter @ch:cardiovascular) to sustained innate immune activation:

+ Chronic sympathetic tone $arrow.r$ NADPH oxidase activation $arrow.r$ elevated mitochondrial ROS .
+ ROS damage $arrow.r$ mtDNA mutations and strand breaks $arrow.r$ VDAC oligomerization $arrow.r$ mtDNA escape.
+ Cytosolic mtDNA $arrow.r$ cGAS-STING $arrow.r$ type I IFN + NF-$kappa$B $arrow.r$ sustained inflammaging.
+ Oxidised mtDNA $arrow.r$ NLRP3 $arrow.r$ IL-1$beta$ $arrow.r$ sickness behavior, fatigue.

This chain connects the autonomic aging phenotype (Section @sec:ans-aging-phenotype of Chapter @ch:cardiovascular) to the innate immune findings documented earlier in this chapter.

#speculation(title: [The mtDNA--cGAS-STING Loop as a Chronicity Mechanism in ME/CFS])[
*Certainty: 0.40.* If mitochondrial damage in ME/CFS continuously releases mtDNA fragments that activate cGAS-STING, this creates a self-reinforcing loop: inflammation $arrow.r$ mitochondrial damage $arrow.r$ mtDNA release $arrow.r$ more inflammation. The loop would maintain chronic immune activation even after the initial trigger (viral infection, autonomic crisis) resolves. Circulating cell-free mtDNA has been measured in Long COVID (Matits et al.\ 2026, Section @sec:cfmtdna-mitophagy of Chapter @ch:energy-metabolism) but not alongside cGAS-STING activation markers in the same ME/CFS cohort.

*Testable predictions:* (a) Circulating mtDNA levels should correlate with STING phosphorylation and IRF3 activation in ME/CFS PBMCs. (b) Improvements in mitochondrial quality control (via mitophagy enhancement or reduced ROS) should decrease interferon-stimulated gene (ISG) expression. (c) STING inhibitors (H-151, currently preclinical) should reduce both inflammatory markers and fatigue severity in ME/CFS patients with elevated cGAS-STING signaling.

*Limitation:* The cGAS-STING pathway is well-established in preclinical models @Kim2023cGASSTING but has not been directly measured in ME/CFS patients. The connection from sympathetic overdrive to mtDNA release is mechanistically plausible but builds on the theoretical ANS-aging framework  rather than direct experimental data. Not yet replicated in ME/CFS.

*Note — cross-disease reinforcement:* Chelette et al. (2025, bioRxiv) directly demonstrated that cGAS-STING activation drives fatigue-like behavior in a murine cancer model — providing the first mechanistic link between cGAS-STING-mediated inflammation and the fatigue phenotype outside of classical immune challenge models @Chelette2025cGASSTINGFatigue. This supports the plausibility of a cGAS-STING-fatigue connection in ME/CFS but the cancer context and preprint status limit the strength of inference (certainty 0.40 for the general principle). Not yet independently replicated.
] <spec:mtdna-cgas-sting-loop>

