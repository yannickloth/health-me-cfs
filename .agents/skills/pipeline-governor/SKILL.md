---
name: pipeline-governor
description: Meta-orchestrator that ensures a target pipeline skill actually ran every phase and agent it was supposed to. Invoke a pipeline under the governor to get an independent Phase Ledger audit of completion — every phase must end in RAN (artifact verified on disk) or LEGIT-SKIP (documented condition fired); silent omission is treated as a failure and re-run until clean. USE FOR: run [pipeline] and verify nothing was skipped, guarantee all phases ran, audit a completed integrate-topic cycle for missing phases/agents, enforce pipeline completion. This skill is itself invoked WITH another skill name and its arguments as parameters.
---

# Pipeline Governor — Completeness Enforcement

Run a target pipeline skill AND independently verify every phase/agent it
defines actually completed. The governor does NOT trust the pipeline's
self-reported "done." It derives the canonical phase list, then walks a Phase
Ledger where each phase resolves to exactly one state. Any phase left
unaccounted-for blocks completion until it runs or a documented skip fires.

**Target skill:** `$ARGUMENTS[0]`
**Target arguments:** `$ARGUMENTS[1..]` (passed through unchanged)

**Guard:** `$ARGUMENTS[0]` missing/blank/literal → ask the user which pipeline to
govern before proceeding.

---

## Principle: self-supervision is untrustworthy

Lengthy pipelines rely on the main session self-reporting each phase as done.
Under long-context fatigue this fails silently — phases and agents get forgotten
without any recorded reason. The governor enforces three states per phase and
refuses to accept anything that is neither done nor a documented skip.

## The three-phase state machine

For **every** phase in the target skill:

| State | Meaning | Evidence required |
|-------|---------|-------------------|
| `RAN` | Phase executed and produced its artifact | Required artifact exists on disk (see map) + phase report line present |
| `LEGIT-SKIP` | A documented skip/termination condition fired | The specific condition quoted and satisfied, with evidence |
| `OMISSION` | Neither — phase silently skipped | **FAILURE.** Do not proceed. Run the phase, or get user approval to explicitly waive it (see Waive rule). |

A cycle may be declared complete **only** when no phase is in `OMISSION` state
and the target skill's own completion gate (e.g. its final commit/finish phase)
has run with a verified artifact.

---

## Step 1 — Derive the canonical phase list

1. Read the target skill's `SKILL.md` in full.
2. Extract every `## Phase N` (and sub-phase `### Phase Nx`) heading.
3. For each phase, record into a working ledger `tmp/governor-ledger-<target>.md`:
   - **Phase id / name**
   - **Agent or skill** it delegates to (from the phase's `**Agent:**` line; main session = inline)
   - **Required artifact** — the concrete file(s) or state it must leave on disk/repo
   - **Legit-skip condition** — the exact termination/conditional-skip text, if any
4. The ledger is the governor's source of truth for this run. It survives context
   rotation (see Step 6) so a handoff can resume mid-audit.

## Step 2 — Invoke the target pipeline

Execute the target skill per its own instructions with `$ARGUMENTS[1..]` passed
through verbatim. Do NOT interfere with its phase logic. Run it exactly as the
user normally would. If the pipeline is enormous, run it per its own context
management (it may generate continuation prompts — honor them).

## Step 3 — Post-run audit (authoritative, not trusting self-report)

After the pipeline reports done, do the ledger walk. Do NOT rely on the
pipeline's summary. For each phase, independently:

1. **Must-run phases** (no documented skip): verify the required artifact exists
   (`ls` / `read` / `git show`), and that the pipeline's per-phase report line is
   present in the plan/tracking doc.
2. **Conditional phases**: evaluate the skip condition against the actual state.
   - Condition satisfied → `LEGIT-SKIP`, record the specific trigger.
   - Condition not satisfied → the phase MUST have run → `OMISSION` if no artifact.
3. **Termination branch** (e.g. integrate-topic REJECT/DEFER): confirm the
   decision was actually recorded and the branch condition truly holds; phases
   after the terminator are `LEGIT-SKIP` (cycle ended early) — verify they were
   NOT silently half-run.

**Independent artifact spot-checks (governor never delegates these):**
- `nix build` must pass (target pipeline scopes `git ls-files`, so must-run
  content phases leave a building tree).
- For integrate-topic specifically: check the hypothesis registry was updated if
  any `#hypothesis-box`/`#speculation`/`#prediction`/`#open-question` was added;
  check every new `#hypothesis-box`/`#speculation` has a falsifiability statement;
  check every new environment has a `*Consequence:*` field.

## Step 4 — Re-run omitted phases

For each `OMISSION`:

1. Re-run the missing phase/agent following the target skill's own phase
   definition, in dependency order.
2. After re-running, re-verify its artifact.
3. Loop until the phase is `RAN` or the target skill's documented skip condition
   now legitimately fires.

**Escalate (halt, ask user) when:**
- A must-run phase repeatedly fails its artifact check (2 attempts).
- An agent that should exist is missing from `.opencode/agents/` — mirror the
  target skill's escalation rule; never silently implement a missing agent.
- The re-run would require opus-only reasoning or web research that the current
  governor session cannot replicate (mirror the target skill's unattended-mode
  rules; opus + web-search phases must escalate, not silently inline).

## Step 5 — Completion gate

Only when **zero** phases are in `OMISSION`:

1. Confirm the target's terminal phase (commit/finish) ran and left its artifact
   (e.g. a commit hash, or explicit user-said-do-not-commit).
2. Emit the checklist table, every cell `RAN`/`LEGIT-SKIP`.
3. Report to the user: full ledger, anything that was re-run or forced, and any
   waivers granted.

**Refuse to declare completion** while any phase is `OMISSION` and not waivered.

### Waive rule

The user may explicitly waive a phase ("skip X, it's not needed here"). A waiver
turns the state into `WAIVED` (distinct from `OMISSION`) and is recorded with the
user's stated reason. Waivers are the ONLY way a phase may be absent without a
documented skip. Never self-waive — the governor never authorizes skipping a
phase on its own judgment; only the user may.

## Step 6 — Context rotation / handoff safety

If context budget is exceeded mid-run:

1. Persist the ledger at `tmp/governor-ledger-<target>.md` (gitignored).
2. Write a continuation prompt that re-lists: target, target args, phases
   remaining in `OMISSION`, phases `RAN`/`LEGIT-SKIP`, current HEAD hash, and the
   ledger path.
3. A fresh session reads the ledger and resumes at Step 3/4 — it does not restart
   the pipeline from zero. The ledger is the guarantee that completed phases are
   not re-run and skipped phases are not forgotten.

---

## Cost model

The audit (Steps 1, 3, 5) is cheap — reads and a `nix build`. The expensive part
is Step 2 (running the target) and Step 4 (re-running omissions), which are billed
to the target's own cost model. Do not re-run the whole pipeline to fix one
omitted phase — re-run only the deficient phase.

## Invariants (never violate)

- **No trust in self-report** — every `RAN` has an artifact on disk, not just a report line.
- **Three states only; `OMISSION` blocks completion** unless user-waived.
- **Re-run narrowly** — only the deficient phase, not the whole pipeline.
- **Escalate on opus/web/missing-agent** — never silently surrogate capability the skill forbids substituting.
- **Ledger survives rotation** — completion is provable across sessions, not just in one context window.
- **Never rewrite history** — all git operations follow the target skill's concurrency guards (no reset/rebase/amend/add -A).
