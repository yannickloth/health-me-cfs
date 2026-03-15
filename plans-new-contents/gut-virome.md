# Plan: Gut Virome Alterations in ME/CFS

## Summary

Add a new subsection to ch11 covering the gut virome — the community of bacteriophages and
enteric viruses residing in the GI tract. Current ch11 coverage is exclusively bacterial (and
briefly fungal/metabolite). The virome is the most abundant biological entity in the gut,
bacteriophages modulate bacterial populations driving dysbiosis, and enteric virus persistence
(including SARS-CoV-2) is directly relevant to ME/CFS pathogenesis. This is an emerging field
with limited ME/CFS-specific data but strong mechanistic rationale.

---

## What We Already Cover

**ch11-gut-microbiome.tex**:
- §Gut Microbiome Alterations: dysbiosis patterns, functional capacity changes, multi-omic
  integration, gut-brain axis, intestinal permeability
- Line ~133: brief mention of bile acids and tryptophan metabolites as gut-brain signalling
- Line ~810: FMT transfers "bacteriophages, fungi, and metabolites" — single mention of phages
- Line ~649: antifungal mention in SIBO treatment (allicin vs fungal)
- No dedicated virome, bacteriophage, or enteric virus content

**ch07-immune-dysfunction.tex**:
- Line ~966: Peluso 2024 SARS-CoV-2 gut RNA persistence (detailed — should be cross-referenced,
  not duplicated)

---

## What's Missing

1. **Bacteriophage community structure** in ME/CFS: altered phage populations, reduced phage
   diversity, Caudovirales abundance shifts
2. **Phage-bacteria interactions driving dysbiosis**: bacteriophages as modulators of bacterial
   populations; phage predation pressure selecting for dysbiotic bacterial communities
3. **Enteric virus persistence beyond SARS-CoV-2**: adenoviruses, astroviruses, anelloviruses
   persistently colonising the gut; their immune interaction
4. **SARS-CoV-2 gut persistence in the ME/CFS context**: the Peluso 2024 data is in ch07 from an
   immune mechanism angle; ch11 needs the GI tissue biology angle (lamina propria, enterocytes,
   barrier impact)
5. **Anellovirus burden as immune activation signal**: commensal anelloviruses (TTV, TTMV) whose
   titre correlates inversely with immune competence — elevated in immunosuppressed, reduced with
   immune activation; their meaning in ME/CFS
6. **Virome-bacteriome interactions**: phage-mediated horizontal gene transfer affecting bacterial
   metabolic capacity; bacteriophage predation on protective species (e.g. Lactobacillus phages)
7. **Methodological note**: virome sequencing requires VLP enrichment; most ME/CFS microbiome
   studies have not applied this, explaining the data gap

---

## Implementation Plan

### 1. New subsection in ch11 (primary target)

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

