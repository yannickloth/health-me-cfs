# ADHD-Nrf2 & Adult-Onset-ADHD Evidence Update — Integration Plan

**Purpose:** Update the ME/CFS book's ADHD cross-disease content to current (2026) evidence on two fronts: (1) direct Nrf2 pathway measurement in ADHD now exists, upgrading the previously "never measured" dopamine-Nrf2-NLRP3 claim; (2) the adult-onset-ADHD consensus has moved past Moffitt 2015 toward an adolescent-onset/confounding mix.

**Origin:** session 2026-08-19 — blog update + verification (this plan records the book-side integration).

## Target chapters
- `part2-pathophysiology/ch17-speculative-hypotheses/ch14d-cross-disease.typ` (ADHD–ME/CFS shared mechanism; line ~2293 cites Dunedin/Moffitt as "contested")
- `part4-research/hypothesis-registry.typ` (new/updated entries)
- `appendices/appendix-h-annotated-bibliography.typ` (annotate new sources)
- `bib/neurology-comorbidities.bib` (DONE — Sibley, Asherson, Breda) + `bib/neuroinflammation.bib` (DONE — Gurbuzer) + confirm `bib/energy-metabolism.bib` (BillingRoss, Giannoulis, Chang2020 already present)

## Pre-identified hypotheses
- **Nrf2 measurement in ADHD** (cert ~0.50, discounted): serum Nrf2/HO-1 reduced in adult ADHD (Gurbuzer 2026). Previously book/registry asserted "no study has measured Nrf2 in ADHD" — now outdated. Upgrade claim with caveats (serum protein, not nuclear translocation/NQO1; adult only; single study).
- **Adult-onset-ADHD consensus** (cert ~0.62): most "adult-onset" is adolescent-onset (12–16) or missed/misrecalled childhood symptoms or substance-use/comorbidity (Sibley 2018, Asherson/Agnew-Blais 2019, Breda 2020). Replaces the single-Moffitt-2015 "distinct syndrome" framing with a "mix" framing.
- **Haplogroup U in ADHD** (unchanged, cert ~0.65): still rests on Chang 2020; no newer haplogroup-ADHD study (Giannoulis 2024 confirms); cross-study ME/CFS overlap anchored to Billing-Ross 2016.

## Working-tree state
**MIXED / CONCURRENT mode** (parallel gastroparesis session active; ~34 uncommitted files). Rollback = `git checkout <ref> -- <file>` (NEVER reset/rebase/amend). All phases scoped by explicit file lists. NO shared-branch WIP commits; use scratch pointers.

## Phase 2 — Decision

**Synthesis:** Stream B (adult-onset consensus) is PROCEED — 3 papers with discounted certainty ≥ 0.40 (Sibley 0.49, Asherson 0.47, Breda 0.44) establishing the field moved past Moffitt 2015. Stream A (Nrf2 measurement) is a single-study update (Gurbuzer 0.41) that corrects an outdated "never measured" claim — treated cautiously (upgrade with explicit single-study/adult-only/serum-protein caveats, no certainty bump). Stream C (haplogroup) confirmatory only — no new data, leave framing as-is.

**Decision: PROCEED** (Stream B primary; Stream A corrective; Stream C no-op).
**Clinical relevance:** MEDIUM — mechanistic context for ADHD-ME/CFS overlap and the "acquired vs developmental" framing; no new treatment, no dosing, no safety gate (non-treatment content).
**Contradictions:** none fundamental — Sibley vs Moffitt are resolved as a field-move (adolescent-onset + confounding), not a live contradiction; presented as a mix.
**Epistemic checklist:** #1 ✓ (each claim cited) / #2 ✓ (strength stated) / #3 ✓ (limits explicit) / #4 N/A (no competing-equal mechanism) / #5 ✓ (single-study caveats) / #6 N/A (no off-label clinical content).

## Active Caps (set by Phase 2 — decision: PROCEED)
- Environments allowed: all
- #hypothesis-box / #fhypothesis: allowed (but Stream A corrective text uses prose + registry entry, not a new hypothesis-box)
- Brainstorm categories (Phase 4): all — SKIPPED (evidence-update, not new-idea generation)
- Certainty bumps (Phases 6–7): per normal rules — no bump warranted (single-study Stream A)
- Phase 9 flags pre-fired: none

