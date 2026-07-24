#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 15: "What If My Doctor Knew" — Physician Education Tool
// =============================================================================

= "What If My Doctor Knew" — Point-of-Care Physician Education
<sw:physician-education>

#chapter-abstract[
A tool for physicians encountering an ME/CFS patient for the first time. Input: what the patient is presenting with. Output: a 90-second summary — IOM criteria, biological basis, key diagnostic tests, treatments to try, treatments to avoid (graded exercise), and patient resources. Designed to be consumed during the patient visit. Targets the single biggest problem in ME/CFS care: physician ignorance leading to misdiagnosis, gaslighting, and harmful treatment.
]

== Motivation

The greatest barrier to ME/CFS care is not the absence of treatments — it is the absence of physician knowledge. Most physicians receive no ME/CFS education in medical school. They may have outdated beliefs (ME/CFS is psychogenic, graded exercise is helpful, there is no biological basis). This leads to:
- Misdiagnosis (the patient is told they have depression, anxiety, or deconditioning)
- Gaslighting ("it's in your head")
- Harmful treatment (graded exercise therapy, which worsens PEM)
- Delayed diagnosis by years or decades

The "What If My Doctor Knew" tool addresses this at the point of maximum leverage: the moment the physician is about to interact with an ME/CFS patient. In 90 seconds, it provides the essential information the physician needs to avoid doing harm and to start doing good.

== Core Functionality

=== Input

The physician (or patient, or carer) selects from a minimal set of options:
- Patient scenario: "New patient with suspected ME/CFS", "Existing ME/CFS patient in crash", "Patient reports severe PEM", "Patient has ME/CFS and POTS", etc.
- Physician time available: 30 seconds (in the waiting room before entering) / 90 seconds (standard) / 5 minutes (between patients)
- Physician background: primary care / specialist / emergency department / psychiatrist / physiotherapist

=== Output (90-Second Version)

The tool generates a one-page summary optimized for scan-reading:

*What ME/CFS actually is.*
"ME/CFS is a severe, chronic, multi-system neuroimmune disease affecting 0.9–2.5% of the population. It is NOT psychogenic. It has measurable biological abnormalities: reduced NK cell cytotoxicity, neuroinflammation on PET imaging, mitochondrial dysfunction, autoantibodies against adrenergic and muscarinic receptors, cerebral hypoperfusion. The NIH 2024 deep phenotyping study (Walitt et al.) confirmed multi-system biological abnormalities."

*The one symptom that defines it.*
"Post-exertional malaise (PEM): a delayed (12–72 hours), disproportionate worsening of ALL symptoms following exertion — physical, cognitive, emotional, or orthostatic. PEM is pathognomonic. If your patient has this, they likely have ME/CFS. If they don't, reconsider the diagnosis."

*What to do right now.*
"1. Validate the patient: 'I believe you. This is a real disease with biological basis.'
2. Screen for PEM, orthostatic intolerance, unrefreshing sleep, cognitive dysfunction.
3. Order: tilt table test or NASA lean test (POTS screening), CBC, CMP, TSH, fT4, fT3, CRP, ESR, ANA, EBV panel, vitamin D, vitamin B12, ferritin.
4. Refer to an ME/CFS specialist if available. If not: start with pacing education, sleep hygiene, and orthostatic intolerance management (increased salt/fluid, compression garments)."

*What NOT to do.*
"DO NOT recommend graded exercise therapy (GET) or cognitive behavioral therapy (CBT) as primary treatments. These are NOT evidence-based for ME/CFS and can cause harm. The PACE trial (2011) that promoted them has been widely discredited for methodological flaws, including changing outcome criteria mid-trial to produce positive results. The IOM 2015 report explicitly concluded that ME/CFS is a biological disease, not a psychogenic one."

*Patient resources.*
"Give the patient: (1) The IOM 2015 diagnostic criteria summary. (2) The CDC ME/CFS patient page. (3) Local ME/CFS patient organization contact. (4) A letter for the patient's employer/school documenting the diagnosis and recommended accommodations."

=== Output (30-Second Version)

