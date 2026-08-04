# Additional Research Directions — Gaps Not Covered by the Main Brainstorm

Date: 2026-08-04
Context: Companion to `20260804_research-ideas.md` (sections A–E). These are directions that file does not cover. Same convention: every idea states its prediction and what each outcome explicitly implies for the HSAT2 hypothesis.

**Terminology** (same as research-ideas): **Confirmed** = prediction observed with controls; **Refuted** = prediction not observed despite adequate measurement; consequences of both are stated directly.

---

## H1. Direct SARS-CoV-2 → HSAT2 induction test

**Gap:** The paper's trigger is herpesvirus reactivation. Whether SARS-CoV-2 *itself* induces HSAT2 — without any herpesvirus intermediate — has never been tested. PubMed search "SARS-CoV-2 AND satellite RNA AND pericentromeric" returns **zero results** (verified 2026-08-04). This is a complete literature void.

**Design:** Infect permissive cell types (airway epithelial, endothelial, neuronal lines) with SARS-CoV-2. Quantify HSAT2 RNA by ddPCR/FISH at 6–72 hours. Include herpesvirus-coinfection and reactivation arms for comparison.

**If SARS-CoV-2 alone induces HSAT2:** Herpesvirus reactivation is *not necessary* — it is one trigger among several. The paper's mechanism broadens, and herpesvirus-seronegative Long COVID patients cease to be a problem case. The centromere-disruption step would need to be shown for SARS-CoV-2 specifically, or another induction route (interferon, epigenetic erosion) applies.

**If SARS-CoV-2 alone does NOT induce HSAT2:** Herpesvirus reactivation (or another co-trigger) is *necessary* in the model. This strengthens the paper's specific claim but creates a hard prediction: herpesvirus-seronegative Long COVID patients must be HSAT2−. Combined with study A1, this becomes a clean falsification gate.

**Feasibility:** High — standard BSL-3 virology plus ddPCR. This is arguably the cheapest decisive experiment in the entire program.

---

## H2. Antiviral treatment as an interventional causal test in humans

**Gap:** All patient evidence is observational. The strongest possible human evidence for the causal chain is interventional: if suppressing herpesvirus replication lowers HSAT2 and symptoms improve, the upstream direction is directly supported.

**Existing trials to exploit:** valganciclovir in HHV-6/EBV-titer-positive ME/CFS (Montoya 2013, EVOLVE trial — in repo bib), valacyclovir in EBV-subset CFS (Lerner 2007). These trials measured clinical endpoints but never satellite RNA.

**Design (retrospective):** Obtain stored pre/post-treatment samples from these trials. Measure EV HSAT2 RNA. Compare responders vs. non-responders.

**Design (prospective):** New antiviral trial arm with HSAT2 as a mechanistic biomarker: baseline → on-treatment → post-treatment, with clinical outcome correlation.

**If responders show HSAT2 decline and non-responders do not:** Three explicit consequences: (1) the reactivation → HSAT2 arrow is supported by intervention, not correlation; (2) HSAT2 becomes a pharmacodynamic biomarker for antiviral trials; (3) antiviral non-response in HSAT2+ patients points to a self-sustaining state that no longer requires viral input — which is the paper's "self-sustaining loop" claim, directly evidenced.

**If responders improve clinically without HSAT2 decline:** HSAT2 is not on the causal path between viral suppression and symptom relief; the hypothesis's therapeutic prediction is falsified in its antiviral form.

---

## H3. Exertion challenge (CPET) as a controlled HSAT2 trigger

**Gap:** Post-exertional malaise (PEM) is the defining symptom of ME/CFS, and the paper's model has no link to it. The known molecular bridge: physiological stress activates HSF1, and HSF1 drives pericentromeric satellite transcription (HSAT3 in heat shock; Vourc'h 2022 is in `refs.bib`). The two-day cardiopulmonary exercise test (2-day CPET) is the established, validated PEM-induction paradigm in ME/CFS research.

**Design:** Sample Long COVID/ME/CFS patients and controls before CPET, immediately after, and at 24/48/72 hours (the PEM window). Measure EV HSAT2 RNA at each timepoint. Correlate with symptom severity scores.

**If HSAT2 rises during the PEM window:** The hypothesis gains a direct link to the disease's defining clinical event, and HSF1-mediated satellite induction becomes the named molecular bridge between exertion and relapse. This also explains why the disease is relapsing-remitting rather than static.

**If HSAT2 is flat across the PEM window:** The exertion–relapse cycle operates independently of HSAT2 dynamics; the hypothesis would then explain baseline disease but not its hallmark fluctuation — a significant scope limitation that must be stated.

---

## H4. Cell-free DNA HSAT2 as a simpler clinical assay

