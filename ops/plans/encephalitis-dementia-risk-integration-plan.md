# Integration Plan: Encephalitis → Long-term Dementia Risk (Aditi 2026)

**Purpose:** Evaluate whether Aditi et al. 2026 (long-term risk of dementia following encephalitis, J Neurol 273:511, DOI 10.1007/s00415-026-14017-3) warrants integration as cross-disease / indirect evidence for ME/CFS neuroinflammation → neurodegeneration causal reasoning.

**Primary paper:** Aditi, Blackwell T, Fang X, Sharma S, Mendoza M, Landay A, Golovko G, Samir P. Long-term risk of dementia following encephalitis: a large-scale retrospective cohort study of electronic health records. *J Neurol* 273:511 (2026). DOI: 10.1007/s00415-026-14017-3.

**Study summary (from full text):** Retrospective cohort, TriNetX US EHR (~129M patients, 72 HCOs). Encephalitis (onset ≥2005) vs propensity-score-matched controls; 10-yr follow-up. Composite dementia outcome + individual codes; age-stratified + etiology-stratified; comparator cohorts (sepsis, meningitis, stroke). Competing-risk + Cox models.

**Key quantitative results:**
- Cumulative incidence 74.3/100k, prevalence 90.2/100k (2014–2024).
- Composite dementia RR by age: >60y = 2.11 (1.98, 2.25); 40–60y = 5.16 (4.46, 5.98); 20–40y high but driven by post-encephalitic sequelae (G31), not AD/F03.
- HR 10-yr: >60y = 3.26 (3.05, 3.49); 40–60y = 6.74.
- Etiology (composite dementia RR): non-infectious/post-infectious inflammatory (autoimmune: anti-NMDA, Hashimoto's, ADEM) = 3.93 (3.35, 4.61) [highest]; viral = 1.99 (1.77, 2.24); fungal/parasitic = 1.42 (1.30, 1.55); unspecified = 1.35 (…); **bacterial = 1.35 (0.97, 1.87) not significant**.
- vs sepsis/meningitis/stroke: encephalitis higher risk for composite + individual categories; vascular dementia exception (higher in stroke, consistent with vascular pathogenesis).
- Epilepsy risk increased across all cohorts (positive control); mortality higher in encephalitis group.

**Target chapters (provisional):**
- `ch08-immune-dysfunction` (neuroinflammation sec) — encephalitis as acute, direct CNS inflammation precedent
- `ch09-neurological` / neuroinflammation
- `ch14d` / `ch13` (cross-disease parallels — comparable to Kuring dementia template)
- `ch19-causal-hierarchy` (trigger/acute-inflammation → chronic neuroinflammation → neurodegeneration reasoning)
- Potential `ch15-neurodegeneration-risk` existing claim (retrospective adaptation, Phase 6)

**Phase 0 note — MIXED tree:** Working tree is MIXED at cycle start (unrelated `web/en/blog/posts/**/*.qmd` edits present + untracked `Literature/reviews/Aditi2026_encephalitis_dementia_risk.pdf`). User confirmed: proceed in MIXED mode. No shared-branch WIP commits; checkpoint via scratch pointers only; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); commit scoped by explicit file lists.

## Pre-identified hypotheses

| Hyp | Description | Preliminary cert |
|-----|-------------|------------------|
| H-1 | Acute, direct CNS inflammation (encephalitis) predicts elevated long-term dementia risk in adults (RR ~2–5 by age), providing a cross-disease precedent that *severe acute neuroinflammation* → later neurodegeneration — supports ME/CFS "chronic neuroinflammation → CNS pathology" reasoning by analogy | 0.42 (re-calibrated from 0.56 on adversarial review; raw 0.70 × 0.75 population × 0.80 analogical-distance) |
| H-2 | Autoimmune/post-infectious inflammatory (non-infectious) encephalitis carries the *highest* dementia risk (RR 3.93) of all etiologies — cross-disease evidence that immune-mediated CNS inflammation is a stronger neurodegeneration driver than infection alone; parallels ME/CFS autoimmunity-vs-infection debate | 0.42 (re-calibrated; per H-1) |

## Tracking table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Core paper evidence synthesis | — | 0.56 disc | ⬜ pending | Phase 2 decision pending |
| 2 | Acute-CNS-inflammation → neurodegeneration template | 2 | 0.56 | ⬜ pending | Phase 3 target (ch14d) |
| 3 | Autoimmune encephalitis highest-risk etiological signal | 2 | 0.56 | ⬜ pending | Phase 3 target (ch08/ch14d) |

