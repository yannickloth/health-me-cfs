#import "../../../shared/environments.typ": *

#hypothesis(title: [Upstream-to-Downstream Treatment Sequencing])[

*Certainty:* 0.25 (mechanistic reasoning from known pharmacology; no controlled trials testing this specific sequence; speculative cascade model).

The “Brain First” sequence LDA → LDN → Mestinon may align with the neuroinflammatory cascade hypothesis in pathophysiology:

*Proposed sequencing logic*:

    - *Layer 1 - Dopaminergic restoration (LDA/aripiprazole)*: Addresses documented catecholamine deficiency (particularly in NIH deep phenotyping studies). Dopamine is critical for: prefrontal cortex function (attention, executive planning), reward/motivation processing, and autonomic regulation. Restoring dopaminergic tone treats the upstream neurochemical deficit.

    - *Layer 2 - Microglial modulation (LDN)*: Reduces microglial-mediated neuroinflammation through TLR4 signaling reduction. This targets the secondary neuroinflammatory cascade triggered by catecholamine deficiency—when dopamine drops, microglia become hyperactivated, perpetuating neuroinflammation even if baseline dopamine is restored. LDN addresses this consequence.

    - *Layer 3 - Autonomic ganglionic enhancement (Mestinon/pyridostigmine)*: Addresses the downstream autonomic dysfunction resulting from upstream neurological dysfunction. Enhances acetylcholinergic transmission at autonomic ganglia, improving heart rate variability and orthostatic tolerance. By this point, cognitive restoration (Layer 1) allows patients to recognize dysautonomic symptoms and apply appropriate pacing.

*Cascade mechanism explanation*:
This upstream-to-downstream approach may be more effective than simultaneous multi-drug therapy because:

    - Restoring dopamine (Layer 1) reduces the driving force for microglial activation, making Layer 2 (LDN) more effective
    - Reducing neuroinflammation (Layer 2) may restore autonomic signaling, reducing need for maximum Layer 3 doses
    - Sequential addition allows titration to individual tolerance before stacking additional neuroactive agents
    - Cognitive restoration precedes fatigue improvement, preventing dangerous overexertion crashes

*Critical caveats*:

    - This mechanistic framework is speculative and derived from hypothesis, not proven pathophysiology
    - The cascade neuroinflammatory model itself remains under investigation (see Section @sec:vim-phenotype and pathophysiology chapters)
    - Metabolic risks of dopaminergic agents (See Warning @warn:lda-metabolic) may offset benefits in metabolically vulnerable patients
    - Individual patients may require completely different sequences based on unique pathophysiological profiles
    - The optimal sequence likely varies between rapid/acute responders (who benefit from simultaneous multi-agent) and slow-responders (who benefit from sequential layering)

The “Brain First” sequence represents an emerging hypothesis that cognitive improvement should precede fatigue improvement to allow safer self-management of remaining symptoms. Whether the proposed cascade mechanism actually explains superior outcomes remains uncertain.
] <hyp:treatment-cascade-mechanism>
