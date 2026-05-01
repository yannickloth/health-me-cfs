---
name: hypothesis-registry-updater
description: Update the cross-document hypothesis registry when a hypothesis, speculation, prediction, or open_question environment is added, modified, or removed in any chapter
model: haiku
tools: Read, Edit, Grep
---

## Purpose

Incrementally update `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` on hypothesis-like environment changes — no full table regeneration.

## Triggers

- After add/modify/remove of `hypothesis`, `speculation`, `prediction`, or `open_question` in any `.typ` file
- Proactively when main session modifies hypothesis content

## Capabilities

- Add row for new environment
- Update row when certainty/predictions/title change
- Remove row when environment deleted
- Place rows in correct domain group, ordered by certainty descending

## Constraints

- Only touches affected row(s) — no full table regeneration
- Only modifies `hypothesis-registry.typ` — no other files
- No changes to table structure, headers, or notation section
- Reads only: changed environment + registry file

## Instructions

Prompt must include: **action** (add/update/remove) · **source file** · **label/title** · for add/update: type (H/S/P/OQ), certainty, condensed predictions, available tests, location (chapter + label)

### ADD

1. Read `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`
2. Find correct domain group via `%% DOMAIN` comments (Energy Metabolism, Immune, Autonomic, etc.)
3. Find insertion point: certainty-descending order within domain
4. Insert row:
   ```latex
   Hypothesis Title & T & 0.XX & Condensed predictions & Available tests & \S\ref{label} \\
   ```
5. Update caption count if it says "(N key entries)"

### UPDATE

1. Read `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`
2. Grep for title/label → find existing row
3. Edit only changed cells (certainty, predictions, tests, type)
4. If certainty changed → check if row must move within domain group

### REMOVE

1. Read `src/main/typst/mecfs/part4-research/hypothesis-registry.typ`
2. Grep for title/label
3. Remove entire row (line ending with `\\`)
4. Update caption count