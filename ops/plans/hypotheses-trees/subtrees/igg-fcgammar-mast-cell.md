# Hypothesis Subtree: IgG/FcγR-Mediated (IgE-Independent) Mast Cell Activation

**Origin:** `/integrate-topic` — IgG/FcγR mast cell activation route (standalone, no parent brainstorm)
**Brainstorm file:** `ops/brainstorms/brainstorm-igg-fcgammar-mast-cell-2026-10-19.md`
**Plan file:** `ops/plans/igg-fcgammar-mast-cell-activation-integration-plan.md`
**Date:** 2026-10-19
**Parent topic:** root (standalone) · **Child subtrees:** (none)

**Certainty frame.** Population discount applied per `SKILL.md:305`: in-vitro → weight 0.40.
Discounted certainty = **0.16** (four primaries), **0.20** (review). Decision recorded
**PROCEED by explicit user override** (the table's first matching row is REJECT; PARTIAL also
matches). No `#hypothesis-box`; certainty ceiling 0.20 respected throughout.

## Nodes

| ID | Cat | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-----|-------|-----|------|------|----|------|------|----|--------|----------|
| H1 | 1 | IFN-γ-gated FcγRI opens IgG mast-cell route | speculation | 0.16 | 3 | 2 | 4 | 2 | 2 | ✅ `<spec:igg-fcgri-ifn-gate>` | — |
| H2 | 1 | Skin-vs-gut FcγRIIB asymmetry | speculation | 0.16 | 3 | 1 | 4 | 1 | 2 | ✅ `<spec:fcgriib-tissue-asymmetry>` | — |
| H3 | 1 | IgG1-vs-IgG4 subclass toggle | inline | 0.16 | 3 | 2 | 3 | 0 | 4 | ✅ ch15 GPCR speculation (inline arm) | — |
| B1 | 9 | Mast-cell IgG1/IgG4 activation assay | open-question | 0.16 | 2 | 1 | 1 | 0 | 4 | ✅ `<oq:mast-cell-igg-activation-assay>` | — |
| R1 | 2 | Ex-vivo mast-cell FcγR phenotyping cohort | proposal | n/a | 4 | 0 | 3 | 1 | 4 | ⏭️ deferred — category 2, held for a future cycle with funding/trial scoping | — |
| M1 | 7 | IFN-γ-gated FcγRI state variable in mast-cell ODE | speculation | 0.16 | 2 | 0 | 2 | 4 | 0 | ✅ `<spec:fcgri-ifn-gated-ode>` | — |
| X1 | 8 | Dengue ADE / autoimmune-urticaria human precedent | inline | n/a | 2 | 0 | 3 | 0 | 1 | ✅ ch14d paragraph | — |
| N1 | 9 | Symptom-onset-timing diary phenotyping | open-question | 0.16 | 1 | 1 | 3 | 0 | 2 | ⏭️ deferred — no patient-facing surface justified at cert 0.16 | — |
| D2 | 3 | JAK inhibition closes the IFN-γ FcγRI gate | open-question | 0.16 | 2 | 3 | 2 | 0 | 1 | ⏭️ deferred — **Phase 5c skip (preclinical-only evidence)** | — |
| D1 | 3 | FcRn blockade depletes IgG1 substrate | open-question | 0.16 | 2 | 3 | 2 | 0 | 1 | ⏭️ deferred — **Phase 5c skip (preclinical-only evidence)** | — |
| S1 | 4 | Quercetin/luteolin block FcγR-Syk signaling | open-question | 0.16 | 1 | 2 | 2 | 0 | 1 | ⏭️ deferred — **Phase 5c skip (preclinical-only evidence)** | — |
| C1 | 6 | Upstream+downstream tiered combination | open-question | 0.16 | 2 | 3 | 2 | 0 | 1 | ⏭️ deferred — **Phase 5c skip (preclinical-only evidence)** | — |
| 10a | 10 | Mast cells may not be pathologically activated | limitation | n/a | 2 | 0 | 3 | 0 | 3 | ✅ `<lim:mast-cell-activation-unproven>` | — |
| 10b | 10 | IFN-γ gate may be closed in chronic disease | limitation | n/a | 3 | 0 | 3 | 1 | 0 | ✅ `<lim:ifn-gamma-gate-closed>` | — |
| 10c | 10 | IgG4-dominant AAbs + no FcγRIII | limitation | n/a | 3 | 0 | 3 | 0 | 1 | ✅ `<lim:igg4-inert-human-no-fcgriii>` | — |
| NULL | 11 | Cost of an irrelevant IgG mast-cell route | limitation | n/a | 1 | 0 | 2 | 0 | 0 | ✅ `<lim:igg-route-null-cost>` | — |
| EQ | 12 | Evidence-quality ceiling | limitation | n/a | 1 | 0 | 1 | 0 | 0 | ✅ `<lim:igg-route-evidence-quality>` | — |

## Notes

- **Anti-inflation:** Okayama 2000 + Woolhiser 2001 + Tkaczyk 2004 are ONE laboratory
  (Metcalfe/Gilfillan). Zhao 2006 (Schwartz) and Burton 2018 (Oettgen) are independent.
  Convergence = **two independent laboratories**, not five papers.
- **Critical categories 10–12 bypass triage** (`SKILL.md:694`) and integrate directly as
  `#limitation` — 10a, 10b, 10c, NULL, EQ.
- **Deferred, not rejected:** D1, D2, S1, C1 (intervention ideas) are deferred by the
  **Phase 5c skip condition** ("evidence is purely animal/preclinical"). They remain in the
  brainstorm backlog and are revisited if human ME/CFS evidence appears.
- **Category cap note:** under PARTIAL the cap would have deferred categories 3–9; the user
  directed PROCEED, so categories 7 (M1) and 8 (X1) and 9 (B1) were integrated. D1/D2/S1/C1
  are deferred by the independent Phase 5c gate, not by the category cap.
