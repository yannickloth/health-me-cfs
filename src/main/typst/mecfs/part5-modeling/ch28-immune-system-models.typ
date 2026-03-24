#import "../shared/environments.typ": *

= Immune System Models
<ch:immune-system-models>

Immune dysfunction is among the most consistently documented features of ME/CFS, encompassing reduced NK cell cytotoxicity, altered cytokine profiles, T cell exhaustion, and autoimmune phenomena (@ch:immune-dysfunction). This chapter develops mathematical models of these immune subsystems, progressing from innate immunity through adaptive responses to neuroinflammation and viral reactivation. The models use the ODE and stochastic frameworks established in @ch:modeling-foundations.

#include "../figures/fig-immune-cell-dynamics.typ"

== Innate Immunity Dynamics
<sec:innate-immunity-models>

=== NK Cell Activity Model
<sec:nk-model>

Natural killer (NK) cells are a critical component of innate immunity, and reduced NK cell cytotoxic function is one of the most replicated immunological findings in ME/CFS @Hardcastle2016. The NK cell model tracks three populations: resting NK cells ($N_r$), activated NK cells ($N_a$), and exhausted NK cells ($N_e$):

$
frac(d N_r, d t) &= s_N - d_r N_r - k_(upright("act"))(bold(C)) N_r + k_(upright("recov")) N_e \
frac(d N_a, d t) &= k_(upright("act"))(bold(C)) N_r - k_(upright("exh")) N_a - d_a N_a \
frac(d N_e, d t) &= k_(upright("exh")) N_a - k_(upright("recov")) N_e - d_e N_e
$ <eq:nk-dynamics>

where $s_N$ is the bone marrow production rate, $d_r$, $d_a$, $d_e$ are death rates for each population, $k_(upright("act"))(bold(C))$ is the cytokine-dependent activation rate, $k_(upright("exh"))$ is the exhaustion rate, and $k_(upright("recov"))$ is the recovery rate from exhaustion. The activation rate depends on the cytokine milieu $bold(C)$:

$
k_(upright("act"))(bold(C)) = k_(upright("act,0")) dot.op frac([upright("IL-12")] + [upright("IL-15")], K_a + [upright("IL-12")] + [upright("IL-15")]) dot.op frac(K_i^(upright("IL-10")), K_i^(upright("IL-10")) + [upright("IL-10")])
$ <eq:nk-activation>

where IL-12 and IL-15 are activating cytokines, IL-10 is an inhibitory cytokine, and $K_a$, $K_i^(upright("IL-10"))$ are the respective half-saturation constants. In ME/CFS, the model represents reduced cytotoxicity through two mechanisms: (1) increased $k_(upright("exh"))$ (accelerated exhaustion due to chronic stimulation) and (2) reduced $k_(upright("recov"))$ (impaired recovery, possibly linked to energy deficits modeled in @ch:energy-metabolism-models). This produces a steady state with elevated $N_e\/N_a$ ratio---more exhausted than active NK cells---consistent with the functional impairment observed clinically.

=== Cytokine Network Model
<sec:cytokine-model>

Cytokines mediate communication between immune cells and between the immune system and other organ systems. The cytokine network model tracks the concentrations of key pro-inflammatory (IL-1$beta$, IL-6, TNF-$alpha$, IFN-$gamma$) and anti-inflammatory (IL-10, TGF-$beta$) cytokines. Each cytokine $C_i$ follows:

$
frac(d C_i, d t) = sum_(j) sigma_(i j)(bold(C), bold(N)) - delta_i C_i
$ <eq:cytokine-general>

where $sigma_(i j)$ represents production of cytokine $i$ by cell type $j$ (dependent on the full cytokine vector $bold(C)$ and immune cell populations $bold(N)$), and $delta_i$ is the degradation rate. The production terms encode the network topology---which cytokines stimulate or inhibit the production of which other cytokines.

Hornig et al. identified distinct cytokine signatures in ME/CFS that vary with disease duration: patients with illness duration $lt.eq 3$ years showed elevated pro-inflammatory cytokines, while those with longer illness showed a mixed or suppressed profile @Hornig2015. Montoya et al. confirmed that cytokine levels correlate with symptom severity, with IL-6 and TNF-$alpha$ among the strongest correlates @Montoya2017. The model captures this transition through a bifurcation in the cytokine network: early disease corresponds to a high-inflammation attractor, while chronic disease transitions to a "remodeled" state where feedback inhibition (via IL-10, cortisol) partially suppresses acute inflammation but fails to restore normal homeostasis.

The IL-6 dynamics illustrate the feedback structure:

$
frac(d [upright("IL-6")], d t) = sigma_(upright("IL-6"))^(upright("mono")) dot.op f_(upright("act"))(bold(C)) dot.op M_a + sigma_(upright("IL-6"))^(upright("Th17")) dot.op T_(17) - delta_(upright("IL-6")) [upright("IL-6")]
$ <eq:il6>

where $M_a$ is the activated monocyte/macrophage population, $T_(17)$ is the Th17 cell population, and $f_(upright("act"))(bold(C))$ is an activation function incorporating stimulation by TNF-$alpha$ and IL-1$beta$ and inhibition by IL-10. IL-6 in turn promotes Th17 differentiation (creating a positive feedback loop) and stimulates acute-phase protein production by hepatocytes.

=== Chronic Immune Activation
<sec:chronic-activation-model>

Sustained immune activation imposes a substantial metabolic cost. Activated immune cells can increase glucose consumption 10--20-fold, shifting from oxidative phosphorylation to aerobic glycolysis (the immunological Warburg effect). The model couples immune activation to energy metabolism (@ch:energy-metabolism-models) through an immune energy demand term:

$
J_(upright("immune")) = e_r N_r + e_a N_a + e_M M_a + e_T (T_a + T_(17))
$ <eq:immune-energy>

where $e_r lt.eq e_a$ (activated cells consume far more energy than resting cells). This term enters the ATP demand in @eq:atp-balance, creating a direct link between immune activation and energy deficit. In ME/CFS, chronic immune activation increases $J_(upright("immune"))$, reducing the energy available for other functions and narrowing the energy envelope (@sec:energy-envelope-model).

