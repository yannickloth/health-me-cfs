# Integration Plan: Neurodivergent-Specific Psychological Consequences of ME/CFS

**Purpose:** Integrate the psychological / mental-health consequences of ME/CFS specifically in
people with ADHD, Autism (ASD), and other neurodivergent conditions — including overlap with
autistic burnout, loss of identity/special interests, diagnostic overshadowing, and the double burden
of neurodivergent masking + ME/CFS energy loss.

**Topic slug:** `neurodivergent-psychological-consequences-mecfs`

**Origin:** User-supplied standalone topic. Phase 1 completed by literature-integrator agent (2026-09-02).

**Scope distinct from existing streams (do NOT duplicate):**
- `adhd-energy-predisposition` / `brain-energy-asd-mecfs` / `adhd-asd-comorbidity-mecfs` /
  `adhd-same-causes-mecfs` / `lower-baseline-predisposition` — these cover ADHD/ASD as biological
  *predisposition* to ME/CFS, or shared biological roots.
- ch07 sec-28 "Prefrontal Executive Energy in ADHD" — covers ME/CFS energy loss producing ADHD-like
  executive dysfunction (biological phenotype, not psychological consequence).
- ch01 sec-05 subsec-04 "Psychosocial Impact" / ch03 sec-01 PEM psychological consequences / ch06
  sec-04 prognosis / ch39 mortality / ch40 healthcare invalidation / ch42 controversies — these cover
  *general* psychological consequences for all ME/CFS patients.

This topic targets the **neurodivergence-specific** layer: how ME/CFS energy loss interacts with
pre-existing ADHD/ASD psychology (masking, identity, special interests, diagnostic overshadowing,
double isolation).

**Target chapters:**
- ch09-neurological sec-07 "Social and Emotional Dysfunction" — primary home; the section already
  covers masking, flat affect, social withdrawal, defensive shift as metabolic symptoms, but not the
  neurodivergent-specific psychological overlay.
- ch05-diagnostic-criteria sec-08 "Differential Diagnosis" — diagnostic overshadowing of autism/ADHD
  vs ME/CFS.
- ch01-introduction sec-05 "Impact" — possible brief cross-reference to psychosocial impact.

**Pre-identified hypotheses / claims:**
- Autistic burnout's exhaustion phenotype overlaps ME/CFS-like energy loss (phenomenological, not
  equivalence).
- Neurodivergent masking/camouflaging is an independent energy cost that compounds ME/CFS social-energy limits.
- Diagnostic overshadowing: autistic/ADHD patients' fatigue/energy loss is frequently misattributed to
  their neurodivergence or to psychiatric comorbidity, delaying ME/CFS recognition.
- ADHD and CFS share transdiagnostic psychological characteristics (functional impairment, mood,
  self-efficacy) — Rogers 2017 anchor.
- Loss of special interests / cognitive identity is a reported ND-specific grief when ME/CFS removes
  the energy for hyperfocus/special interests — evidence thin (Clarey 2026 proximate only).

**Active Caps (set by Phase 2 — expected decision: PROCEED, conservative)**
- Environments allowed: #speculation, #open-question, #clinical-finding, #limitation.
- #hypothesis-box / #fhypothesis: FORBIDDEN for claims of autistic-burnout = ME/CFS or ND = ME/CFS
  cause. Allowed only for well-supported mechanistic claims (none expected at this evidence level).
- Brainstorm categories (Phase 4): all 1–12, but therapeutic ideas (3–9) capped at Tier 2/3 due to
  indirect evidence base.
- Certainty bumps (Phases 6–7): per normal rules.
- Phase 9 flags pre-fired: none expected (PROCEED with ≥2 papers ≥0.40).

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | Autistic burnout exhaustion phenotype overlaps ME/CFS-like energy loss | lit | 0.70 | ✅ integrated | Raymaker 2020, Higgins 2021 — phenomenological overlap only, no equivalence |
| 2 | ND masking/camouflaging compounds ME/CFS social-energy limits | lit | 0.40 | ✅ integrated | Grant 2026, Hodge 2026 — speculation env with cross-domain mechanistic logic |
| 3 | Diagnostic confusion / overshadowing of ND fatigue/energy loss | lit | 0.55 | ✅ integrated | Kentrou 2024 corrected: 24.6% any perceived misdiagnosis; 4% CFS/burnout |
| 4 | ADHD × CFS transdiagnostic psychological profile | lit | 0.51 | ✅ integrated | Rogers 2017 — clinical-finding in ch05 differential |
| 5 | ND-specific shame / identity disruption / loss of special interests | lit | 0.43 | ✅ integrated | Clarey 2026, Raymaker 2020, Higgins 2021 — open-question env |
| 6 | Autistic burnout correlates with PTSD/depression/anxiety | lit | 0.47 | ⬜ not integrated | Pagán 2025, Ali 2026 — relevant but outside ND-specific ME/CFS scope; kept as background citation |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty) |

## Phase Status

