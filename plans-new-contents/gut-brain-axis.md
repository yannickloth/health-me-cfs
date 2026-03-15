# Plan: Gut-Brain Axis Dysfunction in ME/CFS

## Summary

Add a new subsection to ch11 documenting gut-brain axis dysfunction as a bidirectional communication
failure in ME/CFS. The vagus nerve carries ~80% of signals from gut to brain; reduced vagal tone,
disrupted enteric nervous system signalling, and microbial metabolites (SCFAs, tryptophan derivatives)
crossing the blood-brain barrier collectively contribute to neurological symptoms, fatigue, and
cognitive impairment. This subsection bridges ch11 (GI/microbiome) and ch08 (neurological) with
a mechanistic framework that is currently absent despite strong conceptual importance.

---

## What We Already Cover

**ch11-gut-microbiome.tex**:
- Gut dysbiosis and altered microbial composition
- Intestinal permeability and LPS translocation
- SIBO and motility dysfunction
- Bile acid metabolism (planned plan: bile-acid-metabolism.md)

**ch08-neurological.tex**:
- Neuroinflammation, microglial activation
- Autonomic nervous system dysfunction
- Cognitive impairment and brain fog mechanisms
- Blood-brain barrier permeability

**ch10-cardiovascular.tex**:
- Autonomic dysfunction subsection including heart rate variability
- No mention of gut-derived autonomic signals

---

## What's Missing

1. **Vagus nerve anatomy and gut-brain signalling**: 500 million neurons in enteric nervous system;
   vagal afferents carrying gut status to brainstem; nucleus tractus solitarius integration
2. **Reduced vagal tone in ME/CFS**: heart rate variability as proxy for vagal tone; evidence of
   vagal hypofunction; parasympathetic withdrawal in ME/CFS cohorts
3. **Enteric nervous system dysfunction**: ENS as "second brain"; ENS neurotransmitter production
   (90% of body serotonin); ENS motility control and its failure
4. **SCFA signalling to brain**: butyrate, propionate, acetate crossing BBB; SCFA effects on
   microglial activation; SCFA deficiency in ME/CFS (reduced Faecalibacterium, Roseburia)
5. **Tryptophan pathway competition**: gut bacteria shunting tryptophan away from serotonin synthesis
   toward kynurenine; reduced central serotonin; mood, sleep, and fatigue consequences
6. **Gut-derived neuroinflammation**: bacterial LPS crossing damaged gut epithelium → systemic LPS
   → BBB disruption → microglial activation; documented LPS elevation in ME/CFS plasma
7. **Vagal anti-inflammatory reflex**: the cholinergic anti-inflammatory pathway; if vagal tone is
   reduced, this reflex is impaired → unchecked gut-derived inflammation
8. **Bidirectionality**: brain stress → gut motility changes → dysbiosis → worse gut signals to
   brain; stress-dysbiosis feedback loop; HPA axis involvement

---

## Implementation Plan

### 1. New subsection in ch11 (primary target)

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

