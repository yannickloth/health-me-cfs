# Integration Plan: LDN Fibromyalgia Responder Rates (FINAL trial exploratory analysis)

**Purpose:** Integrate the FINAL trial exploratory re-analysis examining 30% responder rates for six secondary fibromyalgia outcomes (tenderness, fatigue, sleep disturbances, depression, memory problems, stiffness) after 12 weeks of low-dose naltrexone (LDN 6 mg) vs placebo in women with FM (n=99). All outcome responder rates were null (no significant group difference).

**Target chapters:**
- ch03 (pain) / Part 3 treatment content — primary, where LDN evidence is discussed
- ch30 sec-12 (pharmacodiagnostic compendium) / sec-13 (response matrix) — LDN response evidence
- ch14d (cross-disease) — fibromyalgia/ME/CFS treatment overlap
- Existing LDN content sites (ch07 immune, ch15/ch18, hormesis framework) — for cross-reference/consistency

**Pre-identified hypotheses:**
- LDN shows no significant group-level benefit on secondary FM symptom responder rates (null evidence — documents response heterogeneity)
- The FINAL trial primary (pain, memory) and secondary analyses together establish the null/weak LDN efficacy signal for FM
- (Caution) This is a null paper — integration likely via #limitation/#open-question, not new positive claims

**Tracking table:**

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|

**Notes:**
- LDN is ALREADY extensively integrated in the paper (DueBruun2024LDNFibromyalgia in bib/treatments.bib cert 0.75; hormesis-ldn plan ~done; hypothesis registry ×26 LDN/naltrexone mentions).
- This topic's paper (the abstract) = exploratory 30%-responder re-analysis of the FINAL trial, ALL secondary outcomes null.
- Distinct from reference #9 (`Due Bruun 2026`, Korean J Pain re-analysis, "lower efficacy than previously reported") which is a different re-analysis and not yet in bib.
- MIXED working tree mode (user-selected): explicit per-file staging only.

**Decision:** PARTIAL (Phase 2) — 2026-08-18

## Tracking table (populated)

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | TLR4 occupancy-threshold (clinical LDN may never engage TLR4) | Hypothesis | 0.30 | ✅ integrated as `spec:ldn-tlr4-occupancy-gap` (ch30) | Gao ~6200× potency gap |
| 2 | FM–ME/CFS mechanistic divergence (TRPM3) | Hypothesis | 0.32 | ⏭️ tree-only (Phase 5c ch27 caveat) | FM null may not generalize |
| 3 | OGFr rebound timing/subtype | Hypothesis | 0.20 | ⏭️ tree-only | referenced in spec |
| 4 | Harmonized IPD meta-analysis | Research | 0.40 | ⏭️ tree-only | resolves Ologunowa/Vatvani |
| 5 | Dedicated cognitive-outcome RCT | Research | 0.35 | ⏭️ tree-only | memory RR 1.67 coarse |
| 6 | Dose-occupancy biomarker study | Research | 0.38 | ⏭️ tree-only (falsifier of spec) | missing bridge |
| 7 | FM vs ME/CFS head-to-head TRPM3 | Research | 0.30 | ⏭️ tree-only | |
| 8 | TLR4 occupancy gap (critical) | Critical | 0.28 | ✅ folded into spec:ldn-tlr4-occupancy-gap | |
| 9 | Mechanism real but not symptomatic | Critical | 0.25 | ⏭️ tree-only | |
| 10 | Paper-claims revision inventory | Critical | 0.35 | ✅ memory overclaim corrected (appendix-h) | |
| 11 | Null-subtype mapping | Critical | 0.25 | ⏭️ tree-only | |
| 12 | Secondary-outcome power/multiplicity | Critical | 0.30 | ✅ added to lim:ldn-fm-responder-null | |
| 13 | Meta divergence as methods artifact | Critical | 0.33 | ✅ as oq:ldn-fm-pain-meta-divergence | band rule |

## Certainty bump log
- 0 bumps. PARTIAL cap (no bump may cross 0.45); FM null is negative evidence, cannot reinforce positive hypotheses.

