#import "environments.typ": *
#import "tables.typ": booktabs-stroke, table-inset

= Reading Guide: How to Use This Document

<ch:reading-guide>

This comprehensive documentation is organized to serve multiple audiences: researchers, clinicians, patients, caregivers, and advocates. This guide explains the document structure and how to interpret the specialized environments used throughout.

#warning-unnumbered(title: [For severe and very-severe readers])[
  If you or someone you care for has severe or very-severe ME/CFS (housebound or bedbound), *do not start with the general clinical-overview or symptom-management chapters*. Begin with the urgent-action chapter (@ch:urgent-action-severe), which sequences care for the highest-risk patients and covers emergency and decompensation red flags. Caregivers should read this chapter first as well. Only then proceed to the general clinical and management chapters, which assume the reader can tolerate that level of detail.
]

== Document Organization

The document is divided into five main parts:

/ *Part I: Clinical Overview*: Covers symptoms, diagnostic criteria, disease course, and clinical presentation. Start here for understanding what ME/CFS is and how it manifests.

/ *Part II: Pathophysiology*: Explores biological mechanisms—known, suspected, and speculative. Opens with the system-mechanism chapters, which examine each subsystem in isolation (energy, immune, neurological, endocrine, cardiovascular, gut, genetics, integrative). A *Cross-Cutting Analysis* divider then introduces the chapters that span these systems: a comparative nosology (@ch:comparative-nosology) classifying ME/CFS among related contested diagnoses, and a causal hierarchy analysis (@ch:causal-hierarchy) classifying mechanisms as trigger-capable root causes, amplifiers, or downstream consequences. Essential for understanding the multisystem nature of the disease and the diagnostic boundary disputes with fibromyalgia, Long COVID, PTLDS, and related conditions.

/ *Part III: Treatment and Management*: Documents medications, supplements, lifestyle interventions, and management strategies. Opens with the reference chapters—the mechanism–treatment map (@ch:mechanism-treatment-map), symptom-based management (@ch:symptom-management), the medication-response reference (@ch:medication-response-reference), and mechanistic cascade tracing (@ch:mechanistic-cascade-tracing)—then the severity-specific protocols (severe cases first, @ch:urgent-action-severe before @ch:action-mild-moderate), the pediatric and population chapters, and finally the intervention-type chapters. Includes both evidence-based approaches and emerging therapies.

/ *Part IV: Research and Evidence*: Synthesizes current research, clinical trials, biomarker studies, and epidemiology. Provides detailed summaries of key findings.

/ *Part V: Mathematical Modeling*: Presents computational and mathematical approaches to understanding ME/CFS systems biology, including a formal causal hierarchy analysis that tests which mechanisms are trigger-capable using sensitivity and bifurcation analysis (advanced/technical).

== For Different Readers

The table below routes each audience to the parts most relevant to their goals. Priorities: *Essential* = read fully; *Recommended* = high value; *Optional* = useful context; *Skip* = rarely needed.

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto),
    inset: table-inset,
    stroke: booktabs-stroke(6),

    [*Reader*], [*Part I Clinical*], [*Part II Patho.*], [*Part III Treatment*], [*Part IV Research*], [*Part V Modeling*], [*Appendices*], [*Start here*],

    [*Patient / Caregiver*], [Essential], [Optional], [Essential], [Recommended], [Skip], [G, H, I], [@ch:core-symptoms],

    [*Clinician*], [Essential], [Recommended], [Essential], [Recommended], [Optional], [H, I], [@ch:diagnostic-criteria],

    [*Researcher*], [Recommended], [Essential], [Recommended], [Essential], [Essential], [G, H, I], [@ch:mechanism-treatment-map],

    [*Student / Advocate*], [Essential], [Recommended], [Recommended], [Recommended], [Optional], [G, I], [@ch:introduction],

    [*Policy / Funder*], [Recommended], [Recommended], [Recommended], [Essential], [Optional], [I], [@ch:research-infrastructure],
  ),
  caption: [Reading routes by audience],
)

*Patients and caregivers* focus on Part I (Clinical Overview) and Part III (Treatment). The pathophysiology sections may be technical but can help understand symptom mechanisms. Part V (Mathematical Modeling) is optional and highly technical.

*Clinicians* benefit from all sections. Part II provides mechanistic understanding, Parts III and IV offer evidence-based treatment guidance, and Appendix I catalogues ongoing and planned research studies.

*Researchers* find detailed mechanistic insight in Parts II, IV, and V, and literature summaries organized by topic in Appendix H.

=== Symptom-to-Chapter Quick Reference

If you are starting from a symptom rather than a chapter, use the table below. The *Understand* column points to where the symptom's mechanism is explained; the *Manage* column points to where it is treated or managed.

#figure(
  table(
    columns: (auto, auto, auto),
    inset: table-inset,
    stroke: booktabs-stroke(15),

    [*Symptom*], [*Understand (mechanism)*], [*Manage (treatment)*],

    [Post-exertional malaise / crash], [@ch:core-symptoms], [@ch:symptom-management],
    [Severe fatigue / energy failure], [@ch:energy-metabolism], [@ch:symptom-management],
    [Unrefreshing sleep], [@ch:core-symptoms], [@ch:symptom-management],
    [Brain fog / cognitive dysfunction], [@ch:neurological], [@ch:symptom-management],
    [Pain / headache / fibromyalgia overlap], [@ch:neurological], [@ch:symptom-management],
    [Orthostatic intolerance / POTS], [@ch:cardiovascular], [@ch:symptom-management],
    [Digestive / gut symptoms], [@ch:gut-microbiome], [@ch:symptom-management],
    [Immune / infection susceptibility], [@ch:immune-dysfunction], [@ch:symptom-management],
    [Hormonal / endocrine symptoms], [@ch:endocrine], [@ch:symptom-management],
    [Mast-cell / histamine reactions], [@ch:immune-dysfunction], [@ch:symptom-management],
    [Medication decisions / dosing], [], [@ch:medication-response-reference],
    [Supplements / nutraceuticals], [], [@ch:supplements],
    [Severe or very-severe presentation], [], [@ch:urgent-action-severe],
    [Where any mechanism maps to a treatment], [@ch:mechanism-treatment-map], [@ch:mechanism-treatment-map],
  ),
  caption: [Symptom-to-chapter quick reference],
)

