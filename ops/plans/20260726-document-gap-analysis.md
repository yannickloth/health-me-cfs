# Document Gap Analysis — Structural & Pipeline Gaps

**Date:** 2026-07-26
**Origin:** Adversarial review convergence session — creative audit of paper structure and integration pipeline
**Status:** 🔵 queued 2026-08-29 — all Part A (G1–G20) and Part B (B1–B14) items entered into `ops/queued-topics.md`. Part C pipeline gaps: C1–C7 verified implemented in `integrate-topic` SKILL.md (Phase 3b safety gate, population-relevance discount, REJECT build check, DEFER→changelog + deferred-topics.md reactivation); remaining items need per-item verification.

---

## Part A: Content Gaps (20 missing biomedical topics)

Ranked, triaged, with falsifiable predictions. See below for the full inventory, or `ops/brainstorms/brainstorm-gap-analysis-20260726.md` (if persisted separately).

Top 5 immediately actionable: copper dysregulation (G4), myokines (G2), chronopharmacology (G5), bile acid signaling (G3), post-exertional hypoglycemia (G9).

### Content Gap Inventory

| ID | Topic | Cert | ME/CFS lit? | Actionable? | One-line |
|----|-------|------|-------------|-------------|----------|
| G1 | H₂S gasotransmitter dysregulation | 0.45 | No | Yes (donors exist) | Third gasotransmitter — unifying mitochondrial, vascular, NLRP3, TRPV1 nodes |
| G2 | Myokines: muscle as silent endocrine organ | 0.50 | No | Yes (serum panel) | Loss of irisin/cathepsin B/decorin from immobility starves brain of BDNF factors |
| G3 | Bile acid signaling (FXR/TGR5) | 0.40 | No | Yes (agonists exist) | Gut dysbiosis → altered bile acid pool → impaired FXR/TGR5 → barrier+immune+microglial |
| G4 | Copper dysregulation as single upstream lesion | 0.35 | No | Yes (standard lab) | Single node connecting connective tissue, iron, NE, Complex IV, and SOD failures |
| G5 | Chronopharmacology: circadian drug timing | 0.40 | No | Yes (zero-cost) | Drug targets have circadian receptor variation; optimizing timing may improve efficacy |
| G6 | Lactate as signaling molecule (GPR81) | 0.45 | No | Yes (MCT oil exists) | Lactate shuttle + GPR81 receptor — currently discussed only as waste, never as hormone |
| G7 | Blood-nerve barrier / DRG AAb access | 0.55 | Strong indirect | Research only | DRG fenestrated capillaries = primary AAb access point while CNS protected by BBB |
| G8 | Sudomotor dysfunction as autonomic subtype | 0.50 | No | Yes (QSART exists) | Cholinergic sympathetic fibers — M3 AAbs directly impair sweating |
| G9 | Post-exertional hypoglycemia as PEM component | 0.45 | CGM emerging | Yes (CGM) | Impaired hepatic gluconeogenesis → glucose nadir 2-4h post-exertion |
| G10 | Remission reverse-engineering framework | 0.55 (method) | No | Yes (registry) | Catalog every remission case; work backward to mechanism — NCI "exceptional responders" model |
| G11 | Selenium/selenoprotein biology | 0.40 | No | Yes (standard lab) | Functional Se deficiency — same logic as functional iron deficiency |
| G12 | Thymic involution / TCR repertoire collapse | 0.40 | Limited | Research | Progressive immune narrowing explaining worsening over time |
| G13 | Mitochondria-associated membranes (MAMs) | 0.30 | No | Research | ER-mitochondria contact sites unifying UPR, calcium, NLRP3, and fission |
| G14 | Perineurial inflammation — nerve sheath compartment | 0.35 | No | Research | Mast cell edema within non-expandable perineurium → ischemic conduction block |
| G15 | IJV stenosis / cerebral venous outflow | 0.25 | No | Yes (Doppler) | Positional jugular compression → impaired glymphatic — explain afternoon worsening |
| G16 | Craniofacial development as developmental risk | 0.30 | No | Yes (orthodontic) | Narrow airway → decades of nocturnal hypoxia → lowered metabolic reserve |
| G17 | Lymphatic system as unified clearance organ | 0.35 | No | Research | Meningeal lymphatics connect glymphatic to cervical nodes — not separate systems |
| G18 | Bone marrow niche / HSC exhaustion | 0.35 | No | Research | Chronic IFN-γ/TNF-α → stem cell pool exhaustion → pan-lineage immune failure |
| G19 | Polyvagal autonomic spectrum | 0.25 | No | Research | Ventral vs dorsal vagal — explains "shut-down" phenotype vs "wired-tired" |
| G20 | Diaphragm-splanchnic-vascular pump failure | 0.30 | No | Yes (breathing exercises) | Diaphragm as primary pump for venous return + lymphatic flow + CSF oscillations |

