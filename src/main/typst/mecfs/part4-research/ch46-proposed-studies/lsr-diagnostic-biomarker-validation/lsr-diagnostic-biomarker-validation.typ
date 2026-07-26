#import "../../../shared/environments.typ": *

== Lytic-to-Structural IgG Ratio (LSR) Diagnostic Biomarker Validation
<sec:lsr-biomarker-validation-study>

=== Background and Rationale

The Lytic-to-Structural IgG Ratio (LSR) hypothesis (@hyp:lytic-structural-igg-ratio) proposes that the ratio of IgG against lytic-cycle herpesvirus antigens (BZLF1, EA-D, dUTPase) to structural antigens (VCA-p18, EBNA-1, gB) discriminates ME/CFS from healthy seropositive controls — using each patient as their own internal control to eliminate confounding by infection timing, age, and antigen load. The concept is entirely novel: no published study in any disease has simultaneously measured lytic-cycle and structural-antigen herpesvirus IgG and computed the LSR. The LSR could resolve the contradictory serology literature in ME/CFS (structural-antigen IgG is null in two large studies, Cliff 2019 and Blomberg 2019, while lytic-antigen IgG is elevated in three smaller studies, Palomo 2026, Loebel 2017, Apostolou 2022) and provide a low-cost diagnostic stratification tool using existing clinical serology platforms.

If validated, the LSR would be the first serological biomarker to distinguish ME/CFS patients by mechanism (ALR-driven vs LLPC-driven antibody abnormality) — directing treatment toward antiviral therapy for the ALR group and B cell-targeted research for the LLPC group.

=== Hypothesis

#hypothesis(title: [LSR Discriminates ME/CFS from Healthy Seropositive Controls and Stratifies by Mechanism])[

The LSR (anti-BZLF1 IgG / anti-VCA-p18 IgG) will achieve AUC ≥ 0.75 for discriminating ME/CFS from healthy seropositive controls, while neither anti-BZLF1 nor anti-VCA-p18 IgG alone will show significant discrimination. IgG avidity for anti-herpesvirus antibodies will be uniformly high (avidity index >0.6, consistent with remote past infection). In a subset of patients receiving a 6-month valacyclovir trial, pre- and post-treatment LSR measurements will discriminate between ALR-driven (LSR declines with valacyclovir) and LLPC-driven (LSR unchanged with valacyclovir) mechanisms.

*Falsifiable prediction:* LSR will be normal (within 1 SD of control mean) in \>50\% of ME/CFS patients who are seropositive for EBV — the LSR is a subgroup biomarker, not a universal diagnostic. Falsified if LSR shows no significant difference between groups (AUC $<$ 0.60). Falsified if structural-antigen IgG shows equivalent discrimination to LSR (contradicts the premise that the ratio captures information neither antibody alone provides). Falsified if low-avidity IgG ($<$0.4) is detected in \>10\% of ME/CFS patients (would contradict the LLPC model and suggest recent primary infection or reactivation rather than LLPC maintenance).

] <hyp:lsr-diagnostic-biomarker>

=== Study Design

==== Design Type

Cross-sectional case-control design with nested antiviral-response substudy. Phase 1: cross-sectional comparison of LSR between ME/CFS and healthy controls. Phase 2: nested prospective cohort within the ME/CFS group comparing pre- and post-valacyclovir LSR.

==== Sample Size

*Phase 1 (cross-sectional):* Total n = 200 (100 ME/CFS patients + 100 age/sex-matched healthy seropositive controls). ME/CFS diagnosis per IOM 2015 criteria, recruited from clinical and community settings. Exclude: \<6 months from EBV primary infection (to ensure high-avidity IgG, avoiding confound by recent seroconversion), current immunosuppressive therapy, known primary immunodeficiency. The healthy controls sample size of 100 provides 80% power to detect an AUC ≥0.75 at α = 0.05. Stratify ME/CFS by severity (mild/moderate n=50, severe/very severe n=50) to assess severity-dependence.

