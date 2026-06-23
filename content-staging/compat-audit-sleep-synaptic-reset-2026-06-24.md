# Compatibility Audit: Sleep Synaptic Reset (SV2A PET)

**Date:** 2026-06-24
**Topic slug:** sleep-synaptic-reset
**New hypothesis:** Alpha-Delta Sleep Impairs Synaptic Downscaling (`spec:ch08-synaptic-downscaling-failure`, cert 0.30)

---

## Pairwise Matrix

### Reinforcement pairs (shared mechanism + same direction)

| # | Existing hypothesis | Registry cert | Shared mechanism | Relationship certainty |
|---|-------------------|---------------|-----------------|----------------------|
| R1 | `hyp:thalamic-calcium-sleep` (Thalamic T-Type Calcium Channel Disruption → Alpha-Delta Sleep) | 0.35 | CaV3.1 dysfunction → alpha-delta sleep → impaired NREM quality | 0.80 |
| R2 | `hyp:sleep-architecture-failure` (Sleep Architecture Failure Hypothesis) | 0.50 | Energy-limited sleep coordination → fragmented NREM → impaired restorative function | 0.60 |
| R3 | `hyp:unrefreshing-sleep-glymphatic-failure` (Unrefreshing Sleep as Failed Glymphatic Clearance) | 0.75 | Sleep impairment → loss of overnight restorative brain process | 0.70 |
| R4 | `spec:nocturnal-autophagy-sleep` (Nocturnal Autophagy Failure) | 0.45 | Sleep impairment → loss of cellular clearance process | 0.60 |
| R5 | `hyp:cross-modal-decoupling` (SleepFM Cross-Modal Decoupling Framework) | — | Alpha-delta = intra-modality decoupling within same framework | 0.65 |
| R6 | `hyp:two-hit-glutamatergic` (Two-Hit Glutamatergic Vulnerability) | 0.50 | Synaptic E/I balance → hyperexcitability → sensory hypersensitivity | 0.55 |

### Feed-into pairs

| # | Upstream → Downstream | Mechanism link | Relationship certainty |
|---|----------------------|----------------|----------------------|
| F1 | `hyp:thalamic-calcium-sleep` → `spec:ch08-synaptic-downscaling-failure` | CaV3.1 dysfunction → failure to generate delta oscillations → failure to activate CaMKII → failure to express Homer1a → failed AMPA receptor internalization. The calcium hypothesis is **mechanistically upstream** of synaptic downscaling failure. | 0.75 |
| F2 | `hyp:selective-NE-deficiency` → `spec:ch08-synaptic-downscaling-failure` | Low CSF NE → reduced glymphatic vasomotion AND reduced arousal modulation → impairment of NREM quality → failure of synaptic reset. NE deficiency impairs multiple sleep-dependent brain maintenance processes. | 0.50 |
| F3 | `hyp:sleep-architecture-failure` → `spec:ch08-synaptic-downscaling-failure` | Energy-limited coordination → spindle generation deficit + SWA fragmentation → alpha-delta → failed synaptic downscaling. The energy failure upstream hypothesis predicts the synaptic failure downstream. | 0.55 |

### Conflict pairs

None identified. The synaptic downscaling hypothesis is complementary to all existing sleep-related hypotheses. No existing registry entry specifically addresses synaptic homeostasis or claims the opposite direction.

### Independent pairs

Most registry entries (neuroinflammation, immune dysfunction, metabolic hypotheses, treatment hypotheses) are in non-overlapping mechanistic domains. Key independents:

| # | Hypothesis | Reason |
|---|-----------|--------|
| I1 | `spec:ch08-sleep-eeg-proxy` (Delta/Alpha Ratio as Calcium Proxy) | Measures EEG correlate; new hypothesis addresses downstream structural consequence |
| I2 | `oq:ch08-ethosuximide-direction` | Same calcium channel target but addresses clinical trial design, not mechanism |
| I3 | `spec:orexin-pka-tau` (Orexin→PKA→Tau Phosphorylation) | Tau phosphorylation is intracellular accumulation; synaptic downscaling is structural reset; parallel but mechanistically distinct |
| I4 | `hyp:exosome-sleep-reversal` (HSP70 Exosome Sleep Reversal) | Exosomes repair neuroinflammation damage; synaptic downscaling is normal physiology — orthogonal mechanisms |

