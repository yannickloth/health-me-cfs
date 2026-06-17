#import "../../../../../shared/environments.typ": *

#open-question(title: [Should Butyrate-Colonocyte Energy Competition Be Modeled?])[
Existing ME/CFS energy models (e.g., glucose competition, lactate shuttling) focus on systemic metabolic competition between gut bacteria and host cells. However, butyrate-colonocyte energy metabolism represents a specialised niche: butyrate is a preferred fuel for colonocytes, but excessive butyrate production by dysbiotic microbes could theoretically outcompete host colonocytes for this substrate, particularly under energy-depleted conditions.

This raises a question about whether butyrate-colonocyte energy competition should be incorporated into formal energy-equation models for ME/CFS:

    - *Substrate competition variable:* Should a parameter be added representing colonocyte glucose demand versus butyrate availability?
    - *Threshold effects:* Does excessive bacterial butyrate production shift colonocyte energy metabolism toward anaerobic pathways, creating a bottleneck for systemic energy export?
    - *Model complexity:* Adding this competition may significantly increase model complexity; does the added explanatory value justify the complexity?

Key research needs:

    - Quantitative data on colonocyte butyrate utilisation rates under different microbiome conditions.
    - Measurement of intra-colonic butyrate gradients to assess competition dynamics.
    - Experimental or observational data linking bacterial butyrate overproduction to host colonocyte metabolic impairment.

*Certainty:* 0.50. This is a conceptual modelling question with moderate evidence for its relevance, but quantitative parameters remain undefined.

#speculation(title: [Exosome-Gut Microbiome Bidirectional Cross-Talk])[
*Certainty: 0.10.* Systemic exosomes can reach the intestinal lumen via transcytosis; dietary and microbial metabolites influence exosome biogenesis in host cells. A bidirectional axis may exist where (a) systemically administered therapeutic exosomes alter gut microbiome composition via luminal delivery, and (b) gut microbiome-derived metabolites (SCFAs, tryptophan) modulate host exosome production and cargo. This is entirely speculative — no exosome-microbiome interaction data exist in ME/CFS or any human population. Included as a research curiosity only, not a mechanistic claim.
] <spec:exosome-gut-microbiome>
] <oq:colonocyte-energy-variable>
