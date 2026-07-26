# Integration Plan: ch39 — Healthcare Systems, Policy, and Disability

**Purpose:** Develop ch39 into a full chapter covering healthcare systems response to ME/CFS (specialist clinic models, physician education, guideline inconsistencies, insurance/coverage barriers, disability benefit systems, healthcare disparities, medical education reform).

**Target chapters:**
- `part4-research/ch39-healthcare-systems-policy/ch39-healthcare-systems-policy.typ` (primary)
- Cross-references to: ch01 (introduction/disability impact), ch06 (disease course/severe reality/financial barriers), ch23 (urgent severe/financial barriers), ch38 (epidemiology/QoL/disability), ch40 (economic impact), ch41 (controversies/medical gaslighting/guideline inconsistencies), ch43 (global perspectives)

**Origin:** Standalone `/integrate-topic` — not recursive. ch39 is an empty stub identified as the second-highest-priority structural gap (B2) in `ops/plans/20260726-document-gap-analysis.md`.

**Phase 1:** 10 papers found, 10 added to `bib/general.bib`. Search log at `ops/research/search-log-ch39-healthcare-systems-policy-2026-07-26.md`. Literature summary at `ops/research/literature-ch39-healthcare-systems-policy-2026-07-26.md`. Bib keys (verified via awk): Bateman2021Mayo, Podell2020, Muirhead2021, Bontempo2025invalidation, Kingdon2022NICEprimary, Parslow2017children, Parslow2017paediatric, Thornton2025energy, Smith2014AHRQ, Chu2021suicidal, Fennell2021Suffering (Note: Chu2021suicidal and Fennell2021Suffering were already present; Bontempo2025invalidation, Parslow2017children, Parslow2017paediatric were already present from a prior stream — confirmed via `git show HEAD:src/main/typst/mecfs/bib/general.bib | grep <key>`)

