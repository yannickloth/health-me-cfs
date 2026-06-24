# Integration Plan: IgE Sensitization to Spike/Tick-borne Antigens → Mast-Cell Neuroinflammation

**Purpose:** Evaluate whether a subset of post-infectious ME/CFS patients mount a genuine IgE (Type-I hypersensitivity) response to SARS-CoV-2 spike protein or tick-borne pathogen antigens, and/or whether these infections trigger/exacerbate IgE-mediated allergic disease, with mast-cell-mediated neuroinflammation producing cognitive and neuropsychiatric features. Matters for ME/CFS because it proposes a specific, testable immunological mechanism (antigen-specific IgE) distinct from the non-IgE MCAS mechanisms already covered.

**Topic slug:** ige-sensitization-spike-tick-neuroinflammation
**Date:** 2026-06-24
**Parent topic:** root — standalone `/integrate-topic`
**Origin:** LinkedIn post (lay hypothesis + Grok-generated brain/mast-cell model)

**Scope decision (user-confirmed):** Novel IgE-to-antigen angle ONLY. Existing MCAS / mast-cell coverage (mast-cell-ige-connective-tissue, mast-cell-theoharides-2026, neuroimmune-blitshteyn-2026, mcas-domain6) is treated as the pre-existing base for Phase 6 reinforcement — NOT re-integrated.

**Working-tree note:** Unrelated uncommitted WIP from `extracellular-vesicles-rydland-2026` is present (immune.bib, appendix-h, search log, plan). This cycle scopes all phases by EXPLICIT file lists, not `git diff`, to avoid bundling EV changes. Phase 13 commit stages only this topic's entries.

**Target chapters (provisional, pending Phase 2):**
- ch07 / ch13 (immune dysfunction) — antigen-specific IgE, mast-cell activation
- ch08 (neurological) — mast-cell neuroinflammation → cognition/mood
- ch14d (cross-disease) — allergic disease ↔ post-infectious ME/CFS overlap
- appendix-h (annotated bibliography)
- hypothesis-registry

**Pre-identified hypotheses:**
- Subset of post-COVID / post-tick ME/CFS patients have antigen-specific IgE to spike or pathogen antigens (certainty TBD, likely low)
- Acute infection triggers de novo or exacerbated IgE-mediated allergic sensitization (certainty TBD)
- Mast-cell mediators (histamine, cytokines) drive BBB-adjacent neuroinflammation → brain fog / mood / dysautonomia (certainty TBD — overlaps existing MCAS coverage)

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| P1 | Antigen-specific IgE to spike/tick antigens in ME/CFS subset | T1 | 0.20 | ✅ done | @spec:ige-antigen-subset (ch14b) |
| P2 | Infection triggers/exacerbates IgE allergic disease | T1 | 0.30 | ✅ done | @spec:infection-allergic-sensitization (ch14b) |
| P3 | Mast-cell neuroinflammation → cognitive/neuropsychiatric features | T1 | n/a | ✅ done | @oq:ige-vs-nonige-neuroinflammation + Phase 6 ch07 reinforcement |
| B1 | Local-tissue-sequestered IgE (not in serum) | 1 | 0.15 | ⬜ pending | Cat1 rescue hyp — tree-only |
| B2 | IgE-independent FcεRI upregulation | 1 | 0.12 | ⬜ pending | Cat1 rescue hyp — tree-only |
| B3 | Alpha-gal IgE as tick-exposure marker not mediator | 1 | 0.25 | ⬜ pending | Cat1 — tree-only or oq |
| B4 | Anti-spike IgE serosurvey (3-group) | 2 | 0.30 | ⬜ pending | Cat2 research dir — INTEGRATE |
| B5 | CSF IgE profiling pilot | 2 | 0.20 | ⬜ pending | Cat2 — tree-only (depends on B4) |
| B6 | H1R-blockade cognitive crossover trial | 2 | 0.18 | ⬜ pending | Cat2 — tree-only (depends B4/B5) |
| B7 | The nulls are the signal | 10 | 0.55 | ⬜ pending | Cat10 critical — INTEGRATE (limitation) |
| B8 | Non-IgE MCAS explains all | 10 | 0.60 | ⬜ pending | Cat10 critical — INTEGRATE (limitation) |
| B9 | Acute-COVID anti-spike IgE transient epiphenomenon | 10 | 0.45 | ⬜ pending | Cat10 critical — INTEGRATE (limitation) |
| B10 | Alpha-gal symptoms ≠ ME/CFS phenotype | 10 | 0.50 | ⬜ pending | Cat10 critical — INTEGRATE (limitation) |
| B11 | Null hypothesis assessment | 11 | 0.50 | ⬜ pending | Cat11 critical — integrate (framing) |
| B12 | Self-report vs serology mismatch | 12 | 0.70 | ⬜ pending | Cat12 — limitation sentence |
| B13 | Denatured-antigen assay artifacts | 12 | 0.30 | ⬜ pending | Cat12 — limitation sentence |

## Phase Log

