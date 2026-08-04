---
name: typst-write
description: Write or edit Typst (.typ) files with guaranteed syntax correctness. Uses pre-read discipline: reads syntax rules first, verifies against checklist, then writes content.
---

# Typst Write — Syntax-Correct Typst Content

Write or edit Typst (.typ) files with guaranteed syntax correctness.

## Usage

```
/typst-write <path-to-file>
/typst-write edit <path-to-file>
```

## Process

### 1. Pre-read Syntax Rules
```bash
Read the SKILL.md checklist in this same file before writing
```

### 2. Verify Against Checklist
Check all syntax patterns before writing:
- [ ] Citations use `@label` format only
- [ ] Labels use `<label>` format, placed after closing bracket
- [ ] Math variables use `$...$`, literal dollars escaped as `\$`
- [ ] Environment names in parentheses: `#begin(itemize)` not `#begin itemize`
- [ ] Brackets balanced: count `]` matches `[`
- [ ] No Markdown backticks: use `#raw.code` or `#raw.codeblock`
- [ ] Heading hierarchy: `=` `==` `===` `====`
- [ ] Import paths include `.typ` extension
- [ ] Text formatting: `_emphasis_`, `*strong*`, not `**text**`

### 3. Verify Against Existing Code
```bash
# Check citation patterns
grep -rn "@[a-zA-Z]" src/main/typst/mecfs/appendices/ | head -3

# Check environment usage
grep -rn "warning-env" src/main/typst/mecfs/ | head -5

# Check a known-good chapter's includes
head -3 src/main/typst/mecfs/part1-clinical/ch01-introduction/ch01-introduction.typ
```

### 4. Write/Edit Content
After verification passes, write or edit the .typ file following:
- One sentence per line (better diffs)
- No trailing whitespace
- Empty lines between paragraphs
- Correct environment syntax
- Proper citation and label format

### 5. Build Verification
```bash
nix build   # PDF build; use nix build .#web for the site
```

## Output

```
typst-write: PASS | FAIL
File: {target-file}
Syntax verification: OK | FAILED
Build: OK | FAILED
Errors: {list if any}
```

## Critical Syntax Rules

### Citations
✓ `@label` only
✗ `@label@`, `[@label]`, `@label.` (period attached)

### Math
✓ `$variable$` for math mode
✓ `\$100` for literal dollar signs
✗ Unescaped `$` in prose

### Environments
✓ `#warning-env[ content ] <label>`
✓ `#begin(itemize)` ... `#end(itemize)`
✗ `#begin itemize` (missing parentheses)
✗ `#warning-env[ content ] <label>` (extra bracket)

### Code blocks
✓ `#raw.code[...]` or `#raw.codeblock[...]`
✗ ```typst ... ``` (Markdown backticks)

### Text formatting
✓ `_emphasis_`, `*strong*`
✗ `**bold**`, `__underline__`

## Error Recovery

If build fails or syntax verification fails:
1. Review error message
2. Identify syntax violation
3. Check against the syntax checklist in this SKILL.md file
4. Fix and retry verification
5. Rebuild
