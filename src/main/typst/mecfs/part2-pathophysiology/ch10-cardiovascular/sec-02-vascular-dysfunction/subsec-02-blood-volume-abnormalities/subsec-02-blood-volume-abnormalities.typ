#import "../../../../shared/environments.typ": *

=== Blood Volume Abnormalities <sec:blood-volume>

Blood volume deficits are among the most consistently documented abnormalities in ME/CFS (see also Section @sec:cardiac-output for impact on cardiac preload). This section expands on measurement methods and pathophysiological mechanisms.

==== Measurement and Magnitude

    - *Measurement methods*: Radioisotope dilution (gold standard), carbon monoxide rebreathing, dye dilution
    - *Plasma volume*: Typically 10–20% below predicted @Streeten1998blood
    - *Red cell mass*: Variable; some studies report proportional reduction, others find preserved red cell mass with disproportionate plasma volume loss
    - *Total blood volume*: 10–15% below normal in most studies @Newton2016
    - *Hemoglobin/hematocrit*: May appear normal or elevated due to hemoconcentration

==== Mechanisms of Volume Depletion

*Renin-Angiotensin-Aldosterone System Dysfunction*
Studies document a paradoxical RAAS response in POTS and ME/CFS, with elevated angiotensin II despite hypovolemia (@Raj2005, @Stewart2006):

    - Blunted aldosterone response to hypovolemia @Raj2005
    - Impaired sodium retention leading to inappropriate natriuresis
    - Elevated angiotensin II may contribute to symptoms through vasoconstriction @Stewart2006

Miwa (2016) quantified this paradox directly, demonstrating that renin and aldosterone output were abnormally low in ME/CFS patients _despite simultaneous hypovolemia_---a pattern Raj had previously identified in POTS and termed the "renin-aldosterone paradox" @Miwa2016raas @Raj2005. Under normal physiology, RAAS activity rises sharply to correct low blood volume; that it fails to do so in ME/CFS indicates a specific pathological mechanism suppressing the system rather than simple deconditioning.

*Vasoactive Substance Spillover and Bradykinin-Mediated RAAS Suppression*

#fhypothesis(title: [Bradykinin Spillover as the Mechanism of RAAS Suppression], falsifiability: [weakly], justification: [Falsified if (a) systemic bradykinin levels are normal in ME/CFS patients during and after exertion, or (b) kallikrein-kinin system blockade fails to restore RAAS activity in ME/CFS])[
Wirth and Scheibenbogen (2020) proposed that the RAAS paradox originates upstream in skeletal muscle hypoperfusion @Wirth2020unifying. Under their model, $beta_2$-adrenergic receptor dysfunction (from sympathetic desensitisation, chronic vasoconstriction, and autoantibody blocking) impairs vasodilation in muscle vasculature. The body compensates by upregulating local vasoactive substances---bradykinin, prostaglandins, adenosine, ATP, and prostacyclin---to force blood vessel opening. When this compensatory production exceeds local clearance capacity, it spills from muscle interstitium into the systemic circulation.

Bradykinin reaching the kidneys produces two hypovolemia-inducing effects:

    + _Increased renal blood flow_ forces filtration of more solute (salt and water) than normal.
    + _Kallikrein-kinin system (KKS) opposition to RAAS_: bradykinin directly suppresses renin release in the juxtaglomerular apparatus. Because renin is the rate-limiting first step in the RAAS cascade, its suppression propagates downward to reduce angiotensin~II and aldosterone output.

The net result is chronic inappropriate natriuresis---the body dumps salt despite needing to retain it---producing progressive plasma volume contraction.

*Testable predictions:*

    / *(a)*: Systemic bradykinin or kallikrein levels are elevated in ME/CFS patients at rest and rise disproportionately after exertion compared to controls.
    / *(b)*: Pharmacological KKS blockade (e.g., icatibant, a bradykinin B2 receptor antagonist) restores appropriate RAAS upregulation in response to orthostatic challenge.
    / *(c)*: The magnitude of RAAS suppression correlates with the severity of muscular hypoperfusion measured by NIRS or invasive CPET.

*Treatment implication:* If bradykinin spillover drives RAAS suppression, then treatments restoring muscular vasodilation (e.g., $beta_2$-AR resensitisation via Mitodicure/MDC002) would address the upstream cause, while oral rehydration solutions and fludrocortisone provide downstream compensation.
*Certainty: 0.50*---the model is mechanistically coherent and consistent with the Miwa (2016) and Raj (2005) RAAS paradox data, but direct measurement of systemic bradykinin in ME/CFS has not been performed.
] <hyp:bradykinin-raas>

