#import "../shared/environments.typ": *

= Foundations of ME/CFS Modeling
<ch:modeling-foundations>

Mathematical and computational modeling offers a principled framework for integrating the disparate biological observations described in Part II into coherent, testable quantitative theories. ME/CFS presents a particular challenge for modeling because the disease involves simultaneous dysfunction across energy metabolism, immune regulation, autonomic control, and neuroendocrine signaling---systems that interact through nonlinear feedback loops operating on timescales ranging from seconds (ion channel kinetics) to years (disease progression). This chapter establishes the mathematical foundations, modeling strategies, and validation principles that underpin the specific models developed in Chapters @ch:energy-metabolism-models and @ch:predictive-applications.

#include "../figures/fig-modeling-framework-overview.typ"

== Why Model ME/CFS?
<sec:why-model>

The complexity of ME/CFS pathophysiology motivates formal modeling for four reasons, each addressing a distinct limitation of verbal or qualitative reasoning.

=== Managing Multi-System Complexity

Verbal descriptions of ME/CFS pathophysiology---such as "immune activation drives neuroinflammation, which disrupts autonomic function, which impairs perfusion, which worsens energy deficits"---are inherently ambiguous about magnitudes, timescales, and thresholds. A mathematical model forces explicit specification of these quantities. When Naviaux and colleagues identified a hypometabolic state in ME/CFS patients through metabolomics @Naviaux2016metabolomics, the question was not merely _whether_ metabolic pathways are disrupted, but _how much_ disruption is required to produce the observed clinical phenotype and whether that disruption is self-sustaining. Only quantitative models can answer such questions rigorously.

=== Generating Testable Predictions

A well-specified model generates predictions that extend beyond the data used to construct it. For instance, the IDO metabolic trap hypothesis proposed by Phair @phair2019ido was formulated as a mathematical model of bistability in tryptophan metabolism. The model predicts specific dose--response relationships for tryptophan supplementation and identifies parameter regimes under which the metabolic trap is reversible. These predictions are testable independently of the original hypothesis, providing a rigorous path toward confirmation or refutation.

=== Optimizing Interventions

Treatment of ME/CFS currently relies on empirical trial-and-error. Models that capture the dynamics of disease processes can, in principle, identify optimal intervention points---the system components whose modification yields the greatest clinical improvement for the least perturbation. The energy envelope theory @jason2012energy @jason2009energy is an informal example: it identifies energy expenditure as the critical variable to control and proposes pacing as the intervention. A formal model can extend this reasoning to pharmacological interventions, predicting which combinations of treatments target complementary pathways.

=== Personalized Medicine

ME/CFS is heterogeneous. Patients differ in symptom profiles, severity trajectories, biomarker patterns, and treatment responses @Hornig2015 @Montoya2017. A parameterized model can, in principle, be fitted to individual patient data---metabolomic profiles, immune markers, autonomic function tests---to generate patient-specific predictions. This is the logic underlying precision medicine approaches, though current data availability limits practical implementation (see @sec:data-requirements).

== Prior Work and Scope of Contribution
<sec:prior-work>

Mathematical and computational modeling of ME/CFS remains remarkably sparse relative to the disease's complexity and the size of the affected population. This section surveys the existing literature honestly, identifies what has and has not been attempted, and positions the models developed in this part within that landscape. Transparency about the novelty---and the limitations---of the present work is essential for scientific integrity.

=== Existing Models
<sec:existing-models>

Four bodies of work constitute the substantive prior art in ME/CFS modeling.

*Phair's IDO metabolic trap.* The most developed mechanistic model in the ME/CFS literature is Phair, Davis, and Kashi's mathematical analysis of tryptophan metabolism @phair2019ido. This model demonstrates that substrate inhibition of indoleamine 2,3-dioxygenase 1 (IDO1), combined with non-functional IDO2 variants, produces a bistable system: one stable equilibrium at physiological tryptophan concentrations and a second pathological equilibrium at elevated concentrations. The model is genuinely novel in showing that a single-pathway bistability mechanism can explain both the triggering (transition to the pathological state during immune activation) and the persistence (stability of that state after the trigger resolves) of ME/CFS. It generates specific, testable predictions---including that recovery from the pathological state requires weeks even if tryptophan input is halted entirely. However, the model is narrowly scoped: it addresses one enzyme pathway and does not model energy metabolism, immune cell dynamics, neuroendocrine function, or the multi-system interactions that characterize the disease.

