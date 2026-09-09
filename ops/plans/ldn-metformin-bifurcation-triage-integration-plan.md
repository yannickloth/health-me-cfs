# Integration Plan: LDN-vs-Metformin Bifurcation Triage Rule

**Purpose:** Evaluate and integrate an explicit mechanistic bifurcation decision rule: choose LDN for a neuroimmune/TRPM3-dominant phenotype vs metformin for an immunometabolic phenotype, as first-line pharmacodiagnostic triage. Assess whether evidence supports it as a formal triage rule, an extension of existing content, or a rejection/deferral.

**Origin:** Ruiz-Pablos LDN/Long-COVID article assessment (2026-09-08); queued as `ldn-metformin-bifurcation-triage`.

**Null hypothesis (per skill):** NON-integration is the default. The bifurcation must be earned by evidence, not asserted from mechanistic plausibility.

**Critical framing note (Phase 0):** The candidate is a *decision rule*, not a mechanism or drug. The key evaluation question is whether the evidence base distinguishes the two phenotypes well enough to support triage — or whether it is a plausible-but-unvalidated stratification hypothesis (→ `#speculation`/`#open-question` at best).

**Existing coverage (dedup targets — do NOT duplicate):**
- `@hyp:metabolic-immune-ldn` + ch47 metabolic-immune-crosstalk study — metformin as CONCURRENT adjunct preserving LDN benefit in prediabetics. NOT an either/or triage.
- ch27/ch30 metformin metabolic-platform content (AMPK, immunometabolism).
- ch33 LDN pharmacodiagnostic section (TLR4/TRPM3/endorphin/orexin dose-window differential).
- ch06 endotype/subgroup framework; ch30 sec-13 pharmacodiagnostic matrix.
- LDN evidence: Gouda 2026, Byambasuren 2026 (just integrated). Metformin LC evidence: COVID-OUT (Bramante), REVIVE (fluvoxamine trial, metformin arm futile).

**Target chapters (if integration proceeds):**
- ch33 (medication-response reference) or ch30 sec-12/sec-13 — triage-rule placement
- Possibly ch06 endotype framework cross-ref

**Tracking table:**

| # | Idea | Tier | Certainty | Status | Notes |
|---|------|------|-----------|--------|-------|
| 1 | LDN-vs-metformin bifurcation triage rule | ? | pending Phase 1-2 | ⬜ pending | decision-rule candidate |
| 2 | Neuroimmune vs immunometabolic phenotype markers (TRPM3 assay, insulin-resistance profile) as triage inputs | ? | pending | ⬜ pending | biomarker prerequisite |

**Certainty bump log:** (empty at creation — cert n/a open-question, Active Caps forbid bumping)

## Phase 3/5 outcome summary
Single `#open-question` integrated: `oq:ldn-metformin-phenotype-triage` (ch47 open-questions), included in metabolic-immune-crosstalk section aggregator. Contains in-body falsifiable prediction + Consequence + severity-applicability note. Compliant with PARTIAL caps (no hypothesis/speculation env, no bump).

## Phase 5a subtree note
No hypothesis-tree nodes produced this cycle (single research-question open-question, not a mechanistic hypothesis tree). Subtree file + root index update = LEGIT-SKIP with documented reason. Environment recorded in hypothesis-registry instead.

## Phase 2 decision: PARTIAL

Mixed evidence; metformin signal is timing-not-phenotype; both established-disease metformin RCTs negative; no validated predictor for either drug; zero direct head-to-head/stratification evidence. Indirect-link override (≥2 papers ≥0.40) rules out DEFER. Caps: speculation/open-question only, categories 1-2+10-12, no hypothesis-box, no bump crosses 0.45. Synthesis: `tmp/synthesis-ldn-metformin-bifurcation-20260909.md`.

## Phase 4 brainstorm (categories 1-2, 10-12 per PARTIAL caps)

| # | Idea | Cat | Dedup | Usefulness | Certainty | Tier |
|---|------|-----|-------|-----------|-----------|------|
| 1 | Triage-rule research question (LDN neuroimmune vs metformin immunometabolic; timing caveat) | 1 | ⏭️ covered-by-oq:ldn-metformin-phenotype-triage (Phase 3 env) | — | — | skip |
| 2 | TRPM3-functional + HOMA-IR stratification trial as the required falsifier | 1 | covered-by oq falsifiable-prediction field | — | — | skip |
| 3 | Null: both established-disease metformin RCTs negative → metformin NOT chronic first-line regardless of phenotype | 11 | covered-by oq (Consequence field) | — | — | skip |
| 4 | Evidence-quality: TRPM3 predicts restoration not clinical response; no predictor validated | 12 | covered-by oq body | — | — | skip |

All 4 brainstorm ideas already covered by the single Phase 3 `#open-question` (oq:ldn-metformin-phenotype-triage). No new environments from Phase 4. Brainstorm file: `ops/brainstorms/brainstorm-ldn-metformin-bifurcation-2026-09-09.md`.

**Notes:**
- Tree mode: check at cycle start (was clean at 09:45).
- Related: `2026-ldn-ebv-references` cycle (complete, commit dc8abbd7) supplied the LDN evidence citations this rule would lean on.

