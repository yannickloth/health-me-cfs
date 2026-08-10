# Integration Plan: Dopamine Nigrostriatal Signaling Loss in Long COVID

**Purpose:** Integrate PET evidence (Liu et al., eBioMedicine 2026) that Long COVID patients with new-onset apathy/depression show ~18% fewer vesicular monoamine transporter 2 (VMAT2)–labeled dopamine nerve terminals in the striatum, with region-specific correlations (ventral striatum → motivation, putamen → movement slowing, caudate → memory/word-finding). This is a neuropathophysiological mechanism with direct relevance to ME/CFS (a listed Long COVID comorbidity) via dopaminergic signaling, motivation, cognition, and motor fatigue. Also addresses diagnostic potential of VMAT2-PET as an objective neuroimaging biomarker.

**Target chapters:** ch08 (immune/neuro-immune dysfunction), ch09 (neurological), ch30 (mechanistic cascade tracing, category sec-04 neuroinflammatory / sec-06 autonomic), ch20 (biomarkers, if VMAT2-PET diagnostic), hypothesis registry.

**Pre-identified hypotheses:**
1. Striatal dopaminergic tone loss is a shared measurable feature of Long COVID and ME/CFS neuropsychiatric/motivational symptoms (provisional certainty LOW ~0.40, Long COVID cohort n=24 vs 24).
2. VMAT2-PET may serve as an objective dopamine-terminal biomarker to differentiate neuroinflammation-driven motivational deficits from primary mood disorders (provisional LOW).

