# Claim Fragments — longcovid-coagulation-null-2026

**Cycle date:** 2026-10-26
**Purpose:** one line per quantitative claim added to the book in Phase 3, with the exact
source fragment that carries it. Every fragment was read from the PDF filed under
`Literature/<category>/<Key>/<Key>.pdf` (or `abstract.txt` where the paper is not open access).
Fragments are quoted verbatim, including the source's own symbol conventions — the
STIMULATE-ICP abstract uses middle dots for decimals (`-1·06`), so the figure fields below
mirror that rather than normalising to periods.

Format: `@CiteKey | figure(s) | "quoted fragment (≥15 chars)" | page/section`

The location field is deliberately finer than the page: `fragment_drift.py` treats one
location as one sample, so two different figure sets on the same page would be reported as
an incongruence unless the location distinguishes them.

---

## Fraser 2026 — `Fraser2026LCcoagulation`

Source: `Literature/clinical-studies/Fraser2026LCcoagulation/Fraser2026LCcoagulation.pdf` (6 pp)

@Fraser2026LCcoagulation | n = 151 analysed | "26 were excluded, leaving 151 for plasma and/or urine biomarker" | p. 2, Methods (cohort flow)
@Fraser2026LCcoagulation | median 483 d in NBLC | "sampled a median of 483 days after infection in NBLC" | p. 2, Results (sampling interval NBLC)
@Fraser2026LCcoagulation | fibrin fibre density 47.9 / 43.6 / 38.0 per 100 µm | "Mean fibrin fiber density was 47.9 ± 15.0 fibers/100 µm in controls, 43.6 ± 12.3 in BLC, and 38.0 ± 11.0 in NBLC" | p. 2, Results (fibre density)
@Fraser2026LCcoagulation | p = 0.22 | "significant difference between groups (P = 0.22)" | p. 2, Results (fibre density p-value)
@Fraser2026LCcoagulation | n = 55 microaggregate subgroup | "(ogen) microaggregate analyses were undertaken in 55 samples" | p. 2, Methods (microaggregate subgroup)
@Fraser2026LCcoagulation | aggregates >100 µm2 comparable | "The number of larger microaggregates (>100 µm2) was also comparable" | p. 2, Results (large aggregates)
@Fraser2026LCcoagulation | sCD40L difference lost after adjustment | "Although sCD40L was slightly lower in NBLC and BLC than controls, statistical significance was lost when the BLC and NBLC" | p. 2, Results (sCD40L)

## Nunes 2022 — `NunesPlatelets2022mecfs`

Source: `Literature/mechanisms/NunesPlatelets2022mecfs/NunesPlatelets2022mecfs.pdf` (17 pp)

@NunesPlatelets2022mecfs | >10-fold microclot area | "The area of plasma images containing fibrinaloid microclots was commonly more than 10-fold greater in untreated PPP from individuals with ME/CFS" | p. 1, Abstract (microclot area)
@NunesPlatelets2022mecfs | 25 ME/CFS vs 15 controls | "from a cohort of 25 participants with ME/CFS and 15 healthy" | Results (cohort size)
@NunesPlatelets2022mecfs | platelet spreading score 2.72 ± 1.24 vs 1.00 | "the ME/CFS platelets were found to have a mean spreading score of 2.72 ± 1.24 vs. 1.00 (activation with pseudopodia formation) for healthy controls" | p. 1, Abstract (platelet spreading)
@NunesPlatelets2022mecfs | PAC-1 and CD62P surface markers | "Using fluorescently labelled PAC-1, which recognizes glycoprotein IIb/IIIa, and CD62P" | p. 1, Abstract (surface markers)
@NunesPlatelets2022mecfs | roughly half outside TEG normal ranges | "roughly half of the participants fell outside the normal ranges for R," | Results (thromboelastography)

## Pretorius 2021 — `Pretorius2021LCantiplasmin`

Source: `Literature/mechanisms/Pretorius2021LCantiplasmin/Pretorius2021LCantiplasmin.pdf` (18 pp)

@Pretorius2021LCantiplasmin | fibrinolysis resistance | "these microclots in both acute COVID-19 and Long COVID/PASC plasma samples are resistant to fibrinolysis" | Abstract (fibrinolysis resistance)
@Pretorius2021LCantiplasmin | raised alpha-2-antiplasmin | "a substantial increase in α(2)-antiplasmin (α2AP), various fibrinogen chains" | Abstract (alpha-2-antiplasmin)