## Phase 12 — Plan Record

- **Topic slug / decision:** ldn-metformin-bifurcation-triage / PARTIAL
- **Environments added:** 1 `#open-question` — oq:ldn-metformin-phenotype-triage (ch47 open-questions; included in metabolic-immune-crosstalk section aggregator)
- **Chapters touched:** ch47 (proposed-studies); hypothesis-registry entry
- **Bib count:** 7 new entries added (Sasso2025LDNtrpm3LC, Ursini2018MetforminAutoimmunity, Sun2020MetforminSLE, Sun2020MetforminSLEflare, Gharib2021MetforminRA, Zhou2011ATMmetformin, Lim2026MetforminPASC); 2 reused entries updated with pmid/stream tag (Reis2026fluvoxamine) 
- **Registry entries:** 1 (oq ldn-metformin-phenotype-triage) + compat note
- **Key finding:** No evidence supports LDN-vs-metformin as a phenotype-guided first-line triage rule. Metformin's only robust signal is timing (acute-phase prevention, COVID-OUT 6.3% vs 10.4% by day 300, HR 0.59), not phenotype — both established-disease metformin RCTs (REVIVE futility; Lim2026 PASC) are negative. No validated response predictor exists for either drug; TRPM3 restoration has not predicted clinical response. Topic integrated as a falsifiable research question warning against importing metformin into established ME/CFS.
- **Phase 9 quality flags:** WEAK-EVIDENCE (PARTIAL decision — inherent; content is the caveat-carrier)
- **Phase 2 clinical relevance:** MEDIUM (actionable question, non-actionable evidence)
- **Provenance note:** N/A (topic from article assessment, not anecdote)

## Phase 12.5 — Completion Gate (Phase Ledger)

| Phase | Status | Evidence |
|-------|--------|----------|
| 0 Plan | RAN | ops/plans file; queued-topics entry |
| 1 Literature | RAN | search-log + literature summary + 7 bib keys (on-disk verified) |
| 2 Synthesis + decision | RAN | tmp/synthesis; PARTIAL |
| 3 Content | RAN | 1 #open-question env, ch47 |
| 3a Build | RAN | nix build PASS (after git add for nix visibility) |
| 3b Safety gate | RAN | tmp/safety-gate; 1 gated, 1 passed, 3 warnings, 0 blocked |
| 3.5 Consequences | RAN | Consequence field in env (severity + non-actionable evidence stated) |
| 4 Brainstorm | RAN | ops/brainstorms; limited cat 1-2+10-12; all ideas dedup-covered, 0 new |
| 4a Caps re-eval | RAN | caps hold (open-question cert n/a) |
| 5 Tiered integration | LEGIT-SKIP | 0 brainstorm ideas to integrate (all covered by Phase 3 env) |
| 5b Build | RAN | covered by 3a passing build (no src changes after) |
| 5d ch30 cascade | LEGIT-SKIP | no new mechanistic-cascade hypothesis; content is research-gap open-question |
| 5c differential | LEGIT-SKIP | no new medication MOA/differential framework; both drugs' differentials pre-exist in ch33/ch30 |
| 5a Falsifiability | LEGIT-SKIP | 0 hypothesis/speculation/prediction envs (open-question only); in-body falsifiable prediction present; citation-fidelity #1/#2 verified (8 keys exist; COVID-OUT 6.3/10.4 confirmed vs PMID 37302406 abstract) |
| 5z Glossary | RAN-empty | 0 new terms (TRPM3/HOMA-IR/metformin/immunometabolic already corpus-established) |
| 6 Retrospective adaptation | LEGIT-SKIP | single cert-n/a open-question; no existing-claim certainty adaptation |
| 7 Cross-hyp compatibility | RAN | compat note in registry; tmp/compat-audit; 0 bumps |
| 8 Build | RAN | nix build PASS (3a) |
| 9 Quality | RAN | tmp/synthesis §Phase 9; flag WEAK-EVIDENCE |
| 10 Coherence | RAN | single-chapter footprint; no certainty/term/contradiction issues; cross-refs verified |
| 10a High-level synthesis | LEGIT-SKIP | single standalone env; no ≥2 convergent envs to synthesize |
| 10b Framing propagation | LEGIT-SKIP | no Phase 10a synthesis; content is non-actionable downstream research-gap, no framing change |
| 11 Review-to-convergence | LEGIT-SKIP | open-question only (no adversarial hypothesis attack surface); light coherence pass done in Phase 10; WEAK-EVIDENCE inherent |
| 12 Changelog | RAN | this section (no changelog.typ maintained) |
| 12.5 Gate | RAN | this ledger |
| 13 Commit | pending | explicit file list below |

**Appendix-h scope note:** No appendix-h annotated entries added for the 7 new supporting citations. Deliberate: appendix-h is selectively curated (not 1:1 with bib); these entries support a single PARTIAL-decision research-question open-question, and each bib entry carries a comprehensive certainty-rationale note field. Two most load-bearing refs are reuse keys already in corpus context (Reis2026 REVIVE in ch28 via prior cycle). If a future cycle elevates metformin-established-disease evidence to a headline finding, appendix-h entries should be added then.
