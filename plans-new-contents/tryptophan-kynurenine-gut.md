# Plan: Gut Bacterial Influence on the Tryptophan-Kynurenine Pathway

## Summary

Add a new subsection to ch11 documenting how gut bacteria directly shape tryptophan metabolism
through the indole pathway and IDO1 upregulation, producing a shift away from serotonin synthesis
toward the kynurenine shunt. This generates quinolinic acid (neurotoxic), depletes serotonin and
melatonin precursors, and sustains neuroinflammation. The gut-specific angle is distinct from the
existing ch15 coverage of the kynurenine pathway (which focuses on systemic IDO1 and neurological
effects); this plan grounds that pathway in the microbiome and makes the GI origin of the
tryptophan dysregulation explicit.

---

## What We Already Cover

**ch15-symptom-producing-mechanisms.tex**:
- Kynurenine pathway and IDO1 upregulation in ME/CFS
- Quinolinic acid as NMDA receptor agonist → excitotoxicity
- Tryptophan depletion reducing serotonin synthesis
- Fatigue and cognitive effects of kynurenine metabolites

**ch11-gut-microbiome.tex**:
- Gut dysbiosis (reduced Faecalibacterium, Roseburia)
- Intestinal permeability
- SIBO; motility dysfunction
- No mention of tryptophan or kynurenine gut metabolism

**ch08-neurological.tex**:
- Neuroinflammation; excitotoxicity framing
- No tryptophan gut origin discussed

---

## What's Missing

1. **Bacterial indole pathway**: Lactobacillus, Clostridiales, and other species directly
   metabolise tryptophan → indole, indole-3-acetic acid (IAA), indole-3-propionic acid (IPA);
   these are aryl hydrocarbon receptor (AhR) ligands with immunomodulatory effects
2. **Competition between serotonin and kynurenine shunt**: >90% of tryptophan is metabolised
   outside the serotonin pathway even under normal conditions; gut bacteria influence which
   proportion reaches enterochromaffin cells for serotonin synthesis
3. **IDO1 upregulation by gut inflammation**: Toll-like receptor activation by bacterial LPS
   induces IDO1 in intestinal epithelial cells and macrophages; gut IDO1 (not just hepatic/systemic)
   diverts tryptophan to kynurenine locally in the GI tract
4. **Quinolinic acid production from gut-activated kynurenine pathway**: microglia and macrophages
   convert kynurenine → quinolinic acid; if gut provides excess kynurenine substrate, more
   quinolinic acid reaches the brain
5. **Reduced indole-pathway products in ME/CFS**: healthy gut flora produce IPA (neuroprotective,
   BBB-tightening); dysbiosis reduces IPA, compounding neuroinflammatory vulnerability
6. **Serotonin/melatonin cascade**: tryptophan depletion → reduced gut serotonin (motility
   effects) → reduced melatonin precursor → sleep disruption; a gut-origin explanation for
   sleep pathology in ME/CFS
7. **Gut-specific vs systemic IDO1 distinction**: clarify that gut IDO1 activation and systemic
   IDO1 activation (from ch15) are related but distinct sources of kynurenine metabolite burden

---

## Implementation Plan

### 1. New subsection in ch11 (primary target)

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