*Broderick's cytokine network analysis.* Broderick and colleagues applied network graph analysis to cytokine co-expression patterns in CFS patients versus controls @broderick2010cytokine. By measuring 16 plasma cytokines in 40 female CFS patients and 59 matched controls, they constructed mutual-information networks and identified topological differences: CFS networks were more hub-like, with attenuated Th1 and Th17 responses and altered NK cell signaling patterns. This work is computational but not dynamical---it characterizes network _structure_ (which cytokines co-vary) rather than network _dynamics_ (how cytokine concentrations evolve over time). It does not use ODEs, does not model temporal trajectories, and does not generate predictions about disease progression or treatment response. It remains the most rigorous network-level characterization of ME/CFS immune dysfunction.

*Morris and Maes's neuro-immune framework.* Morris and Maes proposed a conceptual neuro-immune model describing how peripheral immune activation, oxidative and nitrosative stress, and mitochondrial damage interact to produce ME/CFS symptoms @morris2013neuroimmune. The model identifies the pathway from infection through immune activation, oxidative and nitrosative stress, and mitochondrial damage to post-exertional malaise. While comprehensive in scope and biologically well-grounded, it is a verbal/diagrammatic model, not a mathematical one. It does not specify rate equations, parameter values, or quantitative predictions. It identifies the _structure_ of the problem that a mathematical model should formalize.

*Li et al.'s genome-scale metabolic modeling.* The most recent computational contribution is Li and colleagues' application of genome-wide precision metabolic modeling (GPMM) to ME/CFS and Long COVID muscle tissue @li2025systems. Using transcriptomic data and constraint-based flux balance analysis, they identified downregulation of the alanine/aspartate and arginine/proline metabolism pathways and proposed L-ornithine and L-aspartate (LOLA) supplementation as a candidate intervention. This work uses a genuine computational framework (constraint-based metabolic modeling), but it is _static_: flux balance analysis computes steady-state metabolic fluxes under optimality assumptions, without modeling temporal dynamics, feedback loops, or multi-system interactions. It does not address immune function, neuroendocrine regulation, or the dynamic phenomena (PEM, disease onset, relapse--remission) that define ME/CFS clinically.

=== Adjacent Computational Work
<sec:adjacent-work>

Two additional lines of work are relevant but do not constitute mechanistic modeling in the sense pursued here.

Xiong, Oh, and colleagues developed BioMapAI, a deep neural network trained on a four-year longitudinal multi-omics dataset from 249 participants @xiong2025biomap. BioMapAI integrates gut metagenomics, plasma metabolomics, immune cell profiling, and clinical symptoms to classify ME/CFS and identify disease-specific biomarkers. This is a powerful data-driven approach that provides systems-level insights, but it is fundamentally a pattern-recognition tool: it identifies statistical associations across omics layers without specifying the causal mechanisms, rate equations, or dynamical systems that generate those patterns. It cannot, by design, predict the consequences of perturbations (treatments, exercise challenges) that lie outside the training data distribution.

Similarly, metabolomic profiling studies---including the foundational work by Naviaux @Naviaux2016metabolomics and Germain et al. @Germain2020metabolic ---characterize the metabolic _state_ of ME/CFS but do not model the _dynamics_ that produce it. These studies are indispensable as data sources for parameterizing dynamical models but are not themselves models in the mathematical sense.

=== What This Part Contributes---and What It Does Not
<sec:contribution-scope>