**Gap:** Studies A1/C1/C2/C4 all propose EV *RNA* measurement, which is technically demanding (RNA lability, EV isolation variance). The cancer field already uses cell-free HSAT2 *DNA* as a blood biomarker — Cambier 2021 (osteosarcoma), Yoruker 2026 (colon cancer), Kishikawa 2016 and Seimiya 2023 (pancreatic cancer) are all in `refs.bib`. DNA is stable; no EV isolation required.

**Design:** ddPCR or hybridization-capture for HSAT2 sequences in plasma cfDNA from Long COVID/ME/CFS patients vs. controls. Compare head-to-head with EV RNA (A1) on the same samples.

**If cfDNA HSAT2 discriminates patients from controls:** A clinically deployable assay exists immediately — cfDNA workflows are routine in liquid-biopsy labs. The biomarker arm of the program accelerates by years.

**If cfDNA is negative but EV RNA is positive:** HSAT2 release is vesicle-packaged RNA, not naked DNA — itself a mechanistic datum (it constrains the release route to active EV secretion rather than cell death).

**If both are negative:** same consequence as A1 refutation — the dissemination claim fails.

---

## H5. iciHHV-6 as a natural genetic experiment

**Gap:** ~0.8–1% of the population carries inherited chromosomally integrated HHV-6 (iciHHV-6): the full viral genome is present in the telomere of every cell. These individuals reactivate HHV-6 from a fundamentally different substrate than latently infected people.

**Design:** Screen ME/CFS/Long COVID cohorts for iciHHV-6 (ddPCR ratio of HHV-6 genome to single-copy gene, ≥1 copy/cell). Compare iciHHV-6 prevalence in patients vs. matched population controls.

**If iciHHV-6 carriers are overrepresented among patients:** A defined genetic subgroup exists in which herpesvirus biology is constitutively abnormal — strong support for viral reactivation as a causal factor, with a clean genetic handle for stratification.

**If prevalence matches the general population:** The constitutive-presence model is excluded; reactivation from ordinary latency remains the operative mechanism. Note: HHV-6 integrates at *telomeres*, not pericentromeres — so an iciHHV-6 association would implicate HHV-6 reactivation generally, not pericentromeric disruption specifically; this nuance must be stated in any interpretation.

---

## H6. EBV vaccination as a future natural experiment

**Gap:** EBV vaccine candidates are in clinical development (⚠ verify current trial phase and candidate names at clinicaltrials.gov before citing — PubMed shows 214 EBV-vaccine-trial records but candidate-level status was not confirmable in this session). If an EBV vaccine prevents infectious mononucleosis, and ~10–13% of mononucleosis cases convert to ME/CFS (Jason & Katz 2025; Ruiz-Pablos 2021), then vaccinated cohorts should show reduced ME/CFS incidence.

**Design:** No new trial needed — propose ME/CFS incidence as a secondary/registry-linked endpoint in existing or planned EBV vaccine programs, or plan a retrospective cohort comparison once vaccinated populations exist.

**If vaccinated cohorts show lower ME/CFS incidence:** The EBV-trigger route is confirmed at population level by prevention — the strongest causal evidence class available in epidemiology.

**If incidence is unchanged despite prevented mononucleosis:** Symptomatic primary EBV infection is not the relevant exposure (subclinical seroconversion would then dominate), and the post-IM ME/CFS link needs re-interpretation.

---

## H7. Post-vaccination chronic syndromes as a discriminator

**Gap:** A minority report chronic fatigue syndromes after SARS-CoV-2 vaccination without productive viral infection. Geneviève's plan already notes vessel alteration post-vaccination. This group is a discriminating control: vaccine antigens do not replicate and should not disrupt centromeres.

**Design:** EV HSAT2 measurement in post-vaccination chronic fatigue patients, Long COVID patients, and healthy vaccinated controls.

**If post-vaccination patients are HSAT2− while Long COVID patients are HSAT2+:** Productive viral replication (and its centromere effects) is required for HSAT2 induction — supporting the paper's mechanism and separating the two clinical entities molecularly.

**If post-vaccination patients are also HSAT2+:** Replication is not required; immune stimulation alone suffices, and the induction mechanism must be reframed toward inflammation/interferon-driven epigenetic erosion.

**Explicit caution:** this comparison is politically sensitive; the design must be framed as a mechanism discriminator, not as an investigation of vaccine harm, and requires careful ethics framing.

---

## H8. Mandatory sex stratification in all proposed studies

**Gap:** ME/CFS and Long COVID are female-predominant (~2–4:1), and Ma et al. 2026 found persistent exhausted herpesvirus-specific CD8+ T cells preferentially in women. None of the studies in `20260804_research-ideas.md` state a sex-stratification requirement.

**Action, stated as a design rule:** Every patient-facing study in both documents (A1, A2, B4, C1–C4, H2–H5, H7) must pre-register sex-stratified analysis with adequate power in each stratum, and must report sex-specific effect sizes even at null.

**If HSAT2/reactivation effects are stronger in women:** The female predominance gains a mechanistic candidate (sex-hormone effects on chromatin state or satellite expression), and therapeutic trials must stratify dosing/response by sex.

**If effects are sex-independent:** The female predominance of PAIS lies upstream of the HSAT2 mechanism (e.g., in immune response to infection), and HSAT2-targeted therapy should show sex-independent efficacy — itself a useful trial prediction.

---

## H9. Cancer-related fatigue as a triangulation cohort

**Gap:** The paper's entire analogy is built on cancer, but no one has checked the shared *symptom* axis: cancer-related fatigue (CRF) is a severe, persistent, ME/CFS-overlapping syndrome. If HSAT2 drives both cold-tumor immunosuppression and PAIS fatigue, CRF patients with HSAT2+ tumors should show elevated circulating HSAT2.

**Design:** EV HSAT2 and cfDNA HSAT2 measurement in (a) fatigued cancer survivors in remission, (b) non-fatigued survivors, (c) ME/CFS patients, (d) healthy controls.

**If fatigued survivors are HSAT2+ at rates similar to ME/CFS:** The cancer analogy extends from mechanism to clinical phenotype — the strongest possible internal validation of the paper's core analogy — and CRF becomes an indication for HSAT2-targeted therapy.

**If fatigued survivors are HSAT2− despite HSAT2+ tumor history:** The fatigue axis and the tumor-immune axis dissociate; the analogy holds for immunosuppression only, and the paper's symptom-level framing must be narrowed.

---

## H10. Stress–HSF1–satellite axis as the flare mechanism

**Gap:** Psychological and physiological stress reactivates HSV (Chida 2009 meta-analysis, in repo bib). HSF1, the master stress-response factor, directly drives pericentromeric satellite transcription (Vourc'h 2022, in `refs.bib`). The paper has no flare mechanism; stress is the most commonly reported flare trigger in ME/CFS.

**Design:** Two arms. (1) *In vitro:* apply stressors (heat shock, glucocorticoid pulses, oxidative stress) to cells carrying latent herpesvirus; measure HSAT2/HSAT3 induction and viral reactivation markers simultaneously — testing whether HSF1 activation and reactivation are coupled. (2) *Clinical:* experience-sampling study in patients — daily stress scores + weekly EV HSAT2 over 8–12 weeks.

**If stress spikes precede HSAT2 rises:** The relapse mechanism is molecularly specified end-to-end: stress → HSF1 → satellite transcription (+ possible viral reactivation) → EV HSAT2 → symptom flare. Behavioral stress management gains a measurable molecular target.

**If no temporal coupling:** Stress-induced flares operate through other pathways (autonomic, HPA), and the HSAT2 model remains a baseline-disease mechanism only — same scope limitation as H3's null.

---

## Integration with the Main Program

| Idea | Type | Feasibility | Decisiveness |
|------|------|-------------|--------------|
| H1 — SARS-CoV-2 direct induction | Direct test | High (BSL-3 + ddPCR) | **Decisive**: splits necessary-vs-sufficient trigger models |
| H2 — Antiviral interventional test | Clinical/interventional | Medium (stored samples) or High (new arm) | **Decisive**: only human interventional evidence in the program |
| H3 — CPET exertion trigger | Clinical/physiological | Medium (2-day CPET infrastructure exists) | High: links mechanism to defining symptom |
| H4 — cfDNA HSAT2 assay | Technical | High (routine liquid-biopsy workflow) | High: accelerates biomarker arm; constrains release route either way |
| H5 — iciHHV-6 prevalence | Genetic association | Medium (ddPCR screen on existing cohort DNA) | Medium: positive result is strong; null is uninformative |
| H6 — EBV vaccine natural experiment | Epidemiological | Low now (no vaccinated cohort yet) | High when feasible: prevention is the strongest causal evidence |
| H7 — Post-vaccination discriminator | Clinical comparison | Medium (ethics/framing overhead) | High: separates replication-dependent from inflammation-dependent induction |
| H8 — Sex stratification mandate | Design rule | Zero cost (analysis requirement) | Enabler: applies to all studies |
| H9 — Cancer-related fatigue triangulation | Clinical comparison | Medium (survivor cohorts exist) | High: validates the paper's central analogy at symptom level |
| H10 — Stress–HSF1 flare mechanism | Mechanistic + clinical | Medium | Medium-High: specifies the relapse mechanism |

**Suggested insertions into the main priority ranking:** H1 and H2 belong in the top tier — H1 because it is the cheapest experiment that can falsify the trigger model, H2 because it is the only interventional test in humans. H4 should accompany A1 as a paired assay on the same samples.
