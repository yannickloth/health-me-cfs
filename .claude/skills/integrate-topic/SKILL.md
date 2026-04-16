---
name: integrate-topic
description: Full pipeline for integrating a new subject into the primary ME/CFS paper — research, development, creative brainstorming, paper integration, review-to-convergence, changelog, and commit.
argument-hint: <topic description>
---

# Integrate New Topic into the ME/CFS Paper

End-to-end: research → develop → integrate → brainstorm → develop best ideas → review to zero findings → changelog → commit.

**Topic**: $ARGUMENTS

**Guard:** `$ARGUMENTS` empty/blank/literal → ask user for topic before proceeding.

---

## Phase 1 — Literature Research

**Agent:** `literature-integrator` | **Model:** sonnet | **Execution:** foreground (must write files)

- Search PubMed, Google Scholar, preprint servers — include null results, contradicting evidence (e.g., "[topic] negative results", "[topic] failed replication", "[topic] meta-analysis null")
- Target 5–15 papers (peer-reviewed preferred; preprints if recent + relevant)
- Per paper: evaluate quality (sample size, design, journal, replication status)
- Download PDFs where available; abstracts otherwise
- Create `Literature/` folder per literature-integration workflow
- Add entries to `src/main/typst/mecfs/references.bib`:
  - Standard BibTeX fields + `certainty = {0.XX}` + `research_stream = {topic-slug}`
- Add annotated entries to `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ`:
  ```
  === AuthorYear — Short Title
      / *Full Citation:*: ...
      / *DOI:*: ...
      / *Key Findings:*:
          - finding 1
          - finding 2
      / *Conclusion:*: ...
      / *Limitations:*: ...
  ```
- Check `registry/scrape-registry.md` before scraping any URL; update after

**Certainty scale:**

| Factor | High (0.7–1.0) | Medium (0.4–0.69) | Low (0.0–0.39) |
|--------|---------------|-------------------|----------------|
| Sample size | n > 100 | n = 20–100 | n < 20 |
| Publication | Top journal | Peer-reviewed | Preprint |
| Replication | Independent | Single study | Contradicted |
| Methodology | Rigorous | Adequate | Flawed |

**Guard:** Zero papers found → stop; report: "Phase 1: No papers found. Reasons: too niche / search terms need refinement / literature sparse. Proceed to Phase 3 only, or ask user for alternative search terms."

**Output:** Literature summary in `content-staging/` + annotated bib entries + references.bib updates.
**Report:** "Phase 1 complete: N papers found, M added to bib, annotated bib updated."

---

## Phase 2 — Content Development and Integration

**Agent:** main session | **Model:** current

Read Phase 1 outputs. Per finding, determine integration target:

**Chapter mapping:**
- Pathophysiology mechanisms → Part 2 (ch06–ch16)
- Treatment/interventions → Part 3 (ch14a–ch19)
- Biomarkers/diagnostics → Part 2 (ch20) | Part 4 (ch22–ch25)
- Clinical features/symptoms → Part 1 (ch02–ch05)
- Research questions/hypotheses → Part 4 | hypothesis registry
- Cross-disease comparisons → ch14d | ch13

**Environment selection:**

| Content type | Environment |
|-------------|-------------|
| Novel discovery, well-supported | `#achievement[Title][ ... ]` |
| Hypothesis (certainty ≥ 0.45) | `#hypothesis-box[Title][ ... ]` |
| Speculation (certainty < 0.45) | `#speculation[Title][ ... ]` |
| Testable prediction | `#prediction[Title][ ... ]` |
| Clinical finding | `#clinical-finding[Title][ ... ]` |
| Safety/risk | `#practical-warning[Title][ ... ]` or `#warning-box[Title][ ... ]` |
| Open research question | `#open-question[Title][ ... ]` |
| Limitation | `#limitation[Title][ ... ]` |
| Background prose | regular paragraph with `@CitationKey` |

**For every new hypothesis, speculation, prediction, or open-question:**
- Add entry to `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` (match existing format)

**Integration rules:**
- Every mechanistic claim → `@CitationKey`
- Explicit certainty assessment in every environment
- Limitations for all findings
- Note replication status (fully / partially / not yet replicated)
- Never present mechanistic hypothesis as clinical recommendation
- Treatment content: use `#warning-box` or `#limitation` to flag hypothetical rationale
- Add cross-references (`@sec:related-section`, `@fig:diagram-label`) where relevant (Typst: `@` = citations + cross-references; difference is what the label resolves to)

