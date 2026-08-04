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

### 2. Affiliation error: Yannick Loth — wrong country

The PDF says "Independent researcher, Luxemburg" — **two errors**: (1) misspelled country ("Luxemburg" should be "Luxembourg"), and (2) wrong country entirely. Yannick Loth is in **Messancy, Belgium**. The repo `main.tex` correctly says "Belgium". Geneviève's compiled version introduced this error.

### 3. Reference count mismatch

Body text cites references 1–18. The repo `refs.bib` has 18 entries but with different papers and numbering. Geneviève compiled with her own bib file. Expected, but the two bib files need reconciliation if versions merge.

### 4. Typo in Figure 2 caption: "immune immune"

Figure 2 caption reads: "suggesting that its sequestration could broadly impair **immune immune** cell development and function" — duplicated word.

### 5. Body text is left-aligned — consider justified paragraphs

The body text uses left alignment (ragged right). For a conference abstract intended for print, justified text gives a more formal, polished appearance and improves readability in narrow columns. This is cosmetic but standard for scientific publications.

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

### Figure 1 — Euchromatin, heterochromatin, satellite repeat sequences

**Image quality:** Good. Four panels, each with a distinct purpose.

| Panel | Content | Physician accessibility |
|-------|---------|------------------------|
| (a) | EM micrograph of B lymphocyte nucleus, annotated with blue outline (cell membrane), red dashed ring (heterochromatin at nuclear periphery), lighter center (euchromatin) | **Good.** The EM image is familiar territory for physicians (histology). Annotations are clear and the caption explains what each compartment means. |
| (b) | Karyotype — all 23 chromosome pairs with colored FISH probes highlighting telomeres (blue), centromeres (red), rDNA (green), HSAT2 (orange), HSAT3 (yellow) | **Good.** Karyotypes are standard clinical genetics. The color-coded probes are intuitive. Legend in the panel is small but readable. |
| (c) | Enlarged chromosome 1 ideogram with Giemsa banding, HSAT2 locus marked with orange lines near the centromere | **Acceptable.** The ideogram style is clinical genetics standard. The HSAT2 marker is clearly labeled. |
| (d) | Genome-wide bar chart showing HSAT1A/B/2/3 distribution across all chromosomes, with nested tandem repeat schematic inset | **Dense.** This panel packs a lot: bar chart + legend + inset schematic. The "Minus/Plus" strand notation and "canonical repeat polarity" are molecular genetics jargon that will lose most physicians. The inset showing nested tandem repeats is helpful conceptually but small. |

**Verdict:** Panels (a)–(c) work well for physicians. Panel (d) is too dense — consider splitting or simplifying the legend text ("Strand with canonical repeat polarity" → "direction of repeats").

---

### Figure 2 — Unfolding of HSAT2 arrays and production of HSAT2 RNAs

**Image quality:** Clear layout, but content is the densest of all four figures.

| Panel | Content | Physician accessibility |
|-------|---------|------------------------|
| (a) | Red bar (HSAT2 DNA) surrounded by colored dots (proteins), with bullet points: "DNA CpG methylated", "DNA largely inaccessible, inactive" | **Acceptable.** Simple visual metaphor (bar = DNA, dots = proteins). The bullet points are clear. "CpG methylated" is jargon but at least it's brief. |
| (b) | Green tangled lines (unfolded HSAT2 DNA) with same colored dots now scattered/absorbed. Bullet points list what gets sequestered: ETS family transcription factors, CTCF, MeCP2, PRC1 | **Problematic.** The visual is clear (tangled = unfolded), but the sequestration list reads like a molecular biology exam. A physician will not know what CTCF, MeCP2, or PRC1 are. The caption attempts to explain PU.1 and MeCP2 in clinical terms (immune cells, neurons/stem cells) which is good, but the figure itself doesn't carry this. |
| (c) | Horizontal brown bars of varying lengths (HSAT2 RNAs), with bullet points: "SEQUESTERS ETS family factors, CTCF, MeCP2, PRC1 / SEQUESTERS RNA Splicing factors / SEQUESTERS miRNAs / STIMULATES: Innate Immunity Pathway via cytoplasmic sensors" | **Problematic.** "SEQUESTERS" appears 3 times without explanation. "miRNAs" and "RNA Splicing factors" are undefined. "Innate Immunity Pathway via cytoplasmic sensors" is the most clinically relevant point but is buried at the bottom in the smallest text. |

