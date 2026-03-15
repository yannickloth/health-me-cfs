# Plan: Bile Acid Metabolism Disruption in ME/CFS

## Summary

ch11 covers gut microbiome dysbiosis and metabolites (butyrate, SCFA) but has no bile acid
content despite the fact that bile acid pools are heavily regulated by gut bacteria, altered in
ME/CFS dysbiosis, and function as signalling molecules with systemic effects on energy
metabolism, mitochondrial function, and gut permeability. This plan adds a new subsection on
bile acid metabolism to ch11, with cross-reference to ch06 (energy metabolism, TGR5 axis),
framing bile acids as a mechanistic link between gut dysbiosis and systemic metabolic dysfunction.
Evidence is emerging and ME/CFS-specific data is limited; certainty is low (0.35–0.40).

---

## What We Already Cover

**ch11-gut-microbiome.tex**:
- §Metabolites and Short-Chain Fatty Acids (~563): butyrate (~568), acetate and propionate (~589);
  no bile acids
- §Dysbiosis Patterns (~12): altered microbial communities; reduced Faecalibacterium prausnitzii,
  Bifidobacterium; no mention of bile acid-metabolising species specifically
- §Functional Capacity Changes (~77): reduced metabolic pathways in ME/CFS microbiome; not
  specifically bile acid pathways
- §Multi-Omic Integration (~97): metabolomics findings referenced; bile acids not named

**ch06-energy-metabolism.tex**:
- Energy metabolism coverage; whether TGR5 / FXR signalling is mentioned: to confirm by reading

**ch11 line ~133**: brief mention of "bile acids" as gut-brain signalling molecules — single item
in a list, not developed

---

## What's Missing

1. **Primary vs secondary bile acid distinction**: primary bile acids (cholic acid, chenodeoxycholic
   acid) produced by liver; secondary bile acids (deoxycholic acid, lithocholic acid, ursodeoxycholic
   acid) produced by gut bacterial enzymes (BSH, 7α-dehydroxylation); this bacterially-controlled
   conversion is disrupted in dysbiosis
2. **Altered bile acid pools in ME/CFS**: if any metabolomics studies have found altered primary/
   secondary bile acid ratios; broader IBS/functional GI literature as reference
3. **FXR (Farnesoid X Receptor)**: bile acid nuclear receptor in liver and gut; regulates bile acid
   synthesis, gut permeability (FXR activates tight junction protein expression), inflammation
   (FXR suppresses NF-κB); FXR dysfunction → leaky gut and inflammation
4. **TGR5 (Takeda G protein-coupled receptor 5)**: bile acid membrane receptor on mitochondria;
   TGR5 activation increases intracellular cAMP → activates PGC-1α → mitochondrial biogenesis
   and increased oxidative phosphorylation; connection to the mitochondrial dysfunction in ch06
5. **Bile acid dysregulation → gut permeability**: secondary bile acids in low concentrations
   protect gut barrier; high primary/low secondary ratio damages epithelium; connects to
   intestinal permeability content already in ch11
6. **FXR/TGR5 crosstalk**: these two receptors jointly regulate metabolic homeostasis; UDCA
   (ursodeoxycholic acid, available OTC) activates TGR5 — relevant for potential supplementation
7. **Connection to fatigue and energy**: TGR5-mediated mitochondrial activation is the direct
   mechanistic link between gut bile acid composition and cellular energy production
8. **Methodological note**: bile acid profiling requires targeted metabolomics with LC-MS; standard
   16S microbiome sequencing cannot infer bile acid profile; gap in existing ME/CFS metabolomics

---

## Implementation Plan

### 1. New subsection in ch11 (primary target)

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

