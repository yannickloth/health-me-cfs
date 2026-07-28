#import "../../../shared/environments.typ": *

== Combination Inference — What Two Drugs Together Reveal That Neither Can Alone <sec:combination-inference>

A single drug's response localizes a mechanism; two drugs' responses together narrow the differential geometrically. The combination signal — whether drugs are additive, synergistic, or antagonistic — reveals whether their targets converge on the same node or are independent bottlenecks.

=== Additivity vs. Synergy

*Additivity (drug A alone = 20% improvement, drug B alone = 20%, A + B = 40%):* The two mechanisms contribute independently and do not reinforce each other. Each is a separate bottleneck. The therapeutic strategy: treat both, but neither will amplify the other.

*Synergy (drug A alone = 20%, drug B alone = 20%, A + B = 60% or more):* The two mechanisms reinforce each other — they converge on a shared node and removing both inputs produces a nonlinear effect. Synergy confirms that the mechanisms are not independent; they are co-rate-limiting at a shared downstream bottleneck.

*Antagonism (drug A alone = 20%, drug B alone = 20%, A + B = 10%):* The two drugs oppose each other — either pharmacokinetically (one accelerates the other's clearance) or pharmacodynamically (opposing receptor-level effects). Antagonism is a diagnostic signal in itself: the systems they modulate are electronically opposed and should not be manipulated simultaneously.

=== Key Combination Patterns

*Microglial multi-receptor confirmation:* LDN + LDA. Both target microglia through different receptors (TLR4 vs. D2). If both work → multi-receptor microglial involvement confirmed. If LDN null + LDA positive → D2 is the dominant microglial receptor; TLR4 antagonism insufficient. If LDN positive + LDA null → TLR4 is dominant; D2 partial agonism does not add.

*Mast-cell → microglial pathway:* LDN + ketotifen. LDN blocks TLR4 on microglia; ketotifen stabilizes mast cells that would otherwise degranulate and provide the microglial activation signal. If ketotifen works where LDN did NOT → mast cells were the dominant upstream driver; blocking them removed the microglial input that LDN's TLR4 blockade couldn't neutralize at that particular receptor.

*Inflammatory → autonomic pathway:* LDN + pyridostigmine. Both work → neuroinflammation → autonomic dysfunction pathway confirmed. The inflammation is driving autonomic dysfunction through brainstem neuroinflammation.

*Post-infectious vs. active infection:* LDN + valacyclovir. LDN works, valacyclovir does not → neuroinflammation without active viral replication (post-infectious mechanism). Both work → active viral replication driving neuroinflammation.

*Complementary targets — pressure vs. gate:* LDA + mast-cell stabilisers. Mast cells release histamine, tryptase, PGD2 — this is the *baseline pressure* on microglia. LDA raises the microglial *activation threshold*. The two act on the same cell at different nodes: pressure vs. gate. Combined response is stronger evidence for microglial PEM generation than either alone.

*Domain dissociation:* LDA works for cognition/PEM but not for a specific symptom (e.g., tinnitus). The protected domain operates through a dopaminergic pathway; the resistant domain operates through a different mechanism (GABAergic, vascular). This domain dissociation is itself informative — it identifies which symptoms share a pathway and which do not, without requiring a biomarker. Do not increase the dose chasing symptoms in a different mechanism domain.

=== The Cross-Drug Inference Principle

A single drug response is a 1D probe. Two drug responses are a 2D constraint. N drug responses form an N-dimensional constraint on the hypothesis space. Each additional drug-null eliminates a mechanism; each additional drug-positive narrows the remaining field. The maximum information is extracted not from any single drug but from the *pattern of responses across drugs.* The integrated pattern — which drugs worked, which didn't, at which doses, with which side effects — is the diagnostic signal. The formal cross-reference matrix mapping every drug to every hypothesis is at @sec:pharmacodiagnostic-matrix-clinical.