== Adaptive Immunity Models
<sec:adaptive-immunity-models>

=== T Cell Dynamics
<sec:tcell-model>

T cell dysfunction in ME/CFS includes altered CD4⁺\/CD8⁺ ratios, increased expression of exhaustion markers (PD-1, Tim-3), and reduced proliferative capacity. The T cell model distinguishes naïve ($T_n$), effector ($T_e$), memory ($T_m$), and exhausted ($T_(upright("ex"))$) populations:

$
frac(d T_n, d t) &= s_T - k_(upright("prime")) dot.op A(t) dot.op T_n - d_n T_n \
frac(d T_e, d t) &= k_(upright("prime")) dot.op A(t) dot.op T_n + rho_T T_e (1 - frac(T_e, T_(upright("max")))) - k_(upright("mem")) T_e - k_(upright("Tex")) T_e - d_e T_e \
frac(d T_m, d t) &= k_(upright("mem")) T_e - k_(upright("reactivate")) dot.op A(t) dot.op T_m - d_m T_m \
frac(d T_(upright("ex")), d t) &= k_(upright("Tex")) T_e - d_(upright("ex")) T_(upright("ex"))
$ <eq:tcell-dynamics>

where $A(t)$ is the antigen signal (from infection or autoimmune stimulation), $rho_T$ is the proliferation rate with logistic growth, $k_(upright("mem"))$ is the rate of memory cell formation, and $k_(upright("Tex"))$ is the exhaustion rate. In ME/CFS, persistent antigenic stimulation (from chronic viral reactivation or autoimmune processes) drives continuous $T_n -> T_e$ priming and accelerated $T_e -> T_(upright("ex"))$ exhaustion. The model predicts an expanded $T_(upright("ex"))$ compartment with reduced effector function---consistent with the immunological phenotype observed in ME/CFS patients @Che2025.

=== B Cell and Autoantibody Production
<sec:bcell-model>

B cell-mediated autoimmunity has been implicated in ME/CFS by studies documenting autoantibodies against neurotransmitter receptors and autonomic nervous system components @Loebel2016 @Sotzny2021 @Bynke2020. The B cell model tracks naïve B cells ($B_n$), activated B cells ($B_a$), and long-lived plasma cells ($P$) that produce autoantibodies ($upright("Ab")$):

$
frac(d B_a, d t) &= k_(upright("Bact")) dot.op T_e dot.op B_n - k_(upright("plasma")) B_a - d_(B a) B_a \
frac(d P, d t) &= k_(upright("plasma")) B_a - d_P P \
frac(d [upright("Ab")], d t) &= sigma_(upright("Ab")) dot.op P - delta_(upright("Ab")) [upright("Ab")]
$ <eq:bcell-dynamics>

where $k_(upright("Bact"))$ is the T cell-dependent B cell activation rate and $sigma_(upright("Ab"))$ is the antibody secretion rate per plasma cell. The long half-life of plasma cells ($d_P^(-1) approx$ months to years) means that autoantibody production persists long after the initial B cell activation---a mechanism potentially explaining why B cell depletion therapy (rituximab) showed delayed and variable responses in ME/CFS trials @Fluge2011rituximab @Fluge2015rituximab_rct @Fluge2019. The model predicts that clinical response requires waiting for pre-existing plasma cells to die naturally, with response timing inversely proportional to $d_P$.

== Neuroinflammation Models
<sec:neuroinflammation-models>

=== Microglial Activation
<sec:microglia-model>

Microglia are the resident immune cells of the central nervous system. PET imaging studies have shown increased neuroinflammatory markers in ME/CFS patients @Raijmakers2021Neuroinflammation. Microglia exist in a continuum of activation states, simplified here to resting ($mu_r$), activated pro-inflammatory ($mu_1$), and activated anti-inflammatory/reparative ($mu_2$):

$
frac(d mu_r, d t) &= -k_1(bold(S)) mu_r - k_2(bold(S)) mu_r + k_(upright("deact"),1) mu_1 + k_(upright("deact"),2) mu_2 \
frac(d mu_1, d t) &= k_1(bold(S)) mu_r - k_(upright("deact"),1) mu_1 - k_(12) mu_1 \
frac(d mu_2, d t) &= k_2(bold(S)) mu_r + k_(12) mu_1 - k_(upright("deact"),2) mu_2
$ <eq:microglia>

where $bold(S)$ is the vector of activation signals (including peripheral cytokines crossing the blood--brain barrier, neuronal damage signals, and ATP released from stressed cells), $k_1$ promotes pro-inflammatory activation (driven by TNF-$alpha$, IFN-$gamma$), $k_2$ promotes anti-inflammatory activation (driven by IL-4, IL-10), and $k_(12)$ is the rate of polarization from $mu_1$ to $mu_2$. In ME/CFS, the model predicts a shift toward sustained $mu_1$ dominance due to persistent peripheral inflammatory signals crossing the blood--brain barrier.

=== Blood--Brain Barrier Model
<sec:bbb-model>

The blood--brain barrier (BBB) regulates the transport of cytokines, immune cells, and metabolites between the peripheral circulation and the CNS. BBB permeability is modeled as a function of inflammatory state:

$
P_(upright("BBB"))(t) = P_0 + Delta P dot.op frac([upright("TNF-")alpha]^2 + [upright("IL-1")beta]^2, K_(upright("BBB"))^2 + [upright("TNF-")alpha]^2 + [upright("IL-1")beta]^2)
$ <eq:bbb-permeability>

where $P_0$ is the baseline permeability and $Delta P$ is the maximum inflammation-induced increase. The squared terms reflect the cooperative nature of tight junction disruption: moderate cytokine levels have minimal effect, but sustained elevation above $K_(upright("BBB"))$ is predicted to cause progressive barrier breakdown. Cytokine transport across the BBB follows:

$
J_(upright("BBB"),i) = P_(upright("BBB")) dot.op (C_i^(upright("plasma")) - C_i^(upright("CNS"))) + T_(upright("active"),i)
$ <eq:bbb-transport>

