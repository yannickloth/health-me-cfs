# Integration Guide — igg-fcgammar-mast-cell (Phase 5, Full Tier-1)

**Date:** 2026-10-19 · **Decision:** PROCEED · **Driving evidence:** `@Okayama2000FcgammaRIHumanMast` `@Woolhiser2001IgG1MastFcgammaRI` `@Zhao2006FcgammaRIIaSkinMast` `@Burton2018FcgammaRIIbTissueMast` `@Tkaczyk2004FcgammaRMastReview`

**Brainstorm:** `ops/brainstorms/brainstorm-igg-fcgammar-mast-cell-2026-10-19.md` · **Subtree:** `ops/plans/hypotheses-trees/subtrees/igg-fcgammar-mast-cell.md` · **Safety gate:** `tmp/safety-gate-igg-fcgammar-mast-cell-2026-10-19.md`

---

## Hard rules for every writer

1. **Certainty ceiling 0.16** (primaries) / **0.20** (review). No `#hypothesis-box`. Allowed: `#speculation`, `#open-question`, `#limitation`, `#prediction`.
2. **Every new environment body MUST include a `*Consequence:*` sentence** (Phase 3.5 honesty floor) — say who is affected and what would change; write "no foreseeable practical consequence" if true.
3. **Every constructive environment MUST include a falsifiable prediction.**
4. **Label convention:** `#speculation(...)[ ... ] <spec:slug>` / `#open-question(...)[ ... ] <oq:slug>` / `#limitation(...)[ ... ] <lim:slug>`. Labels must be unique (grep before adding).
5. **Tag brainstorm origin** where the content came from the brainstorm: add `(Origin: brainstorm.)` in the body, matching existing style.
6. **Never write an `ops/…` or `tmp/…` path into the document.**
7. **Anti-inflation:** Okayama 2000 + Woolhiser 2001 + Tkaczyk 2004 are ONE lab (Metcalfe/Gilfillan). Zhao 2006 (Schwartz) and Burton 2018 (Oettgen) are independent. Say "two independent laboratories", never "five studies".
8. **State that no ME/CFS measurement exists.** Every ME/CFS-specific step is analogical.
9. Use the existing files' prose register (impersonal, hedged, `*Certainty: 0.XX.*` at the top of the body).

## Safety verdicts (Phase 5 gate — binding)

| Idea | Verdict | Binding rule |
|------|---------|--------------|
| D2 JAK inhibitors | MENTION-ONLY-AS-RESEARCH-QUESTION | Must carry boxed-warning risk text (serious infection, malignancy, MACE, thrombosis — ORAL Surveillance). Never a recommendation. |
| D1 FcRn antagonists | MENTION-ONLY-AS-RESEARCH-QUESTION | EXTEND existing content. Infection warning. |
| S1 quercetin/luteolin/curcumin | SAFE-TO-MENTION-WITH-RISKS (adjunctive symptom support only) | Must state quercetin nephrotoxicity at high dose + CYP3A4/2C9 interactions; curcumin anticoagulant/antiplatelet interaction. Not disease-modifying. |
| C1 combination | DO-NOT-MENTION-AS-TREATMENT | Trial-design framing only. |

## Idea → file map

| ID | Idea | File | Env |
|----|------|------|-----|
| H1 | IFN-γ-gated FcγRI opens the IgG route | ch08 MCAS (`subsec-08-mast-cell-activation-syndrome-mcas.typ`) | `#speculation` |
| H2 | Skin-vs-gut FcγRIIb asymmetry predicts symptom topography | ch08 MCAS | `#speculation` |
| H3 | IgG1-vs-IgG4 subclass toggle | ch15 `spec-gpcr-autoantibody-mediated-mast-cell-sen.typ` (extend) | inline paragraph |
| B1 | Mast-cell IgG1/IgG4 activation assay | ch08 MCAS (`#open-question`) + cross-ref in ch38 open-questions | `#open-question` |
| M1 | IFN-γ-gated FcγRI state variable | ch51 `subsec-01-mast-cell-degranulation-model.typ` | `#speculation` |
| R1 | Ex-vivo mast-cell FcγR phenotyping cohort | ch47-proposed-studies | new study dir |
| D2 | JAK inhibition closes the gate | ch24 sec-14 immune-neuroimmune | compendium entry |
| D1 | FcRn blockade depletes IgG1 | ch24 sec-14 | compendium entry |
| S1 | Quercetin/luteolin FcγR-Syk blockade | ch31 supplements | entry |
| C1 | Access-tiered combination | ch31 or ch24 | trial-design framing only |
| X1 | Dengue ADE / autoimmune urticaria precedent | ch14d cross-disease | inline |
| N1 | Symptom-onset-timing diary | ch47 or ch23 (patient-facing) | `#open-question` |
| 10a | Mast cells may not be activated in ME/CFS | ch08 MCAS | `#limitation` |
| 10b | IFN-γ gate may be closed in chronic disease | ch08 MCAS | `#limitation` |
| 10c | IgG4-dominant AAbs + no FcγRIII | ch08 MCAS | `#limitation` |
| NULL | Cost of an irrelevant route | ch08 MCAS | `#limitation` |
| EQ | Evidence-quality ceiling | ch08 MCAS | `#limitation` |
| — | FcγR→mast cell→mediator cascade | ch25 sec-03 autoimmune cascades | cascade entry |

## Required registry entries (main session does this after writers finish)

New claim environments: H1, H2, H3 (if labelled), B1, M1, N1, X1, and the ch25 cascade (if it introduces a claim env).
