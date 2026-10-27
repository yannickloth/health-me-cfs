#import "../../../../../shared/environments.typ": *

==== Evidence in ME/CFS

#clinical-finding(title: [First Placebo-Controlled LDN Trial in Post-COVID Fatigue Is Null])[
The first double-blind, placebo-controlled randomized trial of low-dose naltrexone in a post-viral-fatigue population reported a null result. Naik et al. (2026) randomized 160 adults with post-COVID fatigue syndrome (new ME/CFS-like symptoms persisting ≥3 months after SARS-CoV-2) to LDN (titrated 1.0→4.5 mg/day) or matching placebo for 16 weeks. The primary outcome, Fatigue Severity Scale score, did not differ between arms (LDN mean 4.2, placebo mean 4.4; adjusted mean difference −0.76, 95% CI −4.18 to 2.67), and every prespecified secondary outcome was also null (pain VAS, PQSymp-12, daily step count, EQ-5D-5L utility). Grade ≥3 adverse events were uncommon and similar across arms (6.2% LDN vs 3.8% placebo). @Naik2026LDNPostCOVIDRCT @Naik2024LDNprotocol

This trial was registered (NCT05430152) and conducted in British Columbia and Ontario, Canada, with patient-partner involvement. It is currently a preprint and has not yet undergone peer review. The population was post-COVID fatigue syndrome, not classic ME/CFS, so the result weakens but does not by itself falsify LDN efficacy in ME/CFS. No placebo-controlled RCT of LDN in classic ME/CFS has yet reported.

(Certainty: 0.65. Evidence type: randomized controlled trial, preprint. Population: post-COVID fatigue syndrome with ME/CFS-like features — relevance to classic ME/CFS discounted by 0.15. Replication: first RCT in this population; directionally consistent with null LDN RCTs in fibromyalgia @DueBruun2024LDNFibromyalgia @Nielsen2026LDNFMResponder @RodriguezFreire2026LDNFMINNOVA. Severity applicability: unknown — the trial did not stratify by ME/CFS severity.)

*Consequence:* Clinicians and patients should weigh this null RCT against the prior uncontrolled positive reports when considering LDN for post-viral fatigue; the evidence for efficacy is now weaker than the observational literature alone suggested. If the result is replicated after peer review and generalizes to classic ME/CFS, the case for LDN as a disease-modifying therapy would collapse.
] <cf:naik2026-ldn-postcovid-rct>

#speculation(title: [The Null May Be a Dose-Window Miss, Not a Mechanism Miss])[
The Naik trial titrated LDN from 1.0 mg to 4.5 mg and tested only that upper band. The paper's own LDN dose-response model holds that the TLR4/Nrf2 hormetic anti-inflammatory window may sit at 0.5–1.5 mg, with higher doses sitting above the therapeutic window and potentially producing no benefit or active sickness (see the LDN dose-response discussion in @sec:low-dose-naltrexone-ldn). Under that model, a group-average null at 4.5 mg is a predictable outcome if the low-dose window was never sampled. The objective step-count null is consistent with dosing above the hormetic window rather than with a truly inert drug. @Calabrese2021Nrf2 @Kucic2021LDNmicroglia @BruunPlesner2020LDN

(Certainty: 0.45. Evidence type: mechanistic inference from hormetic pharmacology; no within-range dose-response trial exists. Population: post-COVID fatigue syndrome.)

*Falsifiable prediction:* A four-arm crossover trial of LDN 0.5/1.5/3.0/4.5 mg in post-viral fatigue would show a non-monotonic response curve with benefit at the low-dose window and loss of benefit (or worsening) at higher doses in at least a subgroup. Falsified if the dose-response is flat or monotonic across the full range.

*Consequence:* If the dose-window reading is correct, "LDN failed" would mean "the trial did not test the dose the theory says works" — keeping the low-dose question open for patients and researchers, and redirecting the next trial design away from fixed 4.5 mg dosing.

(Origin: brainstorm)
] <spec:naik2026-ldn-dose-window-miss>