- Phase 0: plan created + validated 2026-06-24.
- Phase 1: 18 papers added to immune.bib (research_stream=ige-sensitization-spike-tick-neuroinflammation), 18 annotated in appendix-h. Search log: content-staging/search-log-...-2026-06-24.md. Summary: content-staging/literature-summary-...-2026-06-24.md. Verdict: **antigen-specific IgE in ME/CFS = UNSTUDIED**; 2 replicated NULLs (total IgE + allergen-specific IgE normal in ME/CFS: reparramirez2001igelevels, kowal2002prevalence). Verified 18 bib keys lowercase. NOTE: summary doc key-list has typos (oh2024incidental→oh2024incident, omits gimenezorenga2025blood) — bib is ground truth.
- Phase 2: synthesis at content-staging/synthesis-...-2026-06-24.md. Decision **PARTIAL** (user-confirmed). Clinical relevance LOW. Contradiction: 1 resolvable (IgE vs non-IgE MC activation — weight to non-IgE/null). Caps: #speculation/#open-question/#limitation only; brainstorm cats 1-2+10-12; WEAK-EVIDENCE flag preemptive.
- Phase 3: new section @sec:ige-antigen-sensitization in ch14b-autoimmune-immune.typ — 1 limitation (@lim:ige-normal-mecfs), 2 speculation (@spec:ige-antigen-subset c0.20, @spec:infection-allergic-sensitization c0.30), 1 open-question (@oq:ige-vs-nonige-neuroinflammation). hypothesis-registry.typ: 3 new entries (2S+1OQ). Files: ch14b, hypothesis-registry. WIP checkpoint SKIPPED (mixed EV tree — rollback via git reflog + explicit file list).
- Phase 3a: nix build PASS (exit 0). 17 citation keys verified resolvable.
- Phase 3.5: 4 environments verified, all have *Consequence:* fields, 0 added.
- Phase 4: brainstorm at content-staging/brainstorm-...-2026-06-24.md, 13 ideas (cats 1,2,10,11,12). Plan table populated with 13 rows.
- Phase 4a: subtree subtrees/ige-sensitization-spike-tick-neuroinflammation.md, 13 nodes; root index updated.
- Phase 5: T1 integrated B4(@oq:antispike-ige-serosurvey), B8(@lim:nonige-mcas-parsimony), B9(@lim:antispike-ige-transient), B10(@lim:alphagal-phenotype-mismatch), B12+B13(@lim:ige-measurement-caveats); B7/B11 already covered in Phase 3. Tree-only: B1,B2,B3,B5,B6. 5 new envs in ch14b; registry +1 OQ (serosurvey). No child topics queued.
- Phase 5b: nix build PASS (exit 0).
- Phase 5a: 9 envs audited (3 fully falsifiable, 1 unfalsifiable fixed @oq:ige-vs-nonige-neuroinflammation, 5 caveats). Subtree statuses: 8 ✅, 5 ↩️ tree-only. Root integrated count → 8.
- Phase 6: ~12 matches examined, 1 adapted. Synonym map: content-staging/synonym-map-...md. Contradiction fixed in ch07 subsec-08-allergic-responses (was "Elevated IgE in subsets" → corrected to replicated-null @reparramirez2001igelevels @kowal2002prevalence, +Th2 cite @skowera2004type2, +@oh2024incident population context, +xref @sec:ige-antigen-sensitization). No bumps (incoming 0.60-0.65). ~10 no-action (ch14d/MCAS hEDS-IgE = different population; flagged for Phase 10 coherence). Build PASS.
- Phase 7: ~3 pairs audited inline. 2 reinforcement (IgE-vs-nonIgE OQ ↔ @spec:gpcr-mast-cell-loop; nonIgE-MCAS-parsimony ↔ same), 1 feed-into (CNS-confined-fatigue theme), 0 conflict. 0 certainty bumps/reductions (PARTIAL cap + both-spec-<0.30 rule). Added 1 reinforcement cross-ref to @spec:gpcr-mast-cell-loop. Compat note: ch14d hEDS-IgE (elevated) vs ME/CFS-IgE (normal) is consistent (different diseases) — Phase 10 to verify reader clarity.
- Phase 8: full nix build PASS (exit 0). Intermediate checks 3a/5b/6 all PASS.
- Phase 9: net certainty 0; reinf:contra 1:1; 4 new falsifiable predictions; ~2.1k words/9 envs. Flags: WEAK-EVIDENCE (expected, handled); BLOAT no; CLINICAL-RISK no.
- Phase 10: 3 chapters audited (ch14b/ch07/registry), 0 inconsistencies. hEDS-vs-ME/CFS IgE coherent (different diseases, no conflation — new section never mentions hEDS).
- Phase 10a: synthesis @syn:ige-sensitization-spike-tick-neuroinflammation-model added to ch14b, condensing 6 envs. Build PASS.
- Phase 11: 11b adversarial (6 personas) CONVERGENCE-ELIGIBLE (0 CRIT/0 HIGH; 4 MED + 6 LOW fixed opportunistically — antihistamine trigger/mediator split, alpha-gal strawman softened, epitope claim marked as reasoning, "LinkedIn" → neutral phrasing, sub-threshold caveat, 15% threshold labelled arbitrary, ECP/atopy-stratification citations scoped). 11c typst-xref CLEAN (0 err/0 warn; 3 ch07 whitespace NITs fixed). No Gate C topics. Build PASS throughout.
- Phase 12: changelog Version 11 entry added (motivated by reparramirez2001igelevels + kowal2002prevalence nulls + oh2024incident). Build PASS. Subtree root status → ✅ done.

## Notes

- Null hypothesis = non-integration. Burden of proof on demonstrating antigen-specific IgE evidence exists.
- Related plans: ops/plans/mast-cell-ige-connective-tissue-integration-plan.md, ops/plans/mast-cell-theoharides-2026-integration-plan.md, ops/plans/neuroimmune-blitshteyn-2026-integration-plan.md
