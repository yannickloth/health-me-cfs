#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 14: The Comorbidity Cascade Map
// Type: Systematic Taxonomy
// =============================================================================

= The Comorbidity Cascade Map
<ch:comorbidity-cascade>

#chapter-abstract[
ME/CFS patients accumulate comorbidities (POTS, MCAS, hEDS, FM, IBS, migraine, interstitial cystitis) in non-random sequences. A temporal comorbidity acquisition model — given diagnosis X, what is the probability of developing Y within Z years — has both clinical utility (early screening) and mechanistic implications (does POTS → MCAS go through endothelial dysfunction or vagal impairment?). Ch47 §9.5 starts this analysis; this chapter proposes completing it as a systematic map.
]

== Motivation

The paper discusses comorbidities descriptively (Ch3) and addresses specific mechanisms (MCAS in Ch7, POTS in Ch10, hEDS in Ch14), but does not model the *temporal acquisition sequence*. Yet the sequence is mechanistically informative:

- Does POTS typically precede MCAS, or vice versa? If POTS → MCAS, the pathway may go through sympathetic overactivation driving mast cell degranulation. If MCAS → POTS, the pathway may go through mast cell mediator-induced vasodilation causing compensatory tachycardia.

- Does ME/CFS typically precede fibromyalgia, or vice versa? If ME/CFS → FM, central sensitization develops secondary to chronic neuroinflammation. If FM → ME/CFS, peripheral pain drives CNS remodeling that eventually produces the full ME/CFS syndrome.

- Does IBS onset cluster temporally with ME/CFS onset, or develop years later? If concurrent, the shared trigger (infection) affects both the CNS and the gut simultaneously. If delayed, the gut dysbiosis is a downstream consequence of autonomic dysfunction (reduced vagal tone → impaired gut motility → dysbiosis).

The comorbidity cascade map answers these questions by modeling the acquisition sequence across a large patient population.

== The Core Comorbidity Network

The following comorbidities have well-documented co-occurrence with ME/CFS:

| Comorbidity | Prevalence in ME/CFS | Temporal relationship |
|-------------|---------------------|-----------------------|
| POTS | 30–50% | Often co-occurs at onset or develops within 1–2 years |
| MCAS | ~25% | Variable; may precede, co-occur, or follow |
| Fibromyalgia | 30–50% | Often develops after ME/CFS |
| IBS | 30–50% | Often co-occurs at onset |
| Migraine | 30–40% | May precede (pre-existing) or develop after |
| hEDS/hypermobility | 20–30% | Usually pre-existing (genetic) |
| Interstitial cystitis | 15–20% | Usually develops after ME/CFS |
| Small fiber neuropathy | ~30% | Develops after ME/CFS, duration-dependent |
| TMJ disorder | 20–30% | Variable |
| Endometriosis | 15–25% | Usually pre-existing |
| Autoimmune thyroiditis | 10–20% | May precede (genetic predisposition) or co-occur |
| Sleep apnea | 15–25% | Usually develops after, weight/age-dependent |

=== The Comorbidity Acquisition Model

For each pair of conditions (A, B), estimate:

$P(B | A, delta t)$

the probability of developing condition B within time window δt given that condition A is present. This is estimated from:

1. Large patient registries (SolveCFS, DecodeME) with temporal diagnosis data
2. Clinical cohort studies with longitudinal comorbidity tracking
3. Patient surveys with self-reported diagnosis dates (less reliable but larger sample)

The resulting directed graph reveals acquisition pathways. Simplify the graph by identifying clusters of conditions that co-occur with near-zero temporal lag (suggesting a shared upstream cause) vs conditions that develop in sequence (suggesting a causal pathway).

=== Hypothesized Pathways

*Pathway 1: Mast cell → Multi-system.* MCAS → (histamine, tryptase, prostaglandins) → endothelial dysfunction + tissue degradation + sensory nerve sensitization → POTS (vasodilation-driven tachycardia) + IBS (gut mast cell degranulation) + interstitial cystitis (bladder mast cells) + migraine (dural mast cell activation). This pathway predicts that MCAS precedes the other conditions and that mast cell stabilization should prevent their development.

*Pathway 2: Autonomic failure → Multi-system.* Baroreflex failure → cerebral hypoperfusion → CNS energy depletion → neuroinflammation → fibromyalgia (central sensitization) + migraine (cortical spreading depression threshold reduction) + IBS (vagal impairment → dysbiosis) + small fiber neuropathy (chronic hypoperfusion damages unmyelinated fibers). This pathway predicts that POTS/preload failure precedes the other conditions and that volume expansion + autonomic support should slow their development.

