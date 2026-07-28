# Integration Guide: charlton2026-muscle-bedrest

**Paper:** Charlton BT, Slaghekke A, Appelman B et al. "Skeletal muscle properties in long COVID and ME/CFS differ from those induced by bed rest." *Nat Commun* (2026).

**Phase 2 decision:** PROCEED | **Clinical relevance:** MEDIUM | **Date:** 2026-07-28

## Tier Assignments

| Tier | Ideas | Rationale |
|------|-------|-----------|
| Tier 1 (full integration) | OXPHOS-VO₂max uncoupling hypothesis, bed rest rebuttal achievement, glycolytic shift + Type I atrophy findings | High-certainty published data from Nature Communications with direct bed rest comparator. Directly refutes deconditioning narrative. |
| Tier 2 (ch30 citation) | OXPHOS-VO₂max uncoupling as mitochondrial dysfunction indicator, Type I atrophy as disease-specific signal, capillary density divergence | Mechanistically anchored but single-lab, single-cohort. Cascade tracing not justified for a correlation-design finding (see Phase 5d gateway check below). |
| Tier 3 (citation only) | All 35 brainstorm ideas from Phase 4 | Future research directions, untested interventions. |

## Chapter Integration Map

| ch20-universal-mechanisms | Updated glycolytic shift bullet with bed rest comparator; updated capillary bullet with divergent density finding; added Type I atrophy bullet; added OXPHOS-VO₂max uncoupling bullet; added `#fhypothesis: OXPHOS-VO₂max Uncoupling`; added `#achievement: Bed Rest Fails to Reproduce ME/CFS Muscle Phenotype`; updated code:sc-depletion-structural-ratchet to cross-reference full paper; updated code:sc-depletion-primary-vs-secondary bullet #4 |
| ch11-cardiovascular | Updated sec-09 summary to cite Charlton2026MuscleBedrest alongside Charlton2026pem editorial |
| ch07-energy-metabolism | Updated PEM connection subsec-16 to cite deconditioning rebuttal |
| hypothesis-registry | Added 2 entries: OXPHOS-VO₂max uncoupling (FH, cert 0.65) + Bed rest achievement (A, cert 0.85) |

## Phase 5d — Cascade Tracing Decision

**Gateway check:** OXPHOS-VO₂max uncoupling mechanism has ≥3 biochemical steps? PARTIAL — the chain is: mitochondrial ETC assembly → OXPHOS capacity → O₂ consumption → VO₂max. The intermediate step (O₂ extraction by muscle) is well-defined. At least one existing ch33 sec-12 drug that plausibly intercepts? YES — pyridostigmine (improves microvascular perfusion via AChE inhibition), NAD⁺ precursors (improve mitochondrial complex function). **However:** the finding is correlation-design (change in VO₂max after raising OXPHOS has not been prospectively tested), and placing it as a standalone cascade risks overclaiming. **Decision: skip standalone cascade entry** — the mechanism is captured insec-02 and sec-08 existing section files. The `#fhypothesis` in ch20 provides the falsifiability framework. If future interventional data confirms the uncoupling, a cascade entry with drug-to-node mapping is warranted.

## Ch30 Cross-References

- **sec-02 (mitochondrial):** Existing PDH/subcomplex content already covers mitochondrial dysfunction. The OXPHOS-VO₂max uncoupling finding strengthens this section's claim that mitochondrial impairment is disease-intrinsic — no new file needed, but the finding should be cross-referenced via `@fhyp:oxphos-vo2max-uncoupling` in any future sec-02 edits.
- **sec-08 (integrative):** The bed rest comparator finding that five distinct phenotypic dimensions diverge between patients and deconditioning is an integrative claim — it links mitochondrial, microvascular, fiber type, and ventilatory domains into a unified refutation.
- **sec-09 (convergence patterns):** The shared glycolytic shift in both Long COVID AND ME/CFS, with ME/CFS diverging further (Type I atrophy), is a convergence pattern: two post-infectious conditions share a muscle phenotype absent from bed rest controls.
- **sec-12 (medication reference):** No new drug entries — the paper is purely mechanistic, no treatment recommendations.
- **sec-13 (pharmacodiagnostic matrix):** No new rows needed — no drug response data.

## Certainty Bump Log

No bumps applied in this cycle — the primary paper is new evidence, not a reinforcement of an existing hypothesis. Existing hypotheses that got strengthened (satellite cell depletion, glycolytic shift, capillary rarefaction) already had their certainties set from prior cycles; this paper confirms them but does not materially change their certainty estimates beyond what is already encoded.

## Phase 4a — Hypothesis Trees

No new subtree needed — the 35 brainstorm ideas are stored in `ops/brainstorms/brainstorm-charlton2026-muscle-bedrest-2026-07-28.md` as a future-cycle backlog. The Tier 1 claim (OXPHOS-VO₂max uncoupling) is already in the document via `@fhyp:oxphos-vo2max-uncoupling` in ch20.

See `ops/plans/hypotheses-trees/subtrees/megc-integration.md` if this topic connects to the broader muscle/exercise tree — the Charlton 2026 paper should be a child node there under the "deconditioning rebuttal" branch.
