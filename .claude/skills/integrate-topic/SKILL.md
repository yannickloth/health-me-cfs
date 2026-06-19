---
name: integrate-topic
description: Full pipeline for evaluating and integrating a new subject into the primary ME/CFS paper — research, evidence synthesis, integration decision, development, creative brainstorming, tiered integration, review-to-convergence, quality assessment, changelog, and commit. Supports explicit rejection when evidence doesn't warrant integration.
argument-hint: <topic description>
---

# Evaluate and Integrate New Topic into the ME/CFS Paper

End-to-end: research → synthesize → **integration decision** → develop → brainstorm → triage → integrate (tiered) → falsifiability sweep → retroactive adaptation → cross-hypothesis compatibility → build → quality assessment → cross-chapter coherence → high-level synthesis → review convergence → changelog → commit.

**Null hypothesis:** The default outcome is *non-integration*. The burden of proof is on demonstrating that the topic has sufficient evidence and relevance to warrant inclusion. Integration must be earned by passing evidence gates — not assumed.

**Topic**: $ARGUMENTS

**Guard:** `$ARGUMENTS` empty/blank/literal → ask user for topic before proceeding.

---

## Git Checkpoint Protocol

Create a single WIP checkpoint commit before Phase 3 (the first phase that modifies chapter files): `git commit -m "WIP: [topic-slug] pre-integration"`. Create an additional checkpoint before Phase 6. These are squashed/rewritten in Phase 13. Purpose: rollback to any phase boundary if a later phase fails to converge. For finer-grained rollback, use `git reflog`.

**Rollback triggers:**
- Phase 11 hits max rounds with >5 unresolved findings → offer rollback to pre-Phase-6 checkpoint
- Phase 8 build fails after 5 iterations → offer rollback to pre-Phase-3 checkpoint
- Any phase produces results the user rejects → offer rollback to previous checkpoint

---

## Phase 0 — Plan Maintenance

**Agent:** main session | **Model:** current

Before starting any other phase:

1. **Locate existing plan:** check `ops/plans/` for a plan file that covers this topic (by topic slug, disease name, or thematic group). A topic may be a row in an existing plan's tracking table rather than needing its own file.
2. **If found:** read the relevant plan file. Mark the topic row status as `🔵 in progress` in the tracking table. Proceed to step 4.
3. **If not found:** 
   - Standalone `/integrate-topic` with no brainstorm origin → plan file optional; skip to step 4.
   - **Recursive invocation** (this topic was queued by a parent cycle's Phase 4 brainstorm or Gate A/B/C — identifiable because the user or continuation prompt will state the parent topic) → create `ops/plans/<topic-slug>-integration-plan.md` — lightweight, tracking-focused (the pipeline detail lives in this skill, not the plan):
     - **Purpose** — one sentence: what topic, why it matters for ME/CFS
     - **Target chapters** — bullet list
     - **Pre-identified hypotheses** — bullet list with preliminary certainty, if any already known
     - **Tracking table** — columns: `# | Idea / hypothesis | Tier | Certainty | Status | Notes`; one row per brainstorm idea, status `⬜ pending`
     - **Notes** — constraints, links to related plans, parent topic
   Then validate the plan file mechanically: all required fields present, no empty statuses. Tracking table must have at least one row — for recursive invocations, populate with the parent cycle's queued idea(s) as initial rows (status `⬜ pending`); for standalone invocations, the table may be empty at creation and populated after Phase 1. Do NOT run `/review-convergence` on a tracking document — it is a coordination artifact, not publishable content. Only proceed to Phase 1 when validation passes.
4. **After every subsequent phase**, update the tracking table row(s) and any notes in the plan:
   - Phase 1 → papers found, bib entries added, search log path
   - Phase 2 → synthesis verdict, evidence quality summary, integration decision (PROCEED / PARTIAL / REJECT / DEFER)
   - Phase 3 → environments added, chapters touched
   - Phase 4 → brainstorm file path, idea count
   - Phase 4a → subtree file path, N nodes written, root index updated
   - Phase 5 → ideas integrated (by tier); queued topics from Gates A/B with one-line rationale
   - Phase 5a → N hypotheses audited (K fully falsifiable, L weakly, M unfalsifiable fixed/flagged)
   - Phase 6 → M matches examined, N adapted (R reinforced, T contradicted, A ambiguous, S deferred)
   - Phase 7 → R reinforcement pairs, F feed-in pairs, C conflict pairs, I independents; J certainty bumps, K reductions, L tensions flagged
   - Phase 8 → build status
   - Phase 9 → quality metrics summary, quality flags
    - Phase 10 → cross-chapter coherence status
    - Phase 10a → synthesis environment added (label, chapter), environments condensed
    - Phase 11 → review convergence status per pass
   - Phase 12 → changelog entry summary
   - Phase 13 → row status `✅ done`; Notes: integration guide path, chapters updated, commit hash

**Recursive application:** When a queued topic from Gates A/B/C starts its own `/integrate-topic` cycle, it must execute its own Phase 0 in full — write its own plan (or locate an existing one), validate it mechanically (same rule as step 3 above — no `/review-convergence` on tracking documents), then proceed. This applies at every depth of recursion. Also check `ops/plans/hypotheses-trees/hypotheses-trees.md`: if the parent topic's subtree file already has a row for this topic as a child node, read that node's usefulness scores and pre-identified certainty as starting context for Phase 1.

**Queue persistence:** Maintain `ops/queued-topics.md` — a persistent file listing all queued `/integrate-topic` cycles with: topic slug, parent topic, one-line rationale, gate source (A/B/C/scope-escalation), date queued. Update this file whenever a topic is queued or started. Context rotations must read this file to recover the queue.

**Report:** "Phase 0: plan located at `ops/plans/<file>` / created at `ops/plans/<file>` and validated mechanically."

---

## Phase 1 — Literature Research

**Agent:** `literature-integrator` | **Model:** sonnet | **Execution:** foreground (must write files)

- Search PubMed, Google Scholar, preprint servers — include null results, contradicting evidence, and competing mechanisms:
  - Null/negative: "[topic] negative results", "[topic] failed replication", "[topic] meta-analysis null"
  - Competing: "[alternative mechanism] explains [phenomenon]", "[topic] vs [other mechanism]"
  - **Harm (MANDATORY for treatment topics):** "[drug/intervention] adverse effects", "[drug/intervention] contraindications", "[drug/intervention] ME/CFS safety"
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

### Search Log (MANDATORY)

Write `content-staging/search-log-<topic-slug>-<date>.md`:

```markdown
# Search Log: <Topic>

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|

## Inclusion Criteria
- <criteria 1>
- <criteria 2>

## Exclusion Criteria
- <criteria 1>
- <criteria 2>

## Flow
- Total hits: N
- After deduplication: N
- After title/abstract screen: N
- After full-text review: N
- Final included: N
- Excluded with reasons: (table or list)

## Search Terms by Database
- PubMed MeSH: ...
- Scholar exact phrases: ...
- Preprint servers: ...
```

**Purpose:** Reproducibility — a second run with the same queries should find the same papers. Selection bias is visible via the exclusion log.

**Certainty scale** (ordinal heuristic — produces coarse bands, not precise values; treat any certainty value as ±0.10 approximate):

| Factor | High (0.7–1.0) | Medium (0.4–0.69) | Low (0.0–0.39) |
|--------|---------------|-------------------|----------------|
| Sample size | n > 100 | n = 20–100 | n < 20 |
| Publication | Top journal | Peer-reviewed | Preprint |
| Replication | Independent | Single study | Contradicted |
| Methodology | Rigorous | Adequate | Flawed |

**Limitation:** This scale measures *research quality*, not clinical significance, effect size, or patient relevance. High-certainty animal studies ≠ clinical evidence. The certainty value gates procedural decisions in this pipeline; it does not represent clinical confidence.

**Guard — Zero papers:** Zero papers found → stop; report: "Phase 1: No papers found. Reasons: too niche / search terms need refinement / literature sparse." Ask user: expand search terms, or abandon topic.

**Guard — Uniformly null evidence:** If all included papers report null results, failed replications, or conclude "no relationship to ME/CFS" → report: "Phase 1: N papers found, all null/negative. Evidence does not support this mechanism." Options: (a) integrate as `#limitation` or `#open-question` documenting the null evidence, (b) abandon topic. Do NOT proceed to brainstorming about a mechanism the evidence rejects.

**Output:** Literature summary in `content-staging/` + annotated bib entries + references.bib updates + search log.
**Report:** "Phase 1 complete: N papers found, M added to bib, annotated bib updated, search log at `content-staging/search-log-<slug>-<date>.md`."

---

## Phase 2 — Evidence Synthesis and Integration Decision

**Agent:** main session | **Model:** current

**Purpose:** Validate Phase 1 outputs. Decide whether to integrate, reject, or partially integrate. Prevent incoherent narratives from propagating into the paper.

Read all Phase 1 outputs. Produce a synthesis assessment:

### Synthesis Steps

1. **Evidence landscape summary:**
   - What's strong (certainty ≥ 0.60, replicated, large n)?
   - What's weak (certainty < 0.40, single study, small n)?
   - What's missing (expected evidence that wasn't found)?
   - What's null (papers that found no effect)?