The models developed in Chapters @ch:energy-metabolism-models through @ch:predictive-applications attempt something not, to our knowledge, previously published in the ME/CFS literature: a multi-system ODE framework that couples energy metabolism, immune dynamics, neuroendocrine regulation, autonomic control, coagulation, mast cell activation, connective tissue biomechanics, GI motility/SIBO dynamics, and epigenetic state dynamics into an integrated dynamical system of 64 state variables. Specifically, the contributions are:

+ *Mechanistic PEM model*: To our knowledge, no prior work formulates post-exertional malaise as a dynamical system with explicit rate equations for ATP depletion, ROS generation, secondary immune activation, and delayed symptom amplification. The model extends to metabolic flexibility (Randle cycle, GPR81 feedback), carnitine shuttle dynamics, and mitochondrial quality control (fission/fusion/mitophagy/biogenesis) (Chapter @ch:energy-metabolism-models).
+ *Extended immune and vascular models*: Mast cell degranulation dynamics with self-amplification thresholds, coagulation cascade with microclot-mediated oxygen delivery reduction (predicting multiplicative VO#sub[2] impairment), endothelial dysfunction via eNOS uncoupling, and daratumumab response kinetics (Chapter @ch:immune-system-models).
+ *Neuroendocrine integration*: BH4 three-way cofactor competition (TPH/TH/NOS) reveals coordinated serotonin/dopamine/NO deficits from a single bottleneck; cerebrovascular autoregulation models multiplicative CBF impairment; central sensitization is modeled as bidirectional feedback rather than passive readout; small fiber neuropathy couples to autonomic dysfunction (Chapter @ch:neuroendocrine-models).
+ *Multi-system coupling*: The integrated 64-variable model (Chapter @ch:integrated-systems) formalizes bidirectional interactions---energy$<->$immune, neuro$<->$immune, HPA$<->$immune, cardiovascular$<->$metabolic, gut$<->$brain$<->$immune, autonomic$->$motility$->$SIBO$->$immune$+$energy, mast cell$<->$energy$<->$autonomic, coagulation$<->$oxygenation$<->$mitochondria---as explicit coupling terms. The model includes GI motility/SIBO dynamics with autonomic and mast cell drivers, connective tissue/EDS biomechanical coupling to POTS, and epigenetic state dynamics (methylation + acetylation as slow variables creating hysteresis). Phair modeled one pathway; Broderick characterized one network; the present work attempts to link these subsystems dynamically.
+ *Bifurcation and attractor analysis*: Beyond Phair's single-pathway bistability, the coupled system exhibits three distinct disease attractors (metabolic-dominant, immune-dominant, severe/locked), identified through bifurcation analysis. Separatrix topology determines which recovery paths are accessible from each attractor (Chapter @ch:integrated-systems).
+ *Temporal evolution and early warning signals*: Critical slowing down analysis yields wearable-detectable early warning signals for PEM crashes 24--48 h in advance. Hysteresis from epigenetic consolidation defines a 3--12 month intervention window after disease onset. Hopf bifurcation predicts 2--6 week symptom oscillation periods usable as proximity-to-recovery biomarkers. Kramers escape rate theory quantifies spontaneous recovery probability as a function of disease duration (Chapter~@ch:temporal-evolution).
+ *Clinical translation via control and network theory*: Pacing is formulated as optimal control (Pontryagin maximum principle, Hamilton--Jacobi--Bellman for stochastic extension), yielding state-dependent rules and quantitative safety margins. Global sensitivity analysis (Sobol indices) ranks drug targets across the population and reveals subtype-specific target inversion. Network controllability analysis predicts that 4--6 simultaneous interventions are structurally required for full system control---providing a mathematical explanation for monotherapy failure. A synergy matrix identifies specific treatment combinations and antagonisms. Virtual population simulation enables in silico trial design with enrichment optimization (Chapter~@ch:predictive-applications).

These contributions must be understood in the context of severe limitations.

#limitation(title: [Critical Limitations of the Present Models])[
*No computational implementation.* The models are presented as systems of equations, not as validated simulations. No numerical solutions, parameter fitting to patient data, or sensitivity analyses are reported. The models are a theoretical framework, not computational results. Whether the integrated system actually produces the predicted emergent behaviors (bistability, limit cycles, PEM dynamics) remains to be demonstrated through numerical exploration.

*Standard mathematical techniques.* The individual subsystem models use well-established biochemical modeling methods---Michaelis--Menten kinetics, Hill functions, compartmental ODE systems. The novelty lies in the application to ME/CFS and the inter-system integration, not in the mathematical methods themselves.

*Parameter uncertainty.* Most model parameters are constrained by in vitro studies on isolated cells (primarily lymphocytes and muscle biopsies). Whether these values accurately represent in vivo function across tissues is uncertain. The 64-variable integrated model has on the order of 220--270 parameters; current ME/CFS datasets cannot robustly constrain this many parameters simultaneously.

*Validation gap.* No model in this part has been validated against independent patient data. The perturbation response analyses (Chapter @ch:integrated-systems, Section @sec:perturbation-responses) describe expected qualitative behaviors but do not constitute quantitative validation. Bridging this gap requires the large-scale longitudinal datasets currently under development (e.g., DecodeME @DecodeME2025).

*Scope relative to biology.* Even at 64 state variables, the model omits substantial biology: microRNA networks, detailed neurotransmitter receptor pharmacology, intracellular signaling cascades (e.g., NF-$kappa$B, JAK-STAT), and tissue-specific heterogeneity. The model is a simplification designed for tractability, not a comprehensive digital twin.
]