*Phase 2 (valacyclovir substudy):* n = 40 (subset of ME/CFS patients from Phase 1 with elevated LSR AND post-infectious onset AND clinical suspicion of herpesvirus-driven pathology, treated with valacyclovir 1g TID for 6 months). LSR measured at baseline, 3 months, and 6 months. Primary endpoint: change in LSR from baseline to 6 months, stratified by clinical response (≥30% improvement on CGI-I vs $<$30%).

==== Measures

*Primary serological:* Anti-BZLF1 IgG, anti-VCA-p18 IgG, anti-EA-D IgG, anti-dUTPase (BLLF3) IgG, anti-EBNA-1 IgG — all quantified by ELISA with standard curves (not seroprevalence). Compute LSR = anti-BZLF1 ÷ anti-VCA-p18. Secondary: anti-HHV-6 U45 dUTPase IgG, anti-CMV gB IgG, anti-VZV gE IgG for poly-herpesvirus LSR profiling.

*Avidity:* Urea 8M wash ELISA for anti-BZLF1 and anti-VCA-p18 IgG. Avidity index $<$0.4 = low (recent primary infection or recent ALR with low-affinity SLPB output); 0.4–0.6 = intermediate; >0.6 = high (LLPC-derived, remote infection).

*Clinical:* Fatigue Severity Scale (FSS), SF-36 physical function, CGI-I (Phase 2), post-exertional malaise questionnaire (DSQ-PEM).

*Viral:* Quantitative EBV DNA PCR (plasma), HHV-6 DNA PCR (plasma) — to correlate LSR with viral load and test the prediction that dUTPase antibody elevation correlates with viral DNA detection.

==== Analysis Plan

*Primary analysis:* ROC curve for LSR (anti-BZLF1 ÷ anti-VCA-p18) vs standard serology (anti-VCA-p18 alone, anti-EBNA-1 alone) using healthy seropositive controls as reference. DeLong test for AUC comparison.

*Secondary analyses:* (a) LSR × severity correlation (FSS, SF-36, DSQ-PEM); (b) LSR stratification by valacyclovir response (Phase 2: pre-post LSR change in responders vs non-responders, paired t-test); (c) poly-herpesvirus LSR (anti-U45 ÷ anti-gB for HHV-6, anti-gB ÷ anti-gE for CMV) to determine if LSR elevation is EBV-specific or a general herpesvirus phenomenon; (d) avidity index distribution (histogram with mixture model to test for bimodality indicating a low-avidity subpopulation); (e) correlation between LSR and viral DNA load (EBV qPCR).

*Power note:* Phase 2 (n=40) has 80% power to detect a 0.5 SD change in LSR at α = 0.05 if ≥20 patients per response group. If the valacyclovir response rate is $<$50\%, Phase 2 may be underpowered for the stratified analysis — in that case, report the unstratified pre-post LSR change and the correlation with response magnitude (continuous analysis rather than responder/non-responder comparison).

==== Feasibility and Cost

*Assay availability:* Anti-BZLF1 and anti-VCA-p18 ELISA kits are commercially available (multiple vendors). Anti-dUTPase (BLLF3) ELISA is NOT commercially available — this would require custom antigen production (recombinant BLLF3 protein, HIS-tagged, E. coli expression). This is the main feasibility bottleneck. If custom dUTPase ELISA is not feasible, restrict primary analysis to BZLF1 + VCA-p18 LSR and use commercial EA-D IgG as a secondary lytic marker.

*Cost estimate:* ~\$3,000 per patient (ELISA panels + avidity + qPCR + clinical assessments). Phase 1 (n=200): ~\$600,000. Phase 2 (n=40): ~\$120,000. Total: ~\$720,000 over 3 years. Does not include cost of valacyclovir (generic, typically \$30–50/month — covered by participant or insurance). If the project is restricted to commercial assays only (no custom dUTPase ELISA), subtract ~\$100,000. If the project is further restricted to Phase 1 only (no valacyclovir substudy), total ~\$500,000.