**Additional rules for Part 3 (ch14a–ch19):**
- State expected time-to-response if known
- State starting dose for severe/very-severe patients (often far below standard)
- State monitoring parameters (what to track, how often)
- State stopping criteria
- Check interactions with common ME/CFS co-prescriptions: fludrocortisone, midodrine, LDN, mestinon, beta-blockers, antihistamines
- No human dosing data → state explicitly; flag as research-stage only
- Contraindications for bedbound patients → cross-reference ch14a

**Report:** "Phase 2 complete: N environments added across M chapters, hypothesis registry updated."

---

## Phase 3 — Creative Brainstorming

**Agent:** `scientific-insight-generator` | **Model:** opus

Synthesize Phase 1 findings + existing paper. Generate ideas across all categories:

1. Novel hypotheses — mechanistic connections not yet in literature; new mechanisms from existing findings
2. Research directions — experiments that resolve key uncertainties; gaps
3. Drug/medication ideas — repurposed drugs, new targets, dose/timing
4. Supplement/nutraceutical ideas — micronutrients, botanicals, dietary; mechanistic rationale
5. Non-pharmacological interventions — breathing, pacing, vagal stimulation, rehabilitation; physiological rationale
6. Combinations + access — multi-component protocols, severity-level accessibility, caregiver-implementable
7. Mathematical model extensions — new variables, equations, parameters, predictions from ODE/DAG models
8. Cross-disease bridges — parallels suggesting testable ME/CFS predictions
9. Diagnostic/biomarker ideas — new ways to measure mechanisms, stratify patients, predict response

Per idea: mechanistic rationale + evidence link + preliminary certainty (0.0–1.0) + falsifiable prediction.

**Output:** `content-staging/brainstorm-[topic-slug]-[date].md` with ranked ideas.
**Report:** "Phase 3 complete: N ideas generated (M hypotheses, K treatment ideas, J other)."

---

## Phase 4 — Develop and Integrate ALL Remotely-Relevant Ideas

**Agent:** main session | **Model:** current

**MANDATORY: Integrate EVERY idea from Phase 3 that has any remote relevance to ME/CFS — even Tier 3 long-shots and speculative cross-disease bridges. No idea is skipped just because it is speculative, cross-disease, or lacks direct ME/CFS evidence.** Only skip ideas that are explicitly irrelevant (e.g., marked "NOT for clinical integration" in the brainstorm with no research value).

Read Phase 3 output. Per idea, integrate using the appropriate environment:

| Certainty | Evidence | Environment |
|-----------|----------|-------------|
| ≥ 0.45 | Direct | `#hypothesis` |
| 0.20–0.44 | Indirect/cross-disease | `#speculation` |
| < 0.20 | Highly speculative | `#speculation` (low certainty) |
| No anchor | Research question | `#open-question` |

1. **Research** (optional for Tier 1–2) — delegate to `literature-integrator` (sonnet): find supporting/contradicting evidence; produces integration guide in `content-staging/`; updates `references.bib` + annotated bib. For Tier 3 ideas with no direct evidence, skip the research step and integrate directly as `#speculation` or `#open-question`.
2. **Develop + integrate** — main session reads guide; writes directly into target chapter files per Phase 2 rules (bypasses `chapter-integrator` — ideas already scoped by Phase 3)
3. **Verify** — confirm `literature-integrator` added bib entries before proceeding

**Integration threshold:** ANY mechanistic connection to ME/CFS is sufficient. Cross-disease parallels → appropriate chapter (ch13, ch14d). Non-pharmacological interventions → ch17. Research tools → ch20 or ch25b. Long-shot drug ideas → ch18 or ch06 as open questions. No idea is "too speculative to integrate" — speculative ideas belong in `#speculation` environments with low certainty ratings.

**Report:** "Phase 4 complete: N ideas integrated (M hypotheses, K speculations, J open questions), P skipped (reason: [explicit irrelevance only])."

---

## Phase 5 — Build Verification

**Agent:** `test-runner` | **Model:** haiku

`test-runner` = report-only (no fixes). Build fails → main session reads error report, applies fixes (missing `@` citations, broken labels, malformed Typst syntax), re-invokes `test-runner`.

