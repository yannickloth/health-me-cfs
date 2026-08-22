# Saffron (Crocus sativus) — Integration Plan

**Purpose:** Evaluate whether saffron (Crocus sativus), proposed by Tomaso as a
microbiome/tryptophan modulator, warrants integration. Saffron has an RCT literature on
serotonergic/mood modulation but is entirely absent from the paper. CONDITIONAL candidate —
evidence must establish relevance to ME/CFS or the tryptophan/serotonin axis, not just general mood.

**Target chapters (provisional):** tryptophan/serotonin axis (ch52, ch34, ch14d if cross-disease),
serotonergic bottleneck, gut-microbiome, mood/fatigue overlap.

**Pre-identified hypotheses:** none yet.

## Working mode
MIXED — unrelated WIP present (src/build/*, src/main/quarto/_quarto.yml). No shared-branch WIP
commits; rollback = `git checkout <ref> -- <file>`. Scope by explicit file lists, NOT `git diff`.

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY (PARTIAL)
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45 (PARTIAL)
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (PARTIAL — skip 3–9)
- Certainty bumps (Phases 6–7): capped: no bump may cross 0.45 (PARTIAL)
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL)

## Tracking Table
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| Phase 1 | 14 papers added (treatments.bib + gut-microbiome.bib), search-log + lit-summary written | — | — | ✅ done | Axis + microbiome-tryptophan relevance MET; 0 primary-ME/CFS trials; Amadieu null |
| Phase 2 | Synthesis written; decision PARTIAL | — | — | ✅ done | tmp/synthesis-saffron-tryptophan-serotonin-2026-08-22.md |
| Phase 3 | 1 speculation (ch18 subsec-05 SSRI-paradox), appendix-f drug-interaction note, registry row | — | 0.20 | ✅ done | spec-saffron-serotonergic-kynurenine-modulator.typ; registry @spec:saffron-serotonergic-kynurenine-modulator |
| Phase 3a | Intermediate build | — | — | ✅ done | nix build PASS (0 errors) |
| Phase 3b | Safety gate | — | — | ✅ done | tmp/safety-gate-saffron.md — all PASS; items 5-7 N/A (non-recommendation) |
| Phase 3.5 | Consequence verification | — | — | ✅ done | Consequence field present in speculation |
| Phase 4 | Brainstorm (PARTIAL: cats 1-2,10-12) | — | — | ✅ done | 13 ideas (4H,4R,5C10,3N11,5E12); ops/brainstorms/brainstorm-saffron-tryptophan-serotonin-2026-08-22.md |
| Phase 4a | Hypothesis tree | — | — | ✅ done | subtrees/saffron-tryptophan-serotonin.md (13 nodes); root index updated |
| Phase 5 | Tiered integration | — | — | ✅ done | Dedup: H1-H3, C10.x covered-by spec:saffron-serotonergic-kynurenine-modulator; R1-R4 = Tier 3 tree-only. No new envs (PARTIAL). Ch30 tier: citation/none (cert 0.20, probe not treatment) |
| Phase 5b | Intermediate build | — | — | ✅ done | nix build PASS (0 errors) |
| Phase 5c | Differential analysis | — | — | LEGIT-SKIP | No human ME/CFS evidence (0 trials); not a recommended treatment. Skip condition fires. |
| Phase 5d | Pathway→drug cascade | — | — | LEGIT-SKIP | cert 0.20 < 0.30; probe/caution not a treatment cascade; no existing sec-12 interception. |
| Phase 5a | Falsifiability sweep | — | — | ✅ done | Inline (speculation testable-prediction + registry Falsifiability field present); falsifiability-auditor agent missing — user approved inline |
| Phase 5z | Glossary review | — | — | ✅ done | +5 entries (Saffron, Crocin, Crocetin, Safranal, Serotonin syndrome); JSON valid |
| Phase 6 | Retrospective adaptation | — | — | ✅ done | Safety-critical: saffron serotonin-syndrome warning added to appendix-f (Căuș2026). No prose claims adapted — saffron absent from pre-existing prose; SSRI-paradox reinforcement evidence <0.40 (no edit per quality floor). synonym-map written |
| Phase 7 | Cross-hypothesis compat | — | — | ✅ done | 4 pairs audited (reinforcement w/ SSRI-paradox; feed-in w/ peripheral+kynurenine; independent w/ peripheral-serotonin-convergence). 0 bumps, 0 reductions (all speculative; PARTIAL caps). tmp/compat-audit-saffron-2026-08-22.md |
| Phase 8 | Build verification | — | — | ✅ done | nix build PASS (0 error lines) |
| Phase 9 | Quality assessment | — | — | ✅ done | WEAK-EVIDENCE fired (PARTIAL); no BLOAT/CLINICAL-RISK/G-UNSUSTAINED; net certainty 0 |
| Phase 10 | Cross-chapter coherence | — | — | ✅ done | 1 finding (missing SSRI-paradox xref) FIXED; coherence-audit written; no contradictions |
| Phase 10a | High-level synthesis | — | — | LEGIT-SKIP | Single standalone environment (1 new speculation) — trigger (≥2 convergent envs) NOT met |
| Phase 10b | Strategic-framing propagation | — | — | LEGIT-SKIP | No synthesis env to propagate; single non-actionable supplement caution; no framing-layer implication |
| Phase 11 | Review to convergence | — | — | ✅ done | Full tier. 11a review-convergence: CONVERGED (2 clean rounds). 11b adversarial: CONVERGED (2 passes, zero HIGH/CRITICAL; 1 MEDIUM kynurenine-limb finding FIXED). 11c review-typst: CONVERGED (2 clean rounds, build 0 errors). SLOW-CONVERGENCE: not fired |

## Certainty Bump Log
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty) | | | | | |

## Phase 12 (plan record)
- **Topic slug:** saffron-tryptophan-serotonin | **Decision:** PARTIAL (WEAK-EVIDENCE)
- **Environments added:** 1 `#speculation` (`spec:saffron-serotonergic-kynurenine-modulator`, ch18 subsec-05 SSRI-paradox section); 1 appendix-f supplement-drug interaction note; 1 registry row; 5 glossary entries
- **Bib:** 14 papers added (treatments.bib + gut-microbiome.bib), annotated in appendix-h (sec:bib-saffron)
- **Key finding + why it matters:** Saffron is an UNPROVEN serotonergic agent in ME/CFS — its SERT+MAO inhibition carries serotonin-syndrome risk with SSRIs/MAOIs and may worsen ME/CFS under the hyper-serotonergic (SSRI-paradox) model. Zero primary-ME/CFS trials; a null RCT (Amadieu2025) on fatigue. Conditionally relevant only via the tryptophan/serotonin/kynurenine + gut-microbiome axis — NOT as a treatment.
- **Phase 9 quality flags:** WEAK-EVIDENCE (PARTIAL evidence base)
- **Phase 2 clinical relevance:** MEDIUM (mechanistic + safety caution; not a treatment)
- **External-contact source (Tomaso):** integrated as a caution/probe, NOT as a recommended treatment; no provenance for any clinical benefit claim.

## Phase Ledger
Walked at Phase 12.5 (2026-08-22). Every row RAN / LEGIT-SKIP — zero OMISSION.

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file created + validated |
| 1 | RAN | search-log + 14 bib entries + appendix-h (verified on disk) |
| 2 | RAN | tmp/synthesis-saffron-tryptophan-serotonin-2026-08-22.md; decision PARTIAL |
| 3 | RAN | 1 speculation (ch18) + appendix-f note + registry row; build PASS |
| 3a | RAN | nix build PASS (0 errors) |
| 3b | RAN | tmp/safety-gate-saffron.md — all PASS; items 5-7 N/A (non-recommendation) |
| 3.5 | RAN | Consequence field present in speculation |
| 4 | RAN | ops/brainstorms/brainstorm-saffron-tryptophan-serotonin-2026-08-22.md (13 ideas, PARTIAL cats) |
| 4a | RAN | subtrees/saffron-tryptophan-serotonin.md + root index updated |
| 5 | RAN | dedup + Tier 3; ch30 tier citation/none |
| 5b | RAN | nix build PASS |
| 5d | LEGIT-SKIP | cert 0.20 < 0.30; probe not a treatment; no sec-12 interception |
| 5c | LEGIT-SKIP | no human ME/CFS evidence; not a recommended treatment |
| 5a | RAN | inline falsifiability (speculation + registry) — falsifiability-auditor agent missing, user approved inline |
| 5z | RAN | +5 glossary entries (Saffron, Crocin, Crocetin, Safranal, Serotonin syndrome) |
| 6 | RAN | safety-critical appendix-f warning; synonym-map written |
| 7 | RAN | 4 pairs audited; 0 bumps (all speculative, PARTIAL caps) |
| 8 | RAN | nix build PASS (0 error lines) |
| 9 | RAN | WEAK-EVIDENCE fired; quality summary appended |
| 10 | RAN | coherence-audit; 1 xref fix applied |
| 10a | LEGIT-SKIP | single standalone environment (trigger ≥2 envs not met) |
| 10b | LEGIT-SKIP | no synthesis env; single non-actionable caution; no framing implication |
| 11 | RAN | Full tier; 11a/11b/11c all CONVERGED |
| 12 | RAN | plan-record summary written |
| 12.5 | RAN | this ledger |
| 13 | RAN | commit (Phase 13) |

Governor re-audit: all artifacts verified on disk (search-log, bib keys, appendix-h, speculation, registry, subtree, glossary, safety-gate, synth, compat, coherence). Build PASS (0 errors). Falsifiability + Consequence present. Registry updated. Bib keys resolve case-exact. No OMISSION, no WAIVED.