In summary, the present work is the most comprehensive attempt at dynamical systems modeling of ME/CFS to date---extending from single-subsystem ODEs through a 64-variable integrated model to bifurcation analysis, optimal control theory, and network controllability---but it remains a theoretical framework awaiting computational implementation and empirical validation. It should be read as a formalization of hypotheses---translating the verbal models of Morris and Maes @morris2013neuroimmune and others into the language of differential equations, and then extracting predictions that are only accessible through the mathematical formalism---rather than as established quantitative science.

== Modeling Approaches
<sec:modeling-approaches>

=== Ordinary Differential Equations
<sec:ode-models>

Ordinary differential equations (ODEs) describe the time evolution of state variables (concentrations, cell counts, hormone levels) under the assumption that spatial variation within compartments is negligible. For a state vector $bold(x)(t) in RR^n$ and parameter vector $bold(theta) in RR^p$, a general ODE system takes the form:

$ frac(d bold(x), d t) = bold(f)(bold(x)(t), bold(theta), t), quad bold(x)(0) = bold(x)_0 $ <eq:general-ode>

ODE models are the primary framework used in Chapters @ch:energy-metabolism-models through @ch:neuroendocrine-models because they balance biological fidelity with mathematical tractability. The key assumptions are: (1) well-mixed compartments (e.g., plasma cytokine concentrations are uniform), (2) deterministic dynamics (stochastic fluctuations are negligible at the population level), and (3) continuous state variables (justified when molecule counts are large).

For ME/CFS-relevant systems, ODEs capture enzyme kinetics (Michaelis--Menten), receptor--ligand binding (Hill functions), and feedback regulation (inhibition/activation cascades). The Michaelis--Menten rate law, used extensively in energy metabolism models (Chapter @ch:energy-metabolism-models), describes enzyme-catalyzed reactions:

$ v = frac(V_"max" [S], K_m + [S]) $ <eq:michaelis-menten>

where $v$ is the reaction rate, $V_"max"$ is the maximum velocity, $[S]$ is the substrate concentration, and $K_m$ is the Michaelis constant (substrate concentration at half-maximum velocity).

=== Stochastic Models

When the number of molecules or cells is small---as in NK cell cytotoxicity assays or viral reactivation events---stochastic effects become important. The chemical master equation describes the probability $P(bold(x), t)$ of the system being in state $bold(x)$ at time $t$:

