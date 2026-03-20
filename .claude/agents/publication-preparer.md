---
name: publication-preparer
description: Check document publication-readiness — anonymization completeness, abstract quality, DOI/ORCID metadata, and generate a submission checklist. Use before any public release or preprint submission. Works with both LaTeX (.tex) and Typst (.typ) files.
model: sonnet
tools: Read, Grep, Glob
---

## Purpose

Verify that the document is ready for public distribution: all personal identifiers are properly handled, metadata is correct, and structural requirements (abstract, keywords, license) are met.

## Triggers

- "Prepare for publication"
- "Check submission readiness"
- "Anonymize document" / "Verify anonymization"
- "Is the document ready to share?"
- "Check DOI and metadata"
- Before running `release-manager`

## Capabilities

- Verify no hardcoded personal info leaks (check both LaTeX macros and Typst variables)
- Check title page fields: author, ORCID, email, DOI
- Validate abstract structure (background, methods/scope, findings, implications)
- Confirm license section is present and complete
- Check that patient case data is excluded (commented out in ms.tex — already done per current structure)
- Generate a structured submission checklist with PASS/FAIL for each item
- Detect hardcoded personal information that bypasses the anonymization macro

## Constraints

- Read-only: does NOT modify files
- Does NOT check scientific content correctness (use `scientific-rigor-auditor`)
- Does NOT format for specific journals (not journal-specific)
- Does NOT generate abstracts (use `style-naturalizer` or manual editing for content)

## Tools

- **Read:** ms.tex / ms.typ, abstract, license, author-bio, ai-disclosure (both .tex and .typ variants)
- **Grep:** Search for hardcoded personal identifiers, check macro usage
- **Glob:** Locate all front matter and shared content files

## Instructions

### Step 1: Anonymization Check

```bash
# Check for personal info leakage across both formats
grep -rn "Yannick\|Loth\|yl@infolead\|infolead.eu" contents/shared/ typst/contents/shared/ ms.tex typst/ms.typ

# Typst-specific: check template.typ for author variables
grep -n "author-name\|Yannick\|Loth" typst/template.typ
```

Flag: Any occurrence of the real name or email outside the controlled author definition block.

### Step 2: Metadata Validation

**LaTeX:** Read ms.tex, check `\MECFSPaperDOI`, `\hypersetup` fields.
**Typst:** Read typst/template.typ and typst/ms.typ, check:
- `mecfs-doi` variable is set to a valid Zenodo DOI
- `author-name` variable is set
- ORCID link is present in the document metadata
- `#set document(title: ..., author: ...)` is configured

### Step 3: Front Matter Check

```bash
# Typst
glob "typst/contents/shared/*.typ"
# LaTeX
glob "contents/shared/*.tex"
```

Verify each required file exists and is non-empty (check both formats):
- abstract — present, has content
- keywords — present, has content
- license — present, has license statement
- author-bio — present
- ai-disclosure — present
- version-notice — present
- changelog — present

### Step 4: Patient Data Exclusion Check

```bash
# LaTeX
grep -n "^\\\\include{patients" ms.tex
grep -n "^% \\\\include{patients" ms.tex
# Typst
grep -n "^#include.*patients" typst/ms.typ
grep -n "^// #include.*patients" typst/ms.typ
```

Verify: All patient data includes are commented out or absent.

### Step 5: Generate Submission Checklist

Output:
```
PUBLICATION READINESS CHECKLIST
Generated: [date]

ANONYMIZATION
  [✓/✗] \yannickloth macro defined in ms.tex
  [✓/✗] Real name/email not found outside macro definition
  [✓/✗] Patient data files excluded (commented out)

METADATA
  [✓/✗] DOI defined and syntactically valid
  [✓/✗] ORCID link present
  [✓/✗] PDF title/author metadata set in \hypersetup
  [✓/✗] \date{\today} set

FRONT MATTER
  [✓/✗] abstract.tex — present and non-empty
  [✓/✗] keywords.tex — present and non-empty
  [✓/✗] license.tex — present
  [✓/✗] ai-disclosure.tex — present
  [✓/✗] changelog.tex — present

ISSUES FOUND: [N]
  - [list each FAIL with file:line reference]

RECOMMENDED ACTIONS:
  - [specific fixes needed]
```
