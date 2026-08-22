# Integration Plan — Guanfacine + NAC as Inter-Cluster Bridge (guanfacine-nac-bridge)

**Purpose:** Treat the fixed combination guanfacine (α2A-adrenoceptor agonist) + N-acetylcysteine (Nrf2 antioxidant) as a mechanistically explicit *inter-cluster bridge* in the ME/CFS paper — spanning the catecholamine cluster (guanfacine, PFC α2A) and the Nrf2 cluster (NAC), consistent with ch15's existing bridge-drug framework (lithium = Nrf2/mTOR; corticosteroids = mTOR/GABA). Currently the paper covers guanfacine and NAC only as separate single drugs; the Yale open-label trial (FesharakiZadeh 2023) that combined them for Long-COVID cognitive deficits is annotated in appendix-h but never treated as a combined mechanistic unit.

**Origin:** user-directed / Thomaso's anecdote (genesis via guanfacine trial); verified gap in ch15 bridge-drug framework. Base: FesharakiZadeh2023Guanfacine (already in bib/neurology-comorbidities.bib).

**Target chapters:**
- ch15 (integrative-models) — bridge-drug mechanistic clustering (catecholamine × Nrf2)
- ch33 (medication-response-reference) sec-02a/sec-13 — dose-response + cross-drug predictions
- ch34 (mechanistic-cascade-tracing) — cascade/probe context if a ≥3-step causal chain + interception point exists
- ch14d (cross-disease) — Long-COVID cognitive deficits clinical observation
- hypothesis registry — new speculation/hypothesis entries

**Pre-identified hypotheses (preliminary certainty):**
- guanfacine+NAC as inter-cluster bridge, catecholamine × Nrf2 (certainty ~0.25–0.35 — mechanism-based, single small open-label case series, no ME/CFS data)

## Tracking table

# | Idea / Hypothesis | Tier | Certainty | Status | Notes
--- | --- | --- | --- | --- | ---
1 | Guanfacine+NAC inter-cluster bridge (α2A × Nrf2) in ch15 | — | 0.30 | ✅ done | PROCEED; 3 papers ≥0.40; no ME/CFS data; α2A→Nrf2 cross-talk unestablished

## Phase 1
5 papers added to bib/treatments.bib (Khasnavis2024GuanfacineNACTBI, FesharakiZadeh2025GuanfacineNACDonepezil, Okamoto2024GuanfacineHyperPOTS, Cherneva2025NACCNS, Barlattani2025NACALCPostCovid) + anchor FesharakiZadeh2023Guanfacine reused. Appendix-h section sec:bib-guanfacine-nac-bridge. Search log: ops/research/search-log-guanfacine-nac-bridge-2026-08-22.md. Verified keys via grep.

## Phase 2
Decision: PROCEED. Synthesis at tmp/synthesis-guanfacine-nac-bridge-2026-08-22.md. 3 papers ≥0.40 discounted; 2/5 <0.40. No ME/CFS data; α2A→Nrf2 cross-talk unestablished (research gap). Clinical relevance MEDIUM.

## Phase 3 / 3a / 3b / 3.5
Environments added: `#spec:guanfacine-nac-bridge` (ch15), `#clinical-finding:guanfacine-nac-postinfectious` (ch14d), registry `spec:guanfacine-nac-bridge`. Safety gate: 0 blocked, 3 warnings. Consequence fields present on both. Build PASS (exit 0).

## Phase 4 / 4a
Brainstorm: ops/brainstorms/brainstorm-guanfacine-nac-bridge-2026-08-22.md (10 ideas: H1-4, R1-4, D1-2 + critical/null). Hypothesis tree: ops/plans/hypotheses-trees/subtrees/guanfacine-nac-bridge.md (10 nodes) + root index row.