**Max 5 fix-verify iterations.** Still failing → stop, report errors verbatim, ask user before continuing.

**Report:** "Phase 5 complete: build PASS / FAIL (errors if FAIL)."

---

## Phase 6 — Review to Convergence

Collect changed files before starting:

```bash
# Modified tracked files:
git diff --name-only HEAD | grep '\.typ$'
# New untracked .typ files:
git ls-files --others --exclude-standard | grep '\.typ$'
```

Pass combined list (space-separated paths) to each review skill.

| Pass | Skill | Convergence criterion |
|------|-------|-----------------------|
| 6a | `/review-convergence <changed-files>` | 2 consecutive zero-finding rounds |
| 6b | `/review-adversarial <changed-files>` | all 6 personas; 2 consecutive passes zero new findings |
| 6c | `/review-typst <changed-files>` | 2 consecutive zero-finding rounds |

Between passes: run `nix build` — confirm no regressions from fixes.

**Convergence criterion:** All three reviews → 2 consecutive zero-finding rounds each.
**Report per pass:** "Review 6a/6b/6c complete: N rounds, M findings fixed, status: CONVERGED / MAX-ROUNDS-REACHED."
**Max rounds reached with findings remaining** → list unresolved; ask user how to proceed.

**Context:** Pipeline is long. Context >35% before reviews complete → generate continuation prompt per CLAUDE.md; hand off to fresh session. Include: phases completed, files modified, review passes remaining.

---

## Phase 7 — Changelog Update

**Agent:** main session | **Model:** haiku (mechanical formatting)

Write changelog entry **after** all reviews converged (reflects final integrated state, not pre-review draft).

Add entry to `src/main/typst/mecfs/shared/changelog.typ` under current version (Version 6 as of 2026-04-10; create new version section if appropriate).

**Format** (match existing entries exactly):
```
- *[Topic Title]* ([Chapter X, new Section `sec:xxx`; Appendix H, new Section `sec:bib-xxx`; references.bib, N new entries; hypothesis registry, M new entries]): [2–4 sentence summary of what was added and why]. [Key mechanistic finding]. [Clinical implications if any]. _Motivated by:_ [Author Year @CiteKey] — [one-line reason why this source motivated the change].
```

**Rules:**
- Must include "Motivated by:" line with `@CitationKey` references
- Mention all modified files (chapters, appendix H sections, references count, hypothesis registry entries)
- Specific about section labels created
- Describe *what* changed and *why*
- Changelog entry must also pass review — include `changelog.typ` in Phase 6 file list, or run one quick `/review-typst` pass on `changelog.typ` alone if Phase 6 already converged

**Report:** "Phase 7 complete: changelog updated."

---

## Phase 8 — Commit

Invoke `/commit` with scope hint `[topic-slug] integration`. Follow all `/commit` skill rules (conventional commits, no generated files, no PDFs except published artifacts).

**Report:** "Phase 8 complete: N commits created."

---

## Cost Model

| Phase | Agent | Model | Reason |
|-------|-------|-------|--------|
| 1 | `literature-integrator` | sonnet | Research synthesis needs judgment |
| 2 | main session | current | Composition at zero marginal cost |
| 3 | `scientific-insight-generator` | opus | Creative cross-domain synthesis |
| 4 | `literature-integrator` (sub) | sonnet | Per-idea research |
| 4 | main session | current | Development + integration |
| 5 | `test-runner` | haiku | Mechanical build check |
| 6a | review-convergence agents | sonnet | Consistency/logic checking |
| 6b | review-adversarial agents | opus | Adversarial personas need deep reasoning |
| 6c | review-typst agents | sonnet | Typst-specific review |
| 7 | main session | haiku | Mechanical changelog formatting |
| 8 | commit | current | Git operations |

---

## Invariants (Never Violate)

- No fabrication — every claim traces to verified source
- No hypothesis-as-recommendation — mechanistic rationales ≠ clinical advice
- Certainty always explicit in every environment
- Replication status always noted (fully / partially / not yet replicated)
- Changelog "Motivated by:" required — every entry needs `@CiteKey`
- Hypothesis registry always updated — new hypothesis/speculation/prediction/open-question → `hypothesis-registry.typ`
- Scrape registry checked before scraping any URL
- Build must pass — do not declare completion if `nix build` fails
- Two consecutive clean rounds required for each review type in Phase 6
