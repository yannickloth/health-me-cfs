# Plan: Gut Mycobiome Alterations in ME/CFS

## Summary

Add a new subsection to ch11 covering the gut mycobiome — the fungal community of the GI tract.
Current ch11 content is almost exclusively bacterial. Candida overgrowth is a recurring clinical
observation in ME/CFS patients and practitioners, fungal dysbiosis alters immune tone, and
mycotoxins from fungal overgrowth may contribute to neurological and inflammatory symptoms.
Evidence is primarily clinical observation and case series with very limited controlled data;
certainty is low (0.30–0.35) and the content should use the `speculation` environment.

---

## What We Already Cover

**ch11-gut-microbiome.tex**:
- Line ~649: single mention of allicin as "antibacterial, antifungal" in SIBO treatment
- No other fungal content
- No Candida, no mycobiome, no mycotoxins

**ch07-immune-dysfunction.tex**:
- No mycobiome content

---

## What's Missing

1. **Normal gut mycobiome composition**: Candida, Saccharomyces, Aspergillus as common colonisers;
   fungal-bacterial interaction (inter-kingdom competition)
2. **Candida overgrowth in ME/CFS**: clinical observations; symptom correlation (brain fog, fatigue,
   GI symptoms); lack of controlled data
3. **Fungal-bacterial interactions**: Candida outcompetes Lactobacillus and beneficial bacteria;
   Candida hyphae facilitate bacterial translocation through gut epithelium
4. **Immune response to gut fungi**: Th17 cells as primary anti-fungal response; IL-17 and IL-22
   maintaining epithelial integrity; dysregulation in ME/CFS context
5. **Mycotoxins**: aflatoxin, ochratoxin, trichothecenes from fungal overgrowth; neurotoxic
   properties; potential contribution to brain fog and fatigue
6. **Fungal cell wall components**: (1→3)-β-D-glucan as a biomarker of fungal overgrowth/leakage;
   elevated in some ME/CFS patients
7. **Environmental mold exposure**: separate from gut mycobiome but related; mold illness (CIRS)
   overlap with ME/CFS; Shoemaker protocol controversies
8. **Saccharomyces cerevisiae antibodies**: anti-Saccharomyces mannan antibodies (ASCA) found in
   Crohn's disease; explored in ME/CFS gut permeability context
9. **Diagnostic challenges**: routine stool culture insensitive for mycobiome characterisation;
   ITS sequencing required; not standard in clinical practice

---

## Implementation Plan

### 1. New subsection in ch11 (primary target)

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

