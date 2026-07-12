# Hypothalamic CRH-Neuron Depletion (Brain Autopsy) Integration Plan

**Purpose:** Integrate the Netherlands Brain Bank / University of Amsterdam ME/CFS brain-autopsy findings (Da Silva et al., presented at IACFS/ME 2025) reporting dramatic loss of CRH-producing neurons in the hypothalamic paraventricular nucleus (PVN), with preserved/increased vasopressin and oxytocin neurons, plus downregulated pituitary receptors and precursor-hormone (POMC) output. This is the first direct histological evidence of a structural lesion in the central node of the HPA axis in ME/CFS and reframes long-observed hypocortisolism as originating centrally rather than adrenally.

**Target chapters:**
- ch09-endocrine, sec-01 HPA axis (mechanisms of HPA dysfunction) — primary target
- ch08-neurological / neuroinflammation — candidate driver (chronic neuroinflammation damaging CRH neurons)
- hypothesis-registry.typ — new hypothesis/speculation entries

**Pre-identified hypotheses:**
- CRH-neuron depletion in the PVN is the central lesion producing hypocortisolism in severe ME/CFS (preliminary certainty ~0.30 — conference/secondary source, n=7)
- The lesion is specific to CRH neurons (vasopressin/oxytocin spared), arguing against global hypothalamic atrophy
- Chronic neuroinflammation / excitotoxic overactivation drives selective CRH-neuron loss (~0.25)
- Central lesion contraindicates cortisol-replacement as a corrective therapy; favors upstream anti-inflammatory/immunomodulatory approaches (~0.30)

**Evidence caveats (govern integration ceiling):**
- Source is a conference presentation (IACFS/ME 2025) + journalistic summary (Health Rising, German-language MyBoussole/veille reprint). Not peer-reviewed. No primary publication.
- n=7 severe/very-severe decedents; small.
- Existing annotated-bib stub: `HealthRising2025` (appendix-h, certainty 0.30).

**Tracking table:**

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|------------------|------|-----------|--------|-------|
| 1 | PVN CRH-neuron depletion as central HPA lesion | — | 0.30 | ✅ integrated | ch09 @spec:central-crh-loss + registry |
| 2 | Cell-type specificity (CRH lost, AVP/OXT spared) | — | 0.30 | ✅ integrated | ch09 @spec:crh-cell-type-specificity + registry |
| 3 | Pituitary receptor/POMC downregulation downstream | — | 0.30 | ✅ integrated | folded into @spec:central-crh-loss |
| 4 | Neuroinflammation/excitotoxicity drives CRH loss | — | 0.25 | ✅ integrated | ch09 @oq:crh-loss-driver + registry |
| 5 | Central lesion contraindicates cortisol replacement | — | 0.30 | ✅ integrated | consequence fields + registry treatment fields |

**Phase 4 brainstorm (14 ideas, categories 1-2,10-12):**

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|------------------|------|-----------|--------|-------|
| 1.1 | CRH loss → lost central analgesia → pain amplification | 2 | 0.20 | ⬜ pending | speculation candidate |
| 1.2 | Two-hit autoantibody+complement/microglial phagocytosis | 3 | 0.12 | ⬜ pending | standalone candidate; defer |
| 1.3 | CRH loss impairs PVN-autonomic reserve (exertional OI) | 2 | 0.15 | ⬜ pending | speculation candidate |
| 1.4 | CRH loss trigger-specific subtype | 3 | 0.08 | ⬜ pending | tree-only |
| 2.1 | Quadruple staining resolves driver | 1 | n/a | ⬜ pending | high-value research direction (usefulness mech=4) |
| 2.2 | Blinded stereology vs depression | 1 | n/a | ⬜ pending | direction-reversal test |
| 2.3 | CRH count vs duration regression | 2 | n/a | ⬜ pending | cause vs consequence |
| 2.4 | Hypothalamic snRNA-seq | 2 | n/a | ⬜ pending | discovery scan |
| 10.1 | Terminal CRH peptide-depletion artefact | crit | 0.55 | ⬜ pending | critical cat — integrate as caveat |
| 10.2 | n=7 end-stage general-illness confound | crit | 0.50 | ⬜ pending | critical cat — covered by Phase 3 limitation |
| 10.3 | Unblinded quantification bias | crit | 0.60 | ⬜ pending | critical cat |
| 11.1 | Null-hypothesis impact assessment | crit | 0.70 | ⬜ pending | critical cat |
| 12.1 | Single secondary source | crit | 0.75 | ⬜ pending | covered by Phase 3 limitation |
| 12.2 | Uncontrolled confounds | crit | 0.50 | ⬜ pending | critical cat |