## Related plans
- `dementia-inflammation-integration-plan.md` (Kuring 2026, dementia *markers* meta-analysis — already integrated): complementary — that plan provides systemic inflammatory-marker template; this plan provides acute-direct-CNS-inflammation → neurodegeneration template. Do NOT duplicate Kuring content; cross-reference instead.
- `inflammation-registry-integration-plan.md` (check for overlap).

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| @spec:encephalitis-dementia-precedent | 6/7 | — | — | 0 | No Phase 6/7 bump — incoming Aditi evidence discounted 0.56 (floor 0.40–0.59 = citation only); mutual-reinforcement rule for speculative pairs (both <0.50 guard). |

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed
- Brainstorm categories (Phase 4): all 1–12
- Certainty bumps (Phases 6–7): per normal rules
- Phase 9 flags pre-fired: none

## Phase 1/2 status
- Phase 1: 7 papers (1 primary Aditi2026 + 6 supporting). Bib keys (verified via awk): `Aditi2026EncephalitisDementia`, `Granerod2017PostEncephalitis`, `Heneka2025NeuroinflammationAD`, `Ising2019NLRP3Tau`, `Heneka2013NLRP3Alzheimer`, `Javonillo2026CoronavirusAD`, `Cohen2024NeuroinflammReview` → `bib/neuroinflammation.bib`. Annotated bib: 7 entries → appendix-h. Search log: `ops/research/search-log-encephalitis-dementia-risk-2026-08-12.md`. Integration guide: `ops/integration-guides/encephalitis-dementia-risk-integration-guide.md`. Scrape registry: MedicalXpress URL + DOI rows appended.
- Phase 2: **PROCEED.** 6/7 papers disc cert ≥0.40 (Aditi 0.56, Granerod 0.60, Heneka2025 0.64, Ising 0.56, Heneka2013 0.56, Cohen 0.60); 1 preprint partial-null (Javonillo 0.32). Clinical relevance MEDIUM (mechanistic cross-disease precedent for causal-hierarchy; non-treatment). Standing epistemic checklist #1–#6 ✓ (worst: #5 — no ME/CFS dementia data, flagged as central gap). Contradictions: bacterial-encephalitis null + Javonillo partial-null = etiology-specificity/caveats, not fundamental. ch30 footprint: citation cross-ref only. Synthesis: `tmp/synthesis-encephalitis-dementia-risk-2026-08-12.md`.

## Tracking table (updated)

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Core paper evidence synthesis | — | 0.42 disc | ✅ done | Phase 2 PROCEED; synthesis + Active Caps set. Final certainty 0.42 (re-calibrated from 0.56 on adversarial review — analogical-distance factor). |
| 2 | Acute-CNS-inflammation → neurodegeneration template | 2 | 0.42 | ✅ done | Phase 3: ch14d @spec:encephalitis-dementia-precedent + registry entry |
| 3 | Autoimmune encephalitis highest-risk etiological signal | 2 | 0.42 | ✅ done | Phase 3: folded into ch14d speculation (RR 3.93 vs bacterial null) |

## Phase 3 / 3a / 3b / 3.5 status
- Phase 3: content integrated. ch14d new `#speculation` (`@spec:encephalitis-dementia-precedent`); ch14d synthesis updated to cross-ref; ch19 Chronicity bullet extended (longitudinal temporal upgrade); ch08 subsec-05 microglial-activation supporting sentence; ch18 sec-14 supporting bullet; 1 registry entry (type S, cert 0.56, `= Entries added 2026-08-12`). Files: ch14d-cross-disease.typ, ch19-causal-hierarchy.typ, subsec-05-neuroinflammation.typ, spec-chronic-glymphatic-impairment-as-a-risk-.typ, hypothesis-registry.typ.
- Phase 3a build: PASS (nix build, exit 0, PDF produced).
- Phase 3b safety gate: 4 envs gated, ALL non-treatment → bypass (item 2 only); severity stated as unknown; 0 blocked. tmp/safety-gate-encephalitis-dementia-risk.md.
- Phase 3.5: 1 new environment (ch14d speculation) has `*Consequence:*`; PASS. Pre-existing ch18 env lacks consequence — noted for Phase 10 retrofit.

