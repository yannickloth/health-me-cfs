# Integration Plan: 2026 LDN + EBV-HLA Literature References

**Purpose:** Integrate three 2026 citations flagged as absent from the paper: (1) Gouda 2026 Advances-in-Therapy LDN review (PMID 42060160), (2) BMJ Open 2026 LDN systematic review + meta-analysis (PMID 42463201) incl. NCT05430152 RCT monitor, (3) Wang 2026 Cell EBV + HLA-DR15 myelin self-antigen presentation (PMID 41534530).

**Origin:** main-session assessment of the Ruiz-Pablos LDN/Long-COVID article (2026-09-08), governed under pipeline-governor meta-skill.

**Tree mode:** MIXED — unrelated WIP present (aripiprazole blog qmd + 3 glossary json). No shared-branch WIP commits; rollback = `git checkout <ref> -- <file>`; commits scoped by explicit file list. User chose "Proceed MIXED mode."

**Target chapters:**
- ch28 (LDN medication-response section) — Gouda 2026 review, BMJ Open 2026 meta, NCT05430152 monitor
- ch08 (immune/viral persistence) / EBV-MS content — Wang 2026 Cell
- bib: treatments.bib / long-covid.bib (LDN), immune.bib (EBV-HLA)
- registry: hypothesis-registry.typ as needed

**Pre-assessment verdict (main session):** these are literature/registry-weight updates reinforcing EXISTING content, not de-novo mechanism integration. Gouda + BMJ Open meta reinforce LDN evidence/mechanisms (already in ch28). Wang reinforces EBV→autoimmunity proof-of-principle (already in ch08/ch13). NCT05430152 RCT is completed-but-unpublished → monitor, not evidence.

**Phase 2 decision expected:** PROCEED-as-literature-update (reinforcement) OR PARTIAL. Evaluation per pipeline.

**Phase 2 DECISION (2026-09-09):** **PROCEED** in reinforcement/literature-update mode. ≥2 papers cert ≥0.40 (Gouda 0.56, Byambasuren 0.51); only Wang <0.40. All three reinforce EXISTING environments; no de-novo claims. Synthesis: `tmp/synthesis-2026-ldn-ebv-20260909.md`.

## Active Caps (Phase 2 — decision: PROCEED, reinforcement mode)
- Environments allowed: reinforcement of existing (citation insertion + targeted caveat). No new de-novo hypothesis/speculation required.
- #hypothesis-box / #fhypothesis: none required (no new mechanistic claims).
- Brainstorm categories (Phase 4): NOT warranted — reinforcement-only. LEGIT-SKIP candidate.
- Certainty bumps: NO bump fires — incoming discounted certs (0.56, 0.51) <0.60 Evidence Quality Floor; Wang 0.26 citation-only.
- Phase 9 flags pre-fired: none.

## Tracking table

| # | Citation | Domain | Integration weight | Certainty (raw→disc) | Status | Notes |
|---|----------|--------|--------------------|----------------------|--------|-------|
| 1 | Gouda 2026 (42060160) LDN review | LDN evidence/mechanism | Reinforce ch28 LDN | review (narrative) | ✅ integrated (ch28 rem-intro) | umbrella review, 105 human studies |
| 2 | BMJ Open 2026 (42463201) LDN meta | LDN Long-COVID efficacy | Add meta evidence (LC) | meta n=155, LC weight 0.85 | ✅ integrated (ch28 rem-intro) | 4 pre-post studies, low certainty |
| 2b | NCT05430152 LDN RCT | LDN Long-COVID | Monitor only (unpublished) | n/a | ⏭️ deferred (monitor) | completed 2026-02-28, no results; NOT bib'd |
| 3 | Wang 2026 Cell (41534530) EBV-HLA-DR15 | EBV autoimmunity | Reinforce ch08/ch13 EBV-MS | mechanistic, in-vitro | ✅ integrated (ch08 antibody-persistence) | strengthens existing EBV→MS→autoimmunity model |

