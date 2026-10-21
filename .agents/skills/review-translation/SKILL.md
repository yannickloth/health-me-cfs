---
name: review-translation
description: Use this skill to audit translated content in this repo (en→de/fr/es/pt) — coordinates deterministic gate scripts and two auditor subagents covering fidelity, calques, glossary terminology, and safety polarity. Read-only audit; findings become drafts or debt-ledger rows. Use for "review translation", "audit [de/fr] translation", "translation QA".
---

Translation QA for this repo. Orchestrate gates + auditor agents. Read-only.

## Constraints

- ✗ Read-only. Never edit translated files — fixes are a separate user decision.
- ✗ Drafts-only. Translated articles and posts are outward-shaped — never post, send, or publish (norm 2).
- ✗ Never fabricate findings — verbatim quote pairs required.
- ✗ Never audit without the source text — request it if missing.
- ✗ Scope: only the translated files named in the request.
- Detect ≠ fixed: unfixed findings → row in `ops/debt-ledger.md` (norm 4).

## Inputs

| Input | Default |
|-------|---------|
| Target file | from request (`*-<lang>.md`, `src/main/quarto/{de,fr,es,pt}/**`, `src/main/web/{de,fr}/**`) |
| Source file | same stem, `-en` or no-suffix variant; ask if ambiguous |
| Language | de \| fr \| es \| pt (from filename/path) |
| Glossary | `src/main/resources/glossary-<lang>.json` |

## Pipeline (ordered — cheapest first)

| # | Step | Executor | Owns |
|---|------|----------|------|
| 1 | Deterministic gates | `python3 ops/scripts/fidelity_audit.py` · `calque_gate.py` · `dose_gate.py` · `acronym_gate.py` | numbers, citations, entities, known calques, doses, acronyms — rule tables are es/pt only; skip for de/fr |
| 2 | Terminology | main session | glossary concepts rendered consistently; proper-noun/medication conventions |
| 3 | Calque + idiom sweep | `translation-auditor` subagent (built-in) | idioms, metaphors, false friends, register — exhaustive sweep; one defect implies a class |
| 4 | Semantic fidelity | `translation-fidelity-auditor` subagent (global) | completeness, claim strength, negation, quantifiers, causal, conditionals, comparisons, numbers, warnings, fragments |
| 5 | Safety polarity | main session | patient-facing warnings (PEM/overexertion, medication cautions, "stop if / do not") keep full force; softening = critical |
| 6 | Close-out | main session | dedupe cross-agent overlap (register, inversions); verdict; debt-ledger rows with close condition |

Both agents in steps 3–4 are `mode: subagent` — invoke via the Task tool, never as primary agent.

## Gotchas

- Gate scripts have no de/fr rule tables today — de/fr runs start at step 2.
- `translation-fidelity-auditor` not registered in this session (created mid-session)? Read `~/.config/opencode/agent/translation-fidelity-auditor.md` and inline its checklist into a general subagent.
- Glossary JSONs are tooltip-injection data — keys are EN surface forms. Term inventory, not required renderings.
- If glossary files were edited: `node --test src/test/js/glossary-parity.test.js` must pass.
- Linked post variants (`*-post.md`) are separate files — audit separately if requested.

## Output

```
review-translation: PASS | PASS-with-minor | FAIL
Pair: <source> ↔ <target> (lang)
Gates: OK | N findings
Terminology: OK | N drift
Calques/idioms: N (exhaustive sweep: Y/N)
Fidelity: N critical · N major · N minor
Safety polarity: OK | N weakened
Debt-ledger rows: N appended (or none)
```
