# Document Restructuring Plan

ME/CFS Typst book structural improvement for reader navigation.
Status: PLANNED — not yet executed. No files changed by this plan's execution yet.
Date: 2026-08-21

## Hard constraint: label & cross-ref stability

- **Bibliography keys** (`@AuthorYEARkeyword`): must never change. Live in
  `src/main/typst/mecfs/bib/*.bib`, independent of the chapter/part directory tree.
- **Internal structural labels** (`@ch:...`, `@sec:...`, `@hyp:...`, `@spec:...`,
  `@syn:...`, `@ach:...`, `@oq:...`): must stay identical across relocation.
- **Verified fact:** blog articles (`quarto/**/*.qmd` in en/fr/de) reference
  bibliography keys only — **zero** structural-label refs. Renumbering/relocating
  chapters does NOT break blog links.
- **Two build include-lists historically existed** (`loth2026-mecfs.typ` +
  `loth2026-p4-build.typ`). The latter was verified dead and **already deleted**
  (commit `2b7049fb`). Only `loth2026-mecfs.typ` remains and must be the sole
  include-list edited.

### Rule derived from the constraint
Relocate WITHOUT renumbering wherever possible → every internal label stays
byte-identical. Only a full renumber changes labels, and that is the sole phase
that touches them.

## Verified current structure (grounding)

- Front matter order (`loth2026-mecfs.typ`): title-page → abstract →
  version-notice → keywords → license → author-bio → ai-disclosure →
  methodology → reading-guide → patient-faq → TOC → MAIN MATTER.
- Part I (ch1–6): Introduction, History, Core Symptoms, Additional Symptoms,
  Diagnostic Criteria, Disease Course.
- Part II (ch7–21): system chapters (energy, immune, neuro, endocrine, cardio,
  gut, brain-clearance, genetics, integrative) + ch16 Comparative Nosology +
  ch17 Speculative Hypotheses + ch18 Symptom-Producing + ch19 Causal Hierarchy +
  ch20 Universal + ch21 Female Reproductive. ch13/ch16 are single-file skeletons.
- Part III (ch22–34): interleaves severity (ch24 severe, ch25 mild-moderate),
  population (ch26/27 pediatric), intervention-type (ch28–32), reference
  (ch22 map, ch23 symptom mgmt, ch33 med-response, ch34 cascade-tracing).
- Part IV (ch35–48): research synthesis; ends ch48 Research Proposals Index.
- Part V (ch49–56): modeling; ends ch56 causal-hierarchy-formal.
- Appendices A–J.

## Phase 0 — Baseline and label inventory

1. Green build: `nix build`, `nix build .#web`, `nix flake check`.
2. Label inventory baseline: grep all `.typ` for `<label>` definitions and
   `@label` usages; grep all `quarto/**/*.qmd` for `@CitationKey` usages.
   Save to `ops/plans/label-inventory-<date>.md` (coordination artifact, tracked).
   This is the diff-baseline proving no label/cross-ref lost.
3. `git status` clean; note foreign/staged files (parallel-session discipline —
   stage by explicit path only; never `git add -A`).
4. Commit baseline so every phase is revertible.

**Gate after every phase:** label-inventory diff → zero removed/renamed labels
and zero removed `@refs` (additions allowed); green build + `nix flake check`.

## Phase 1 — Front matter reorder (relocation, NO renumbering)

Move `license`, `ai-disclosure`, `author-bio`, `version-notice` includes to a
back-matter block; move the TOC (`#outline`) up after keywords.

- Front-matter labels (`ch:reading-guide`, `ch:methodology`, `ch:patient-faq`)
  unchanged — only their position moves.
- Edit ONLY `loth2026-mecfs.typ` (p4-build already gone).
- Verify `#pagebreak()` boundaries and roman→arabic numbering switch stay correct.
- Label impact: none. Blog impact: none.

## Phase 2 — Reader routing table (additive)

Replace the prose "For Different Readers" block in `shared/reading-guide.typ`
with a routing table (Patient/Caregiver, Clinician, Researcher, Student/Advocate,
Policy/Funder × Parts I–V + Appendices). Move it up after "Document Organization".

- Preserve all existing audiences (researchers, clinicians, patients, caregivers,
  advocates).
- "Start here" chapter per reader uses EXISTING labels only — no new cross-refs.
- Label impact: none. Blog impact: none.

## Phase 3 — Causal-hierarchy thread (additive)

Add a short callout box to each of `part2-intro`, `part4-intro`, `part5-intro`,
and optionally `ch19`/`ch56` preambles, stating which chapter/registry continues
the thread. Use EXISTING labels only: `@ch:causal-hierarchy`,
`@ch:causal-hierarchy-formal`, `@sec:hypothesis-speculation-registry`,
`@ch:speculative-hypotheses`, `@ch:proposed-studies`.

- Add a **"How the causal-hierarchy argument flows" mini-section (or small
  figure/table) to the `ch19` preamble** mapping the four stations of the thread,
  each with an existing label + forward/back link:
  1. qualitative classification (`@ch:causal-hierarchy`, Part II ch19)
  2. hypothesis-registry entries (`@sec:hypothesis-speculation-registry`, Part IV)
  3. proposed studies (`@ch:proposed-studies`, Part IV ch47)
  4. formal ODE test (`@ch:causal-hierarchy-formal`, Part V ch56).
  This lets a reader follow the spine across three parts without holding it in
  memory.

