# Integration Plan: Biofabricated 3D Skeletal Muscle Exposed to CFS/Long COVID Sera

**Topic slug:** `biofabrication-mughal-3d-muscle-cfs-sera`
**Topic:** Queue row 8 — Mughal S (Barcelona), 2025. "Metabolic adaptation & fragility in healthy 3D skeletal muscle exposed to CFS & Long COVID sera."
**Source:** Biofabrication / tissue-engineering in vitro study (3D engineered skeletal muscle).
**Date:** 2026-08-10
**Parent topic:** root — no brainstorm origin (Original gate). Standalone invocation.
**MIXED/CONCURRENT mode:** tree has unrelated changes (Komaroff/Dantzer cycle active uncommitted; Peppercorn committed). All git ops use explicit file lists; no `git add -A`; no shared-branch WIP commits; no `git reset`/rebase/--amend; rollback = `git checkout <ref> -- <file>`.

## Purpose

Evaluate whether a healthy biofabricated 3D skeletal-muscle tissue, exposed to sera from ME/CFS and Long COVID patients, shows reproducible *metabolic adaptation and fragility* — i.e. patient sera induces an in-vitro metabolic phenotype (altered fuel utilization, reduced contractile/resilience capacity) in otherwise-healthy muscle. If so, this supports a circulating serum factor model of muscle metabolism and identifies the 3D tissue model as a mechanism-extraction platform for PEM.

## Target Chapters

- ch07 (energy metabolism) — sec-02 glycolysis, sec-21 metabolic trap, sec-19 lactate, sec-24 energy utilization beyond ATP
- ch20 (universal mechanisms) — if a serum-factor / structural-integrity claim generalizes
- ch14d (cross-disease — Long COVID vs ME/CFS shared muscle pathology, via cross-refs)
- ch30 cascade — only if ≥3-step drug-interceptable causal chain (likely NOT — in-vitro model, correlational)
- hypothesis registry

## Pre-identified Hypotheses (preliminary)

| Hypothesis | Prelim certainty | Notes |
|-----------|------------------|-------|
| A serum-borne factor in ME/CFS/LC reprograms healthy muscle metabolism toward fragility | 0.30–0.40 | In-vitro model, human sera; needs other-model + direct validation |
| 3D biofabricated muscle is a mechanistically informative platform for PEM metabolite studies | 0.30 | Platform claim, not a mechanism |
| Metabolic adaptation implicates substrate-shift (gluconeogenic/waste) consistent with ch07 metabolic-trap | 0.25 | If Mughal shows specific fuel-switch |

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1.1 | Three-phase PDH compensatory-trap → mitochondrial collapse cascade | 1 | 0.30 | ⬜ | ch07 sec-21; reconciles hyper/hypometabolic |
| 1.2 | Toroidal mitochondrial morphology as disease-specific EM signature | 2 | 0.20 | ⬜ | EM marker proposal; not yet integrated |
| 1.3 | Circulating serum factor is multi-component cocktail | 1 | 0.22 | ⬜ | ch20; explains single-cytokine trial failures |
| 1.4 | ME/CFS vs LC distinguishable 3D muscle phenotype | 2 | 0.15 | ⬜ | diagnostic-grey-zone differentiator |
| 2.1 | Serum fractionation pipeline for mediator ID | 1 | 0.35 | ⬜ | highest priority research; not document env |
| 2.2 | 3D muscle as drug-screening assay | 2 | 0.28 | ⬜ | → covered by spec:3d-biofab-muscle-platform |
| 2.3 | Serial time-point multi-omics with PDH activity | 1 | 0.30 | ⬜ | research proposal |
| 2.4 | Blinded cross-disease serum comparison | 2 | 0.25 | ⬜ | research proposal |
| 3.1 | DCA as PDH activator probe (in-vitro) | 1 | 0.20 | ⬜ | probe only; neurotoxic ⚠️ |
| 3.2 | Cytokine blockade screening panel ex-vivo | 2 | 0.16 | ⬜ | research probe |
| 4.1 | PDH cofactor cocktail (thiamine+riboflavin+ALA) | 1 | 0.25 | ⬜ | medical-supervision; actionable candidate |
| 4.2 | NAC as Phase II→III redox buffer | 2 | 0.18 | ⬜ | supplement proposal |
| 5.1 | Immunoadsorption ex-vivo pre-treatment | 1 | 0.22 | ⬜ | mediator-identity probe |
| 6.1 | Phase-specific sequential intervention | 2 | 0.16 | ⬜ | combo proposal |
| 10.1 | In-vitro→in-vivo translation gap | 1 | 0.50 | ⬜ | critical caveat — embed in envs |
| 10.2 | Deconditioning confound not fully eliminated | 1 | 0.30 | ⬜ | critical caveat — bed-rest serum control |
| 11.1 | Hypermetabolic phase must not justify exertion | 1 | 0.40 | ⬜ | safety — pacing reinforcement |
| 12.1 | Single un-replicated in-vitro study | 1 | n/a | ⬜ | evidence-quality caveat (already in env) |
| 12.2 | Pooled sera mask individual variability | 1 | n/a | ⬜ | evidence-quality caveat (already in env) |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Active Caps — notes
PROCEED threshold met: 4 papers cert ≥ 0.40 (Appelman 0.68, Fluge 0.52, Nilsson 0.47, Schreiner 0.41); 1 ≥ 0.60 (Appelman 0.68); 4/8 < 0.40 = 50% (allowed). Anchor Mughal in-vitro capped 0.26. Circular factor hypothesis supported cross-model.

## Phase Log

| Phase | Status | Detail |
|-------|--------|--------|
| 0 | 🔵 | Plan created. Standalone, Original-gate. |
| 1 | ✅ | 8 papers, bib in musculoskeletal.bib (6) + immune.bib (1) + energy-metabolism.bib (1). Appelman 0.68, Fluge 0.52, Nilsson 0.47, Schreiner 0.41, Charlton 0.36, Mughal 0.26, FernandezGaribay 0.28, FernandezGuerra 0.24. Search log + lit summary in ops/research/. Integration guide in ops/integration-guides/. |
| 2 | ✅ | PROCEED. 4 papers cert≥0.40, 1≥0.60, 4/8<0.40 (50% allowed), not uniformly null. Clinical relevance MEDIUM. Contradiction: hypermetabolic short-exposure vs PDH hypometabolic — resolved via biphasic temporal framing / open-question. Caps: all allowed. |
| 3 | ⬜ | |
| 3a | ⬜ | |
| 3b | ⬜ | |
| 3.5 | ⬜ | |
| 4 | ✅ | scientific-insight-generator: 18 ideas / 21-tree-nodes, all categories. Strongest mech=1.1 (three-phase collapse); most actionable=4.1 (PDH cofactor cocktail); best expl=1.1. Brainstorm: ops/brainstorms/brainstorm-biofabrication-mughal-3d-muscle-cfs-sera-2026-08-10.md |
| 4a | ✅ | Subtree created (21 nodes). Root index updated. |
| 5 | ✅ | 20 brainstorm ideas triaged. Ph3-dedup + ch30 triage. Integrated: spec:pdh-three-phase-cascade (1.1, ch07), spec:serum-factor-multicomponent (1.3, ch20), spec:toroidal-mitochondrial-signature (1.2, ch20), lim:in-vitro-deconditioning-serum-conf (10.2, ch20), oq:serum-fractionation-mediator (2.1, ch20). Critical cats 10/11/12 embedded. ch30 tier: cascade-trace-only (R=1, cert 0.26-0.30, ops-only); no sec-12/13/09 chapter edits (no drug ≥0.40 specificity). C=0,D=0,F=2,N=0,G=0. |
| 5c | ↔️ | Not a medication/treatment topic; intercepting drugs have no differential-diagnostic specificity in ME/CFS (see trace pruning). LEGIT-SKIP. |
| 5d | ✅ | Ops-only cascade trace (1 branch, 5 steps, 4 drug→node, 3 probes). No ch30 chapter files. Trace: ops/integration-guides/pathway-drug-trace-biofabrication-mughal-3d-muscle-cfs-sera.md |
| 5b | ✅ | Build PASS |
| 5a | ✅ | falsifiability-auditor: 5 FULLY / 0 WEAK / 0 unfalsifiable / 3 exempt-by-type. 1 registry gap (toroidal) fixed. Bib 9/9, claim-fidelity 3/3. |
| 5z | ✅ | 3 glossary entries added (biofabrication, myotube, toroidal); glossary.json now 1268 entries |
| 6 | ✅ | Retro adaptation: reinforced ch37 cell-culture (Fluge) circulating-factor claim with cross-ref @hyp:serum-factor-biphasic-muscle + @spec:pdh-three-phase-cascade + @Appelman2024MusclePEM. No certainty bumps (conservative default; in-vitro evidence <0.40 deferred). Synonym map: tmp/synonym-map-biofabrication-mughal-3d-muscle-cfs-sera.md |
| 7 | ✅ | 6 reinforcement pairs, 3 feed-into pairs (H2→H1→E5, H3→H1→E5), 0 conflict, 2 independent (1 reclassified from independent: H1 vs cell-intrinsic PBMC = weak-reinf). Certainty adjusted: 0 bumps, 0 reductions (all pairs speculative <0.40). Compat audit: tmp/compat-audit-biofabrication-mughal-3d-muscle-cfs-sera-2026-08-10.md |
| 8 | ✅ | Build PASS (confirmed multiple times during integration). |
| 9 | ✅ | Net cert change 0.00; 2:0 reinf:contra; 5 new falsifiable predictions; ~2100 words; clinical relevance MEDIUM. FLAGS: NONE (WEAK-EVIDENCE not fired 50%≤50%; CLINICAL-RISK/BLOAT/G not fired). |
| 10 | ✅ | Coherence: 0 inconsistencies across ch20/ch07/ch37/registry. All new envs have Consequence:. Coherence audit: tmp/coherence-audit-biofabrication-mughal-3d-muscle-cfs-sera-2026-08-10.md |
| 10a | ✅ | #synthesis @syn:biofabrication-serum-factor-model added to ch20 Family 17 (after oq:serum-fractionation-mediator), condensing 6 envs across ch20+ch07. |
| 10b | ↔️ | Downstream/non-actionable synthesis (muscle-level; no trigger-vs-amplifier/amplifier/diagnostic-bifurcation/treatment-strategy implication). No framing propagation needed. |
| 11 | ⬜ | |
| 12 | ⬜ | |
| 12.5 | ⬜ | |
| 13 | ⬜ | |

## Certainty Bump Log

(single source of truth for bump-rate enforcement — populate in Phases 6/7.)