**Insertion point:** After the intestinal permeability subsection, insert as
`\subsection{Gut-Brain Axis Dysfunction}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Introduction: bidirectional gut-brain communication; three pathways (neural, endocrine, immune) | Plain text | Frame scope; note vagal dominance |
| 2 | Vagal tone reduction in ME/CFS | Plain text | HRV evidence; parasympathetic withdrawal data |
| 3 | Enteric nervous system overview | Plain text | ENS neuron count; serotonin production; motility regulation |
| 4 | SCFA signalling to brain | Plain text | BBB crossing; microglial effects; deficiency in ME/CFS context |
| 5 | LPS-driven neuroinflammation pathway | Plain text | Cross-ref BBB disruption in ch08; LPS in ME/CFS plasma data |
| 6 | Cholinergic anti-inflammatory reflex | Plain text | Vagal efferent anti-inflammatory; impaired when vagal tone reduced |
| 7 | Hypothesis: gut-brain axis dysfunction driving neurological symptoms | `hypothesis` (cert ~0.50) | See hypothesis content below |
| 8 | Bidirectionality and stress feedback | Plain text | HPA → gut motility → dysbiosis → worsened signals |
| 9 | Evidence gap note | `limitation` | Most gut-brain axis evidence from IBS, IBD; ME/CFS-specific studies limited |

**Hypothesis environment content:**
- Title: "Gut-Brain Axis Dysfunction as a Mediator of Neurological Symptoms in ME/CFS"
- Core claim: Reduced vagal tone, SCFA deficiency, and LPS-driven neuroinflammation collectively
  impair gut-to-brain signalling in ME/CFS, contributing to brain fog, fatigue, and autonomic
  dysregulation through mechanisms that amplify and sustain central nervous system dysfunction
- Supporting evidence: reduced vagal tone (HRV data); SCFA-producing bacteria reduced in ME/CFS;
  LPS elevation in ME/CFS plasma; BBB disruption in neurological ME/CFS studies
- Testable predictions:
  (a) ME/CFS patients with lower HRV (proxy for vagal tone) show higher plasma LPS and more
      severe cognitive impairment scores
  (b) Stool SCFA concentrations in ME/CFS patients negatively correlate with neurological
      symptom severity (brain fog, sleep disruption)
  (c) Vagal nerve stimulation (non-invasive auricular) reduces plasma LPS and improves brain
      fog scores in a crossover study
  (d) ME/CFS patients show lower ENS serotonin precursor availability (as reflected by
      plasma tryptophan ratios) than healthy controls
- Limitations: most supporting evidence is from IBS/IBD; ME/CFS-specific gut-brain axis studies
  are limited; causality direction not established; HRV is an indirect proxy for vagal tone
- Certainty: 0.50

### 2. Cross-reference in ch08

**File:** `contents/part2-pathophysiology/ch08-neurological.tex`

**Insertion point:** In the neuroinflammation section, add a cross-reference to the gut-derived
LPS pathway as documented in ch11. Note that BBB disruption may be partly sustained by gut-derived
inflammatory signals.

### 3. Cross-reference in ch10

**File:** `contents/part2-pathophysiology/ch10-cardiovascular.tex`

**Insertion point:** In the autonomic dysfunction section, note that gut vagal afferent dysfunction
may contribute to the parasympathetic withdrawal pattern; forward reference to ch11.

### 4. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry in neuroimmune/autonomic domain:
- Title: Gut-Brain Axis Dysfunction as ME/CFS Neurological Mediator
- Type: H (hypothesis, cert 0.50)
- Predictions: (a)–(d) above
- Location: Ch. 11 §sec:gut-brain-axis

### 5. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the absence of gut-brain axis framing despite strong mechanistic
links between known ME/CFS gut pathology and neurological symptoms; cite key vagal tone and SCFA
review.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Carabotti et al. 2015 Ann Gastroenterol | To acquire | Gut-brain axis review: three communication pathways |
| Bonaz et al. 2018 Front Neurosci | To acquire | Vagus nerve and gut-brain axis review |
| HRV in ME/CFS meta-analysis (Beaumont et al. or similar) | To find | Reduced vagal tone evidence in ME/CFS |
| Cryan et al. 2019 Physiol Rev | To acquire | Comprehensive microbiota-gut-brain axis review |
| LPS elevation in ME/CFS (Khaiboullina or Nijs lab) | Check bib | LPS in ME/CFS plasma |
| SCFA brain effects review | To find | Butyrate/propionate crossing BBB; microglial effects |

---

## Execution Order

1. Literature search and acquisition — gut-brain axis reviews and ME/CFS-specific vagal tone data
2. Add BibTeX entries to `references.bib`
3. Write new subsection in ch11
4. Write hypothesis environment
5. Register hypothesis in `hypothesis-registry.tex`
6. Add cross-references in ch08 and ch10
7. Update `changelog.tex`
8. `nix build` to verify compilation

---

## Connections to Existing Content

- **Intestinal permeability** (ch11): LPS crossing gut epithelium is the immune arm of gut-brain
  axis dysfunction; these two subsections should explicitly link
- **Neuroinflammation** (ch08): gut-derived LPS as one input to microglial activation; complement
  the neuron-intrinsic mechanisms already documented
- **Autonomic dysfunction** (ch10): vagal tone reduction is already documented there; this plan
  provides the gut angle explaining WHY vagal tone may be reduced
- **Kynurenine pathway** (ch15): tryptophan diversion from serotonin to kynurenine is a shared
  mechanism with gut-brain axis dysregulation; plans should cross-reference
- **Tryptophan-kynurenine-gut plan** (this directory): these two plans are tightly coupled; this
  plan addresses the vagal/neural arm, the tryptophan plan addresses the metabolite arm

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| Gut and brain communicate bidirectionally via vagus, endocrine, and immune pathways | 0.95 (textbook biology) |
| ME/CFS patients have reduced vagal tone | 0.70 (HRV meta-analysis data) |
| SCFA-producing gut bacteria are reduced in ME/CFS | 0.65 (multiple cohort studies) |
| Plasma LPS is elevated in ME/CFS | 0.60 (several studies, not all consistent) |
| Gut-derived LPS contributes to ME/CFS neuroinflammation | 0.50 (mechanistically plausible, not directly demonstrated) |
| Gut-brain axis dysfunction drives ME/CFS neurological symptoms | 0.45 (overall causal claim; parts well-supported, whole picture inferential) |
