#import "../../../../shared/environments.typ": *

=== HPA Axis (Equations @eq:hpa-axis and @sec:hpa-dysfunction-model)

*Measurements required.*
(1) Salivary cortisol at waking, +30 min (cortisol awakening response, CAR), noon, and bedtime (why: four time points constrain circadian amplitude $a_c$, phase $phi_c$, and mean cortisol level).
(2) ACTH stimulation test (why: distinguishes central from adrenal dysfunction---the model predicts enhanced central feedback, not adrenal failure).
(3) Dexamethasone suppression test (why: constrains the feedback sensitivity parameter $n_F$---enhanced suppression = higher $n_F$).

*Worked example.*
Healthy HPA: $a_c = 0.6$ (60% circadian modulation), $n_F = 2.5$. The cortisol awakening response (CAR) is $F_(upright("peak")) / F_(upright("waking")) approx 1 + 0.6 = 1.6$ (60% rise). In ME/CFS with $a_c = 0.3$ and $n_F = 4.0$ (steeper feedback): CAR $approx 1.3$ (30% rise---blunted). Basal cortisol is reduced because the steeper feedback suppresses CRH at lower cortisol concentrations: healthy trough $F approx 2$ nmol/L, ME/CFS trough $F approx 1.2$ nmol/L. The ACTH response to CRH stimulation is preserved (the pituitary and adrenal are intact), but the hypothalamic drive is suppressed. This pattern matches Cleare's findings @Cleare1999: low-normal cortisol with preserved adrenal reserve.

*Inter-model dependencies.*
_Inputs_: stress signals ($sigma_(upright("stress"))$) from external events and from pain model (@sec:central-sensitization-model); pro-inflammatory cytokines modulate CRH release. _Outputs_: cortisol $F$ inhibits pro-inflammatory cytokine production (Chapter @ch:integrated-systems, Equation @eq:cortisol-immune), modulates viral reactivation rate (Chapter @ch:immune-system-models), and influences circadian sleep drive.

*Scope and rationale.*
The three-variable model (CRH, ACTH, cortisol) omits ultradian pulsatility (~90-minute pulses), mineralocorticoid vs. glucocorticoid receptor dynamics, and cortisol-binding globulin. These are acceptable omissions for capturing the ME/CFS HPA phenotype (blunted diurnal rhythm, enhanced feedback) at clinically relevant timescales (hours to days). Sub-hourly dynamics would require a pulsatile model with $>$10 additional parameters.

*Falsification criteria.*
The model predicts that ME/CFS HPA dysfunction is _central_ (enhanced hypothalamic feedback) rather than _adrenal_ (reduced cortisol synthesis). *Falsified if*: ACTH stimulation tests in ME/CFS cohorts show impaired adrenal cortisol production (reduced cortisol response to exogenous ACTH), indicating primary adrenal insufficiency rather than central dysregulation.

*Subgroup qualifier*: The central-feedback model applies to the functional HPA phenotype characteristic of established ME/CFS. It does not apply to, and is not falsified by, the post-viral pituitary-injury subgroup described in Chapter @ch:endocrine (@sec:postviral-pituitary), in which SARS-CoV-1, SARS-CoV-2, or other coronaviruses directly damage pituitary corticotrophs via ACE2-mediated infection or autoimmune hypophysitis @Leow2005sars @Carosi2024hypopituitarism. In this subgroup, reduced ACTH output reflects structural pituitary damage---a mechanistically distinct pathway that coexists with but does not invalidate the central-feedback model for the broader ME/CFS population. Identifying this subgroup requires dynamic testing (ACTH stimulation test or ITT) rather than morning cortisol, and its prevalence in post-COVID ME/CFS cohorts remains to be established prospectively.

*Clinical implications.*
*Whom to treat*: patients with documented blunted CAR ($< 30%$ rise) and/or low 24-hour urinary free cortisol. *How*: the model predicts that low-dose hydrocortisone replacement (5--10 mg/day, physiological, not pharmacological) should partially restore the anti-inflammatory brake on the immune system. The model also predicts that stress management interventions reduce $sigma_(upright("stress"))(t)$, freeing cortisol capacity for immune regulation rather than stress response. The enhanced feedback sensitivity ($n_F$ elevated) means that standard-dose glucocorticoids will produce exaggerated suppression---_lower doses are predicted to be both safer and more effective in ME/CFS than in primary adrenal insufficiency_.