## Phase 12 record (integration summary)
- **Decision:** PARTIAL. **Integration:** 3 environments added to ch30 (lim:ldn-fm-responder-null, oq:ldn-fm-pain-meta-divergence, spec:ldn-tlr4-occupancy-gap); ch27 LDN differential "Key caveat on non-response" updated (occupancy-gap, FM null, FM-vs-ME/CFS divergence); appendix-h DueBruun2024 memory overclaim corrected; 2 registry rows added; 10 bib entries added (8 treatments.bib, 2 immune.bib).
- **No changelog.typ** (per pipeline: plan-record only).
- **Flags:** WEAK-EVIDENCE fired (PARTIAL). Tension flagged: spec:ldn-tlr4-occupancy-gap vs ch15/ch18 TLR4-engagement assumption (cross-referenced @sec:hormetic-dose-response).
- **Chapters touched:** ch30-emerging-therapies, ch27-medications-systems (LDN differential), appendix-h-annotated-bibliography, part4-research/hypothesis-registry, bib (treatments, immune).
- **Build:** PASS (multiple intermediate + final).
- **Null outcome accepted** (user-confirmed at governor launch): the topic integrates as null-evidence correction (#limitation/#open-question), not new positive claims.

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE

## Phase 2 record
- Papers: 10 included (6 null clinical, 1 competing-positive Vatvani, 1 safety Bolton, 2 indirect-biochem Gao/Zagon).
- Decision rationale: REJECT no (Vatvani positive; papers ≥0.40 & ≥0.60 exist); DEFER no (lit not sparse); PARTIAL yes (mixed evidence, Vatvani vs 6 null).
- Contradiction: Vatvani 2024 vs Ologunowa 2025 meta — band rule (Δ0.04≤0.15) → #open-question.
- Primary role: correct memory overclaim; document null responder evidence; flag meta contradiction; audit existing LDN claims for overclaim.
- Clinical relevance: MEDIUM-HIGH (FM subset; ME/CFS applicability unknown).
- Epistemic checklist: #1 ✓ #2 ✓ #3 ✓ #4 ✓ #5 ✓ #6 ✓.
- Synthesis: `tmp/synthesis-ldn-fibromyalgia-responder-rates-2026-08-18.md`.

## Phase 3 record
- Environments added (ch30-emerging-therapies.typ, PARTIAL caps limitation/open-question only): `lim:ldn-fm-responder-null` + `oq:ldn-fm-pain-meta-divergence`.
- Memory overclaim corrected in appendix-h (DueBruun2024 entry).
- Registry block appended: `oq ldn-fm-pain-meta-divergence`.
- Phase 3a build PASS. Phase 3b safety gate: 2 non-treatment envs, item-2 (severity) only, PASS. Phase 3.5: 2 consequence fields verified.

## Phase 4 record
- Brainstorm: `ops/brainstorms/brainstorm-ldn-fibromyalgia-responder-rates-2026-08-18.md` (13 ideas, categories 1-2 + 10-12 only; categories 3-9 deferred under PARTIAL; all cert ≤0.40; all `origin: brainstorm`).

## Phase 4a record — GAP-FILL SKIP (documented WHY)
- **Skip condition:** standalone/gap-fill — this is a NULL-evidence limitation topic. No positive mechanism hypothesis was generated (PARTIAL caps; limitation/open-question only). No new subtree branch warranted.
- **WHY:** the null LDN-FM responder finding does not add a new node to the hypothesis tree. It qualifies/updates existing LDN content (ch30, appendix-h) and the existing FM-ME/CFS overlap discussion (`subtrees/shared-mechanisms-fibromyalgia-mecfs-longcovid.md`). The single brainstorm `#open-question` (ldn-fm-pain-meta-divergence) is a cross-hypothesis compatibility/research-direction question, not a mechanism hypothesis node.
- No subtree file created or modified; root index unchanged.

## Phase 10a record — SYNTHESIS SKIP (documented WHY)
- **Skip condition:** single-coherent-unit / no cross-chapter convergence.
- **WHY:** all 3 new environments (lim:ldn-fm-responder-null, oq:ldn-fm-pain-meta-divergence, spec:ldn-tlr4-occupancy-gap) live in one file (ch30-emerging-therapies.typ) and form a single coherent narrative (the LDN-FM null story). The ch27 differential update is a targeted caveat, not a second convergent cluster. No cross-chapter convergence pattern exists that would require a `#synthesis` environment. The content is null-evidence correction, not a positive mechanism — a synthesis environment would overclaim under PARTIAL caps.

## Phase 10b record
- Strategic framing: no new framing-layer propagation needed. The FM null is downstream treatment evidence, not a revision to the paper's central mechanistic framing (root causes, energy-triage, reading guide). The memory-overclaim correction is local to the LDN treatment content. "No framing propagation needed" (downstream/non-actionable for the central thesis).