---

## Part B: Structural Chapter Gaps (14 missing chapters/sections)

### Highest Impact

| # | Gap | Status | Recommendation |
|---|-----|--------|----------------|
| **B1** | **Standalone history of ME/CFS** | Sections in ch01, scattered | New chapter in Part I |
| **B2** | **Healthcare systems / policy / disability** | Absent | New chapter in Part IV |
| **B3** | **Comparative nosology** (ME/CFS, FM, PTLDS, IBS, LC, MCAS, EDS) | Partial (scattered across ch04, ch14d, ch35) | New chapter in Part II or IV |
| **B4** | **ME/CFS-specific research methods** | Partial (scattered individually) | New chapter in Part IV (ch30a) |
| **B5** | **Economic impact** (expanded) | Single subsection in ch01 | Upgrade to dedicated chapter in Part IV |

### Medium Impact

| # | Gap | Status | Recommendation |
|---|-----|--------|----------------|
| **B6** | **Brain clearance architecture** (consolidated) | Content exists but scattered across ch25/26/27/43 sidecars | Consolidate into single Part II chapter |
| **B7** | **Patient-generated knowledge / citizen science** | Absent | New chapter in Part IV |
| **B8** | **Global / low-resource perspectives** | Absent | New chapter in Part IV |

### Lower Impact (add as sections within existing chapters)

| # | Gap | Existing chapter to expand |
|---|-----|---------------------------|
| **B9** | Pediatric-to-adult transition | ch05 (disease course) or Part III intro |
| **B10** | Recovery / remission narratives as causal probes | ch16 (causal hierarchy) or ch05 |
| **B11** | Sex/gender differences | ch34 (epidemiology) or Part II standalone |
| **B12** | Comorbidities (systematic table + prevalence) | ch04 (differential diagnosis) |
| **B13** | Infection-initiated vs. non-infection-initiated subtypes | ch05 (trigger mechanisms) |
| **B14** | Occupational / vocational / educational impact | ch05 or within B2 healthcare chapter |

---

## Part C: `/integrate-topic` Pipeline Structural Gaps

### P0 — Must Fix (safety & correctness)

| # | Gap | Severity | Location in skill | Fix |
|---|-----|----------|-------------------|-----|
| **C1** | **Unified pre-treatment safety gate** — 7 safety dimensions scattered across Phases 1, 3, 5 + appendix. Drug-interaction check is an appendix note, not a formal gate. Pregnancy/lactation only in Phase 3 for Part 3. | CRITICAL | Phases 1, 3, 5; Doc-Instructions A, H | New Phase 3b: single gate checking adverse effects, severity applicability, pregnancy/lactation, drug interactions, bedbound contraindications, monitoring params, stopping criteria — before any treatment content enters chapter text. |
| **C2** | **Population-relevance certainty discount** — general-population evidence enters at study-quality certainty, potentially qualifying as `#hypothesis-box` without ME/CFS-specific replication. | HIGH | Phase 2 + Certainty Scale | Multiply evidence certainty by population weight: ME/CFS-specific = 1.0; general-population = 0.75; animal = 0.5; in vitro = 0.4; in silico = 0.3. Discounted certainty gates PROCEED/PARTIAL thresholds + Phase 3 environment type selection. |
| **C3** | **Universal severity stratification** — currently applies to treatment Part 3 chapters only. Biomarker/diagnostic/non-treatment clinical claims have no severity requirement. | HIGH | Phase 3 line 388-395 | Add universal rule to Phase 3 + Phase 5 environment-writing rules: all clinical claims must state severity applicability. |
| **C4** | **Drug-interaction check is an appendix note**, not an enforceable formal phase step. | HIGH | Doc-Instruction H (line 1765) | Move to formal Phase 5 Step 1a: "Drug-Interaction Safety Gate" with defined output + phase report field. |