**Key problem for non-scientists:** The figure tells a 3-step story (silent DNA → unfolded DNA → RNA production) but each step is annotated with molecular biology jargon. A physician looking at this figure will understand the *shape* of the story (locked → open → output) but not the *content* (what is being sequestered and why it matters clinically).

**Suggestion:** The caption already does a better job than the figure annotations of explaining clinical relevance (PU.1 → immune cells, MeCP2 → neurons). Consider adding a single-line plain-language summary at the top of the figure: "When HSAT2 DNA unfolds, it traps proteins that normally control genes — including proteins essential for immune cell development (PU.1) and brain cell function (MeCP2)."

---

### Figure 3 — Cell infected by a herpesvirus

**Image quality:** Clean, simple schematic. Single panel.

| Content | Physician accessibility |
|---------|------------------------|
| Circle (cell) with red dashed nuclear membrane, orange dots inside (centromere clusters), yellow starbursts (HSAT2 RNA foci) | **Good.** The visual metaphor is immediately readable: dots = normal centromeres, starbursts = sites of active HSAT2 production. Labels are minimal and clear ("Centromere clusters (alpha-SAT DNA)", "RNA foci HSAT2"). |

**Verdict:** This is the most accessible figure. A physician can look at it and immediately grasp: "herpesvirus disrupts centromeres → HSAT2 RNA is produced at specific sites." The caption reinforces this well. No changes needed.

---

### Figure 4 — HSAT2 RNA propagation between cells

**Image quality:** Clear two-cell schematic with numbered steps.

| Content | Physician accessibility |
|---------|------------------------|
| Left cell labeled "Cancer cell" with nucleus showing HSAT2 RNA foci (step 1), RNAs encapsulated in vesicles (step 2), vesicles secreted (step 3), innate immunity pathway activated (steps 7–8 with interferon response), and downstream "Interferon, chemokines — Alarm the immune system" | **Good, but labeling is confusing.** The cell is labeled "Cancer cell" — but this figure is supposed to illustrate how HSAT2 spreads in *both* cancer AND post-viral contexts. For a paper about Long COVID/ME/CFS, labeling the source cell "Cancer cell" is misleading. A physician will think: "This figure is about cancer, not about my patients." The numbered steps (1–8) are helpful for following the sequence. |
| Right cell labeled "Neighboring cell" receiving HSAT2 RNAs (step 4–5), with "HSAT2 RNA-containing EVs may disseminate through the blood and lymphatic circulation" (step 6) | **Good.** The propagation concept is clearly shown. The blood/lymphatic dissemination arrow is clinically intuitive. |

**Key problems:**
1. **"Cancer cell" label** — should be something like "HSAT2-producing cell" or "Infected/activated cell" to cover both cancer and post-viral contexts
2. **Caption is truncated** ("Schematic representation of …") — needs full text
3. **Steps 7 and 8 are inside the left cell but visually separated** — the interferon response arrows (green) flow downward from the nucleus area, and "Interferon response / Reprograms gene expression" (step 8) is placed far to the left, potentially confusing the reading order

**Verdict:** Good visual concept, but the "Cancer cell" label is a framing error for this paper's audience. The truncated caption makes it impossible to fully assess.

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
| Figure 1 | Panels (a)–(c) accessible; panel (d) legend too technical |
| Figure 2 | Visually clear but annotations are molecular biology jargon — physicians will miss the clinical relevance |
| Figure 3 | Most accessible figure — no changes needed |
| Figure 4 | Good visual concept, but "Cancer cell" label is wrong framing for Long COVID/ME/CFS audience; caption truncated |
| Affiliation error | "Luxemburg" → should be "Messancy, Belgium" |
| Formatting | Body text left-aligned — consider justified paragraphs |
| Reference divergence | Geneviève's refs ≠ repo refs.bib — reconcile if merging versions |

