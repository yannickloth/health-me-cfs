#import "../../../../shared/environments.typ": *

=== The Noradrenergic Selectivity Node
<sec:noradrenergic-node>

*Certainty: 0.40.* Selective noradrenergic defect (CSF NE↓, DA preserved per @ach:catecholamine-deficit) is a replicated finding from NIH deep phenotyping, though single-center and n=16--17.

The selective noradrenergic defect creates a specific test:

#finding(
  claim: [Atomoxetine should improve fatigue and PEM if NE deficiency is rate-limiting],
  explanation: [
    Atomoxetine (NRI) should improve fatigue and PEM if NE deficiency is rate-limiting.
  ],
  certainty: [Low],
  level: [Partial root cause]
)

#finding(
  claim: [Atomoxetine may NOT improve cognitive symptoms if DA system is intact or cognitive bottleneck is glutamatergic],
  explanation: [
    Atomoxetine may NOT improve cognitive symptoms if DA system is intact or cognitive bottleneck is glutamatergic.
  ],
  certainty: [Low],
  level: [Partial root cause]
)

#finding(
  claim: [Atomoxetine failure + aripiprazole success → lesion downstream of NE at DBH],
  explanation: [
    If atomoxetine does NOT work BUT aripiprazole works → lesion is downstream of NE: DBH failure produces NE deficiency but spares DA, and DA deficiency is rate-limiting.
  ],
  certainty: [Low],
  level: [Partial root cause]
)

=== Upstream-Node Convergence on the Noradrenergic Selectivity Node

*Certainty: n/a (convergence).* Independent upstream mechanisms converge on the same selective norepinephrine deficit. Copper-dependent dopamine-β-hydroxylase synthesis @Lutsenko2019CopperNoradrenergic (human proof-of-principle @Senard2006DBHdeficiency), BH#sub[4] cofactor supply @Rivera2017BH4deficiency, ATP-dependent vesicular release @Rangaraju2014ActivityDrivenATPsynapse, NET reuptake capacity @Hahn2003SLC6A2NET, and adrenergic-receptor autoantibody signalling @Hartwig2020Beta2AdrenergicIgG all feed the same endpoint — low central NE with preserved dopamine (@ach:catecholamine-deficit). Downstream, the deficit branches to sleep @OsorioForero2021NoradrenergicNREM and pain @Hayashida2019DescendingNoradrenergic endpoints.

Because the nodes imply different drugs, the differential-response pattern localises the bottleneck: a droxidopa (DBH-bypass) responder whose atomoxetine (NET) response is null points to a presynaptic synthesis/storage lesion, whereas the reverse points downstream. The trace is maintained at `ops/integration-guides/pathway-drug-trace-noradrenergic-full-scope.md`.

*Consequence:* the noradrenergic selectivity node is a convergence point, not a single mechanism — so a null response to one noradrenergic drug does not refute the hypothesis, it narrows the node.