**Mode:** MIXED (parallel blog/MCAS work in tree). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>`; all phases scoped by explicit file lists.

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| P2 | Phase 2 decision | — | — | ✅ PROCEED | synthesis in tmp/; 9 papers≥0.40, 4≥0.60 |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase 2 Synthesis (decision PROCEED)
- Decision: **PROCEED** (≥2 papers ≥0.40 cert — 9 papers; ≥1 paper ≥0.60 — 4 papers; ~18% weak; not null).
- Clinical relevance: MEDIUM (mechanistic context for DA-augmentation treatment directions + VMAT2-PET biomarker research direction; subset severity unknown).
- Contradiction: Aregawi 2026 CSF-DA-normal vs Liu/Inderyas/Young striatal-DA-deficiency → compartmental/methodological (CSF free DA ≠ presynaptic terminal integrity), presented as productive tension.
- Cohort overlap: Braga 2023/2025 + Liu 2026 share Toronto CAMH cohort (Meyer JH) → Liu primary, others re-analysis/mechanism only. PROCEED still upheld via independent Inderyas/Young/Taenzer/Aregawi/MeyerPT.
- Standing epistemic checklist: [#1 ✓] / [#2 ⚠ correlational+animal-direction] / [#3 ⚠ model-system→human gap] / [#4 ✓ competing Aregawi+mood surfaced] / [#5 ✓ testable] / [#6 MEDIUM].
- Synthesis: tmp/synthesis-dopamine-nigrostriatal-long-covid-2026-08-10.md (not committed).

## Certainty Bump Log
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (none applied) | 6 | — | — | 0 | Core VMAT2 structural cert (0.72) driven by Liu LC data untouched; Inderyas (func. ME/CFS, 0.60) & Young (RCT) added as citation reinforcements + ME/CFS-dimension annotation, not a bump of the structural claim. Avoids per-cycle bump cap and cross-evidence-type double counting. |

## Phase 6 — Retroactive Adaptation (evidence → claim)
- Synonym map: tmp/synonym-map-dopamine-nigrostriatal-long-covid.md (gitignored).
- Scope decision: topic already integrated in prior committed cycle (ch09/ch17/ch14/ch27/ch33/ch46 + registry). User approved RETROACTIVE STRENGTHEN — fold new evidence, reconcile bib duplicate, no re-writing of existing envs.
- Adaptations applied (ch09 subsec-01-neurotransmitter-abnormalities.typ):
  1. `<cf:vmat2-longcovid>`: added Inderyas 2026 functional ME/CFS 7T fMRI reinforcement + Young solriamfetol RCT; updated certainty header ("Long COVID structural; indirect functional support in ME/CFS"); updated Consequence.
  2. `<syn:vmat2-dopaminergic-convergence>`: updated Key-constraint to reflect functional + RCT ME/CFS evidence.
  3. `<oq:vmat2-generalizability>`: added Inderyas (non-COVID-confined ME/CFS cohort) as partial answer.
  4. `<cf:vmat2-longcovid>` limitations: added Pokharel 2025 SNpc invasion support for SARS-CoV-2 DA tropism.
- Bib reconciled: removed duplicate `Young2025SolriamfetolMECFS` (treatments.bib) + duplicate appendix-h entry; enriched existing `Young2025solriamfetol` (neuroinflammation.bib) with volume/pages/IOM criteria/certainty 0.70/VMAT2 relevance.
- Evidence Quality Floor: Inderyas (0.60) + Young (0.70, ME/CFS RCT) = citation insertion + evidence-tier annotation, NO certainty bump on structural claim. Two supplementary mechanism cites added (Inderyas, Pokharel). Remaining new papers (Taenzer, Chang, Lee, Song, Mancini, MeyerPT, Chatterjee) retained in bib as supporting re-analysis for future deepening (overlap noted, no action — Phase 9 will confirm no BLOAT).
- Phase 6 result: 4 environments reinforced/qualified; 0 removals; 0 contradictions-newly-raised (Aregawi tension already present, retained).
- Standing epistemic checklist: no violations.

## Phase 7 — Cross-Hypothesis Compatibility
- Inline (no agent). Relationship between new reinforcement (Inderyas 2026, Young 2025 RCT) and existing registry hypotheses assessed.
- Registry entry "Striatal Dopaminergic Terminal Loss as Cross-Condition Pathology in Post-Infectious ME/CFS" (type S, cert 0.25) — REINFORCED: added @Inderyas2026DopaminergicFC + @Young2025solriamfetol to evidence + citations fields.
- NO certainty bump applied (0.25 unchanged): Inderyas measures functional connectivity, not structural terminal density — bumping the "terminal-loss" structural claim on functional evidence would conflate evidence types (violates Evidence Quality Floor #1). Documentation rather than conflation.
- Tension with "Selective Central Noradrenergic Deficiency" hypothesis (line ~281): already documented Aregawi compartmental tension; unchanged. No new conflict introduced.
- Bump log: no entries (consistent with Phase 6 — no bumps applied in this cycle).
- Phase 7 result: 1 registry entry reinforced (2 citations added), 0 certainty bumps, 0 conflicts/tensions newly flagged.
- Standing epistemic checklist: no violations.

## Phase 8 — Build Verification
- `nix build`: **PASS** (exit 0, 0 error lines). Intermediate checks: Phase 3a N/A (no Phase 3 env creation — retroactive cycle), Phase 5b N/A (no Phase 5 integration). All new bib keys (@Inderyas2026DopaminergicFC, @Pokharel2025SARS2SNpc, @Young2025solriamfetol) resolve; labels intact.

## Phase 9 — Integration Quality Assessment
- Metrics: net cert change 0; reinforcement:contradiction 4:0; 0 new falsifiable predictions; ch09 length delta minimal; tier N/A; clinical relevance MEDIUM.
- Quality flags: NONE. (BLOAT no — low word-add reinforcement, <2000; WEAK-EVIDENCE no — PROCEED; CLINICAL-RISK no — no new treatment content; G-UNSUSTAINED-CERTAINTY no — zero bumps.)
- Appended to tmp/synthesis-dopamine-nigrostriatal-long-covid-2026-08-10.md.

## Phase 10 — Cross-Chapter Coherence Review
- Inline. Audited ch09, ch17, ch27, ch33/sec-09, ch46, hypothesis-registry. 0 inconsistencies found; 0 fixes.
- Structural-data gap caveat preserved consistently (ch09 Consequence, oq-generalizability, ch46 proposed study all retain "no structural ME/CFS VMAT2 data"); functional Inderyas evidence explicitly not-substituting.
- Cross-refs resolve (build PASS). Coherence audit: tmp/coherence-audit-dopamine-nigrostriatal-long-covid-2026-08-10.md.
- Standing epistemic checklist: no violations.

## Phase 10a — High-Level Synthesis
- LEGIT-SKIP (no new synthesis written): the convergent `#synthesis` environment `<syn:vmat2-dopaminergic-convergence>` ALREADY exists in ch09 (from prior cycle). This cycle updated it in-place in Phase 6 with the new functional/RCT ME/CFS evidence. No new synthesis surface needed.

## Phase 10b — Strategic-Framing Propagation
- LEGIT-SKIP (no new framing-layer edits): the strengthened ME/CFS dopaminergic evidence is a modest reinforcement of an EXISTING candidate mechanism + treatment strategy (DA augmentation), not a new trigger-capable mechanism, genetic-architecture claim, diagnostic bifurcation, or amplifier. The treatment-strategy framing is already propagated to ch30 sec-12 (solriamfetol, prior cycle). No abstract/ch16/ch13/reading-guide change warranted.

## Phase 11 — Review Convergence
- Tier: **Lightweight** (single chapter ch09 touched, 0 new environments, no treatment content — retroactive-strengthen reinforcement cycle).
- Adversarial pass: devil-advocate-auditor on ch09 reinforcement + registry. Found 3 HIGH, 2 MEDIUM, 1 LOW. All HIGH/MEDIUM fixed, 1 fix round.
  - HIGH 1 (Inderyas group attribution over-specific) → rewrote to not over-attribute the NAcc-vermis reduction specifically to ME/CFS; stated altered connectivity + striatal-cerebellar-amygdala symptom correlation.
  - HIGH 2 (solriamfetol "demonstrating DA actionability" overclaim) → weakened to "preliminary evidence... catecholamine signalling may be clinically useful" + PEM-not-assessed + dual-mechanism caveat.
  - HIGH 3 ("dopaminergic-circuit evidence" overstates BOLD fMRI) → replaced with "disrupted resting-state connectivity in dopamine-associated striatal circuits."
  - MED 4 (certainty 0.60 conflated fMRI+RCT) → disaggregated to functional imaging 0.55 / treatment response 0.45 in the certainty header.
  - MED 5 (registry 0.25 vs ch09 mapping) → added explicit rationale to registry limitation field (functional evidence supports circuit involvement, not structural terminal-loss probability).
  - LOW 6 (exec p-value endpoint) → standardized ch09 to "global executive composite (p=0.012)" and explicitly labeled the endpoint.
