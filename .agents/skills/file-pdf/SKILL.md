---
name: file-pdf
description: Re-file an already-downloaded PDF into the Literature/ tree under the correct thematic subfolder, renamed to the AuthorYEARkeyword bib-key convention. Use when a PDF sits loose at Literature/ root (or downloads/) with a long human-readable name and needs filing. Does NOT do literature search or bibliography work — that is literature-integrator's full pipeline.
---

File a loose PDF into the `Literature/` tree so it traces 1:1 to its bib key.

**Scope**: $ARGUMENTS (the PDF path, or topic hint. If a topic/DOI is given, resolve author+year first.)

## Step 1 — Identify paper

From the PDF filename / title / DOI:
- First author surname
- Publication year
- Short title keyword (the "keyword" in the `AuthorYEARkeyword` bib key)

**Bib key = folder name = PDF stem = `AuthorYEARkeyword`** — surname capitalized, no spaces/underscores/punctuation (matches the `bib/*.bib` `AuthorYEARkeyword` convention in `/integrate-topic`). Example: `Bakken2026RecoveryConceivable`.

**Naming goal: human findability.** Use a name a person can recognize at a glance (author + year + topic keyword). NEVER use a publishing-platform technical ID — no DOIs with slashes, no article numbers (`2745089`), no `10.1080_...` strings, no UUIDs. If the bib key already exists, reuse it exactly; otherwise derive it from author/year/keyword.

## Step 2 — Choose category subfolder

Pick the existing `Literature/` subfolder that fits the paper's domain:

| Domain | Subfolder |
|--------|-----------|
| Immune / autoimmune | `immune-dysfunction/` |
| Neurology / brain / ANS | `neurological/` |
| Endocrine / hormones | `endocrine/` |
| Genetics / GWAS | `genetics/` |
| Epidemiology / prevalence | `epidemiology/` |
| Comorbid conditions | `comorbidities/` |
| Clinical / intervention trials | `clinical-studies/` |
| Treatment / drug | `treatments/` |
| Mechanism / pathway | `mechanisms/` |
| Pathophysiology (energy, muscle) | `pathophysiology/` |
| Biomarkers | `biomarkers/` |
| Reviews / guidelines | `reviews/` / `clinical-guidelines/` |
| Qualitative / social / stigma / HCP perspectives | `sociology/` |
| Severe care / bedbound | `severe-care/` |
| Prognosis / natural history | `severity-prognosis/` |

Check `ls Literature/` for the full current list; reuse before creating new. New thematic folder only if nothing fits.

## Step 3 — Move + rename

```bash
mkdir -p Literature/<category>/<BibKey>/
mv "<loose-pdf-path>" "Literature/<category>/<BibKey>/<BibKey>.pdf"
```

- Folder name == PDF stem == bib key (no `[Author]_[Year]` underscore variant for new filings).
- If the paper folder already exists (prior `abstract.txt`/`notes.md`), reuse it — do not create a duplicate folder under a different name.

## Step 4 — Optional sidecar files

Only when asked (or when filing is part of a literature-integration run, in which case defer to `literature-integrator`'s Phase 2 format):

- `abstract.txt` — plain-text abstract
- `notes.md` — key points + methodology (see `literature-integrator.md` Phase 3)

## Report

- Filed to: `Literature/<category>/<BibKey>/<BibKey>.pdf`
- Bib key (for later citation): `<BibKey>`
- Category chosen: `<category>` (reason if non-obvious)