- Unify thread terminology ("trigger-capable root causes / amplifiers /
  downstream consequences") across the three intros + reading guide. Align prose
  wording only, re-label nothing. If a notation/terminology check is wanted, use
  the `typst-notation-consistency-checker` agent (`.opencode/agents/`). NOTE: the
  checker's canonical `meta/NOTATION_RECONCILIATION.md` is currently ABSENT from
  the repo (pre-existing issue, out of scope here) — do not block on it; proceed
  with prose-only wording alignment.
- Label impact: none (only references existing labels). Blog impact: none.

## Phase 4 — Part IV/appendix boundary cross-links (additive)

Add forward pointers in `part4-intro`/`ch47` to Appendices G/H, and back-pointers
in the appendix intros to Part IV. No moves.
- Label impact: none. Blog impact: none.

## Phase 5 — Part III reorder (RELOCATION — choose renumber or not)

Two sub-options; choice determines label impact.

- **5A — Reorder with NO renumber (preferred):** change only the `#include`
  order in `loth2026-mecfs.typ`. Keep all directory names and all `@ch:22…34`
  labels identical. PDF shows chapters out of numeric sequence in the TOC —
  the honest trade-off for byte-identical labels. **Internal labels 100%
  unchanged; blog 100% safe.**
- **5B — Renumber chapters (full label impact):** move directories, rename to
  match new numbers, update every `@ch:NN` label, prose "Chapter NN", and
  cross-ref. Only phase that changes internal labels. Requires full label sweep
  (prose "Chapter N", lowercase chNN, hypothesis-registry chapter-ref,
  appendix-G/H refs). Gate: label-inventory diff shows exactly the intended
  renames, nothing else.

**Recommendation: 5A.** If both clean sequence AND stable labels are wanted,
the correct fix is to stop numbering chapters sequentially (use stable slugs
like `@ch:treatment-severity-mild`), but that is a large separate migration.

## Phase 6 — Part II restructure (relocation — NO renumber)

- **Option A (recommended):** add a Part-IIB divider (`doc-part`-style heading)
  separating System Mechanisms (ch7–15) from Cross-Cutting Analysis (ch16–21).
  No files move, no labels change. Solves reader re-anchor with zero risk.
- **Option B:** extract ch16–21 to a new part between II and III. Requires
  renumbering III/IV/V → full label impact (same sweep as Phase 5B). Rejected
  by default per constraint.

**Default: Option A.** ch13/ch16 skeleton-completeness is a separate content
workstream, not part of this reorder.

## Phase 7 — Decisions needed

| # | Decision | Default |
|---|----------|---------|
| 7.1 | Part III: 5A (no renumber) vs 5B (renumber) | **5A** — honors constraint |
| 7.2 | Part II: Option A divider vs Option B new part | **Option A** |
| 7.3 | Part III severity order: keep severe-first or flip | **Keep severe-first** + one explanatory line |
| 7.4 | Front-matter move (license/AI-disclosure/etc. to back) | **Yes** |
| 7.5 | Skeleton ch13/ch16 content now or later | **Later** (separate workstream) |

## Phase 8 — Execution order, verification, rollback

Order (each ends green + label-diff-clean):
1. Phase 0 baseline (incl. label inventory)
2. Phase 1 front matter (relocate)
3. Phase 2 reader routing table (additive)
4. Phase 3 causal-hierarchy callouts (additive)
5. Phase 4 appendix cross-links (additive)
6. Phase 5 Part III reorder — 5A (no renumber) by default
7. Phase 6 Part II divider — Option A by default
8. Per-phase commit (commit skill; explicit paths; no `git add -A`)

Rollback: per-phase commits from a Phase-0 baseline mean any phase reverts
independently. Phases 5B/6B renumbering (only if overridden) is the only
non-trivial revert and is gated behind the full label sweep.

## Content-preservation + label-stability checklist

- [ ] No `.typ` file deleted or emptied; moves copy-verify-remove.
- [ ] Label inventory diff after each phase: zero labels removed/renamed.
- [ ] ONLY `loth2026-mecfs.typ` include-list edited (p4-build deleted).
- [ ] `@CitationKey` bib keys unchanged in every `.qmd` and `.typ`.
- [ ] Prose "Chapter NN" refs consistent with any renumber (only if 5B/6B chosen).
- [ ] `nix build`, `nix build .#web`, `nix flake check` all green after each phase.
- [ ] Web site re-rendered after structural changes (TOC/nav mirrors structure).
- [ ] Under default execution (5A + Option A), both structural phases are
      no-renumber relocations → internal labels and all blog bibliography keys
      remain byte-identical. If 5B/6B override is chosen instead, the label
      sweep (ch "NN" / chNN / registry / appendix-G/H refs) must be applied and
      verified by the label-inventory diff.

## Related completed work

- `loth2026-p4-build.typ` (dead duplicate build entrypoint) deleted in commit
  `2b7049fb`; de-referenced from `.opencode/agents/chapter-inserter.md` and
  `.agents/skills/integrate-topic/SKILL.md`.
- `agentfeed/ledger.jsonl` untracked + ignored in commit `333fec75`.