2. **Internal contradiction detection:**
   - Do any included papers contradict each other?
   - If yes: document each contradiction (Paper A claims X, Paper B claims Y)
   - Determine: is the contradiction resolvable (methodological differences, different populations) or fundamental (same conditions, opposite results)?
   - **Gate:** If fundamental contradiction exists → decide framing before Phase 3 writes anything. Options: present both sides as `#open-question`, weight toward higher-certainty paper, or flag for user decision.
   - **Band rule:** If the certainty difference between contradicting papers is ≤ 0.15 (within the ±0.10 measurement uncertainty), treat as indistinguishable — default to presenting both sides as `#open-question`, not weighting toward either.

3. **Evidence summary** (replaces "narrative arc" — the summary describes the evidence; it does not prescribe how to frame integration):
   - What does this evidence establish? (one paragraph)
   - What is the strongest mechanistic claim supportable?
   - What must remain speculative?
   - What does the evidence *not* support (null findings, failed mechanisms)?
   - Which chapters will be the primary integration targets?

4. **Clinical relevance assessment:**
   - Does this topic have direct implications for patient care?
   - If treatment-related: is there human dosing data? Effect size data? Safety data?
   - Is the evidence preclinical only, general-population only, or ME/CFS-specific?
   - **Patient subset applicability:** Which severity levels does this apply to (mild / moderate / severe / very severe)? If not specified in the evidence → state explicitly: "severity applicability unknown."
   - Summary: "Clinical relevance: [HIGH — actionable for clinicians / MEDIUM — mechanistic context for treatment decisions / LOW — research-only / NONE — purely theoretical]. Subset: [mild/moderate/severe/very severe/all/unknown]."

5. **Integration decision** (MANDATORY — explicit outcome). **Evaluate in order; first matching row wins:**

   | Decision | Criteria | Action |
   |----------|----------|--------|
   | **REJECT** | All evidence is null, OR (0 papers with certainty ≥ 0.40 AND no paper with certainty ≥ 0.60), OR evidence actively contradicts the topic's premise | Stop. Write a `#limitation` or `#open-question` in the appropriate chapter documenting why the evidence does not support this mechanism. Update plan: status `🚫 rejected`. If a subtree file exists for this topic, update its status. If this is a recursive invocation, update the parent topic's subtree node status from `⏭️` to `🚫`. Then skip to Phase 8 (build verification) → Phase 12 (changelog — document the rejection) → Phase 13 (commit). Phases 3–7, 9–11 are skipped. Report to user. |
   | **DEFER** | Insufficient evidence to decide — literature sparse but not null | Stop. Update plan: status `↩️ deferred`. If a subtree file exists for this topic, update its status. If this is a recursive invocation, update the parent topic's subtree node status from `⏭️` to `↩️`. No chapter modifications — skip to Phase 13 (commit metadata changes only). Report to user. |
   | **PARTIAL** | Some evidence supports integration but >50% of papers have certainty <0.40 (even if one paper has certainty ≥ 0.60), OR evidence is mixed (some supporting, some null) | Proceed with `#speculation`/`#open-question` environments only — this cap applies across ALL downstream phases (3, 5, 7): no `#hypothesis-box` or `#fhypothesis` environments even if individual idea certainty ≥ 0.45 or if a Phase 7 bump crosses 0.45. Brainstorm limited to categories 1–2 (hypotheses, research directions) and 10–12 (critical categories). Categories 3–9 (drug/supplement/intervention ideas) are deferred because weak evidence for the mechanism makes therapeutic brainstorming premature — ideas without a validated target risk misleading readers. Flag as `WEAK-EVIDENCE` preemptively. |
   | **PROCEED** | ≥2 papers with certainty ≥ 0.40, OR ≥1 paper with certainty ≥ 0.60; evidence is not uniformly null; AND ≤50% of papers have certainty <0.40 | Continue to Phase 3 |

   **Guard:** PARTIAL decision → this will trigger `WEAK-EVIDENCE` flag in Phase 9. Phase 9's trigger condition is: "Phase 2 decision was PARTIAL, OR >50% of papers have certainty <0.40" — either condition alone fires the flag. This is by design — the sufficiency gate and quality flag are aligned.

**Output:** `content-staging/synthesis-<topic-slug>-<date>.md`
**Report:** "Phase 2 complete: N papers strong, M weak, K null, J missing. Decision: [PROCEED / PARTIAL / REJECT / DEFER]. Clinical relevance: [HIGH/MEDIUM/LOW/NONE]. Contradictions: [none / N pairs]."

---

## Phase 3 — Content Development and Integration

**Agent:** main session | **Model:** current

Read Phase 2 synthesis. Use the evidence summary and contradiction framing to guide integration — do not impose a predetermined narrative; let the evidence structure determine emphasis. Per finding, determine integration target:

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
| Hypothesis with explicit falsifiability fields | `#fhypothesis(title: [...], falsifiability: "...", justification: "...")[ ... ]` |
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
- **Contradiction framing:** If Phase 2 identified contradictions, integrate both sides using the framing decided in Phase 2 (open-question, weighted, or user-decided)
- **Falsifiability:** Every `#hypothesis-box`, `#fhypothesis`, and `#speculation` written in Phase 3 must include a falsifiable prediction, same as Phase 5's inline requirement. If unfalsifiable: retain the environment type and certainty; add explicit note "Critique: structurally unfalsifiable." Only reclassify to `#open-question` if the claim is also poorly evidenced (certainty < 0.30). This rule is consistent with Phase 5a's reclassification constraint.
- **Clinical labelling:** Every treatment-related environment must state whether the evidence is preclinical, general-population, or ME/CFS-specific. If `#clinical-finding` is used, state the evidence type: case report, observational study, RCT, meta-analysis, or expert opinion.

**Additional rules for Part 3 (ch14a–ch19):**
- State expected time-to-response if known
- State starting dose for severe/very-severe patients (often far below standard)
- State monitoring parameters (what to track, how often); if no validated monitoring protocol exists → state explicitly: "no validated monitoring protocol; general clinical monitoring recommended"
- State stopping criteria
- Check interactions with common ME/CFS co-prescriptions: fludrocortisone, midodrine, LDN, mestinon, beta-blockers, antihistamines
- No human dosing data → state explicitly; flag as research-stage only
- Contraindications for bedbound patients → cross-reference ch14a
- Pregnancy/lactation safety: state available data or "no pregnancy/lactation safety data available"
- State severity applicability (mild / moderate / severe / very severe); if not specified in the evidence → state: "severity applicability unknown"

**Report:** "Phase 3 complete: N environments added across M chapters, hypothesis registry updated."

---

## Phase 4 — Creative Brainstorming

**Agent:** `scientific-insight-generator` | **Model:** opus

Synthesize Phase 1 findings + Phase 2 synthesis + existing paper. Generate ideas across all categories. **If Phase 2 decision was PARTIAL:** limit brainstorm to categories 1–2 and 10–12 only; skip categories 3–9 (therapeutic brainstorming premature on weak evidence base).

**Constructive categories:**
1. Novel hypotheses — mechanistic connections not yet in literature; new mechanisms from existing findings
2. Research directions — experiments that resolve key uncertainties; gaps
3. Drug/medication ideas — repurposed drugs, new targets, dose/timing
4. Supplement/nutraceutical ideas — micronutrients, botanicals, dietary; mechanistic rationale
5. Non-pharmacological interventions — breathing, pacing, vagal stimulation, rehabilitation; physiological rationale
6. Combinations + access — multi-component protocols, severity-level accessibility, caregiver-implementable
7. Mathematical model extensions — new variables, equations, parameters, predictions from ODE/DAG models
8. Cross-disease bridges — parallels suggesting testable ME/CFS predictions
9. Diagnostic/biomarker ideas — new ways to measure mechanisms, stratify patients, predict response

