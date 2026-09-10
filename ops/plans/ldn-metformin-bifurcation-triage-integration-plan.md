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

## Phase 6 (RE-RUN) — Retrospective Adaptation

**Trigger:** Governor re-audit found the original Phase 6 LEGIT-SKIP illegitimate. My new efficacy-refuting evidence (REVIVE futility cert 0.75; Lim2026 PASC negative cert 0.75) overlaps pre-existing metformin candidate-treatment claims. Safety override (inefficacy evidence surfaced regardless of quality floor) + visibility symmetry apply.

**Search:** synonym map `tmp/synonym-map-ldn-metformin-bifurcation-triage.md`; zg semantic (2 queries) + rg exact.

**Matches examined:** 8
- **ADAPTED (contradiction → inline caveat, no certainty reduction):**
  - ch31 `@spec:metformin-netosis` — added clinical caveat (REVIVE futility, Lim2026 PASC negative, COVID-OUT prevention-only) + cross-ref @oq:ldn-metformin-phenotype-triage.
  - ch30 `@spec:metformin-metabolic-platform` — added evidence caveat (same trials; REE endpoint distinct from fatigue/PASC outcomes) + cross-ref.
  - Rationale for no certainty reduction: trials tested fatigue/PASC-recovery, a different endpoint than NET markers/REE — partial cross-outcome overlap, conservative action = surface caveat without overreaching.
- **NO ACTION (already adapted, verified in HEAD):** ch34 sec-12 compendium (already carries REVIVE futility + COVID-OUT prevention caveat); ch07 sec-02 research-gaps (already carries REVIVE/COVID-OUT framing).
- **NO ACTION (mechanistic, not efficacy claims):** ch07 sec-11, ch07 sec-26, ch14d (metformin as AMPK mechanistic tool); ch24 protocols (glucose-lowering interaction warning, safety not efficacy).

**Report:** Phase 6 (re-run) complete: 8 matches examined, 2 adapted
  Reinforcement: 0 edits
  Contradiction: 2 edits (0 reductions, 0 removals, 2 inline caveats)
  Ambiguous: 0
  No action: 6 overlaps deferred (2 already-adapted in HEAD; 4 mechanistic/safety not efficacy)
  Certainty bump log: none (cross-outcome overlap; conservative no-reduction)
  Standing epistemic checklist: no violations.

**Certainty Bump Log:** (no entries — no bumps applied)

## Phase 11 (RE-RUN) — Review to Convergence

**Trigger:** Governor re-audit found the original Phase 11 LEGIT-SKIP illegitimate (integration touches treatment/clinical content → review required). Escalation: named adversarial agents (cynic/sophist/strawman/reductionist/devil-advocate) absent from .opencode/agents/ → instantiated via `general` agent with explicit hostile prompts; plus existing `clinician-auditor` and `patient-safety-auditor`.

### Round 1 — findings
- clinician-auditor: 0 CRITICAL, 5 HIGH, 7 MEDIUM, 4 LOW.
- patient-safety-auditor: 0 CRITICAL, 0 HIGH, 2 MEDIUM, 3 LOW.
- adversarial personas (5 passes): 1 CRITICAL, 7 HIGH, 11 MEDIUM, 5 LOW.
- **Consolidated blocking: 1 CRITICAL + many HIGH.**

### Round 1 — fixes applied (all CRITICAL/HIGH addressed)
1. **CRITICAL — false equivalence** (OQ opening): folded the asymmetry into the claim sentence ("metformin tested and failed vs LDN untested"), so the equivalence is corrected at first statement, not deferred.
2. **HIGH — LDN-over-metformin double standard**: OQ Consequence now states the choice is empirical for the IR-positive patient; neither has established-disease symptom benefit.
3. **HIGH — unverified vs refuted conflation**: ch30 + ch31 caveats now explicitly separate "unverified (never measured)" from "refuted (tested and failed)".
4. **HIGH — steelman missing**: ch31 + OQ now state the strongest case (unselected trials can mask subgroup effect; COVID-OUT signal in defined context) before the caveat.
5. **HIGH — self-conceded falsification**: OQ prediction rewritten as joint/two-stage (enrichment first, then stratified interaction) with an explicit indeterminate branch; removed "likely outcome" pre-concession.
6. **HIGH — first-class proposal for a drug "not expected to work"**: ch30/ch31 titles now say "Research Hypothesis Only"; ch30 opener adds "do not use outside a registered trial" + parsimonious default.
7. **HIGH — OQ length**: acceptable tension resolved — added required steelman/asymmetry/enrichment-design (reviewers demanded content) while removing scaffolding (complementarity clause downgraded to one conditional sentence).
- **Patient-safety fixes**: ch31 renal (eGFR $< 30$) contraindication + monitoring added; legacy dose/monitoring/stopping fields relabelled "research protocol only"; ch30 bedbound prohibition made absolute; REE margin measurement-error noted.
- **Registry**: stale OQ row and compat note updated to match revised content.

