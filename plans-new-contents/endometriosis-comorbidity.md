# Plan: Endometriosis as ME/CFS Comorbidity

## Summary

Add a new subsection to ch04 (comorbidities) documenting endometriosis as an ME/CFS comorbidity:
prevalence overlap, shared immune mechanisms (inflammatory, autoimmune), the estrogen-immune
axis, pain amplification and central sensitisation overlap, and the striking parallel in diagnostic
delay (both average ~7–10 years to diagnosis). This connection is clinically important because
undiagnosed endometriosis can worsen ME/CFS symptom burden and vice versa. Certainty ~0.40 for
the shared-mechanism claims specifically; the association itself is better-established.

---

## What We Already Cover

**ch04 (diagnostic criteria / comorbidities)**:
- Fibromyalgia and ME/CFS comorbidity
- POTS and dysautonomia comorbidity
- Other comorbidities listed
- No endometriosis content

**ch03 (additional symptoms)**:
- Pain symptoms documented
- No gynaecological symptom discussion

**ch09-endocrine.tex**:
- HPA axis dysfunction; cortisol abnormalities
- Some sex hormone content?
- No endometriosis-immune axis

---

## What's Missing

1. **Prevalence overlap**: endometriosis affects ~10% of women of reproductive age; estimated
   ME/CFS co-occurrence 20–40% in some studies; substantially higher than general population
   base rate; survey data and patient registry data
2. **Shared immune mechanisms**: endometriosis involves peritoneal macrophage activation and
   pro-inflammatory cytokine production (IL-1β, TNF-α, IL-6); these mirror the immune
   activation profile in ME/CFS; mast cell activation elevated in both; NK cell dysfunction
   documented in endometriosis (similar to ME/CFS)
3. **Autoimmune phenomena**: endometriosis is associated with increased anti-endometrial
   antibodies, anti-ovarian antibodies; higher rates of autoimmune comorbidities (Hashimoto's,
   lupus, rheumatoid arthritis) — these overlap with ME/CFS autoimmune hypothesis
4. **Estrogen-immune axis**: estrogen activates immune cells and promotes inflammation in
   endometriosis; estrogen influences ME/CFS symptom severity (many patients report
   premenstrual worsening); estrogen receptors on immune cells connect hormonal cycle to
   immune activation pattern
5. **Central sensitisation and pain amplification**: both endometriosis and ME/CFS involve
   central sensitisation (heightened pain processing in CNS); they share this mechanism with
   fibromyalgia; co-occurrence of all three is documented; central sensitisation explains
   why endometriosis pain often exceeds tissue damage visible at laparoscopy
6. **Diagnostic delay parallels**: endometriosis average diagnosis delay ~7–8 years; ME/CFS
   average ~5–7 years; both predominantly affect women; both are dismissed as psychosomatic;
   medical skepticism delays diagnosis in both; patients often receive anxiety/depression
   diagnosis first
7. **Clinical implications**: in women with ME/CFS, undiagnosed endometriosis may worsen
   fatigue and pain; hormone treatment for endometriosis may affect ME/CFS symptoms;
   pelvic pain evaluation should be part of ME/CFS comorbidity workup in women

---

## Implementation Plan

### 1. New subsection in ch04 (primary target)

**File:** `contents/part1-clinical/ch04-diagnostic-criteria.tex` (or whichever chapter
covers comorbidities)

**Insertion point:** In the comorbidities section, after fibromyalgia and before or after
POTS. Insert as `\subsection{Endometriosis}` or as a named entry in a comorbidities table.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Endometriosis overview and prevalence | Plain text | 10% reproductive-age women; brief definition |
| 2 | Co-occurrence with ME/CFS | Plain text | Prevalence estimates; patient registry data |
| 3 | Shared immune mechanisms | Plain text | Macrophage activation; IL-1β/TNF-α; NK cell dysfunction; mast cells |
| 4 | Autoimmune overlap | Plain text | Autoantibodies; Hashimoto's/lupus co-occurrence |
| 5 | Estrogen-immune axis | Plain text | Estrogen and immune activation; premenstrual ME/CFS worsening |
| 6 | Central sensitisation overlap | Plain text | Shared mechanism with fibromyalgia; pain amplification |
| 7 | Diagnostic delay parallel | Plain text | Both average 7–10 years to diagnosis; shared medical skepticism pattern |
| 8 | Speculation: shared immune susceptibility | `speculation` (cert ~0.35) | See speculation content below |
| 9 | Clinical implications | Plain text | Evaluate for endometriosis in women with ME/CFS and pelvic pain; hormone treatments |

