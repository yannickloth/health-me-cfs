
#import "../../../shared/environments.typ": *

== How to Use This Chapter

For each medication, the entry answers four questions: (1) what system does this medication probe? (2) if it works, what does that tell us about which mechanisms are broken? (3) if it does NOT work, what does that make less likely? (4) how does this medication's response combine with others to narrow root cause candidates?

=== Patient-Reported Treatment Stratification (Eckey et al.\ 2025) <sec:patient-reported-stratification>

#clinical-finding(title: [Patient-Reported Outcomes Define Four Treatment-Relevant Subgroups])[
A patient-reported survey of $n = 3{,}925$ ME/CFS and long COVID patients evaluated more than 150 interventions and identified four symptom/co-morbidity clusters with distinct treatment responses @Eckey2025PatientReported. (Certainty: 0.70.)

*Cluster 1 (Multisystemic):* highest rates of nearly all symptoms and comorbidities; lowest functional capacity (39.1% ± 17.6%). Highest positive responses to intravenous/subcutaneous immunoglobulin (IgG, 73.3%) and manual lymphatic drainage (73.9%). No significant improvement from ADHD stimulants relative to reference.

*Cluster 2 (POTS-Dominant):* highest POTS symptom (75.1%) and comorbidity (95.1%) rates. Highest responses to pacing (78.5%), fluids/electrolytes (69.3%), maraviroc (65.4%), and compression stockings (63.0%) — consistent with autonomic/hemodynamic targeting (see @sec:pots-cascade).

*Cluster 3 (Cognitive and Sleep Dysfunction + Pain):* high brain fog (91.9%), unrefreshing sleep (85.5%), and pain; *markedly low* POTS (3.7% symptom). ADHD prescription stimulants beneficial (62.1%) — whereas in Cluster 1 the same medications showed no significant benefit.

*Cluster 4 (Milder Symptomatology):* highest capacity (57.5% ± 20.6%); pacing (78.6%) and fluids/electrolytes (66.7%) most effective.

*Stratification value.* Pacing and fluids/electrolytes were effective across *all* clusters, whereas other treatments were cluster-specific: IgG and lymphatic drainage for multisystemic patients; autonomic/hemodynamic agents for POTS-dominant patients; CNS stimulants for cognitive-predominant patients without dominant POTS. This directly extends the existing stimulant contraindication in POTS-dominant ME/CFS (see @sec:contraindication-ladder in @ch:mechanistic-cascade-tracing) to a four-cluster taxonomy. (Severity applicability: all levels, explicitly stratified by capacity.)

*Consequence:* This gives clinicians a practical, survey-based rule of thumb for matching patients to likely-effective treatments — a POTS-dominant patient should not be trialed on CNS stimulants, but stimulants may be appropriate in a low-POTS cognitive-predominant patient. It transforms treatment selection from trial-and-error across 150 options to tiered starting points shaped by the patient's symptom cluster.

*Evidence class caveat:* These are patient-reported, unblinded outcomes from a single large survey — not randomized or blinded clinical trial data. Response rates are self-assessed net effects, subject to recall/selection bias and placebo; the survey authors explicitly decline to make treatment recommendations. This content is hypothesis-generating stratification guidance, and any cluster-matched treatment decision still requires individual clinical judgment and monitoring.
] <clin:patient-reported-clusters>

#clinical-finding(title: [Disease Severity, Not Diagnosis Label, Drives Treatment Response])[
Across the same $n = 3{,}925$ survey, patient capacity level (disease severity) was *the single strongest predictor* of treatment effectiveness — stronger than the ME/CFS-versus-long-COVID diagnosis, sex, disease duration, or age @Eckey2025PatientReported. (Certainty: 0.70.) Treatment responses correlated strongly between ME/CFS and long COVID ($R^2 = 0.68$), and the four clusters were essentially unchanged by whether patients carried an ME/CFS or long COVID label.

*Implication for this chapter.* The differential-diagnostic information a medication response provides must be interpreted relative to the patient's severity and symptom cluster, not the diagnosis label alone. A treatment that helps a mild-to-moderate cognitive-predominant patient may be harmful or uninformative in a severe POTS-dominant patient — and vice-versa. (Severity applicability: full range, explicitly stratified.)