A card-sized summary:
- ME/CFS is a biological disease → neurological, immunological, metabolic
- PEM is the cardinal symptom → delayed symptom worsening after exertion
- DO: validate, screen for POTS, refer to specialist
- DO NOT: graded exercise therapy
- Resources: [link] [printable PDF]

=== Output (5-Minute Version)

An expanded summary with:
- Core pathophysiology overview (energy metabolism, immune dysfunction, neuroinflammation, autonomic dysfunction) with links to the parent paper for detail
- Diagnostic criteria comparison (Fukuda 1994, Canadian Consensus 2003, ICC 2011, IOM 2015) — which to use and why IOM 2015 is recommended
- Treatment overview by system (from Ch19–27)
- Billing and documentation guidance (ICD-10 code G93.32 for ME/CFS, not R53.82 for chronic fatigue)
- Disability documentation guidance (what to write in a disability letter)

=== Physician Specialty Variants

- *Psychiatrist.* Emphasis on distinguishing ME/CFS from depression (ME/CFS patients _want_ to do things but can't; depressed patients can't bring themselves to want to. PEM does not occur in depression. Antidepressants that increase noradrenergic tone may worsen ME/CFS.)
- *Physiotherapist.* Emphasis on why GET is harmful, what pacing actually means (energy envelope, not graded activity increase), and how to design a pacing-based rehabilitation program.
- *Emergency physician.* Emphasis on what ME/CFS patients presenting to the ER need: sensory-low environment, horizontal positioning (orthostatic stress worsens everything), IV fluids (many are hypovolemic), and validation that their symptoms are real.
- *Pediatrician.* Emphasis on pediatric ME/CFS — higher recovery rate, different presentation, critical importance of school accommodations.

=== Global Reach

The tool is translated into multiple languages and adapted for different healthcare systems. A physician in a rural clinic in India with no ME/CFS specialist within 500 km receives the same essential information as a physician at a major academic center — adapted to locally available tests and treatments.

== Relationship to Existing Content

- Ch1–5 (Clinical Overview, parent paper): the clinical information condensed in the summary
- Ch35 (Controversies, parent paper): the PACE trial and GET controversy
- Ch19–27 (Treatment, parent paper): the treatment recommendations
- Appendix C (Diagnostic Tools): the assessment instruments to recommend

== Technical Architecture

*Content.* A structured content database (YAML) of physician education material, organized by scenario, specialty, and time budget. The database is maintained by ME/CFS clinical experts and updated as evidence evolves.

*Interface.* Mobile-optimized web application. The physician accesses it on their phone during a patient visit. A printable PDF version is available for the patient to take home.

*Translations.* Community-contributed translations with expert review. The tool is designed for non-English-speaking physicians in regions with zero ME/CFS awareness.

*Integration.* Deep links to the mechanism knowledge graph (the Mechanism Knowledge Graph (below)) for physicians who want to explore the evidence in depth after the consultation.

== Limitations

#limitation[
*Belief change limitation.* A 90-second summary cannot overcome deep-seated biases. A physician who has spent 20 years believing ME/CFS is psychogenic is unlikely to change their mind after reading a summary. The tool is most effective for open-minded physicians seeking information, not for correcting entrenched misinformation.

*Scope limitation.* The tool covers essential information but cannot replace specialist training. Complex medication management should be handled by an ME/CFS specialist. The tool's goal is to prevent harm and enable basic appropriate care, not to enable independent ME/CFS treatment.

*Maintenance burden.* Medical guidelines evolve. The tool's content must be reviewed and updated regularly by clinical experts. Without institutional support (e.g., from a professional society), content may become outdated.
]

== Consequence

#key-point[
"What If My Doctor Knew" addresses the root cause of poor ME/CFS outcomes: physician ignorance. It meets physicians where they are — in the 90 seconds before they walk into the exam room — and gives them the essential information to avoid doing harm and start doing good. It is not a replacement for specialist care; it is a bridge to it. For the millions of ME/CFS patients whose physicians have never heard of PEM, this tool could mean the difference between validation and gaslighting, between appropriate care and harmful treatment, between diagnosis and years of suffering without a name.
]