## Tracking table
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|---|---|---|---|---|
| 1 | Nrf2 pathway measured in ADHD (serum Nrf2/HO-1 reduced, adults) | 2 | 0.50 | ✅ | Gurbuzer2026nrf2adhd; upgraded "never measured" claim in ch14d spec + registry + appendix-h |
| 2 | Adult-onset-ADHD = adolescent-onset/missed-childhood/substance mix | 2 | 0.62 | ✅ | Sibley2018, Asherson2019, Breda2020 vs Moffitt2015; ch14d para + registry + appendix-h |
| 3 | Haplogroup-U-ADHD link still single-source | 2 | 0.65 | ✅ | Chang2020 + Giannoulis2024 confirm; BillingRoss2016 anchor; no content change (confirmatory) |

## Certainty bump log
| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|---|---|---|---|---|---|
| (none) | | | | | no bumps — single-study Stream A; no existing entry crossed threshold |

## Phase 12 — Record
- **Integration summary:** Updated the ME/CFS book's ADHD cross-disease content to current (2026) evidence. (1) ch14d Architecture-C adult-onset paragraph (line 2293) replaced the single-Moffitt "contested" framing with the current mix consensus (adolescent-onset/missed-childhood/substance), citing Sibley2018, Asherson2019, Breda2020. (2) ch14d `spec:adhd-dopamine-nrf2-nlrp3-xdisease` limitation corrected: "no study has measured NRF2 in ADHD" → "measured once (Gurbuzer2026), serum protein, adult-only, single study." (3) hypothesis-registry: added `oq:adult-onset-adhd-mix-status` (Phase 2 / 0.47) and `hyp:adhd-nrf2-pathway-measured` (Phase 3 / 0.41) as a new dated block 2026-08-19. (4) appendix-h: added 4 annotated entries (Sibley, Asherson, Breda, Gurbuzer) and updated the Moffitt relevance line. (5) bib: 4 new entries added (Sibley2018lateonsetADHD, Asherson2019lateonsetADHD, Breda2020adhdrecall in neurology-comorbidities.bib; Gurbuzer2026nrf2adhd in neuroinflammation.bib). Haplogroup-U confirmed unchanged (Chang2020 + Giannoulis2024 + BillingRoss2016, already in bib). Blog (en/de/fr) updated in prior commits.
- **Research artifacts:** `ops/research/literature-summary-adhd-nrf2-adultonset-update.md`, `ops/research/search-log-adhd-nrf2-adultonset-update-2026-08-19.md`.
- **Build:** PDF `nix build` PASSES.
- **Safety gate:** N/A (no treatment content; severity stated "unknown").
- **Adversarial review (inline):** no overclaim found; certs match discounted values; caveats explicit.
- **Cross-hypothesis:** new entries reinforce `spec:adhd-mecfs-same-root`; no conflicts.
- **Commit:** TBD (Phase 13).

## Phase 13 — Commit status
| Stream | Files | Status |
|---|---|---|
| bib | neurology-comorbidities.bib, neuroinflammation.bib | ✅ committed earlier (0421d2c6) |
| blog | 4 EN dirs + 6 citation-fix posts | ✅ committed earlier (4a9e2dc3, 0421d2c6) |
| book | ch14d-cross-disease.typ, hypothesis-registry.typ, appendix-h-annotated-bibliography.typ | ✅ committed (56347973) |
| ops | plan, literature-summary, search-log | ✅ committed (56347973) |

## Phase re-run (2026-08-20) — skipped phases/agents

User requested running all skipped phases/agents. Applicable for this evidence-update scope:
- **Phase 4 (brainstorm)**: limited — evidence update, not new-mechanism topic. One evidence-grounded brainstorm thread: Nrf2 measurement enables a testable Nrf2-activator intervention hypothesis. See below.
- **Phase 4a (subtree)**: update `subtrees/adhd-energy-predisposition.md` open question #1.
- **Phase 5a (falsifiability)**: registry entries have `*Falsifiability:*` ✓; chapter spec has `*Testable predictions*` ✓.
- **Phase 5z (glossary)**: check Nrf2/HO-1/adult-onset terms.
- **Phase 6 (retroactive)**: appendix-h Moffitt line fixed; confirm no other stale claims.
- **Phase 7 (cross-hypothesis)**: verify vs `spec:adhd-mecfs-same-root` etc.
- **Phase 9 (quality)**: metrics.
- **Phase 10 (coherence)**: cross-chapter consistency of the new claims.
- **Phase 10b (framing)**: assess abstract/ch16/reading-guide.
- **Phase 11 (adversarial)**: review the new content.
- **Phase 12.5 (completion gate)**: phase-ledger audit.

