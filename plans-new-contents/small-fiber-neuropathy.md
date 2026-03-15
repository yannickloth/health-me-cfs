# Plan: Small Fiber Neuropathy — Expand Existing Content to Full Mechanistic Coverage

## Summary

ch08 already has a substantial SFN section (lines ~857–1026), but it focuses on fibromyalgia
prevalence extrapolation and symptom management. Key missing pieces: the 67% ME/CFS-specific
prevalence data (Levine et al. 2024 and Oaklander direct-ME/CFS studies), the 53% Long COVID
prevalence showing the post-viral specificity, the autoimmune SFN subtype with specific
antibodies (anti-TS-HDS, anti-FGFR3), the connection of autonomic SFN to POTS and temperature
dysregulation, and IVIG for autoimmune SFN. The existing content should be upgraded with these
specific data points and the autoimmune SFN hypothesis developed.

---

## What We Already Cover

**ch08-neurological.tex**, §Peripheral Nervous System / Small Fiber Neuropathy (~line 857):
- §Skin Biopsy Findings (~862): gold standard IENFD measurement; Oaklander 2013 fibromyalgia
  data (41%); Grayston 2019 meta-analysis (49% in fibromyalgia)
- §Autonomic Testing (~873): QSART; correlation with orthostatic intolerance
- §Pain Mechanisms (~883): A-delta and C fiber pain; central sensitisation
- §Potential Causes of SFN in ME/CFS (~894): immune, metabolic, viral hypotheses
- §Nerve Conduction Studies (~904): normal large fiber NCS
- §Treatment of SFN (~928): first-line neuropathic pain meds; topical treatments; autoimmune SFN
  briefly mentioned at line ~990 (IVIG, corticosteroids)
- The 30–60% prevalence estimate is based on fibromyalgia overlap

**ch10-cardiovascular.tex**:
- §POTS (~448): detailed POTS content; no mention of SFN as POTS mechanism
- §Autonomic section in ch08 (~789): autonomic dysfunction discussed but SFN-autonomic connection
  not strongly made

---

## What's Missing

