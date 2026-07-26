#import "../../../../shared/environments.typ": *

=== Therapeutic Implications: Senolytics


If senescent endothelial cells are causal rather than epiphenomenal, senolytic drugs — agents that selectively eliminate senescent cells — represent a rational therapeutic target. The combination of *dasatinib* (a tyrosine kinase inhibitor) and *quercetin* (a flavonoid) has shown senolytic efficacy in animal models and early human trials for other conditions (idiopathic pulmonary fibrosis, diabetic kidney disease). Neither has been tested in ME/CFS or Long COVID at the time of writing.

The mechanistic prediction is that reducing the senescent cell burden would:
1. Attenuate the SASP-driven endothelial dysfunction and procoagulant state
2. Relieve the SASP-mediated suppression of NK and T cell function, enabling immune system recovery
3. Reduce chronic low-grade inflammation and its metabolic cost

This framework also explains why previous immunomodulatory trials targeting cytokines (anakinra) or B cells (rituximab) produced limited benefit: they addressed downstream SASP products without eliminating the senescent cell source.

#speculation(title: [Senescent Endothelial Cell Burden as a Central Maintaining Mechanism])[
Virus-induced endothelial senescence and the consequent SASP create a self-perpetuating pathological state that maintains ME/CFS independently of the initial viral trigger. NK cell and T cell dysfunction in ME/CFS prevent senescent cell clearance, establishing a bidirectional amplifying loop between immune dysfunction and endothelial SASP .

The SASP is not a generic inflammatory output — mTORC1 is its master regulator. Laberge et al.\ demonstrated in a landmark mechanistic study that mTORC1 drives SASP by promoting translation of IL-1$alpha$, which in turn activates NF-$kappa$B to transcribe the full SASP program (IL-6, IL-8, TNF-$alpha$, MMP-3, MMP-9) @Laberge2015SASP. Rapamycin selectively suppresses the SASP without affecting the underlying cell cycle arrest @Laberge2015SASP, and Rolt et al.\ confirmed dose-dependent IL-6 suppression in senescent human cells by rapamycin without altering senescence markers @Rolt2019IL6. This places mTORC1 at the top of the SASP regulatory hierarchy: if mTORC1 is chronically hyperactivated in ME/CFS (Section @sec:mTOR-AMPK-autophagy-balance in Chapter @ch:energy-metabolism), then the SASP becomes a mTORC1-driven output rather than an autonomous property of senescent cells. The therapeutic implication is that mTORC1 inhibition (rapamycin, metformin) could attenuate SASP-driven inflammation without requiring senescent cell elimination — a senomorphic rather than senolytic strategy.

_Certainty: 0.40._ The mechanistic logic is compelling and each component (NK dysfunction, T cell exhaustion, endothelial SASP biology) is individually well-supported. The mTORC1$arrow.r$IL-1$alpha$$arrow.r$NF-$kappa$B$arrow.r$SASP cascade is established in top-tier mechanistic studies @Laberge2015SASP but has not been directly measured in ME/CFS endothelial tissue. The central limitation is that endothelial senescence has not yet been directly measured in ME/CFS patient tissue (biopsy or imaging). The framework is currently theory-level, not yet empirically established in this specific disease context.

*Falsifiable predictions:*
    + Skeletal muscle or skin punch biopsies from ME/CFS patients should show elevated p21, p16INK4a, and SA-$beta$-galactosidase staining in capillary endothelial cells compared to healthy controls
    + Plasma SASP markers (GDF-15, PAI-1, syndecan-1 as glycocalyx shedding index) should be elevated and correlate with disease severity
    + Senolytic intervention (dasatinib + quercetin, or navitoclax) should reduce endothelial dysfunction markers (FMD, EndoPAT), SASP cytokines, and ME/CFS symptom burden in a prospective trial
    + NK cell cytotoxicity restoration (via LDN, TRPM3 modulators, or low-dose IL-2) should be associated with reduced circulating SASP markers over time
    + *mTORC1-driven SASP specificity ($arrow.r$ new from mTOR mechanism):* Rapamycin (senomorphic, no cell elimination) should reduce plasma SASP markers (IL-6, IL-8, MMP-3) without reducing endothelial senescence markers (p16, SA-$beta$-gal). Dasatinib+quercetin (senolytic, cell elimination) should reduce both. The mTORC1-driven SASP model is falsified if rapamycin fails to reduce SASP markers despite confirmed target engagement (reduced pS6K in PBMCs).

*Limitations:* Review/theory paper — endothelial senescence not yet directly measured in ME/CFS tissue; senolytic trials in ME/CFS are pending; the framework does not resolve whether immune dysfunction or endothelial senescence is the primary initiating event.
] <hyp:endothelial-senescence-loop>

