# Phase 7 — Cross-Hypothesis Compatibility: Post-COVID Ocular Syndrome

Date: 2026-07-09 | Inline (main session) | Synonym map: `synonym-map-postcovid-ocular-syndrome.md`

New hypotheses this cycle: `cf:postcovid-ocular-syndrome` (0.75), `spec:tear-tcell-readout` (0.35), `spec:fl41-photophobia` (0.25), `pred:cnfd-sfn-observable` (0.35), + registry: triad-instance (0.65), tear-biomarker (0.30), strabismus-oculomotor (0.45).

## Step 1 — Compatibility audit (candidate pairs via shared mechanism terms)

| New item | Existing hypothesis | Shared terms | Relationship | Rel. certainty |
|----------|--------------------|--------------|--------------|----------------|
| `pred:cnfd-sfn-observable` | `eq:sfn-dynamics` (SFN ODE, ch41) | small fiber, fiber density, corneal nerve | **FEED-INTO** (operationalizes F as observable) | 0.70 |
| `pred:cnfd-sfn-observable` | `hyp:drg-sfn-igg-mecfs` (0.55) | SFN, corneal nerve | REINFORCEMENT (cross-tissue SFN measure) | 0.45 |
| `spec:tear-tcell-readout` | `hyp:tcell-exhaust-ev-downstream` (0.45) | T cell, CD4/CD8, PD-1, exhaustion | **FEED-INTO** (tear = accessible readout of same dysregulation) | 0.55 |
| `cf:postcovid-ocular-syndrome` | FM-POTS-ME/CFS SFN triad (0.35, ch14d) | SFN, dysautonomia, immune dysregulation | REINFORCEMENT (ocular instance of triad) | 0.50 |
| `cf:postcovid-ocular-syndrome` | `hyp:aag-lookalike` (0.25, ch10) | pupillary, autonomic | REINFORCEMENT (pupillary dysautonomia externally shown) | 0.40 |
| `cf:postcovid-ocular-syndrome` | `spec:retinal-corneal-cns-window` (0.25) | corneal, retinal, CNS window | REINFORCEMENT (corneal arm corroborated) | 0.60 |
| `spec:fl41-photophobia` | central-sensitization photophobia (ch15) | photophobia, light sensitivity | **INDEPENDENT** (peripheral autonomic vs central mechanism — complementary, not competing) | — |
| `spec:tear-tcell-readout` | `spec:me-cfs-sicca-m3-antibodies` (0.30) | tear, lacrimal, ocular surface | weak-FEED-INTO (tear proteomics as shared biomarker platform) | 0.35 |

**Independence validation:** `fl41-photophobia` vs central-sensitization photophobia — verified they share the *symptom* (photophobia) but NOT the upstream mechanism (autonomic pupil control vs descending inhibition loss). Genuinely complementary; classified independent (not reclassified).

## Step 2 — Reinforcement chains & conflict clusters
- **Chain:** `hyp:tcell-exhaust-ev-downstream` → `spec:tear-tcell-readout` (systemic T-cell dysregulation → tear readout).
- **Chain:** `eq:sfn-dynamics` → `pred:cnfd-sfn-observable` (model → non-invasive observable) → `cf:postcovid-ocular-syndrome` (empirical corneal SFN).
- **Cluster (reinforcement):** cf:postcovid-ocular-syndrome + FM-POTS-SFN triad + aag-lookalike + retinal-corneal-window — all converge on "post-viral dysautonomia+SFN measurable in accessible tissue."
- **Conflicts:** NONE.

## Step 3 — Certainty adjustments
**0 bumps applied.**
- Feed-into `spec:tear-tcell-readout` (0.35) from `hyp:tcell-exhaust-ev-downstream` (0.45): both speculative-tier; upstream cert < 0.50 → no contingent bump per rule ("feed-into requires upstream cert ≥0.50" — 0.45 fails).
- Reinforcement pairs where both partners < 0.30 (fl41, sicca): no bump (mutual reinforcement itself speculative).
- `cf:postcovid-ocular-syndrome` (0.75) reinforces several existing claims but is itself the new item; existing claims not bumped because reinforcement is cross-disease (post-COVID→ME/CFS), not ME/CFS-specific — same conservatism as Phase 6.
- Per-cycle bump cap (1 across Phases 6+7): unused, deliberately reserved.

## Report line
Phase 7: 8 pairs audited — 3 reinforcement, 3 feed-into, 1 weak-feed-into, 1 independent; 0 conflicts; 0 certainty bumps (0 reductions, 0 tensions). No mutually-exclusive groups.
