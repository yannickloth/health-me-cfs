# Phase 4b: Retroactive Adaptation — MMP-9 Serum/Plasma Caveat

**Date:** 2026-06-08
**Trigger:** Jung2008, Jung1998, Olson2008, Garvin2015 — serum MMP-9 is 3–4× higher than plasma due to platelet/leukocyte degranulation during clotting.

**Edit threshold (certainty ≥ 0.60):** @Jung2008MMP9Preanalytical, @Jung1998MMP9Preanalytical (0.75), @Olson2008MMP9Sampling (0.70), @Garvin2015MMP9CHD (0.65)

**Below threshold (for awareness only):** Chinnappan 2026 (0.35), Kempuraj 2024 (0.40)

---

## Summary Counts

| Metric | Count |
|--------|-------|
| M (matches examined) | 14 |
| N (adapted) | 5 |
| R (reinforced) | 1 |
| T (contradicted) | 0 |
| A (ambiguous) | 1 |
| S (deferred) | 7 |

---

## Match 1: ch07-immune-dysfunction.typ — Hoel 2026 MMP9 reduction (line 331)

**Current claim:** "A large-scale serum proteomics study by Hoel et al. (2026)… Hallmark neutrophil granule components—…matrix metalloproteinase 9 (MMP9)—were all significantly lower."

**Classification:** NEEDS CAVEAT — ambiguous / reinforcement

**Analysis:** Hoel 2026 used serum (SomaScan 7K aptamer proteomics on serum). The claim is that MMP-9 is *reduced* in ME/CFS serum. The serum/plasma artifact inflates MMP-9 3–4× in both patients and controls; if the artifact is uniform, the relative difference (reduced vs controls) might survive, but differential platelet activation between patients and controls could confound the comparison. Paradoxically, if patients have hyperactive platelets (preliminary evidence), serum MMP-9 would be *inflated* in patients, masking or reversing the true biological reduction. The "reduced MMP-9" claim could be stronger in plasma than in serum.

**Action:** Edit to acknowledge the serum caveat and note that the true plasma difference may be larger or different.

**Recommended edit text (insert after "all significantly lower"):** 
```
$
The serum matrix amplifies signal from platelet/leukocyte sources during clotting, producing 3--4× higher MMP-9 in serum relative to paired plasma @Jung2008MMP9Preanalytical @Olson2008MMP9Sampling. If baseline platelet activation differs between ME/CFS and controls, the observed serum reduction could under- or over-estimate the true plasma difference. Plasma-based replication is needed.$
```

**Edit type:** Adds caveat + citation insertion (Jung2008, Olson2008).

---

## Match 2: ch15-symptom-producing-mechanisms.typ — MMP-3/MMP-9 release during PEM (line 1398)

**Current claim:** "Post-exertional malaise (PEM) involves exaggerated matrix metalloproteinase (MMP) release 24–48 hours post-exertion… Exaggerated MMP-3 and MMP-9 release from: mitochondrial stress responses, mast cell degranulation, fibroblast activation, inflammatory cytokine signaling."

**Classification:** NO ACTION — measurement method unspecified

**Analysis:** The hypothesis is mechanistic (what happens in tissue, not what is measured in circulation). MMP-3 and MMP-9 are discussed as tissue-level effectors (degrading capillary basement membranes, tendinous attachments, tissue architecture), not as circulating biomarkers. The serum/plasma artifact affects *circulating measurement*, not tissue-level biology. The falsifiable predictions (line 2829 in ch06, line 1661 in ch20) reference plasma, not serum — the test protocol already prescribes plasma.

**Action:** No change needed. This is a tissue-mechanism hypothesis; the serum/plasma artifact is irrelevant to the biological claim. Monitoring recommendations in ch19 (line 3070) say "MMP levels" without specifying matrix — defer to ch20 biomarker protocol for measurement guidance.

---

## Match 3: ch19-integrative-approaches.typ — MMP-9 inhibition protocol (line 3062)

**Current claim:** "Cromolyn 10mg TID + doxycycline 20mg BID (MMP-9 inhibition, subantimicrobial)… Monitoring: mast cell markers (tryptase, histamine), MMP levels."

**Classification:** DEFERRED — measurement mentions "MMP levels" without specifying serum vs plasma

**Analysis:** The protocol specifies monitoring of MMP levels but does not name the matrix. The monitoring parameters (line 3070) list "MMP levels: MMP-9, TIMP-1 ratio" without serum/plasma specification. Since:
- Ch20 already has the authoritative `@warn:mmp9-serum-plasma` warning
- The hypothesis registry (line 957) already specifies "plasma MMP-9" in its falsifiable predictions
- The treatment section is downstream of the biomarker section

**Action:** Defer — inform by cross-reference. If the protocol is used, the monitoring should specify citrate plasma. The limitation sections (line 3074) already acknowledge "No ME/CFS outcome data." When clinical implementation details are expanded, add: "Use citrate plasma for MMP-9 measurement (serum inflates values 3–4×)."

