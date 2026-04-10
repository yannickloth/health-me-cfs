---
name: integrate-topic
description: Full pipeline for integrating a new subject into the primary ME/CFS paper — research, development, creative brainstorming, paper integration, review-to-convergence, changelog, and commit.
argument-hint: <topic description>
---

# Integrate New Topic into the ME/CFS Paper

Full end-to-end pipeline: research a topic, develop content, integrate with citations, brainstorm creative extensions, develop the best ideas, review all changes to zero findings, update the changelog to reflect the final integrated state, then commit.

**Topic**: $ARGUMENTS

**Guard:** If `$ARGUMENTS` is empty, blank, or contains only the literal string `$ARGUMENTS`, ask the user for a topic description before proceeding.

---

## Phase 1 — Literature Research

**Agent:** `literature-integrator` | **Model:** sonnet | **Execution:** foreground (must write files — background agents cannot write)

Research the topic thoroughly:
- Search PubMed, Google Scholar, preprint servers — including explicit searches for null results and contradicting evidence (e.g., "[topic] negative results", "[topic] failed replication", "[topic] meta-analysis null")
- Target 5–15 papers (peer-reviewed preferred; include preprints if recent and relevant)
- For each paper: evaluate quality (sample size, design, journal, replication status)
- Download PDFs where available; save abstracts otherwise
- Create `Literature/` folder structure per the literature-integration workflow
- Add all new entries to `src/main/typst/mecfs/references.bib` with:
  - Standard BibTeX fields
  - `certainty = {0.XX}` (0.0–1.0 scale, see certainty table below)
  - `research_stream = {topic-slug}`
- Add annotated entries to `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ` using the established format:
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
- Check `registry/scrape-registry.md` before scraping any URL; update it after

**Certainty scale:**

| Factor         | High (0.7–1.0) | Medium (0.4–0.69) | Low (0.0–0.39) |
|----------------|---------------|-------------------|----------------|
| Sample size    | n > 100       | n = 20–100        | n < 20         |
| Publication    | Top journal   | Peer-reviewed     | Preprint       |
| Replication    | Independent   | Single study      | Contradicted   |
| Methodology    | Rigorous      | Adequate          | Flawed         |

**Guard:** If Phase 1 returns zero papers, stop and report: "Phase 1: No papers found for topic. Possible reasons: topic too niche, search terms need refinement, or literature is too sparse. Proceed to Phase 3 creative brainstorming only, or ask user for guidance on alternative search terms."

**Output:** Literature summary in `content-staging/` + annotated bib entries + references.bib updates.

**Report:** "Phase 1 complete: N papers found, M added to bib, annotated bib updated."

---

## Phase 2 — Content Development and Integration

**Agent:** main session (orchestrator) | **Model:** current

Read all Phase 1 outputs. For each finding, determine the best integration target:

**Chapter mapping heuristics:**
- Pathophysiology mechanisms → Part 2 (ch06–ch16)
- Treatment/interventions → Part 3 (ch14a–ch19)
- Biomarkers/diagnostics → Part 2 (ch20) or Part 4 (ch22–ch25)
- Clinical features/symptoms → Part 1 (ch02–ch05)
- Research questions/hypotheses → Part 4 or hypothesis registry
- Cross-disease comparisons → ch14d or ch13

**Environment selection (use the appropriate Typst environment):**
- Novel discovery, well-supported → `#achievement[Title][ ... ]`
- Hypothesis (certainty ≥ 0.45) → `#hypothesis-box[Title][ ... ]`
- Speculation (certainty < 0.45) → `#speculation[Title][ ... ]`
- Testable prediction → `#prediction[Title][ ... ]`
- Clinical finding → `#clinical-finding[Title][ ... ]`
- Safety/risk → `#practical-warning[Title][ ... ]` or `#warning-box[Title][ ... ]`
- Open research question → `#open-question[Title][ ... ]`
- Limitation → `#limitation[Title][ ... ]`
- Background prose with citation → regular paragraph with `@CitationKey`

**For every new hypothesis, speculation, prediction, or open-question (`#open-question`):**
- Also add an entry to `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`
- Format: consistent with existing entries in that file

**Integration rules:**
- Every mechanistic claim must have a `@CitationKey`
- Include explicit certainty assessment in each environment
- Include limitations for all findings
- Note replication status (fully replicated / partially replicated / not yet replicated)
- Never present a mechanistic hypothesis as a clinical recommendation (see memory)
- For treatment content: use `#warning-box` or `#limitation` to flag where rationale is still hypothetical
- Add cross-references (e.g., `@sec:related-section`, `@fig:diagram-label`) to related existing sections and figures where relevant — note: in Typst, `@` is used for both citations and cross-references; the difference is what the label resolves to in the document

