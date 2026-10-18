#import "../../../../shared/environments.typ": finding

=== Pyridostigmine (Mestinon) <sec:pyridostigmine-ch33>

Pyridostigmine inhibits acetylcholinesterase, prolonging acetylcholine at autonomic ganglia, the neuromuscular junction, and vagal immune synapses. Probes preload failure, cholinergic anti-inflammatory pathway, and residual autonomic nerve function. One of the strongest evidence bases: Joseph 2022 iCPET RCT (n=45) showed objective hemodynamic improvement @Joseph2022pyridostigmine, Squires 2023 long-term follow-up (n=37) showed sustained benefit @Squires2023pyridostigmine.

==== If pyridostigmine works


#finding(claim: [Preload failure was contributing.], explanation: [Pyridostigmine increased acetylcholine at autonomic ganglia → improved venous return → increased cardiac filling → increased oxygen delivery → improved exercise capacity. The Joseph 2022 RCT demonstrated this objectively: +13.3 mL/min peak VO₂ with pyridostigmine vs. −40.2 mL/min worsening with placebo.], certainty: [Medium — double-blind RCT with invasive hemodynamic measurements.], dntu: [whether preload failure is from autoantibody-mediated vascular dysfunction, hypovolemia, or connective tissue laxity.], action: [volume expansion (fludrocortisone, sodium) and compression become particularly relevant.], level: [Partial root cause — pyridostigmine compensates for impaired ganglionic transmission without addressing what caused it.])

#finding(claim: [Cholinergic anti-inflammatory pathway was engaged.], explanation: [Pyridostigmine increases acetylcholine, activating α7 nicotinic receptors on macrophages and T cells — vagally-mediated immune modulation. PISCO COVID-19 RCT (n=188): pyridostigmine halved 28-day mortality (HR 0.47) with no change in systemic cytokines @FragosoSaavedra2022pisco — suggesting tissue-level immune modulation.], certainty: [Low — evidence from COVID-19, not ME/CFS.], level: [Partial root cause.])

#finding(claim: [Autonomic nerve function was partially preserved.], explanation: [Pyridostigmine potentiates existing acetylcholine — it cannot create a signal where nerves have degenerated. Okamoto et al. (2025) showed preserved baroreflex function predicts response @Okamoto2025pyridostigmine.], certainty: [Medium.], action: [if pyridostigmine works, autonomic nerves are functional — treating the upstream cause could restore normal autonomic tone, potentially eliminating the need for ongoing pyridostigmine.], level: [Symptom management.])

==== What a positive response does NOT reveal

A positive pyridostigmine response confirms that impaired ganglionic transmission and preload failure were contributing, but it does not reveal what caused them — autoantibody-mediated vascular dysfunction, hypovolemia, and connective tissue laxity remain indistinguishable from the drug response alone. It shows that residual autonomic nerve function was preserved (pyridostigmine can only potentiate existing acetylcholine, not replace degenerated nerves) but does not localize the upstream driver. The cholinergic anti-inflammatory contribution is inferred from COVID-19 data, not ME/CFS, so its role in any given patient remains uncertain.

==== If pyridostigmine does NOT work
- Severe autonomic failure with insufficient residual nerve function.
- Preload failure may not be dominant — hypovolemia (fludrocortisone-responsive), excessive venous pooling (compression-responsive), or hyperadrenergic POTS (ivabradine-responsive) may predominate.
- GI side effects limiting dose — ME/CFS patients with pre-existing dysmotility or MCAS may not tolerate doses sufficient for autonomic benefit.
- Wrong autonomic target — hyperadrenergic POTS patients may worsen from combined sympathetic/parasympathetic enhancement.

==== Key caveat

Non-response does not exclude autonomic dysfunction. Pyridostigmine can only potentiate existing acetylcholine — where autonomic nerves have degenerated (severe autonomic failure with insufficient residual nerve function), the mechanism may be present but beyond what the drug can restore. Dose-limiting GI side effects can also prevent reaching a therapeutic level, so non-response may reflect intolerance rather than absence of preload failure.

==== How pyridostigmine combines with other medications
- Pyridostigmine + LDN both work → neuroinflammation → autonomic dysfunction (inflammatory-to-autonomic cascade).
- Pyridostigmine + fludrocortisone/midodrine → multi-mechanism preload failure (ganglionic + volume + vasoconstriction). Meta-analysis: combined therapy −6.74 mmHg systolic drop (p \< 0.05) @Pavic2025pyridostigmine.
- Pyridostigmine does not work + ivabradine works → insufficient ganglionic reserve; excessive sinus node automaticity or inadequate parasympathetic restraint predominates.

==== Handgrip recovery as a transmission probe

Repeated-grip testing offers a second, independent read of the same cholinergic mechanism. If part of the two-session handgrip deficit is use-dependent transmission failure, then pyridostigmine should improve the *recovery ratio* more than it improves maximal single-grip force (@oq:handgrip-treatment-probes). A force-versus-ratio dissociation would point to transmission or perfusion; a rise in both would be indistinguishable from a general effort or arousal effect.

#finding(claim: [Use-dependent transmission limitation contributed to the grip deficit], explanation: [The recovery ratio (mean force session 2 / session 1) improves while maximal single-grip force changes little. Force maintenance across ten maximal grips depends on sustained endplate transmission more than a single maximal effort does, so a selective ratio effect localises the limitation to transmission rather than to muscle bulk or global effort.], certainty: [Low — inference from the autonomic trial literature; no ME/CFS trial has used handgrip recovery as an endpoint.], dntu: [whether the effect is nicotinic (endplate, ganglionic) or muscarinic (peripheral vasodilation improving delivery).], action: [Supports an extended trial with a pre-registered handgrip recovery endpoint; does not change current prescribing.], level: [Research probe — not a clinical recommendation.])

#finding(claim: [The grip deficit was not transmission-limited], explanation: [Maximal force and recovery ratio are unchanged, or both rise together. A joint rise is compatible with improved general condition, arousal, or effort and cannot be attributed to the endplate.], certainty: [Low.], action: [Shifts the differential toward muscle energetics, microvascular delivery, or central drive (@oq:handgrip-peripheral-vs-central); does not exclude autonomic benefit on other endpoints.], level: [Research probe.])

*Caveats.* Handgrip recovery has never been measured in a pyridostigmine trial; within-patient reliability and minimal detectable change are unstudied in ME/CFS; and the same drug affects vascular tone, so a positive result cannot separate nicotinic from muscarinic action. Certainty: Low. The full cascade trace is retained in the integration record for this cycle (Phase 5d), not in the book.

==== Compendium

The full pharmacodiagnostic entry — including mechanism-exclusion logic, dose-specific side-effect diagnostic patterns, combination diagnostics, and worsening risk profiles — is at @ch:mechanistic-cascade-tracing (sec-12, Pyridostigmine entry).