== Understanding Statement Types

This manuscript uses formal environments to classify statements by their epistemic status and evidence strength. Understanding these distinctions is essential for critically evaluating medical claims.

=== Scientific Claims

/ *Achievement*: A well-established research finding with strong evidence. Achievements represent replicated results from peer-reviewed studies with adequate sample sizes and methodological rigor. These are the most reliable claims in the document.

/ *Hypothesis*: An unproven conjecture or working theory. Hypotheses are clearly marked because they may be wrong. Many ME/CFS mechanisms remain hypothetical due to limited research funding and methodological challenges.

/ *Prediction*: A testable claim about future observations or experimental outcomes. Predictions specify what research should find if a hypothesis is correct, providing a path to validation or falsification.

/ *Requirement*: A necessary condition for a diagnosis, treatment, or research interpretation to be valid. Requirements specify what must be true for a claim to hold.

/ *Warning*: A critical caveat about limitations, risks, or potential misinterpretations. Warnings flag where treatments may be contraindicated, where research is preliminary, or where claims should be interpreted cautiously.

=== Evidence Quality Levels

Throughout this document, research findings are classified by evidence strength:

/ *High Certainty*: Large sample size (n\>100), peer-reviewed in reputable journal, independently replicated, consistent across studies. Can be cited with confidence.

/ *Medium Certainty*: Moderate sample (n=20–100), peer-reviewed but single study or limited replication, sound methodology. Promising but requires confirmation.

/ *Low Certainty*: Small sample (n\<20), preprint or conference abstract, methodological concerns, or contradicted by other studies. Noted as preliminary.

== Navigation Tips

- Use the detailed Table of Contents to locate specific topics
- Cross-references appear as clickable hyperlinks in the PDF
- The Index provides quick access to terms and concepts
- Citations link to the Bibliography for full reference details
- Appendix H contains annotated summaries of key papers
- Appendix I catalogues ongoing and planned ME/CFS research studies

== Plain-Language Glossary

A short glossary of the terms most likely to appear in patient and caregiver reading. A fuller, web-searchable glossary is available on the companion website; the appendices define technical terms in more depth.

#figure(
  table(
    columns: (auto, auto),
    inset: table-inset,
    stroke: booktabs-stroke(14),

    [*Term*], [*What it means*],
    [Post-exertional malaise (PEM)], [A delayed, disproportionate worsening of symptoms 12–72 hours after physical or cognitive exertion — the defining feature of ME/CFS. Often called a "crash".],
    [Pacing], [Staying within your energy limits to avoid triggering PEM; balancing activity and rest to prevent crashes.],
    [Crashes], [The delayed symptom flare after overexertion that defines PEM.],
    [Orthostatic intolerance], [Symptoms that worsen on standing and improve when lying down — lightheadedness, dizziness, or a racing heart.],
    [POTS], [Postural Orthostatic Tachycardia Syndrome — a form of orthostatic intolerance with an abnormal heart-rate rise on standing.],
    [Brain fog], [Cognitive dysfunction: difficulty concentrating, finding words, remembering, or processing information.],
    [Amplifier], [A mechanism that worsens or perpetuates the disease but cannot start it on its own.],
    [Root cause], [A trigger-capable mechanism that can, in principle, initiate the full syndrome from a healthy baseline.],
    [Consequence], [A real, downstream effect of the disease process; treating it alone does not cure the underlying disease.],
    [Neuroinflammation], [Inflammation in the brain and nervous system.],
    [Mitochondria], [The energy-producing structures inside cells; their dysfunction is central to the energy-failure picture.],
    [Dysautonomia], [Disordered functioning of the autonomic nervous system, which regulates heart rate, blood pressure, digestion, and temperature.],
    [B-cell / T-cell], [Types of immune cells; the document reports specific abnormalities in them.],
  ),
  caption: [Plain-language glossary],
)

== Critical Reading Advice

When evaluating medical claims in this document:

- *Check the evidence level.* High-certainty findings are more reliable than preliminary results. Many ME/CFS mechanisms remain speculative due to limited research.

- *Distinguish established from hypothetical.* Results in `achievement` environments represent replicated findings. Results in `hypothesis` environments are working theories that may be revised.

- *Note the warnings.* Limitations acknowledged in `warning` environments indicate where the author recognizes uncertainty or potential problems.

- *Remember the author is not a physician.* This work represents independent research and literature synthesis, not clinical guidance. All treatment decisions require physician oversight.

- *Recognize individual variation.* ME/CFS presents heterogeneously. Treatment approaches, mechanisms, and findings discussed here may not generalize to all patients or subtypes.

- *Consider publication date.* ME/CFS research is rapidly evolving. This document reflects knowledge current at time of publication.

== Medical Disclaimer

*This is not medical advice.* The author has no medical training. This work synthesizes research literature for educational purposes. Always consult qualified healthcare providers before making medical decisions.

== Updates and Corrections

This is a living document. Updates will be published as new research emerges. The source code is available at #link("https://github.com/yannickloth/health-me-cfs"). Errors or omissions can be reported to the author via email.

