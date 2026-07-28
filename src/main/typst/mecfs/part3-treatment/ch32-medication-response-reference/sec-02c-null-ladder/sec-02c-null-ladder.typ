#import "../../../shared/environments.typ": *

== The Null Ladder — Why Null Is More Informative Than Positive <sec:null-ladder-clinical>

A null drug response is often treated as a failed trial — "the drug didn't work." But null responses are information-dense. A drug that targets multiple mechanisms and fails eliminates ALL of them simultaneously. A drug that targets a single mechanism and fails eliminates it with higher specificity than a positive response implicates it. @ch:mechanistic-cascade-tracing

=== Null vs. Positive Information Density

A positive response to LDN (targets: TLR4, TRPM3, endorphin, orexin) is broad but non-specific — the patient has neuroinflammation, but at which receptor? A null LDN response eliminates all four mechanisms in one trial. Null LDN is more informative than positive LDN in the differential diagnostic algorithm: it narrows the search space by four mechanisms.

A positive response to aripiprazole (targets: D2/D3 on microglia + mesocorticolimbic D2 + 5-HT1A) is triple-target broad — the patient has dopaminergic involvement, but pre- or post-synaptic? Microglial or neuronal? A null aripiprazole response eliminates D2/D3-mediated microglial involvement, mesocorticolimbic dopamine deficiency, and 5-HT1A-mediated ANS instability — three mechanisms in one trial.

=== The Null Ladder Algorithm <sec:null-ladder-algorithm>

The diagnostic sequence is ordered by coverage breadth — each null step eliminates the most mechanisms per trial:

1. Start with LDN (TLR4, TRPM3, endorphin, orexin). Null → four mechanisms eliminated.
2. Probe neuroinflammation source: ketotifen (mast cell) + taVNS (cholinergic anti-inflammatory). Null → mast-cell and vagal pathways excluded.
3. Probe dopaminergic/noradrenergic axis: aripiprazole (D2/D3) + pyridostigmine (cholinergic). Null → D2-mediated microglial involvement and cholinergic autonomic dysfunction excluded.
4. Probe energy bottleneck: CoQ10 + D-ribose + creatine. Null → mitochondrial substrate repletion not the bottleneck.
5. Probe autoimmune: IVIG/rituximab. Null → circulating IgG autoantibody-mediated pathology excluded.
6. Probe antiviral: valacyclovir. Null → active herpesvirus replication excluded.
7. Assemble the null matrix: remaining active hypotheses are those that survived every null probe.

=== Null Failure Modes — When Null Is False-Negative <sec:null-failure-modes>

A null result does not always imply mechanism absence:

- *Dose insufficient* — the therapeutic window was never reached. LDN trialled only at 3.0--4.5 mg when the patient's window is at 0.5--1.5 mg → false null for TLR4/Nrf2. Non-response cannot be concluded unless all dose bands are tested.
- *Duration insufficient* — endorphin upregulation takes 2--4 weeks; microglial phenotype shift requires gene-expression changes. Null at 1 week is uninformative.
- *Drug access failure* — BBB impermeability, CYP2D6 rapid metabolizer status, drug-drug interaction preventing target engagement.
- *Receptor desensitization* — the receptor is present but non-responsive from chronic endogenous activation. The null is a true statement about receptor *function*, not receptor *presence*. Distinction matters: one receptor can be desensitized while another on the same cell is functional. LDN null + LDA positive does not exclude microglial involvement — it excludes TLR4 involvement specifically, while confirming D2 involvement.

=== The Null Matrix <sec:null-matrix-clinical>

A patient-specific null matrix is a grid: each row is a medication trialled, each column is a mechanism hypothesis. A cell is marked "null" if the medication targets that mechanism and produced no response. The matrix readout: rows with many nulls eliminate mechanism classes broadly; columns with no positive responses exclude that hypothesis for the patient. The intersection of all null cells defines the set of mechanisms that remain live hypotheses for that patient. The matrix is dynamic — each new drug trial adds a row and potentially eliminates more columns.

For the formal null matrix methodology including drug-hypothesis constraint-satisfaction scoring and spectral resolution limits, see @sec:pharmacodiagnostic-matrix-clinical.

For the limits of what each null can conclude about viral, autoimmune, genetic, or mechanical origin specifically — including why a rituximab null does not rule out autoimmune origin and a valacyclovir null does not rule out viral origin — see @sec:origin-elimination.
