# Phase 7 Compatibility Audit: Ocular Sjögren / ME/CFS Overlap

**Date:** 2026-07-09 · **Execution:** inline (main session)

## New hypotheses this cycle
- `spec:ocular-surface-neuroimmune-window` (0.35)
- `oq:mecfs-tear-proteome` (n/a)
- `spec:mecfs-lacrimal-denervation` (0.28)
- `lim:ocular-surface-mecfs-confounds` (caveat — not a hypothesis; excluded from bump analysis)

## Shared-mechanism candidate pairs (term index: tear, corneal/CCM, SFN, dysautonomia, sicca, M3)

| # | New | Existing | Relationship | Rel. cert | Adjustment |
|---|-----|----------|--------------|-----------|------------|
| 1 | ocular-surface-window | `spec:tear-tcell-readout` | reinforcement (same endpoint: tear as immune readout; different arm — Sjögren's cytokine/C-fibre vs T-cell) | 0.60 | none (both speculative; window cert 0.35, tear-tcell ~0.30) |
| 2 | ocular-surface-window | `spec:ccm-cross-disease-patterns` | reinforcement (shared corneal-nerve CCM cross-disease SFN readout) | 0.65 | none (Phase 6 quality floor: no unearned bumps; both <0.40 pathway) |
| 3 | ocular-surface-window | `spec:sfn-interface-failure` | feed-into (SFN interface failure upstream → corneal nerve loss distal observable) | 0.55 | none (window is contingent observable, not independent validation) |
| 4 | mecfs-lacrimal-denervation | `spec:me-cfs-sicca-m3-antibodies` | conflict/complementary — competing sicca mechanisms (autonomic withdrawal vs M3-antibody blockade), NOT mutually exclusive | 0.50 | **unresolved tension, no change** — cert diff 0.28 vs 0.30 = 0.02 ≤ 0.10 (comparably certain) |
| 5 | mecfs-lacrimal-denervation | `cf:postcovid-ocular-syndrome` | reinforcement (post-COVID ocular dysautonomia supports autonomic-sicca route) | 0.50 | none (cf is clinical-finding, not a paired hypothesis for bumping) |
| 6 | oq:mecfs-tear-proteome | `spec:tear-tcell-readout` | feed-into (tear proteome question; T-cell axis is one proteomic dimension) | 0.60 | none (OQ has no certainty) |

## Independence validation
No pairs classified "independent" — all six share upstream mechanisms (tear fluid / corneal small fibre / dysautonomia). Confirmed genuine overlap, not lexical.

## Reinforcement chains
- SFN interface failure (`spec:sfn-interface-failure`) → corneal nerve observable (`spec:ocular-surface-neuroimmune-window`) → CCM cross-disease pattern (`spec:ccm-cross-disease-patterns`): a 3-node feed-into/reinforcement chain around the corneal-nerve-as-SFN-readout theme.
- Tear immune readout cluster: `spec:tear-tcell-readout` + `spec:ocular-surface-neuroimmune-window` + `oq:mecfs-tear-proteome` — mutually reinforcing accessible-biofluid theme.

## Conflict clusters
- Sicca-mechanism tension: `spec:mecfs-lacrimal-denervation` vs `spec:me-cfs-sicca-m3-antibodies` — two accounts of the same symptom (sicca). Flagged as unresolved tension; both retained, cross-referenced in-text (done in Phase 5). Not mutually exclusive.

## Certainty adjustments
**None applied.** Rationale:
- Per-cycle bump cap: no hypothesis received a Phase 6 bump either (citation-only tier), so no double-count risk — but no bump is *warranted* here regardless.
- Reinforcement pairs 1–2 are between speculative hypotheses (both effectively <0.40 on the ME/CFS-specific axis) → "reinforcement between two speculative hypotheses → no bump."
- Feed-into pair 3: `spec:ocular-surface-neuroimmune-window` is a contingent distal observable of `spec:sfn-interface-failure`, not an independent validation → no bump; noted as contingent in-text already (window explicitly analogical).
- Conflict pair 4: near-parity (diff 0.02) → no change, unresolved tension.

## Result
6 pairs audited: 3 reinforcement, 2 feed-into, 1 conflict (unresolved tension), 0 independent. 0 certainty bumps, 0 reductions, 1 tension flagged.