1. **ME/CFS-specific SFN prevalence**: Levine et al. 2024 — 67% of ME/CFS patients meeting SFN
   criteria (Oaklander's group; direct ME/CFS cohort, not fibromyalgia extrapolation)
2. **Long COVID SFN prevalence**: ~53% in Long COVID cohorts (Oaklander, Nolano et al.) — this
   post-viral pattern is highly relevant to ME/CFS understanding
3. **Autonomic SFN vs sensory SFN distinction**: sensory SFN = pain and temperature; autonomic SFN
   = dysautonomia, POTS, sweat dysfunction; many ME/CFS patients may have predominantly
   autonomic SFN without prominent pain
4. **Specific autoimmune antibodies**: anti-TS-HDS (trisulfated heparan disaccharide) and
   anti-FGFR3 (fibroblast growth factor receptor 3) — found in ~30% of autoimmune SFN; these
   should be named specifically and connected to the ME/CFS autoimmunity landscape
5. **Mechanism connecting SFN to POTS**: autonomic SFN damages postganglionic sudomotor and
   vasomotor fibers → impaired vasoconstriction → pooling → compensatory tachycardia = POTS
6. **Mechanism connecting SFN to temperature dysregulation**: C-fiber thermoregulation role;
   SFN → impaired temperature sensing and response
7. **IVIG evidence for autoimmune SFN**: more detail needed — the ~990 mention is brief; need
   dose, evidence quality, ME/CFS applicability statement
8. **Skin biopsy as diagnostic tool**: current content mentions methodology but not clinical
   diagnostic workup — when should biopsy be ordered, what constitutes a positive result in
   ME/CFS context

---

## Implementation Plan

### 1. Upgrade prevalence data in skin biopsy section

**File:** `contents/part2-pathophysiology/ch08-neurological.tex`

**Insertion point:** §Skin Biopsy Findings (~line 862), within the Prevalence bullet item

Replace fibromyalgia-extrapolated estimate with ME/CFS-specific data:
- Levine et al. 2024: 67% of ME/CFS patients (n=~60) meeting IENFD diagnostic criteria
- Nolano et al. Long COVID data: 53% prevalence
- Add `achievement` environment for Levine 2024 finding. Label: `ach:sfn-mecfs-prevalence`
- Add clinical diagnostic workup guidance: which patients to consider biopsy for; interpretation

### 2. Add autonomic SFN vs sensory SFN distinction

**File:** `contents/part2-pathophysiology/ch08-neurological.tex`

**Insertion point:** After §Autonomic Testing (~line 873), add new `\subsubsection{Autonomic
versus Sensory Small Fiber Neuropathy}`

Content:
- Distinguishing features: autonomic SFN presents as dysautonomia, POTS, anhidrosis, dry eyes/mouth
  without prominent pain; sensory SFN = burning pain, temperature loss
- ME/CFS patients may have predominantly autonomic SFN — this explains why many do not report
  classic neuropathic pain despite having SFN on biopsy
- QSART abnormalities as marker of autonomic SFN
- Cross-reference to POTS section in ch10

### 3. Expand autoimmune SFN subtype

**File:** `contents/part2-pathophysiology/ch08-neurological.tex`

**Insertion point:** §Potential Causes of SFN (~line 894), expand the immune hypothesis item

Add specific antibodies:
- Anti-TS-HDS: targets trisulfated heparan disaccharide on peripheral nerve surface; found in ~30%
  of autoimmune SFN
- Anti-FGFR3: targets fibroblast growth factor receptor 3 on sensory neurons; associated with
  dorsal root ganglion pathology
- Connect to the broader ME/CFS autoantibody landscape (ch07)
- Note: these antibodies are not yet tested routinely in ME/CFS cohorts — represent a diagnostic gap

Add `hypothesis` environment (cert ~0.65, since SFN is established and autoimmune cause is
partially demonstrated):
- Title: "Autoimmune Small Fiber Neuropathy as a Distinct ME/CFS Subtype"
- Core claim: A subgroup of ME/CFS patients have SFN driven by anti-TS-HDS or anti-FGFR3
  antibodies, representing an autoimmune peripheral neuropathy subtype with specific diagnostic
  markers and a potentially treatable cause
- Testable predictions:
  (a) Systematic testing of ME/CFS patients for anti-TS-HDS and anti-FGFR3 will identify a
      subgroup (~20–30%) with autoimmune SFN
  (b) Anti-TS-HDS/FGFR3-positive ME/CFS patients respond to IVIG at higher rates than
      seronegative ME/CFS patients
  (c) IENFD on skin biopsy is lower in anti-TS-HDS/FGFR3-positive than seronegative patients
- Limitations: these antibodies have not been systematically tested in ME/CFS cohorts;
  treatment response data are case series

### 4. Expand IVIG treatment section

**File:** `contents/part2-pathophysiology/ch08-neurological.tex`

**Insertion point:** §Autoimmune SFN (~line 990), expand with:
- More detail on IVIG dose protocol: 0.4 g/kg/day for 5 days then monthly maintenance
- Cite more specific outcome data from Oaklander's autoimmune SFN series
- Note that IVIG trials in ME/CFS generally (Strayer et al.) had mixed results possibly due to
  failure to select for autoimmune SFN subgroup
- Forward reference: for experimental therapies chapter (ch18), see IVIG section

### 5. Cross-reference from ch10 POTS section

**File:** `contents/part2-pathophysiology/ch10-cardiovascular.tex`

**Insertion point:** §POTS Subtypes (~line 465)

Add a sentence/paragraph: autonomic SFN as a mechanism for one POTS subtype — postganglionic
fiber damage → impaired vasoconstriction → compensatory tachycardia. Cross-reference to ch08
§SFN autonomic subtype.

### 6. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry for autoimmune SFN subtype hypothesis:
- Title: Autoimmune SFN as a Distinct ME/CFS Subtype
- Type: H (cert 0.65)
- Predictions: (a)–(c) above
- Location: Ch. 8 §sec:sfn-autoimmune

### 7. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" citing Levine 2024 ME/CFS-specific SFN prevalence data and the
clinical importance of identifying the autoimmune SFN subtype for targeted treatment.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Levine et al. 2024 (Oaklander group) | To acquire | 67% SFN prevalence in ME/CFS direct cohort |
| Oaklander et al. 2016 autoimmune SFN | Already noted in ch08 | IVIG for autoimmune SFN |
| Nolano et al. Long COVID SFN | To acquire | 53% SFN prevalence in Long COVID |
| Gibbons et al. anti-TS-HDS | To find | Anti-TS-HDS in autoimmune SFN |
| Devigili et al. FGFR3 SFN | To find | Anti-FGFR3 in dorsal root ganglion SFN |
| Grayston 2019 meta-analysis | Already in bib (check) | 49% fibromyalgia — now secondary reference |
| Oaklander 2013 | Already in bib (check) | Original SFN fibromyalgia data |

---

## Execution Order

1. Literature search — acquire Levine 2024, Nolano Long COVID SFN, anti-TS-HDS reference
2. Add BibTeX entries to `references.bib`
3. Upgrade prevalence data in skin biopsy section + add achievement environment
4. Add autonomic vs sensory SFN distinction subsubsection
5. Expand autoimmune SFN with specific antibodies + hypothesis environment
6. Expand IVIG treatment section
7. Cross-reference from ch10 POTS
8. Register hypothesis in `hypothesis-registry.tex`
9. Update `changelog.tex`
10. `nix build` to verify

---

## Connections to Existing Content

- **POTS section** (ch10 ~448): autonomic SFN is a direct mechanistic pathway to POTS; currently
  disconnected
- **Temperature dysregulation** (ch03): SFN impairs C-fiber thermoregulation; connects peripheral
  nerve damage to the temperature symptom
- **Autoantibody content** (ch07 ~1221): anti-TS-HDS and anti-FGFR3 are autoantibodies targeting
  neural antigens; they belong in both ch07 and ch08 contexts
- **IVIG** (ch18 experimental therapies): upgrade the ch08 IVIG note to properly forward-reference
  the treatment chapter
- **Molecular mimicry plan** (molecular-mimicry.md): autoimmune SFN is one downstream consequence
  of post-viral autoimmunity; these plans complement each other

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| SFN occurs in ~67% of ME/CFS patients | 0.70 (Levine 2024 direct cohort; needs replication) |
| SFN occurs in ~53% of Long COVID patients | 0.65 (multiple studies) |
| Autonomic SFN explains some POTS cases | 0.75 (mechanism established in autonomic neuropathy) |
| Anti-TS-HDS/FGFR3 antibodies are present in ME/CFS subgroup | 0.45 (not yet systematically tested) |
| IVIG improves autoimmune SFN | 0.65 (case series; no ME/CFS RCT) |
| SFN is causal rather than comorbid in ME/CFS | 0.55 (plausible but not proven) |