**Notes:**
- Recursive/standalone dedicated cycle. Related plans: corticosteroid-mechanisms-postviral, brain-clearance-architecture-2026. Related subtree: beyond-aces-hpa.
- CLEAN tree at start (scratch-pointer checkpoints: wip/...-pre3, wip/...-pre6).
- Source article is German (MyBoussole veille reprint of Health Rising). Underlying primary = Da Silva / Netherlands Brain Bank IACFS/ME 2025.

**Phase 5a:** 6 new environments audited; added explicit "Refuted if:" clauses to 4 speculations + decisive-outcome to driver OQ. All now falsifiable or exempt.

**Phase 7:** 7 reinforcement/feed-into pairs (mast-switch feeds CRH-loss driver; steroid-trust-breaking reinforces cortisol-replacement caution; orexin models share cell-type-vulnerability principle), 0 conflicts, 0 certainty adjustments (PARTIAL caps + weak-source reinforcement rule). Audit: content-staging/compat-audit-hypothalamic-crh-neuron-depletion-2026-07-12.md.

**Phase 8:** full build PASS (0 errors).

**Phase 9:** flags — WEAK-EVIDENCE (expected, addressed); BLOAT not fired; CLINICAL-RISK not fired (no new clinical-finding; caution not recommendation; severity stated). Net certainty change 0.

**Phase 10:** coherence PASS. CRH-depletion cert consistently 0.30 across ch09 (×2) and ch14d; other certainties belong to distinct adjacent hypotheses (correct). All 7 xrefs resolve (build). 7 consequence fields present. Fixed ch14d 0.55→0.30 inflation (Phase 6).

**Phase 10a:** synthesis NOT newly added — the pre-existing ch14d hypothalamic-hub convergence paragraph already serves as the high-level synthesis (four-line convergence: structural CRH loss + mast-cell + orexin + PGE2), now correctly citing @cf:crh-neuron-depletion at cert 0.30. New environments confined to ch09 sec-01; no cross-chapter synthesis gap.

**Phase 11 (lightweight tier — single section, PARTIAL, ≤10 envs):** adversarial pass found 2 CRITICAL + 4 HIGH + 4 MEDIUM + 2 LOW (all language/overclaim/peptide-vs-death caveat issues); all fixed; re-review CONVERGED (0 CRITICAL, 0 HIGH). Xref pass: build resolves all references (0 errors); each new label defined once.

**Phase 12:** changelog entry added under Version 11 (WEAK-EVIDENCE note, MEDIUM clinical relevance, Motivated-by @dasilva2025iacfscrh + @raadsheer1994crh + @purba1995crhms + @sauve2023gnrh). Build clean.

**Phase 13:** commit — see commit hash below. Row status ✅ done.

**Phase 1 result:** 11 sources. Bib keys (VERIFIED via awk): `dasilva2025iacfscrh` (0.30, primary conference), `raadsheer1994crh` (0.80), `meynen2007crh` (0.75), `purba1995crhms` (0.70), `bao2010crh` (0.78), `bao2008stress` (0.80), `morris2017hpa` (0.55), `tak2011hpa` (0.72) in endocrine-reproductive.bib; `debellis2021pituitary` (0.55), `sauve2023gnrh` (0.65), `ferrero2017cns` (0.40) in neuroinflammation.bib. Appendix-h: 9 annotated entries added. NO primary publication of Da Silva finding exists (conference only). Do NOT cite `papadopoulos2012hpa`/`raijmakers2022*` — not written to bib.

**Phase 2 decision: PARTIAL.** Core claim rests on single 0.30 conference source; background strong but adjacent. Clinical relevance MEDIUM. Severity: severe/very-severe only. 3 contradictions (directional CRH reversal — informative; driver dispute — open-question; TSPO null — caveat).

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: `#speculation` / `#open-question` / `#limitation` ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9 — therapeutic brainstorming premature)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE
