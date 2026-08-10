# Session Prompt: Fix stale `model:` frontmatter in `.opencode/agents/*.md`

> Author: integ-topic cycle (Komaroff–Dantzer 2025), working in MIXED mode.
> Date: 2026-08-10
> Purpose: A dedicated session to repair a repo-wide config conflict discovered during Phase 1 of the Komaroff–Dantzer integration. Do NOT run other integration work. Do NOT touch `src/**`, `bib/**`, appendices, changelog, or hypothesis registry.

---

## Problem

91 of 104 `.opencode/agents/*.md` files declare a `model:` field in their YAML frontmatter using stale Anthropic model names: `sonnet` (45 files), `opus` (22 files), `haiku` (22 files), `haiku|sonnet|opus` (1), and one literal `"ATP_dynamics"`. Only 2 files carry a model that matches the real config (`deepseek/deepseek-v4-pro`).

These frontmatter `model:` values are cost-model levels from the `/integrate-topic` skill, committed into the agent `.md` files. Under opencode's agent resolution, the Markdown frontmatter `model:` field **overrides** the per-agent model mapping in `opencode.json`. The configured environment uses only `deepseek/*` and `kimi-for-coding/*` providers (no `sonnet`/`opus`/`haiku`/`anthropic` provider is configured).

Consequence observed live: invoking `literature-integrator` via the Task tool failed with:

```
Model not found: sonnet/.
```

This same failure will hit every delegated phase (literature-integrator, scientific-insight-generator, falsifiability-auditor, all adversarial auditors, reviewers, etc.) until fixed.

## Intended behavior

`opencode.json` (project root) already maps **every** agent by name to a valid model, e.g.:

```json
"literature-integrator": {
  "model": "deepseek/deepseek-v4-pro",
  "options": {
    "thinking": { "type": "enabled" },
    "reasoning_effort": "high"
  }
}
```

So the correct source of truth for each agent's model is `opencode.json`. The stale frontmatter `model:` lines must not override it.

## Fix

For every `.opencode/agents/*.md` (and any `~/.config/opencode/agents/*.md`), **remove the `model:` line from the YAML frontmatter** so that `opencode.json`'s `agent.<name>.model` mapping governs.

### Corrective options (pick one)

1. **Remove `model:` from all frontmatter** (recommended): after removal, each agent's model resolves from `opencode.json`'s `agent.<name>` entry. Verify each agent has an explicit `agent.<name>.model` in `opencode.json`; if any agent lacks one, that agent will fall back to the invoking primary agent's model on a case-by-case basis — acceptable, but note it in the report.
2. **Align the frontmatter `model:` to the config value**: for any agent where you prefer the `.md` to remain authoritative, set `model:` to the exact string from `opencode.json` (e.g. `deepseek/deepseek-v4-pro`). Do NOT invent new model IDs; only use provider/model IDs that exist (verify via `opencode models`).

Do NOT bulk-format or reindent unrelated frontmatter. Minimal diff per file: remove exactly the `model:` line (or rewrite it in-place under option 2).

## Verification (must pass)

```bash
# 1. No stale model IDs remain
grep -rn '^model:' .opencode/agents/ ; grep -rn '^model:' ~/.config/opencode/agents/ 2>/dev/null

# 2. Every configured agent in opencode.json has a resolvable provider/model
#    (provider IDs available: deepseek, kimi-for-coding — confirm with `opencode models`)

# 3. Delegate a trivial task to a subagent that was previously broken, e.g.:
#    literature-integrator, falsifiability-auditor, or any reviewer — it must NOT error
#    with "Model not found: <stale-name>/".
```

## Concurrency guards (repo is MIXED — other cycles active)

- This is a bulk edit across ~91 shared files that other cycles' agents run from. Do NOT delete or rewrite the system-prompt body of any agent. Change the `model:` frontmatter only.
- Do NOT `git add -A`. Stage `.opencode/agents/*.md` (and any touched `~/.config/opencode/agents/*.md`, which are outside the repo).
- Do NOT `git reset` / `--amend` / `rebase` / force-push.
- Commit with a clear message, e.g. `config(agents): drop stale frontmatter model fields so opencode.json governs agent models`.
- Leave `opencode.json` untouched unless a specific agent genuinely needs a new model mapping.

## This cycle's per-agent expectations (for reference — do not act, just confirm resolution)

The Komaroff–Dantzer cycle needs these agents resolvable after your fix:
- `literature-integrator` → `deepseek/deepseek-v4-pro` (Phase 1)
- `scientific-insight-generator` → `deepseek/deepseek-v4-pro` (Phase 4)
- `falsifiability-auditor` → `deepseek/deepseek-v4-pro` (Phase 5a)

## Report back

- Number of `.md` files modified (frontmatter only), grouped by chosen option.
- The `opencode models` output for any model you relied on.
- Confirmation that a previously-failing subagent now resolves.
- Any agent that has NO `agent.<name>.model` in `opencode.json` after removal (falls back to invoking model).
