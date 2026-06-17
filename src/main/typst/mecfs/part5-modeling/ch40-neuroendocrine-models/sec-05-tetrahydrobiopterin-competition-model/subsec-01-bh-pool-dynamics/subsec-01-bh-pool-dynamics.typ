#import "../../../../shared/environments.typ": *

=== BH₄ Pool Dynamics

BH₄ is synthesized de novo from GTP by GTP cyclohydrolase I (GTPCH) and regenerated from BH₂ by dihydrobiopterin reductase (DHFR). BH₄ is consumed (oxidized to BH₂) during each catalytic cycle of TPH, TH, and NOS:

$
frac(d [upright("BH")_4], d t) = v_(upright("GTPCH")) + v_(upright("DHFR")) dot.op frac([upright("BH")_2], K_(upright("DHFR")) + [upright("BH")_2]) - J_(upright("TPH")) - J_(upright("TH")) - J_(upright("NOS,total")) - delta_(upright("BH")_4) [upright("BH")_4]
$ <eq:bh4-dynamics>

where $J_(upright("NOS,total")) = J_(upright("eNOS")) + J_(upright("nNOS")) + J_(upright("iNOS"))$, and iNOS activity is upregulated by pro-inflammatory cytokines (IFN-$gamma$, TNF-$alpha$). The conservation law $[upright("BH")_4] + [upright("BH")_2] = upright("BH")_(upright("total"))$ (neglecting de novo synthesis on fast timescales) means that increased iNOS activity during inflammation simultaneously depletes the BH₄ pool available to TPH and TH.

*This three-way competition produces a result that can only be derived from the mathematical model*: inflammation-driven iNOS upregulation causes coordinated deficits in serotonin (via TPH), dopamine/norepinephrine (via TH), _and_ endothelial NO (via eNOS uncoupling), through a single shared bottleneck. Verbal reasoning identifies each deficit independently; the model reveals that they are mechanistically linked by BH₄ competition and therefore cannot be corrected independently without addressing the cofactor shortage. The model predicts that:

+ *BH₄ supplementation* (sapropterin) should simultaneously improve mood (serotonin), cognitive function (dopamine), autonomic regulation (norepinephrine), and vascular function (endothelial NO)---a prediction testable by concurrent measurement of all four downstream products
+ *Anti-inflammatory therapy* that reduces iNOS expression should improve monoamine and NO levels even without direct neurotransmitter intervention, because it releases BH₄ for TPH and TH
+ *Selective serotonin reuptake inhibitors* (SSRIs) are predicted to have reduced efficacy in ME/CFS when BH₄ is rate-limiting, because they increase synaptic serotonin retention but do not address the synthesis bottleneck---consistent with the generally disappointing results of antidepressants in ME/CFS
+ The severity of concurrent serotonin, catecholamine, and NO deficits should *correlate with inflammatory burden* (IFN-$gamma$ levels), providing a testable biomarker signature: patients with high IFN-$gamma$ and low BH₄:BH₂ ratio should show the most severe multi-domain neurovascular dysfunction

BH₄ dysregulation has been documented in ME/CFS: Gottschalk et al. reported elevated serum BH₄ levels in ME/CFS patients with orthostatic intolerance @Gottschalk2023, which may reflect compensatory upregulation of GTPCH in response to increased NOS demand, or tissue-specific depletion masked by elevated circulating levels. The model predicts that serum BH₄ alone is insufficient to characterize the competition---the BH₄:BH₂ ratio and tissue-specific BH₄ availability are the relevant variables, and these may diverge from circulating levels when oxidative stress accelerates BH₄ $->$ BH₂ conversion in target tissues.

