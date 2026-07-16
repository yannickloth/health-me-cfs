# Integration Plan: Herpesvirus Antibody Persistence Decades After Acute Infection

**Purpose:** Investigate why herpesvirus antibodies (EBV, HHV-6, CMV, VZV) remain highly concentrated decades after primary infection — is this proof of ongoing viral presence/reactivation, or does it reflect normal long-lived plasma cell / immunological memory biology? What does the evidence say about the chemical and mechanistic basis of long-lived antibody responses? Distinguish the default herpesvirus biology from ME/CFS-specific elevations.

**Target chapters:**
- `ch07-immune-dysfunction` (primary: mechanism of antibody persistence + relevance to ME/CFS)
- `ch05-onset-patterns` (if herpesviruses as triggers are discussed)
- `ch14g-autoimmune` (if molecular mimicry is relevant)

**Pre-identified hypotheses:**
- Herpesvirus antibody persistence reflects normal long-lived plasma cell / memory B cell biology, not ongoing viral replication (certainty: pending Phase 1)
- Elevated antibody titres may indicate low-level viral reactivation maintaining the B cell compartment (certainty: pending Phase 1)
- ME/CFS patients show elevations above the general-population herpesvirus antibody baseline — the question is whether this delta reflects reactivation or immune dysregulation

## Phase 1
- **Papers found:** 15
- **Bib entries added:** 15 (8 `bib/immune.bib`, 7 `bib/viral-infection.bib`)
- **Search log:** `ops/research/search-log-herpesvirus-antibody-persistence-2026-07-16.md`

## Phase 2
- **Decision:** PROCEED
- **Strong papers (≥0.60):** 9 (Amanna 0.85, Hammarlund 0.80, Slifka 0.75, Robinson 0.75, Chackerian 0.70, Cliff 0.70, Ionescu 0.65, Blomberg 0.65, Loebel 0.65)
- **Weak papers:** 4 (Apostolou 0.55, Hannestad 0.50, Sun 0.45, Liu 0.40)
- **Null evidence:** 2 (Cliff — seroprevalence identical; Blomberg — overall IgG no difference)
- **Clinical relevance:** MEDIUM — mechanistic context for treatment decisions
- **Contradictions:** 1 pair (Palomo elevation vs Cliff/Blomberg null), resolvable by antigen specificity + cohort differences; framed as `#open-question`

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- `#hypothesis-box` / `#fhypothesis`: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase 3
- **Environments added:** 5 (1 `#hypothesis-box`, 1 `#speculation`, 1 `#open-question`, 1 `#limitation`, 1 `#achievement` implied via prose table)
- **Chapters touched:** ch07 (`subsec-06-antibody-persistence/subsec-06-antibody-persistence.typ` — new file; `subsec-06-herpesviruses.typ` — include added)
- **Hypothesis registry:** 3 new entries added
- **Files modified/created:**
  - Created: `part2-pathophysiology/ch07-immune-dysfunction/sec-06-viral-reactivation-and-persistence/subsec-06-herpesviruses/subsec-06-antibody-persistence/subsec-06-antibody-persistence.typ`
  - Modified: `part2-pathophysiology/ch07-immune-dysfunction/sec-06-viral-reactivation-and-persistence/subsec-06-herpesviruses/subsec-06-herpesviruses.typ` (added `#include`)
  - Modified: `part4-research/hypothesis-registry.typ` (3 new `#registry-entry`)

## Phase 4
- **Brainstorm file:** `ops/brainstorms/brainstorm-herpesvirus-antibody-persistence-2026-07-16.md`
- **Ideas generated:** 22 across all 12 categories

## Phase 4a
- **Subtree file:** `ops/plans/hypotheses-trees/subtrees/herpesvirus-antibody-persistence.md`
- **Nodes written:** 22
- **Root index updated:** yes