*Natriuretic Peptide Effects*

    - Elevated ANP or BNP promoting sodium/water excretion
    - May result from atrial stretch due to cardiac filling abnormalities

*Capillary Permeability and Microvascular Leakage*

Increased vascular permeability shifts fluid to the interstitium and may be inflammation-mediated (cytokines increase endothelial permeability), explaining peripheral oedema in some patients despite intravascular hypovolemia. Wirth and Scheibenbogen (2020) identify bradykinin as a specific mediator of microvascular leakage: at sufficiently high concentrations, bradykinin disrupts endothelial tight junctions, creating microscopic vascular leaks through which blood components escape into the interstitial space @Wirth2020unifying. The leaked fluid is eventually returned via lymphatic drainage, but sluggish lymphatic function may delay this return, transiently worsening hypovolemia after exertion.

==== Hypovolemia-Driven Thirst
<sec:hypovolemic-thirst>

The brain contains two distinct thirst centres: an osmotic centre (activated by cellular dehydration from high plasma osmolality) and a hypovolemic centre (activated by low circulating volume). In ME/CFS, the dominant thirst driver may be hypovolemic: patients are thirsty because they lack blood volume, not because their cells are dehydrated @Ussher2025 (this interpretation is proposed by Ussher based on the Wirth-Scheibenbogen model; direct comparison of osmotic versus hypovolemic thirst responses in ME/CFS has not been performed). The hypovolemic thirst threshold is approximately a 10% drop in plasma volume (~280~mL), a deficit commonly exceeded in ME/CFS patients.

This distinction has important clinical consequences. Patients responding to hypovolemic thirst by drinking plain water do not resolve the problem: without adequate sodium reabsorption capacity (suppressed RAAS), water passes through the kidneys without expanding plasma volume. The result is a vicious cycle of drinking and urinating without benefit---some patients report consuming 8--20 litres per day without relief (patient-reported; no clinical measurement data available).

#clinical-finding(title: [Near-Universal Vasopressin Deficiency in ME/CFS])[
Huhmar et al. (2024) measured vasopressin levels in 111 ME/CFS patients after overnight fasting and 10~hours of fluid deprivation. 82% had vasopressin below the detection limit, and 66.7% had lower-than-normal urine osmolality---indicating that the kidneys fail to concentrate urine even under dehydration conditions @Huhmar2024vasopressin. This is consistent with secondary vasopressin suppression downstream of RAAS dysfunction rather than primary diabetes insipidus.
] <obs:vasopressin-deficiency>

Oral rehydration solutions (ORS) containing glucose, sodium, and potassium exploit the intestinal sodium-glucose cotransporter (SGLT1) to achieve efficient electrolyte absorption, effectively bypassing the renal retention deficit. Clinical evidence for ORS efficacy is discussed in Chapter @ch:supplements.

==== The CO#sub[2]--Bohr--Bradykinin Triangle
<sec:co2-bradykinin>

The bradykinin spillover model (Section @hyp:bradykinin-raas) and the low CO#sub[2] findings (Chapter @ch:lifestyle) interact through a previously unrecognised feedback loop. Low pCO#sub[2] shifts the oxygen-haemoglobin dissociation curve leftward via the Bohr effect, reducing oxygen release to tissues. This worsens tissue hypoxia---precisely the condition that drives compensatory bradykinin production. The triangle is: impaired muscular respiration $arrow.r$ low CO#sub[2] $arrow.r$ reduced O#sub[2] delivery (Bohr effect) $arrow.r$ worsened tissue hypoxia $arrow.r$ increased bradykinin production $arrow.r$ more RAAS suppression $arrow.r$ more hypovolemia $arrow.r$ worse perfusion $arrow.r$ worse muscular respiration. Interventions raising CO#sub[2] (e.g., adapted Buteyko breathing, Chapter @ch:lifestyle) would cut this triangle at the CO#sub[2]--hypoxia link, reducing bradykinin production as a secondary benefit beyond direct vascular effects.

*Certainty: 0.30* --- each individual link (low CO#sub[2], Bohr effect, bradykinin production) is physiologically established, but their integration into a self-reinforcing triangle in ME/CFS is a novel synthesis that has not been directly tested.