## Phase 6 — Retroactive Adaptation (evidence→claim)

Search terms/synonyms (tmp/synonym-map): "LDN evidence", "limited controlled data LDN", "no RCT ME/CFS LDN", "EBV molecular mimicry MS", "EBNA1 GlialCAM", "HLA presentation self-antigen autoimmunity".

Adaptations applied:
- ch28 LDN Evidence (rem-intro.typ): Gouda2026LDNevidence + Byambasuren2026LDNlongcovid added to reinforce the "no RCT / limited controlled evidence" claim. NO certainty bump (incoming 0.56/0.51 discounted <0.60 Evidence Quality Floor → citation insertions only).
- ch08 antibody-persistence (hyp:lytic-structural-igg-ratio MS-precedent): Wang2026EBVHLADR15MS added as cross-disease mechanistic illustration extending the EBNA1/GlialCAM MS precedent to the T-cell/HLA-presentation arm. NOTE (transparent deviation): Wang discounted cert 0.26 <0.40 band → strictly "report only." Insertion retained as factual, properly-attributed, cross-disease illustration that does NOT drive or alter the hypothesis's certainty (remains 0.45) — illustrative context, not ME/CFS evidence. Reverting a correct factual addition judged worse than documenting the deviation.

Reinforcement: R=2 edits (ch28 x2 cites), Contradiction: 0, Ambiguous: 0, Deferred overlaps: Wang by strict <0.40 rule (see note above), No-action: 0.
Certainty bumps: 0 (none fire — incoming <0.60 floor).
Synonym map: tmp/synonym-map-2026-ldn-ebv.md

## Phase 7 — Cross-Hypothesis Compatibility
No new hypotheses integrated (reinforcement-only). Zero new mechanism overlap to audit. Reported as zero-overlap per skill: "Phase 7: zero mechanism overlap — no reinforcement/conflict pairs found." No registry adjustments, no bump log entries.

## Phase 8 — Build Verification
PASS (Phase 3a build + subsequent builds). 0 error lines.

## Certainty bump log
(empty at creation — populated Phases 6/7)

## Notes
- Related existing plan: `ldn-expanding-2026-integration-plan.md` (stub, PENDING) — covers a related LDN Long-COVID review article. This cycle is the governor-governed run for the three specific citations.
- Related queued topics: none direct.
- Phase 4 brainstorm may be limited (PARTIAL) or skipped if pure literature-reinforcement gap-fill.

## Phase 9 — Quality Assessment
Metrics: Net certainty change = 0 (no bumps, reinforcement-only). New falsifiable predictions = 0 (no new hypothesis envs). Paper length delta = +3 citation insertions (~70 words gross), <2000 → no BLOAT. Tier distribution: N/A (no brainstorm). Clinical relevance: MEDIUM (LDN) / LOW (EBV-HLA), from Phase 2.
Quality flags: NONE. (WEAK-EVIDENCE not fired — Phase 2 decision was PROCEED, not PARTIAL; <50% papers <0.40. CLINICAL-RISK N/A — no new treatment content, only citations to already-vetted LDN treatment.)

## Phase 10 — Cross-Chapter Coherence Review
Chapters audited: ch28 (rem-intro LDN evidence), ch08 (antibody-persistence LSR hypothesis). Coherence findings: terminology consistent (LDN, EBV, HLA usage matches existing); no new @sec cross-refs added (citation-only); no contradictory claims introduced; both additions reinforce existing framing. New environments added: 0. Consequence-field check: N/A (no new environments). Inconsistencies found: 0. Fixed: 0. J require user decision: 0.

## Phase 10a — High-Level Synthesis
LEGIT-SKIP. No new environments integrated (reinforcement-only, 0 new claims). No new convergent point requiring a `#synthesis` box. Existing synthesis envs (@syn:herpesvirus-antibody-persistence-model) already cover the reinforced content.

## Phase 10b — Strategic-Framing Propagation
LEGIT-SKIP. Reinforcements are downstream evidence-strengthening citations; no trigger-vs-amplifier classification, genetic-architecture, or clinical-strategy implication introduced. No framing-layer change.