## Phase 4 / 4a / 5 status
- Phase 4: brainstorm (scientific-insight-generator) → `ops/brainstorms/brainstorm-encephalitis-dementia-risk-2026-08-12.md` (24 ideas, all categories 1–12, each with falsifiable prediction + non-specialist consequence + usefulness scores).
- Phase 4a: subtree `ops/plans/hypotheses-trees/subtrees/encephalitis-dementia-risk.md` (24 nodes); root index row added (24 ideas, 17 integrated).
- Phase 5 triage: dedup against Phase 3 → **16 nodes `⏭️` covered-by-@spec:encephalitis-dementia-precedent** (incl. all critical-category 10.x/11.x/12.x, research directions captured in falsifiability prediction); **8 nodes `↩️` tree-only/parked** (3.x/4.x treatment probes, 6.1, 7.x math, 8.1 — cross-disease indirect evidence → long-shot/no-ME/CFS-data). **No new chapter environments added in Phase 5** — the single comprehensive Phase 3 speculation already exhausts the evidence thread (BLOAT control; consistent with Kuring precedent).
- Phase 5d (ch30 cascade): **SKIP** — ch30 footprint = citation cross-ref only; no specifiable ME/CFS cascade with drug interception ≥0.30.
- Phase 5c (medication differential): **N/A** — non-pharmacological topic.
- Phase 5b build: PASS (exit 0, PDF produced).
- Phase 5a (falsifiability): PASS inline — the new ch14d speculation has `*Falsifiable prediction:*`, `*Critique:*` (structurally falsifiable), `*Consequence:*` + severity applicability.
- Phase 5z (glossary): 4 entries added (NfL, GFAP, Encephalitis, Dementia) to `src/main/resources/glossary-en.json`; JSON valid; <20 guard not triggered.

## Phase 6 / 7 status

### Phase 6 (retroactive adaptation)
- Incoming Aditi evidence: discounted cert 0.56 → Evidence Quality Floor band 0.40–0.59 → **citation insertions only; NO certainty bumps**.
- Adapted matches (reinforcement/caveat citation insertions, all within floor):
  1. ch19 Chronicity bullet (longitudinal temporal upgrade) — Phase 3.
  2. ch18 `@spec:ch15-neurodegeneration-risk` supporting bullet — Phase 3.
  3. ch08 subsec-05 neuroinflammation microglial anchor — Phase 3.
  4. ch14d synthesis cross-ref — Phase 3.
  5. ch09 glial-cell-dysfunction caveat (adverse to "glial inflammation without overt neurodegeneration" framing, atop Omdal null-NfL) — Phase 6.
- Certainty bumps: **0** (floor 0.40–0.59 forbids bumps). Reductions: 0. Contradictions: Javonillo partial-null (disc 0.32, below citation floor) + bacterial-null (etiology-specificity) both surfaced visibly in the ch14d critique → visibility symmetry maintained (contradicting evidence shares the page with supporting claims).
- Synonym map: tmp/synonym-map-encephalitis-dementia-risk.md (neuroinflamm/neurodegeneration/glial/TSPO-PET/NfL/GFAP/dementia/encephalitis).
- Report: 5 matches examined, 5 adapted (all citation insertions; 0 bumps; 0 reductions).

### Phase 7 (cross-hypothesis compatibility) — inline, main session
- New registered speculation: `@spec:encephalitis-dementia-precedent` (type S, cert 0.56).
- Pairs audited against the registry's most related entries (neuroinflammation-domain emphasis per budget):
  - encephalitis-dementia(0.56) ↔ bidirectional-mood-inflammation-template(0.40): **feed-into/reinforcement** — the acute-exposure cohort is a stronger temporal instantiation of the same inflammation→neurodegeneration template; cross-ref added in ch14d synthesis. No bump (both speculative; mutual-reinforcement-no-bump rule; diff 0.16 but both <0.50 guard).
  - encephalitis-dementia(0.56) ↔ th17-myeloid-shared-signal(0.30): **independent/orthogonal** (marker-axis vs longitudinal-risk template) — shared neuroinflammation theme but no shared regulatory claim.
  - encephalitis-dementia(0.56) ↔ `@spec:ch15-neurodegeneration-risk`(0.35): **reinforcement** — cross-ref added (ch09 caveat references it implicitly; ch18 sec-14 bullet).
  - encephalitis-dementia(0.56) ↔ `@spec:bidirectional-mood` contradiction domain: none — no conflicting claims.
- Certainty bumps: 0; reductions: 0; tensions flagged: 0. Per-cycle cap respected (no Phase 6 bump, no Phase 7 bump).
- Report: 4 pairs audited (2 reinforcement/feed-into, 2 independent), 0 bumps, 0 reductions. Standing epistemic checklist: no violations.