**Insertion point:** After the §Gut Microbiome Alterations section and before §Gastrointestinal
Dysfunction (approximately after line ~395). Insert as `\subsection{Gut Virome and Bacteriophages}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Opening: what the virome is and why it matters | Plain text | Most abundant biological entity; phage:bacteria ratio ~10:1 |
| 2 | Bacteriophage communities in health and disease | Plain text | Caudovirales, Microviridae; modulate bacterial populations |
| 3 | Altered virome in ME/CFS | Plain text | Limited direct data; cite any available studies; note gap |
| 4 | Phage-dysbiosis interaction mechanism | Plain text | Phage predation selecting dysbiotic bacteria; gene transfer |
| 5 | Enteric virus persistence | Plain text | Adenoviruses, astroviruses, anelloviruses as persistent gut residents |
| 6 | Anellovirus burden as immune marker | Plain text | TTV/TTMV inverse correlation with immune competence |
| 7 | SARS-CoV-2 gut persistence (GI angle) | Plain text | Cross-ref Peluso 2024 in ch07; add lamina propria / enterocyte biology here |
| 8 | Speculation environment | `speculation` (cert ~0.35) | See speculation content below |
| 9 | Data gap warning | `limitation` | Most ME/CFS microbiome studies did not include VLP enrichment for virome; conclusions about virome status are provisional |

**Speculation environment content:**
- Title: "Gut Virome Dysbiosis as a Contributor to ME/CFS Microbiome Pathology"
- Core claim: Altered bacteriophage populations in ME/CFS accelerate bacterial dysbiosis by
  eliminating protective bacterial species, and persistent enteric viruses maintain low-level
  innate immune activation in gut epithelium
- Supporting evidence: phage-dysbiosis interactions documented in IBD and other conditions;
  enteric virus persistence well-established; ME/CFS-specific virome data limited
- Testable predictions:
  (a) VLP-enriched metagenomic sequencing reveals altered bacteriophage diversity in ME/CFS
      gut samples vs matched controls
  (b) Anellovirus titre in ME/CFS patients correlates with IFN signatures and symptom severity
  (c) Bacteriophage populations targeting Faecalibacterium prausnitzii (protective, depleted in
      ME/CFS) are elevated relative to those targeting dysbiotic Clostridia species
- Limitations: essentially no ME/CFS-specific virome data published as of 2025; this is
  entirely extrapolated from IBD and general microbiome virology
- Certainty: 0.35

### 2. Update FMT subsection

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

**Insertion point:** Within §FMT subsection (~line 810), expand the brief "bacteriophages, fungi,
and metabolites" mention to acknowledge that FMT transfers the donor virome including potentially
beneficial bacteriophage communities, and that virome matching between donor and recipient may
affect FMT outcomes.

### 3. Cross-reference from ch07

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

In the enterovirus subsection and the viral reservoir framework (once written), add a brief
cross-reference: "For gut-specific enteric virus biology and the gut virome more broadly, see
ch11 §sec:gut-virome."

### 4. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting that the gut virome represents the most abundant biological
compartment in the GI tract yet is entirely absent from current ME/CFS documentation.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Norman et al. 2015 (Nature) | To acquire | Gut virome in health/disease; foundational |
| Shkoporov & Hill 2019 (Cell Host Microbe) | To acquire | Bacteriophage community stability and dysbiosis |
| Liang et al. IBD virome study | To find | Virome changes in IBD as closest analog |
| Wylie et al. anellovirus review | To find | TTV/TTMV as immune competence markers |
| Peluso et al. 2024 (already in bib) | Present | SARS-CoV-2 gut persistence; cross-ref |
| ME/CFS virome study (if any published 2023-2025) | To search | Direct evidence in ME/CFS |

---

## Execution Order

1. Literature search — WebSearch for ME/CFS virome studies and bacteriophage dysbiosis reviews
2. Add BibTeX entries to `references.bib`
3. Write new gut virome subsection in ch11 with all content items
4. Update FMT subsection with virome transfer note
5. Add cross-reference in ch07
6. Update `changelog.tex`
7. `nix build` to verify

---

## Connections to Existing Content

- **Bacterial dysbiosis** (ch11 §9+): virome modulates bacterial communities; bacteriophage
  predation is a missing mechanistic link in the existing dysbiosis content
- **FMT section** (ch11 ~798): FMT transfers whole virome; virome matching may matter for outcomes
- **SARS-CoV-2 gut persistence** (ch07 ~966): GI angle of same evidence; cross-reference not
  duplicate
- **Innate immune activation** (ch07 §Innate Immunity): enteric virus PAMPs constitutively
  activating gut-associated innate sensors contributes to the systemic IFN signature
- **Enterovirus persistence plan** (enterovirus-persistence.md): enteroviruses are a subset of the
  gut virome; this plan covers the broader virome concept

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| Gut virome alterations exist in ME/CFS | 0.35 (no direct ME/CFS virome studies published) |
| Bacteriophages modulate bacterial dysbiosis | 0.80 (established in IBD/general microbiome) |
| Enteric viruses persist in gut long-term | 0.75 (established for multiple viruses) |
| Anellovirus burden reflects immune status | 0.65 (indirect evidence) |
| FMT transfers donor virome with functional consequences | 0.70 (plausible, evidence from IBD) |
| Virome dysbiosis contributes to ME/CFS symptoms | 0.35 (speculative extrapolation) |