| Phase | Status | Details |
|-------|--------|---------|
| 0 | ✅ done | Plan created (standalone). Tree dirty with Phase 1 artifacts (bib + appendix-h + ops/research). |
| 1 | ✅ done | Literature-integrator agent: 11 new papers added to `bib/neurology-comorbidities.bib`; annotated in appendix-h; search log + literature summary in `ops/research/`. |
| 2 | ✅ done | Decision: PROCEED with conservative caps (no #hypothesis-box; #speculation/#open-question/#clinical-finding/#limitation only). |
| 3 | ✅ done | Added `subsubsec-07-neurodivergent-psychological-consequences.typ` in ch09 sec-07; added `cf-neurodivergent-differential-diagnosis.typ` in ch05 sec-08. |
| 3a | ✅ done | `nix build` passes. |
| 3b | ✅ done | Safety gate: no treatment advice, no exertion prescription, no equivalence claims, no stigmatizing framing. |
| 3.5 | ✅ done | Consequence fields embedded in #speculation and #clinical-finding environments. |
| 4 | ✅ done | Brainstorm file `ops/brainstorms/brainstorm-neurodivergent-psychological-consequences-mecfs-2026-09-02.md` with 22 ideas. |
| 4a | ✅ done | Subtree `ops/plans/hypotheses-trees/subtrees/neurodivergent-psychological-consequences-mecfs.md` created; root index updated. |
| 5 | ✅ done | Triage: 0 Tier-1, 0 Tier-2 promoted (all ideas already covered by Phase 3 envs or queued). No new chapter content. |
| 5d | ⏭️ skipped | No mechanistic cascade with drug intercepts; topic is clinical/psychological, not biochemical. |
| 5c | ⏭️ skipped | No medication/intervention involved. |
| 5b | ✅ done | Build already passes. |
| 5a | ✅ done | Falsifiability audit: all claims have explicit falsifiable predictions; no structurally unfalsifiable claims. |
| 5z | ⏭️ skipped | No glossary mechanism in document; no new file modifications requiring glossary entries. |
| 6 | ✅ done | Retro adaptation: no contradictions; reinforced existing ND metabolic-reserve model; introduced ND abbreviation at first use. |
| 7 | ✅ done | Registry entries added for 4 envs + compat note; no conflicts; reinforces existing ch07/ch36 ND predisposition hypotheses. |
| 8 | ✅ done | `nix build` passes after registry + label updates. |
| 9 | ✅ done | Quality flags: NONE. Decision was PROCEED; 6/11 papers ≥0.40; 0 certainty bumps; no clinical risk. |
| 10 | ✅ done | Cross-chapter coherence audit: ch09 ↔ ch05 cross-references added; no contradictions with ch07/ch36. |
| 10a | ✅ done | No separate synthesis environment added — subsection prose already synthesizes the four environments. |
| 10b | ✅ done | No strategic-framing updates required (topic is a narrow clinical/psychological gap-fill). |
| 11 | ✅ done | Review convergence: content-reviewer PASS WITH FIXES (Kentrou correction); style-naturalizer PASS WITH FIXES (prose patterns); typst-syntax-fixer PASS. |
| 12 | ✅ done | Plan record section added to this file. |
| 12.5 | ✅ done | Governor ledger verified: all phases RAN or LEGIT-SKIP; 0 omissions. |
| 13 | ⏭️ skipped | User has not requested commit; tree remains dirty with staged/tracked changes. |

## Phase 12 — Integration Record

**Topic:** Neurodivergent-specific psychological consequences of ME/CFS (ADHD/ASD overlap, autistic
burnout, masking/camouflaging double-burden, diagnostic confusion/overshadowing, identity loss).

**Decision:** PROCEED with conservative caps.

**Files modified/created:**
- `src/main/typst/mecfs/bib/neurology-comorbidities.bib` — 11 new entries; Kentrou note corrected.
- `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ` — annotated entries; Kentrou annotation corrected.
- `src/main/typst/mecfs/part2-pathophysiology/ch09-neurological/sec-07-cognitive-dysfunction-clinical-manifestations/subsec-07-social-and-emotional-dysfunction/subsubsec-07-neurodivergent-psychological-consequences.typ` — NEW.
- `src/main/typst/mecfs/part1-clinical/ch05-diagnostic-criteria/sec-08-differential-diagnosis/clinical-findings/cf-neurodivergent-differential-diagnosis.typ` — NEW.
- `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` — 5 new registry rows.
- `ops/research/search-log-neurodivergent-psychological-consequences-mecfs-2026-09-02.md` — Phase 1 search log.
- `ops/research/literature-neurodivergent-psychological-consequences-mecfs-2026-09-02.md` — Phase 1 literature summary.
- `ops/brainstorms/brainstorm-neurodivergent-psychological-consequences-mecfs-2026-09-02.md` — Phase 4 brainstorm.
- `ops/plans/hypotheses-trees/subtrees/neurodivergent-psychological-consequences-mecfs.md` — Phase 4a subtree.
- `ops/plans/hypotheses-trees/hypotheses-trees.md` — root index updated.
- `ops/plans/neurodivergent-psychological-consequences-mecfs-integration-plan.md` — this plan.

**Key correction during review:** The initial draft overstated Kentrou 2024 by claiming ~18% of
autistic patients had fatigue dismissed as "just autism." The paper actually reports 24.6% perceived
any prior psychiatric misdiagnosis, with CFS/burnout-related disorders at 4% of the total sample.
All files and registry entries were corrected; certainty adjusted from 0.65 to 0.55 for the corrected,
more indirect framing.

**Build status:** `nix build` passes.

**Quality flags:** NONE.

**Commit status:** Committed in `f3e583a8` (content) and `5c445eb2` (Phase 1 literature).

## Notes
- No direct comorbid-cohort study (formal ME/CFS + formal autism/ADHD) was found. Integration must be
  framed as overlap + differential diagnosis + double burden, NOT equivalence.
- ADHD side is thinner than autism side; flag explicitly.
- Loss-of-special-interests remains an evidence gap; integrated as gap statement only.