## Phase 10 / 10a / 10b status
- Phase 10 (coherence): 5 chapters audited (ch14d, ch19, ch08, ch18, ch09). 1 inconsistency (terminology: autoimmune/post-infectious-inflammatory vs non-infectious/post-infectious inflammatory (autoimmune)) → FIXED, harmonized to the paper's term. 0 require user decision. Audit: tmp/coherence-audit-encephalitis-dementia-risk-2026-08-12.md. Retrofit note (pre-existing, not this cycle): ch18 `@spec:ch15-neurodegeneration-risk` lacks `*Consequence:*`.
- Phase 10a (synthesis): NO new synthesis box. The existing `@syn:dementia-inflammation-template` in ch14d was already expanded in Phase 3 to incorporate the acute-exposure precedent into its first convergent take-away. A second synthesis on the identical ch14d convergent point would duplicate it (redundancy risk). Documented skip (not silent omission).
- Phase 10b (framing): NO propagation needed — cross-disease mechanistic reinforcement; does not add a new trigger-capable mechanism, amplifier, genetic claim, diagnostic bifurcation, or actionable treatment strategy. Relevant framing (ch19 chronicity, ch08 neuroinflammation, ch09 glial) already in place.

## Certainty amendment (post-Phase-11 adversarial review)
- The ch14d speculation certainty was re-calibrated from 0.56 to **0.42** (registry entry updated to match). Rationale (HIGH-4): a flat 0.75 population weight overestimated certainty because the analogical chain is long — acute florid encephalitides (frank tissue damage) are farther from chronic low-grade, contested, possibly-reversible ME/CFS neuroinflammation than the sibling dementia-metabolic parallels. New calibration: 0.70 raw × 0.75 population × 0.80 analogical-distance = 0.42 (within ±0.10 granularity, justified explicitly in the speculation body). This keeps it a `#speculation` and places it just above the bidirectional-mood template (0.40), reflecting its stronger, replicated, exposure-defined evidence base.

## Phase 11 status (adversarial review — cynic-auditor, weighted to the highest-risk content)
- Result: 0 CRITICAL, **4 HIGH, 4 LOW** → CONVERGED after addressing all HIGH.
- **HIGH-1 (G31/sequelae endpoint conflation):** FIXED — ch14d speculation + ch19 now state the composite-outcome excess is robust on specific dementia codes in 40–60y/>60y, but the younger-cohort signal reflects post-encephalitic G31 sequelae, not AD-type degeneration; Granerod replication "highest risk early in follow-up" noted.
- **HIGH-2 (ch08 TSPO premise stated as fact):** FIXED — ch08 anchor requalified as "still-contested ME/CFS TSPO signal (see limitation below)" so the cross-disease anchor does not lean on the unreplicated premise as fact.
- **HIGH-3 (ch19 self-perpetuation conflation):** FIXED — ch19 reframed: acute encephalitis cited as precedent for "defined acute inflammation → later degeneration," explicitly distinguished from the self-perpetuation loops; noted encephalitis is itself acute/self-limited.
- **HIGH-4 (certainty 0.56 too high for analogical gap):** FIXED — re-derived to 0.42 with explicit analogical-distance justification (registry + speculation).
- **LOW-1 (age gradient flattened by "two-to-five-fold" shorthand):** noted — downstream chapters retain the shorthand; the age/number detail now lives in ch14d/ch19. Acceptable.
- **LOW-2 (ch09 "acute, sustained" import):** FIXED — removed "sustained" as a property of encephalitis.
- **LOW-3 (replication peak timing omitted):** FIXED — "risk highest early in follow-up" added to ch14d.
- **LOW-4 (post-exercise-only exosome signal):** FIXED — ch14d now notes the exosome IL-1β finding is reported after exercise, not at rest.
- Citation integrity: verified (0 findings) — all @keys real, RR statistics match the paper.
- SLOW-CONVERGENCE: not fired (one review pass, fast convergence).

## Phase 12 / 13 status
- Phase 12: changelog updated — Version 7.16 entry in `shared/changelog-tspo-pet-section.typ` (references @Aditi2026EncephalitisDementia @Granerod2017PostEncephalitis; clinical relevance MEDIUM; quality note none).
- Phase 13: commits `be4ed54d` (content, 10 files) + `f9d90674` (docs, 8 files incl. Literature/reviews/Aditi PDF). Final build PASS (exit 0).
- Epistemic checklist: all ✓. Quality flags: NONE. ch30: citation cross-ref only. Phase Ledger: all phases RAN or LEGIT-SKIP (zero OMISSION).
- Post-commit tree: only foreign `web/en/blog/**/*.qmd` + `Literature/s41586-026-10740-z.pdf` remain (other streams' work) — left unstaged/untracked. MIXED-tree honored: no reset/rebase/amend, explicit-file-list staging/commit. Status: ✅ done.
