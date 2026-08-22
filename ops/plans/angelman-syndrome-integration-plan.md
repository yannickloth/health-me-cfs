# Angelman Syndrome — ME/CFS Integration Plan

## Purpose
Evaluate whether Angelman syndrome (AS; UBE3A loss-of-function, 15q11-q13) shares pathophysiological mechanisms with ME/CFS — GABAergic dysregulation, mitochondrial dysfunction, chronic neuroinflammation, autonomic disturbance, and epigenetic imprinting — and whether this cross-disease comparison warrants integration.

## Target chapters
- Part 2 (ch06–ch16): pathophysiology parallels (GABAergic / neurodevelopmental / mitochondrial / energy)
- ch14d: cross-disease comparison (if warranted)
- ch30/ch33/ch34 cascade & medication reference (only if a drug-interception cascade is specifiable)
- ch20 (biomarkers) — only if biomarker parallels exist
- Part 4 research proposals / hypothesis registry — only if a testable hypothesis emerges

## Pre-identified hypotheses
- None pre-identified. This is a fresh standalone topic; the relevance to ME/CFS is unestablished and must be earned by Phase 1 evidence.

## Tracking table
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|------|-----------|--------|-------|
| H1 | E/I-balance GABAergic bridge most transferable AS→ME/CFS | 1 | 0.30 | ↩️ parked | Defer; no ME/CFS E/I measurement yet |
| H2 | Acquired UBE3A/E6AP proteostasis deficit in adult ME/CFS | 3 | 0.15 | ↩️ parked | Highly speculative |
| H3 | ME/CFS sleep fragmentation shares GABAergic/E-I mechanism | 2 | 0.25 | ↩️ parked | Defer |
| R1 | TMS/MRS test of cortical GABAergic inhibition & E/I ratio | 1 | n/a | ↩️ parked | Research direction |
| R2 | Re-analyze Maccallini GWAS for GABA-A/tonic-inhibition enrichment | 1 | n/a | ↩️ parked | Research direction |
| R3 | Test AS mitochondrial/ROS transfer to adult ME/CFS | 2 | n/a | ↩️ parked | Research direction |
| R4 | PSG/actigraphy correlation of fragmentation with E-I biomarkers | 2 | n/a | ↩️ parked | Research direction |
| C10-N12-E12 | 11 critical-category caveats (governing falsification conditions) | — | n/a | ↩️ parked | Recorded in subtree; gate future integration |

## Phase 4 report
- Brainstorm: `ops/brainstorms/brainstorm-angelman-syndrome-2026-08-22.md`, 18 ideas (H1–H3, R1–R4, 11 critical). PARTIAL caps respected — categories 3–9 (drug/intervention) NOT generated.
- Verdict: do NOT integrate AS-specific claims now; defer H1–H3/R1–R4; Cat 10–12 govern future integration.

## Phase 5 report
- Certainty reassessment: H1 0.30 (unchanged; analogical), H2 0.15 (unchanged), H3 0.25 (unchanged). Usefulness unchanged.
- Phase-3 dedup: H1 (E/I GABAergic bridge), H3 (sleep/E-I), and ALL Cat 10–12 critical items are already covered by `@spec:angelman-ube3a-cross-disease` (which states the analogy, GABAergic/mito/ROS/sleep bridges, the no-direct-link caveat, UBE3A dosage nuance, falsifiability, and consequence). Marked `⏭️ covered-by-spec:angelman-ube3a-cross-disease`.
- H2 (cert 0.15, max usefulness 2): Tier 3 → tree-only (no chapter text). Already recorded in subtree.
- R1–R4: research-direction proposals, recorded in subtree/plan (already done Phase 4a). Not integrated into chapter text.
- No new chapter environments added this phase (all dedup/covered or tree-only). Single integration remains `@spec:angelman-ube3a-cross-disease`. Consistent with PARTIAL caps and brainstorm verdict ("do NOT integrate AS-specific claims now").

## Phase 5 Safety Gate (drug-interaction pre-check)
- N/A — no drug/supplement/intervention idea triaged Tier 1/2 (categories 3–9 were never generated under PARTIAL caps). No drug check required.

## Phase 5c — Differential Analysis
- N/A — not a treatment topic; no medication to analyze. LEGIT-SKIP.

## Phase 5d — Pathway-to-Drug Forward Tracing
- N/A — mechanism has NO specifiable drug-interception point; no standalone cascade entry warranted. The Phase 3 speculation is correlational/analogy (no ≥3-step causal chain with an existing sec-12 drug that intercepts). Citation-only. LEGIT-SKIP.

## Phase 5b report
- Intermediate build check (see build after Phase 5).

## Phase 5a — Falsifiability Sweep
- 1 new environment (`@spec:angelman-ube3a-cross-disease`) audited. It includes a falsifiable prediction (UBE3A pathway enrichment + iPSC phenotype). Falsifiability: PASS. (falsifiability-auditor agent file absent from .opencode/agents/ — sweep run inline by main session per escalation rule.)

