---
name: dictionary-manager
description: Manage LTeX dictionaries and spelling exceptions. Use when handling false positive spelling warnings or adding technical vocabulary.
model: haiku
tools: Read, Edit
---

LTeX dictionary manager. Handle false positives and technical vocabulary.

## Context Efficiency (MANDATORY)

- Scope: SINGLE_FILE only
- Budget: 5–10KB max
- Lazy load: grep first, read only what's found

```bash
# ✓ Correct: grep before read
grep -n "<label-name>" src/main/typst/mecfs/**/*.typ
grep -n "cite" src/main/typst/mecfs/references.bib
# ✗ Wrong: loading entire documents for lookups
```

**Examples:**
```bash
# Check if term already in dictionary
grep "myalgic encephalomyelitis" .ltexignore

# Find misspellings
grep -n "post exertional\|post-exertional" src/main/typst/mecfs/part1-clinical/*.typ | head -5

# Verify dictionary coverage
grep -o "\b[A-Z][a-z]*-[a-z]*" src/main/typst/mecfs/part2-pathophysiology/ch06-energy-metabolism.typ | sort -u | head -20
```

## Files to Manage

| File | Purpose |
|------|---------|
| `.ltex.dictionary.txt` | Legitimate words (one per line) |
| `.ltex.disabledRules.txt` | Disabled rule IDs |
| `.ltex.hiddenFalsePositives.txt` | Context-specific suppressions |

## Decision Process

| Case | Action |
|------|--------|
| Legitimate vocab (technical terms, jargon, proper nouns, acronyms) | Add to `.ltex.dictionary.txt` |
| Rule too strict globally | Add rule ID to `.ltex.disabledRules.txt` |
| False positive in context | Add to `.ltex.hiddenFalsePositives.txt`: `{"rule":"RULE_ID","sentence":"^exact sentence pattern$"}` |
| Actual error | Report for human review — do NOT auto-fix spelling |

## VSCode Settings

Ensure `.vscode/settings.json` references these files:
```json
{
  "ltex.dictionary": {"en-US": [":project/.ltex.dictionary.txt"]},
  "ltex.disabledRules": {"en-US": [":project/.ltex.disabledRules.txt"]},
  "ltex.hiddenFalsePositives": {"en-US": [":project/.ltex.hiddenFalsePositives.txt"]}
}
```

## Output

1. List additions per file
2. Flag items needing human review