**Critical categories** (MANDATORY — brainstorm must include these):
10. Reasons this mechanism may NOT be relevant to ME/CFS — what evidence would be needed to disprove, what alternative mechanisms explain the same observations better
11. Null hypothesis assessment — what would it mean if this mechanism has no role? What existing paper claims would need revision?
12. Evidence quality concerns — limitations not captured by certainty scores (confounders, selection bias, measurement validity, generalizability gaps)

Per idea: mechanistic rationale + evidence link + preliminary certainty (0.0–1.0) + falsifiable prediction.

**Brainstorm certainty is provisional:** Phase 4 certainties are the generator's self-assessment and MUST be independently reassessed in Phase 5 before integration decisions. The Phase 5 triage uses the reassessed certainty, not the Phase 4 value.

**Output:** `content-staging/brainstorm-[topic-slug]-[date].md` with ranked ideas. Every idea must carry `origin: brainstorm` tag — this tag persists into chapter text to distinguish brainstorm-generated content from literature-derived content.

**Plan update (mandatory after brainstorm):** After the brainstorm file is written, the main session must locate or create `ops/plans/<topic-slug>-integration-plan.md` and add every brainstorm idea as a row in the tracking table (`# | Idea / hypothesis | Tier | Certainty | Status | Notes`), status `⬜ pending`. Ideas integrated inline in Phase 5 are included — their status will be updated as they complete. Validate mechanically (all rows have status, no missing fields).

**Report:** "Phase 4 complete: N ideas generated (M hypotheses, K treatment ideas, J other); plan updated with N rows."

---

## Phase 4a — Hypothesis Tree Update

**Agent:** main session | **Model:** current (mechanical write)

After Phase 4 brainstorm file is written and the Phase 0 plan table is populated, update the hypothesis tree:

1. **Locate subtree file:** `ops/plans/hypotheses-trees/subtrees/<topic-slug>.md`
   - If the file does not exist: create it (see format below).
   - If it exists: append new rows; do not overwrite existing rows.

2. **Update root index:** add or update a row in the `Subtree index` table of `ops/plans/hypotheses-trees/hypotheses-trees.md`:
   ```
   | <topic-slug> | subtrees/<topic-slug>.md | <YYYY-MM-DD> | <N ideas> | 0 | ⬜ pending |
   ```

3. **Assign usefulness scores** for every idea row using the legend below. Scores are 0–5 integers; assign before integration work starts; revise in Phase 5 if integration reveals a different impact.

**Usefulness scoring heuristics:**

| Dimension | Score 5 | Score 3 | Score 1 | Score 0 |
|-----------|---------|---------|---------|---------|
| `mech` | Core causal pathway, directly advances pathophysiology model | Adds supporting mechanism | Tangential connection | No mechanistic connection |
| `tx` | High-confidence actionable therapeutic target | Plausible target, needs trials | Speculative, no direct route | No therapeutic relevance |
| `expl` | Explains ≥3 unexplained ME/CFS features | Explains one major feature | Minor explanatory addition | Does not explain any ME/CFS feature |
| `math` | New ODE variable / DAG node / parameter with quantifiable value | Qualitative model extension | Loose analogy to model | No model relevance |
| `dx` | Validated or near-validated biomarker | Measurable but unvalidated | Theoretical only | No diagnostic relevance |

Intermediate scores (2, 4) are interpolations between the defined anchors.

**Subtree file format:**

```markdown
# Hypothesis Subtree: <Topic Name>

**Origin:** `/integrate-topic <topic description>`
**Brainstorm file:** `content-staging/brainstorm-<topic-slug>-<date>.md`
**Plan file:** `ops/plans/<topic-slug>-integration-plan.md`
**Date:** <YYYY-MM-DD>
**Parent topic:** <parent slug or "root">
**Child subtrees:** (none yet)

## Nodes

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
| (rows added here) |
```

**Per-row fields:**
- `ID` — brainstorm ID (e.g. `1.1`)
- `Title` — ≤8 words
- `Env` — `hypothesis` / `speculation` / `open-question` / `proposal`
- `Cert` — 0.00–1.00 or `n/a`
- `mech` / `tx` / `expl` / `math` / `dx` — 0–5 usefulness scores
- `Status` — `⬜` / `🔵` / `✅` / `⏭️` / `🚫` / `↩️`
- `Children` — slug of child subtree file if this node spawns its own `/integrate-topic`, else `—`

**When a node spawns a child `/integrate-topic` cycle:**
- Set the node's `Children` field to `subtrees/<child-slug>.md`
- Set node `Status` to `⏭️` (queued) until child cycle completes, then `✅`
- Add `<child-slug>` to the `Child subtrees:` header of the parent subtree file

**After Phase 5a**, update node statuses in the subtree file to reflect integrated / skipped / parked outcomes.

**Report:** "Phase 4a complete: subtree `subtrees/<topic-slug>.md` written/updated with N nodes; root index updated."

---

## Phase 5 — Tiered Integration of Brainstorm Ideas

**Agent:** main session | **Model:** current

### Certainty Reassessment (MANDATORY before triage)

Phase 4 certainties are the brainstorm generator's self-assessment. Before triage, independently reassess each idea's certainty AND usefulness scores:
- Does the idea have direct literature support (cited in Phase 1)?
- Is the mechanistic link to ME/CFS direct or analogical?
- Adjust certainty down if Phase 4 value exceeds what the evidence supports.
- Verify usefulness scores: does the idea genuinely merit the Phase 4a score, or was the generator over-enthusiastic? Adjust if needed.
- Record: "Phase 4 cert: 0.XX → reassessed cert: 0.YY (reason). Usefulness: [unchanged / adjusted from X to Y (reason)]"

### Triage Protocol

Read Phase 4 output. Classify every idea into a tier using **reassessed** usefulness scores and **reassessed** certainty:

| Tier | Criteria | Integration action |
|------|----------|-------------------|
| **Tier 1** | Reassessed certainty ≥ 0.45 OR any usefulness score ≥ 3 | Full integration: sub-research via `literature-integrator` → develop → write into chapter |
| **Tier 2** | Reassessed certainty 0.20–0.44 AND max usefulness score ≤ 2 | Integration as `#speculation` or `#open-question` — no sub-research required |
| **Tier 3** | Reassessed certainty < 0.20 AND all usefulness scores ≤ 2 | Record in hypothesis tree only; do NOT add to chapter text. Available for future cycles. |

**Tier coverage:** Tier 1's OR-condition captures any idea with a usefulness score ≥ 3 regardless of certainty. Tiers 2 and 3 partition the remaining ideas (max usefulness ≤ 2) by certainty. Every idea maps to exactly one tier.