---

## Match 4: ch16-supplements-nutraceuticals.typ — Vitamin D and MMP-9 regulation (line 2255)

**Current claim:** "Vitamin D receptor (VDR) activation downregulates matrix metalloproteinases (MMPs)… Vitamin D regulates MMP-9, TIMP-1, and collagen type I expression in vitro. Vitamin D deficiency correlates with increased MMP activity in other conditions. Vitamin D repletion reduces MMP-9 in deficiency states."

**Classification:** REINFORCED — strengthens the rationale for using plasma MMP-9 as monitoring biomarker

**Analysis:** The existing claims are about *biology* (VDR-mediated transcriptional regulation) and *cross-disease evidence* (other conditions show VitD-MPP-9 correlations). These are not affected by the serum/plasma artifact since:
- The in vitro evidence is about gene expression, not circulating levels
- The cross-disease evidence is from other conditions where measurement method may vary
- The clinical implementation (line 2259) says "Monitor MMP-9/TIMP-1 ratio" without specifying matrix

**Action:** No edit needed for existing claims. The new serum/plasma evidence *strengthens* the case for using plasma MMP-9/TIMP-1 as a monitoring biomarker with known reference ranges. Consider adding "citrate plasma" specification when the monitoring section is expanded.

---

## Match 5: ch06-energy-metabolism.typ — HIF-1alpha and MMP-3/MMP-9 (line 2829)

**Current claim:** "HIF-1alpha directly upregulates matrix metalloproteinases (MMPs) and downregulates collagen synthesis… Falsifiable prediction: ME/CFS tissue samples (muscle biopsy, skin, or tendon) will show… elevated MMP-3/MMP-9."

**Classification:** NO ACTION — falsifiable prediction specifies *tissue*, not serum/plasma

**Analysis:** The HIF-1alpha hypothesis is entirely about tissue-level (biopsy) measurements of MMP-3/MMP-9, not circulating levels. The serum/plasma artifact does not apply to tissue homogenates or immunohistochemistry. The falsifiable prediction explicitly says "tissue samples (muscle biopsy, skin, or tendon)." No change needed.

---

## Match 6: ch07-immune-dysfunction.typ — EBV-Directed Mast Cell MMP-9 (line 2463)

**Current claim:** "rEBV protein activates mast cells to release MMP-9… Falsifiable predictions: ME/CFS patients with EBV reactivation markers will show higher *plasma* MMP-9."

**Classification:** NO ACTION — already correctly specifies plasma, cites the pre-analytical caveat, and references @warn:mmp9-serum-plasma

**Analysis:** This is the best-handled MMP-9 claim in the document. The falsifiable predictions (line 2470) already say "plasma MMP-9." The limitations (line 2472) already include: "The human MMP-9 data from this study used serum, which inflates MMP-9 3–4× due to platelet/leukocyte degranulation during clotting @Jung2008MMP9Preanalytical @Olson2008MMP9Sampling — the circulating MMP-9 claim requires plasma-based replication (see Section @warn:mmp9-serum-plasma)." The certainty header (line 2464) already flags "serum MMP-9 measurement subject to pre-analytical artifact."

**Action:** Perfect — no change needed. This is the exemplar for how other claims should be handled.

---

## Match 7: ch07-immune-dysfunction.typ — Mast Cell-Targeted MMP Inhibition (line 972)

**Current claim:** "ME/CFS patients with elevated mast cell markers will show reduced serum MMP-3/MMP-9 levels after 8 weeks of combination therapy."

**Classification:** ADAPT — testable prediction specifies "serum"

**Analysis:** Line 978 says "reduced *serum* MMP-3/MMP-9 levels." This should be changed to "plasma" and the reason noted, since the protocol is measuring circulating MMP levels, not tissue MMP activity. The treatment monitoring section (ch19) also mentions "MMP levels" without specifying. Should coordinate: change to plasma for both.

**Recommended edit text (line 978, change):**
`- ME/CFS patients with elevated mast cell markers (tryptase, histamine) will show reduced plasma MMP-3/MMP-9 levels after 8 weeks of combination therapy (serum inflates MMP-9 3--4× from platelet/leukocyte degranulation, so plasma is the recommended measurement matrix @Jung2008MMP9Preanalytical @Olson2008MMP9Sampling)`

**Edit type:** Measurement matrix change + citation insertion.

---

## Match 8: ch07-immune-dysfunction.typ — IL-11 Inflammaging Speculation (line 1340)

**Current claim:** "Chinnappan et al. (2026) reported the first measurement of *serum* IL-11 in ME/CFS… Limitations: used serum, not plasma, for IL-11 measurement — though IL-11 is less affected by clotting artifact than MMP-9."

**Classification:** NO ACTION — already correctly identifies the limitation