**Insertion point:** After the §Metabolites and Short-Chain Fatty Acids section (approximately
after the acetate/propionate subsection ~line 596), as a new `\subsection{Bile Acid Metabolism}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Introduction: bile acid basics; primary vs secondary conversion | Plain text | Liver synthesis → bacterial BSH and dehydroxylation → secondary pools |
| 2 | Gut bacteria regulating bile acids | Plain text | Lactobacillus, Bifidobacterium BSH; Clostridiales 7α-dehydroxylation; these are depleted in ME/CFS dysbiosis |
| 3 | FXR signalling | Plain text | Gut permeability regulation; NF-κB suppression; dysbiosis disrupting FXR tone |
| 4 | TGR5 and mitochondrial function | Plain text | TGR5 → cAMP → PGC-1α → mitochondrial biogenesis; the gut-energy link |
| 5 | Bile acids in ME/CFS metabolomics | Plain text | Note available data; acknowledge data gap if limited; reference IBS/FGI literature as proxy |
| 6 | Speculation environment | `speculation` (cert ~0.38) | See speculation content below |
| 7 | Methodological limitation | `limitation` | Standard 16S sequencing cannot characterise bile acid pools; LC-MS metabolomics required; most ME/CFS microbiome studies have not included this |
| 8 | UDCA note | Plain text | UDCA activates TGR5; available OTC; preliminary interest but no ME/CFS RCT; forward ref to treatment chapter if discussed there |

**Speculation environment content:**
- Title: "Bile Acid Dysbiosis as a Mechanistic Link Between Gut Dysbiosis and Systemic
  Metabolic Dysfunction in ME/CFS"
- Core claim: Depletion of bile acid-metabolising bacteria (particularly Bifidobacterium and
  Clostridiales) in ME/CFS dysbiosis shifts the bile acid pool toward primary acids, impairing
  FXR-mediated gut barrier protection and reducing TGR5-driven mitochondrial biogenesis —
  directly connecting gut dysbiosis to the energy deficit
- Supporting evidence: bile acid-metabolising species depleted in ME/CFS dysbiosis; TGR5→
  PGC-1α→ mitochondrial biogenesis well-established; FXR gut barrier role established in IBD;
  primary/secondary bile acid imbalance documented in IBS and functional GI disease
- Testable predictions:
  (a) LC-MS metabolomics of ME/CFS stool/plasma reveals elevated primary-to-secondary bile
      acid ratios compared to healthy controls
  (b) TGR5-activating bile acids (UDCA, lithocholic acid) are specifically reduced in ME/CFS
      metabolomics profiles
  (c) UDCA supplementation in ME/CFS (controlled trial) improves objective mitochondrial
      function measures (e.g. CPET VO2max, NIRS oxygenation) relative to placebo
  (d) Bile acid pool composition correlates with PGC-1α expression in peripheral blood
      mononuclear cells across ME/CFS and control participants
- Limitations: no ME/CFS-specific bile acid profiling study published; all connections are
  mechanistically extrapolated from dysbiosis patterns and general metabolic research
- Certainty: 0.38

### 2. Add cross-reference from ch06

**File:** `contents/part2-pathophysiology/ch06-energy-metabolism.tex`

After reading the TGR5/PGC-1α content (if any), add or expand a cross-reference: "Gut-derived
bile acids acting on TGR5 receptors provide a systemic link between gut microbiome composition
and mitochondrial biogenesis (see ch11 §sec:bile-acid-metabolism)."

### 3. Update the line ~133 mention in ch11

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

The single-item mention of "bile acids" in the gut-brain axis list should become a forward
reference to the new bile acid subsection rather than a dead-end mention.

### 4. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting that bile acids represent the most direct mechanistic link
between the well-established gut dysbiosis and the systemic metabolic deficit, yet were absent
from the microbiome chapter.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Ridlon et al. 2014 bile acid review | To acquire | Bacterial bile acid metabolism; BSH and dehydroxylation |
| Watanabe et al. 2006 (Nature) | To acquire | TGR5 → cAMP → mitochondrial thermogenesis |
| Perino & Schoonjans FXR review (2015) | To acquire | FXR as metabolic master regulator |
| Bile acid dysbiosis in IBS/FGI study | To find | Primary/secondary ratio in functional GI disease |
| ME/CFS metabolomics with bile acids | To search | Direct evidence; may not exist |
| UDCA mitochondrial function study | To find | TGR5 activation improving mitochondrial function |

---

## Execution Order

1. Read §Metabolites and SCFAs (~line 563) and line ~133 in ch11 to confirm insertion context
2. Read ch06 to check if TGR5/PGC-1α already mentioned
3. Literature search — acquire foundational bile acid references
4. Add BibTeX entries to `references.bib`
5. Write new bile acid subsection in ch11
6. Update line ~133 to forward reference
7. Add cross-reference in ch06
8. Update `changelog.tex`
9. `nix build` to verify

---

## Connections to Existing Content

- **Short-chain fatty acids** (ch11 ~563): butyrate, propionate, and bile acids are the three
  major classes of microbially-produced metabolites affecting host physiology; this subsection
  completes the set
- **Dysbiosis patterns** (ch11 ~12): depletion of Bifidobacterium and Clostridiales = depletion
  of bile acid-metabolising species; the connection makes dysbiosis mechanistically concrete
- **Intestinal permeability** (ch11 ~171): FXR→tight junction regulation = a bile acid pathway
  to leaky gut alongside the LPS/bacterial mechanism already described
- **Energy metabolism** (ch06): TGR5→PGC-1α is the direct mechanistic bridge between gut bile
  acids and the mitochondrial dysfunction central to ch06
- **Gut-brain axis** (ch11 ~124): bile acids modulate enteric nervous system signalling via TGR5
  on enteroendocrine cells; integrates with the existing gut-brain content

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| Bile acid-metabolising bacteria are depleted in ME/CFS | 0.55 (inferred from dysbiosis patterns; not directly measured) |
| Primary/secondary bile acid ratio is altered in ME/CFS | 0.35 (no ME/CFS-specific study; plausible from dysbiosis) |
| TGR5 activation improves mitochondrial biogenesis | 0.85 (established molecular biology) |
| FXR regulates gut barrier integrity | 0.80 (established in IBD/experimental models) |
| Bile acid dysbiosis contributes to ME/CFS energy deficit | 0.38 (mechanistically compelling but undemonstrated) |
| UDCA supplementation benefits ME/CFS patients | 0.25 (no trial; theoretical) |
