---
name: synthesize-document
description: Cross-document synthesis pass — scans all environments across all chapters, identifies convergent clusters of ≥3 environments sharing mechanism/tissue/drug/pathology, and writes #synthesis environments to surface the global picture that no single chapter shows. Runs review-convergence + review-adversarial on every synthesis written.
argument-hint: [optional chapter or part scope, e.g., "ch07 ch14d" or "part2-pathophysiology"]
---

# Document-Wide Synthesis Pass

Scans the entire paper (or scoped subset) for scattered environments that collectively form a convergent argument invisible to a chapter-level reader. Writes `#synthesis` environments to surface the global picture.

**When to use:** After several `/integrate-topic` cycles have accumulated; when a reviewer notes fragmentation; when you suspect themes are converging across chapters without explicit acknowledgment.

**Scope:** `$ARGUMENTS` — optional. If empty, scans every `.typ` file under `src/main/typst/mecfs/`. If specified, limits to those chapters/parts (e.g., `ch07 ch14d ch15`, `part2-pathophysiology`, `ch07 ch26 ch28`).

**Guard:** Scope resolves to zero `.typ` files → report empty match; ask user to refine.

---

## Phase 1 — Environment Inventory

**Agent:** multiple `explore` agents (one per chapter/part) | **Model:** haiku | **Execution:** parallel foreground (each writes its own output file)

**Partitioning rule:**
- Full-document scan (no scope argument) → single `sonnet-general` agent scans the full `src/main/typst/mecfs/` directory. This avoids the coordination overhead of 6 parallel agents and eliminates terminology drift entirely, since one agent reads everything. Sonnet is used (not haiku) because accurate term extraction from 3,000+ environments across 6 parts requires domain judgment — haiku's higher error rate would create false negatives/positives that break the merge.
- Scoped scan (e.g., `ch07 ch14d ch15`) → one `explore` agent (haiku) per chapter in the scope. Scoped scans have fewer environments, so the coordination overhead is acceptable and the speed gain from parallelism outweighs the inconsistency risk. Minimum 1, maximum 5 agents.
- If a single chapter has >200 environments → split that chapter into two agents (first half, second half). The `appendices/` directory is its own agent.

**Shared term vocabulary (MANDATORY — prevents terminology drift across agents).** Every agent must use this exact taxonomy when filling the Mechanism/Tissue/Drug/Process columns. If an environment mentions a term on this list, use the canonical form exactly as written here. If an environment mentions a concept not on this list, add it using the standard biomedical name (not an abbreviation unique to one chapter) and flag it with `[+]` in the output table so the merge step can identify novel terms. For drugs, include the approval status suffix: `†` = FDA/EMA-approved for any indication, `‡` = research-stage only (no regulatory approval for any indication). This prevents syntheses from implying therapeutic readiness for research-stage compounds.

| Column | Canonical terms |
|--------|----------------|
| Mechanism | tryptase, chymase, MMP-1, MMP-3, MMP-9, MMP-12, MMP-13, histaminylation, TG2, IgE, FcεRI, MRGPRX2, PIP2, TRPM3, TRPV1, TRPV4, CADM1, NCS-1, InsP3R1, Gαq, PLC, HIF-1α, HIF-2α, VEGF, TGF-β, TNF-α, IL-1β, IL-6, IL-11, IFN-α, IFN-γ, NF-κB, NLRP3, mTORC1, AMPK, PGC-1α, SPM, resolvin, protectin, autophagy, mitophagy, NETosis, DNase, NET, complement, C3a, C5a, orexin, tau, PKA, HSP70, BDNF, GDNF |
| Tissue | endothelial, basement-membrane, blood-brain-barrier, glymphatic, connective-tissue, ligament, tendon, cartilage, skeletal-muscle, cardiac-muscle, smooth-muscle, bone, skin, brainstem, hypothalamus, hippocampus, prefrontal-cortex, DRG, nodose-ganglion, sympathetic-ganglion, enthesis, periodontal |
| Drug | omalizumab, ligelizumab, ketotifen, cromolyn, doxycycline, lithium, rapamycin, metformin, belzutifan, darunavir, semaglutide, liraglutide, methylprednisolone, hydrocortisone, fludrocortisone, midodrine, ivabradine, LDN, beta-blocker, ACE-inhibitor, rituximab, efgartigimod, lemborexant, suvorexant |
| Process | autoantibody, GPCR-autoantibody, senescence, inflammaging, apoptosis, pyroptosis, fibrosis, endothelial-dysfunction, microvascular, oxidative-stress, ER-stress, ISR, unfolded-protein-response, epigenetic, methylation, acetylation, demyelination, neurodegeneration, neuroinflammation, central-sensitization |

