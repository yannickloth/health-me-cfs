# Medical Training Teaches the Wrong Level of Abstraction

A patient arrives with decades of unrestorative sleep — present since adolescence, and documented years later by a sleep study that shows something specific. The recording finds normal duration of deep slow-wave sleep, but with 5–6% alpha-wave intrusion: waking brain oscillations contaminating slow-wave sleep at the rate of several minutes per hour. The thalamic circuit mechanism behind this finding is characterized in the research literature (Timofeev et al., 2015). A plausible downstream consequence, supported primarily by animal-model evidence, is that glymphatic clearance — which appears to depend on undisturbed slow-wave activity — is impaired during contaminated sleep, allowing metabolic waste to accumulate in brain tissue; the patient wakes exhausted regardless of how many hours they slept. Gabapentin, a drug already in common clinical use for decades, acts on this circuit by reducing calcium channel excitability in the thalamus, and a reasonable mechanistic hypothesis is that it could suppress the abnormal oscillations at their source.

Despite all of this, the drug goes unprescribed — not after the sleep study, not after the neurology referral, not after years of follow-up. The data were not missing, and the mechanism was not unknown. One possible reading is that the prescribing barrier was practical — off-label use, a thin evidence base for this specific indication, reasonable caution. Another is that what was absent was a framework for connecting the documented finding to the available pharmacology. Both may be true simultaneously, and neither exonerates the other.

---

## The numbers first

ICD-11, the current international disease classification, contains approximately **17,000 diagnostic categories** and over **130,000 clinical terms**. This is what medical training is organized around: an enormous taxonomy of named conditions, each with its own criteria, its own protocol, and its own specialist.

One proposed way to organize the underlying biology groups those 17,000 conditions into roughly **20 fundamental mechanism families**, each containing multiple concrete mechanisms — approximately 80–100 distinct mechanisms in total, depending on the level of resolution at which one counts. The number and boundaries of such families depend on the granularity chosen; what follows is one possible decomposition, offered as an organizing framework rather than an established scientific consensus:

- Energy and metabolic regulation (mitochondrial dysfunction, PDH/PDK block, glycolytic shift, NAD⁺ depletion)
- Redox and oxidative balance (ROS/RNS overproduction, lipid peroxidation, nitrosative stress)
- Ion channel and membrane transport (channelopathies, membrane stiffness, Ca²⁺ signalling failure)
- Immune activation and cytokine signalling (innate hyperactivation, NK exhaustion, complement)
- Autoimmunity and molecular mimicry (receptor autoantibodies, post-viral immune misdirection)
- Coagulation and haematological (microclot formation, platelet hyperactivation, hypercoagulability)
- Vascular and endothelial dysfunction (endothelial failure, cerebral hypoperfusion, RAAS paradox)
- Autonomic and peripheral nervous system (POTS, baroreflex failure, small fiber neuropathy)
- Neuroendocrine and hormonal regulation (HPA blunting, thyroid conversion failure, sex hormones)
- Neurological and thalamocortical (neuroinflammation, E/I imbalance, alpha intrusion, glymphatic failure)
- Amino acid and neurotransmitter metabolism (IDO/kynurenine, serotonin depletion, NAD⁺ pathway)
- Genomic and epigenetic regulation (methylation signatures, telomere attrition, post-viral epigenetic locking)
- Protein homeostasis and degradation (HSP dysregulation, autophagy failure, aggregation)
- Cell death and senescence (exhaustion, SASP, pyroptosis, ferroptosis)
- Gut-microbiome-immune axis (dysbiosis, leaky gut, LPS translocation, gut-brain axis)
- Viral persistence and immune evasion (herpesvirus reactivation, enterovirus persistence)
- Structural and tissue integrity (muscle damage, capillary rarefaction, nerve fiber loss)
- Transcriptional and nuclear signalling (NF-κB, Nrf2, nuclear receptor dysregulation)
- Purinergic and danger signalling (ATP-DAMP, P2X7, cell danger response, NLRP3)