$ frac(partial P(bold(x), t), partial t) = sum_(j=1)^(M) [ a_j (bold(x) - bold(nu)_j) P(bold(x) - bold(nu)_j, t) - a_j (bold(x)) P(bold(x), t) ] $ <eq:master-equation>

where $a_j (bold(x))$ is the propensity function for reaction $j$ and $bold(nu)_j$ is the stoichiometry vector. In practice, the master equation is solved via the Gillespie algorithm (stochastic simulation algorithm), which generates exact sample trajectories. Stochastic models are used in Chapter @ch:immune-system-models for viral reactivation dynamics, where the transition from latent to lytic infection is a rare event governed by small numbers of viral genomes.

=== Network Models

Biological systems can be represented as networks where nodes are molecular species, genes, or cell types, and edges are interactions (activation, inhibition, binding). Network analysis provides structural insights---identifying hub nodes, feedback loops, and modular organization---without requiring kinetic parameters. Cytokine networks in ME/CFS (Chapter~@ch:immune-system-models) have been characterized using this approach, with studies identifying distinct cytokine signatures that correlate with disease duration @Hornig2015 @Montoya2017.

Formally, a biological network is a directed graph $G = (V, E, w)$ where $V$ is the set of nodes, $E subset.eq V times V$ is the set of directed edges, and $w: E -> RR$ assigns signed weights (positive for activation, negative for inhibition). Key network metrics include:

- *Degree centrality*: the number of edges incident on a node, identifying highly connected "hub" molecules
- *Betweenness centrality*: the fraction of shortest paths passing through a node, identifying bottleneck species
- *Modularity*: the degree to which the network decomposes into densely connected subnetworks, corresponding to functional modules (e.g., innate immunity, adaptive immunity)

=== Agent-Based Models

Agent-based models (ABMs) represent individual entities (cells, patients) as autonomous agents with rules governing their behavior and interactions. ABMs are particularly suited to modeling spatial heterogeneity and individual variation. In ME/CFS, ABMs could model immune cell trafficking across the blood--brain barrier (Chapter~@ch:immune-system-models) or patient-level variation in treatment responses (Chapter~@ch:predictive-applications). However, ABMs require substantially more parameters than ODE models and are computationally expensive, limiting their current application to well-characterized subsystems.

=== Hybrid and Multi-Scale Models

No single modeling framework captures all relevant aspects of ME/CFS pathophysiology. Hybrid models combine frameworks across scales: ODEs for intracellular biochemistry, stochastic models for rare events (viral reactivation), and agent-based models for cell--cell interactions. Multi-scale coupling requires careful attention to timescale separation: fast dynamics (enzyme kinetics, milliseconds) can be approximated as quasi-steady-state relative to slow dynamics (immune cell proliferation, days), reducing the dimensionality of the coupled system. Chapter~@ch:integrated-systems develops such multi-scale models for ME/CFS.

== Computational Methods
<sec:computational-methods>

=== Parameter Estimation

Model parameters ($bold(theta)$) must be estimated from experimental data. For ME/CFS models, data sources include metabolomics @Naviaux2016metabolomics @Germain2020metabolic, cytokine panels @Hornig2015 @Montoya2017, two-day cardiopulmonary exercise testing (CPET) @keller2024cpet, and autonomic function assessments @Newton2007. Parameter estimation proceeds by minimizing the discrepancy between model predictions $hat(bold(y))(bold(theta))$ and observed data $bold(y)$:

$ hat(bold(theta)) = arg min_(bold(theta)) sum_(i=1)^(N) ( y_i - hat(y)_i (bold(theta)) )^2 / sigma_i^2 $ <eq:least-squares>

where $sigma_i$ is the measurement uncertainty for observation $i$. For nonlinear ODE models, this optimization problem is typically non-convex, requiring global optimization methods (e.g., differential evolution, simulated annealing) or Bayesian approaches.

=== Bayesian Inference

Bayesian methods are preferred when parameter uncertainty must be quantified---a critical requirement for ME/CFS models given the limited and heterogeneous data available. Bayes' theorem gives the posterior distribution over parameters:

$ p(bold(theta) | bold(y)) = frac(p(bold(y) | bold(theta)) space p(bold(theta)), p(bold(y))) $ <eq:bayes>

where $p(bold(y) | bold(theta))$ is the likelihood, $p(bold(theta))$ is the prior (encoding existing biological knowledge), and $p(bold(y))$ is the marginal likelihood (model evidence). Posterior distributions are typically computed via Markov chain Monte Carlo (MCMC) sampling. The resulting credible intervals on parameters propagate directly to credible intervals on model predictions, providing honest uncertainty quantification.

=== Sensitivity Analysis

Sensitivity analysis determines which parameters most strongly influence model outputs, guiding both experimental priorities and intervention design. Local sensitivity coefficients are defined as:

$ S_(i j) = frac(partial x_i, partial theta_j) dot frac(theta_j, x_i) $ <eq:sensitivity>

where $S_(i j)$ is the normalized sensitivity of state variable $x_i$ to parameter $theta_j$. Global sensitivity analysis (e.g., Sobol indices) partitions output variance across parameters and their interactions, accounting for nonlinearities and parameter correlations. Parameters with high sensitivity indices are candidate intervention targets; parameters with low sensitivity indices indicate robustness of the model output to biological variability.

== Data Requirements
<sec:data-requirements>

Mathematical models are only as reliable as the data constraining them. ME/CFS modeling faces specific data challenges.

=== Longitudinal Data

Most ME/CFS studies are cross-sectional, comparing patients with controls at a single time point. ODE models require longitudinal data---repeated measurements over time---to constrain dynamic parameters (rate constants, time delays). The NIH intramural study @walitt2024deep and two-day CPET protocols @keller2024cpet provide rare longitudinal data points, but multi-month or multi-year trajectories remain scarce. Symptom tracking data from patient registries @jason2012energy offer temporal resolution but limited molecular detail.

=== Multi-Omics Integration

ME/CFS involves simultaneous dysfunction across metabolomic, proteomic, transcriptomic, and epigenomic layers. Integrating these heterogeneous data types into a single model requires careful normalization, dimensionality reduction, and alignment of timescales. Recent multi-omics studies @Xiong2023multiomics @heng2025mecfs provide templates for data integration, but sample sizes remain small relative to the number of measured variables, creating overfitting risk.

=== Clinical Parameters

Clinical measures---symptom severity scores, functional capacity ratings, exercise tolerance---are the ultimate validation targets for ME/CFS models but are inherently subjective and variable. Standardized instruments such as the DePaul Symptom Questionnaire and the Bell Disability Scale (Appendix @app:diagnostic-tools) reduce but do not eliminate this variability. Models must account for measurement noise in clinical outcomes.

#limitation(title: [Data Availability Constrains Model Complexity])[
The number of identifiable parameters in any model is bounded by the information content of available data. For ME/CFS, where typical studies involve $n = 20$--$100$ patients measured at $1$--$3$ time points across $10$--$50$ biomarkers, models with more than approximately $10$--$20$ free parameters risk overfitting. The models in Chapters @ch:energy-metabolism-models through @ch:neuroendocrine-models are therefore deliberately parsimonious, prioritizing well-constrained parameters over biological completeness. Full-complexity models await the large-scale longitudinal datasets currently under development (e.g., DecodeME @DecodeME2025).
]

== Model Validation
<sec:model-validation>

A model must be validated against data independent of those used for parameter estimation. For ME/CFS models, validation takes three complementary forms.

=== Predictive Accuracy

The strongest form of validation is accurate prediction of previously unobserved phenomena. A model parameterized from metabolomic data that correctly predicts CPET outcomes, or a model fitted to cytokine kinetics that correctly predicts treatment response timescales, demonstrates explanatory power beyond curve-fitting. Cross-validation (holding out subsets of data for testing) provides a weaker but practically useful form of predictive validation.

=== Biological Plausibility