where $T_(upright("active"),i)$ represents active (saturable) transport mechanisms for specific cytokines. This coupling ensures that peripheral immune activation in ME/CFS produces CNS effects with a delay and attenuation determined by BBB integrity---potentially explaining why neurological symptoms worsen during immune flares and improve during periods of immune quiescence.

== Viral Reactivation Models
<sec:viral-reactivation-models>

Periodic reactivation of latent herpesviruses (EBV, HHV-6, CMV) has been implicated in ME/CFS symptom exacerbation. Viral reactivation is inherently stochastic: the switch from latent to lytic infection is a rare event governed by small numbers of viral transcription factors. The model uses a stochastic framework (@eq:master-equation) for the latent--lytic transition and deterministic ODEs for the subsequent immune response.

The viral load $V$ follows:

$
frac(d V, d t) = r_V dot.op V dot.op (1 - frac(V, V_(upright("max")))) - k_(upright("clear")) dot.op N_a dot.op V - k_(upright("CTL")) dot.op T_e^(upright("CD8")) dot.op V
$ <eq:viral-dynamics>

where $r_V$ is the viral replication rate, $k_(upright("clear"))$ is the NK-mediated clearance rate, and $k_(upright("CTL"))$ is the cytotoxic T lymphocyte (CTL) killing rate. The latent-to-lytic transition is modeled as a Poisson process with rate $lambda_(upright("react"))$ that increases under conditions of immune suppression, metabolic stress, or elevated cortisol:

$
lambda_(upright("react")) = lambda_0 dot.op frac(K_(upright("immune")), K_(upright("immune")) + N_a + T_e^(upright("CD8"))) dot.op (1 + alpha_(upright("stress")) dot.op [upright("Cortisol")])
$ <eq:reactivation-rate>

The model predicts that the reduced NK cell activity and T cell exhaustion characteristic of ME/CFS increase the reactivation rate $lambda_(upright("react"))$, producing more frequent viral flares that further stimulate the immune system---a positive feedback loop between immune dysfunction and viral persistence. EBV-specific findings, including recent evidence of EBV-driven demyelination mechanisms @Pless2026ebv_demyelination, suggest that viral reactivation may have tissue-specific consequences beyond generalized immune stimulation.

== Response to Immune Interventions
<sec:immune-intervention-models>

The immune models permit simulation of therapeutic interventions.

=== B Cell Depletion (Rituximab)

Rituximab depletes CD20⁺ B cells, modeled as an exponential reduction in $B_n$ and $B_a$ with a rate proportional to drug concentration. The model reproduces the key clinical observation from the Fluge et al. trials @Fluge2011rituximab @Fluge2015rituximab_rct: clinical improvement is delayed by 3--6 months because pre-existing plasma cells ($P$, which are CD20⁻ and not depleted by rituximab) continue producing autoantibodies until they reach the end of their natural lifespan. The model predicts that the subsequent RituxME phase III trial failure @Fluge2019 could result from insufficient depletion duration relative to the plasma cell half-life, patient heterogeneity in autoantibody-dependence, or---most parsimoniously---that B cell-mediated autoimmunity is not a primary driver in the unselected ME/CFS population.

=== Low-Dose Naltrexone

Low-dose naltrexone (LDN) is hypothesized to modulate immune function through transient opioid receptor blockade, leading to upregulation of endogenous opioid production and downstream immunomodulation @Polo2019LDN. In the model, LDN is represented as a shift in the cytokine network parameters: reduced TNF-$alpha$ production ($sigma_(upright("TNF"))^(upright("mono"))$) and increased IL-10 production. The predicted effect is a gradual shift from the high-inflammation attractor toward a lower-inflammation state, with a timescale of weeks consistent with clinical reports.

#open-question(title: [Autoantibody Subtypes and Clinical Response])[
The B cell model treats autoantibodies as a single species. In reality, ME/CFS patients harbor autoantibodies against multiple targets---$beta_2$-adrenergic receptors, muscarinic receptors, and others @Loebel2016 @Sotzny2021. Do different autoantibody specificities contribute independently to distinct symptom domains? If so, the clinical response to B cell depletion would depend on which autoantibody populations are most reduced, requiring antigen-specific modeling.
]

=== Plasma Cell Depletion (Daratumumab)

Daratumumab, an anti-CD38 monoclonal antibody, targets plasma cells directly---unlike rituximab, which depletes only CD20⁺ B cells and spares CD20⁻ plasma cells. A pilot study reported a 60% response rate in ME/CFS patients with elevated GPCR autoantibodies @Fluge2025daratumumab. The model represents daratumumab as simultaneous depletion of both $B_a$ and $P$ populations:

$
frac(d P, d t)|_(upright("dara")) = k_(upright("plasma")) B_a - d_P P - k_(upright("dara")) dot.op C_(upright("dara"))(t) dot.op P
$ <eq:daratumumab>

where $k_(upright("dara")) dot.op C_(upright("dara"))(t)$ is the drug-mediated killing rate. *The model yields a quantitative prediction impossible without the mathematics*: clinical response to daratumumab should appear faster than rituximab by a factor of approximately $d_P^(-1) \/ tau_(upright("dara"))$, where $d_P^(-1)$ is the natural plasma cell half-life (months to years) and $tau_(upright("dara"))$ is the daratumumab-mediated depletion time constant (days to weeks). For typical parameter values, the model predicts a response latency of 2--6 weeks for daratumumab versus 3--6 months for rituximab. Furthermore, the model predicts that daratumumab will show a clearer dose--response relationship because it acts directly on the autoantibody-producing cells, whereas rituximab's effect is indirect and delayed through the plasma cell half-life bottleneck.

== Mast Cell Activation Dynamics
<sec:mast-cell-model>

Mast cell activation syndrome (MCAS) is increasingly recognized as a comorbidity of ME/CFS, with prevalence estimates of 15--30% in ME/CFS cohorts @Frioni2024MCAS. Mast cells reside in tissues (skin, gut mucosa, perivascular spaces) and release a broad spectrum of mediators upon activation, affecting vascular tone, gut permeability, inflammation, and pain signaling. No prior ME/CFS model has formalized mast cell dynamics, despite their contribution to multiple symptom domains.

