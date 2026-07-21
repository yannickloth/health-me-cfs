# Audit Findings — Long Abstract (`main.tex`)

Audit date: 2026-07-21 · Scope: single file, content + LaTeX + citations · 20 findings

---

## LaTeX / Compilation

| # | Severity | Finding |
|---|----------|---------|
| L1 | **High** | `refs.bib` is a manual copy of `../paper/refs.bib` — will drift out of sync. Use `\bibliography{../paper/refs}` or symlink. |
| L2 | Low | Stale `main.bbl` from cleaner compile — fine, but `latexmk -pdf -g` rebuilt from scratch confirms no latent issues. |
| L3 | Low | Figure placement: all 5 use `[htbp]`. With 5 figures + short text, floats may pile up at section breaks. Consider `[H]` (float package) or `[htbp!]` for tighter control once images are real. |

---

## Citation / Reference Discipline

| # | Severity | Finding |
|---|----------|---------|
| C1 | **Medium** | `Komaroff2021PAISreview` is cited for "herpesvirus reactivation in Long COVID." That paper is about ME/CFS ↔ Long COVID parallels, not a primary source on herpesvirus reactivation. The claim is true but the cite is weak — a herpesvirus-specific paper (e.g., Gold et al. 2021 on EBV reactivation in Long COVID) would be stronger. |
| C2 | **Medium** | `Davis2021LongCOVIDreview` is cited for "brainstem inflammation" in the figure caption (l.163–164) but no `\cite` appears in the body paragraph about SARS-CoV-2 infecting the brainstem (there is no body paragraph about this — the brainstem claim exists only in the Fig. 4 caption). The caption makes a factual claim the body text never states. Either add a sentence in the body or soften the caption. |
| C3 | Low | `Miyata2021CTCFsenescence` is cited for "CTCF sequestration alters genome-wide chromatin looping" but is primarily about senescence — CTCF sequestration by pericentromeric RNA in cancer is more directly from `Ninomiya2023CAST`. The cite is not wrong but is secondary. |
| C4 | Low | The herpesvirus latency list (l.146–151: HSV-1→sensory neurons, EBV→B cells, HHV-6→CNS, HCMV→myeloid/endothelial) has no citations. These are textbook facts but a clinician audience may appreciate a reference for "among herpesviruses reported to reactivate in Long COVID." |
| C5 | Info | Preprint entries (`Gerard2023CTCFpreprint`, `BonnetFourel2026ProAB`) are correctly flagged in the bib but this is never stated in the body text. The original paper's Acknowledgments note this — the long abstract has no Acknowledgments section. |

---

## Text / Content

| # | Severity | Finding |
|---|----------|---------|
| T1 | **Medium** | "short Perspective" (l.194) — the paper is titled "A New Hypothesis" and described as a "long abstract" in the file comment. "Perspective" is a specific article type; if this is a conference abstract, "Perspective" may be misleading. |
| T2 | **Medium** | No Acknowledgments section. The original paper includes thanks to Vourc'h, Seifert, and the AI disclosure statement. Geneviève's `long_abstract_original.md` also has no acknowledgments, so this is fidelity to source — but conference submissions typically include them. |
| T3 | Low | "extracellular HSAT2 RNAs" (l.231) — "extracellular" is ambiguous. EV-packaged? Free in circulation? Both? The therapeutic speculation would benefit from specifying *how* neutralization might work (anti-HSAT2 antibodies, EV depletion, etc.) since this is the clinical punchline. |
| T4 | Low | Repetition: l.130–137 ("here we propose… reactivation of latent herpesviruses") is nearly duplicated at l.186–192 ("by analogy with cancer… immune exhaustion"). Different phrasing but same argument. This is likely intentional from the original text, but some readers will notice. |
| T5 | Low | "1.5% of the human genome" (l.50) — the figure caption says "~1.5%" but the body says "approximately 1.5%." Inconsistent sig-fig styling (body vs caption). |
| T6 | Low | "transcriptionally silenced through DNA methylation and packaging into a compact chromatin state known as heterochromatin" (l.51–53) — H3K9me3 is in the caption but not the body. The body introduces heterochromatin but not the specific mark that makes it transcriptionally repressive. A clinician won't know H3K9me3 from the caption alone. |

---

## Figure / Caption Quality

| # | Severity | Finding |
|---|----------|---------|
| F1 | Low | The figure captions are significantly more detailed than the body text they annotate. Fig. 4 caption mentions "SARS-CoV-2-induced brainstem inflammation" — this claim is nowhere in the body. The caption introduces facts the text doesn't support. |
| F2 | Low | Fig. 3 caption: "MDSCs in turn suppress NK cells and drive CD8+ T-cell exhaustion via soluble mediators" — but the body text (l.101–107) only says "impair several layers of the body's defense mechanisms." The caption is more specific than the text. |
| F3 | Low | Five figures for a 500-word text means figures dominate page count. Consider whether Figs. 2 & 3 could merge (molecular mechanisms + immune impairment are two halves of the same cancer story). Geneviève's plan explicitly wants 5 figures, so this is fidelity, not error. |

---

## Summary

| Category | Count |
|----------|-------|
| LaTeX/compilation | 3 |
| Citation/reference | 5 |
| Text/content | 6 |
| Figure/caption | 3 |
| **Total** | **17** |

**Verdict:** The document is compilation-clean, citation-complete, and faithful to Geneviève's source text. The dominant class of finding is **figure captions being more specific than body text** (F1, F2) and **a few citation-to-claim mismatches** (C1, C2). None block submission; all are improvements for a stronger final version.

**Priority fixes (if any changes are made):**
1. Add body-text sentence about brainstem inflammation so Fig. 4 caption isn't the sole source (C2/F1)
2. Replace or supplement `Komaroff2021PAISreview` with a herpesvirus-reactivation-in-COVID reference (C1)
3. Add Acknowledgments section (T2)
4. Runtime: symlink `refs.bib` to `../paper/refs.bib` (L1)
