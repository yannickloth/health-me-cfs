#import "../../../../shared/environments.typ": *

<sec:severity-stratified-reserve-protocol>

Architecture C (@sec:architecture-c-metabolic-reserve) suggests a severity-stratified intervention approach combining pharmacological, supplement, and non-pharmacological components. The protocol is ordered by accessibility and risk, with the most conservative interventions applied first. All components are individually referenced in their respective chapters; this section provides the integrated protocol.

=== Severe ME/CFS (Housebound/Bedbound)

    + Iron status optimization (IV ferric carboxymaltose if oral intolerant; @subsec:iron-repletion-neurodivergent)
    + Creatine 3 g/day (mixable into any liquid)
    + CoQ10 200 mg + NADH 20 mg (existing best evidence)
    + Compression garments (abdominal binder for reclined patients; @subsec:perfusion-optimization-reserve)
    + Melatonin 0.3 mg for sleep timing (@subsec:sleep-reserve-recovery)
    + Cognitive pacing not applicable — cognitive demand already minimal at this severity
    + Estimated cost: ~\$50–80/month

Implementation note: fully bedbound patients without a caregiver may be unable to prepare or administer supplements. The minimum viable protocol for unassisted severe patients is iron (if IV can be arranged through home visit) and melatonin (single pill at bedtime) — both require minimal preparation.

=== Moderate ME/CFS (Ambulatory, Limited)

All severe-level interventions PLUS:

    + Cognitive energy envelope protocol (@subsec:cognitive-pacing-adhd)
    + Postural optimization for cognitive work (@subsec:perfusion-optimization-reserve)
    + Reserve Builder stack: add zinc, magnesium threonate, folinic acid, vitamin C (@subsec:reserve-builder-stack)
    + If ADHD comorbid: consider low-dose methylphenidate with strict pacing (@subsec:methylphenidate-pacing)
    + Estimated cost: ~\$80–130/month

=== Mild ME/CFS (Functional with Limitations)

All moderate-level interventions PLUS:

    + BH4 status assessment (urinary neopterin:biopterin ratio)
    + If GCH1 rs841 homozygous: discuss sapropterin with physician (@subsec:sapropterin-bh4)
    + Graduated cognitive block extension (25 min → 35 min → 45 min, only if zero PEM for 2 weeks at each level)
    + Estimated cost: ~\$80–150/month (+ sapropterin if indicated)

#warning-env(title: [Untested Integrated Protocol])[
This severity-stratified protocol is derived from Architecture C logic, not from clinical trial evidence. Individual components have varying levels of evidence (see referenced sections). The combination has never been tested. This protocol should not replace established ME/CFS management. All pharmacological components require physician supervision. Start components sequentially (one new addition every 2 weeks) to identify individual response and tolerability. Stopping rules: discontinue any component that produces no subjective improvement after 6 weeks, or any component that worsens PEM frequency. If no response to 3 sequential additions, reassess the metabolic reserve rationale for this patient — Architecture C may not apply.
]