**Per-agent task:**

1. **`rg -U`** within assigned directory to find all `#speculation`, `#hypothesis-box`, `#fhypothesis`, `#open-question`, `#achievement`, `#clinical-finding`, `#limitation` environments. The `-U` (multiline) flag ensures environments with arguments on subsequent lines are matched.

2. For each environment found, **read ≥10 lines of context** to understand the claim. Record in a structured table:

   | Label | Chapter | Type | Cert | Claim (≤1 sentence) | Mechanism terms | Tissue terms | Drug terms | Process terms |
   |-------|---------|------|------|---------------------|-----------------|--------------|------------|---------------|

   Extract terms from the title and body. Be thorough — a single environment may contribute to multiple clusters. Include the `origin: brainstorm` tag status and `research_stream` value if found in nearby `.bib` entry context.

3. **Output:** Write `tmp/synthesis-inventory-<part>-<date>.md` with the structured table. One file per agent.

**Merge (main session):** After all agents complete, the main session reads all output files, deduplicates (same label in monolithic + split versions counts once), concatenates into a master inventory, and builds the four inverted indexes (mechanism → labels, tissue → labels, drug → labels, process → labels). Before identifying candidate clusters, **filter out promiscuous terms** — any term appearing in >20% of all rows (e.g., "IL-6", "TNF-α", "NF-κB", "oxidative-stress") is a generic biological marker, not a meaningful convergence signal. These are excluded from candidate clusters. After filtering, any remaining term appearing in ≥3 rows AND spanning ≥2 chapters OR ≥2 research streams is a candidate cluster.

**Output:** Master inventory + candidate cluster list written to `tmp/synthesis-inventory-master-<date>.md`. This file is the input to Phase 2.

---

## Phase 2 — Cluster Evaluation

**Agent:** `sonnet-general` | **Model:** sonnet | **Execution:** foreground (report → main session decision)

Read the Phase 1 master output file (`tmp/synthesis-inventory-master-<date>.md`). For each candidate cluster:

1. **Read ≥10 lines of context** for every environment in the cluster to verify the claim summaries are accurate and that environments genuinely share the claimed mechanism/tissue/drug/process.

2. **Apply eligibility gates:** classify each candidate as Eligible, Skip (Adjacent), Skip (Thin), Skip (Already Synthesized), or Merge (Overlap). Use the rules below. Output a decision table:

   ```
   | Cluster | Term | N envs | N chapters | N streams | Decision | Rationale |
   |---------|------|--------|------------|-----------|----------|-----------|
   ```

3. **For eligible clusters**, add a `Convergent theme` column: one sentence describing what this body of evidence collectively argues or reinforces. The theme must cite ≥2 independent evidence sources (different labs, different integration cycles). If environments only reinforce an existing claim, state "reinforces [claim] via N independent lines."

4. **Halt at 10.** If >10 clusters are eligible after filtering, stop and report the top 10 (prioritized: mechanism > tissue > drug class > process). Defer the rest.

**Output:** Decision table written to `tmp/synthesis-evaluation-<date>.md`. The main session reads this file and decides which syntheses to write in Phase 3.

**Gates (applied by agent):**