**Phase 2:** Decision: PROCEED. Clinical relevance: MEDIUM. 10 papers ≥ 0.50 discounted certainty. Zero fundamental contradictions. Standing epistemic checklist: [#1 ✓] / [#2 ✓] / [#3 ✓] / [#4 ✓] / [#5 ✓] / [#6 ✓].

**Phase 3:** 12 environments added to ch39. No other chapters modified (healthcare-systems content is self-contained in ch39). Files modified: `ch39-healthcare-systems-policy.typ`. Cross-references to: ch41 (medical gaslighting), Part III (treatment). Standing epistemic checklist verified per-claim: [#1 ✓] / [#2 ✓] / [#3 ✓] / [#4 ✓] / [#5 ✓] / [#6 ✓]. ch30 routing: N/A (no mechanistic/drug content).

**Phase 3a:** Build PASS after fixing `#hypothesis-box` → `#hypothesis` and `@part:treatment` → `#link(<part:treatment>)`.

**Phase 3b:** Safety gate bypassed for all 12 environments (non-treatment content — only item 2 applies). Severity applicability added to all 12 environments.

**Phase 4:** 17 ideas generated (cat 1–2: 4 hypotheses + 4 research directions; cat 10: 3 opposing; cat 11: 2 null assessment; cat 12: 4 evidence quality). Brainstorm at `ops/brainstorms/brainstorm-ch39-healthcare-systems-policy-2026-07-26.md`.

**Phase 4a:** Subtree `subtrees/ch39-healthcare-systems-policy.md` written with 17 nodes. Root index updated.

**Phase 5:** 17 ideas triaged. Critical categories (O1–E4) integrated as limitations/caveats in ch39. Tier 1/2: H1, H2, H3, H4, R1, R2, R3, R4 parked (health-services research designs — no actionable chapter content beyond what's already in the chapter). ch30 tiers: none (no mechanistic/drug content). Phase-3 dedup: O2 (specialist clinic paradox) → covered by oq:specialist-clinic-evidence; N2 (co-production null) → covered by spec:coproduction. Phase 5c: skipped (no medication). Phase 5d: skipped (no mechanism).

**Phase 5b:** Build PASS.

**Phase 5a:** Falsifiability sweep: 2 #hypothesis/#speculation environments already have falsifiable predictions. 10 other environments are #achievement/#clinical-finding/#open-question/#limitation — falsifiability not required. All new environments pass.

**Phase 5z:** 9 glossary entries added (G-BA, ICB, PROM, SSDI, SSI, CME, AHRQ, DEGAM, EUROMENE).

**Phase 6:** 0 matches with pre-existing claims requiring adaptation. Healthcare-systems domain was previously absent from the paper.

**Phase 7:** Zero mechanism overlap — no reinforcement/conflict pairs. Healthcare-systems exists in separate ontological category from biomedical hypotheses in registry.

**Phase 8:** Build PASS.

**Phase 9:** Net certainty change: 0. Quality flags: NONE. Clinical relevance: MEDIUM.

**Phase 10:** 3 cross-references verified. 0 inconsistencies. Standing epistemic checklist: no violations.

**Phase 10a:** Synthesis environment @syn:healthcare-systems-model added to ch39, condensing 17 environments into the four-failure model. Retroactive: not applicable (forward cycle).

**Phase 10b:** No framing propagation needed — synthesis is downstream healthcare-system consequence, not a trigger/amplifier/root-cause claim.

**Phase 11:** Adversarial review (condensed: cynic + clinician + devil's advocate). 13 findings (3 CRITICAL, 7 HIGH, 3 MEDIUM). All CRITICAL and HIGH fixed via 8 edits. Post-fix build: PASS (pre-existing LDN label errors unrelated).

**Phase 12:** Changelog entry added under Version 12.

**Note:** This is a healthcare-systems, policy, and disability chapter — not biomedical. It uses qualitative, policy, and health-services research methods. Modifications to pipeline phases:
- No ch30 cascade tracing (no drug/mechanism content)
- No Phase 5c differential analysis (not treatment-oriented)
- No Phase 5d pathway tracing (not mechanistic)
- Phase 4 brainstorm limited: categories 3–9 (drug/supplement/intervention ideas) are inapplicable; focus on categories 1–2 (hypotheses, research directions) and 10–12 (critical categories)
- Phase 7 cross-hypothesis compatibility may find zero mechanism overlaps (no registry hypotheses in healthcare policy domain)
- Phase 3b safety gate: applies only to item 2 (severity applicability) per the bypass rule for non-treatment content

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none
- **Modifier:** All clinical/policy claims must state evidence type (qualitative, cross-sectional, consensus-based, etc.) — this domain has no experimental evidence.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| H1 | Trust-Erosion Cascade | Tier 2 | 0.40 | ✅ integrated | Covered in lim:guideline-implementation + Bontempo discussion |
| H2 | Diagnostic Desert Hypothesis | Tier 2 | 0.45 | ✅ integrated | Covered in cf:diagnostic-disparities |
| H3 | Guideline Cascade Duration | Tier 3 | 0.35 | tree-only | Parked for future cycles |
| H4 | Invalidation×PEM Bootstrap Trap | Tier 2 | 0.40 | ✅ integrated | Covered in Bontempo discussion + universal-access null |
| R1 | NICE 2021 Natural Experiment | Tier 2 | 0.50 | ✅ integrated | Covered in oq:specialist-clinic-evidence |
| R2 | Geographic Quasi-Experiment | Tier 2 | 0.50 | ✅ integrated | Covered in cf:diagnostic-disparities |
| R3 | Medical Education Pilot RCT | Tier 2 | 0.55 | ✅ integrated | Covered in oq:medical-education-reform |
| R4 | PEM-Proof Care Delivery Trial | Tier 2 | 0.55 | ✅ integrated | Covered in spec:coproduction |
| O1 | Medical Education Null | — | 0.55 | ✅ integrated | lim:education-behavior-gap |
| O2 | Specialist Clinic Paradox | — | 0.45 | ✅ integrated | oq:specialist-clinic-evidence (Phase 3 dedup) |
| O3 | Disability System Reform Null | — | 0.45 | ✅ integrated | lim:disability-gaps |
| N1 | Universal Access Null | — | 0.50 | ✅ integrated | oq:universal-access-null |
| N2 | Co-Production Null | — | 0.50 | ✅ integrated | spec:coproduction (Phase 3 dedup) |
| E1 | Qualitative Participation Filter | — | 0.60 | ✅ integrated | lim:participation-filter |
| E2 | Cross-Sectional Design Constraint | — | 0.60 | ✅ integrated | lim:cross-sectional-constraint |
| E3 | Guideline Evidence Paradox | — | 0.65 | ✅ integrated | lim:guideline-paradox |
| E4 | Geographic Evidence Monoculture | — | 0.70 | ✅ integrated | Covered in lim:evidence-type |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Notes

- All three Part IV structural gap chapters (ch39, ch40, ch43) are empty stubs. Distinct scope: ch39 = healthcare systems + policy + disability; ch40 = economic quantification; ch43 = global/low-resource perspectives. Cross-referencing between them is expected but content should not be duplicated.
- ch41 (controversies) has substantial existing content on medical gaslighting and guideline inconsistencies — reference, don't duplicate.
- ch38 (epidemiology) has existing quality-of-life/disability/burden sections — cross-reference, don't duplicate.
