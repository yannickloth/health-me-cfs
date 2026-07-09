# Integration Plan: Pupillometry as Autonomic Dysfunction Biomarker in ME/CFS

**Purpose:** Evaluate and integrate pupillometry as an objective autonomic-dysfunction biomarker for ME/CFS — pupillary light reflex (PLR) parameters as quantitative readout of sympathetic/parasympathetic balance, diagnostic utility, and cross-disease validation.

**Target chapters:**
- `ch20-biomarkers.typ` — PLR as biomarker (primary target)
- `ch08-autonomic-nervous-system.typ` — autonomic dysfunction readout
- `ch14d-cross-disease-comparisons.typ` — cross-disease PLR patterns (fibromyalgia, post-COVID, migraine)
- `ch05-neurological-symptoms.typ` — photophobia / autonomic ophthalmic symptoms
- `ch22-research-directions.typ` — future study designs

**Pre-identified hypotheses (from parent topic postcovid-ocular-syndrome brainstorm):**
- Pupillometry as quantifiable autonomic biomarker (idea 1.4 / 2.3 / 7.2 — cross-referenced across parent tree)

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| (populated after Phase 4 brainstorm) |

## Phase 1 — Papers Found
- 14 papers added to `bib/pupillometry.bib` + 1 reused `smit2026pupillary` = 15 total
- Search log: `content-staging/search-log-pupillometry-autonomic-biomarker-mecfs-2026-07-09.md`
- Bib keys (VERIFIED from bib): sander2025pupillometry, koay2025multimodal, parmakyener2026pupillography, master2020plr, egg2002pupillary, drummond2022crps, rizzuto2025hippus, lisowski2025pupillary, szklarski2021cd26, oeschregeni2025m3, azcue2026gpcrpupil, li2026pupil, thakar2025pupillometry, derodezbenavent2019autonomic, sendrowski1997sympathetic
- Key indirect biochemical links: Szklarski 2021 + Azcue 2026 (GPCR autoantibodies against M3 muscarinic and α1-adrenergic receptors — the exact receptors controlling pupil constriction/dilation)
- Null: Egg 2002 (pupillary unrest NOT associated with MS fatigue)

## Phase 2 — Evidence Synthesis & Integration Decision
- Decision: **PROCEED** (7 papers cert >= 0.40, >=1 paper cert >= 0.60, 13% weak papers)
- Clinical relevance: **LOW** (research-only; no validated ME/CFS pupillometry data)
- Contradictions: 1 (Egg 2002 null on hippus vs fatigue — methodological difference, not fundamental)
- Synthesis file: `content-staging/synthesis-pupillometry-autonomic-biomarker-mecfs-2026-07-09.md`

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Notes
- Parent topic: `postcovid-ocular-syndrome`
- Gate source: A (scope-escalation from Phase 5 of parent cycle)
- Cross-disease literature: pupillometry in fibromyalgia (Smit 2026 n=526), migraine, PCS/POTS, diabetes, MS
- Primary paper: Smit 2026 — large-scale pupillometry in chronic overlapping pain conditions
- Key PLR parameters: constriction amplitude, constriction latency, dilation velocity, baseline pupil diameter (dark-adapted)
- Autonomic indices from PLR: parasympathetic index (constriction), sympathetic index (dilation)

## Phase 3 — Content Development
- Environments added: 5 (ch29: 1 speculation + 2 open-questions; ch08: 1 speculation; ch14d: 1 speculation + 1 open-question + 1 limitation)
- Chapters touched: ch29-biomarker-research.typ, ch08-neurological.typ, ch14d-cross-disease.typ
- Hypothesis registry: 4 entries added
- Registry labels: pupillometry-biomarker (S, 0.30), pupillometry-pem (O), plr-gpcr-bioassay (O), pupillometry-lc-readout (S, 0.25)
- Files modified: ch29 split files (pupillary-light-reflex.typ new, autonomic-biomarkers.typ updated), ch08 split (subsec-01-neurotransmitter-abnormalities.typ), ch14d-cross-disease.typ, hypothesis-registry.typ
- Phase 3a build: PASS
- Phase 3.5: 7 environments verified, 0 missing consequence fields, all present

## Phase 4 — Brainstorm
- Brainstorm file: `content-staging/brainstorm-pupillometry-autonomic-biomarker-mecfs-2026-07-09.md`
- 27 ideas across all 12 categories
- Plan updated with N rows (populated after triage)

## Phase 4a — Hypothesis Tree
- Subtree: `subtrees/pupillometry-autonomic-biomarker-mecfs.md` with 27 nodes
- Root index updated

## Phase 5 — Tiered Integration
- Triage: 27 ideas → Tier 1 (1 integrated: 9.1 PLR composite), Tier 2 (6 tree-only — covered by Phase 3 or too speculative), Tier 3 (9 tree-only), Critical (7 integrated as OQ/limitations in ch29)
- Phase 3 dedup: 1.2, 2.1, 2.2 already covered by Phase 3 envs
- No new top-level ideas queued for child /integrate-topic (all are extensions of parent topic)
- Files modified: pupillary-light-reflex.typ (expanded with critical-category integration + composite score OQ)

## Phase 6 — Retrospective Adaptation
- 2 matches examined, 2 adapted (reinforcement: cross-references added to ch08 sympathetic-imbalance and ch15 orexin-vasomotion)
- No certainty bumps (all adaptations were cross-reference only)

## Phase 7 — Cross-Hypothesis Compatibility
- Audit file: `content-staging/compat-audit-pupillometry-autonomic-biomarker-mecfs-2026-07-09.md`
- 18 pairs classified from ~60 candidate matches
- 10 reinforcement pairs, 2 feed-into pairs, 1 conflict pair, 5 independent
- **Reinforcement clusters:** GPCR Autoantibody Cascade (H1+H3+existing GPCR framework, mean cert 0.58), LC-Noradrenergic Function (H4+existing LC hypotheses, mean 0.40), Autonomic Biomarker Complementarity (H1+H2+existing HRV/CPET-2, mean 0.42)
- **Feed-into chains:** H4→NE Circadian Oscillation (cert 0.35 — too low for bump); H1→GPCR→Mast Cell (cert 0.25 — too low)
- **Conflict:** H4 vs CCI-SCG compression (cert 0.25 — speculative conflict, different patient subsets likely; no change)
- **Certainty adjustments:** 0 bumps, 0 reductions — all denied by pipeline guards (feed-into H_a cert <0.50; conflict both <0.30)
- Cross-phase bump cap check: N/A (no bumps approved)
- Intra-cycle dependency check: N/A (no reductions proposed)
- **Plan file updated**