## Pretorius 2022 — `Pretorius2022LCmicroclotPrevalence`

Source: `Literature/mechanisms/Pretorius2022LCmicroclotPrevalence/Pretorius2022LCmicroclotPrevalence.pdf` (17 pp)

@Pretorius2022LCmicroclotPrevalence | 80 patients, pathology in all | "we also analysed blood samples from 80 patients, and report the presence of significant fibrin amyloid microclots and platelet pathology in all cases" | Abstract (prevalence)
@Pretorius2022LCmicroclotPrevalence | control band exists but no quantified group comparison | "Overall microclot and platelet activation score results. Scoring results Control/healthy" | Table 3 (scoring bands)

## Booyens 2026 — `Booyens2026POTSPTM`

Source: `Literature/mechanisms/Booyens2026POTSPTM/Booyens2026POTSPTM.pdf` (15 pp)

@Booyens2026POTSPTM | group sizes 18 / 20 / 19 / 18 | "Platelet-poor plasma from healthy controls (n = 18), PC-POTS (n = 20), LC-IOH (n = 19), and LC-POTS (n = 18)" | Abstract, Methods (group sizes)
@Booyens2026POTSPTM | few proteins, PTM signal | "Although few proteins were significantly dysregulated, extensive disease-specific PTM alterations" | Abstract (PTM summary)
@Booyens2026POTSPTM | fibrinogen PTM signal is LC-IOH-dominant | "LC-IOH demonstrated prominent AGE- and oxidation-related PTMs on fibrinogen subunits" | Abstract (fibrinogen PTMs, LC-IOH)
@Booyens2026POTSPTM | PC-POTS had fewer fibrinogen PTMs | "PC-POTS showed fewer fibrinogen PTMs but marked metabolic and immune dysregulation" | Abstract (fibrinogen PTMs, PC-POTS)
@Booyens2026POTSPTM | PTM dysregulation exceeded protein-level change | "PTM dysregulation was substantially greater than protein-level changes" | Abstract (PTM vs abundance)
@Booyens2026POTSPTM | two freeze-thaw cycles could induce PTMs | "The PPP samples underwent two freeze-thaw cycles which could induce PTM" | Limitations (freeze-thaw)

## Schofield 2024 — `Schofield2024microclotsDIC`

Source: `Literature/clinical-studies/Schofield2024microclotsDIC/Schofield2024microclotsDIC.pdf` (10 pp)

@Schofield2024microclotsDIC | 42.3% present on admission (44 patients) | "which were detected in 44 patients (42.3%) on ICU admission but not in the remaining 60" | p. 1, Abstract (prevalence)
@Schofield2024microclotsDIC | sepsis 52.3% vs 31.7%, P = .044 | "microclots present in sepsis, 23/44 [52.3%] vs microclots absent in sepsis, 19/60 [31.7%]; P = .044" | p. 1, Abstract (sepsis association)
@Schofield2024microclotsDIC | DIC OR 51.4 (6.3-6721.1) | "odds ratio [OR], 51.4; 95% confidence interval [CI], 6.3-6721.1" | p. 1, Abstract (DIC odds ratio)
@Schofield2024microclotsDIC | 28-day mortality OR 5.3 (2.0-15.6) | "28-day mortality (OR, 5.3; 95% CI, 2.0-15.6" | p. 1, Abstract (mortality odds ratio)

## Cochrane 2023 — `Cochrane2023Plasmapheresis`

Source: `Literature/reviews/Cochrane2023Plasmapheresis/Cochrane2023Plasmapheresis.pdf` (32 pp)

@Cochrane2023Plasmapheresis | amyloid is not part of a thrombus | "amyloid is not a part of a thrombus which is a mix of fibrin mesh and platelets" | p. 2, Background (terminology)
@Cochrane2023Plasmapheresis | five laboratory studies | "We identified five laboratory studies." | p. 2, Abstract (study count)
@Cochrane2023Plasmapheresis | particles in healthy and diabetic plasma | "including those with PCC, healthy individuals, and those with diabetes" | p. 2, Abstract (particle distribution)
@Cochrane2023Plasmapheresis | three visual-only studies | "The results of three studies were based on visual images" | p. 2, Abstract (visual scoring)
@Cochrane2023Plasmapheresis | risk-of-bias concerns | "Formal risk of bias assessment showed concerns in how the studies were conducted" | p. 2, Abstract (risk of bias)
@Cochrane2023Plasmapheresis | zero plasmapheresis studies | "We found no studies where patients with post-COVID-19 condition had undergone plasmapheresis" | Results (no plasmapheresis study)

