# Null Subtyping (Absent vs Blocked vs Overwhelmed) — Integration Plan

**Purpose:** Formalize the tripartite null subtyping framework: when a drug fails, the null can mean the target is *absent* (never present), *blocked* (present but inaccessible — AAb-occupied, PTM-locked), or *overwhelmed* (present and functional but outcompeted by supraphysiological endogenous antagonist). Each null type has distinguishing probes, and knowing which null type applies changes the diagnostic inference — a drug failure that looks like "mechanism absent" under the current binary null logic may actually be "receptor blocked by AAb" or "receptor outcompeted by endogenous antagonist."

**Topic slug:** null-subtyping

**Parent topic:** pharmacodiagnostic-extensions (brainstorm #2 — "Absent vs. blocked vs. overwhelmed")

**Target chapters:**
- ch32 — new sec-02i "Null Subtyping — Absent vs Blocked vs Overwhelmed" (or ch33 sec-10 subsec — TBD based on ch30 category routing in Phase 3)
- ch33 — cross-reference in sec-08 null matrix to null-subtyping section; updates to sec-09 convergence patterns if needed
- ch33 sec-12 — update per-drug entries to distinguish null types where applicable

**Pre-identified hypotheses:**
- Idea 2a: Absent (receptor never present) — with bypass probe (cert 0.15)
- Idea 2b: Blocked (receptor present but inaccessible) — with allosteric probe (cert 0.15)
- Idea 2c: Overwhelmed (receptor present, functional, endogenous antagonist saturates) — with concentration-competition probe (cert 0.15)
- Idea 2d: Null ladder extension synthesis (cert 0.15)

**Tracking table:**

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|------------------|------|-----------|--------|-------|
| 1 | Absent null — receptor/enzyme never present; bypass probe | — | 0.15 | ✅ done | Phase 3: spec:null-absent |
| 2 | Blocked null — receptor present but inaccessible; allosteric probe | — | 0.15 | ✅ done | Phase 3: spec:null-blocked |
| 3 | Overwhelmed null — receptor competed by endogenous antagonist; conc-competition probe | — | 0.15 | ✅ done | Phase 3: spec:null-overwhelmed |
| 4 | Null ladder extension — three-way null taxonomy with distinguishing probes | — | 0.15 | ✅ done | Phase 3: oq:null-subtyping-implications |
| B1 | BIASED null — 4th subtype β-arrestin locked (category 1) | 3 | 0.12 | ⬜ pending | Phase 4 brainstorm 1a |
| B2 | Null subtype transition dynamics over time (category 1) | 3 | 0.08 | ⬜ pending | Phase 4 brainstorm 1b |
| B3 | Null subtype as treatment pathway selector (category 1) | 3 | 0.12 | ⬜ pending | Phase 4 brainstorm 1c |
| B4 | Pharmacogenetic pre-screening for ABSENT null (category 2) | 2 | 0.20 | ✅ done | Phase 5: spec:pharmacogenetic-prescreening (reassessed from 0.25 to 0.20) |
| B5 | Tissue-compartment null discordance (category 2) | 3 | 0.08 | ⬜ pending | Tier 3 — tree only |
| B6 | Formal combination probe protocol (category 2) | 3 | 0.12 | ⬜ pending | Tier 3 — tree only |
| B7 | Supplements for endogenous antagonist manipulation (cat 4) | 3 | 0.08 | ⬜ pending | Tier 3 — tree only |
| B8 | Allosteric probe supplements — berberine etc (category 4) | 3 | 0.10 | ⬜ pending | Tier 3 — tree only |
| B9 | Clinical unimplementability — probes don't exist (cat 10) | — | 0.30 | ✅ done | Phase 5: lim:null-subtyping-unimplementable (critical — bypass triage) |
| B10 | Pharmacological spuriousness — mixed states (category 10) | — | 0.25 | ✅ done | Phase 5: lim:null-subtyping-mixed-states (critical — bypass triage) |
| B11 | Opportunity cost — extra trials, PEM risk (category 10) | — | 0.30 | ✅ done | Phase 5: lim:null-subtyping-opportunity-cost (critical — bypass triage) |
| B12 | Low non-ABSENT prevalence — rare edge case (category 10) | — | 0.20 | ⬜ pending | Covered by opportunity-cost limitation — no separate env needed |
| B1 | BIASED null — 4th subtype β-arrestin locked (category 1) | 3 | 0.12 | ✅ done | Phase 5: spec:null-biased (promoted — theoretical completeness worth a paragraph) |
| B2 | Null subtype transition dynamics over time (category 1) | 3 | 0.08 | ⬜ pending | Tier 3 — tree only |
| B3 | Null subtype as treatment pathway selector (category 1) | 3 | 0.12 | ⬜ pending | Tier 3 — tree only |

**Certainty bump log:**

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

**Phase 1:** 6 papers found, 6 bib keys in `diagnosis-assessment.bib`. Search log: `ops/research/search-log-null-subtyping-2026-07-28.md`. Bib keys (VERIFIED against bib via awk): Finlay2020receptorOccupancy, Skiba2021AAbGPCRmodulation, Sunami2025GPCRPOTS, DodgeKafka2026betaArrestinAAb, Kavyani2024kynurenineMEcfs, Hazrati2024kynureninePain.

**Phase 2:** PROCEED (override from PARTIAL — population-weight discount artificially deflates cert for foundational pharmacology papers where receptor pharmacology is universal). Synthesis at `tmp/synthesis-null-subtyping-2026-07-28.md`. Clinical relevance: LOW (research-only framework). Standing epistemic checklist: [#1 ✓] / [#2 ✓] / [#3 ⚠ translation gap for untested probes] / [#4 ✓] / [#5 ⚠ not testable without dedicated trials] / [#6 ✓].

**Phase 3:** 4 environments (3 speculations + 1 open-question) in new ch32 sec-02i. Cross-reference added in ch33 sec-08 null matrix. Registry: 4 entries added. Build: PASS. Files: `sec-02i-null-subtyping/sec-02i-null-subtyping.typ` (new), `ch32-medication-response-reference.typ` (include added), `ch33 sec-08 null matrix` (xref added), `hypothesis-registry.typ` (4 entries). Standing epistemic checklist: [#1 ✓] / [#2 ✓] / [#3 ⚠ translation gap noted in environments] / [#4 ✓] / [#5 ⚠ probes untested — stated explicitly] / [#6 n/a — no clinical content].

**Phase 3b:** 4 environments gated. All pass (non-treatment framework — safety gate bypass). Severity applicability: ALL. Safety gate at `tmp/safety-gate-null-subtyping.md`.

**Phase 3.5:** 4 environments verified. 2 framework-level consequence fields present (open-question + relationship-to-existing). 3 subtype speculations are supporting detail, not standalone findings. 0 missing.

**Phase 4:** 12 ideas generated across categories 1, 2, 4, 10. Brainstorm file at `ops/brainstorms/brainstorm-null-subtyping-2026-07-28.md`. Plan updated with 12 rows.

**Phase 4a:** Subtree `subtrees/null-subtyping.md` created with 16 nodes (4 original + 12 brainstorm). Root index updated with null-subtyping row.

**Active Caps (Phase 2 — decision: PROCEED):**
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed if cert >= 0.45
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

**Notes:**
- This is a recursive invocation — parent cycle is `/integrate-topic pharmacodiagnostic-origin-inference` which came from the brainstorm file `brainstorm-pharmacodiagnostic-extensions-2026-07-28.md`
- The existing null ladder (sec-02c) and null matrix (ch33 subsec-08) use binary null logic: null → mechanism eliminated. This topic extends nulls to three types with distinguishing probes
- Existing content already uses "absent," "blocked," "desensitized" vocabulary informally (ch33 sec-12 per-drug entries, sec-10 ligand-receptor duality, sec-01 POTS probe) but no formal framework exists
- Target: ch32 new section or ch33 sec-10 subsec extension — TBD in Phase 3 ch30 Category Router
