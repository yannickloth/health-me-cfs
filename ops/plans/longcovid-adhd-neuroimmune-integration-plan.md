# Long Covid–AD(H)D Neuroimmune Framework — Integration Plan

**Purpose:** Integrate Spanoghe et al. 2026 (Brain Behav Immun) — a translational viewpoint proposing convergent neuroimmune mechanisms linking Long Covid and AD(H)D, and a precision-immunopsychiatry framework. Evaluates whether this hypothesis-generating framework warrants addition to the ME/CFS cross-disease ADHD content.

**Origin:** user request 2026-08-20 — /integrate-topic on newly-filed Spanoghe 2026 paper (Literature/comorbidities/Spanoghe_2026_LongCovidADHDNeuroimmune/).

## Target chapters
- `part2-pathophysiology/ch17-speculative-hypotheses/ch14d-cross-disease.typ` (ADHD–ME/CFS–Long Covid shared mechanisms)
- `part4-research/hypothesis-registry.typ` (new/updated hypothesis entries)
- `appendices/appendix-h-annotated-bibliography.typ` (annotate Spanoghe 2026 + any newly-adopted primary sources)
- `bib/neurology-comorbidities.bib` (primary entries; Spanoghe viewpoint itself if cited)

## Pre-identified hypotheses (from paper)
- **Four converging LC–AD(H)D mechanisms** (framework, cert ~0.35–0.50 as a *framework* — no primary data in this viewpoint; individual cited mechanisms carry their own evidence): (1) frontal–striatal–hippocampal dysfunction; (2) neuroimmune dysregulation of catecholamine systems; (3) tryptophan–kynurenine dysregulation; (4) mitochondrial bioenergetic defects.
- **"Neuroimmune-mediated dopaminergic/noradrenergic dysfunction"** as an acquired, post-infectious analog (cert low — proposal).
- **Off-label ADHD pharmacotherapy in LC** (methylphenidate, guanfacine, low-dose lithium, dexamfetamine) — clinical observations, partial response, PEM/autonomic limitations (cert ~0.35–0.45, off-label clinical experience + case reports).
- **Precision-immunopsychiatry via immune subtyping** for LC/ADHD stratification (framework proposal).

## Working-tree state
**CLEAN-ish** — only topic's own untracked Literature folder + coordination ledger (`agentfeed/ledger.jsonl`) present. No parallel session files in tree at start. Treat as CLEAN mode for scratch-pointer checkpoints; all git ops scoped by explicit file list (no `git add -A`).

## Phase 2 — Decision (to be filled)

## Active Caps (set by Phase 2 — decision: pending)

## Tracking table
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | Four convergent LC–AD(H)D neuroimmune mechanisms | — | framework ~0.43 (discounted) | ⬜ Phase 1 done | 14 papers; mechanism 3 best-supported (Cysique 0.55); mech 4 heavily corroborated in ME/CFS |
| 2 | Neuroimmune-mediated dopaminergic/noradrenergic dysfunction (acquired) | — | low, speculative | ⬜ Phase 1 done | contradicted by Zemer2024 null; competing causal-direction interpretation |
| 3 | Off-label ADHD pharmacotherapy in LC | — | ~0.34–0.55 | ⬜ Phase 1 done | FesharakiZadeh 0.38, Koonce 0.55, Krishnan 0.34 |
| 4 | Precision-immunopsychiatry immune-subtyping framework | — | low, proposal | ⬜ Phase 1 done | framework proposal, no data |

## Phase 1 — Literature Research (2026-08-20)
- **Papers found/included:** 14 new bib entries (1 anchor + 13 newly-added primary sources). Corroborating 13; null 1.
- **Corroborating mechanistic (6):** Cysique2023KynureninePASC, Rassoulpour2005KynurenicAcid, Sarkar2010DopamineImmunoreg, Feng2021DopamineImmunomodulatory, Tanaka2022MitoKynurenine, Xu2025MitoComplexesADHD.
- **Corroborating clinical (2):** FesharakiZadeh2023Guanfacine, Krishnan2022BrainFogMultidisciplinary.
- **Corroborating epidemiological (4):** Koonce2024LongCovidStimulant, Merzon2022LongCovidADHDYouth, Gimbach2024ADHDMedicationEurope, Ferrara2023CovidADHD.
- **Null (1):** Zemer2024COVIDADHD20Year (20-yr national cohort: no independent COVID effect on ADHD dx/tx).
- **Already-present (NOT re-added, deduplicated by DOI):** Verma2016ADHDcybrid, Molnar2024LCmitochondria, Shankar2025oxidativestress (energy-metabolism.bib), Braga2023NeuroinflammationCOVID (long-covid.bib), plus kynurenine-excitotoxicity corpus.
- **Contradiction:** Zemer2024 (null) vs Koonce2024/Gimbach2024/Merzon2022 (positive). Fundamental-frame conflict (infection-driven ADHD vs catch-up/symptom-overlap). Certainty diff ≤0.15 → present as `#open-question`.
- **Highest discounted certainty:** Zemer2024 0.60, Cysique2023 0.55, Koonce2024 0.55.
- **Files written:** `ops/research/search-log-longcovid-adhd-neuroimmune-2026-08-20.md`, `ops/research/literature-summary-longcovid-adhd-neuroimmune.md`, bib/neurology-comorbidities.bib, appendix-h, registry/scrape-registry.md.

## Active Caps (set by Phase 2 — decision: pending)

## Certainty bump log
(empty at creation)

## Notes
- Viewpoint paper = no primary data; certainty of the *framework* must be treated cautiously (population-relevance discount applies; framework is a hypothesis-generating synthesis of cited primary studies).
- Related existing plans: adhd-nrf2-adultonset-update, adhd-asd-comorbidity, adhd-same-causes-mecfs, shared-mechanisms-fibromyalgia-mecfs-longcovid.
- Relevant bib: `bib/neurology-comorbidities.bib` (SaezFrancas2012adhdcfs, Quadt2024neurodivergentfatigue already present).

## Phase 2 — Decision (PROCEED)
**Synthesis:** Shared-mechanism claim (kynurenine/catecholamine/mitochondrial convergence) is well-corroborated (10 papers ≥0.40; 29% <0.40). The causal "infection drives ADHD" claim is contradicted by Zemer2024 (null, 0.60, highest-certainty paper) → handled as `#open-question` per band rule (cert diff ≤0.15). Viewpoint anchor treated cautiously (no primary data).
**Decision: PROCEED** (with mandatory open-question framing for the acquired-ADHD/causal claim).
**Clinical relevance:** MEDIUM — mechanistic context; off-label ADHD Rx is clinical observation only, no dosing, PEM/autonomic cautions.
**Contradictions:** 1 fundamental-frame (Zemer null vs positives) → open-question framing.
**Epistemic checklist:** #1 ✓ / #2 ✓ / #3 ✓ / #4 ✓ / #5 ✓ / #6 ⚠ (off-label Rx — observational only, not recommendation).

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all (speculation/open-question/limitation + hypothesis-box where cert supports)
- #hypothesis-box / #fhypothesis: allowed BUT forbidden for the causal "infection→ADHD" claim (must be #open-question due to Zemer2024)
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none (shared mechanism well-corroborated)

## Provenance note
User-supplied hint (Tomaso Antonacci, Spanoghe2026 co-author): directed to https://www.sciencedirect.com/science/article/pii/S0889159125004234 (Spanoghe et al., BBI 2026) "pour compléter le post sur l'enjeu neuro-inflammatoire et immunitaire du TDA/H" — to complement the ADHD blog article series' neuro-inflammatory/immune angle. Confirms integration framing as neuroimmune cross-disease. This provenance also reinforces the user's follow-up request to port findings into the ADHD blog series.

## Phase 12 — Plan Record
**Cycle summary (2026-08-20):** Integrated Spanoghe et al. 2026 (BBI 131:106181) Long Covid–AD(H)D neuroimmune framework into the ME/CFS paper.
- **Decision:** PROCEED (shared-mechanism claim well-corroborated; causal "infection→ADHD" claim held as open-question per Zemer2024 null + band rule).
- **Environments added (ch14d):** `@oq:lc-adhd-acquired-causal` (open-question, cert 0.40), `@spec:lc-adhd-neuroimmune-shared-substrate` (speculation, cert 0.35), `@spec:mito-kynurenine-nad-sink` (speculation, cert 0.40).
- **Registry:** 3 entries added (dated block 2026-08-20).
- **Bib:** 14 entries added to neurology-comorbidities.bib (research_stream = longcovid-adhd-neuroimmune); appendix-h annotated.
- **Brainstorm:** 49 ideas (ops/brainstorms/brainstorm-longcovid-adhd-neuroimmune-2026-08-20.md); subtree created (49 nodes). 1 idea (1.4) integrated; 48 left pending (anti-over-anchoring a viewpoint).
- **Key null engaged:** Zemer2024 (no independent COVID→ADHD effect) handled as open-question, not suppressed.
- **Safety gate:** PASS (off-label Rx observational, disclaimed, PEM/autonomic cautions).
- **Phase 11:** converged (2 clean rounds).
- **Files:** ch14d-cross-disease.typ, hypothesis-registry.typ, neurology-comorbidities.bib, appendix-h-annotated-bibliography.typ, registry/scrape-registry.md, plan, research (search-log + lit-summary), brainstorm, subtree, hypotheses-trees.md.
