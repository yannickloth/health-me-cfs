#import "../../../../shared/environments.typ": *

=== Selection Rationale

Three criteria guided model selection:

+ *Mechanistic specificity*: Only domains where the underlying biochemistry is sufficiently characterized to write rate equations were modeled. Domains with purely phenomenological descriptions (e.g., "fatigue" as a subjective experience) appear as output variables rather than as dynamical subsystems.
+ *Clinical relevance*: Models prioritize mechanisms that are either currently targetable by interventions or that generate measurable biomarkers. The energy metabolism models were developed in detail because mitochondrial function is both measurable (Seahorse assay, CPET) and targetable (CoQ10, D-ribose, pacing). Conversely, intracellular signaling cascades (NF-$kappa$B, JAK-STAT) were omitted despite their mechanistic importance because they add model complexity without generating distinct clinical predictions at the whole-patient level.
+ *Inter-system coupling*: Models were selected to capture the bidirectional feedback loops that distinguish ME/CFS from single-organ diseases. Every model in Part V participates in at least one cross-system coupling (catalogued in Chapter~@ch:integrated-systems), ensuring that the model set captures the emergent properties that verbal reasoning cannot derive.