*Time:* 2 years (6 months for IRB, assay setup, pilot n=20; 12 months for Phase 1 enrollment; 6 months for Phase 2; 6 months for analysis and publication).

==== Expected Outcomes

*If LSR supports the hypothesis:* LSR (ratio of anti-BZLF1 to anti-VCA-p18) achieves AUC $≥$0.75, while VCA-p18 IgG alone achieves AUC $<$0.55. This would constitute the first objective serological biomarker in ME/CFS that discriminates by mechanism rather than just detecting presence/absence of infection. A positive result could be deployed immediately on existing clinical ELISA platforms — no new assay development needed for the core BZLF1/VCA-p18 ratio. A valacyclovir-responsive LSR subgroup would identify patients whose antibody abnormality is ALR-driven and who are candidates for antiviral trials; a valacyclovir-nonresponsive LSR subgroup would be candidates for B cell-targeted research.

*If LSR is null (AUC $<$0.60):* The herpesvirus antibody abnormality in ME/CFS is either (a) not real (all serological studies are false positives or false negatives due to methodology), or (b) real but not captured by the lytic-to-structural ratio — the abnormality may be in a different antigen class (repeat-region proteins, tegument proteins), a different herpesvirus, or a different biological compartment (CSF, tissue) not reflected in serum IgG. A null result would close the LSR hypothesis definitively and redirect herpesvirus research toward antigen-resolution serology panels covering the full herpesvirus proteome.

*If avidity is low ($<$0.4) in a subset:* This would refute the LLPC model for that subset and support the presence of recent abortive lytic reactivation generating low-affinity SLPB-derived antibodies. This would change the interpretation of the entire antibody persistence section — some ME/CFS patients do have genuinely "recent" (low-avidity) anti-herpesvirus responses, and the virus is NOT dormant. This subset would likely be the valacyclovir responders.

==== Limitations

- The LSR concept has never been measured in any disease population — the study is the first-ever LSR measurement. The normal range for LSR in healthy EBV-seropositive adults is unknown. A pilot n=20 healthy controls would be needed to establish a reference range before power calculations.
- Anti-BZLF1 ELISA sensitivity and specificity for detecting elevated LSR is unknown — the assay may be validated for qualitative detection (seropositive/seronegative) but not for quantitative ratio computation against anti-VCA-p18.
- The valacyclovir substudy is observational (treatment-as-usual), not randomized. Patients are self-selected for valacyclovir trial — confounding by indication is inevitable. A valacyclovir-nonresponsive LSR could simply reflect the wrong drug for the wrong virus, not proof that the LSR is LLPC-driven.
- Custom anti-dUTPase (BLLF3) ELISA may be logistically infeasible — the study's ability to confirm the Palomo 2026 dUTPase findings depends on this custom assay.
- Poly-herpesvirus LSR profiling (HHV-6, CMV, VZV) requires custom antigens for each virus's dUTPase — this multiplies the assay development bottleneck.
- IgG avidity assays for anti-BZLF1 and anti-VCA-p18 are not commercially available as standardized kits — urea-wash modifications to commercial ELISA kits need validation.

*Consequence:* If validated, the LSR would be the first ME/CFS biomarker to provide mechanistic stratification (ALR-driven vs LLPC-driven) using existing clinical serology platforms — deployable within 2–3 years of a positive result. A null result would eliminate a key hypothesized mechanism (selective lytic antibody boosting) and redirect herpesvirus research toward whole-proteome serology rather than targeted ratio approaches. The LSR concept itself — using an antibody ratio as a diagnostic rather than an absolute titre — is transferable to other post-infectious syndromes (long COVID, post-treatment Lyme) and other persistent pathogens (CMV, HHV-6, VZV, HSV). Even a null result in ME/CFS would validate or refute a broadly applicable diagnostic strategy.
