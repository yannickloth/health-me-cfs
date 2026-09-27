#import "../../../../shared/environments.typ": *

=== Lactate as a Signaling Molecule
<sec:lactate-as-signaling>

Lactate is conventionally described as a metabolic waste product, and in ME/CFS it is usually presented only as a marker of glycolytic strain (@sec:carbohydrate, @spec:virtual-hypoxia-brain-lactate). In animal and in-vitro model systems, lactate is also an active signal: it is the endogenous ligand of the G-protein-coupled receptor GPR81 (also called HCAR1), and it carries signaling functions in adipose tissue, the immune system, and the brain @Ahmed2010GPR81lipolysis @Hoque2014GPR81innateimmunity @Colegio2014TAMLacticAcid @Pucino2019LactateCD4Tcell @Yang2014LactateNMDA @Morland2017HCAR1VEGF. Its distribution between cells and compartments is controlled by the monocarboxylate transporters MCT1--4 (SLC16A) @Halestrap2012MCTfamily. This reframes the elevated lactate documented in a subset of ME/CFS patients: lactate is not only a marker of glycolytic strain, it is a candidate signal whose receptor and transporter axis has never been measured in ME/CFS patients.

#speculation(title: [Elevated Lactate in ME/CFS May Signal Through GPR81/HCAR1])[
*Certainty: 0.35.* (Raw certainty 0.70, from animal/in-vitro model systems → discounted to 0.35 by the population-relevance weight 0.50.) Lactate is the native ligand for GPR81/HCAR1, a Gi-coupled receptor that signals in adipocytes (suppressing lipolysis) @Ahmed2010GPR81lipolysis, in innate immune cells (dampening TLR/NLRP3-driven inflammation) @Hoque2014GPR81innateimmunity, in macrophages (polarizing metabolism) @Colegio2014TAMLacticAcid, in CD4+ T cells (rewiring inflammatory effector function) @Pucino2019LactateCD4Tcell, and in the brain (modulating plasticity) @Yang2014LactateNMDA and cerebrovascular signaling @Morland2017HCAR1VEGF. If the chronically elevated lactate documented in a subset of ME/CFS patients were to engage these receptors, it would make lactate an active participant in the neuro-immune-metabolic phenotype rather than a passive readout.

*Evidence type:* Animal and in-vitro model systems only. *Translation gap:* GPR81/HCAR1 expression and lactate-stimulated signaling have not been measured in ME/CFS patients (model system → human, not yet validated in ME/CFS).

*Replication status:* The receptor mechanism is replicated across independent laboratories for adipose, immune, and brain tissue; it has not been tested in ME/CFS.

*Severity applicability:* Unknown — no ME/CFS study stratifies GPR81/HCAR1 signaling by disease severity.

*Competing explanation:* Elevated lactate may be an inert by-product with no downstream signaling role in ME/CFS. The elevation is also not uniform: in a 7T magnetic resonance spectroscopy comparison, ME/CFS patients showed elevated brain (anterior-cingulate) lactate while resting calf-muscle metabolites did not differ from controls @Godlewska2025MRS — consistent with a compartment-specific rather than systemic elevation, or with lactate being incidental to the upstream energy failure.

*Limitations:* The entire receptor arm rests on model-system evidence; a receptor that signals in isolated adipocytes or cell lines need not be engaged at pathophysiological ligand concentrations in patients. Concentration-dependence, receptor desensitization, and tissue accessibility are unmeasured in ME/CFS.

*Falsifiable prediction:* GPR81/HCAR1 expression or lactate-stimulated signaling (e.g., cAMP suppression, downstream effector phosphorylation) will differ between ME/CFS patients and controls in an accessible tissue (PBMC or muscle), and will correlate with post-exertional symptom severity; falsified if no ME/CFS-control difference is detected, or if any difference is explained entirely by circulating lactate concentration without receptor-axis change.

*Consequence:* If confirmed, this would turn lactate from a symptom marker into a treatment target and would explain why elevated lactate could produce immune and neurological effects rather than merely reflecting them — but the hypothesis is currently unmeasured in patients and could be wrong.
]
<spec:lactate-signaling-mecfs>