**Speculation environment content:**
- Title: "Shared Immune Susceptibility Underlying ME/CFS and Endometriosis Comorbidity"
- Core claim: ME/CFS and endometriosis may share an underlying immune regulatory deficit —
  specifically involving NK cell dysfunction, macrophage hyperactivation, and Treg impairment —
  that allows both conditions to establish and persist; the estrogen-immune axis may be the
  common driver in reproductively-active women
- Supporting evidence: NK cell dysfunction is documented in both conditions; macrophage
  activation profile similar; autoimmune phenomena elevated in both; estrogen activates
  immune cells in both contexts
- Testable predictions:
  (a) Women with both ME/CFS and endometriosis show lower NK cell cytotoxicity than women
      with ME/CFS alone, endometriosis alone, or healthy controls
  (b) ME/CFS patients with endometriosis show higher anti-endometrial antibody titres and
      broader autoantibody profiles than ME/CFS patients without endometriosis
  (c) Hormonal suppression of endometriosis (GnRH analogues) leads to measurable improvement
      in ME/CFS fatigue scores in women with confirmed co-occurrence
  (d) ME/CFS severity in women with endometriosis co-occurrence follows the menstrual cycle
      more tightly than in ME/CFS women without endometriosis
- Limitations: most evidence is from patient surveys and case series; immune mechanism overlap
  is inferred from separate literatures; no prospective study has measured shared immune markers
  in the combined population; hormonal treatment data are anecdotal
- Certainty: 0.35

### 2. Cross-reference in endocrine chapter

**File:** `contents/part2-pathophysiology/ch09-endocrine.tex`

**Insertion point:** In sex hormone section, note endometriosis as a comorbidity in which the
estrogen-immune interaction is particularly relevant to ME/CFS symptom pattern; forward
reference to ch04.

### 3. Register speculation

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry in immune/endocrine domain:
- Title: Shared Immune Susceptibility in ME/CFS-Endometriosis Comorbidity
- Type: S (speculation, cert 0.35)
- Predictions: (a)–(d) above
- Location: Ch. 4 §sec:endometriosis

### 4. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the absence of endometriosis in the comorbidity coverage
despite significant prevalence overlap and shared immune mechanisms; cite co-occurrence studies.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Endometriosis ME/CFS co-occurrence studies (patient registry data) | To find | Prevalence estimates |
| NK cell dysfunction in endometriosis | To find | NK cell parallels with ME/CFS |
| Endometriosis macrophage activation review | To find | IL-1β, TNF-α, IL-6 peritoneal profile |
| Estrogen and immune activation review | To find | Estrogen receptor on immune cells; activation mechanisms |
| Central sensitisation in endometriosis | To find | Pain amplification mechanism; fibromyalgia overlap |
| Diagnostic delay data for endometriosis | To find | Average 7–8 year delay; comparison with ME/CFS |

---

## Execution Order

1. Literature search — endometriosis-ME/CFS co-occurrence; NK cells in endometriosis; estrogen-immune
2. Add BibTeX entries to `references.bib`
3. Write endometriosis comorbidity subsection in ch04
4. Write speculation environment
5. Register speculation in `hypothesis-registry.tex`
6. Add cross-reference in ch09
7. Update `changelog.tex`
8. `nix build` to verify

---

## Connections to Existing Content

- **Fibromyalgia comorbidity** (ch04): fibromyalgia, endometriosis, and ME/CFS all involve
  central sensitisation; documenting this triad provides a coherent pain amplification narrative
- **NK cell dysfunction** (ch07): NK deficits in endometriosis mirror those in ME/CFS; cross-
  reference to support the shared immune mechanism speculation
- **Sex-specific mechanisms plan** (sex-specific-mechanisms.md): endometriosis is entirely
  sex-specific and the estrogen-immune axis is central; the two plans should cross-reference
- **Endocrine dysfunction** (ch09): estrogen is both a hormonal and immune regulator; the
  endocrine-immune intersection documented here connects to ch09
- **Mast cell content** (if in document): mast cell activation in both conditions; cross-
  reference if mast cell activation syndrome is already documented

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| Endometriosis is more prevalent in ME/CFS patients than general population | 0.55 (survey and patient registry data; selection bias possible) |
| Both conditions involve NK cell dysfunction | 0.65 (established in each separately; comparison inferential) |
| Central sensitisation is shared between endometriosis and ME/CFS | 0.70 (documented in both conditions; mechanism well-characterised) |
| Estrogen drives immune activation in both conditions | 0.55 (mechanistic evidence in endometriosis; ME/CFS link partially established) |
| Shared immune susceptibility underlies the comorbidity | 0.35 (speculative; no study has tested this directly) |
| Treating endometriosis improves ME/CFS outcomes | 0.30 (anecdotal; no controlled data) |