**Additional rules for any content going into Part 3 (treatment chapters ch14a–ch19):**
- State expected time-to-response if known (e.g., "response typically observed at 4–8 weeks")
- State starting dose for severe/very-severe patients — often far below standard recommendations
- State monitoring parameters (what to track, how often)
- State stopping criteria (when to discontinue)
- Check for interactions with common ME/CFS co-prescriptions: fludrocortisone, midodrine, LDN, mestinon, beta-blockers, antihistamines
- If no human dosing data exist, state this explicitly and flag the content as research-stage only
- Cross-reference ch14a if the intervention has contraindications for bedbound patients

**Report:** "Phase 2 complete: N environments added across M chapters, hypothesis registry updated."

---

## Phase 3 — Creative Brainstorming

**Agent:** `scientific-insight-generator` | **Model:** opus

Synthesize across all Phase 1 findings and the existing paper content. Generate creative ideas across all categories:

1. **Novel hypotheses** — mechanistic connections not yet in the literature; combinations of existing findings that suggest new mechanisms
2. **Research directions** — what experiments would resolve the key uncertainties? What gaps exist?
3. **Drug/medication ideas** — repurposed drugs, new targets suggested by mechanism, dose/timing considerations
4. **Supplement/nutraceutical ideas** — micronutrients, botanicals, dietary approaches with mechanistic rationale
5. **Non-pharmacological interventions** — breathing techniques, pacing protocols, vagal stimulation, rehabilitation approaches, behavioural interventions with physiological rationale
6. **Other combinations and access considerations** — multi-component protocols, accessibility across severity levels, caregiver-implementable approaches
7. **Mathematical model extensions** — new variables, new equations, refined parameters, new predictions from existing ODE/DAG models
8. **Cross-disease bridges** — parallels with other conditions that suggest testable predictions for ME/CFS
9. **Diagnostic/biomarker ideas** — new ways to measure the mechanisms, stratify patients, or predict response

For each idea: state the mechanistic rationale, link to evidence, assign a preliminary certainty (0.0–1.0), and propose a falsifiable prediction.

**Output:** `content-staging/brainstorm-[topic-slug]-[date].md` with ranked ideas.

**Report:** "Phase 3 complete: N ideas generated (M hypotheses, K treatment ideas, J other)."

---

## Phase 4 — Develop and Integrate Best Ideas

**Agent:** main session (orchestrator) | **Model:** current

Read Phase 3 brainstorm output. For each idea rated worth integrating:

1. **Research it** — delegate to `literature-integrator` (sonnet) to find supporting/contradicting evidence; it will produce an integration guide in `content-staging/` and update `references.bib` and annotated bibliography
2. **Develop and integrate** — the main session reads the integration guide and writes the content directly into the target chapter files, following the same rules as Phase 2 (the main session bypasses `chapter-integrator` here to avoid the two-agent round-trip for ideas that were already fully scoped by Phase 3)
3. **Update references.bib and annotated bibliography** — `literature-integrator` handles this in step 1; verify entries were added before proceeding

Skip ideas where research returns no supporting evidence. Note the rationale for skipping.

**Threshold for integration:** Include an idea if it has at least one credible mechanistic anchor in the literature, even if direct ME/CFS evidence is sparse — but use `#speculation` environment and certainty < 0.35 for speculative bridges.

**Report:** "Phase 4 complete: N ideas developed and integrated, M skipped (reasons documented)."

---

## Phase 5 — Build Verification

**Agent:** `test-runner` | **Model:** haiku

Invoke `test-runner` to run the build and report errors. The `test-runner` agent is report-only — it does not fix errors. If the build fails: the **main session** reads the error report, applies fixes (missing `@` citations, broken labels, malformed Typst syntax), then re-invokes `test-runner` to verify.

**Maximum 5 fix-verify iterations.** If the build still fails after 5 attempts, stop, report the remaining errors verbatim, and ask the user for guidance before continuing.

**Report:** "Phase 5 complete: build PASS / FAIL (with error details if FAIL)."

---

## Phase 6 — Review to Convergence

Run three review passes in sequence on all `.typ` files modified during this integration session. Before starting, collect the changed files — include both tracked modifications and new untracked files:

```bash
# Modified tracked files:
git diff --name-only HEAD | grep '\.typ$'
# New untracked .typ files:
git ls-files --others --exclude-standard | grep '\.typ$'
```