| Gate | Condition | Action |
|------|-----------|--------|
| **Density** | ≥3 eligible environments (after applying hard skip rules below) from ≥2 different integration cycles (across any number of chapters), AND not all in the same chapter section | Eligible |
| **Already synthesized** | A `#synthesis` environment in the paper already covers this cluster's argument | Skip (note existing label) |
| **Adjacent** | All environments are in the same chapter section and visible to a reader scanning that section | Skip (reader can see the pattern) |
| **Thin** | <3 labeled environments exist (prose mentions or single bibliography entries don't count) | Skip (insufficient integration density) |
| **Overlap** | Two clusters share >50% of environments | Merge into one larger cluster |
| **Maximum per run** | More than 10 eligible clusters remain after filtering | Halt candidate identification; present top 10 to user; defer remainder |

**Hard skip rules:**
- A single `#open-question` or `#limitation` does not count toward the ≥3 environment threshold (it's a constraint, not a finding). **Exception:** if ≥3 open-questions all point to the same knowledge gap (same gene, pathway, or clinical question), the cluster IS eligible — a synthesis saying "multiple independent lines converge on the same unresolved question" is valuable.
- Registry-only environments (entries only in `hypothesis-registry.typ`, no chapter text counterpart) count as 0.5 — two registry-only entries = one chapter environment for density purposes
- An environment present in both monolithic and split chapter versions counts once
- `origin: brainstorm` tag does NOT disqualify — brainstorm content still contributes to convergent arguments

---

## Phase 3 — Synthesis Writing

**Agent:** main session | **Model:** sonnet

Composition requires judgment about where to place syntheses (which chapter, before which section heading), how to frame convergent arguments for different audiences, and how to balance certainty with caveats. Sonnet is sufficient for this — no deep reasoning (opus) needed since the evidence has already been evaluated by Phase 2.

For each eligible cluster, in priority order (mechanism > tissue > drug class > pathological process):

1. **Re-read** every environment in the cluster (≥10 lines of context each). Note certainties, falsifiable predictions, limitations, and cross-references.

2. **Identify the convergent theme.** What does this body of evidence collectively argue or reinforce that no single environment states? The theme must be supported by ≥2 independent evidence sources (different labs, different integration cycles). If the environments collectively reinforce an existing claim rather than arguing something new, state "reinforces [existing claim] by converging N independent lines of evidence" — convergence without novelty is still worth documenting.

3. **Write the synthesis** using `#synthesis` environment:
   ```
   #synthesis(title: [Short Descriptive Title])[
   First sentence: the convergent argument (what the cluster collectively establishes
   or reinforces). Following sentences: strongest constraints, key cross-references to
   component environments (@spec:, @hyp:, @oq:, @lim:), open questions, therapeutic
   implications. Final sentence: the most important unresolved question or the most
   actionable next step. Distinguish what is supported from what is speculative. Every
   synthesis must state at least one open question or limitation in its body text.
   ] <syn:cluster-slug>
   ```

4. **Placement rules:**
   - Single-chapter cluster → after the last environment in that chapter, before the next major section heading
   - Multi-chapter cluster → in ch14d (cross-disease) for mechanistic clusters; ch18 (emerging therapies) for drug class clusters; ch07 (immune), ch10 (cardiovascular), ch15 (symptom mechanisms) for organ-system clusters
   - If the cluster already has a single-chapter synthesis, add a cross-reference from the multi-chapter synthesis to it

5. **Self-critique requirement.** Every synthesis must state at least one open question or limitation. Synthesis is not triumphalism — it aggregates evidence, it doesn't declare victory.

---

## Phase 4 — Review Convergence

**Agent:** `review-convergence` skill + `review-adversarial` skill

For every `#synthesis` environment written in Phase 3:

1. **Run `/review-typst`** on the modified files (two rounds → two consecutive zero-finding passes)
2. **Run `/review-adversarial`** on the modified files (all 6 personas → zero CRITICAL findings; HIGH findings documented but do not block convergence provided they are addressed or explicitly deferred with rationale)
3. **Run `nix build`** between review rounds to confirm no regressions

**Gate:** All syntheses must pass both review passes before Phase 5. If a synthesis fails adversarial review with ≥1 unresolved CRITICAL finding after 3 fix-attempt rounds, flag for human review; do not ship a vulnerable synthesis. HIGH findings may remain if explicitly noted in the synthesis body as limitations.

---

## Phase 5 — Commit

**Agent:** main session | **Model:** haiku

Mechanical git operations — staging, commit message formatting, queue file update. No domain reasoning required.

1. Stage and commit with message: `feat(synthesis): N cross-document syntheses across M chapters`
2. If any synthesis identifies a new research gap or unresolved contradiction that warrants a standalone `/integrate-topic` cycle → add to `ops/queued-topics.md` with Gate C source

---

## Output

**Per-cluster report:**
```
=== <cluster-name> ===
Environments: N (from K integration cycles)
Chapters: <list>
Convergent theme: <one sentence>
Synthesis label: <syn:slug>
Placed in: <chapter>
Status: written / skipped (reason)
Review: typst CONVERGED / adversarial CONVERGED / adversarial N findings fixed
```

**Summary:**
```
Phase complete: N clusters evaluated, K syntheses written, J skipped (M adjacent, P thin, Q already-synthesized)
Chapters modified: <list>
Build: PASS
```

---

## Cost Model

| Phase | Agent | Model | Reason |
|-------|-------|-------|--------|
| 1 (full doc) | `sonnet-general` | sonnet | Single agent scans full document — avoids coordination overhead of 6 parallel agents, eliminates terminology drift |
| 1 (scoped) | `explore` × N (parallel) | haiku | Per-chapter grep + term extraction — cheap, parallelizable for smaller scopes |
| 1 (merge) | main session | haiku | Deduplicate + merge + index + filter promiscuous terms — mechanical |
| 2 | `sonnet-general` | sonnet | Judgment-based cluster evaluation — needs domain reasoning |
| 3 | main session | sonnet | Composition — needs placement judgment, not deep reasoning |
| 4 | review-convergence + review-adversarial | sonnet/opus | Same as Phase 11 in integrate-topic |
| 5 | main session | haiku | Mechanical git operations — no domain reasoning required |