**Analysis:** The text already specifies "serum," notes IL-11 is less affected than MMP-9, and flags pre-analytical standardization. The falsifiable predictions (line 1346) already specify "Plasma IL-11 (measured in citrate plasma)." No change needed.

---

## Match 9: ch20-biomarker-research.typ — MMP/TIMP Ratio Signatures (line 1602)

**Current claim:** "Serum MMP/TIMP ratio could serve as a mechanistic biomarker for distinguishing subtypes."

**Classification:** ADAPT — specifies "serum" before the warning-box

**Analysis:** Line 1603 says "Serum MMP/TIMP ratio." This comes *before* the `@warn:mmp9-serum-plasma` warning (line 1610). The hypothesis should either say "plasma MMP/TIMP ratio" or be revised to acknowledge the serum caveat after the warning. Since the warning appears immediately below, the safest edit is to change "Serum" to "Plasma" in the hypothesis title and body, consistent with the warning.

**Recommended edit text (line 1603):**
Change `Serum MMP/TIMP ratio` to `Plasma MMP/TIMP ratio` (×2 occurrences in this hypothesis block).

**Edit type:** Measurement matrix correction for consistency with downstream warning.

---

## Match 10: ch20-biomarker-research.typ — Exercise-Challenge Dynamic ECM Test (line 1658)

**Current claim:** "Serial blood draws at 0, 24, 48, and 72h post-exertion → ELISA for MMP-3, MMP-9."

**Classification:** NO ACTION — does not specify matrix; protocol section lacks detail

**Analysis:** The test protocol (line 1663) says "blood draw" without specifying serum vs plasma tubes. The hypothesis should specify plasma, but since this is a protocol specification (ch20), it can be assumed the user would follow the ch20 warning. Defer — the protocol should be updated to specify "citrate plasma" when operationalized, but no edit urgency.

---

## Match 11: ch14h-trpm3-channelopathy.typ — MMP-9 BBB Neuroinflammatory Trap (line 1131)

**Current claim:** "MMP-9-mediated neuroinflammatory positive feedback loop… Falsifiable predictions: serial *plasma* and CSF S100B + MMP-9 + IL-11."

**Classification:** NO ACTION — already correctly specifies plasma and cites ch20 warning

**Analysis:** Falsifiable predictions (line 1143) say "plasma." Limitations (line 1145) say "All MMP-9 studies to date used serum, not plasma — the magnitudes are unreliable (Section @warn:mmp9-serum-plasma)." Well-handled.

---

## Match 12: ch07-immune-dysfunction.typ — Fibroblast Cytokine Priming (line 3811)

**Current claim:** "TNF-alpha and IL-1beta upregulate MMP-3 and MMP-9 production. Falsifiable prediction: ME/CFS fibroblasts pre-exposed to TNF-alpha/IL-1beta will show exaggerated MMP-3/MMP-9 response."

**Classification:** NO ACTION — tissue/cell culture, not circulating measurement

**Analysis:** This is entirely about fibroblast cell culture MMP production, not circulating levels. No serum/plasma issue.

---

## Match 13: ch10-cardiovascular.typ — Glycocalyx Degradation (line 782)

**Current claim:** "C5a-mediated neutrophil degranulation releasing heparanase and MMP-9. Activated neutrophils release MMP-9 (degrades syndecan-1 ectodomains)."

**Classification:** NO ACTION — tissue-level mechanism, not circulating biomarker

**Analysis:** MMP-9 is discussed as a tissue-level effector of glycocalyx degradation, not as a measured circulating biomarker. Measurement context not relevant.

---

## Match 14: ch07-immune-dysfunction.typ — ch18 Vagus/MMP (line 2586)

**Current claim:** "Activated mast cells release MMPs… Falsifiable prediction: ME/CFS patients treated with tVNS will show reduced MMP-3/MMP-9 levels."

**Classification:** AMBIGUOUS — does not specify measurement matrix

**Analysis:** Line 2592 says "reduced MMP-3/MMP-9 levels" without specifying serum/plasma. The context is monitoring of treatment response, which should use plasma. The protocol should be updated when operationalized, but since ch20 already has the warning, no urgent edit.

---

## Summary of Required Edits

| # | File | Line | Current Text | Change | Priority |
|---|------|------|-------------|--------|----------|
| 1 | ch07-immune-dysfunction.typ | 331 | Hoel 2026 MMP9 reduction (serum proteomics, no caveat) | Add serum artifact caveat + Jung2008/Olson2008 citations | **High** |
| 7 | ch07-immune-dysfunction.typ | 978 | "serum MMP-3/MMP-9 levels" in testable prediction | Change to "plasma" + add caveat text and citations | **High** |
| 9 | ch20-biomarker-research.typ | 1603 | "Serum MMP/TIMP ratio" (before warning-box) | Change to "Plasma" (2×) | **Medium** |

No edits needed for matches 2, 4, 5, 6, 8, 10, 11, 12, 13, 14.
