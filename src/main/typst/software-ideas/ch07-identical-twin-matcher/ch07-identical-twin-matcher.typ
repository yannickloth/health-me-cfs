#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 4: Identical Twin Cohort Matcher
// =============================================================================

= Identical Twin Cohort Matcher
<sw:identical-twin-matcher>

#chapter-abstract[
Given a new patient's profile (mechanism fingerprint, demographics, disease features), find the K most similar patients in a de-identified database who are ahead in their disease course. What happened to them? Which treatments worked? This is a nearest-neighbor lookup into observed trajectories — transparent, intuitive, requiring no predictive model.
]

== Motivation

The differential recovery predictor (the Recovery Predictor proposal in the companion document) provides statistical estimates: "patients with your profile have an 18% recovery probability." But patients want more than a number — they want to know what happened to the patients most like them. Did the ones who recovered do something different from the ones who didn't?

The identical twin matcher answers this. It finds the K patients in a de-identified registry whose profiles are most similar to the query patient, then reports their trajectories: what treatments they tried, what worked, what didn't, and where they ended up. This is not a model — it's a database query. The output is transparent: "here are your 10 closest matches, here's what they experienced."

== Core Functionality

=== Matching Algorithm

Given a query patient profile P (mechanism fingerprint, age, sex, duration, severity, trigger type, comorbidities), find the K patients in the registry database who minimize a weighted distance metric:

$d(P, P_i) = sqrt( sum_j w_j (p_j - p_{i,j})^2 )$

where $w_j$ are feature weights learned from the data (which features best predict similar trajectories), not manually specified. The weights can be optimized to predict similarity in outcomes (patients with similar outcomes are "truly similar") rather than superficial demographic similarity.

Possible distance metrics beyond Euclidean: cosine similarity (emphasis on fingerprint pattern shape over magnitude), Mahalanobis distance (accounts for feature correlations), or a learned metric (Siamese neural network trained to predict outcome similarity).

=== Output

For the top K matches (K = 10–50 depending on registry size):

1. *Demographic profile.* How similar is each match to the query patient (age, sex, duration, severity)?
2. *Mechanism similarity.* Fingerprint radar plot overlay (query vs match) showing which mechanism families align and which diverge.
3. *Treatment history.* What treatments did each match try? Which produced improvement, which did nothing, which caused worsening?
4. *Outcome.* Where is each match now? (Recovered, improved, stable, worsened, deceased.) How long did it take?
5. *Trajectory overlay.* For matches with wearable data, overlay their HRV/activity/function trajectories on the query patient's trajectory.

=== Patient-Facing Summary

"Of the 30 patients most similar to you in our database:
- 12 tried daratumumab; 8 improved (67%), 3 had no effect (25%), 1 worsened (8%)
- 20 tried low-dose naltrexone; 6 improved (30%), 10 had no effect (50%), 4 worsened (20%)
- 8 recovered to near-normal function over 2–5 years; 4 of those 8 had GPCR autoantibody-targeted treatment
- Your estimated probabilities differ from population averages because your profile is specifically matched — population averages include patients whose mechanism fingerprints are very different from yours"

=== Privacy Architecture

The tool operates on de-identified registry data. No individual patient can be re-identified from the output. The matching algorithm runs on the server; the output is aggregated (no individual-level data is transmitted to the querying patient, only summary statistics across matches).

Patients must explicitly consent to their de-identified data being included in the matching pool. Opt-in, granular consent — patients control which data types (fingerprint, outcomes, treatments) are included.

== Relationship to Existing Content

- the Recovery Predictor proposal (Recovery Predictor): the statistical counterpart — the matcher provides the patient stories behind the numbers
- the Mechanism Fingerprint Platform spec (Mechanism Fingerprint Platform): the fingerprint that provides the matching features
- the Wearable Dashboard spec (Wearable Dashboard): the longitudinal data that enables trajectory overlay
- Ch38 (Proposed Studies, parent paper): the research infrastructure that could generate the matching database

== Limitations

#limitation[
*Data sparsity.* The matching quality depends entirely on registry size and feature coverage. With small registries (hundreds, not tens of thousands), the nearest matches may not be very similar. The tool must report match quality (distance score) alongside results.

*Selection bias.* Registry patients are not a random sample of the ME/CFS population. Patients who participate in registries are typically more educated, more severe, and more treatment-seeking. The matches may not represent what would happen to a patient who is unlike the registry population.

*Confounding by indication.* Patients who received treatment X may have done so because they had specific characteristics (e.g., daratumumab is reserved for autoantibody-positive patients). The match's outcome after treatment X does not imply that the query patient would have the same outcome — the confounders must be accounted for.

*Causal inference impossibility.* The matcher reports associations, not causal effects. A match who recovered after trying treatment Y did not necessarily recover _because of_ treatment Y. The tool must clearly communicate this.
]

== Consequence

#key-point[
The identical twin cohort matcher provides what patients most want and what statistics cannot deliver: the stories of people like them. It does not replace the recovery predictor — it humanizes it. A patient who hears "your 5-year recovery probability is 18%" may feel helpless. A patient who sees "of the 20 patients most similar to you, 4 recovered — and here's what they did" has actionable information and, equally important, hope grounded in evidence.
]