Combine both lists and pass as space-separated paths to each review skill.

**6a. Convergence review** — `/review-convergence <changed-files>`
- Fix all findings
- Require 2 consecutive zero-finding rounds

**6b. Adversarial review** — `/review-adversarial <changed-files>`
- All 6 adversarial personas
- Fix all findings surfaced
- Re-run until 2 consecutive adversarial passes produce zero new findings

**6c. Typst review** — `/review-typst <changed-files>`
- Fix all findings
- Require 2 consecutive zero-finding rounds

Between each review pass: run `nix build` to confirm no regressions introduced by fixes.

**Convergence criterion:** The session is not complete until all three reviews have passed with zero findings in 2 consecutive rounds each.

**Report after each pass:** "Review 6a/6b/6c complete: N rounds, M findings fixed, final status: CONVERGED / MAX-ROUNDS-REACHED."

If max rounds reached with findings remaining: list the unresolved findings and ask the user how to proceed.

**Context window:** This pipeline is long. If context exceeds 35% before reviews complete, generate a continuation prompt per CLAUDE.md instructions and hand off to a fresh session rather than letting auto-compaction destroy accumulated context. Include in the continuation prompt: which phases completed, what files were modified, and which review passes remain.

---

## Phase 7 — Changelog Update

**Agent:** main session (orchestrator) | **Model:** haiku (mechanical text formatting)

Write the changelog entry **after** all reviews have converged, so it accurately describes the final integrated state of the paper (not the pre-review draft). The changelog records what ended up in the paper, not intermediate drafts.

Add an entry to `src/main/typst/mecfs/shared/changelog.typ` under the current version section (Version 6 as of 2026-04-10, or create a new version section if appropriate).

**Format** (match existing entries exactly):
```
- *[Topic Title]* ([Chapter X, new Section `sec:xxx`; Appendix H, new Section `sec:bib-xxx`; references.bib, N new entries; hypothesis registry, M new entries]): [2–4 sentence summary of what was added and why]. [Key mechanistic finding]. [Clinical implications if any]. _Motivated by:_ [Author Year @CiteKey] — [one-line reason why this source motivated the change].
```

Rules:
- Every entry **must** include a "Motivated by:" line with `@CitationKey` references
- Mention all modified files (chapters, appendix H sections, references count, hypothesis registry entries)
- Be specific about section labels created
- Describe *what* changed and *why* (new evidence, gap filled, hypothesis generated, etc.)
- The changelog entry itself must also pass review — include `changelog.typ` in the Phase 6 review file list, or if Phase 6 is already converged, run one quick `/review-typst` pass on `changelog.typ` alone before committing

**Report:** "Phase 7 complete: changelog updated."

---

## Phase 8 — Commit

Invoke `/commit` with scope hint `[topic-slug] integration` to stage and commit all changes made during this session as multiple meaningful, logically grouped commits.

Follow all rules from the `/commit` skill (conventional commits, no generated files, no PDFs except published artifacts).

**Report:** "Phase 8 complete: N commits created."

---

## Cost Model

| Phase | Agent | Model | Justification |
|-------|-------|-------|---------------|
| 1 | literature-integrator | sonnet | Research synthesis requires judgment |
| 2 | main session | current | Composition at zero marginal cost |
| 3 | scientific-insight-generator | opus | Creative cross-domain synthesis |
| 4 | literature-integrator (sub) | sonnet | Per-idea research |
| 4 | main session | current | Development and integration |
| 5 | test-runner | haiku | Build check is mechanical |
| 6a | review-convergence agents | sonnet | Consistency/logic checking |
| 6b | review-adversarial agents | opus | Adversarial personas need deep reasoning |
| 6c | review-typst agents | sonnet | Typst-specific review |
| 7 | main session | haiku | Mechanical changelog formatting |
| 8 | commit | current | Git operations |

---

## Invariants (Never Violate)

- **No fabrication:** Every claim integrated must trace to a verified source
- **No hypothesis-as-recommendation:** Mechanistic rationales are not clinical advice
- **Certainty always explicit:** Every environment must state certainty
- **Replication status always noted:** Fully / partially / not yet replicated
- **Changelog motivated-by required:** Every changelog entry needs `@CiteKey` references
- **Hypothesis registry always updated:** Any new hypothesis, speculation, prediction, or open-question must appear in `hypothesis-registry.typ`
- **Scrape registry checked:** Before scraping any URL, check `registry/scrape-registry.md`
- **Build must pass:** Do not declare completion if `nix build` fails
- **Two consecutive clean rounds required:** For each review type in Phase 6