## Phase 6 report
- Matches examined: 4 (GABAergic/tonic-inhibition claims in ch14h/ch18/ch10-neurosteroid; glutamatergic E/I in ch14 subsec-18; mitochondrial/energy in ch15/ch18). Adapted: 0.
- All overlaps deferred (below quality floor): Watanabe (0.30), Su (0.33), Simchi (0.30), Panov (0.18) all <0.40 → "overlap noted, do not edit" per Evidence Quality Floor. Buiting (0.68) validates AS mechanisms, not ME/CFS claims — no ME/CFS claim to bump. Qu/Kurmashev (0.40–0.59) are AS-specific reviews; citation-only value, no supporting ME/CFS claim.
- Certainty bumps: 0 (no ME/CFS claim warranted a bump; honest given weak analogy).
- Synonym map: tmp/synonym-map-angelman-syndrome.md.
- Outcome: overlap noted, zero edits to pre-existing content. Weak analogy does not inflate existing ME/CFS certainty.

## Phase 7 report
- 5 pairs audited: weak-reinforcement with glutamatergic E/I (hyp:glutamatergic 0.60), syngo-postsynaptic, GABA-A plasticity, mitochondrial/energy, sleep. 0 conflicts, 0 feed-in, 0 independent (all reclassified weak-reinforcement sharing E/I or energy upstream).
- Certainty adjusted: 0 bumps, 0 reductions, 0 tensions. Cross-disease analogy is not an independent ME/CFS line → no convergence bump; PARTIAL caps respected.
- Compat audit: tmp/compat-audit-angelman-syndrome-2026-08-22.md.

## Phase 8 report
- Build PASS (exit 0). All Phase 3–7 files staged explicit. Intermediate builds: Phase 3a PASS, Phase 5b PASS.

## Phase 9 report
- Metrics: net cert change 0; reinf:contra 0:0; 1 falsifiable prediction; ~450 words added; 1 env integrated; clinical relevance LOW.
- Quality flags: WEAK-EVIDENCE (Phase 2 PARTIAL) — caveats present. No BLOAT/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY.

## Certainty bump log
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|---|---|---------|----------|---|--------|
| (none) | | | | | No bumps — cross-disease analogy below edit/convergence thresholds; PARTIAL caps |

## Phase 10 report
- 1 chapter audited (ch14d). 0 inconsistencies, 0 fixed, 0 user-decision. Cert consistent (0.20 chapter/registry); label unique+resolves; *Consequence:* present.
- Coherence audit: tmp/coherence-audit-angelman-syndrome-2026-08-22.md.

## Phase 10a report
- LEGIT-SKIP: only 1 environment integrated (below ≥2 threshold); no convergent argument to synthesize. No @syn: added.

## Phase 10b report
- LEGIT-SKIP: no Phase 10a synthesis to propagate; content type downstream/non-actionable. No framing layers updated.

## Phase 11 report
- Tier: Lightweight (1 chapter touched, PARTIAL, 1 new env, no treatment content).
- Pass 1 (devil-advocate-auditor): 1 CRITICAL (C1 falsifiability tests genetics not analogy), 2 HIGH (H1 registry unconditional falsifiability; H2 unsupported "independently proposed in ME/CFS"), 2 MEDIUM (M1 developmental/monogenic disanalogy; M2 iPSC dependency). Fixed: falsifiability re-anchored to shared downstream pathway (OXPHOS/GABA-A) with UBE3A-enrichment as optional corroborating test; 5 ME/CFS-side citations added (@Le2025ATF4Mitochondria @Shankar2025oxidativestress @Davis2025nrf2lipid @WirthScheibenbogen2026glutamate @Liu2025geneticFatigueActigraphy); developmental-stage caveat added; iPSC arm non-decisive; registry retagged Phase 3→Phase 5. Registry+chapter consistent.
- Pass 2 (typst-xref-checker): label defined once; all 12 citations resolve; build PASS; section/qmd-label/typst-source audits PASS.
- status: CONVERGED (0 CRITICAL/HIGH remaining).
- Note: `nix flake check` blog-audit fails on PRE-EXISTING unrelated issues (broken link to reordered ch36 from parallel Part-III-reorder; future-dated/duplicate blog posts) — not from this cycle.

## Phase 12 — Plan Record (changelog)
- Topic: angelman syndrome — decision **PARTIAL** (cross-disease analogy; >50% papers discounted cert <0.40).
- Environments: 1 #speculation `@spec:angelman-ube3a-cross-disease` (ch14d-cross-disease.typ, cert 0.20).
- Chapters touched: ch14d-cross-disease.typ; hypothesis-registry.typ (1 type-S entry, Phase 5).
- Bib: 7 entries added to `bib/genetics-epigenetics.bib` (research_stream={angelman-syndrome}); appendix-h `sec:bib-angelman-syndrome`.
- Key finding: Angelman syndrome (UBE3A loss) models mitochondrial/energy deficit, oxidative stress, GABAergic E/I imbalance, and sleep fragmentation — each proposed in ME/CFS — but zero direct AS–ME/CFS link exists, so it is hypothesis-generating only.
- Quality flags: WEAK-EVIDENCE (Phase 2 PARTIAL) — caveats present.
- Clinical relevance: LOW (research-only); severity unknown.
## Phase 13 — Commit
- Commit `03b24238` (11 files, content(mecfs): integrate Angelman syndrome cross-disease analogy).
- Shared-file ownership re-check: HEAD did not contain angelman entries pre-commit (verified 0); all 11 files committed here. No entries lost to parallel streams.
- Post-commit integrity: tree clean (no foreign files), build 0 errors.
- No wip/ scratch pointers (MIXED mode). No history rewrite.
- Row status: ✅ done (analogy integrated; AS-specific claims parked ↩️ pending ME/CFS-side evidence).

