# Accessibility Review — HSAT2 Long Abstract (Final V2)

Reviewed: 20260804_ABST-Final-V2-Could HSAT2 Repeat RNAs Drive Long COVID and ME_CFS_ A New Hypothesis-4figs-2aout.pdf
Date: 2026-08-04
Scope: Text and figure accessibility for physicians / non-scientists

---

## Document Structure

- Pages 1–2: Body text (all prose, ~1,300 words)
- Pages 3–4: Figures 1–4 (each full-page)
- Page 5: Figure 4 continuation (large blank area; PDF ends abruptly)

---

## Critical Issues

### 1. Figure 4 caption is truncated (page 5)

> "Figure 4. Schematic representation of …"

The caption literally ends with "…" — nothing follows. The figure shows a cancer cell releasing HSAT2-laden EVs that propagate to a neighboring cell, but the caption is missing entirely. **Submission blocker.**

### 2. Affiliation typo: "Luxemburg"

Yannick Loth's affiliation says "Independent researcher, Luxemburg" — should be **Luxembourg**. The repo `main.tex` says "Belgium", so the PDF was compiled from Geneviève's version, not ours. Discrepancy needs reconciliation.

### 3. Reference count mismatch

Body text cites references 1–18. The repo `refs.bib` has 18 entries but with different papers and numbering. Geneviève compiled with her own bib file. Expected, but the two bib files need reconciliation if versions merge.

---

## Accessibility Assessment — What Works

- Opening paragraph (bolded) is an excellent abstract: immediately states what HSAT2 is, what happens in cancer, and the proposal for Long COVID/ME/CFS. A physician can read just this and get the core hypothesis.
- Bold "Here we propose" paragraph serves as a clear thesis restatement midway.
- Bold text is used effectively for key claims ("HSAT2 RNAs may be induced upon herpesvirus infection or reactivation", "This may therefore provide an explanation…").
- Narrative arc (normal → cancer → herpesvirus trigger → self-sustaining loop → therapeutic hope) is logical and easy to follow.
- No unexplained jargon in the body text. Terms like "heterochromatin" are introduced with context.
- Closing paragraph about recovery and therapeutic perspective is clear and hopeful without overclaiming.

---

## Accessibility Assessment — What Needs Work

| # | Severity | Finding | Suggestion |
|---|----------|---------|------------|
| A1 | **High** | "pericentromeric" appears 3 times before any explanation of what a centromere is. Figure 1 helps, but the body text should say "near the centromere (the pinched waist of a chromosome)" or similar | Add brief parenthetical on first use |
| A2 | **High** | "transcriptionally silenced through DNA methylation" — a physician knows DNA methylation vaguely but "transcriptionally silenced" is molecular biology jargon | Simplify: "normally kept quiet through chemical marks (DNA methylation) that prevent it from being read" |
| A3 | **High** | "epigenetic erosion" (line 62) — undefined, sounds like geology. Physicians may not know "epigenetic" | Replace or define: "progressive loss of the chemical marks that normally keep HSAT2 quiet" |
| A4 | **Medium** | "chromatin" used 5 times without explanation. Figure 1 defines euchromatin/heterochromatin, but the body text uses "chromatin composition" without context | Brief inline gloss: "chromatin (the packaging of DNA)" |
| A5 | **Medium** | "extracellular vesicles (EVs)" — well explained, but the abbreviation "EVs" then appears 8 more times. For a short text, consider using "vesicles" after first definition | Optional simplification |
| A6 | **Medium** | "innate immunity" is explained well, but "immune exhaustion" is not. Physicians may confuse it with general fatigue | One-line: "immune exhaustion (immune cells that can no longer fight effectively)" |
| A7 | **Medium** | "cold tumor" is quoted but not explained until the next sentence. The explanation "profoundly immunosuppressive microenvironment" is itself jargon | Simplify: "a tumor the immune system has abandoned" or "a tumor that hides from immune attack" |
| A8 | **Medium** | "microRNAs" (line 69) — introduced as "other regulatory RNAs, such as microRNAs" but never explained | Brief gloss: "small RNA molecules that fine-tune gene activity" |
| A9 | Low | "GGAA motif" and "GGAAT" (Figure captions only) — fine for figures, but the body text doesn't need to reference them | No change needed |
| A10 | Low | "post-acute infection syndromes (PAIS)" — defined at first use, good | No change |

---

## Figure-by-Figure Assessment

| Figure | Assessment |
|--------|------------|
| **Fig 1** | Good — the karyotype and B lymphocyte images are recognizable to physicians. The caption is long but clear. Panel (d) is dense but the legend helps. The "nested tandem repeats" inset is small but acceptable. |
| **Fig 2** | **Problematic for non-scientists.** Terms like "ETS-family transcription factors", "CTCF", "MeCP2", "PRC1", "GGAA motif" are molecular biology jargon. The caption is 150+ words of dense mechanism. Physicians will skip this. Consider adding a one-sentence plain-language summary at the start of the caption, or moving mechanism detail to a box. |
| **Fig 3** | Good — the schematic is simple and the caption explains the concept clearly. "RNA foci" is explained. This figure works well for physicians. |
| **Fig 4** | Caption is truncated ("…"), so impossible to assess. The figure itself is clear (cancer cell → EVs → neighboring cell) but needs its caption. |

---

## Specific Line-by-Line Suggestions

**Line 22–24 (second paragraph):**
> "a pericentromeric repeat representing approximately 1.5% of the human genome"

→ "a repetitive DNA sequence located near the centromere (the narrow waist of each chromosome), representing approximately 1.5% of the human genome"

**Line 23–24:**
> "transcriptionally silenced through DNA methylation and packaging into a compact chromatin state known as heterochromatin"

→ "normally kept inactive through chemical marks (DNA methylation) that lock it into a compact, unreadable form called heterochromatin"

**Line 32–33:**
> "tumors expressing HSAT2 exhibit a 'cold tumor' phenotype, characterized by a profoundly immunosuppressive microenvironment"

→ "tumors expressing HSAT2 are 'cold' — they have shut down the local immune response, creating an environment where immune cells cannot attack"

**Line 61–63:**
> "cumulative changes in chromatin composition and DNA methylation of HSAT2 repeats may become sufficiently extensive to trigger significant epigenetic erosion"

→ "repeated infections may progressively strip away the protective chemical marks on HSAT2, until the cell loses its ability to keep these sequences quiet"

**Line 69:**
> "other regulatory RNAs, such as microRNAs"

→ "other regulatory RNAs (small molecules that fine-tune gene activity), such as microRNAs"

**Line 72:**
> "driving persistent immune dysregulation, particularly immune exhaustion"

→ "driving persistent immune dysfunction, particularly immune exhaustion (where immune cells lose their ability to respond)"

---

## Summary

| Category | Finding |
|----------|---------|
| Overall arc | Excellent — clear, logical, compelling |
| Body text accessibility | Good for physicians with basic biology knowledge; ~5 terms need inline glossing |
| Figure 1 | Accessible to physicians |
| Figure 2 | Too dense for non-scientists — needs plain-language summary |
| Figure 3 | Accessible |
| Figure 4 | Caption missing — submission blocker |
| Typo | "Luxemburg" → "Luxembourg" |
| Reference divergence | Geneviève's refs ≠ repo refs.bib — reconcile if merging versions |

---

## Priority Actions Before Submission

1. Write Figure 4 caption
2. Fix "Luxemburg" → "Luxembourg"
3. Add inline glosses for: pericentromeric, transcriptionally silenced, epigenetic erosion, immune exhaustion, cold tumor
4. Consider a one-sentence plain-language lead for Figure 2's caption
