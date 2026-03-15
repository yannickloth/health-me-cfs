# Plan: How Viral Infections Reshape the Gut Microbiome

## Summary

Add a new subsection to ch11 explaining the mechanism by which viral infections create and
maintain gut dysbiosis — covering acute SARS-CoV-2-induced dysbiosis, the mechanisms by which
immune activation during viral infection alters the gut environment, antibiotic use as a confounder,
and how persistent viral infection maintains a dysbiotic state long after the acute infection resolves.
This provides the upstream mechanistic origin for the dysbiosis documented in ch11, answering
why ME/CFS patients have persistent dysbiosis after recovering from the triggering infection.
Certainty ~0.45.

---

## What We Already Cover

**ch11-gut-microbiome.tex**:
- Gut dysbiosis described: reduced Faecalibacterium, Roseburia, Bifidobacterium
- Increased Ruminococcus gnavus, Eggerthella lenta in some studies
- Altered metabolite production as consequence
- No account of HOW dysbiosis develops or is maintained

**ch07-immune-dysfunction.tex**:
- Viral triggers for ME/CFS
- Viral persistence mechanisms
- No gut microbiome effects described

---

## What's Missing

1. **Acute viral infection → dysbiosis mechanism**: systemic immune activation during acute
   viral infection alters mucosal immune tone in the gut; IFN-γ and TNF-α alter gut epithelial
   function and mucus production; crypts and goblet cells affected; changed nutrient milieu
   selectively disadvantages some bacteria
2. **SARS-CoV-2 specific dysbiosis data**: well-characterised acute-phase dysbiosis after
   SARS-CoV-2; reduced Bifidobacterium, Faecalibacterium; increased Ruminococcus gnavus,
   Clostridium ramosum; some taxa not recovering at 6 months even after clinical resolution
3. **Influenza and other respiratory viruses**: acute respiratory viral infections also produce
   gut dysbiosis (indirect effect via systemic inflammation + direct effect via viral RNA in gut
   of some respiratory viruses)
4. **Gut oxygen environment alteration**: systemic hypoxia (fever, vascular dysfunction during
   acute illness) alters oxygen tension in gut, selecting for different bacteria; oxygen-sensitive
   obligate anaerobes are first affected
5. **Antibiotic use as confounder**: broad-spectrum antibiotics given during acute illness
   (either directly for secondary bacterial infections or preventively) are a major confounder;
   antibiotics explain some of the dysbiosis, independent of viral effects; studies need to
   account for this
6. **Persistent viral infection maintaining dysbiotic state**: if viral gut persistence continues
   after acute infection (SARS-CoV-2 gut RNA; enteroviral VP1), the ongoing low-grade mucosal
   inflammation and immune activation continue to suppress commensal recovery
7. **Microbiome recovery kinetics**: healthy individuals recover their microbiome within weeks
   to months after a self-limited infection; ME/CFS patients show persistent dysbiosis; the
   failure-to-recover pattern is a key distinction — possible mechanisms include host immune
   factors, viral persistence, or metabolic changes that create a dysbiosis-maintaining niche

---

## Implementation Plan

### 1. New subsection in ch11 (primary target)

**File:** `contents/part2-pathophysiology/ch11-gut-microbiome.tex`

