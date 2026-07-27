# Integration Plan: Satellite Cell Depletion & Impaired Muscle Regeneration in ME/CFS and Long COVID

**Topic slug:** `satellite-cell-regeneration`
**Topic:** C14 – Braeden Charlton et al. — Reduced regenerative markers (satellite cells, FAP cells) and altered metabolism in ME/CFS and Long COVID patients
**Source:** AMS 2026 Abstract (conference abstract; peer-review/publication status unknown)
**Date:** 2026-07-26
**Parent topic:** root (connected to `beyond-skeletal-muscle` subtree stub)
**MIXED mode:** tree has unrelated changes (hormesis-ldn topic active). All git operations use explicit file lists; no `git add -A`; no shared-branch WIP commits; no `git reset`/rebase/--amend; rollback = `git checkout <ref> -- <file>`.

## Purpose

Evaluate evidence that ME/CFS and Long COVID patients have reduced satellite cell (Pax7⁺) and fibroadipogenic progenitor (FAP, PDGFRα⁺) cell abundance in skeletal muscle, indicating impaired muscle regeneration capacity.

## Target Chapters

- ch07 (energy metabolism / mitochondrial pathophysiology — mitochondrial function ↔ regeneration link; sec-16 PEM, sec-17 tissue repair)
- ch20 (universal mechanisms — Family 17 Structural Integrity)
- ch14d (cross-disease — Long COVID vs ME/CFS shared muscle pathology — via cross-refs)
- ch33 (mechanistic cascade tracing — skipped: mechanism is correlational, no ≥3-step druggable cascade)

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| 1 | SC depletion impairs muscle repair → PEM | — | 0.37 | ✅ done | @spec:sc-depletion-structural-ratchet (ch20) |
| 2 | FAP reduction → altered regenerative signaling | — | 0.37 | ✅ done | FAP coverage in @spec:sc-depletion-structural-ratchet |
| 3 | SC-OXPHOS correlation → mitochondrial function gates regeneration | — | 0.30 | ✅ done | @spec:sc-depletion-glycolytic-shift (ch20) |
| 4 | Oxidative→glycolytic shift + reduced antioxidative metabolites → damage susceptibility | — | 0.30 | ✅ done | @spec:sc-depletion-glycolytic-shift |
| 5 | Impaired regeneration → disproportionate PEM damage | — | 0.37 | ✅ done | @spec:sc-depletion-structural-ratchet + @spec:sc-depletion-convergent-repair |
| 6 | Shared ME/CFS+LC pathology → post-infectious SC niche vulnerability | — | n/a | ✅ done | @oq:sc-depletion-postinfectious-convergence (ch07) |
| 1.1 | PEM as SC exhaustion spiral | 2 | 0.30 | ↩️ | Tree-only — dynamic model, cert too low for integration |
| 1.2 | FAP niche collapse as primary lesion | 2 | 0.25 | ↩️ | Tree-only — partially covered in @oq:sc-depletion-primary-vs-secondary |
| 2.1 | Independent replication + confounders | 2 | 0.35 | ✅ done | Embodied in falsifiability prediction of @spec:sc-depletion-structural-ratchet |
| 2.2 | Ex vivo SC functional assay | 2 | 0.35 | ↩️ | Tree-only — research proposal |
| 2.3 | Deconditioning comparator study | 2 | 0.30 | ↩️ | Tree-only — partially covered by bed-rest note in severity field |
| 10.1 | Deconditioning artefact confound | — | 0.40 | ✅ done | Inline caveat in @spec:sc-depletion-structural-ratchet |
| 10.2 | CNS symptom irrelevance | — | 0.55 | ✅ done | Inline scope constraint in consequence field |
| 10.3 | Age/hormonal confound | — | 0.30 | ✅ done | Already in certainty statement |
| 11.1 | Nested nulls (27% genuine) | — | n/a | ↩️ | Tree-only — implied by cert + caveats |
| 11.2 | Blast radius map | — | n/a | ↩️ | Tree-only |
| 12.1 | Seven quality concerns | — | n/a | ✅ done | Already in certainty + evidence source statements |
| 12.2 | Six generalizability gaps | — | n/a | ✅ done | Already in severity + falsifiability statements |