=== Mast Cell Degranulation Model

The model tracks resting mast cells ($upright("MC")_r$), primed mast cells ($upright("MC")_p$), and degranulated mast cells ($upright("MC")_d$), with degranulation releasing histamine ($[upright("His")]$), tryptase, and prostaglandin D₂ (PGD₂):

$
frac(d upright("MC")_r, d t) &= s_(upright("MC")) - k_(upright("prime"))(bold(S)_(upright("MC"))) dot.op upright("MC")_r + k_(upright("restab")) dot.op upright("MC")_d - d_(upright("MC")) dot.op upright("MC")_r \
frac(d upright("MC")_p, d t) &= k_(upright("prime"))(bold(S)_(upright("MC"))) dot.op upright("MC")_r - k_(upright("degran"))(bold(T)_(upright("MC"))) dot.op upright("MC")_p - k_(upright("deact")) dot.op upright("MC")_p \
frac(d upright("MC")_d, d t) &= k_(upright("degran"))(bold(T)_(upright("MC"))) dot.op upright("MC")_p - k_(upright("restab")) dot.op upright("MC")_d
$ <eq:mast-cell-dynamics>

where $s_(upright("MC"))$ is the tissue replenishment rate, $k_(upright("prime"))(bold(S)_(upright("MC")))$ is the priming rate driven by signals $bold(S)_(upright("MC"))$ (IgE, complement C3a/C5a, SCF), $k_(upright("degran"))(bold(T)_(upright("MC")))$ is the degranulation trigger rate driven by stimuli $bold(T)_(upright("MC"))$ (mechanical stress, temperature, exercise, neuropeptides), and $k_(upright("restab"))$ is the restabilization rate.

=== Mediator Release and Downstream Effects

Degranulation releases mediators with distinct kinetics and targets:

$
frac(d [upright("His")], d t) &= sigma_(upright("His")) dot.op k_(upright("degran")) dot.op upright("MC")_p - v_(upright("DAO")) dot.op frac([upright("His")], K_(upright("DAO")) + [upright("His")]) - v_(upright("HNMT")) dot.op frac([upright("His")], K_(upright("HNMT")) + [upright("His")]) \
frac(d [upright("PGD")_2], d t) &= sigma_(upright("PG")) dot.op k_(upright("degran")) dot.op upright("MC")_p - delta_(upright("PG")) [upright("PGD")_2]
$ <eq:histamine-dynamics>

where DAO (diamine oxidase) and HNMT (histamine N-methyltransferase) are the two histamine degradation enzymes. Histamine acts on four receptor subtypes with distinct tissue effects: H1 (vasodilation, bronchoconstriction, pruritus), H2 (gastric acid, cardiac inotropy), H3 (CNS neurotransmission), and H4 (immune cell chemotaxis). The model couples histamine to existing subsystems:

- *Autonomic coupling*: Histamine-mediated vasodilation reduces systemic vascular resistance, entering the orthostatic model (@eq:orthostatic) as an additional MAP perturbation: $Delta upright("MAP")_(upright("His")) = -alpha_(upright("H1")) dot.op [upright("His")] \/ (K_(upright("H1")) + [upright("His")])$
- *Gut coupling*: Histamine increases intestinal permeability, amplifying LPS translocation (@eq:gut-immune) by a factor $(1 + alpha_(upright("His,gut")) dot.op [upright("His")])$
- *Immune coupling*: Mast cell TNF-$alpha$ and IL-6 release enter the cytokine network (@eq:cytokine-general)
- *Neurological coupling*: Histamine crosses the BBB and modulates sleep--wake regulation (H3 receptor antagonism promotes wakefulness) and pain sensitization

*This multi-system coupling reveals a result accessible only through the integrated mathematical model*: mast cell activation simultaneously worsens orthostatic intolerance (vasodilation), gut permeability (barrier disruption), inflammation (cytokine release), and neurological symptoms (pain sensitization, sleep disruption). Verbal reasoning lists these effects independently; the model quantifies their mutual amplification. The energy--immune coupling means that the inflammatory cost of a mast cell flare further depletes ATP, reducing the energy available for DAO-mediated histamine clearance---creating a positive feedback loop between mast cell activation and energy deficit. The loop gain determines whether a mast cell flare is self-limiting (healthy) or self-amplifying (MCAS phenotype), and the model predicts that patients with $alpha_(upright("CI")) < 0.7$ are at substantially higher risk of self-amplifying degranulation cascades.

=== Pharmacological Predictions

The mast cell model predicts dose--response relationships for stabilizers and antihistamines:

+ *H1 antihistamines* (cetirizine, fexofenadine): reduce $alpha_(upright("H1"))$, attenuating vasodilation and pruritus but not preventing degranulation. *Model predicts* partial symptom relief with persistence of inflammatory and gut effects---consistent with clinical experience of incomplete response to antihistamines alone.
+ *H2 antihistamines* (famotidine): combined H1+H2 blockade is predicted to be synergistic for orthostatic symptoms because H2 receptors mediate cardiac effects that compound H1-mediated vasodilation.
+ *Mast cell stabilizers* (cromolyn, ketotifen): reduce $k_(upright("degran"))$ directly, preventing mediator release. The model predicts these should have broader efficacy than receptor antagonists because they prevent all downstream effects simultaneously. Ketotifen (dual stabilizer/H1 antagonist) is predicted to outperform either mechanism alone.
+ *DAO supplementation*: increases $v_(upright("DAO"))$, accelerating histamine clearance. The model predicts greatest benefit in patients with low endogenous DAO activity---identifiable by elevated plasma histamine-to-DAO ratio.

== Coagulation and Microvascular Dynamics
<sec:coagulation-model>

Emerging evidence implicates microclot formation and endothelial dysfunction in ME/CFS and post-COVID fatigue. Microclots---amyloid fibrin(ogen) aggregates resistant to normal fibrinolysis---can obstruct capillaries, impairing tissue oxygenation. This section develops a coagulation model that couples to the oxygen delivery equation (@ch:integrated-systems) and the immune model.