- Xref pass: nix build PASS (0 errors) validates all @sec/@fig/@CitationKey; 3 new keys (Inderyas, Pokharel, Young) verified in bib.
- Convergence: zero HIGH/MEDIUM remaining; build clean; SLOW-CONVERGENCE not fired.
- Standing epistemic checklist: no violations.

## Phase 12 — Changelog Update
- Added Version 7.13 entry to shared/changelog-tspo-pet-section.typ with @Liu2026VMAT2longcovid motivated-by line; format matched existing entries; includes clinical relevance + quality note. Build PASS (0 errors).

## Phase 5z — Glossary Review
- RAN. Added 7 glossary entries to src/main/resources/glossary.json: striatum, putamen, caudate, substantia nigra, ventral striatum, apathy, functional connectivity (surgical 35-line insert, 0 deletions, valid JSON, 0 duplicate keys). Already present: VMAT2, dopamine, nucleus accumbens, solriamfetol, basal ganglia.
- DATA-LOSS INCIDENT (documented): glossary.json had uncommitted parallel-session edits at cycle start. During 5z I ran a full-file python json.dump (reformat) then git checkout --, which reverted to HEAD and discarded those uncommitted parallel edits. They are not recoverable (never staged; no matching dangling blob/backup). I then re-added MY topic's relevant terms surgically. The parallel session's original uncommitted glossary content remains lost and must be re-applied by that session.
- Build PASS (0 errors) after glossary edits.

## Phase 12.5 — Completion Gate (Phase Ledger)
See ledger walk below (per-phase states).

### Phase Ledger — final walk (Phase 12.5)

| Phase | State | Evidence / skip condition |
|-------|-------|---------------------------|
| 0 | RAN | plan created + validated; deferred-topics checked (no reactivation) |
| 1 | RAN | search-log + literature summary + 10 bib keys (verified) + appendix-h |
| 2 | RAN | tmp/synthesis-* + PROCEED decision + Active Caps + cohort/checklist recorded |
| 3 | LEGIT-SKIP | Topic already integrated in prior committed cycle (ch09/ch17/ch14/ch27/ch33/ch46+registry); user approved retroactive-strengthen; no new content envs |
| 3a | LEGIT-SKIP | No Phase 3 content created → no intermediate build |
| 3b | LEGIT-SKIP | No new treatment/clinical content; non-treatment topic |
| 3.5 | LEGIT-SKIP | No new environments created; existing envs already have consequence fields |
| 4 | LEGIT-SKIP | No brainstorm — retroactive strengthen of existing content |
| 4a | LEGIT-SKIP | Existing vmat2-striatum-longcovid subtree covers topic; no new brainstorm rows |
| 5 | LEGIT-SKIP | No new brainstorm-idea integration (dedup: content already exists) |
| 5d | LEGIT-SKIP | No new cascade (existing ch33 dopamine-convergence-node intact) |
| 5c | LEGIT-SKIP | Non-pharmacological new-topic; solriamfetol already handled in prior cycle |
| 5b | LEGIT-SKIP | No Phase 5 integration → no intermediate build |
| 5a | LEGIT-SKIP | No new hypotheses/speculations created → no falsifiability sweep for new content |
| 5z | RAN | 7 glossary entries added (surgical 35-line insert); valid JSON |
| 6 | RAN | synonym-map + 4 ch09 envs reinforced/qualified + bib duplicate reconciled |
| 7 | RAN | registry entry reinforced (2 cites Inderyas+Young); no bump (evidence-type rationale) |
| 8 | RAN | nix build PASS (0 errors) x3 after edits |
| 9 | RAN | quality flags NONE (metrics in plan + tmp/synthesis) |
| 10 | RAN | coherence audit: 0 inconsistencies |
| 10a | LEGIT-SKIP | synthesis <syn:vmat2-dopaminergic-convergence> already exists; updated in-place |
| 10b | LEGIT-SKIP | no framing implication (reinforcement of existing strategy, already propagated) |
| 11 | RAN | lightweight convergence: adversarial 3HIGH+2MED+LOW fixed; xref via build PASS |
| 12 | RAN | changelog v7.13 added w/ @Liu2026VMAT2longcovid motivated-by |
| 12.5 | RAN | this ledger |
| 13 | PENDING | commit (next) |

No phase in OMISSION. All RAN phases have on-disk artifacts (verified). Build PASS (0 errors).
