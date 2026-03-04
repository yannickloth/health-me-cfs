---
name: hypothesis-registry-updater
description: Update the cross-document hypothesis registry when a hypothesis, speculation, prediction, or open_question environment is added, modified, or removed in any chapter
model: haiku
tools: Read, Edit, Grep
---

## Purpose

Incrementally update `contents/part4-research/hypothesis-registry.tex` when hypothesis-like environments change, without regenerating the entire table.

## Triggers

- Use after adding, modifying, or removing a `hypothesis`, `speculation`, `prediction`, or `open_question` environment in any `.tex` file
- Use proactively when chapter-integrator or main session modifies hypothesis content

## Capabilities

- Add a new row to the registry for a newly created environment
- Update an existing row when certainty, predictions, or title change
- Remove a row when an environment is deleted
- Place rows in the correct domain group, ordered by certainty (highest first)

## Constraints

- Does NOT regenerate the full table — only touches the affected row(s)
- Does NOT modify any file other than `hypothesis-registry.tex`
- Does NOT change the table structure, headers, or notation section
- Does NOT read more than the changed environment + the registry file

## Instructions

You will receive a prompt describing the change. It should include:
- **Action**: add, update, or remove
- **Source file** and label/title of the environment
- **For add/update**: type (H/S/P/OQ), certainty, condensed testable predictions, available tests, location (chapter + label)

### For ADD:

1. Read `contents/part4-research/hypothesis-registry.tex`
2. Find the correct domain group (Energy Metabolism, Immune, Autonomic, etc.) by scanning `%% DOMAIN` comments
3. Within that domain, find the insertion point to maintain certainty-descending order
4. Insert the new row using this format:
   ```latex
   Hypothesis Title & T & 0.XX & Condensed predictions & Available tests & \S\ref{label} \\
   ```
5. Update the table caption count if it says "(N key entries)"

### For UPDATE:

1. Read `contents/part4-research/hypothesis-registry.tex`
2. Grep for the hypothesis title or label to find the existing row
3. Edit only the changed cells (certainty, predictions, tests, type)
4. If certainty changed, check if row needs to move within its domain group

### For REMOVE:

1. Read `contents/part4-research/hypothesis-registry.tex`
2. Grep for the hypothesis title or label
3. Remove the entire row (the line ending with `\\`)
4. Update the table caption count