**Insertion point:** After the planned gut virome subsection (or after §Gut Microbiome Alterations
if virome plan is implemented first), insert as `\subsection{Gut Mycobiome}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Introduction: what the mycobiome is; fungal biomass ~0.1% of gut microbiome | Plain text | Normal composition; inter-kingdom interactions |
| 2 | Candida and fungal overgrowth — clinical observations | Plain text | Note: clinical observation basis, controlled data scarce |
| 3 | Fungal-bacterial interactions | Plain text | Candida hyphae and bacterial translocation; competition with Lactobacillus |
| 4 | Immune response to gut fungi | Plain text | Th17/IL-17/IL-22 axis; potential dysregulation in ME/CFS context |
| 5 | β-D-glucan as biomarker | Plain text | Measured in some ME/CFS cohorts; limitations of assay |
| 6 | Mycotoxins and neurological effects | Plain text | Mechanism; aflatoxin, ochratoxin; note: indirect evidence |
| 7 | Speculation environment | `speculation` (cert ~0.30) | See speculation content below |
| 8 | Clinical evidence gap warning | `limitation` | No ME/CFS-specific controlled mycobiome study published; clinical practice (antifungal treatment) runs ahead of evidence |
| 9 | Antifungal treatment note | `warning` | Empirical antifungal treatment in ME/CFS patients lacks controlled trial support; discuss with physician; fluconazole has significant drug interactions and hepatotoxicity risk |

**Speculation environment content:**
- Title: "Gut Mycobiome Dysbiosis as a Contributing Factor in ME/CFS"
- Core claim: Fungal overgrowth, particularly Candida species, in the gut of ME/CFS patients
  dysregulates the Th17 immune axis, promotes intestinal permeability, and may generate mycotoxins
  contributing to neurological symptoms
- Supporting evidence: clinical observations; fungal-bacterial interaction biology in IBD and
  other conditions; β-D-glucan elevations in some patients; Th17 dysregulation documented in
  ME/CFS by other mechanisms
- Testable predictions:
  (a) ITS2 sequencing of ME/CFS stool samples reveals altered fungal community composition
      (elevated Candida relative abundance vs controls)
  (b) Serum β-D-glucan levels in ME/CFS patients correlate with gut permeability markers
      (LPS, I-FABP) and symptom severity
  (c) ME/CFS patients with elevated Candida colonisation show distinct Th17/Treg balance
      compared to ME/CFS patients with normal mycobiome
- Limitations: no ME/CFS-specific controlled mycobiome study; Candida overgrowth diagnosis
  remains clinically controversial; mycotoxin pathways are speculative in this context
- Certainty: 0.30

### 2. Update SIBO treatment subsection

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

**Insertion point:** Within the herbal antimicrobials section (~line 632), expand the allicin
mention to note that allicin's antifungal activity may be relevant to patients with concurrent
Candida overgrowth, with a forward reference to the mycobiome subsection.

### 3. Changelog update

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting that fungal gut colonisation is a common clinical concern among
ME/CFS patients and practitioners yet entirely absent from the current pathophysiology documentation.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Sokol et al. mycobiome review (Nature Reviews) | To find | Gut mycobiome in health and disease |
| Hoarfrost et al. or Iliev/Leonardi 2017 review | To find | Fungal-bacterial interactions in gut |
| Jacobs et al. 2016 (Cell Host Microbe) | To find | Candida in IBD; β-D-glucan |
| ME/CFS mycobiome study (if any) | To search | Direct evidence |
| Th17 dysregulation in ME/CFS | Check bib | Should reference existing content |
| Mycotoxin neurological effects review | To find | Mechanism for brain fog hypothesis |

---

## Execution Order

1. Literature search — search for ME/CFS mycobiome studies and gut fungal dysbiosis reviews
2. Add BibTeX entries to `references.bib`
3. Write new mycobiome subsection in ch11
4. Update SIBO/herbal antimicrobials subsection
5. Update `changelog.tex`
6. `nix build` to verify

---

## Connections to Existing Content

- **Gut dysbiosis** (ch11 §9): fungal dysbiosis is a missing dimension of the dysbiosis picture;
  complements bacterial content
- **Intestinal permeability** (ch11 ~171): Candida hyphae physically disrupt tight junctions,
  providing a fungal mechanism for leaky gut alongside the bacterial/LPS mechanisms covered
- **Th17 immune axis**: Th17 is the primary anti-fungal immune response; if already covered in
  ch07, cross-reference rather than duplicate
- **SIBO treatment** (ch11 ~601): antifungal properties of herbal antimicrobials relevant
- **Gut virome plan** (gut-virome.md): mycobiome and virome are the two non-bacterial gut
  communities; these two plans together complete the non-bacterial microbiome picture

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| ME/CFS patients have altered gut mycobiome | 0.30 (no controlled study; clinical observations only) |
| Candida overgrowth occurs in a subgroup of ME/CFS patients | 0.45 (clinical observations; no systematic data) |
| Candida hyphae promote intestinal permeability | 0.75 (established in IBD/general research) |
| β-D-glucan is elevated in some ME/CFS patients | 0.40 (small studies, not replicated) |
| Mycotoxins contribute to brain fog | 0.25 (speculative; mechanism plausible but undemonstrated) |
| Antifungal treatment improves ME/CFS symptoms | 0.30 (case series only; no RCT) |