*Pathway 3: Shared autoimmune predisposition.* Genetic susceptibility → GPCR autoantibodies → simultaneously: POTS (β2-AR, M3R dysfunction) + MCAS (autoantibody-mediated mast cell activation) + thyroiditis (shared autoimmune predisposition) + endometriosis (shared inflammatory/autoimmune predisposition). This pathway predicts near-simultaneous onset of multiple conditions and positive family history of autoimmunity.

*Pathway 4: Structural Connective Tissue → Multi-system.* Pre-existing hEDS → joint instability → chronic pain → CNS sensitization → fibromyalgia + ME/CFS (pain-driven autonomic dysfunction + energy cost of chronic muscle guarding). hEDS also → craniocervical instability → brainstem compression → autonomic dysfunction + POTS. This pathway predicts that hEDS precedes all other conditions and that addressing structural instability (bracing, surgery, physiotherapy) should improve downstream conditions.

*Pathway 5: Immune dysregulation → Secondary conditions.* ME/CFS immune dysfunction → chronic viral reactivation (EBV, HHV-6) → persistent immune activation → immunosenescence → increased susceptibility to infections → further immune dysregulation. This pathway predicts that immune dysfunction is central and early, and that comorbidities develop as the immune system progressively deteriorates.

=== Pathway Discrimination

The pathways are not mutually exclusive. A given patient may follow Pathway 2 (autonomic failure) initially, triggering Pathway 1 (mast cell activation) as a secondary process. The purpose of the comorbidity cascade map is to identify which pathway is dominant in which patient and at which stage, enabling predictive screening and preventive intervention.

Key discriminating features:

- *MCAS-first pattern:* The patient had allergic symptoms (urticaria, food intolerances, environmental sensitivities) before developing ME/CFS, POTS, or IBS. Mast cell stabilizers improve multiple conditions.

- *Autonomic-first pattern:* The patient developed orthostatic intolerance concurrent with or shortly after ME/CFS onset. Volume expansion and midodrine improve multiple conditions. MCAS symptoms are mild or absent.

- *Structural-first pattern:* The patient has known hypermobility since childhood, with joint pain and instability predating ME/CFS onset by years. hEDS is the primary diagnosis.

- *Autoimmune-first pattern:* The patient has personal or family history of autoimmunity. Autoantibodies are present. Multiple autoimmune conditions cluster.

#proposal[
*Implementation.* A structured comorbidity history questionnaire (20 items, self-administered, 10 minutes) captures: each comorbidity, whether it was diagnosed before, concurrent with, or after ME/CFS onset, and estimated time lag from ME/CFS onset to comorbidity development. Aggregate data from 1,000+ patients identifies acquisition sequence patterns. The comorbidity cascade map is published as a directed graph with transition probabilities.

*Clinical application.* A patient presenting with ME/CFS + MCAS who has not yet developed POTS receives a probability estimate of developing POTS within 2 years and a recommendation for early autonomic screening and preventive interventions.
]

== Feasibility

*Effort.* Moderate — questionnaire design, data collection through patient organizations, analysis. Total ~30–50 hours.

*Data quality.* Retrospective diagnosis dates are subject to recall bias and diagnostic delay (POTS is underdiagnosed; patients may have had symptoms years before diagnosis). Mitigation: use symptom-based criteria (e.g., "when did you first notice your heart racing on standing?") in addition to formal diagnosis dates.

== Relationship to Ch47 §9.5

Ch47 §9.5 (Comorbidity Acquisition as Attractor Migration) proposes a formal model in which each comorbidity represents the system colonizing a new attractor basin, with the migration probability depending on the distance between basins in state space. The comorbidity cascade map provides the empirical data to parameterize this model: the observed transition probabilities, the temporal clustering patterns, and the discriminating features that determine which pathway a given patient follows.

== Consequence

#key-point[
The comorbidity cascade map transforms comorbidities from a descriptive list into a predictive model. It tells patients what conditions they are at risk of developing, in what time frame, and what they can do to reduce that risk. It tells researchers which comorbidity sequences are mechanistically linked (and therefore which interventions should prevent multiple conditions simultaneously) and which are coincidental (requiring separate preventive strategies). Most importantly, it uses the comorbidity sequence — a feature every patient possesses — as a diagnostic tool for identifying their dominant disease pathway.
]