*Consequence:* This reframes drug-trialing logic: clinicians should stratify by functional capacity and symptom cluster up front, then use medication response within that stratum — rather than prescribing by diagnosis alone.

*Evidence class caveat:* As above, this rests on self-reported, correlational survey data — the "predictor" relationship is associative, not causal, and has not been independently replicated by a separate survey cohort.
] <clin:severity-dominates-response>


Not all treatment responses are interchangeable. A medication that restores a broken mechanism (healing) provides fundamentally different information — and a fundamentally different clinical outlook — than one that suppresses a symptom while the disease progresses unimpeded (symptomatic). The *Therapeutic Depth* classification below applies across every drug in this chapter and in @ch:mechanistic-cascade-tracing (sec-12).

Each finding includes a *Level of action* indicator. The five levels form a hierarchy of how deeply the drug engages with disease biology — from structural repair to pure palliation:

#block[
- *Restorative* — the drug reverses a structural or functional defect that is part of the disease mechanism. It restores normal physiology rather than compensating for or suppressing the abnormality. If effective, it implies that the underlying lesion is pharmacologically reversible (at least while the drug is present). Example: LDN restores TRPM3 Ca#super[2+] influx in vitro @EatonFitch2022trpm3ntx; valacyclovir suppresses active EBV replication. The response is only as durable as the treatment — discontinuing the drug allows the pathology to return.
- *Corrective* — the drug addresses a disease-maintaining amplifier loop or pathological positive feedback. It does not reverse the initial lesion but can slow or interrupt the self-sustaining cycle that amplifies and perpetuates illness. Example: IVIG neutralizes pathogenic autoantibodies (the plasma cell source persists); low-dose lithium inhibits GSK-3β → removes Nrf2 nuclear exclusion → restores anti-inflammatory gene expression. If effective, the amplifier loop was active and rate-limiting; the initiating trigger may still be present.
- *Threshold-modulatory* — the drug changes the set-point at which a pathological response is triggered, without repairing or removing the underlying abnormality. It widens the operational window in which the system can function before pathology engages. Example: LDA raises the microglial activation threshold; beta-blockers shift the baroreflex set-point; H1 antihistamines block the histamine receptor without reducing mast cell degranulation. Benefit is contingent on continued drug presence and disappears upon discontinuation.
- *Substrate-repletion* — the drug supplies a molecule that the disease state depletes or consumes faster than the body can replace. It corrects a secondary deficiency created by the primary pathology. Example: CoQ10 (consumed by oxidative stress); NAC → glutathione (depleted by ROS); sodium/volume expansion (hypovolemia in POTS). Dose-dependent and limited by the consumption rate — if the underlying consumption continues, the repletion is maintenance, not cure.
- *Symptomatic* — the drug suppresses a symptom without engaging the disease mechanism at all. The pathology continues unchanged; only its conscious experience is altered. Example: zolpidem for sleep (GABA-A agonism does not address the reason sleep is unrefreshing); oxycodone for pain (mu-opioid agonism does not reduce the nociceptive driver); caffeine for fatigue (adenosine antagonism does not restore ATP production). These drugs can be valuable for quality of life but their diagnostic information is largely limited to: "this receptor/system is intact and responsive." A null on a symptomatic drug constrains almost nothing — it could mean the receptor is desensitized, the symptom has a different mediator, or the dose was insufficient.
]

*Consequence:* The therapeutic-depth framework provides patients and clinicians with an explicit map of what a drug can potentially do: cure (restore a mechanism) vs. control (modulate a threshold or replenish a substrate) vs. palliate (suppress a symptom while pathology continues). It also constrains research design — drugs with higher therapeutic depth should be prioritized for disease-modifying trials; symptomatic drugs should not be mischaracterized as disease-modifying interventions. For patients, this framework makes explicit what the medical literature often leaves implicit: whether a treatment that "works" means the disease process is being interrupted or only the experience of it is being dampened.

Medications are grouped by the physiological system they probe, so responses to medications in the same group can be compared directly.