=== Coagulation Cascade Model

The model tracks the balance between clot formation and dissolution through four aggregate variables: fibrinogen ($[upright("Fbg")]$), fibrin ($[upright("Fbn")]$), microclot burden ($M_c$), and plasmin activity ($[upright("Pls")]$):

$
frac(d [upright("Fbn")], d t) &= k_(upright("thrombin")) dot.op [upright("Fbg")] dot.op f_(upright("TF"))(bold(C)_(upright("pro")), upright("endothelial damage")) - k_(upright("lysis")) dot.op [upright("Pls")] dot.op [upright("Fbn")] \
frac(d M_c, d t) &= k_(upright("aggregate")) dot.op [upright("Fbn")]^2 - k_(upright("resolve")) dot.op [upright("Pls")] dot.op frac(M_c, K_(upright("resist")) + M_c) \
frac(d [upright("Pls")], d t) &= k_(upright("tPA")) - k_(upright("PAI1")) dot.op [upright("PAI-1")] dot.op [upright("Pls")] - delta_(upright("Pls")) [upright("Pls")]
$ <eq:coagulation-dynamics>

where $f_(upright("TF"))$ is the tissue factor expression function (upregulated by pro-inflammatory cytokines and endothelial damage), $k_(upright("aggregate"))$ is the rate of fibrin self-assembly into amyloid-like structures (quadratic in fibrin, reflecting cooperative aggregation), and $K_(upright("resist"))$ parameterizes the resistance of amyloid microclots to plasmin-mediated dissolution. The PAI-1 (plasminogen activator inhibitor-1) concentration $[upright("PAI-1")]$ is elevated in inflammatory states, inhibiting plasmin and impairing fibrinolysis.

=== Coupling to Oxygen Delivery

Microclots reduce effective capillary perfusion, modifying the oxygen delivery equation (@eq:o2-delivery):

$
upright("DO")_2^(upright("eff")) = upright("DO")_2 dot.op (1 - frac(M_c, M_(c,upright("max"))))^(eta)
$ <eq:o2-microclot>

where $eta > 1$ reflects the nonlinear relationship between capillary occlusion and tissue oxygenation (due to the heterogeneous distribution of microclots across the vascular bed). *This coupling produces a result uniquely derivable from the mathematical model*: the combined effect of reduced cardiac output (autonomic dysfunction), impaired oxygen extraction (mitochondrial dysfunction), _and_ capillary occlusion (microclots) on tissue VO₂ is multiplicative, not additive. A patient with individually modest impairments in all three---say, 20% reduced CO, 15% reduced ETC capacity, and 10% capillary occlusion---experiences an effective VO₂ reduction of approximately $1 - (0.8 times 0.85 times 0.9) approx 39%$, far exceeding the sum of individual impairments. This multiplicative interaction explains why ME/CFS patients with seemingly mild abnormalities on individual tests can have profound functional impairment.

=== Endothelial Dysfunction Model

Endothelial cells regulate vascular tone through nitric oxide (NO) production by endothelial NO synthase (eNOS). Endothelial dysfunction---reduced NO bioavailability---contributes to both microvascular impairment and coagulation activation. The eNOS model tracks NO production as a function of cofactor availability:

$
J_(upright("eNOS")) = v_(upright("eNOS")) dot.op frac([upright("Arg")], K_(upright("Arg")) + [upright("Arg")]) dot.op frac([upright("BH")_4], K_(upright("BH")_4 upright(",eNOS")) + [upright("BH")_4]) dot.op frac(K_(upright("ADMA")), K_(upright("ADMA")) + [upright("ADMA")])
$ <eq:enos-model>

where $[upright("Arg")]$ is L-arginine (substrate), $[upright("BH")_4]$ is tetrahydrobiopterin (essential cofactor), and $[upright("ADMA")]$ is asymmetric dimethylarginine (endogenous eNOS inhibitor, elevated in inflammatory states). When $[upright("BH")_4]$ is depleted, eNOS "uncouples"---producing superoxide instead of NO, worsening oxidative stress. The BH₄ competition with tryptophan hydroxylase and tyrosine hydroxylase (@ch:neuroendocrine-models, @eq:tryptophan and @eq:catecholamines) creates a three-way resource conflict discussed further in @sec:bh4-competition.

Reduced NO shifts the coagulation balance toward clot formation (NO normally inhibits platelet aggregation and tissue factor expression), completing a vicious cycle: inflammation $->$ BH₄ depletion $->$ eNOS uncoupling $->$ reduced NO $->$ increased coagulation $->$ microclots $->$ tissue hypoxia $->$ further inflammation. The model predicts that fibrinolytic agents (nattokinase, lumbrokinase) should improve tissue oxygenation, and that L-arginine supplementation alone will be ineffective when BH₄ is the rate-limiting cofactor---a distinction that requires the model to adjudicate.

#speculation(title: [Microclot Burden as a Modifiable Disease Amplifier])[
Microclot accumulation acts as a disease amplifier by reducing tissue oxygenation below the threshold required for adequate mitochondrial function. Because microclot formation is driven by inflammation (upstream) and impairs oxygenation (downstream), it amplifies the energy--immune vicious cycle without being a primary cause. This amplifier role predicts that: (1) anti-coagulant or fibrinolytic therapy should produce improvement in ME/CFS patients with elevated D-dimer or microclot burden, without achieving cure (because the primary feedback loop persists); (2) the magnitude of improvement should correlate with baseline microclot burden; and (3) withdrawal of fibrinolytic therapy should produce relapse as microclots re-accumulate.

*Certainty*: 0.30. Direct evidence for pathogenic microclots in ME/CFS (as distinct from post-COVID) remains limited. The role of coagulation abnormalities as cause versus consequence of the inflammatory state is unresolved.
]

== Model Application Guide
<sec:immune-model-application>

This section provides measurements, worked examples, dependencies, scope justification, falsification criteria, and clinical implications for each immune model.

=== NK Cell Activity (@eq:nk-dynamics and @eq:nk-activation)

