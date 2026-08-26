# Pathway-to-Drug Trace: Bedard 2026 Central Motor-Drive Fatigability Cascade

**Date:** 2026-08-26
**Topic slug:** bedard2026-central-fatigability-cascade
**Cascade section:** ch34 sec-08 subsec-05 `<sec:central-motor-drive-cascade>` (subsubsec-01)
**Model note:** deepseek-v4-pro delegation unavailable in the resume toolset; trace written inline from verified corpus evidence (search-log; sec-12 drug entries; @Bedard2026centralFatigability; @Minzenberg2008modafinil).

## Cascade branches traced (N=5)

| Branch | Node | Mechanism (verified anchor) | Drug-interception point | Discriminating probe |
|--------|------|----------------------------|--------------------------|----------------------|
| C1 | Cortical motor-output / central drive generation | Absent EEG/BOLD up-regulation under sustained effort @Bedard2026centralFatigability | Modafinil/armodafinil (weak DAT/NET + histamine/orexin), methylphenidate (stronger DAT/NET) | Normalized grip-force/EEG/BOLD trajectory under a central probe supports central bottleneck |
| C2 | Dopaminergic/effort node (DAT/NET + D2/D3) | Sustained effort engages DA circuits; effort-worth-it→output conversion | Methylphenidate (DAT block), modafinil (weak DAT/NET), amphetamines (DAT/NET+VMAT2), bromocriptine/rotigotine (D2/D3) | Pattern: reuptake-blockade vs postsynaptic-D2 vs release response discriminates sub-node |
| C3 | Glutamatergic/release node | Presynaptic DA release deficit vs reuptake bottleneck | Amantadine (presynaptic DA release + NMDA) | Release-deficit (amantadine works, methylphenidate null) vs reuptake-bottleneck (reverse) |
| C4 | Spinal motoneuron → neuromuscular → muscle-fiber recruitment | No Dimitrov-index compensation for declining force @Bedard2026centralFatigability | None at this node (peripheral ergogenic aids as negative control) | Peripheral ergogenic aid restores performance → falsifies purely-central bottleneck |
| C5 | Afferent feedback / corticomuscular coherence | Output not corrected by sensory feedback; loop fails @Bedard2026centralFatigability | None established | CMC gain change under central probe — measurement-only, no drug target |

## Drug → node pairs (N=7)

| Drug | Cascade node | Mechanism (sec-12 line) | Differential value |
|------|-------------|--------------------------|--------------------|
| Modafinil/armodafinil | C1, C2 | DAT/NET inhibition + histamine/orexin (@Minzenberg2008modafinil; sec-12:1772) | Weak DAT block; negative ME/CFS RCT (n=14) |
| Methylphenidate | C1, C2 | DAT/NET blockade (sec-12:1688) | Stronger DAT block; +7% REE metabolic cost |
| Amphetamines | C2 | DAT/NET + VMAT2 reversal (sec-12:145) | Confirms presynaptic DA terminals; highest permanent risk |
| Bromocriptine/Rotigotine | C2 | D2/D3 agonism (sec-12:387) | Postsynaptic receptor responsiveness; rotigotine patch vs oral PK |
| Amantadine | C3 | Presynaptic DA release + NMDA (sec-12:75) | Release vs reuptake discrimination |
| Peripheral ergogenic aids | C4 (negative control) | — | Falsifies central-only if they restore performance |
| (none) | C5 | — | Afferent-feedback gain has no drug target; measurement-only |

## Discriminating probes / differential sequences

1. **Reuptake vs release:** methylphenidate works & amantadine null → reuptake bottleneck (DAT-mediated recycling); amantadine works & methylphenidate null → release deficit.
2. **Presynaptic vs postsynaptic:** methylphenidate/modafinil restore & bromocriptine/rotigotine null → presynaptic reuptake/effort; reverse → postsynaptic D2/D3.
3. **Central vs peripheral:** a central probe restores the trajectory & a peripheral ergogenic aid does not → central motor-drive bottleneck (this cascade); reverse → peripheral-exhaustion model.

## Pruned / not-integrated branches

- **Dopamine-PET node-graft (brainstorm idea 5):** not integrated as a chapter drug/cascade branch — it is a *measurement* (imaging), not an interception drug; recorded tree-only (subtree node 5.1).
- **TMS branch (brainstorm idea 2):** not integrated — TMS is a causal probe, not a drug interception; recorded tree-only (subtree node 2.1).

## ch34 cascade finalization

- The cascade subsec-05 + subsubsec-01 files implement branches C1–C5, the 7 drug→node pairs, and the 3 discriminating-probe sequences, all cross-referencing @sec:medication-reference and @sec:pharmacodiagnostic-matrix. No further cascade content needed.
- sec-12 `*Appears in:*` updated for all 5 interception drugs (see Phase 3 record).