## Phase 5 / 5d
Tiered integration: core H1 bridge already integrated (Phase 3). D1/D2 (0.10 cert) + R1-4 routed to hypothesis tree / research directions, NOT added as chapter envs (WEAK-EVIDENCE caution). Pathway-drug trace: ops/integration-guides/pathway-drug-trace-guanfacine-nac-bridge.md; guanfacine sec-12 ch34 entry updated with combination cross-reference note. Standalone ch30 cascade NOT created (duplicates existing guanfacine/NAC sec-12 coverage).

## Phase 5c
LEGIT-SKIP (justified): differential diagnostic value of guanfacine (α2A probe) and NAC (glutathione/redox probe) is ALREADY integrated in ch34 sec-12 (guanfacine entry line 1202 with 3 #finding blocks + cross-reference matrix + cascade probes; NAC/glutathione findings lines 1168-1182). The combination does not introduce a distinct differential inference beyond the two single agents' existing roles. No new ch24 entry warranted.

## Phase 5b
Build PASS (exit 0) after fixing a broken cross-reference (`@sec:prerequisite-and-contraindicated-combinations` → `@sec:drug-drug-interactions`) I introduced in the ch14d safety note.

## Phase 5a
Falsifiability verified INLINE (approved by user): `falsifiability-auditor` agent absent from .opencode/agents/. All 3 new environments have explicit falsifiability: ch15 spec 3 falsifiable predictions; ch14d clinical-finding 1; registry *Falsifiability:* field. Documented deviation.

## Phase 5z
LEGIT-SKIP: guanfacine and NAC already in glossary-en.json; no new glossary terms introduced.

## Phase 6 / 7
Retro adaptation: no contradictions with existing guanfacine/NAC content (reinforced via cross-ref). Synonym map: tmp/synonym-map-guanfacine-nac-bridge.md. Compat audit: tmp/compat-audit-guanfacine-nac-bridge-2026-08-22.md — no conflicts; REINFORCES spec:guanfacine-a2a-pfc and NAC-Nrf2; FEEDS-IN hyp:lc-adhd-neuroimmune-shared-substrate; no bumps.

## Phase 8 / 9
Build PASS (exit 0; transient store-path race resolved on re-run). Quality: no BLOAT/CLINICAL-RISK/G-UNSUSTAINED-CERTAINTY; WEAK-EVIDENCE flagged for transparency (case-series grade, not auto-fired). Summary appended to tmp/synthesis-*.md.

## Phase 10 / 10a / 10b
Coherence: tmp/coherence-audit-guanfacine-nac-bridge-2026-08-22.md — coherent, no fixes.
10a LEGIT-SKIP (documented, re-audit-flagged): the 2 new environments are the SAME bridge claim in 2 chapters, not a pattern of convergent distinct mechanisms; the ch15 spec already serves the synthesis role. No novel global insight warrants a #synthesis env.
10b LEGIT-SKIP (documented): narrow downstream drug-combination topic — no framing implication for abstract/ch16/root-cause/reading-guide.

## Phase 11
RAN (lightweight tier): 2 new envs + 1 registry entry + 1 ch34 note, narrow single mechanism, non-treatment-recommendation. Main-session review confirmed coherence, falsifiability, consequence, severity applicability, honest limitation framing, accurate citations. Build PASS. No findings requiring a full adversarial pass.

## Phase 12 — Integration Summary
Decision PROCEED. Integrated the guanfacine + NAC fixed combination as an explicit inter-cluster bridge (catecholamine × Nrf2) into the ME/CFS paper, closing a verified gap: previously guanfacine and NAC were treated only as separate single drugs; the combination (Yale open-label trial, FesharakiZadeh2023) was never treated as a mechanistic unit.
- ch15: #spec:guanfacine-nac-bridge (inter-cluster bridge, certainty 0.30, 3 falsifiable predictions, honest limitation: no α2A→Nrf2 cross-talk, no ME/CFS data).
- ch14d: #clinical-finding:guanfacine-nac-postinfectious (post-infectious cognitive-deficit observation + full safety context).
- ch34 sec-12: guanfacine entry combination cross-reference note.
- hypothesis-registry: spec:guanfacine-nac-bridge row.
- 5 new bib entries (treatments.bib) + reused anchor FesharakiZadeh2023Guanfacine.
- Ops artifacts: search log, synthesis, brainstorm (10 ideas), hypothesis tree (10 nodes), pathway trace, compat/coherence/synonym audits.

## Phase 12.5 — Phase Ledger

| Phase | State | Evidence |
|-------|-------|----------|
| Pre-Phase (tree check) | RAN | MIXED mode confirmed; foreign files noted |
| 0 | RAN | ops/plans/guanfacine-nac-bridge-integration-plan.md |
| 1 | RAN | search-log + 5 bib + appendix-h (verified via grep) |
| 2 | RAN | tmp/synthesis-*.md; PROCEED |
| 3 | RAN | envs ch15/ch14d + registry |
| 3a | RAN | nix build PASS |
| 3b | RAN | tmp/safety-gate-*.md (0 blocked, 3 warnings) |
| 3.5 | RAN | consequence fields on both envs |
| 4 | RAN | ops/brainstorms/brainstorm-*.md (10 ideas) |
| 4a | RAN | hypotheses-trees/subtrees/guanfacine-nac-bridge.md + root row |
| 5 | RAN | core bridge integrated; D1/D2+R1-4 → tree/registry |
| 5d | RAN | pathway-drug-trace-*.md + ch34 sec-12 note |
| 5c | LEGIT-SKIP | differential value of both agents already in ch34 sec-12 |
| 5b | RAN | nix build PASS (fixed @sec: ref) |
| 5a | RAN | inline audit (user-approved; agent absent); falsifiability on all 3 envs |
| 5z | LEGIT-SKIP | guanfacine/NAC already in glossary |
| 6 | RAN | tmp/synonym-map-*.md |
| 7 | RAN | tmp/compat-audit-*.md |
| 8 | RAN | nix build PASS |
| 9 | RAN | quality summary appended |
| 10 | RAN | tmp/coherence-audit-*.md |
| 10a | LEGIT-SKIP | 2 envs = same claim; no novel convergent cluster (re-audit-flagged) |
| 10b | LEGIT-SKIP | no framing implication |
| 11 | RAN | lightweight review; build PASS |
| 12 | RAN | Phase 12 summary above |
| 12.5 | RAN | this ledger |
| 13 | ⬜ pending | commit (next) |

**OMISSION check:** 0 phases in OMISSION. All must-run phases RAN. LEGIT-SKIPs (5c, 5z, 10a, 10b) each have documented reasoning above.

**Independent spot-checks (governor):**
- nix build PASS (exit 0) — building tree.
- Hypothesis registry updated (spec:guanfacine-nac-bridge added). ✓
- New #speculation + #clinical-finding both have falsifiability statements. ✓
- Both new environments have *Consequence:* field. ✓

## Certainty bump log

Hypothesis | Phase | Old cert | New cert | Δ | Reason
--- | --- | --- | --- | --- | ---
Guanfacine+NAC bridge | Phase 2 | — | 0.30 | — | Evidence synthesis (case-series/mechanism-review grade)

## Notes
- MIXED mode: foreign files in tree (flake.nix, GeneratePathwayTable.java, ch34 sec-14, reading-guide) belong to another cycle — never stage/commit them.
- Parent topic: longcovid-adhd-neuroimmune (done) — guanfacine appears there via Spanoghe2026 off-label list.
- Overlap to check (Phase 6): spec:guanfacine-a2a-pfc (ch14h), spec:atomoxetine-guanfacine, NAC in Nrf2 cluster (ch15), ch34 guanfacine cascade/probe content.
- The guanfacine+NAC *combination* is currently NOT treated mechanistically anywhere in the paper (verified: only appendix-h annotation + ch14d off-label list).