---

## Detailed Analyses

### R1: Thalamic Calcium → Synaptic Downscaling (relationship cert 0.80)

**Overlap:** Both hypotheses propose that alpha-delta sleep impairs restorative sleep function. The calcium hypothesis identifies CaV3.1 dysfunction as the generator of alpha-delta. The synaptic downscaling hypothesis identifies failed AMPA receptor removal as the *consequence*.

**Reinforcement logic:** These are not competing explanations — they describe the same causal chain at different molecular levels. CaV3.1 dysfunction *produces* alpha-delta sleep; failed synaptic downscaling is what alpha-delta sleep *does*. The calcium hypothesis gives a mechanism for *why* alpha intrusion occurs; the synaptic hypothesis gives a mechanism for *what damage* alpha intrusion causes.

**Proposed action:** The `#speculation` text in ch08 already cross-references the calcium section and includes a "T-type calcium channel convergence" paragraph explicitly linking CaV3.1 → CaMKII → Homer1a → AMPA removal. This is already integrated inline. No additional edit needed.

### R3: Glymphatic Failure ↔ Synaptic Downscaling (relationship cert 0.70)

**Overlap:** Both hypothesize that sleep impairment prevents an overnight brain maintenance process — glymphatic addresses extracellular waste clearance; synaptic downscaling addresses structural synaptic reset. Both peak during deep sleep. Both would be impaired by alpha-delta intrusion.

**Reinforcement logic:** These are parallel, additive mechanisms — not alternatives. The same alpha-delta sleep that prevents glymphatic flow also prevents synaptic downscaling. Patients may suffer both types of overnight brain maintenance failure simultaneously. The text already notes this complementarity.

### F1: Thalamic Calcium → Synaptic Downscaling (the key feed-into chain)

**Chain:** CaV3.1 dysfunction (cert 0.35) → alpha-delta sleep → failed CaMKII activation → failed Homer1a expression → failed AMPA receptor internalization → synaptic accumulation → elevated brain energy demand → unrefreshing sleep (cert 0.30).

**Contingency:** If CaV3.1 is *not* dysfunctional in ME/CFS (i.e., the thalamic calcium hypothesis is refuted), the synaptic downscaling hypothesis survives — any cause of alpha-delta sleep (neuroinflammation, metabolic failure, NE deficiency) would produce the same downstream synaptic consequence. The feed-into chain is loose (one-to-many upstream causes).

**Certainty adjustment:** Feed-into from hyp:thalamic-calcium-sleep (0.35) to spec (0.30). Rule: both <0.30 is speculative — no bump. Neither hypothesis is well-established enough for the feed-into mechanism to raise certainty.

### No conflicts — note

Zero conflicts with existing hypotheses. This is expected: the synaptic homeostasis hypothesis is a new mechanistic domain not previously covered. All existing sleep hypotheses address different aspects (calcium channels, energy coordination, glymphatic clearance, autophagy, orexin signaling, NE-vasomotion, cross-modal decoupling) — none compete with the claim that sleep resets synaptic density.

---

## Certainty Adjustment Proposals

**No adjustments proposed.** The synaptic downscaling hypothesis (cert 0.30) has zero ME/CFS-specific evidence and depends entirely on general-population data. The existing hypotheses it interacts with (thalamic calcium 0.35, sleep architecture 0.50, glymphatic 0.75) either feed into it or run parallel — none provide independent validation of the synaptic mechanism specifically. The feed-into chain from calcium (cert 0.35) is too speculative to justify a bump (both <0.30 threshold for mutual reinforcement, and the chain is one-to-many upstream). 

**Intra-cycle bump cap:** No bumps from Phase 6, so the cap is available — but no bumps are warranted.