#speculation(title: [Monocarboxylate Transporter Capacity as a Candidate Rate-Limiting Node])[
*Certainty: 0.30.* Lactate movement between muscle, blood, and brain is gated by the proton-linked monocarboxylate transporters MCT1--MCT4 (SLC16A family), which set the direction and rate of lactate flux @Halestrap2012MCTfamily. The astrocyte–neuron lactate shuttle — already modeled in this chapter (@sec:compartmental-energy) — depends on this transport step @Magistretti2018. If MCT expression or proton-coupled transport capacity were reduced in ME/CFS, impaired lactate clearance (described as slower recovery, though not yet measured as a kinetic endpoint) could coexist with preserved or increased lactate production, raising local and systemic lactate even without a change in glycolytic rate.

*Evidence type:* General cell-biology and transport-kinetics evidence; no ME/CFS measurement. *Translation gap:* MCT1--4 expression and transport kinetics are unmeasured in ME/CFS tissue.

*Replication status:* MCT family biology is well-replicated; the ME/CFS-specific claim is untested.

*Severity applicability:* Unknown — no severity-stratified data.

*Competing explanation:* Slower lactate clearance could reflect reduced tissue perfusion or mitochondrial oxidation rather than a transporter defect; the same functional observation is consistent with several upstream causes.

*Limitations:* No MCT expression, membrane localization, or transport-flux data exist in ME/CFS; assigning a rate-limiting role to transport requires direct flux measurement, not inference from clearance curves.

*Falsifiable prediction:* In ME/CFS muscle or PBMC, MCT1/MCT4 expression or lactate transport flux will be reduced relative to controls at matched circulating lactate, and will correlate with delayed post-exertional lactate clearance; falsified if transport capacity is normal or if clearance delay is fully accounted for by perfusion or oxidation rate.

*Consequence:* A transport bottleneck would suggest a different target from a production bottleneck — improving clearance rather than suppressing glycolysis — and would make MCT expression a measurable, testable node in ME/CFS.
]
<spec:lactate-mct-transport-node>

#open-question(title: [Does Dysregulated Lactate Signaling Contribute to ME/CFS Symptoms?])[
Does lactate, acting as a signal rather than a waste product, contribute to ME/CFS symptoms — and if so, through which tissue? Three non-exclusive candidate routes exist: immune (GPR81-mediated suppression of innate inflammation @Hoque2014GPR81innateimmunity, macrophage polarization @Colegio2014TAMLacticAcid, CD4+ T-cell rewiring @Pucino2019LactateCD4Tcell), adipose/metabolic (antilipolysis @Ahmed2010GPR81lipolysis), and central (NMDA-mediated plasticity @Yang2014LactateNMDA, cerebrovascular signaling @Morland2017HCAR1VEGF). Each route makes a different prediction about which symptoms would track lactate and which tissue would show receptor-axis change. The question is currently unresolvable because neither GPR81/HCAR1 expression nor lactate-stimulated signaling has been measured in ME/CFS patients. *(Severity applicability: unknown — no severity-stratified data.)*

*Consequence:* Answering this would determine whether lactate is a passive marker or an active driver in ME/CFS, and would decide whether the receptor axis is a plausible treatment target or a dead end.
]
<oq:lactate-signaling-mecfs>

#limitation(title: [The GPR81/HCAR1 Axis Is Unmeasured in ME/CFS])[
The signaling interpretation of lactate in ME/CFS rests entirely on model-system evidence; no study has measured GPR81/HCAR1 expression, MCT1--4 expression, or lactate-stimulated signaling in ME/CFS patients. Lactate elevation is also not uniform — the 7T MRS finding is a compartment-specific brain (anterior-cingulate) elevation, while resting calf-muscle metabolites in the same study did not differ from controls @Godlewska2025MRS — so the assumed ligand may be present in only a subset of patients, and its tissue distribution is unmeasured. Until the receptor and transporter axis is measured in patients, lactate signaling in ME/CFS remains a mechanistically plausible but untested hypothesis. This is the single largest evidence gap for this topic.