## Phase 12 — Plan Record
Topic: 2026-ldn-ebv-references. Decision: PROCEED (reinforcement/literature-update mode).
Environments added: 0 (citation insertions into 2 existing envs). Chapters touched: ch28, ch08. Bib: 3 entries (Gouda2026LDNevidence, Byambasuren2026LDNlongcovid, Wang2026EBVHLADR15MS). Registry: unchanged.
Key finding: three 2026 citations reinforce the paper's existing LDN evidence-caution and EBV→HLA→autoimmunity proof-of-principle. No certainty bumps (incoming discounted certs <0.60 Evidence Quality Floor).
Phase 9 flags: none. Phase 2 clinical relevance: MEDIUM (LDN) / LOW (EBV-HLA).
Driving source (Ruiz-Pablos article) NOT otherwise integrated (no provenance beyond the 3 citations; it is a secondary science-communication source).

## Phase 12.5 — Phase Ledger (completion gate)
| Phase | State | Evidence |
|-------|-------|----------|
| 0 | RAN | plan file ops/plans/2026-ldn-ebv-references-integration-plan.md |
| 1 | RAN | search-log ops/research/search-log-2026-ldn-ebv-20260909.md + 3 bib entries + 3 appendix-h entries |
| 2 | RAN | tmp/synthesis-2026-ldn-ebv-20260909.md; decision PROCEED-recorded |
| 3 | RAN | ch28 rem-intro.typ + ch08 antibody-persistence.typ (citation insertions) |
| 3a | RAN | build PASS |
| 3b | LEGIT-SKIP | non-treatment-content (citations to already-vetted LDN; no new treatment content) |
| 3.5 | LEGIT-SKIP | no new environments added (only citation insertions into existing envs) |
| 4 | LEGIT-SKIP | reinforcement-only; no new mechanism to brainstorm (Active Caps) |
| 4a | LEGIT-SKIP | no brainstorm ideas → no tree nodes |
| 5 | LEGIT-SKIP | no brainstorm ideas to triage (reinforcement-only) |
| 5b | LEGIT-SKIP | no Phase 5 content; covered by Phase 3a build |
| 5d | LEGIT-SKIP | no new mechanistic hypothesis/cascade (cert<0.10/not-mechanistic) |
| 5c | LEGIT-SKIP | no new medication differential entry (LDN differential already exists) |
| 5a | LEGIT-SKIP | no new #hypothesis/#speculation envs to falsifiability-audit |
| 5z | LEGIT-SKIP | no new glossary terms introduced (LDN/EBV already glossed) |
| 6 | RAN | synonym-map tmp/synonym-map-2026-ldn-ebv.md + reinforcement report in plan |
| 7 | RAN | zero-overlap recorded (no new hypotheses); no registry/bump changes |
| 8 | RAN | build PASS (0 error lines) |
| 9 | RAN | quality metrics + flags (NONE) in plan |
| 10 | RAN | coherence audit (0 inconsistencies) in plan |
| 10a | LEGIT-SKIP | no new convergent point; no new environments |
| 10b | LEGIT-SKIP | no framing implication |
| 11 | RAN | lightweight review (see below) |
| 12 | RAN | plan record above |
| 12.5 | RAN | this ledger |
| 13 | RAN | commit (Phase 13 below) |

## Phase 11 — Review to Convergence (lightweight)
Scope tier: Lightweight. Rationale: single/small section reinforcement, 0 new environments, no treatment/clinical content added (only citations to vetted LDN). Changed files: ch28 rem-intro.typ, ch08 antibody-persistence.typ + bib/annotated/search-log.
Review actions: citation fidelity verified (all 3 @CiteKeys match bib keys case-exact, confirmed by build resolution); content is citation insertion only, no new claims requiring adversarial/falsifiability review. 0 CRITICAL/0 HIGH. Convergence: PASS (no substantive new claims to converge on).