*Measurements required.*
(1) NK cell subpopulations by flow cytometry: CD56^(dim)CD16⁺ (cytotoxic, maps to $N_a$), CD56^(bright) (regulatory), and PD-1⁺/Tim-3⁺ NK cells (maps to $N_e$) (why: directly constrain the three-compartment model).
(2) NK cell cytotoxicity assay (51-Cr release or flow-based killing assay) (why: functional readout validating the $N_a\/(N_a + N_e)$ ratio prediction).
(3) IL-12, IL-15, IL-10 plasma levels (why: input to the activation function $k_(upright("act"))(bold(C))$).

*Worked example.*
Healthy steady state: $N_r = 200$, $N_a = 80$, $N_e = 20$ cells/$mu$L (ratio $N_e\/N_a = 0.25$). In ME/CFS with $k_(upright("exh"))$ doubled and $k_(upright("recov"))$ halved: solving the steady-state equations yields $N_r = 190$, $N_a = 35$, $N_e = 75$ cells/$mu$L ($N_e\/N_a = 2.1$). Total NK count is modestly reduced (300 $->$ 300), but functional capacity (proportional to $N_a$) drops by 56%---consistent with the well-documented finding that ME/CFS NK cell _counts_ are near-normal while _function_ is severely impaired @Hardcastle2016.

*Inter-model dependencies.*
_Inputs_: cytokine milieu from cytokine network model (@sec:cytokine-model); ATP availability from energy model (@ch:energy-metabolism-models) modulates $k_(upright("recov"))$ via energy-immune feedback (@ch:integrated-systems). _Outputs_: $N_a$ determines viral clearance rate in the reactivation model (@sec:viral-reactivation-models) and immune energy demand (@sec:chronic-activation-model).

*Scope and rationale.*
NK cells are modeled as three functional states (resting, activated, exhausted) rather than by surface marker subsets (CD56^(dim), CD56^(bright), adaptive NK). This functional classification captures the clinically relevant dynamics---cytotoxic capacity and exhaustion---without requiring single-cell phenotyping data that are unavailable for most ME/CFS cohorts.

*Falsification criteria.*
The model predicts that the $N_e\/N_a$ ratio correlates with disease severity and that reducing $k_(upright("exh"))$ (e.g., via checkpoint blockade) should restore cytotoxicity. *Falsified if*: (1) flow cytometry in ME/CFS patients shows that reduced cytotoxicity is due to _intrinsic_ per-cell defects (each activated NK cell kills fewer targets) rather than population shifts (fewer activated cells); or (2) IL-15 stimulation ex vivo fails to increase the $N_a$ compartment (would indicate that the activation pathway, not the exhaustion pathway, is the primary defect).

*Clinical implications.*
Patients with high $N_e\/N_a$ ratios (measurable by flow cytometry) are candidates for interventions reducing exhaustion: IL-15 agonists (promote NK activation and survival), checkpoint inhibitors targeting NK exhaustion markers (experimental), or energy restoration (improving $k_(upright("recov"))$ indirectly by increasing ATP). Patients with normal $N_e\/N_a$ but low total NK counts suggest a bone marrow production deficit requiring different investigation.

=== Cytokine Network (@eq:cytokine-general and @eq:il6)

*Measurements required.*
(1) Multiplex cytokine panel: IL-1$beta$, IL-6, TNF-$alpha$, IFN-$gamma$, IL-10, TGF-$beta$ at minimum (why: the six tracked cytokines).
(2) Disease duration (why: the model predicts distinct cytokine profiles for $lt.eq 3$ years vs. $> 3$ years).
(3) Symptom severity composite (why: validates the Montoya correlation between IL-6/TNF-$alpha$ and severity @Montoya2017).

*Worked example.*
Early disease ($< 3$ years): elevated TNF-$alpha$ (15 pg/mL vs. 5 healthy) and IL-6 (8 pg/mL vs. 2) with IL-10 beginning to rise (6 pg/mL vs. 2). The IL-6 positive feedback loop (IL-6 $->$ Th17 $->$ more IL-6) operates with loop gain $> 1$, sustaining the high-inflammation attractor. At $> 3$ years: IL-10 reaches 12 pg/mL, partially suppressing TNF-$alpha$ to 8 pg/mL, but the "remodeled" state has IL-6 still elevated (6 pg/mL) because the Th17 compartment expansion is maintained by IL-6-driven differentiation. The model predicts this transition occurs when $[upright("IL-10")]$ exceeds the half-inhibition constant for TNF-$alpha$ production ($K_i^(upright("IL-10")) approx 8$ pg/mL).

*Inter-model dependencies.*
_Inputs_: immune cell populations (NK, T cell, monocyte activation states). _Outputs_: cytokine levels drive BBB permeability (@sec:bbb-model), microglial activation (@sec:microglia-model), IDO upregulation (@ch:neuroendocrine-models), HPA axis modulation (@ch:integrated-systems), and symptom generation (@ch:integrated-systems).

*Scope and rationale.*
Six cytokines are tracked from the $>$50 known to be relevant. These six were selected because they are: (a) consistently altered in ME/CFS studies, (b) measurable by standard clinical assays, and (c) represent the core pro-inflammatory/anti-inflammatory balance. Omitted cytokines (IL-2, IL-4, IL-17A, GM-CSF) could be added as the model is extended but would require additional cell population equations to drive their production.

*Falsification criteria.*
The model predicts a bifurcation from high-inflammation to remodeled attractor at $~$3 years, driven by IL-10 feedback. *Falsified if*: longitudinal cytokine tracking in ME/CFS patients shows no systematic transition with disease duration, or if the transition occurs at times inconsistent with IL-10 accumulation dynamics.

*Clinical implications.*
Early-disease patients (high TNF-$alpha$, low IL-10) are predicted to respond to anti-inflammatory interventions (LDN, anti-TNF) that break the positive feedback loop before the remodeled state consolidates. Late-disease patients (elevated IL-10, moderate TNF-$alpha$) require interventions targeting the Th17 compartment or the IL-6 loop specifically, as broad anti-inflammatory therapy may further suppress the already-active IL-10 pathway without addressing the persistent IL-6/Th17 cycle.

=== Viral Reactivation (@eq:viral-dynamics and @eq:reactivation-rate)

*Measurements required.*
(1) EBV/HHV-6 viral load: quantitative PCR from plasma or PBMCs (why: directly measures $V$).
(2) EBV/HHV-6 IgG titers and early antigen (EA) antibodies (why: EA positivity indicates recent reactivation).
(3) NK cell and CD8⁺ T cell counts with functional assays (why: $N_a$ and $T_e^(upright("CD8"))$ determine clearance rate).
(4) Cortisol levels (why: cortisol enters the reactivation rate via stress-mediated immune suppression).

*Worked example.*
A patient with $N_a = 35$ cells/$mu$L (vs. 80 healthy) and $T_e^(upright("CD8")) = 100$ (vs. 200). Using @eq:reactivation-rate with $lambda_0 = 0.01$/day, $K_(upright("immune")) = 150$: healthy $lambda_(upright("react")) = 0.01 times 150\/(150 + 280) = 0.0035$/day (expected reactivation every 286 days). ME/CFS: $lambda_(upright("react")) = 0.01 times 150\/(150 + 135) = 0.0053$/day (every 189 days)---51% more frequent reactivations. With elevated cortisol from stress ($alpha_(upright("stress")) dot.op [upright("Cortisol")] = 0.3$), this rises to $0.0069$/day (every 145 days). The model predicts 2.5 reactivation episodes per year vs. 1.3 in health.

*Inter-model dependencies.*
_Inputs_: NK cell and CTL counts from immune models, cortisol from HPA model. _Outputs_: viral load $V$ stimulates immune activation (increasing $A(t)$ in T cell model, cytokine production), creating the positive feedback loop between immune dysfunction and viral persistence.

*Scope and rationale.*
The model uses logistic viral growth with immune clearance, omitting viral strain-specific dynamics, tissue tropism, and latency reservoir size. This captures the population-level dynamics relevant to ME/CFS (reactivation frequency, immune burden) but cannot predict which virus reactivates or which tissues are affected.

*Falsification criteria.*
*Falsified if*: (1) reactivation frequency does not correlate with NK/CTL function as predicted; (2) antiviral treatment that demonstrably suppresses viral load ($V -> 0$) does not reduce immune activation or improve symptoms (would indicate that viral reactivation is an _epiphenomenon_ rather than a disease driver).

*Clinical implications.*
Patients with frequent documented reactivations (elevated EA antibodies, detectable viral DNA) and low NK/CTL counts are predicted to benefit from: (a) antiviral prophylaxis (valacyclovir for EBV/HHV-6) to reduce reactivation burden; (b) NK cell-boosting interventions to lower $lambda_(upright("react"))$ endogenously. The model predicts that antiviral monotherapy provides temporary relief but reactivation resumes upon discontinuation unless immune function is concurrently restored.

=== B Cell/Autoantibody and Rituximab/Daratumumab Models (@eq:bcell-dynamics and @eq:daratumumab)

*Measurements required.*
(1) GPCR autoantibody panel: anti-$beta_2$-adrenergic, anti-muscarinic receptor antibodies (why: identifies patients with autoantibody-driven disease).
(2) CD19⁺ B cell count and CD38⁺ plasma cell markers (why: constrains $B_a$ and $P$).
(3) Immunoglobulin levels (IgG, IgA, IgM) (why: total antibody production rate reflects plasma cell activity).

*Worked example.*
Rituximab depletes $B_n$ and $B_a$ (CD20⁺) within 2 weeks. Plasma cells ($P$, CD20⁻) persist with half-life $d_P^(-1) approx 6$ months. Autoantibody $[upright("Ab")](t) = [upright("Ab")]_0 dot.op e^(-delta_(upright("Ab")) t) + (sigma_(upright("Ab")) P_0 \/ delta_(upright("Ab"))) dot.op e^(-d_P t)$. With $delta_(upright("Ab"))^(-1) approx 3$ weeks (IgG half-life) and $d_P^(-1) = 6$ months: antibody levels drop 50% only after $~$4 months (limited by plasma cell die-off, not antibody half-life). This matches the 3--6 month delay to clinical response in Fluge trials @Fluge2011rituximab. Daratumumab (anti-CD38) depletes $P$ directly: response predicted within 2--6 weeks ($tau_(upright("dara")) ~ 1$--2 weeks for plasma cell depletion $+$ 3 weeks for IgG clearance), consistent with Fluge 2025 pilot results @Fluge2025daratumumab.

*Inter-model dependencies.*
_Inputs_: T cell activation ($T_e$) drives B cell activation; autoantibodies act on autonomic receptors (coupling to ANS model in @ch:neuroendocrine-models). _Outputs_: $[upright("Ab")]$ contributes to small fiber neuropathy (@ch:neuroendocrine-models) and autonomic dysfunction.

*Scope and rationale.*
Autoantibodies are modeled as a single species. In reality, different autoantibody specificities target different receptors with distinct functional consequences. This simplification is acceptable for modeling the kinetics of B cell depletion therapy but insufficient for predicting which symptoms improve first (would require antigen-specific modeling, flagged as an open question).

*Falsification criteria.*
The model makes a quantitative timing prediction: daratumumab response should appear $~$3$times$ faster than rituximab response (2--6 weeks vs. 3--6 months). *Falsified if*: clinical trials show comparable response latencies for both agents (would indicate that plasma cell persistence is not the rate-limiting step for rituximab response delay).

*Clinical implications.*
*Whom to treat*: patients with elevated GPCR autoantibodies (measurable by commercial assays). *How*: the model predicts daratumumab > rituximab for speed and directness of effect. For rituximab, the model predicts that clinical trials must last $gt.eq$9 months (6-month plasma cell clearance + 3-month clinical assessment) to capture the full response---explaining the RituxME trial design challenges. Patients without detectable autoantibodies are predicted to not respond to B cell depletion.

=== Mast Cell Activation (@eq:mast-cell-dynamics and @eq:histamine-dynamics)