Under this framing, the 17,000 diseases are not 17,000 independent phenomena but different combinations and tissue-specific expressions of a smaller set of mechanism families — and the number of named diseases is large in part because their combinatorics, expressed across different tissues, ages, severities, and triggers, produces an enormous variety of distinct clinical pictures. Diagnostic categories have genuine value: they encode epidemiological base rates, prognosis, and treatment response data accumulated across millions of patients. The argument is not that categories should be discarded, but that medical training is organized almost exclusively around those 17,000 categories, and that the underlying mechanism layer — the one shared across conditions — receives comparatively little emphasis in clinical reasoning.

---

## What the failure mode looks like at scale

Diagnostic errors cause an estimated **800,000 deaths or permanent disabilities per year in the United States alone**, making misdiagnosis the single largest source of serious harm from medical error — larger than medication errors and larger than surgical complications (Newman-Toker et al., *BMJ Quality & Safety*, 2023; Johns Hopkins Medicine, 2023). In emergency departments alone, approximately **7.4 million patients per year are misdiagnosed** out of 130 million annual visits, which is nearly 1 in 18 (US Agency for Healthcare Research and Quality, systematic review, 2022).

These numbers capture the acute, measurable harms of wrong diagnosis — misidentification leading to missed treatment leading to measurable deterioration. They are a different category of failure from the one at the center of this article, which concerns a *correct* diagnosis paired with an *incomplete* mechanistic picture: the patient correctly labeled as ME/CFS, correctly identified as having non-restorative sleep, but whose specific sleep dysregulation mechanism is never characterized and never treated. That harm is invisible in the statistics, and it accumulates over years. The diagnostic error literature documents the acute end; the chronic end remains largely unmeasured.

---

## Why pattern-recognition training fails for complex patients

Medical training is built around **pattern recognition at the diagnostic level**:

> symptom cluster → diagnosis → protocol

The mechanistic layer — *why* the symptoms arise, *what biological process* is dysregulated, *how* a treatment corrects it at the cellular level — features heavily in preclinical training, where physiology and pathophysiology are central. In clinical years and in practice, however, it tends to recede into supporting theory: background knowledge that informs but does not drive the reasoning sequence.

This model is efficient in context. A general practitioner covers thousands of conditions, and pattern recognition at the diagnostic level is fast and usually adequate for common, well-characterized, single-mechanism diseases where the protocol-matching approach produces good outcomes. The same model fails predictably, however, in three specific situations.

**Situation 1: The presentation doesn't fit a known pattern.** The patient's dysregulation exists and is real, but it produces a symptom constellation that doesn't map cleanly to any single diagnostic entry. The system returns no match, and the patient is labeled "unexplained," "functional," or "psychosomatic." This is not a diagnostic edge case; it is the standard experience of patients with multisystem chronic illness.

**Situation 2: Interacting dysregulations span specialty boundaries.** The thalamo-cortical excitability problem documented in sleep medicine is directly relevant to the neurologist, the pain specialist, and the post-infectious disease clinician — but these are separate departments with separate records and limited cross-communication. Data generated in one specialty doesn't automatically propagate: the sleep study result sits in a sleep medicine file, and the neurologist either never sees it or sees it without the framework to act on it outside their specialty context.

**Situation 3: The correct treatment exists but isn't protocol-indicated for the matched diagnosis.** Here the diagnosis is correct and the dysregulation is documented, but the available drug is not in the protocol for that diagnostic category because the protocol was written around the category rather than around the mechanism. Despite the existence of a pharmacological path, nothing is prescribed.

All three failure modes are structural and predictable. They are outputs of a training model optimized for diagnostic matching, and they appear as individual physician failures when, in reality, they are systematic.

---

## The abstraction mismatch