**Insertion point:** After the gut-brain axis subsection (if that plan is implemented first) or
after the intestinal permeability subsection. Insert as `\subsection{Tryptophan Metabolism and the Gut Kynurenine Pathway}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Introduction: tryptophan as a critical amino acid at gut-brain interface | Plain text | Three fates: serotonin (2%), kynurenine (>90%), bacterial indole pathway |
| 2 | Bacterial indole pathway products and their functions | Plain text | IPA, IAA; AhR ligands; immunomodulatory and neuroprotective roles |
| 3 | IDO1 upregulation by gut inflammation | Plain text | LPS → TLR4 → IDO1 in intestinal epithelium; gut-specific origin of kynurenine excess |
| 4 | Dysbiosis and reduced indole production | Plain text | Loss of Lactobacillus/Clostridiales → reduced IPA → increased neuroinflammatory vulnerability |
| 5 | Serotonin-melatonin cascade effects | Plain text | Tryptophan depletion → gut serotonin → melatonin precursor; sleep disruption pathway |
| 6 | Hypothesis: gut-bacterial tryptophan diversion | `hypothesis` (cert ~0.50) | See hypothesis content below |
| 7 | Cross-reference to ch15 | Plain text | Note that systemic kynurenine consequences (quinolinic acid excitotoxicity) are detailed in ch15; this section addresses the gut origin |
| 8 | Evidence gap | `limitation` | Direct measurement of gut IDO1 activity in ME/CFS not yet done; most evidence extrapolated from IBD and sepsis literature |

**Hypothesis environment content:**
- Title: "Gut Bacterial Dysbiosis Driving Tryptophan Diversion to the Kynurenine Pathway"
- Core claim: Altered gut microbiota in ME/CFS reduce the bacterial indole pathway products
  that normally protect against IDO1 activation, while simultaneously providing an LPS-rich
  environment that upregulates gut IDO1, creating a tryptophan deficit for serotonin synthesis
  and an excess of kynurenine metabolites including neurotoxic quinolinic acid
- Supporting evidence: IDO1 upregulation documented in ME/CFS (ch15); kynurenine pathway
  alteration replicated; gut dysbiosis with reduced indole-producing taxa documented; IPA
  reduction in various gut inflammatory states
- Testable predictions:
  (a) ME/CFS patients show reduced urine and plasma indole-3-propionic acid compared to
      healthy controls, correlating with dysbiosis severity
  (b) Gut biopsy IDO1 protein expression is elevated in ME/CFS patients with active gut
      inflammation compared to ME/CFS patients without gut symptoms
  (c) Probiotic supplementation restoring Lactobacillus reduces plasma kynurenine/tryptophan
      ratio and improves sleep quality scores in a controlled trial
  (d) ME/CFS patients with low IPA show worse neurological symptom scores than ME/CFS
      patients with normal IPA, independent of overall dysbiosis severity
- Limitations: no study has measured gut IDO1 specifically in ME/CFS; IPA data in ME/CFS
  absent; most evidence is from sepsis, IBD, and experimental models
- Certainty: 0.50

### 2. Expand existing kynurenine content in ch15

**File:** `contents/part2-pathophysiology/ch15-symptom-producing-mechanisms.tex`

**Insertion point:** In the existing kynurenine pathway discussion, add a sentence or short
paragraph noting that gut inflammation represents a distinct upstream source of IDO1 activation
and kynurenine metabolite burden; forward reference to the new ch11 subsection.

### 3. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry in metabolic/GI domain:
- Title: Gut Bacterial Dysbiosis Driving Tryptophan-Kynurenine Diversion
- Type: H (hypothesis, cert 0.50)
- Predictions: (a)–(d) above
- Location: Ch. 11 §sec:tryptophan-kynurenine-gut

### 4. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the gap between existing kynurenine pathway content in ch15
and the absence of gut-microbiome origin documentation in ch11; cite Gao et al. or similar
IDO1/gut review.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Gao et al. 2018 (IDO1 in gut inflammation) | To find | Gut IDO1 upregulation by LPS/TLR4 in intestinal cells |
| Roager & Licht 2018 Nature Microbiology | To find | Microbial tryptophan catabolism and gut-brain signalling |
| Venkatesh et al. 2014 Cell | To find | AhR ligands from gut bacteria; indole pathway immunomodulation |
| Cervenka et al. 2017 Sci Adv | To find | Kynurenines in brain, blood, gut — compartment differences |
| Lamas et al. indole pathway IBD | To find | Reduced indole production in intestinal inflammation |
| Existing IDO1 ME/CFS citations | Check bib | Should reference ch15 content |

---

## Execution Order

1. Literature search — gut-specific IDO1 activation, bacterial indole pathway, IPA in ME/CFS context
2. Add BibTeX entries to `references.bib`
3. Write new tryptophan subsection in ch11
4. Expand ch15 kynurenine paragraph with gut-origin reference
5. Register hypothesis in `hypothesis-registry.tex`
6. Update `changelog.tex`
7. `nix build` to verify

---

## Connections to Existing Content

- **Kynurenine pathway** (ch15): this plan provides the upstream gut-bacterial origin of the
  tryptophan diversion that ch15 documents systemically; these two sections form a complete picture
- **Gut dysbiosis** (ch11 §bacterial composition): loss of Lactobacillus and Clostridiales directly
  reduces indole-pathway capacity; the taxa implicated are those already noted as reduced in ME/CFS
- **Neuroinflammation** (ch08): quinolinic acid excess from kynurenine pathway is an excitotoxic
  mechanism; this plan adds the gut-bacterial origin to what ch08 treats as a central process
- **Sleep disruption** (ch02 or ch03 clinical symptoms): tryptophan → melatonin pathway disruption
  provides a gut-origin explanation for the sleep pathology; cross-reference if sleep is covered
- **Gut-brain axis plan** (gut-brain-axis.md): the two plans are complementary; gut-brain axis
  covers neural/vagal mechanisms while this plan covers the metabolite arm

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| Gut bacteria metabolise tryptophan via indole pathway | 0.95 (well-established microbiology) |
| IDO1 is upregulated in ME/CFS | 0.70 (multiple studies; ch15 documents this) |
| Gut inflammation upregulates IDO1 locally | 0.75 (established in IBD/sepsis models) |
| ME/CFS dysbiosis reduces indole-producing bacteria | 0.55 (dysbiosis documented; indole producers specifically less studied) |
| Reduced IPA in ME/CFS patients | 0.35 (plausible from dysbiosis data; not directly measured) |
| Gut tryptophan diversion drives ME/CFS neurological symptoms | 0.45 (mechanistically coherent; causal link inferential) |