#speculation(title: [The Null May Reflect a Population Miss: TRPM3 Dysfunction in ME/CFS But Not Post-COVID Fatigue])[
LDN's most documented molecular target in the ME/CFS literature is TRPM3 ion-channel restoration in natural killer cells, one of the most replicated ion-channel findings in classic ME/CFS. TRPM3 dysfunction has not been established in post-COVID fatigue syndrome, which is defined by symptom duration rather than by the TRPM3 channelopathy. If LDN's genuine therapeutic effect in ME/CFS is mediated primarily by TRPM3 restoration, then a null result in a PCFS population where the target may be absent is exactly what a target-specific drug should produce. @Cabanas2018trpm3 @Cabanas2021 @Lohn2024TRPM3LDN

(Certainty: 0.35. Evidence type: mechanistic inference from in-vitro ME/CFS studies; PCFS TRPM3 status unmeasured. Population: post-COVID fatigue syndrome — relevance to classic ME/CFS is indirect.)

*Falsifiable prediction:* In a head-to-head study, LDN restores TRPM3 calcium flux in ME/CFS NK cells but not in PCFS NK cells, and clinical response tracks TRPM3 normalization within ME/CFS but not PCFS. Falsified if PCFS patients show equivalent TRPM3 dysfunction to ME/CFS and LDN normalizes it in both without differential response.

*Consequence:* If post-COVID fatigue and ME/CFS fail LDN for different biological reasons, the Naik trial would tell clinicians little about whether a classic ME/CFS patient with the TRPM3 defect should try it — undermining the assumption that the two conditions are interchangeable treatment proxies.

(Origin: brainstorm)
] <spec:naik2026-ldn-trpm3-population-miss>

#limitation(title: [Prior Positive LDN Evidence in Post-Viral Fatigue Is Uncontrolled])[
The positive LDN evidence in post-viral fatigue comes entirely from uncontrolled or observational designs: a retrospective ME/CFS cohort reporting 73.9% self-reported response (@Polo2019), a retrospective post-COVID clinic comparison with a wide confidence interval (@Tamariz2024LDNpostcovid), an uncontrolled pre-post Long COVID study (@OKelly2022LDNlongcovid), and an open-label commercial LDN+NAD+ trial (@Isman2024LDNNAD). Each is susceptible to placebo effect, regression to the mean, selection bias, and — in the commercial trial — sponsor bias. A 2026 umbrella review of 105 LDN studies noted that early positive uncontrolled results rarely survive placebo-controlled testing. The Naik null RCT is therefore the first adequately controlled test in this population, and the inversion from positive observational data to a negative controlled result is the pattern predicted by these biases. @Gouda2026LDNevidence @Byambasuren2026LDNlongcovid

(Certainty: 0.50. Evidence type: methodological critique of observational studies plus umbrella-review pattern. Population: post-viral fatigue / ME/CFS-like populations.)

*Consequence:* Patients and clinicians should treat the earlier "78% improved" figures as uncontrolled self-report rather than efficacy evidence; the null RCT shifts the burden of proof back onto anyone claiming LDN works in post-viral fatigue.

(Origin: brainstorm)
] <lim:naik2026-ldn-observational-bias>

#limitation(title: [Limitations of the Naik 2026 Trial])[
The Naik 2026 result should be read with four important caveats. First, it is a preprint and has not yet undergone peer review. Second, the 95% confidence interval around the primary adjusted mean difference (−4.18 to 2.67) is wide and includes a clinically meaningful improvement as well as worsening; the trial was powered for a 4.7-point difference, so smaller benefits cannot be excluded. Third, adherence was lower in the LDN arm than in the placebo arm (77.9% vs 86.8% taking ≥80% of doses), which biases the intention-to-treat analysis toward the null. Fourth, the post-COVID fatigue syndrome case definition is broader than Fukuda, CCC, or ICC ME/CFS and included no severity stratification or TRPM3/inflammatory phenotyping, so any true responder subtype is diluted in the group mean. @Naik2026LDNPostCOVIDRCT @Naik2024LDNprotocol

(Certainty: 0.40. Evidence type: trial-methodology limitations. Population: post-COVID fatigue syndrome.)

*Consequence:* The honest headline is "LDN did not produce a large enough average effect to detect in this trial" rather than "LDN does not work" — a narrower conclusion that leaves the door open for subgroup effects and replication.

(Origin: brainstorm)
] <lim:naik2026-ldn-trial-limitations>