A physician trained at the mechanism level recognizes the same dysregulation across multiple diagnostic categories simultaneously. Thalamo-cortical hyperexcitability — the mechanism behind alpha-wave intrusion in deep sleep — appears in fibromyalgia (documented since Moldofsky et al., 1975), ME/CFS (similar sleep brain-wave findings, multiple studies), chronic migraine, post-traumatic stress disorder, and treatment-resistant insomnia: one mechanism spanning five diagnostic entries, with no formal connection drawn between them in standard training curricula.

Research published in the *Journal of Neurophysiology* (Timofeev et al., 2015) characterized the thalamic circuit alterations involved: changes in inhibitory signaling and two thalamic electrical currents transform a circuit that normally produces slow delta oscillations into one that produces faster alpha activity. The work was carried out primarily in animal preparations, and clinical translation involves the usual uncertainties — but it identified a concrete pharmacological target.

A physician familiar with this literature can examine a sleep study showing alpha intrusion and reason toward the available drugs that reduce calcium channel excitability in the thalamus — gabapentin, which is already in clinical use, has a known safety profile, and is already being prescribed by the same neurologist for other indications. A physician trained only at the diagnostic level has no framework entry for "alpha intrusion without epilepsy," and so the anomalous finding is noted in the chart without prompting any therapeutic reasoning.

---

## The structural explanation

This pattern of failure is not a story about physician incompetence. The median diagnostic error rate across disease categories is approximately **13.6%**, ranging from 2.2% for myocardial infarction to over 60% for rare presentations (Zwaan et al., *BMJ Quality & Safety*). These are not careless physicians; they are physicians whose training model carries a systematic blind spot.

The disease-classification system — medicine organized around named diseases — is a historical artifact more than 260 years old, predating any understanding of cell biology, genetics, or molecular mechanisms. Clinical observation preceded mechanistic understanding by centuries, and syndromes were named long before anyone knew why they occurred. The infrastructure of modern medicine — billing codes, drug approval categories, specialty boundaries, guideline committees, licensing examinations — was subsequently built on top of this structure, and it has proved difficult to reorganize.

Guideline committees codify what was known when the guideline was written. In ME/CFS, many current clinical guidelines reflect understanding from the early 2000s, and in some countries the primary recommended intervention remains graded exercise therapy — an approach that has been progressively removed from guidelines in the UK, US, and elsewhere, partly on methodological grounds and partly in response to accumulating evidence that it may worsen post-exertional symptoms in a substantial fraction of patients. The evidence here remains genuinely contested, but a physician following an older local guideline may be practicing medicine that diverges significantly from the current research consensus.

A medical curriculum proposal published in *BMC Medicine* (2014) formulated the alternative directly: the body can respond to insult in only a finite number of ways, and a mechanism-based curriculum would organize clinical training around those finite responses, with patient cases illustrating mechanism-specific presentations rather than adding one more disease-specific entry to an ever-expanding taxonomy. That proposal exists in the literature, and it has not yet become standard practice.

---

## What the patient is left to do

When the system fails to synthesize the available data, someone has to do it — and in complex chronic disease, that person is often the patient. The sleep study documenting alpha intrusion is completed; the neurology consult is made; years pass. The patient then reads the research literature, encounters the Moldofsky work and the Timofeev mechanistic model, works through the pharmacology of thalamic calcium channels, and arrives at an appointment carrying a document that connects these findings to their own documented sleep study data and proposes a specific intervention with mechanism rationale.

This is not an exceptional scenario. In ME/CFS and Long COVID communities — at least among those who are well enough and connected enough to participate in patient networks and research discussion — self-educated patients with mechanistic understanding of their own pathophysiology appear to be common. The incentive is straightforward: the system did not perform the synthesis, so the patient attempts it. That process has its own risks: selective reading, confirmation bias, mechanistic models that are plausible but wrong. But the fact that patients are undertaking it at all reflects a gap the clinical system has not closed, and the upstream structural failure is what creates the condition for it.

---

## What needs to change

The training model is the intervention point, and the changes it requires are identifiable.