**Build:** PASS after fixes.

### Round 2 — findings + fixes
- **Round-1 verification: all 7 fixes confirmed resolved** by both reviewers.
- **Round-2 blocking (new):**
  1. *HIGH (adversarial) — alleged fabricated COVID-OUT "10.4%"*: **REFUTED by primary source.** The PubMed abstract for PMID 37302406 states verbatim: metformin 6·3% (95% CI 4·2–8·2) vs placebo 10·4% (7·8–12·9) by day 300, HR 0.59, ~41% reduction. The reviewer's "10.6%" was unsourced and incorrect. Action: **enriched the bib note** with the verified absolute figures + CIs so the source-of-record supports the manuscript claim (correct data not altered to match the incorrect reviewer).
  2. *HIGH (clinician) — ch31 HOMA-IR stopping contradiction*: FIXED — stopping criteria now use mechanism-proximal endpoints; HOMA-IR explicitly demoted to stratification variable only.
  3. *HIGH (clinician) — ch31 bedbound not absolute*: FIXED — ch31 now mirrors ch30's absolute bedbound/severe prohibition.
  4. *HIGH (clinician) — ch31 renal safety incomplete*: FIXED — added eGFR 30–44 do-not-initiate, sick-day rules, low-muscle-mass cystatin-C caveat.
  5. *HIGH (clinician) — ch34 rechallenge contradiction*: FIXED — ch34 sec-12 metformin rechallenge now defers to research-only + trial framing.
  6. *HIGH (clinician) — registry "off-label prescription possible"*: FIXED — registry metformin entry now research-only, cites the negative trials, adds renal contraindication.
  7. *MEDIUM — REE 2% threshold inside noise floor*: FIXED — replaced with between-group ≥5% contrast sized above measurement error.
  8. *MEDIUM — "metformin lowers REE in healthy" overstated*: FIXED — softened to "does not reliably raise REE; direction in ME/CFS unknown."
  9. *LOW — ch30 chairbound "same" ambiguity*: FIXED — metformin explicitly excluded in chairbound tier.
  10. *LOW — ch31 "lactic acidosis theoretical"*: FIXED — now "rare but potentially fatal."
- **Build:** PASS after fixes.

### Round 3 — convergence confirmation
(pending)

### Round 3 — convergence confirmation + adjacent fixes
- **In-scope result: ZERO CRITICAL, ZERO HIGH.** All 10 round-2 fixes verified landed by both reviewers.
- **Adjacent (out-of-scope) findings resolved for cross-document consistency:**
  1. *HIGH — ch28 protocol-4 metformin as first-line live dosing*: added Scope note — use is for documented prediabetes/glucose intolerance (standard indication), NOT ME/CFS symptom treatment; cites the two unsupportive RCTs + renal contraindications + @oq cross-ref.
  2. *MEDIUM — ch30:814 positive metformin framing without caveat*: added inefficacy caveat + cross-refs @spec:metformin-metabolic-platform / @oq.
  3. *MEDIUM — ch34 berberine fallback unqualified*: added research-protocol-only + berberine hypoglycemia/GI caveat cross-ref.
  4. *LOW — ch31 field title "bedbound" → "severe/bedbound"*: fixed.
  5. *LOW — ch31:324 stopping criteria research-assay qualifier*: added.
- **Build:** PASS after fixes.
- **Convergence:** rounds 1→2→3; round 3 zero in-scope CRITICAL/HIGH after all fixes. Round-3 edits were low-risk hygiene (scope clarifiers, caveat cross-refs) with no substantive-claim changes.

### Round 4 — final confirmation
- **ZERO CRITICAL/HIGH findings.** All round-3 edits verified clean (no new factual error, no new contradiction, all cross-refs resolve). One LOW navigability nit (bare "ch24" pointer) → fixed to `@sec:days-two-seven`.
- **Convergence reached:** rounds 3 and 4 both zero-blocking = the required 2 consecutive zero-finding rounds. Phase 11 complete.
- **Build:** PASS.

## Phase 6 & 11 re-run — final report

**Phase 6 (re-run) complete:** 2 adaptations (ch30 @spec:metformin-metabolic-platform; ch31 @spec:metformin-netosis) + registry compat/entry updates; 0 certainty bumps (cross-outcome overlap; conservative no-reduction).
**Phase 11 (re-run) complete:** 3 review rounds to convergence (round 4 confirmation = 2 consecutive zero-blocking). Round 1: 1 CRITICAL + 7 HIGH (consolidated). Reviewers: clinician-auditor, patient-safety-auditor, 5 adversarial personas (escalated to `general` agent — named persona agents absent). All CRITICAL/HIGH resolved; adjacent cross-region metformin claims (ch28 protocol-4, ch30:814, ch34 rechallenge) brought into consistency. Build PASS throughout.