*Consequence:* Without direct measurement, no clinical claim about lactate signaling in ME/CFS can be made; the practical implication is that lactate currently guides no ME/CFS-specific diagnostic or treatment decision beyond the general energy-metabolism context.
]
<lim:lactate-signaling-unmeasured>

#open-question(title: [Post-Exertional Lactate Kinetics as a Monitoring Biomarker])[
*(Origin: brainstorm.)* The best-replicated lactate finding in ME/CFS is a compartment-specific brain elevation on magnetic resonance spectroscopy @Godlewska2025MRS, not a uniform systemic rise; whether post-exertional *clearance* is slowed is described clinically but has not been measured as a kinetic endpoint. The untested candidate is the *shape* of the post-exertional lactate curve: peak height and clearance rate, measured by submaximal two-day cardiopulmonary exercise testing or by an at-home finger-prick series (handheld lactate meters exist, though capillary-meter accuracy is limited and frequent sampling may itself be burdensome in severe disease). If clearance kinetics separate ME/CFS patients from activity-matched controls and improve with a lactate-lowering intervention, lactate becomes an objective monitoring number for a crash or a treatment response, alongside patient report. *(Severity applicability: unknown — no study has measured clearance kinetics by severity.)*

*Consequence:* It would give patients and clinicians an objective number to watch, turning "how do I clear lactic acid?" from a subjective question into a measurable quantity — if the kinetics prove discriminating.
]
<oq:lactate-clearance-kinetics-biomarker>

#open-question(title: [Measure the GPR81/HCAR1 and MCT Axis in a Severity-Stratified ME/CFS Cohort])[
*(Origin: brainstorm.)* Every signaling claim in this subsection rests on animal or in-vitro evidence, because no study has measured GPR81/HCAR1 expression, MCT1--4 expression, or lactate-stimulated signaling in ME/CFS patients. A single severity-stratified cohort measuring the receptor/transporter axis in an accessible tissue (PBMC, and muscle where feasible) — ideally with post-exertional venous-lactate kinetics as a co-primary endpoint — would convert the strongest open question here into data, and could stratify patients into those in whom lactate signaling matters and those in whom it does not. Until that measurement exists, the mechanism remains untested. *(Severity applicability: unknown by design — this study is what would establish it.)*

*Consequence:* This is the one measurement that would decide whether the entire lactate-signaling arm is real in patients or remains a model-system artifact.
]
<oq:lactate-axis-measurement-agenda>

#synthesis(title: [Lactate as a Signal and a Treatment Question in ME/CFS])[
The evidence above converges on a single reframing: lactate is not merely a metabolic waste product but a signaling molecule (GPR81/HCAR1) whose receptor and transporter axis has never been measured in ME/CFS (@spec:lactate-signaling-mecfs, @spec:lactate-mct-transport-node). Lactate elevation is documented but compartment-specific rather than uniform — brain (anterior-cingulate) lactate is elevated on MRS while resting calf-muscle metabolites do not differ (@Godlewska2025MRS) — and whether it actively contributes to symptoms, as opposed to marking upstream energy failure, is unresolved (@oq:lactate-signaling-mecfs). The candidate intervention levers are mechanistically distinct: supporting the PDH gate (thiamine) or fatty-acid oxidation (carnitine), or shifting substrate to ketones (MCT/ketogenic) are plausible routes to lower glycolytic lactate (@spec:lactate-lowering-strategies), whereas buffering lactate itself with bicarbonate is unsupported and potentially harmful (@lim:bicarbonate-buffering-unsupported). The binding constraint is measurement, not mechanism: no ME/CFS study has used lactate as an intervention endpoint, and the receptor/transporter axis and post-exertional clearance kinetics are unmeasured (@oq:lactate-axis-measurement-agenda, @oq:lactate-clearance-kinetics-biomarker). The open question is therefore not whether lactate can be lowered, but whether lowering it changes anything for patients.

*Consequence:* It sets a clear research priority — measure the receptor axis and the clearance kinetics before treating lactate as a target — and warns patients that the intuitive fix (buffering the acid) is not supported.
]
<syn:lactate-gpr81-signaling-model>