**Teach mechanism clusters as primary content.** A module on thalamo-cortical dysregulation covers fibromyalgia, ME/CFS, chronic migraine, post-traumatic stress disorder, and non-restorative sleep simultaneously — one mechanism with multiple expressions — so that students learn to recognize the same dysregulation across five diagnostic categories rather than treating five disconnected protocols as unrelated knowledge.

**Teach therapeutic reasoning from mechanism.** The current flow of *diagnosis → protocol* should be supplemented with training in the form: *documented dysregulation → which available tools act on this mechanism → evidence quality, tractability, interaction risk.* This produces physicians who can reason from documented pathophysiology even when no protocol exists for the matched diagnostic category — while retaining the discipline to distinguish mechanistic plausibility from demonstrated clinical efficacy.

**Teach cross-specialty synthesis as a clinical skill.** Complex patients generate data across departments, and training should include explicit practice in integrating findings from different specialties — a sleep study, an autonomic test, an immunology panel — into a unified mechanistic picture. This synthesis is not currently taught as a formal skill, and it is precisely what complex patients require.

**Teach the diagnostic category as a starting point, not an endpoint.** A confirmed diagnosis does not mean the patient's full dysregulation is captured by that label. ME/CFS is not a single mechanism but a multi-system dysregulation pattern with documented biological heterogeneity, and treating the category label as a complete characterization produces systematically incomplete care.

---

## The cost of not changing

The diagnostic error literature documents 800,000 deaths or permanent disabilities per year from acute misdiagnosis — wrong labels, missed conditions, incorrect treatments. That is one category of harm. A second, structurally different and largely unmeasured, concerns patients with correct diagnoses and incomplete mechanistic characterization: people whose specific dysregulations were documented, whose mechanisms were known, and whose treatments existed, but who were never connected to them. These are not the same problem, and they may not have the same solution — but both point toward a clinical reasoning gap that training is positioned, at least in part, to address.

---

*Part of an ongoing series on the biology of ME/CFS and what it reveals about medical systems.*

---

**Sources used in this article:**
- Newman-Toker DE et al. Burden of Serious Harms from Diagnostic Error in the United States. *BMJ Quality & Safety* / Johns Hopkins Medicine (2023): [Report](https://www.hopkinsmedicine.org/news/newsroom/news-releases/2023/07/report-highlights-public-health-impact-of-serious-harms-from-diagnostic-error-in-us)
- US Agency for Healthcare Research and Quality. Diagnostic Errors in the Emergency Department: Systematic Review (2022): [Report](https://effectivehealthcare.ahrq.gov/products/diagnostic-errors-emergency-updated/research)
- Timofeev I et al. Thalamic mechanisms underlying alpha-delta sleep with implications for fibromyalgia. *Journal of Neurophysiology* (2015): [PMC4575971](https://pmc.ncbi.nlm.nih.gov/articles/PMC4575971/)
- Zwaan M et al. Diagnostic error rates across disease categories. *BMJ Quality & Safety*. *(year and volume TBC)*
- Moldofsky H et al. Musculoskeletal symptoms and non-REM sleep disturbance. *Psychosomatic Medicine* (1975).
- WHO ICD-11: [icd.who.int](https://icd.who.int/browse11)
- Medical education and the healthcare system — why does the curriculum need to be reformed? *BMC Medicine* (2014): [PMC4228189](https://pmc.ncbi.nlm.nih.gov/articles/PMC4228189/)

---

*Full framework available open-access (CC-BY 4.0): Loth (2026), [doi:10.5281/zenodo.19184064](https://zenodo.org/records/19184064).*

*This is a mechanistic and modeling framework, not clinical guidance. Nothing here should inform treatment decisions without physician oversight.*

---

*Yannick Loth — Independent Researcher — ORCID: 0009-0003-5754-827X*

*#MECFS #MyalgicEncephalomyelitis #ChronicFatigueSyndrome #LongCOVID #MedicalEducation #MedicalTraining #SystemsMedicine #PatientAdvocacy #MedicalResearch #DiagnosticError #InvisibleIllness #OpenAccess*