## Active Caps (set by Phase 2 — decision: PARTIAL)
- Environments allowed: speculation/open-question/limitation ONLY (PARTIAL)
- #hypothesis-box / #fhypothesis: FORBIDDEN even if idea cert ≥0.45 or Phase 7 bump crosses 0.45 (PARTIAL)
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (PARTIAL — skip 3–9)
- Certainty bumps (Phases 6–7): capped: no bump may cross 0.45 (PARTIAL)
- Phase 9 flags pre-fired: WEAK-EVIDENCE (PARTIAL)

## Phase Log

| Phase | Status | Detail |
|-------|--------|--------|
| 1 | ✅ | 9 papers, 9 bib entries in musculoskeletal.bib |
| 2 | ✅ | PARTIAL. Primary evidence: conference abstract (0.37). Cohort overlap: all Wüst lab pubs = same biobank. Clinical relevance: LOW. |
| 3 | ✅ | 5 environments across ch20 (3) + ch07 sec-17 (2), 1 cross-ref in ch07 sec-16, 5 registry entries |
| 3a | ✅ | Build PASS |
| 3b | ✅ | 5 environments gated, all passed (non-treatment, severity applicability stated) |
| 3.5 | ✅ | 5 environments verified, all have consequence fields |
| 4 | ✅ | 12 ideas (2 cat 1, 3 cat 2, 3 cat 10, 2 cat 11, 2 cat 12) |
| 4a | ✅ | Subtree populated (17 nodes), root index updated |
| 5 | ✅ | Critical categories integrated as inline caveats. Constructive ideas tree-only/embodied in predictions. No ch30/5c/5d. |
| 5a | ✅ | 5 audited: 2 fully falsifiable, 2 weakly fixed, 1 unfalsifiable fixed. Standing epistemic cross-check: 5 keys verified, 0 discrepancies. |
| 5b | ✅ | Build PASS |
| 5z | ✅ | 6 glossary entries added |
| 6 | ✅ | No pre-existing overlapping claims — no adaptations needed |
| 7 | ✅ | Cross-references to existing autonomic/NK/HSAT2 specs already in environment text. Zero conflicts. |
| 8 | ✅ | Build PASS |
| 9 | ✅ | WEAK-EVIDENCE pre-fired. No BLOAT, CLINICAL-RISK, or G-UNSUSTAINED-CERTAINTY. |
| 10 | ✅ | Cross-chapter coherence confirmed — certainties match, terminology consistent. |
| 10a | n/a | Skipped — <3 environments per chapter. |
| 10b | n/a | No strategic-framing propagation needed. |
| 11a | ✅ | Adversarial review: 1 critical + 5 high + 6 medium. All CRITICAL+HIGH fixed. Causality hedging strengthened (ch20:458, ch07:85), deconditioning logic corrected (ch20:482), gp120→anti-GPCR fix (ch07:97), aging SC decline softened (ch07:101). |
| 11c | ✅ | Typst review: zero findings. All labels resolve, no unescaped `<`, brackets balanced. |
| 12 | ✅ | Changelog entry added under Version 12. |
| 13 | ✅ | Commit 59ef244 (plan file). ch07 environments lost in restructuring — re-restored and committed below. |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

## Notes

- Same AMS 2026 conference as slaghekke2026-muscle-microvascular (already integrated). Check for cross-reference opportunities.
- `beyond-skeletal-muscle` subtree populated — this topic's Phase 4/4a updated it with 17 nodes.
- Conference abstract only — no full paper available yet. This constrains certainty ceiling.
- Cohort overlap: Charlton 2026 shares PI (Wüst), biobank, and cohort with Slaghekke 2026 F5, Appelman 2024, Charlton 2025.