**Tier 2 promotion:** If sub-research is likely to elevate a Tier 2 idea (e.g., the mechanism has a known literature base but wasn't covered in Phase 1), flag it: "Tier 2 — candidate for promotion if sub-research confirms." Pause and ask the user: "Tier 2 idea (`<idea>`) may qualify for Tier 1 with sub-research. Run sub-research to reassess, or keep as Tier 2?" Wait for answer before continuing.

**Critical categories bypass triage:** Ideas from categories 10–12 (negative hypotheses, null-hypothesis assessments, evidence quality concerns) are NOT subject to usefulness/certainty triage. They are integrated directly as `#limitation`, `#open-question`, or inline caveats in the appropriate chapter section, regardless of tier. These represent epistemic balance — the pipeline must integrate its own self-critique, not just its constructive output.

**Every integrated idea MUST carry an explicit certainty value** in the environment body. This is non-negotiable — certainty makes speculative ideas honest rather than misleading.

Per idea, map reassessed certainty → environment:

| Certainty | Evidence type | Environment | Certainty in body |
|-----------|---------------|-------------|-------------------|
| ≥ 0.45 | Direct ME/CFS data | `#hypothesis-box` (or `#fhypothesis` if falsifiability fields are used) | `(Certainty: 0.XX)` |
| 0.20–0.44 | Indirect / cross-disease / mechanistic inference | `#speculation` | `(Certainty: 0.XX)` |
| < 0.20 | Highly speculative, analogy only | `#speculation` | `(Certainty: 0.XX)` |
| No mechanistic anchor | Pure research question, tool proposal | `#open-question` | no certainty needed |

**Certainty anchoring rule:** Use the **reassessed** certainty value (not Phase 4's provisional value) as the starting point. State the reason for the certainty level in one sentence (e.g., "TRPM3 assay validated; combination untested").

### Inline Falsifiability Requirement

**Before writing any hypothesis or speculation into a chapter file**, draft the falsifiable prediction first. If you cannot write a specific, testable prediction:
- Classify as `#speculation` with `falsifiability: [none]` and note: "Critique: structurally unfalsifiable."
- Do NOT write as `#hypothesis` and downgrade later.

This prevents rework in Phase 5a.

### Brainstorm Origin Labelling

Every idea integrated from the brainstorm must carry `(Origin: brainstorm)` in the environment body, persisting into the published chapter text. This distinguishes AI-generated speculative content from literature-derived findings. Readers can see provenance.

### Context Chunking

**Maximum ideas per session:** 8–10 ideas. If Phase 4 produced more, split Phase 5 into batched sessions with continuation prompts. Use the Phase 4a hypothesis tree as the coordination artifact between sessions — each session picks up where the last left off by reading tree node statuses. Sessions must check which `.typ` files other sessions modified to avoid conflicting edits.

**Scope-escalation rule — domain-neutral:** Any candidate idea that constitutes a *distinct ME/CFS-relevant topic* with its own separable literature base — regardless of domain (immune, neurological, metabolic, endocrine, cardiovascular, etc.) — should be evaluated for escalation to its own `/integrate-topic` cycle. The decision is based on scope and literature independence, not on topic domain. Pause and ask the user: "This idea appears to be a standalone topic (`<idea>`). Integrate inline or queue as a new `/integrate-topic` cycle?" Wait for answer before continuing.

**Queue discipline — finish before starting:** All queued topics (from Gates A, B, C and the scope-escalation rule) are deferred until the *current* `/integrate-topic` cycle reaches Phase 13 commit. Never start a new `/integrate-topic` cycle mid-pipeline. After Phase 13 commit, present the full queue (from `ops/queued-topics.md`) to the user with a one-line rationale per topic, and ask: "Ready to start the next topic (`<topic>`)? Or reorder/skip?" Wait for user confirmation before starting each new cycle.

**Gate A — Standalone topic escalation:** Before integrating a Tier 1 idea inline, check: does this idea have its own separable literature base (≥5 papers not already covered by the parent topic's Phase 1)? If yes → it's standalone. Ask user: "Integrate inline as Phase 5 or queue as a new `/integrate-topic` cycle?" Operational threshold: ≥5 separable papers = standalone; <5 = extension. Wait for answer before continuing. If extension → integrate inline as below.

1. **Research** (Tier 1 only) — delegate to `literature-integrator` (sonnet): find supporting/contradicting evidence; produces integration guide in `content-staging/`; updates `references.bib` + annotated bib. Before launching, check whether Phase 1 papers already address this idea — if so, use existing evidence and skip redundant sub-research. **If the idea is treatment-oriented** (drug, supplement, intervention), the sub-research MUST include harm search terms (adverse effects, contraindications) even if the parent topic's Phase 1 was non-treatment.
2. **Develop + integrate** — main session reads guide; writes directly into target chapter files per Phase 3 rules
3. **Verify** — confirm `literature-integrator` added bib entries before proceeding

**Gate B — Sub-research surfaces new topic or contradiction:** If a Tier 1 `literature-integrator` sub-run surfaces papers pointing to a distinct ME/CFS-relevant topic not covered by the parent topic or any Phase 4 idea → pause and ask the user: "Sub-research found a potentially distinct topic (`<new-topic>`). Integrate inline, queue as `/integrate-topic <new-topic>`, or ignore?" If sub-research finds strong contradictory evidence that substantially undermines the idea's premise → pause and ask: "Sub-research found contradictory evidence for idea (`<idea>`). Downgrade to Tier 2/3, add as `#limitation`, or abandon?" Wait for answer before continuing. Add any queued topic to `ops/queued-topics.md`.

**Integration threshold (Tiers 1–2):** ANY mechanistic connection to ME/CFS is sufficient. Cross-disease parallels → appropriate chapter (ch13, ch14d). Non-pharmacological interventions → ch17. Research tools → ch20 or ch25b. Long-shot drug ideas → ch18 or ch06 as open questions.

**Report:** "Phase 5 complete: N ideas triaged (T1: X integrated, T2: Y integrated, T3: Z tree-only), P queued as child topics."

Subtree status updates are deferred to after Phase 5a (falsifiability sweep may reclassify environments). See Phase 5a for the update rules.

---

### Phase 5a — Falsifiability Sweep (Verification)

**Agent:** `falsifiability-auditor` | **Model:** sonnet | **Execution:** foreground (report → main session fixes)

**Run after all Phase 5 integration is complete.** This is a verification sweep — most falsifiability work should have been done inline during Phases 3 and 5. Scope: all `.typ` files modified/created in Phases 3 and 5 (Phase 3 hypotheses also need independent verification — the inline check in Phase 3 is a self-check with no agent-based verification).

1. Invoke `falsifiability-auditor` on the changed files (use `git diff --name-only HEAD | grep '\.typ$'` + `git ls-files --others --exclude-standard | grep '\.typ$'`).
2. **Gate:** Every `#hypothesis-box()`, `#fhypothesis()`, `#speculation()`, and `#prediction()` that was newly integrated must have at least one falsifiable prediction.
3. Fix any that slipped through inline checking:
   - Criterion: "weakly" or missing falsifiability → add a specific, testable prediction (what observation would refute the hypothesis)
   - If a hypothesis is structurally unfalsifiable (accommodates any outcome) → add explicit note: "Critique: structurally unfalsifiable." Retain current environment type and certainty — unfalsifiability is a *methodological* property, not an *evidential* one. A well-evidenced but vague claim stays at its evidence-based certainty with the unfalsifiability flag. Only reclassify to `#open-question` if the claim is also poorly evidenced.
   - If unsure how to falsify → pause and ask user before proceeding.

**Gate:** ALL new hypotheses/speculations must be falsifiable or explicitly flagged as structurally unfalsifiable before Phase 6 begins. No hypothesis ships to review without a falsifiability check.

**Report:** "Phase 5a complete: N hypotheses audited across Phases 3 and 5 (K fully falsifiable, L weakly, M unfalsifiable fixed/flagged). Inline coverage: X% already handled during integration."

**Subtree status update (after Phase 5a):** Now update node statuses in `ops/plans/hypotheses-trees/subtrees/<topic-slug>.md`:
- Integrated (Tier 1–2) → `✅`
- Tree-only (Tier 3) → `↩️`; set `Children` = `—`; set `Status` note in plan file tracking table: "Tier 3 — available for future cycles"
- Skipped (no relevance) → `🚫`; set `Children` = `—`; set `Status` note in plan file tracking table: "skipped: [reason]"
- Queued for child `/integrate-topic` → `⏭️`; set `Children` = `subtrees/<child-slug>.md`
- Reclassified during Phase 5 (integration-driven, e.g., Tier 2 → `#speculation` when Phase 4a said `hypothesis`) or Phase 5a (falsifiability-driven) → update `Env` field to match actual chapter environment
- If Phase 5 reassessment adjusted any usefulness scores → update `mech/tx/expl/math/dx` columns in the subtree file to match reassessed values
- If Phase 5 reassessment adjusted certainty → update `Cert` column in the subtree file to match reassessed value
Update integrated count in root `hypotheses-trees.md` subtree index row.

---

## Phase 6 — Retrospective Adaptation (Evidence → Claim)

**Agent:** main session | **Model:** current

**Purpose:** New evidence doesn't only add new content — it changes what the paper already says. Phase 6 sweeps pre-existing content for claims that overlap with the new *evidence* and adapts them: reinforced if aligned, corrected if contradicted, left unchanged if the new evidence is too weak/indirect to justify any change. **Scope: evidence→claim only.** Hypothesis→hypothesis relationships are handled in Phase 7.

### Evidence Quality Floor

**Before any adaptation**, check the Phase 1 certainty of each paper driving the new evidence:

| Incoming certainty | Permitted action |
|--------------------|-----------------|
| ≥ 0.70 | Full adaptation including +0.10 bumps per the Certainty Adjustment Table; at most one adjustment per claim per paper (a single paper may drive adjustments to multiple claims) |
| 0.60–0.69 | Full adaptation; at most one +0.05 bump per paper; **no** +0.10 bumps |
| 0.40–0.59 | Citation insertions only (both supporting AND contradicting); **no** certainty bumps; contradiction → add inline caveat with citation (visible in paper, not just in report) |
| < 0.40 | Overlap noted in report only; **do not edit** pre-existing content. Record as "overlap deferred — incoming certainty too low." |

**Safety override (explicit exception to Visibility Symmetry invariant):** The <0.40 "do not edit" rule does NOT apply to safety-critical evidence (adverse effects, contraindications, drug interaction warnings) OR efficacy-refuting evidence (evidence that a treatment is ineffective). Both harm signals and inefficacy signals must be annotated as caveats in the paper (e.g., "⚠ Preliminary evidence [certainty 0.30] suggests [adverse effect X / no efficacy for Y] — @CiteKey"). This is a deliberate precautionary exception to the general visibility symmetry: safety-relevant information — whether about harm or futility — is too important to suppress on quality grounds. Positive findings at <0.40 remain deferred; negative/safety findings at <0.40 are surfaced.

**Visibility symmetry:** At every tier, confirming and contradicting evidence must receive equal visibility in the published paper. If a supporting citation is added to chapter text, a contradicting citation at the same certainty tier must also be added to chapter text (not relegated to a transient report).

**Only** the core paper(s) with certainty ≥ 0.60 drive certainty adjustments. Supporting papers (certainty < 0.60) may be cited but do not change certainties.

### Search Protocol

1. **Mandatory synonym expansion:** Before searching, generate 3–5 semantic variants per mechanism from Phase 1–2 (medical synonyms, abbreviations, pathway names, gene/protein names). Store the synonym map in `content-staging/synonym-map-<topic-slug>.md` for reproducibility.
2. **Glossary/index check:** Read the paper's glossary or index (if one exists) to find project-specific terminology for each concept.
3. Generate search terms from Phase 1–3: key mechanism names, drug names, symptom domains, author last names + all synonym variants.
4. `grep` across all `.typ` files for each term (original + synonyms simultaneously).
5. For each match: read ≥ 10 lines of context; determine if the pre-existing claim engages with the same mechanism.
6. **Coverage check:** report total matches examined vs. total matches found. Report synonym map used.

**Budget:** If > 30 candidate matches → prioritize in this order: hypothesis environments > treatment recommendations > biomarker discussions > drug warnings > phenotype descriptions > cross-disease comparisons > research gap statements. Stop at 30 (context window constraint — each match requires ≥10 lines of reading); record remaining as "sweep truncated — N matches unexamined." Phase 11 review agents may independently catch contradictions in truncated matches — truncation is not permanent exclusion.

### Adaptation Rules

For each overlap, classify the relationship and apply **one** primary action. Categories are exhaustive and mutually exclusive; if evidence falls on a boundary, default to the more conservative category (ambiguous > reinforcement, no action > ambiguous). **Classification errors toward false contradiction are safer than toward false reinforcement.**

#### 1. Reinforcement (evidence aligns with pre-existing claim)

| Action | When |
|--------|------|
| Add cite `@NewCiteKey` | New evidence supports an existing mechanistic claim |
| Raise certainty +0.05 (only if incoming certainty ≥ 0.60; see Certainty Adjustment Table below for +0.10 conditions) | External validation strengthens a pre-existing hypothesis. State reason: "0.XX→0.YY: externally validated by [source]" |
| Add cross-ref `@sec:new-section` | New section provides deeper treatment of the same mechanism |
| Update "no data exist in ME/CFS" → "no ME/CFS-specific data; mechanism validated in general population by [source]" | New evidence provides relevant non-ME/CFS data. Never say "partially validated" without the qualifier |
| Add treatment-mechanism cite, labelled as mechanistic | New evidence supports an intervention's mechanism. Format: `@CiteKey` preceded by "mechanistic rationale:" to distinguish from clinical outcome evidence |

**Guard — "Never silently inflate":** A reinforcement action that changes certainty OR crosses a threshold (speculation 0.45 → hypothesis) must document: (a) whether the new evidence is ME/CFS-specific or general-population, (b) whether it's mechanistic or clinical, (c) the incoming certainty of the paper driving the bump.

**Guard — "Never silently discount":** A contradiction action that changes certainty must document: (a) whether the new evidence is ME/CFS-specific or general-population, (b) whether it's mechanistic or clinical, (c) the incoming certainty of the paper driving the reduction. Symmetric with the inflation guard.

**Escalation:** If reinforcement pushes certainty across a threshold (≥ 0.45, ≥ 0.70), consider: should this claim be promoted to a dedicated section, or should the environment be reclassified (`#speculation` → `#hypothesis`)?

#### 2. Contradiction (evidence conflicts with pre-existing claim)

| Action | When |
|--------|------|
| Add `#limitation` or inline caveat with `@NewCiteKey` | New evidence weakens a prediction or suggests a different mechanism |
| Lower certainty (see table below) | External contradiction weakens a hypothesis. Only if incoming certainty ≥ 0.60 |
| Add competing-mechanism note | New evidence supports an alternative explanation |
| Flag as unresolved tension | Both pre-existing claim and new evidence have comparable-quality supporting data (both ≥ 0.60 certainty, similar n, similar journal tier) |
| Queue for dedicated `/integrate-topic` | Contradiction is a substantive topic needing its own literature review |
| **Remove or rewrite the claim** (with documented rationale) | **Direct refutation by superior evidence** — new study is larger, better-designed, and published in a higher-tier journal. Delete the refuted claim; do not merely annotate. Leave a one-line note: "[Claim] removed — refuted by [source, n=X, journal]." |
| **Never silently delete** — all deletions outside the removal row above must be recorded with file, line, and rationale | Deletions not covered by the removal row above (e.g., trimming redundant text, removing outdated data) |

**Guard — Certainty reduction:** If evidence warrants reducing a claim's certainty below 0.10 in a single cycle, flag for human review before applying — but do not cap the reduction. The evidence determines the certainty, not an artificial floor.

**Escalation:** If a contradiction reveals a gap large enough that the pre-existing section needs substantial rewriting (not just annotation), or if the contradiction itself is a distinct topic with its own literature base, queue as `/integrate-topic`. If the removal row (above) deletes a claim that other sections depend on, those dependent sections must be updated or flagged as needing review.

#### 3. Ambiguous (evidence partially aligns, partially diverges)

| Action | When |
|--------|------|
| Add qualified cite with both the supporting AND diverging finding | Evidence supports one aspect but contradicts another |
| Add `#open-question` | Evidence changes the question but doesn't resolve it |
| Split the pre-existing claim into two | New evidence shows it conflates two separate mechanisms |

#### 4. No Action (overlap exists, but adaptation not warranted)

| Action | When |
|--------|------|
| Record in report as "overlap noted, no action" | Evidence is too tangential, too weak, or too preliminary to justify any edit |
| Explicit reason required | e.g., "mechanism overlap is lexical only (same gene name, unrelated pathway)," "incoming certainty 0.20 — below edit threshold," "pre-existing claim already cites stronger evidence" |

### Certainty Adjustment Table

**All adjustments gated on incoming evidence certainty (per the Evidence Quality Floor above).** Adjustments are per-cycle. Each edit must record the new certainty value directly in the claim's text (e.g., `*Certainty: 0.45.* (0.40→0.45: externally validated by [source])`) so that cumulative history is self-documenting in the claim itself.

| Adj | Condition | Incoming evidence must be |
|-----|-----------|--------------------------|
| +0.10 | Direct ME/CFS replication of exact mechanism (n ≥ 50, pre-registered, AND conducted by an independent lab) | certainty ≥ 0.70 |
| +0.05 | External validation of the general principle (large-scale, different lab, top journal; non-ME/CFS population acceptable) | certainty ≥ 0.60 |
| +0.05 | Multiple independent lines now converge — at least one must be human data, at least two must be from different labs | certainty ≥ 0.60 per line |
| 0 | New evidence is consistent but adds no independent validation (same lab, same cohort, re-analysis, or incoming certainty < 0.40) | — |
| −0.05 | Partial contradiction (different direction, smaller effect, or cross-disease mismatch) | certainty ≥ 0.60 |
| −0.10 | Direct contradiction (null replication, opposite finding, comparable sample size) | certainty ≥ 0.60 |
| −0.15+ | Refutation by superior study (larger n, better design, higher-tier journal) | certainty ≥ 0.70 |

**Cumulative guards:**
- No claim exceeds certainty 0.95, regardless of supporting evidence.
- **Per-cycle cap:** No single hypothesis may receive more than one certainty bump (max +0.05 or +0.10) per integration cycle across Phases 6 and 7 combined. Multiple bump pathways in the same cycle do not stack.
- **Diminishing returns enforcement:** Before applying any bump, read the claim's self-documented certainty history in the chapter text. Count prior bumps. If 3+ prior bumps exist, apply the ≥ 0.70 incoming certainty requirement. This is an operational step, not just a rule — the main session must verify the count before approving.
- Certainty reductions are not artificially floored. If evidence warrants reduction below 0.10, apply it with human review flag.

### Report

```
Phase 6 complete: M matches examined, N adapted
  Reinforcement:  R edits (C certainty bumps — specify ME/CFS vs general-population source)
  Contradiction:  T edits (Q reductions, L removals, U tensions flagged)
  Ambiguous:      A edits
  No action:      S overlaps deferred (D below quality floor, P too tangential/weak/preliminary)
  Truncated:      K matches unexamined (if budget exceeded)
  Skipped:        X matches had zero overlap (keyword hit, unrelated mechanism)
  Synonym map:    content-staging/synonym-map-<topic-slug>.md

Coverage: N adapted + S deferred / M examined (if M < total grep hits, note remaining)
Zero-overlap case: if M=0 after deduplication, report "Phase 6: no overlapping pre-existing content found for search terms [list]."
```

Add to Phase 0 tracking: `6 | M matches examined, N adapted (R reinforced, T contradicted, A ambiguous, S deferred)`

---

## Phase 7 — Cross-Hypothesis Compatibility

**Purpose:** New hypotheses don't only interact with evidence — they interact with *each other*. Phase 7 maps how each newly integrated hypothesis relates to every existing hypothesis in the registry: which reinforce (mutually increase plausibility), which feed into (one supplies mechanism input to another), which conflict (cannot both be true), and which are independent. Output: compatibility matrix + reinforcement chains + conflict clusters + certainty adjustment proposals.

### Step 1 — Compatibility Audit

**Agent:** `hypothesis-compatibility-auditor` | **Model:** sonnet

Input:
- Labels/titles of all newly integrated hypotheses from Phases 3 and 5
- Modified `.typ` files from Phases 3, 5, **and Phase 6** (Phase 6 may have changed existing claims' certainties, which affects compatibility relationships)
- Registry path: `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`

Output: `content-staging/compat-audit-<topic-slug>-<date>.md`

The agent:
1. Extracts mechanism terms from each new hypothesis
2. Greps all `.typ` files for those terms — **using the Phase 6 synonym map** (`content-staging/synonym-map-<topic-slug>.md`) if available — + reads 20 lines of context per match
3. Cross-references against the full registry entries for existing hypotheses
4. Classifies each pairwise relationship (reinforcement / feed-into / conflict / independent) with a relationship certainty (0.1–1.0)
5. Searches external literature for confirmatory/conflicting evidence (max 3 WebSearch calls per pair; global cap: 50 WebSearch calls total per Phase 7 cycle)
6. Writes the full pairwise matrix

**Independence validation:** For pairs classified as "independent," verify they share no common upstream mechanisms, shared assumptions, or common preconditions. If they do → reclassify as weak-reinforcement (shared upstream supports both) or weak-feed-into (common precondition). Document: "Reclassified from independent: shares upstream mechanism [X] with [hypothesis Y]."

**Guard:** If compatibility audit finds zero overlapping mechanism pairs (all new hypotheses are in systems with zero existing hypotheses in the registry) → skip Steps 2 and 3; report "Phase 7: zero mechanism overlap — no reinforcement/conflict pairs found." Still update the plan file with a `## Phase 7` section noting this.

### Step 2 — Reinforcement Chains & Adjustments

**Agent:** `hypothesis-reinforcement-builder` | **Model:** sonnet

Input:
- Compatibility audit file from Step 1
- Plan file: `ops/plans/<topic-slug>-integration-plan.md`
- Topic slug

The agent:
1. Builds feed-into chains (H1→H2→H3) and reinforcement clusters (H4, H7, H12 all converge)
2. Identifies conflict clusters (mutually exclusive groups, overlapping-but-distinct tensions)
3. Proposes certainty adjustments per reinforcement/conflict rules (see below)
4. Writes all artifacts into the plan file (`## Phase 7 — Cross-Hypothesis Compatibility` section)

### Certainty Adjustment Rules

| Trigger | Adjustment | Guard |
|---------|------------|-------|
| Two independent lines converge on the same mechanism endpoint (different labs, different methods) | +0.05 to both | Both hypothesis certainties ≥ 0.20; at most one +0.05 per hypothesis per Phase 7 cycle |
| Feed-into chain: upstream H_a is well-established (cert ≥ 0.50) and downstream H_b's plausibility depends on the link | +0.05 to H_b; mark as "contingent on H_a cert ≥ 0.50" in chapter text, registry, AND plan file | Link relationship certainty ≥ 0.50. If H_a's certainty is later reduced below 0.50, the contingent bump is invalidated and H_b's certainty must be reduced accordingly. Future cycles must search for "contingent on" annotations before modifying upstream hypotheses. |
| Reinforcement between two speculative hypotheses (both < 0.30) | No bump | Mutual reinforcement is itself speculative |
| Conflict with substantially higher-certainty hypothesis (cert diff ≥ 0.20) | −0.05 to the weaker | Flag for human review before application |
| Conflict between moderately-different hypotheses (cert diff 0.11–0.19) | −0.05 to the weaker | Flag as "near-parity conflict — review context before applying" |
| Conflict between comparably-certain hypotheses (cert diff ≤ 0.10) | No change | Flag as "unresolved tension" |
| Any hypothesis already bumped 3+ times across prior cycles | Any bump requires that both hypotheses in the pair have certainty ≥ 0.50 | Diminishing returns guard (adapted from Phase 6's ≥ 0.70 rule to Phase 7's relationship context: since Phase 7 bumps are driven by hypothesis pairs rather than papers, the guard uses the paired hypotheses' own certainties as the quality signal) |

**Never exceed certainty 0.95.** Document every adjustment: "0.XX→0.YY: [reason] — [mechanism link]." Main session reviews all proposed adjustments from Step 2 before applying them via `hypothesis-registry-updater`.

### Step 3 — Apply Adjustments

**Agent:** main session | **Model:** current

Review the reinforcement builder's proposals. For each approved adjustment:
- Invoke `hypothesis-registry-updater` with action: update, label, new certainty, and reason
- **Update chapter text:** Write the new certainty value into the claim's text with self-documenting provenance (e.g., `*Certainty: 0.50.* (0.45→0.50: reinforced by convergence with [hypothesis Y])`), same format as Phase 6 adjustments. This applies to ALL adjustments, not just threshold-crossing ones.
- **Cross-phase bump cap check:** Before approving any bump, verify whether the same hypothesis already received a Phase 6 bump in this cycle. If it did, reject the Phase 7 bump (per-cycle cap: max one bump across Phases 6 and 7 combined).
- If a bump crosses an environment threshold (speculation 0.45 → hypothesis), also reclassify the environment in the chapter text (e.g., `#speculation` → `#hypothesis-box`) and update the registry type column

**Gate:** All proposed certainty adjustments — both bumps and reductions — must be explicitly approved by the main session before application. Do not silently bump or lower.

**Intra-cycle dependency check:** Before approving, verify no circular dependencies within the proposed adjustments. Specifically: if H_a is proposed for reduction (e.g., conflict with H_c) AND H_a feeds into H_b (proposed for bump contingent on H_a ≥ 0.50), and the reduction would take H_a below 0.50 → reject the contingent bump on H_b. Apply reductions first, then evaluate remaining bump proposals against updated certainties.

**Report:**
```
Phase 7 complete: N pairs audited
  Reinforcement:  R pairs (C chains built: longest K hops)
  Feed-into:      F pairs
  Conflict:       T pairs (X mutually exclusive groups, Y overlapping tensions)
  Independent:    I pairs (V reclassified from initial independent assessment)
  Certainty adjusted: J bumps, K reductions, L tensions flagged (no change)
  Plan file updated: ops/plans/<topic-slug>-integration-plan.md
```

Add to Phase 0 tracking: `7 | R reinforcement pairs, F feed-in pairs, C conflict pairs, I independents; J certainty bumps, K reductions, L tensions flagged`

---

## Phase 8 — Build Verification

**Agent:** `test-runner` | **Model:** haiku

`test-runner` = report-only (no fixes). Build fails → main session reads error report, applies fixes (missing `@` citations, broken labels, malformed Typst syntax), re-invokes `test-runner`.

**Max 5 fix-verify iterations.** Still failing → stop, report errors verbatim, offer rollback via `git reflog` or ask user before continuing.

**Report:** "Phase 8 complete: build PASS / FAIL (errors if FAIL)."

---

## Phase 9 — Integration Quality Assessment

**Agent:** main session | **Model:** current

**Purpose:** Measure whether the integration improved the paper or just made it longer — and do this BEFORE review convergence so quality flags are actionable. Activity metrics (Phase reports) ≠ quality metrics.

### Metrics to Compute

| Metric | Source | Signal |
|--------|--------|--------|
| Net certainty change | Sum of all certainty bumps and reductions across Phases 6–7 | Direction of evidential impact on existing claims |
| Reinforcement:contradiction ratio | Phase 6 report | **Interpret with caution**: the Evidence Quality Floor suppresses weak contradictions at <0.40 — this ratio partially reflects pipeline filtering, not just the evidence landscape. Report both the ratio and how many contradictions were deferred below the quality floor. |
| New falsifiable predictions | Phase 5a report | More = higher testability of new content |
| Paper length delta | `wc -w` on modified `.typ` files before/after for net delta; use `git diff --word-diff --stat` for gross additions count | Gross addition with few new hypotheses = verbose integration. |
| Tier distribution | Phase 5 report | High Tier-3 ratio = brainstorm produced mostly low-value ideas |
| Clinical relevance | Phase 2 clinical relevance assessment | HIGH/MEDIUM/LOW/NONE — carried from Phase 2 |

### Quality Flags

| Flag | Condition | Action |
|------|-----------|--------|
| `BLOAT` | Gross words added (via `git diff --word-diff --stat`) > 2000 AND <3 new hypotheses/speculations | Review for verbose integration; consider condensing before Phase 10–11 reviews |
| `WEAK-EVIDENCE` | Phase 2 decision was PARTIAL, OR >50% of papers have certainty < 0.40 | Aligned with Phase 2 sufficiency gate by design |
| `CLINICAL-RISK` | Treatment environment integrated without harm literature search, OR `#clinical-finding` without evidence type stated, OR treatment claim with only preclinical evidence, OR treatment/clinical content without severity applicability statement | Verify adverse effect search was done; add missing safety caveats; add severity applicability |
| `SLOW-CONVERGENCE` | (computed after Phase 11 — added to report retroactively; informational, not actionable) | Integration introduced structural issues |

**Note on net certainty direction:** Negative net certainty change is a *successful correction*, not a failure. Report direction without valence judgment: "Net certainty change: −0.15 (corrections predominated)." Positive direction is not inherently better than negative.

**Actionability:** If `BLOAT`, `WEAK-EVIDENCE`, or `CLINICAL-RISK` flags fire, address before Phase 10 (coherence) and Phase 11 (review convergence). BLOAT → condense verbose sections. WEAK-EVIDENCE → ensure all weak claims carry appropriate caveats. CLINICAL-RISK → verify adverse effect search was done; add missing safety caveats; ensure severity applicability is stated.

**Output:** Append quality summary to `content-staging/synthesis-<topic-slug>-<date>.md`
**Report:** "Phase 9 complete: [metrics summary]. Quality flags: [flags or NONE]."

---

## Phase 10 — Cross-Chapter Coherence Review

**Agent:** `cross-section-coherence-auditor` (if available) or main session | **Model:** sonnet

**Purpose:** Phases 5 and 6 modify content across multiple chapters. This phase verifies the cross-chapter narrative is still coherent after scattered modifications.

**Input:** All `.typ` files modified in Phases 3, 5, 6, and 7 (Phase 7 may reclassify environments and update certainty values in chapter text).

**The agent checks:**
1. **Certainty consistency:** Same mechanism mentioned in multiple chapters → certainty values must agree. Flag any mismatches.
2. **Terminology consistency:** Same concept must use the same term across chapters. Flag divergences (e.g., "mitochondrial dysfunction" in ch06 vs "bioenergetic impairment" in ch09 for the same mechanism).
3. **Cross-reference web:** New `@sec:` and `@fig:` references must resolve. Existing cross-references to modified content must still be accurate.
4. **Narrative coherence:** If ch06 introduces a mechanism and ch14 discusses its treatment implications, the treatment rationale must accurately reflect the ch06 description (not a stale version).
5. **Contradiction detection:** Flag any case where two chapters make incompatible claims about the same mechanism (e.g., ch07 says "upregulated" and ch09 says "downregulated" for the same pathway).
6. **Evidence-to-claim calibration:** If the same mechanism has certainty 0.60 in ch06 and certainty 0.45 in ch09, verify that the difference reflects different evidence bases (not a synchronization error).

**Output:** `content-staging/coherence-audit-<topic-slug>-<date>.md`

**Fix protocol:** Main session reads the coherence audit and resolves all findings before Phase 11. Fixes may include alignment text (bridging sentences, terminology harmonization, cross-reference updates) — these are structural edits, not new substantive claims. Do not add new mechanistic claims or new evidence.

**Report:** "Phase 10 complete: N chapters audited, M inconsistencies found, K fixed, J require user decision."

---

## Phase 10a — High-Level Synthesis

**Agent:** main session | **Model:** current

**Purpose:** Phases 3, 5, and 6 scatter environments across multiple chapters. These collectively form an argument. Phase 10a condenses them into a single `#synthesis` environment so a reader skimming the chapter can grasp the convergent model without reading every individual environment. Without this, the paper has evidence components but no synthesized takeaway.

**When to run:** After Phase 10 (cross-chapter coherence), before Phase 11 (review convergence). Coherence must be verified before synthesis, since the synthesis cross-references the integrated environments.

**Trigger condition:** This phase runs when ≥3 environments were integrated across ≥2 chapters — the threshold at which the argument exceeds what a casual chapter reader can reconstruct. For single-chapter or 1–2 environment integrations, synthesis is unnecessary; the environments speak for themselves.

**Procedure:**

1. **Re-read all Phase 3 and Phase 5 environments** — including their certainties, falsifiable predictions, and limitations. Read any Phase 6 retroactive adaptations that modified pre-existing claims.

2. **Identify 2–4 convergent themes** that the environments collectively establish. A theme must be supported by ≥2 environments from different evidence sources (not just the brainstorm). Examples:
   - "Two independent mechanisms converge on the same endpoint"
   - "Cross-disease models provide in vivo precedent"
   - "Null findings constrain but do not refute"
   - "An approved drug represents a pathway-specific therapeutic probe"

3. **Draft a 4–8 sentence synthesis paragraph** using the `#synthesis` environment:
   ```
   #synthesis(title: [Short Descriptive Title])[
   First sentence: what the body of evidence collectively argues.
   Middle sentences: strongest constraints, open questions, and cross-references to key environments.
   Final sentence: the most actionable implication or the central unanswered question.
   ] <syn:topic-slug-model>
   ```

4. **Placement rules:**
   - If all environments are in a single chapter → after the last environment, before the next major section heading
   - If environments span multiple chapters → in the chapter where the *assembled framework* lives (typically ch14d for cross-disease, ch13 for integrative models); add a cross-reference from the mechanism-level chapter to the synthesis
   - Never place in the hypothesis registry or appendix — synthesis belongs in the narrative body

5. **Environment constraints:**
   - Must use `#synthesis` (not `#hypothesis-box`, `#speculation`, or `#achievement` — synthesis aggregates evidence, it doesn't present a new claim)
   - Must cross-reference at least two integrated environments via `@spec:`, `@hyp:`, `@oq:`, or `@lim:` labels
   - Must state the most important open question(s) — synthesis is not triumphalism
   - Must distinguish what the evidence supports from what remains speculative
   - No new citations beyond those already in the integrated environments

6. **Add label** `<syn:topic-slug-model>` for changelog cross-referencing.

**Environment definition:** `#synthesis(title: [...])[body] <label>` renders as a solid cyan box with `⇌` icon. Defined in `src/main/typst/mecfs/shared/environments.typ`. The Java Qmd converter (`ConvertAndSplit.java`) maps it to a Quarto `note` callout.

**Output:** The modified `.typ` file with the new `#synthesis` environment.
**Report:** "Phase 10a complete: synthesis environment @syn:<topic-slug>-model added to chapter N, condensing K environments into convergent model."

### Retroactive Synthesis for Completed Integrations

Many integrations completed before Phase 10a existed. They may contain scattered environments that collectively form a coherent argument without any synthesis to surface it. This section describes how to identify and fill those gaps retroactively.

**When to retro-apply:**
- User explicitly requests: "check for missing synthesis environments"
- A new `/integrate-topic` cycle integrates a topic that strongly reinforces an existing completed topic → flag whether the existing topic lacks a synthesis and offer to add one
- A cross-chapter coherence review or adversarial review finds that environments feel disconnected and would benefit from a convergent summary
- Never retro-apply unilaterally — always flag the opportunity and ask the user before writing

**Detection procedure:**

1. **Scan `ops/plans/*integration-plan.md`** for integration plans with tracking statuses indicating completion (Phase 13 row status `✅ done`, or ≥1 subtree node status `✅`).

2. **For each completed integration**, check:
   - Does the plan's tracking table show ≥3 environments integrated across ≥2 chapters? (Trigger condition)
   - Does a `#synthesis` environment already exist in the target chapter(s)? (Skip if yes)
   - Cross-reference the plan's target chapters against the actual `.typ` files to confirm environments still exist and haven't been moved.

3. **If ≥3 completed integrations lack synthesis** → present the user with a prioritized list:
   ```
   Integrations eligible for retroactive synthesis:
   1. <topic-slug> — N environments across M chapters — <one-line topic description>
   2. <topic-slug> — N environments across M chapters — <one-line topic description>
   ...
   ```
   Priority order: (a) cross-disease/integrative topics > (b) mechanistic topics > (c) treatment topics > (d) methodological/single-paper integrations.
   
   Ask: "Add synthesis environments to any of these? (select by number, or 'all')"

4. **For each selected integration:** re-read the Phase 3 and Phase 5 environments (same procedure as Phase 10a Step 1), identify emergent themes, write the synthesis, add the label, and update the changelog to reference `@syn:<slug>`.

5. **Cross-topic synthesis (advanced):** If ≥3 completed integrations share a common mechanism (e.g., mast cell activation, connective tissue degradation, mitochondrial dysfunction), flag this as a potential *cross-topic synthesis* — a `#synthesis` paragraph that transcends any single integration cycle and synthesizes across multiple completed topics. This is rare; it requires ≥3 completed integrations with overlapping mechanism terms. Flag it; do not write it unilaterally. Ask: "These 3 completed integrations all focus on <mechanism X>. Add a cross-topic synthesis paragraph?"

---

## Phase 11 — Review to Convergence

**Collect changed files** at the start of each review pass (not once for all passes — fixes may modify additional files):

```bash
git diff --name-only HEAD | grep '\.typ$'
git ls-files --others --exclude-standard | grep '\.typ$'
```

Refresh this list between passes 11a, 11b, 11c.

Pass combined list (space-separated paths) to each review skill.

| Pass | Skill | Convergence criterion |
|------|-------|-----------------------|
| 11a | `/review-convergence <changed-files>` | 2 consecutive zero-finding rounds |
| 11b | `/review-adversarial <changed-files>` | all 6 personas; 2 consecutive passes with zero HIGH or CRITICAL severity findings (LOW/MEDIUM findings documented but do not block convergence) |
| 11c | `/review-typst <changed-files>` | 2 consecutive zero-finding rounds |

Between passes: run `nix build` — confirm no regressions from fixes.

**Convergence criterion:** All three reviews → 2 consecutive zero-finding rounds each.
**Report per pass:** "Review 11a/11b/11c complete: N rounds, M findings fixed, status: CONVERGED / MAX-ROUNDS-REACHED."
**Max rounds reached with findings remaining** → list unresolved; offer rollback to pre-Phase-6 checkpoint or ask user how to proceed.

**Gate C — Review surfaces missing topic:** If any review finding identifies a missing mechanism, pathway, or body of evidence that constitutes a *distinct ME/CFS-relevant topic* (not just a missing citation or clarification) → pause and ask the user: "Review identified a missing topic (`<topic-gap>`). Address inline, queue as `/integrate-topic <topic-gap>`, or ignore?" Add any queued topic to `ops/queued-topics.md`. Wait for answer before continuing.

**Context:** Pipeline is long. Context >35% before reviews complete → generate continuation prompt per CLAUDE.md; hand off to fresh session. Include: phases completed, files modified, review passes remaining, checkpoint commit hash, queue file path.

**Post-convergence update:** Update Phase 9's `SLOW-CONVERGENCE` flag retroactively based on actual round counts.

---

## Phase 12 — Changelog Update

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
- Include Phase 9 quality flags if any were raised (e.g., "Quality note: WEAK-EVIDENCE — evidence base is preliminary.")
- Include Phase 2 clinical relevance assessment in the changelog entry
- Changelog entry must also pass review — run one quick `/review-typst` pass on `changelog.typ` alone after writing it (Phase 11 will have already converged by this point)

**Report:** "Phase 12 complete: changelog updated."

---

## Phase 13 — Commit

Invoke `/commit` with scope hint `[topic-slug] integration`. Follow all `/commit` skill rules (conventional commits, no generated files, no PDFs except published artifacts).

WIP checkpoint commits from the Git Checkpoint Protocol are squashed into the final commits. Do not leave WIP commits in the history.

**Report:** "Phase 13 complete: N commits created."

---

## Cost Model

| Phase | Agent | Model | Reason |
|-------|-------|-------|--------|
| 1 | `literature-integrator` | sonnet | Research synthesis needs judgment |
| 2 | main session | current | Evidence synthesis + integration decision at zero marginal cost |
| 3 | main session | current | Composition at zero marginal cost |
| 4 | `scientific-insight-generator` | opus | Creative cross-domain synthesis (constructive + critical categories) |
| 4a | main session | current | Mechanical tree write |
| 5 | `literature-integrator` (sub) | sonnet | Per-idea research (Tier 1 only) |
| 5 | main session | current | Development + integration |
| 5a | `falsifiability-auditor` | sonnet | Verification sweep (most work done inline in Phase 5) |
| 6 | main session | current | Evidence→claim retrospective adaptation |
| 7 Step 1 | `hypothesis-compatibility-auditor` | sonnet | Pairwise mechanism search + classification (includes Phase-6-modified claims) |
| 7 Step 2 | `hypothesis-reinforcement-builder` | sonnet | Chain/cluster construction + certainty proposals |
| 7 Step 3 | main session | current | Review proposals, invoke registry updater |
| 8 | `test-runner` | haiku | Mechanical build check |
| 9 | main session | current | Quality metrics — actionable before review convergence |
| 10 | `cross-section-coherence-auditor` | sonnet | Cross-chapter consistency + evidence-to-claim calibration |
| 10a | main session | current | High-level synthesis → `#synthesis` environment condensing scattered environments into convergent model |
| 11a | review-convergence agents | sonnet | Consistency/logic checking |
| 11b | review-adversarial agents | opus | Adversarial personas need deep reasoning |
| 11c | review-typst agents | sonnet | Typst-specific review |
| 12 | main session | haiku | Mechanical changelog formatting |
| 13 | commit | current | Git operations |

---

## Invariants (Never Violate)

These are cross-cutting constraints that apply regardless of phase. Phase-specific rules are not restated here — they live in their respective phase definitions.

- **Integration must be earned** — the null hypothesis is non-integration; PROCEED/PARTIAL/REJECT/DEFER decision is mandatory
- **No fabrication** — every claim traces to verified source
- **No hypothesis-as-recommendation** — mechanistic rationales ≠ clinical advice
- **Certainty always explicit** in every environment
- **Evidence visibility symmetry** — confirming and contradicting evidence receive equal visibility in the published paper at every certainty tier
- **Certainty symmetry** — per-cycle bump cap; no artificial reduction floor; documentation burden symmetric for bumps and reductions
- **Replication status always noted** (fully / partially / not yet replicated)
- **Brainstorm origin transparency** — brainstorm-generated content carries `(Origin: brainstorm)` tag in published text
- **Changelog "Motivated by:" required** — every entry needs `@CiteKey`
- **Hypothesis registry always updated** — new hypothesis/speculation/prediction/open-question → `hypothesis-registry.typ`
- **Scrape registry checked** before scraping any URL
- **Build must pass** — do not declare completion if `nix build` fails
- **Queue persistence** — all queued topics written to `ops/queued-topics.md`; survives context rotation