## Phase 5
- **Ideas triaged:** 22
- **Tier 1 integrated (inline):** 1 (9.1 Lytic-to-Structural IgG Ratio → `#hypothesis-box` + registry entry; MS cross-reactive parallel folded in)
- **Tier 2 integrated:** 0 (9.2 avidity folded into LSR hypothesis; 8.2 MS parallel folded into LSR hypothesis; remaining Tier 2 ideas are tree-only: cert < 0.45 and max usefulness ≤ 2)
- **Tier 3 (tree-only):** 17 (all categories 1–8 except 9.1; certs 0.07–0.35, max usefulness ≤ 2)
- **Critical category bypass:** Ideas 10.1 (already covered by Phase 3 `<lim:herpesvirus-antibody-interpretation>` → ⏭️), 10.2 + 12.1 (merged into new `#limitation` about methodological weaknesses), 11.1 (null framing implicit in existing content)
- **Queued as child topics:** 0
- **Files modified:** `subsec-06-antibody-persistence.typ` (added LSR hypothesis + methodological limitation), `hypothesis-registry.typ` (added LSR entry)
- **Sub-research for LSR (Tier 1):** literature-integrator — 4 new papers (de Sanjosé 2007 lymphoma EBV profile, Xuan 2020 Sjögren's EA/VCA, Lerner 2012 dUTPase precursor, Maes 2025 RRMS dUTPase first independent partial replication). Zero studies compute LSR directly. Integration guide: `ops/integration-guides/lsr-subresearch-2026-07-16.md`. `bib/viral-infection.bib` +4 entries.

### Certainty Reassessment (Phase 5 mandatory)
| Idea | P4 cert | Reassessed cert | Reasoning |
|------|---------|-----------------|-----------|
| 9.1 LSR | 0.45 | 0.40 | Downgraded: sub-research found zero direct LSR studies; concept entirely novel; dUTPase single-group dependency persists despite Maes 2025 partial replication in different disease |
| 9.2 IgG Avidity | 0.30 | 0.30 | Unchanged: no sub-research triggered (Tier 2) |
| 8.2 MS Parallel | 0.35 | 0.30 | Downgraded: Lanz 2022 Nature precedent is one specific epitope cross-reaction, not a general antibody class ratio — analogy over-extended |
| 1.3 Niche Competition | 0.30 | 0.25 | Downgraded: no direct ME/CFS bone marrow data; LLPC niche dynamics inferred from murine models |
| 1.1 Antigen Depot | 0.25 | 0.20 | Downgraded: LLPC MHC-II presentation established in basic biology but never studied in ME/CFS context |
| 1.2 Cross-Reactive Diversion | 0.30→0.25 | 0.25 | Downgraded: requires protein microarray validation, never done |
| 3.1 Bortezomib | 0.15 | 0.10 | Downgraded: no human data in ME/CFS; toxicity risk in already-immunocompromised population |
| 3.2 Daratumumab | 0.15 | 0.10 | Same as above |
| 5.1 TPE | 0.20 | 0.15 | No TPE data for herpesvirus antibody removal in ME/CFS |
| 8.1 MGUS-Like | 0.20 | 0.10 | No MGUS prevalence study in ME/CFS; free light chain data inconsistent |
| Remaining Tier 3 | unchanged | unchanged | Already very low; further reduction not meaningful |

### Usefulness Score Reassessment
| Idea | P4 scores | Reassessed | Changes |
|------|----------|------------|---------|
| 9.1 LSR | mech=3, dx=5 | mech=2, dx=4 | Downgraded: no mechanistic basis for lytic-only boosting by ALR; dx score still high because concept is testable |
| 2.1 Antigen Panel | dx=5 | dx=5 | Unchanged: high-yield experiment |
| 8.2 MS Parallel | mech=3, expl=3 | mech=2, expl=2 | Downgraded: category error in analogy |
| 3.x Drug ideas | tx=4,4,2,2 | tx=2,2,1,1 | Downgraded: all preclinical, no ME/CFS data, toxicity risk |
| All remaining Tier 3 | unchanged | unchanged | Already scored appropriately |

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1.1 | LLPC Antigen-Depot Hypothesis | 3 | 0.20 | ↩️ tree-only | Tier 3 — available for future cycles |
| 1.2 | Cross-Reactive Epitope Diversion | 3 | 0.30 | ↩️ tree-only | Tier 3 — folded into 9.1 MS parallel |
| 1.3 | LLPC Niche Competition Skewing | 3 | 0.25 | ↩️ tree-only | Tier 3 — available for future cycles |
| 2.1 | Antigen-Resolution Serology Panel | 3 | n/a | ↩️ tree-only | Research direction — kept as proposal |
| 2.2 | Bone Marrow LLPC Study in ME/CFS | 3 | n/a | ↩️ tree-only | Research direction — kept as proposal |
| 3.1 | Low-Dose Bortezomib for LLPC | 3 | 0.15 | ↩️ tree-only | Tier 3 |
| 3.2 | Daratumumab for LLPC Depletion | 3 | 0.15 | ↩️ tree-only | Tier 3 |
| 4.1 | Curcumin as LLPC Stressor | 3 | 0.10 | ↩️ tree-only | Tier 3 |
| 4.2 | Vitamin D for B-Cell Regulation | 3 | 0.15 | ↩️ tree-only | Tier 3 |
| 5.1 | Plasma Exchange for Antibody Removal | 3 | 0.20 | ↩️ tree-only | Tier 3 |
| 5.2 | Intermittent Fasting for Niche | 3 | 0.10 | ↩️ tree-only | Tier 3 |
| 6.1 | Sequential Rituximab→Daratumumab | 3 | 0.10 | ↩️ tree-only | Tier 3 |
| 7.1 | LLPC Niche Competition ODE | 3 | n/a | ↩️ tree-only | Proposal only |
| 7.2 | Antibody Turnover Kinetics Model | 3 | n/a | ↩️ tree-only | Proposal only |
| 8.1 | ME/CFS as MGUS-Like State | 3 | 0.20 | ↩️ tree-only | Tier 3 |
| 8.2 | MS EBV-Cross-Reactive Parallel | 2 | 0.35 | ✅ integrated | Folded into `<hyp:lytic-structural-igg-ratio>` |
| 9.1 | Lytic-to-Structural IgG Ratio | 1 | 0.45 | ✅ integrated | `<hyp:lytic-structural-igg-ratio>` + registry |
| 9.2 | IgG Avidity Reactivation Marker | 2 | 0.30 | ✅ integrated | Folded into LSR hypothesis (falsifiable prediction) |
| 10.1 | Normal LLPC Biology — No Disease Role | crit | n/a | ⏭️ covered-by-lim | Covered by `<lim:herpesvirus-antibody-interpretation>` |
| 10.2 | Positive Findings Are Type I Errors | crit | n/a | ✅ integrated | Folded into `<lim:herpesvirus-serology-methods>` |
| 11.1 | Null: Antibodies Have No Causal Role | crit | n/a | ✅ covered | Null framing implicit in existing content |
| 12.1 | Methodological Weaknesses Audit | crit | n/a | ✅ integrated | Folded into `<lim:herpesvirus-serology-methods>` |

## Phase 5a
- **Hypotheses audited:** 7 (3 chapter environments + 4 registry entries)
- **Fully falsifiable:** 5 unique predictions
- **Weakly:** 0
- **Unfalsifiable:** 0
- **Inline coverage:** 100% (all environments had falsifiable predictions written inline during Phase 3+5)

## Phase 6
- **Matches examined:** 4
- **Adapted:** 4 (caveat additions to pre-existing claims about viral antibody interpretation)
- **Reinforcement:** 0 edits, 0 certainty bumps
- **Contradiction:** 0 edits, 0 reductions
- **Ambiguous:** 0
- **No action:** 0 overlaps deferred
- **Truncated:** N/A
- **Synonym map:** tmp/synonym-map-herpesvirus-antibody-persistence.md (not written — only 4 matches, all explicit)
- **Files modified:** `subsec-02-infections.typ`, `sec-07-novel-framework.typ`, `sec-05-subgroups.typ` (×2 edits)

## Phase 7
- **Agent files read:** `hypothesis-compatibility-auditor.md` (mechanism extraction, relationship classification, internal search protocol), `hypothesis-reinforcement-builder.md` (chain construction, conflict cluster identification, certainty adjustment proposals) — read for guidance per spec; executed inline by main session
- **Internal search protocol followed:** extracted mechanism terms from 4 new hypotheses → grep'd all `.typ` files → examined ~20 matches with 20 lines context → zero mechanism-level overlaps (all existing registry EBV/herpesvirus entries are about molecular mimicry, GPCR autoantibodies, mast cell activation, or HIF-2α — none about serology interpretation or LLPC biology)
- **Pairs audited:** 0 (zero mechanism overlap between new hypotheses and existing registry)
- **Reinforcement pairs:** 0
- **Feed-into pairs:** 0
- **Conflict pairs:** 0
- **Independent:** 4 (all new hypotheses operate in the serological interpretation domain, distinct from existing mechanistic hypotheses)
- **Certainty adjusted:** 0
- **Classification default applied per auditor rules:** "When evidence is insufficient to establish reinforcement, feed-into, or conflict → classify as Independent. False positives are worse than false negatives. Classification errors toward independence."

## Phases 8-13
- **Phase 8 build:** pending
- **Phase 9 quality:** pending
- **Phase 10 coherence:** pending
- **Phase 10a synthesis:** pending
- **Phase 11 convergence:** pending
- **Phase 12 changelog:** pending
- **Phase 13 commit:** pending

- **Topic slug:** `herpesvirus-antibody-persistence`
- **MIXED mode** — unrelated file `ops/plans/tick-borne-symptom-domains-integration-plan.md` in tree
- Existing EBV subtrees: `ebv-heterogeneity.md` (host determinants), `new-contents-ebv-serology.md` (serological patterns)
- Scope: EBV, HHV-6, CMV, VZV — all herpesviruses that establish latency and maintain lifelong antibody responses
- Core question: does persistently elevated antibody titre in ME/CFS necessarily indicate ongoing viral activity, or can it be explained by immune dysregulation alone?