## STIMULATE-ICP 2026 — `StimulateICP2026rivaroxaban`

Source: `Literature/treatments/StimulateICP2026rivaroxaban/abstract.txt` — **abstract only, not open access**

@StimulateICP2026rivaroxaban | n = 778 randomised (383 co-enrolled, 395 direct) | "778 (383 co-enrolled in the ICP trial and 395 directly enrolled" | Abstract, Findings (recruitment)
@StimulateICP2026rivaroxaban | never-hospitalized population | "who had not been hospitalised with COVID-19" | Abstract, Methods (population)
@StimulateICP2026rivaroxaban | rivaroxaban 10 mg once daily for 12 weeks | "rivaroxaban 10 mg once daily, famotidine 40 mg with loratadine 10 mg once daily, or no drug for 12 weeks" | Abstract, Methods (dosing)
@StimulateICP2026rivaroxaban | colchicine arm n=192 | "colchicine (n=192)" | Abstract, Methods (arm size, colchicine)
@StimulateICP2026rivaroxaban | famotidine-loratadine arm n=193 | "famotidine-loratadine (n=193)" | Abstract, Methods (arm size, famotidine-loratadine)
@StimulateICP2026rivaroxaban | rivaroxaban arm n=197, no-drug arm n=196 | "rivaroxaban (n=197), or no drug (usual long COVID care only; n=196)" | Abstract, Methods (arm size, rivaroxaban and no-drug)
@StimulateICP2026rivaroxaban | rivaroxaban -1·06 (-2·47 to 0·35), p=0·139 | "rivaroxaban group (-1·06 points [-2·47 to 0·35, p=0·139)" | Abstract, Findings (rivaroxaban)
@StimulateICP2026rivaroxaban | colchicine -1·49 (95% CI -2·92 to -0·06), p=0·041 | "colchicine (-1·49 points [95% CI -2·92 to -0·06], p=0·041)" | Abstract, Findings (colchicine)
@StimulateICP2026rivaroxaban | famotidine-loratadine -1·48 (-2·88 to -0·08), p=0·038 | "famotidine-loratadine (-1·48 points [-2·88 to -0·08], p=0·038)" | Abstract, Findings (famotidine-loratadine)
@StimulateICP2026rivaroxaban | no group difference at 24 weeks | "24-week FAS scores, 12 weeks after drug cessation, were not significantly different" | Abstract, Findings (24-week follow-up)

---

## Qualitative claims (no fragment required)

These claims appear in the new text without a number attached, and each is carried by the
abstract-level statement cited above:

- `Turner2023FlowCytometry` — "flow-cytometric method reproduced the finding quantitatively". The paper
  introduces the method and reports microclot detection; no abundance figure from it is quoted in the book.
- `Saleem2026TEGreview` — included in the Phase 1 set and in the bib, but **not cited in new prose** and
  excluded from the Appendix H annotated section as a duplicate of the existing `Saleem2026MicroclotProfiling`
  entry. No claim depends on it.

## Coverage note

Every number in the new Phase 3 text traces to a row above. The two `Literature/` entries with
`abstract.txt` only — `Saleem2026TEGreview` and `StimulateICP2026rivaroxaban` — are recorded as
not open access in the Phase 1 search log; STIMULATE-ICP is the only abstract-only paper whose
numbers the text uses, and all six of its figures come from the structured abstract.

## Phase 5a additions

Three rows above were added during the Phase 5a sweep because the Phase 5 text relies on them and
they were not in the Phase 3 ledger: the LC-IOH-dominant fibrinogen PTM distribution, the reduced
fibrinogen PTMs in pre-COVID POTS, and the freeze-thaw caveat. The first two bound the ME/CFS
extension in `spec:microclot-composition-not-abundance`; the third is a pre-analytical confound.