## Phase Ledger (Phase 12.5 completion gate)

| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file created + validated |
| 1 | RAN | search-log-angelman-syndrome-2026-08-22.md + 7 bib entries + appendix-h sec |
| 2 | RAN | tmp/synthesis-angelman-syndrome-2026-08-22.md; decision PARTIAL |
| 3 | RAN | @spec:angelman-ube3a-cross-disease in ch14d + registry entry |
| 3a | RAN | build PASS |
| 3b | RAN | tmp/safety-gate-angelman-syndrome.md (mechanistic bypass; severity PASS) |
| 3.5 | RAN | *Consequence:* field present |
| 4 | RAN | ops/brainstorms/brainstorm-angelman-syndrome-2026-08-22.md (18 ideas, PARTIAL-limited) |
| 4a | RAN | subtrees/angelman-syndrome.md + root index row |
| 5 | RAN | dedup (H1/H3/crit covered-by-spec); H2 Tier3 tree-only; no new envs |
| 5 Safety Gate | LEGIT-SKIP | no drug/intervention triaged (cats 3–9 not generated under PARTIAL) |
| 5c | LEGIT-SKIP | non-treatment topic; no medication to analyze |
| 5d | LEGIT-SKIP | no drug-interception cascade; analogy correlational, citation-only |
| 5b | RAN | build PASS |
| 5a | RAN | falsifiability audit applied (spec has falsifiable prediction) |
| 5z | LEGIT-SKIP | no new glossary terms |
| 6 | RAN | overlap noted, 0 edits (papers <0.40 deferred); bump log empty |
| 7 | RAN | 5 pairs audited; 0 bumps/reductions; compat-audit in tmp/ |
| 8 | RAN | build PASS |
| 9 | RAN | quality flags: WEAK-EVIDENCE (PARTIAL); no BLOAT/CLINICAL-RISK |
| 10 | RAN | coherence-audit in tmp/; 0 inconsistencies |
| 10a | LEGIT-SKIP | single standalone environment (<2 threshold); no synthesis |
| 10b | LEGIT-SKIP | no synthesis to propagate; downstream/non-actionable content |
| 11 | RAN | lightweight: devil-advocate (CRITICAL+HIGH fixed) + xref; CONVERGED |
| 12 | RAN | plan-record written (no changelog.typ) |
| 13 | RAN | see Phase 13 (commit) |

States: 20 RAN, 7 LEGIT-SKIP, 0 WAIVED, 0 OMISSION. Build PASS.

## Certainty bump log
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|---|---|---------|----------|---|--------|
| (empty) | | | | | |

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9 — no drug/supplement/intervention)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE

## Phase 2 report
- 3 papers strong (Buiting 0.68, Kurmashev 0.52, Qu 0.48), 4 weak (<0.40), 0 null results in-paper, direct AS–ME/CFS link null (0 hits).
- Decision: PARTIAL (>50% papers discounted cert <0.40; cross-disease analogy only).
- Clinical relevance: LOW (research-only). Severity: unknown.
- Contradictions: none fundamental (UBE3A dosage nuance is a scope caveat).
- Standing epistemic checklist: #1 ⚠ / #2 N/A / #3 ✓ / #4 ✓ / #5 ✓ / #6 N/A.

## Phase 3 report
- 1 #speculation added: `@spec:angelman-ube3a-cross-disease` in ch14d-cross-disease.typ (cert 0.20; cross-disease analogy; hypothesis-generating; falsifiable prediction; *Consequence:* field; severity unknown stated).
- Hypothesis-registry entry added (type S, cert 0.20) in dated 2026-08-22 block.
- PARTIAL caps respected: speculation only (no hypothesis-box), certainty 0.20 < 0.45 cap.
- Standing epistemic checklist: #1 ⚠ (population discount) / #2 ✓ (severity) / #3 ✓ (citations) / #4 ✓ (dosage nuance) / #5 ✓ (caps) / #6 N/A.

## Phase 3a report
- Build PASS (exit 0). Files staged: ch14d-cross-disease.typ, hypothesis-registry.typ, plan.

## Notes
- MIXED/CONCURRENT tree (user-approved 2026-08-22). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend); all phases scoped by explicit file lists, NOT `git diff`.
- No queued-topics entry, no subtree file, no prior angelman content in repo.