Model predictions must be consistent with established biology. A model predicting negative concentrations, physiologically impossible reaction rates, or cell counts exceeding total body lymphocyte numbers is biologically implausible regardless of its fit to data. Plausibility constraints can be enforced formally through parameter bounds or informative priors in Bayesian estimation.

=== Structural Identifiability

Before fitting a model to data, it is essential to verify that the model structure permits unique parameter estimation in principle (structural identifiability) and in practice given measurement noise (practical identifiability). A structurally unidentifiable model contains parameters or parameter combinations that cannot be determined from any amount of data, indicating model overparameterization. Techniques for identifiability analysis include the differential algebra approach, the generating series method, and profile likelihood analysis. All models in Part V are accompanied by identifiability assessments in Appendix @app:mathematical-details.

#open-question(title: [Validation Standards for ME/CFS Models])[
What constitutes sufficient validation for a computational model of ME/CFS pathophysiology? Unlike pharmacokinetic models, which can be validated against drug concentration time courses, ME/CFS models predict emergent phenomena (fatigue, post-exertional malaise) that lack precise molecular definitions. Establishing consensus validation criteria---analogous to FDA guidance for physiologically-based pharmacokinetic models---is a prerequisite for clinical translation of ME/CFS models.
]

#open-question(title: [Bayesian Bias-Correction Framework for ME/CFS Treatment Evidence])[
The BRANDO meta-epidemiological evidence (Section @sec:brando-evidence of Chapter @ch:controversies) provides quantitative priors on blinding bias applicable to any unblinded trial with subjective outcomes. A formal Bayesian framework could incorporate: (1) an informative prior on bias magnitude from Hróbjartsson 2014 ($cal(N)(0.56, 0.15)$), (2) a diagnostic contamination prior from Wormgoor 2021 criteria-stratification data, and (3) the trial-specific likelihood. The posterior would give the true treatment effect after accounting for both biases. Applied to Zhao et al.\ (2026, SMD = 0.85), the posterior 95% credible interval for exercise efficacy in PEM-positive ME/CFS would be predicted to span zero.
] <oq:bayesian-bias-correction>

== Model Coverage Justification
<sec:model-coverage>

Part V develops models spanning energy metabolism (Chapter @ch:energy-metabolism-models), immune dynamics (Chapter @ch:immune-system-models), neuroendocrine regulation (Chapter @ch:neuroendocrine-models), integrated multi-system coupling (Chapter @ch:integrated-systems), temporal evolution (Chapter @ch:temporal-evolution), and predictive applications (Chapter @ch:predictive-applications). This section justifies why these specific models were selected and acknowledges what remains unmodeled.

=== Coverage of Part II Pathophysiology

The models were chosen to formalize the mechanisms discussed in Part II. Table @tab:model-coverage maps each pathophysiological domain from Part II to its corresponding model(s) in Part V.

#figure(
  table(
    columns: (auto, auto, auto),
    table.header(
      [*Part II Domain*], [*Part V Model(s)*], [*Chapter*],
    ),
    [Energy metabolism (Ch.~@ch:energy-metabolism)],
    [Glycolysis, Krebs, ETC, ROS, PEM, mitochondrial QC, lactate, carnitine],
    [Ch.~@ch:energy-metabolism-models],

    [Immune dysfunction (Ch.~@ch:immune-dysfunction)],
    [NK cell, cytokine network, T/B cell, viral reactivation, mast cell, coagulation],
    [Ch.~@ch:immune-system-models],

    [Neurological dysfunction (Ch. 8)],
    [Central sensitization, small fiber neuropathy, CBF autoregulation],
    [Ch.~@ch:neuroendocrine-models],

    [Neuroendocrine (Ch. 9)],
    [HPA axis, tryptophan--kynurenine, BH4, catecholamines],
    [Ch.~@ch:neuroendocrine-models],

    [Cardiovascular (Ch.~@ch:cardiovascular)],
    [Autonomic balance, OI/POTS, endothelial dysfunction],
    [Chs.~@ch:neuroendocrine-models, @ch:immune-system-models],

    [Gut microbiome (Ch.~@ch:gut-microbiome)],
    [GI motility, SIBO dynamics, gut--brain--immune axis],
    [Ch.~@ch:integrated-systems],

    [Sleep dysfunction (Ch. 12)],
    [Sleep--wake cycle, circadian model],
    [Ch.~@ch:neuroendocrine-models],

    [Integrative models (Ch.~@ch:integrative-models)],
    [64-variable whole-body model, bistability, bifurcation],
    [Ch.~@ch:integrated-systems],

    [Cross-disease (Ch. 14)],
    [EDS coupling, mast cell triangle],
    [Ch.~@ch:integrated-systems],
  ),
  caption: [Mapping of pathophysiological domains (Part II) to mathematical models (Part V).],
) <tab:model-coverage>

