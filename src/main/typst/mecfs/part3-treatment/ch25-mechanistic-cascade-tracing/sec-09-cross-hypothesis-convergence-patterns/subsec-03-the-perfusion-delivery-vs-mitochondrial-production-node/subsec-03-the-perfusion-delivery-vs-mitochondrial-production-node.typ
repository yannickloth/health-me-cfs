#import "../../../../shared/environments.typ": *

=== The Perfusion-Delivery vs. Mitochondrial-Production Node
<sec:perfusion-vs-mito-node>

Distinguishing whether the energy bottleneck is oxygen delivery or mitochondrial utilization:
- *Probes:* Pyridostigmine (improves perfusion → delivery), CoQ10/NMN (improves mitochondrial function → production).

#finding(
  claim: [If pyridostigmine works but CoQ10 does NOT → bottleneck at delivery],
  explanation: [
    If pyridostigmine works but CoQ10 does NOT: Bottleneck is at delivery (Step 1). Mitochondria can produce ATP when they get oxygen.
  ],
  certainty: [Low],
  level: [Partial root cause]
)

#finding(
  claim: [If CoQ10 works but pyridostigmine does NOT → bottleneck at mitochondrial production],
  explanation: [
    If CoQ10 works but pyridostigmine does NOT: Bottleneck is at mitochondrial production.
  ],
  certainty: [Low],
  level: [Partial root cause]
)

#finding(
  claim: [If both work → both delivery and production impaired],
  explanation: [
    If both work: Both delivery and production impaired.
  ],
  certainty: [Low],
  level: [Partial root cause]
)

#finding(
  claim: [If neither works → bottleneck at ATP utilization],
  explanation: [
    If neither works: Bottleneck at ATP utilization (ANT export, creatine phosphate shuttle, or triage allocation).
  ],
  certainty: [Low],
  level: [Partial root cause]
)