*Measurements required.*
(1) Serum tryptase (baseline and during flares) (why: tryptase is released exclusively by mast cells and validates degranulation events).
(2) 24-hour urine N-methylhistamine or prostaglandin D₂ metabolites (why: more sensitive than plasma histamine for chronic mast cell activation).
(3) Plasma DAO activity (why: constrains histamine clearance capacity $v_(upright("DAO"))$).
(4) Standing heart rate and MAP (why: validates the histamine$->$vasodilation$->$orthostatic coupling prediction).

*Worked example.*
A patient with MCAS comorbidity: baseline $upright("MC")_p\/upright("MC")_r = 0.4$ (vs. 0.1 healthy), indicating chronic priming. Upon trigger (e.g., standing, exercise), degranulation releases histamine. With $v_(upright("DAO")) = 50%$ of healthy (low DAO genotype): histamine clearance is impaired, $[upright("His")]$ peaks at $~$2$times$ normal, causing $Delta upright("MAP")_(upright("His")) approx -8$ mmHg (from the autonomic coupling equation). Combined with existing orthostatic impairment (MAP drop of 15 mmHg), total drop = 23 mmHg, pushing below the symptomatic threshold of 20 mmHg. Simultaneously, gut histamine increases intestinal permeability by factor $(1 + 0.3 times 2.0) = 1.6$, amplifying LPS translocation.

*Inter-model dependencies.*
_Inputs_: priming signals (IgE, complement, SCF from immune model), degranulation triggers (exercise from energy model, temperature, neuropeptides). _Outputs_: histamine $->$ orthostatic model (@ch:neuroendocrine-models), TNF-$alpha$\/IL-6 $->$ cytokine network, gut permeability $->$ LPS translocation (@ch:integrated-systems), energy demand $->$ ATP balance.

*Scope and rationale.*
The model tracks three mast cell states and two mediators (histamine, PGD₂), omitting the $>$200 other mast cell mediators. Histamine and PGD₂ are selected because they have the best-characterized downstream effects, are measurable clinically, and drive the primary symptom domains (vasodilation, pain, gut dysfunction).

*Falsification criteria.*
The model predicts that patients with $alpha_(upright("CI")) < 0.7$ are at higher risk of self-amplifying mast cell cascades (because energy deficit impairs histamine clearance). *Falsified if*: MCAS severity does not correlate with mitochondrial function, or if DAO supplementation in low-DAO patients does not reduce mast cell flare severity.

*Clinical implications.*
The pharmacological predictions (@sec:immune-intervention-models) are directly actionable: (1) H1+H2 antihistamine combination predicted synergistic for orthostatic symptoms; (2) mast cell stabilizers (cromolyn, ketotifen) predicted more broadly effective than antihistamines because they prevent all mediator release; (3) DAO supplementation predicted most effective in patients with low endogenous DAO (measurable); (4) the mast cell--energy coupling predicts that mitochondrial support should reduce MCAS flare severity as a secondary benefit.

=== Coagulation and Microclots (@eq:coagulation-dynamics and @eq:enos-model)

*Measurements required.*
(1) D-dimer (why: marker of fibrin turnover, elevated in microclot formation).
(2) Fluorescence amyloid microscopy of platelet-poor plasma (why: directly visualizes microclots, the Pretorius method).
(3) PAI-1 levels (why: constrains fibrinolytic capacity).
(4) ADMA and BH₄:BH₂ ratio (why: constrain eNOS function and NO availability).
(5) Transcutaneous VO₂ (why: validates the microclot$->$oxygen delivery prediction at the tissue level).

*Worked example.*
The multiplicative oxygen delivery effect: a patient with 80% cardiac output (autonomic dysfunction), 85% ETC capacity ($alpha_(upright("CI")) = 0.85$), and 10% capillary occlusion ($M_c\/M_(c,upright("max")) = 0.10$). Effective VO₂ = $0.80 times 0.85 times (1 - 0.10)^(1.5) approx 0.80 times 0.85 times 0.85 = 0.58$ of healthy. A 42% VO₂ reduction from three individually modest impairments. Without the microclots (replacing 0.85 with 1.0): VO₂ = 0.68. The microclots therefore account for an additional 10 percentage points of impairment---clinically significant but easy to miss on individual tests.

*Inter-model dependencies.*
_Inputs_: pro-inflammatory cytokines drive tissue factor expression; endothelial dysfunction (from BH₄ depletion) reduces NO and promotes clotting; PAI-1 is elevated in inflammatory states. _Outputs_: effective oxygen delivery $upright("DO")_2^(upright("eff"))$ constrains maximal ETC flux in the energy model. NO levels feed back to BBB permeability and autonomic regulation.

*Scope and rationale.*
The model uses four aggregate coagulation variables rather than the full coagulation cascade ($>$30 factors). This captures the net balance between clot formation and dissolution relevant to chronic microclot pathology. The full cascade would be needed for acute coagulation events (DIC, stroke) but is unnecessary for the slow microclot accumulation hypothesized in ME/CFS.

*Falsification criteria.*
The model predicts multiplicative VO₂ impairment from coagulation $times$ cardiac $times$ mitochondrial deficits. *Falsified if*: (1) fibrinolytic therapy (nattokinase/lumbrokinase) that demonstrably reduces microclot burden does not improve tissue oxygenation or exercise capacity; or (2) patients with elevated microclot burden show additive rather than multiplicative VO₂ impairment (i.e., total deficit equals the sum, not the product, of individual deficits).

*Clinical implications.*
*Whom to treat*: patients with elevated D-dimer, visible microclots on amyloid microscopy, or elevated PAI-1. *How*: the model predicts that fibrinolytic agents (nattokinase, lumbrokinase) address the microclot burden while anti-inflammatory treatment addresses the upstream driver. The model further predicts that BH₄ depletion impairs eNOS, reducing NO and promoting coagulation---so BH₄ supplementation (sapropterin) or anti-inflammatory therapy (reducing iNOS-mediated BH₄ consumption) should have anticoagulant effects as a secondary benefit. Isolated anticoagulation without addressing inflammation is predicted to require indefinite treatment, as microclots re-accumulate when therapy stops.
