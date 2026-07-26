---
event: pipeline-issues
source: session 2026-07-26 integrate-topic slaghekke2026-muscle-microvascular
confidence: high
---

## Integrate-Topic Pipeline Issues (Observed 2026-07-26)

### 1. Adversarial Auditor Agents Return Blank
**What:** `cynic-auditor`, `sophist-auditor`, `devil-advocate-auditor`, `strawman-auditor`, `reductionist-auditor`, `clinician-auditor` all returned empty `task_result` when invoked via Task tool. 4 separate launches, 4 blank outputs.
**Impact:** Phase 11b adversarial review cannot be delegated; must run inline in main session.
**Workaround:** Manual 6-persona adversarial sweep in main session. Acceptable quality; slower.
**Context:** All 6 agents appear in `.claude/agents/` directory and have valid-looking agent files. Unknown why they produce no output.

### 2. Git Add -A Sweeps Foreign Files
**What:** Running `git add -A` in a MIXED-mode or CONCURRENT tree stages other sessions' modified files and untracked artifacts (`.agentmem/`, PDFs, `opencode.json`, etc.).
**Impact:** Commits unintentionally include another cycle's work. Required `git reset --soft HEAD~1` and re-staging by explicit path.
**Prevention:** NEVER use `git add -A` or `git add .`. Always stage by explicit per-topic file list. The `/integrate-topic` pipeline rules already forbid this but it's easy to slip (especially after `nix build` requires staging for untracked files).

### 3. Bib Key Convention — Agent Reports vs Ground Truth
**What:** The `literature-integrator` agent's "bib keys produced" list CAN contain typos/omissions that don't match actual `.bib` entries. Phase 1 report said key `X` was added; actual bib file had key `Y`.
**Prevention:** Phase 1 output MUST be followed by: `grep '^@' bib/<file>.bib` to extract actual keys. Bib is ground truth, not the report.

### 4. Typst `<` in Prose = Unclosed Label
**What:** p-values like `p<0.0001` in appendix-h annotated bibliography prose are interpreted by Typst as label openings. Build fails with "unclosed label."
**Fix:** Escape as `p $<$ 0.0001` or use math mode `$p < 0.0001$`. The `literature-integrator` agent writes p-values in prose by default — a systemic issue.
**Prevention:** Phase 3a build check catches these. Fix before Phase 4.

### 5. `//` Typst Comments Silently Drop Content
**What:** A `// Deconditioning rebuttal. ...` line was written as a Typst comment instead of prose. The entire deconditioning rebuttal paragraph was invisible in output. Build passed (comments are valid Typst).
**Impact:** Critical content silently absent from PDF. Only caught by manual diff review.
**Prevention:** Never start a prose paragraph with `//`. Review diffs for `//` in prose sections.

### 6. Concurrent Cycle Shared-File Ownership
**What:** `hypothesis-registry.typ` and `appendix-h-annotated-bibliography.typ` were modified by this cycle's Phase 1 agent, but a concurrent cycle's commit (iron-redox-polarity) shipped them before our Phase 13 commit. When we checked `git status`, the files showed no modifications — already committed.
**Verification:** `git show HEAD:<file> | grep <our-key>` confirmed our entries survived in the parallel stream's commit.
**Prevention:** At Phase 13, before committing, grep HEAD for your added keys/labels in shared files. If present in HEAD but not in `git status` → your entries shipped in another commit. Note this in the Phase 13 report.