### P1 — Should Fix (coverage & reliability)

| # | Gap | Severity | Fix |
|---|-----|----------|-----|
| **C5** | **REJECT lacks build check** — Phase 3a skipped; limitation text may contain Typst-breaking syntax caught only at Phase 8. | HIGH | Add Phase 3a-equivalent build check for REJECT-only limitation text modifications. |
| **C6** | **DEFER skips changelog** — Phase 12 not run; deferred topics become invisible in changelog. | HIGH | Make DEFER route through Phase 12 with minimal entry: "Deferred: [topic] — insufficient evidence." |
| **C7** | **Deferred topic reactivation trigger** — no mechanism to re-evaluate a deferred topic when new evidence emerges. | MEDIUM | Write to `ops/deferred-topics.md` on DEFER; Phase 0 checks this file on startup to detect newly-eligible topics. |
| **C8** | **Phase 6 semantic claim matching** — grep-based keyword matching misses contradictions with different terminology. | MEDIUM | Add Phase 6 Step 0: load hypothesis-registry; for each entry, ask "does any Phase 1 paper's finding relate to this claim, even if terms differ?" |
| **C9** | **Phase 5 execution order is fragile** — 5→5d→5c→5b→5a→5z relies on prose description only. | MEDIUM | Add prerequisite checklist at top of each sub-phase header. |

### P2 — Nice to Have (cleanup & consistency)

| # | Gap | Severity | Fix |
|---|-----|----------|-----|
| **C10** | **Synthesis-to-extant-synthesis compatibility** — two `#synthesis` boxes in ch14d could contradict without detection. | LOW | Add Phase 10c: scan existing `#synthesis` environments in target chapter for reinforcement/conflict with new synthesis. |
| **C11** | **Retroactive Phase 10a lacks Phase 12 counterpart** — no changelog entry for retroactive syntheses. | LOW | Add explicit Phase 12 step: "If retroactive Phase 10a wrote syntheses, include changelog entry: 'Retroactive: added synthesis for [topic].'" |
| **C12** | **Cross-cycle certainty accumulation** — a hypothesis bumped +0.05 across 11 cycles could reach 0.95 with no cap. | LOW | Add Phase 9 sub-metric: count hypotheses ≥0.80. Flag if ≥3 in single chapter. |
| **C13** | **Changelog cross-cycle coherence** — successive cycles on same topic can produce contradictory changelog entries. | LOW | Phase 12 rule: "Check prior changelog entries for same topic slug. New entry must reference prior with update rationale." |
| **C14** | **Pregnancy/lactation absent from Phase 5** — only in Phase 3, only for Part 3 content. | MEDIUM | Add to Phase 5 integration environment-writing rules. |
| **C15** | **Phase 3.5 certainty-consequence gap** — a cert-0.30 speculation could claim "would change clinical practice." | LOW | Add to Phase 3.5: verify consequence doesn't claim more than the certainty supports. |
| **C16** | **Phase 10a trigger threshold** — misses single-chapter 5-environment cases. | LOW | Change trigger: "≥3 environments, OR ≥2 environments where author judges synthesis would help." |

---

## Part D: Document-Specific Instructions — Upgrade Candidates

These live in the SKILL.md appendix (lines ~1700-1775) as policy notes. They should be formal phase steps:

| Instruction | Content | Move to |
|-------------|---------|---------|
| A — Patient-subset visibility | Severity stratification for all clinical claims | Phase 3 + Phase 5 rules |
| B — Cohort-overlap detection | Check study independence | Phase 1 inclusion rules |
| C — Biomarker-to-functional gap | State compartment gap for all biomarkers | Phase 3 environment rules |
| D — Study-date anchoring | Add `study_date` to bib entries | Phase 1 bib entry guidelines |
| F — Consequence honesty floor | Banned phrases in consequence fields | Phase 3.5 quality criteria |
| H — Drug-interaction pre-check | WebSearch for interactions with common co-prescriptions | Phase 5 Step 1a (new safety gate) |

---

## Updates

| Date | Change |
|------|--------|
| 2026-07-26 | Initial analysis: Part A (20 content gaps), Part B (14 structural chapter gaps), Part C (16 pipeline gaps), Part D (6 doc-instruction upgrades) |