=== Selection Rationale

Three criteria guided model selection:

+ *Mechanistic specificity*: Only domains where the underlying biochemistry is sufficiently characterized to write rate equations were modeled. Domains with purely phenomenological descriptions (e.g., "fatigue" as a subjective experience) appear as output variables rather than as dynamical subsystems.
+ *Clinical relevance*: Models prioritize mechanisms that are either currently targetable by interventions or that generate measurable biomarkers. The energy metabolism models were developed in detail because mitochondrial function is both measurable (Seahorse assay, CPET) and targetable (CoQ10, D-ribose, pacing). Conversely, intracellular signaling cascades (NF-$kappa$B, JAK-STAT) were omitted despite their mechanistic importance because they add model complexity without generating distinct clinical predictions at the whole-patient level.
+ *Inter-system coupling*: Models were selected to capture the bidirectional feedback loops that distinguish ME/CFS from single-organ diseases. Every model in Part V participates in at least one cross-system coupling (catalogued in Chapter~@ch:integrated-systems), ensuring that the model set captures the emergent properties that verbal reasoning cannot derive.

=== What Is Not Modeled

Despite the breadth of Part V, several domains discussed in Part II lack formal mathematical treatment:

- *Detailed intracellular signaling*: NF-$kappa$B, JAK-STAT, mTOR, AMPK pathways are mentioned in Part II but are not modeled as separate ODE systems. Their net effects are absorbed into aggregate parameters (e.g., cytokine production rates, metabolic switching thresholds). Explicit signaling models would be needed for drug target identification at the molecular level.
- *MicroRNA regulatory networks*: Chapter 7 discusses miRNA dysregulation in ME/CFS @Cheema2023mirna, but miRNA--mRNA interaction networks are not formalized. These networks involve combinatorial regulation (one miRNA suppresses hundreds of targets) that requires Boolean or constraint-based modeling rather than ODE approaches.
- *Tissue-specific heterogeneity*: All models treat each compartment (plasma, CNS, muscle) as homogeneous. Spatial heterogeneity within tissues---e.g., regional differences in brain perfusion, patchy muscle fiber dysfunction---is not captured. Partial differential equation (PDE) or agent-based models would be required.
- *Psychological and social factors*: Deconditioning, mood disturbance, social isolation, and their bidirectional interactions with physiology are acknowledged in Parts II--III but are not modeled. These factors are difficult to formalize with rate equations and are better addressed through behavioral models.
- *Pharmacokinetics*: Drug absorption, distribution, metabolism, and elimination are not modeled. Treatment effects are represented as parameter modifications (e.g., CoQ10 increases $V_"max"^"ETC"$) rather than through explicit PK/PD models. Integrating PK models would enable dosing optimization but requires drug-specific data beyond the scope of this work.

These omissions are deliberate trade-offs: each would add substantial model complexity while current data are insufficient to constrain the additional parameters. The model set in Part V is designed to be the _minimum_ framework that captures the multi-system feedback architecture of ME/CFS while remaining parameterizable from existing data. Extensions to the omitted domains are identified as future work in the respective Model Application Guide sections of Chapters @ch:energy-metabolism-models through @ch:temporal-evolution.