**Insertion point:** Before the current dysbiosis description — as a mechanism/origin section
introducing the subsequent compositional data. Insert as
`\subsection{Viral Infection and Microbiome Disruption}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Overview: why viral infections disrupt the gut microbiome | Plain text | Three mechanisms: systemic immune, direct viral, antibiotic treatment |
| 2 | SARS-CoV-2 acute dysbiosis data | Plain text | Specific taxa; timing; relationship to severity |
| 3 | Recovery kinetics in non-ME/CFS vs ME/CFS | Plain text | Healthy recovery weeks-months; ME/CFS persistent dysbiosis |
| 4 | Gut oxygen environment and bacterial selectivity | Plain text | Hypoxia; anaerobe effects; metabolic niche shifts |
| 5 | Antibiotic confounding | `limitation` | Must distinguish viral effects from antibiotic effects in all dysbiosis studies |
| 6 | Persistent viral infection maintaining dysbiosis | Plain text | Cross-reference gut viral persistence plan; mucosal inflammation as ongoing selective pressure |
| 7 | Hypothesis: viral persistence as the dysbiosis maintenance mechanism | `hypothesis` (cert ~0.45) | See hypothesis content below |
| 8 | Bidirectionality | Plain text | Dysbiosis → impaired antiviral defence → easier persistence; mutual maintenance |

**Hypothesis environment content:**
- Title: "Persistent Viral Gut Infection as the Primary Mechanism Sustaining ME/CFS Dysbiosis"
- Core claim: In ME/CFS patients where the triggering infection persists in gut tissue, ongoing
  low-grade mucosal inflammation creates a selective environment that prevents re-establishment
  of commensal bacteria, sustaining the dysbiosis that would otherwise self-correct after acute
  infection resolves
- Supporting evidence: SARS-CoV-2 gut persistence documented at 7+ months; persistent dysbiosis
  in Long COVID/ME/CFS at matched time points vs COVID-recovered patients; bacterial diversity
  correlates with viral clearance timing in some studies; mucosal inflammation documented in
  ME/CFS gut biopsies
- Testable predictions:
  (a) ME/CFS patients with detectable gut viral RNA/protein at 6+ months show significantly
      greater microbiome diversity deficit than ME/CFS patients without detectable persistence
  (b) Antiviral treatment that eliminates gut viral persistence leads to microbiome diversity
      recovery within 3 months in ME/CFS patients, exceeding the improvement seen with
      probiotic supplementation alone
  (c) Gut biopsy mucosal cytokine levels (IFN-γ, TNF-α) in ME/CFS correlate inversely with
      Faecalibacterium prausnitzii relative abundance in the same patients
  (d) ME/CFS patients whose illness began after antibiotic-treated bacterial infections show
      different dysbiosis patterns from those whose illness began after viral infections alone
- Limitations: distinguishing viral persistence vs ongoing immune dysregulation as the dysbiosis
  maintenance mechanism is methodologically difficult; antibiotic confounding is substantial;
  longitudinal gut biopsy studies in ME/CFS are rare
- Certainty: 0.45

### 2. Cross-reference from ch07

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

**Insertion point:** In the viral persistence sections, add cross-references noting that gut
viral persistence may sustain microbiome dysbiosis as documented in ch11.

### 3. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry in viral/GI domain:
- Title: Viral Gut Persistence Sustaining ME/CFS Dysbiosis
- Type: H (hypothesis, cert 0.45)
- Predictions: (a)–(d) above
- Location: Ch. 11 §sec:virus-microbiome

### 4. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting that current ch11 dysbiosis description lacks a mechanistic
origin story explaining how the triggering infection produces persistent dysbiosis.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Yeoh et al. 2021 Gut (SARS-CoV-2 and gut microbiome) | To find | Acute SARS-CoV-2 dysbiosis; specific taxa changes |
| Liu et al. 2022 (Long COVID microbiome) | To find | 6-month dysbiosis in Long COVID vs recovered |
| Zuo et al. 2021 Gut | To find | SARS-CoV-2 gut microbiome association with severity |
| Respiratory virus systemic immune → gut microbiome effects | To find | Mechanism for indirect dysbiosis |
| Gut oxygen and microbiome review | To find | Hypoxia and anaerobe selection |

---

## Execution Order

1. Literature search — SARS-CoV-2 gut microbiome studies; Long COVID persistence and dysbiosis
2. Add BibTeX entries to `references.bib`
3. Write new viral-microbiome section in ch11
4. Register hypothesis in `hypothesis-registry.tex`
5. Update cross-references in ch07
6. Update `changelog.tex`
7. `nix build` to verify

---

## Connections to Existing Content

- **Gut dysbiosis** (ch11): this plan provides the upstream mechanistic origin of the dysbiosis
  data; it precedes the compositional data conceptually
- **Gut viral persistence** (gut-viral-persistence.md): the two plans form a mechanistic loop;
  persistence sustains dysbiosis; dysbiosis impairs antiviral defence; mutual cross-references
- **Viral triggers** (ch07): the mechanism by which each viral trigger produces dysbiosis connects
  the viral trigger content in ch07 to the microbiome content in ch11
- **SARS-CoV-2 persistence** (sars-cov2-persistence.md): SARS-CoV-2 gut RNA data supports both
  the persistence plan and this virus-microbiome plan; both should reference Natarajan 2022
- **FMT plan** (fmt-clinical-evidence.md): understanding that viral persistence maintains
  dysbiosis suggests FMT alone may be insufficient if viral persistence is not addressed

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| Acute SARS-CoV-2 causes gut dysbiosis | 0.85 (multiple well-powered studies) |
| Some dysbiosis persists at 6 months in Long COVID/ME/CFS | 0.70 (several studies show this) |
| Antibiotic use confounds dysbiosis studies | 0.90 (established confounder; widely acknowledged) |
| Viral gut persistence maintains dysbiosis (mechanism) | 0.45 (plausible; not directly isolated from immune persistence) |
| Microbiome recovery follows viral clearance in ME/CFS | 0.35 (not directly tested) |
| Antiviral treatment restores microbiome better than probiotics alone | 0.30 (speculative; no head-to-head data) |
