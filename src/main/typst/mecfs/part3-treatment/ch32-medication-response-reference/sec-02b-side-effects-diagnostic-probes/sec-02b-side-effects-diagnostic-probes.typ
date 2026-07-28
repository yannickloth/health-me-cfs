#import "../../../shared/environments.typ": *

== Side Effects as Diagnostic Probes <sec:side-effects-diagnostic-probes>

A drug response is only one dimension. The side-effect profile — *which* side effect, at *which* dose, with *which* temporal pattern — is the second dimension. Together, the therapeutic response and the side-effect profile form a bidirectional probe: response tells you what the drug fixed; side effects tell you what the drug unmasked. @ch:mechanistic-cascade-tracing

Patients with ME/CFS have reduced physiological reserve across multiple systems. A drug that is well tolerated at standard doses in the general population may, in ME/CFS, produce side effects at micro-doses. The dose at which a side effect appears is an ordinal readout of physiological reserve: the lower the triggering dose, the thinner the reserve in the affected system.

=== Pattern 1 — Exaggerated Therapeutic Effect <sec:pattern-1-exaggerated>

The target system was already operating at critical margin, and the drug pushes it over the edge. The side effect is the therapeutic effect at excessive magnitude.

*Generic diagnostic logic:* The patient needed the opposite of what the drug does — the system was already maximally engaged, and the drug pushed it into failure. The dose at which the side effect appears maps the system's remaining reserve: the lower the dose, the thinner the margin.

Examples:
- LDN causing severe sedation → orexin/arousal system barely functional; ongoing hypothalamic neuroinflammation confirmed
- Beta-blockers worsening fatigue beyond HR reduction → β2-AR-mediated lipid metabolism was the metabolic fallback; glucose oxidation compromised
- Midodrine producing hypertension at 2.5 mg → α1 receptors hypersensitive; neuropathic POTS confirmed
- Ketotifen causing sedation at 0.5 mg → histaminergic arousal system critically low; patient was "held awake" by MCAS histamine release
- Prazosin causing severe orthostatic hypotension at 0.5 mg → standing BP depends on α1-mediated vasoconstriction; neuropathic POTS confirmed
- Clonidine causing hypotensive crash at 0.05 mg → total systemic BP sympathetically maintained; minimal adrenergic reserve

=== Pattern 2 — Paradoxical Reaction <sec:pattern-2-paradoxical>

The target system has a regulatory inversion — the expected response is reversed. The drug produces the opposite of its intended effect because the target receptor system is compensating for a deficit. Removing the compensation unmasks the deficit.

*Generic diagnostic logic:* The drug was suppressing a system that was load-bearing for homeostasis. The adverse reaction identifies the patient as dependent on that system. This is a permanent trait for the receptor class — rechallenge should be avoided.

Examples:
- LDN causing depression/suicidal ideation (paradoxical reactor) → opioid system load-bearing for mood/pain homeostasis; avoid all opioid-modulating drugs permanently
- Fludrocortisone worsening orthostatic symptoms → connective-tissue-driven venous pooling, not hypovolemic POTS
- IVIG causing transient immune-activation flare before improvement → GPCR autoantibody-mediated pathology confirmed; flare resolves 48--72h if complement system intact
- Allopregnanolone causing anxiety at low dose → paradoxical anxiogenic at the high-affinity GABA-A site; skip to higher concentration
- Aspirin worsening MCAS → prostaglandin-mediated mast cell stabilization was active; PGD2 was compensatory, not pathogenic

=== Pattern 3 — Unexpected Off-Target Effect <sec:pattern-3-off-target>

A system the drug wasn't supposed to affect reveals latent vulnerability. The side effect identifies an occult deficit in a system the drug was not designed to probe.

*Generic diagnostic logic:* The drug hit a receptor or pathway it doesn't primarily target, but the response is disproportionately severe because that pathway has zero reserve. The effected system is now known to be compromised.

Examples:
- Aripiprazole causing akathisia at 0.5 mg → severe dopamine deficiency; D2 receptors supersensitive. If akathisia resolves as drug clears → presynaptic lesion (intact postsynaptic). If akathisia persists weeks → receptor-state consolidation or microglial triggering
- Pyridostigmine causing severe GI cramping at 30 mg → gut cholinergic system hypersensitive; enteric denervation + compensatory receptor upregulation
- Amantadine causing confusion at 100 mg → NMDA receptor functional reserve critically low; NMDA hypofunction confirmed
- Gabapentin/pregabalin causing severe sedation at 100--300 mg → severe central sensitization; CaV channels hypersensitive
- Lithium causing polydipsia at 2 mg elemental → occult nephrogenic diabetes insipidus; AQP2 hypersensitivity

=== Pattern 4 — Tolerability Ceiling <sec:pattern-4-tolerability-ceiling>

The drug works but cannot be titrated because side effect Y from system Z appears first. The ceiling identifies which system has the least reserve.

*Generic diagnostic logic:* The drug is therapeutically active; the mechanism it targets is rate-limiting. But another system wears out before the therapeutic window is fully captured. The ceiling system's reserve is the limiting factor — co-treatment to shore up that system may widen the therapeutic window.

Examples:
- Ivabradine limited by bradycardia before POTS HR control → intrinsic SA node dysfunction
- Guanfacine limited by hypotension before cognitive benefit → sympathetically dependent hemodynamics; midodrine co-administration indicated
- Memantine limited by sedation before glutamatergic benefit → baseline glutamate tone low; needs enhancement, not reduction
- Celecoxib worsening fatigue before anti-inflammatory benefit → COX-2-derived PGE2 maintains cerebral perfusion/mitochondrial biogenesis/HPA drive; ceiling identifies dependence on PGE2

=== Pattern 5 — Absent Expected Side Effect <sec:pattern-5-absent>

The drug's known, near-universal side effect does NOT occur at therapeutic doses. The system that normally produces the side effect is non-functional or desensitized.

*Generic diagnostic logic:* The system was expected to react and didn't — it may be too damaged to respond, maximally occupied by endogenous ligand, or absent. This is a specific null: the receptor population is confirmed non-functional.

=== Synthesis — The Bidirectional Probe <sec:response-reaction-bidirectional-probe>

A positive therapeutic response tells you the mechanism was present and drug-accessible. A negative response tells you the mechanism was absent or inaccessible. But the side-effect profile is an independent, equally weighted axis: a patient who benefits from a drug AND has no side effects has broad reserve in all off-target systems. A patient who benefits but has dose-limiting side effects has narrow reserve in one off-target system. A patient who has side effects but no benefit has a specific ceiling — the targeted mechanism cannot produce benefit before the off-target system collapses.

The dose-response curve is a third axis: a patient who benefits at 0.5 mg of LDN and worsens at 4.5 mg is pharmacologically distinct from one who benefits at 4.5 mg alone — even if both are classified as "LDN responders." Binary response/non-response classification loses the diagnostic signal contained in dose and side-effect profiles. @sec:dose-response-categories

For the full framework including dose-response slope, response onset latency, tachyphylaxis patterns, diurnal effects, drug-drug interaction diagnostics, and formal null matrix methodology, see @ch:mechanistic-cascade-tracing (Chapter 33, sec-10).