---

## Priority Actions Before Submission

1. Write Figure 4 caption (currently truncated)
2. Fix Yannick Loth affiliation: "Luxemburg" → "Messancy, Belgium"
3. Add inline glosses for: pericentromeric, transcriptionally silenced, epigenetic erosion, immune exhaustion, cold tumor
4. Add plain-language summary to Figure 2 (sequestration → clinical impact)
5. Change Figure 4 "Cancer cell" label to "HSAT2-producing cell" or equivalent
6. Simplify Figure 1(d) legend text ("Strand with canonical repeat polarity" → plain language)
7. Fix "immune immune" duplication in Figure 2 caption
8. Switch body text to justified paragraphs
9. Strengthen herpesvirus reactivation claims with primary prevalence studies (see below)

---

## Herpesvirus Reactivation Prevalence — Literature Gap

The paper states: "frequent observation that Long COVID and ME/CFS emerge following reactivation of latent herpesviruses" and lists HSV-1, EBV, HHV-6, and HCMV as viruses "reported to reactivate in Long COVID." However, **no specific prevalence numbers are cited**, and the two support citations (`Davis2021LongCOVIDreview`, `Komaroff2021PAISreview`) are general reviews — not primary reactivation studies. The audit flagged this gap in 2026-07-21 (`C1 Medium`).

### Missing primary evidence — Long COVID

| Study | n | Findings |
|-------|---|----------|
| **Gold et al. 2021** (*Pathogens*) | 185 surveyed, 68 serology | **66.7% (20/30)** long COVID subjects showed EBV reactivation (EA-D IgG or VCA IgM) vs **10% (2/20)** controls. *p < 0.001* |
| **Butt et al. 2024** (*Viruses*) | 96 acute, 62 followed 20 months | High EBV antibodies → **>4× odds of fatigue** (acute + follow-up). High CMV antibodies → **>3× odds of concentration problems.** HSV-1/2 no association |
| **Maguire et al. 2024** (*bioRxiv*, IMPACC, n=1,154) | 1,154 hospitalized COVID-19 | Significant *Herpesviridae* reactivation during acute COVID-19. Persistent *Anelloviridae* at ≥3 months → PASC fatigue |

### Missing primary evidence — ME/CFS

| Study | n | Findings |
|-------|---|----------|
| **Palomo et al. 2026** | 40 ME/CFS, 16 controls, 873 longitudinal samples | **72.5%** ME/CFS co-expressed antibodies to multiple herpesviruses (EBV, HHV-6, VZV) vs **31%** controls (*p < 0.001*) |
| **Hannestad et al. 2025** | 13 ME/CFS, 16 controls | Higher EBV viral load in ME/CFS sputum (*p = 0.026*) |
| **Liu et al. 2023** (*medRxiv*) | — | Heightened EBV and HSV-1 reactivation in both ME/CFS and long COVID |
| **Ruiz-Pablos et al. 2021** | Post-EBV mononucleosis | ~10% develop ME/CFS at 6 months post-acute EBV infection |

### Important negative studies (for balanced citation)

| Study | n | Findings |
|-------|---|----------|
| **Cliff et al. 2019** (UK Biobank) | 251 ME/CFS + 107 HC + 46 MS | No herpesvirus seroprevalence differences (largest null) |
| **Buchwald et al. 1996** | n=548 | No HSV-1/2 seroprevalence differences |

**Recommendation:** Add Gold et al. 2021 and Butt et al. 2024 to `refs.bib` and cite them for the reactivation claim instead of (or alongside) the current review-only citations. The 66.7% vs 10% EBV reactivation figure from Gold et al. is the strongest direct evidence supporting the paper's claim.
