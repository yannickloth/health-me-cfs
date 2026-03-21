#import "../shared/environments.typ": *

%
// Hypothesis, Speculation, Prediction, and Open Question Registry
// Generated 2026-03-04 by systematic harvest of all 305 environments.
%
// INSERTION: Add as new 
==  in ch25b or as standalone appendix section.
// Ensure longtable package is loaded. Build with: nix build
// DO NOT auto-insert without reviewer sign-off.
// ============================================================================

== Cross-Document Hypothesis Registry
<sec:hypothesis-registry>

#chapter-abstract[
This section provides a structured registry of the document's key mechanistic
hypotheses, speculations, predictions, and open questions.  Each entry records
the environment type, certainty estimate, condensed testable predictions, the
methods currently available to test them, and the source location.  The registry
is intended as a navigational aid for researchers designing studies and as a
completeness check ensuring that every major mechanistic claim in the document
has a corresponding proposed test.  Entries are grouped by mechanism domain and
ordered within domains from highest to lowest certainty.
]

=== Notation

  / *H*: Hypothesis — mechanistically grounded claim with stated certainty.
  / *S*: Speculation — plausible but lower-confidence claim.
  / *P*: Prediction — specific, directional; directly falsifiable.
  / *OQ*: Open Question — framed as unresolved; testability implied.

// TODO: Full table conversion from LaTeX format pending.
// The commented-out block below (lines 42–1239) contains all entries in broken mixed format.
// New entries (2026-03-21) are added as working Typst below.
// Last updated: 2026-03-21 (56 entries across all domains)

#block(fill: luma(240), inset: 8pt, radius: 4pt)[
  _Full registry table (48 legacy entries) — pending conversion from mixed LaTeX format; see commented block below. The 8 entries added 2026-03-21 appear in the working table that follows._
]

=== Entries Added 2026-03-21: Immune Null Findings and Creative Hypotheses

Motivated by: mecfsscience.org comprehensive immune review; six independent literature research streams.

#figure(
  table(
    columns: (3.2fr, 0.5fr, 0.6fr, 4fr, 4fr, 1.8fr),
    align: (left, center, center, left, left, left),
    stroke: 0.5pt,

    [*Hypothesis Title*], [*Type*], [*Cert.*], [*Testable Predictions (condensed)*], [*Available Tests / Status*], [*Location*],

    [TGF-$beta$ as Unifying Explanation for Two Most Replicated Immune Findings],
    [H], [0.40],
    [TGF-$beta$ elevation suppresses NK cytotoxicity via Smad/perforin-granzyme repression, mTOR inhibition, and receptor downregulation. (a) TGF-$beta$ and NK cytotoxicity correlate within ME/CFS cohorts. (b) In vitro TGF-$beta$ neutralisation rescues NK function. (c) TGF-$beta$ elevation is not entirely centrifugation artifact.],
    [Co-measurement study (TGF-$beta$ + NK cytotoxicity in same cohort) — never done. In vitro neutralisation assay feasible. Roerink 2018 artifact concern unresolved.],
    [Ch.7 @sec:tgf-beta],

    [The Cellular Fog: Normal Army, Broken Soldiers],
    [S], [0.35],
    [ME/CFS is immune cell _incompetence_ — cells present in normal numbers but functionally impaired at intracellular level. Functional assays (cytotoxicity, proliferation) abnormal while phenotypic assays (counts, markers) normal. TRPM3 provides molecular mechanism.],
    [Systematic comparison of functional vs phenotypic immune assays across cohorts. TRPM3 modulation studies. Pattern consistent with existing data but not formally tested as unified framework.],
    [Ch.7 @sec:immune-summary],

    [The TGF-$beta$ Lock: Epigenetic Hit-and-Run],
    [S], [0.30],
    [Transient TGF-$beta$ during initial infection causes persistent epigenetic remodeling at IRF/T-bet/EOMES loci in NK cells. Dysfunction persists after TGF-$beta$ normalises. (a) NK cell ATAC-seq shows TGF-$beta$-characteristic chromatin marks in patients with normal current TGF-$beta$.],
    [ATAC-seq/ChIP-seq on ME/CFS NK cells — feasible but not yet done. 2026 bioRxiv preprint (not peer-reviewed) establishes mechanism in vitro.],
    [Ch.7 @sec:tgf-beta],

    [Abortive B Cell Activation: Energy Starvation Stalls Germinal Centre Entry],
    [S], [0.25],
    [IGHV3-30 B cells receive activation signals but cannot complete germinal centre response due to metabolic deficit or absent T cell help. Explains skewing without SHM or class switching. (a) Metabolic supplementation restores class switching in vitro. (b) Severity-dependent loss as stalled B cells die.],
    [In vitro metabolic rescue of B cell function. Anti-CD40 + IL-21 rescue experiments. IGHV3-30 replicated by 3 groups (Sato 2021, Lipkin 2020, Ryback 2025).],
    [Ch.7 @sec:ighv3-30],

    [Constitutive Immune Activation Without Secretory Output],
    [S], [0.20],
    [Anellovirus depletion ($p < 0.001$, Lipkin) suggests constitutive low-level immune activation clearing harmless viruses. "Idle engine at high RPM" — intracellular activation without cytokine secretion. (a) ME/CFS immune cells show elevated baseline metabolic activity. (b) Stimulation fold-change blunted.],
    [Baseline metabolic profiling (Seahorse) of unstimulated ME/CFS immune cells. Anellovirus replication in independent cohort.],
    [Ch.7 (viral)],

    [The Immune Diaspora: Displaced Tissue-Resident Cells],
    [S], [0.20],
    [MAIT cell blood elevation reflects displacement from mucosal niches. Multiple tissue-resident immune types may be dislocated. Blood studies miss pathology because they sample displaced, non-functioning cells. (a) Gut biopsies show depleted MAIT cells inversely correlated with blood MAIT.],
    [Paired tissue biopsy + blood sampling for MAIT and other tissue-resident populations. CureME biobank finding (AUC 0.756 for severe) not yet replicated.],
    [Ch.7 @sec:immune-activation],

    [The Paradox of Invisible Immunity],
    [OQ], [---],
    [What immune mechanism causes extreme disability yet leaves no systemic trace? Three frameworks: compartmentalised immunity (tissue-level), exhaustion (early elevation normalises), post-immune damage (trigger transient, damage self-sustaining).],
    [Tissue biopsies vs blood in same patients. Early-onset ($<$3 yr) vs chronic cohort comparison. Non-immune metabolic assays in parallel.],
    [Ch.7 @sec:immune-summary],

    [The Immune System as Canary: Is Immunity Cause or Consequence?],
    [OQ], [---],
    [Alternative: immune findings are downstream of metabolic/neurological disease. Immune cells impaired because _all_ cells impaired. (a) Non-immune cells (fibroblasts) show same metabolic dysfunction. (b) Metabolic interventions improve both immune function and symptoms simultaneously.],
    [Fibroblast/epithelial cell metabolic profiling. RESETME trial: sustained remission favours immune causality; transient benefit favours canary model.],
    [Ch.13],
  ),
  kind: table, supplement: [Table], caption: [New hypothesis registry entries added 2026-03-21, motivated by mecfsscience.org immune review and creative brainstorming session.],
) <tab:hypothesis-registry-2026-03-21>

/*
#table(
  columns: (auto, auto, auto, auto, auto, auto),

caption: [Cross-document hypothesis and open question registry (56 key entries).
  “Cert.” = certainty on the 0–1 scale used throughout the document;
  “inf.” = inferred from context language.
  <tab:hypothesis-registry>], 

*Hypothesis Title* &
*Type* &
*Cert.* &
*Testable Predictions (condensed)* &
*Available Tests / Status* &
*Location*  

\footnotesize_(continued from previous page)_ 

*Hypothesis Title* &
*Type* &
*Cert.* &
*Testable Predictions (condensed)* &
*Available Tests / Status* &
*Location*  

\footnotesize_(continued on next page)_ 

%% ============================================================
%% DOMAIN 1 – ENERGY METABOLISM
%% ============================================================
\small_*Domain 1: Energy Metabolism*_ \

Selective Energy Dysfunction
(@hyp:selective-energy)
&
[H], [0.55],
&
(a) Hair/nail growth normal despite severe fatigue.
(b) Brain FDG-PET hypometabolism correlates with CNS symptoms.
(c) Electrical stimulation produces greater force than voluntary contraction
(CNS bypass effect).
(d) Two-day CPET worsens while resting muscle ATP remains normal.
&
Hair/nail growth measurement; FDG-PET; two-day CPET with muscle biopsy;
neuromuscular electrical stimulation.
All methods available today; no new tools required.
&
Ch.6 @sec:selective-energy-dysfunction;
Ch.25b @sec:selective-energy-dysfunction-study \

Multi-Level Energy Crisis and Vicious Cycle
(@hyp:vicious-cycle-integrated)
&
[H], [0.55],
&
Vascular $\to$ ischemia $\to$ ion dysregulation $\to$ mitochondrial damage
$\to$ ROS $\to$ vascular amplification.
Multi-target interventions more effective than mono-target; breaking any link
attenuates cycle but does not eliminate it.
&
Simultaneous ROS, I-FABP, TRPM3 current, mitochondrial O#sub[2] flux, and
microvascular imaging before/after multi-target intervention.
Multi-centre coordination needed; no single new assay required.
&
Ch.6 @sec:vicious-cycle \

Homocysteine-Mediated ETC Disruption as a Contributing Mechanism
(@hyp:homocysteine-etc-disruption)
&
[H], [0.30],
&
(a) ME/CFS patients with MTHFR TT genotype show higher CSF homocysteine than CT or CC.
(b) CSF homocysteine correlates with ETC complex activity in PBMCs.
(c) MTHFR-guided B12/folate supplementation reduces fatigue in elevated CSF homocysteine patients.
&
CSF and serum homocysteine measurement; MTHFR genotyping; ETC complex activity assay (Seahorse);
MTHFR-guided supplementation RCT in homocysteine-elevated subgroup.
CSF collection is invasive; requires specialized center.
&
Ch.6 @sec:amino-acid \

CNS Penetration as Limiting Factor
(@spec:cns-penetration)
&
[S], [inf.],
&
Failed CoQ10/carnitine trials reflect inadequate CNS penetration, not wrong
target.
CNS-penetrant formulations of same compounds show different efficacy.
&
CSF pharmacokinetics; MR spectroscopy to measure brain metabolite response;
comparative PK/PD trials of CNS-penetrant vs.\ non-penetrant formulations.
Feasible; requires CSF consent.
&
Ch.6 @sec:selective-energy-dysfunction \

Depression and ME/CFS May Share a Stress-Responsive Mitochondrial Failure Mode
(@spec:cullen2026-atp-fatigue)
&
[S], [0.40],
&
Near-normal ATP at baseline, but reduced capacity to upscale energy output
under metabolic stress in depression may parallel post-exertional energy
collapse in ME/CFS.
Whether ME/CFS mitochondria share this regulatory defect requires direct testing.
&
Metabolic flux assay (Seahorse) in ME/CFS cells at rest and under stress;
ATP measurement with direct energy demand elevation.
Methods available; cross-disease comparison needed.
&
Ch.6 @sec:selective-energy-dysfunction \

NETosis as Metabolic Sink Contributing to Energy Depletion
(@spec:netosis-metabolic-sink)
&
[S], [0.30],
&
(a) Ongoing NETosis creates energy drain competing with normal cellular demands
via NADPH oxidase, chromatin decondensation, membrane remodelling.
(b) Energy depletion impairs NET clearance; accumulated NETs drive further
inflammation; vicious cycle: energy $\to$ NETosis $\to$ inflammation $\to$ energy depletion.
(c) Dual treatment (NET clearance + mitochondrial support) breaks cycle
more effectively than mono-target.
&
Neutrophil oxygen consumption (extracellular flux) during NETosis induction;
ATP quantification during NET clearance (DNase I treatment);
calprotectin (NET burden proxy) and inflammatory markers before/after dual therapy.
Cross-referencing with immune dysfunction biomarkers (Ch.7).
&
Ch.6 @sec:mechanistic-implications; Ch.7 @sec:viral \

Stimulant-Enabled Push-Crash Cycle as Disease Progression Driver
(@spec:stimulant-progression)
&
[S], [0.40],
&
ME/CFS patients who use stimulants to maintain pre-illness activity levels
show worse 2-year functional outcomes than matched patients who reduce
activity and use pacing, even controlling for baseline severity.
&
Longitudinal cohort study comparing functional trajectories of
stimulant-using vs.\ pacing-only ME/CFS patients; confounding by
indication is the main challenge.
No longitudinal stimulant-specific outcome data exist.
&
Ch.15 @subsec:energy-credit \

Pitolisant in ME/CFS
&
[OQ], [—],
&
(a) Does pitolisant reduce fatigue without enabling overexertion?
(b) Does anti-neuroinflammatory effect provide durable benefit beyond symptom masking?
(c) How does it interact with dysregulated histamine in MCAS comorbidity?
&
No ME/CFS-specific clinical trials exist.
RCT needed; MCAS subgroup analysis would be informative.
&
Ch.15 @subsec:pitolisant \

%% ============================================================
%% DOMAIN 2 – IMMUNE DYSFUNCTION
%% ============================================================
\small_*Domain 2: Immune Dysfunction*_ \

NETosis as Bridge from Acute Viral Infection to Chronic Autoimmunity
(@hyp:monsalve2025-nets-autoimmunity)
&
[H], [0.70],
&
Excessive NETosis following viral infection generates persistent autoantigenic
stimuli (citrullinated histones, extracellular DNA) activating NLRP3
inflammasome. Impaired NET clearance creates self-amplifying loop linking
acute viral trigger to chronic autoimmune-like pathology.
&
NLRP3 activation markers (IL-1$beta$, IL-18, caspase-1) and citrullinated
autoantibody titres in NETosis-positive vs.\ resolved subgroups;
PAD4 inhibitor and DNase I as mechanistically grounded targets.
&
Ch.7 @sec:viral \

Bidirectional Viral-Immune Feedback Loop
(@hyp:viral-reactivation-bidirectional)
&
[H], [0.50],
&
(a) Antiviral monotherapy gives partial, incomplete benefit.
(b) Combined antiviral + immune-modulating therapy is synergistic.
(c) Breaking cycle at either node eventually normalises both viral titres and
immune markers, with temporal lag.
&
Randomised 2$times$2 factorial trial (antiviral / immune-modulator /
combination / placebo) measuring EBV/HHV-6 PCR + cytokine panel + symptoms.
Existing antivirals (valaciclovir) and LDN available.
&
Ch.7 @sec:viral \

Poly-Herpesvirus ALR Cascade
(@spec:poly-herpesvirus-alr)
&
[S], [0.35],
&
(a) Patients with antibodies against more herpesvirus dUTPases have more severe
symptoms.
(b) Single-agent antiviral therapy produces only partial benefit; combination
approaches more effective.
(c) Longitudinal sampling reveals sequential herpesvirus reactivation events.
(d) dUTPase-targeted interventions reduce immune activation independently of
viral load.
&
Prospective longitudinal sampling of dUTPase IgG (EBV, HHV-6, VZV) with
symptom correlation; combination antiviral trial; dUTPase inhibitor
development.  Anti-dUTPase ELISA exists but is not yet commercially
standardised.
&
Ch.7 @sec:poly-herpesvirus \

EBV-Adolescence Autoimmune Window
(@hyp:ebv-adolescence)
&
[H], [0.50],
&
(a) GPCR autoantibody titres higher in adult-onset vs.\ adolescent-onset ME/CFS.
(b) EBV-triggered cases show distinct B-cell subset distributions.
(c) Early rituximab in adolescents with recent EBV-triggered ME/CFS prevents
plasma cell establishment.
&
Retrospective biobank stratified by age at onset + EBV serology;
GPCR autoantibody ELISA; B-cell subset flow cytometry;
adolescent rituximab pilot ($n approx 20$).
&
Ch.7 @sec:herpesviruses \

IL-2 Pathway Dysregulation
(@hyp:il2-pathway)
&
[H], [0.45],
&
(a) IL-2 receptor expression (CD25, CD122, CD132) abnormal.
(b) JAK/STAT5 downstream signalling dysregulated.
(c) Functional T-cell responses to exogenous IL-2 differ from controls.
(d) EV IL-2 elevation and epigenetic signature reflect same upstream process.
&
IL-2 receptor flow cytometry; phospho-STAT5 intracellular staining;
low-dose IL-2 challenge with serial cytokine measurement.
All methods exist; $n gt.eq 50$ per group.
&
Ch.7 @sec:cytokines \

GPCR Autoantibody Pathogenicity
(@oq:gpcr-pathogenicity)
&
[OQ], [—],
&
Are binding-detected antibodies the same as those causing symptoms?
Do healthy individuals harbour similar antibodies that only become pathogenic
under inflammation?
Would functional receptor-activation assays better identify pathogenic antibodies?
&
Cell-based functional assays (receptor internalisation, cAMP);
head-to-head CellTrend ELISA vs.\ functional assay in same cohort;
longitudinal pre/post immunoadsorption functional measurement.
&
Ch.7 @sec:autoantibodies \

Exhausted Immune Surveillance Phenotype
(@spec:exhausted-surveillance)
&
[S], [0.35],
&
(a) B-cell count $<$10% lower reference limit co-occurs with elevated CD3+
and low NK cells in a reproducible subgroup.
(b) Subgroup correlates with EBV titres $>$20$times$ upper limit.
(c) NK-activating immunomodulators produce greater benefit in this subgroup.
&
Lymphocyte subset panel + EBV PCR + IgG titre in registry;
cimetidine case series subgroup analysis; NK cytotoxicity assay (K562 target).
&
Ch.7 @sec:exhausted-surveillance \

Frustrated NETosis: Incomplete NET Formation as Autoantigen Generator
(@hyp:frustrated-netosis)
&
[H], [0.35],
&
(a) ME/CFS neutrophils show reduced NET completion rates but equivalent/elevated
citrullinated histone release vs.\ controls (frustrated phenotype).
(b) Stress-responsive mitochondrial failure (Cullen2026ATP phenotype) correlates
with NET completion failure.
(c) DNase I therapy reduces calprotectin levels more effectively in frustrated-NETosis
subgroup than in normal-NETosis or control.
&
Ex vivo NETosis assay with live imaging quantifying NET completion;
citrullinated histone (citH3) ELISA; mitochondrial stress-response testing
(Seahorse); calprotectin measurement pre/post DNase I.
Methods available; sample size $n approx 40$ (20 ME/CFS, 20 controls).
&
Ch.7 @sec:autoimmune-mechanisms \

Can Calprotectin Serve as an Objective PEM Biomarker?
(@q:calprotectin-pem)
&
[OQ], [testable],
&
(a) Calprotectin rises 6–24 h post-exertion and predicts subsequent symptom severity.
(b) Rise correlates with NET burden markers (citH3, D-dimer).
(c) Serial calprotectin measurement objectively distinguishes normal fatigue recovery
from pathological PEM trajectory.
&
2-day CPET protocol with serial calprotectin measurement (baseline, 2 h, 6 h,
24 h, 48 h, 72 h post-exertion); parallel symptom diaries and NET markers
(citH3, D-dimer, DNase activity).
Low cost; within-subject design ($n approx 20$); methods all available.
&
Ch.7 @sec:autoantibodies \

Post-COVID Immune Damage and Vaccine Efficacy
(@q:postcovid-vaccine-efficacy)
&
[OQ], [—],
&
(a) ME/CFS patients with post-COVID worsening show lower seroconversion rates
to subsequent vaccinations than ME/CFS patients without COVID history.
(b) Pre-existing vaccine antibodies remain stable after COVID (no immune amnesia).
(c) Combined ME/CFS + post-COVID immune dysfunction requires additional booster
doses for adequate protection.
&
Prospective vaccination study in ME/CFS $plus.minus$ COVID history; antibody titre
monitoring pre/post vaccination; comparison with healthy controls.
Methods available; requires ME/CFS cohort with documented COVID status.
&
Ch.7 @sec:vaccination-mecfs \

%% ============================================================
%% DOMAIN 3 – NEUROLOGICAL
%% ============================================================
\small_*Domain 3: Neurological*_ \

Autoantibodies Causally Drive Neurological Dysfunction in Long COVID
(@hyp:guedesde-sa2024-autoab-neuro)
&
[H], [0.60],
&
Diverse autoantibodies against nervous system targets (pontine tissue, meninges,
spinal cord, sciatic nerve) identified in Long COVID; passive transfer to mice
reproduced neurological phenotypes.
Higher anti-pons and anti-meningeal titres in neurologically-prominent vs.\
fatigue-dominant patients; plasmapheresis/IVIG/rituximab appropriate in
autoantibody-positive subgroups.
&
Neurological symptom severity stratification; autoantibody arrays covering
nervous system proteome;
passive transfer validation in animal models; paired immunoadsorption trials.
&
Ch.8 @sec:bbb \

Maladaptive Sickness Behavior Program
(@hyp:maladaptive-sickness-behavior)
&
[H], [0.50],
&
(a) Fatigue correlates with inflammatory markers but not deconditioning metrics.
(b) Sickness behaviour scale exceeds equally deconditioned non-ME/CFS controls.
(c) Anti-inflammatory interventions reduce sickness behaviour and cytokines in
parallel.
(d) TPJ activation (fMRI) during effort-allocation tasks abnormal in ME/CFS.
&
Sickness Behaviour Scale + cytokine panel;
fMRI effort-allocation paradigm (used in Walitt 2024 NIH study);
tocilizumab proof-of-concept trial with parallel fatigue + SBS endpoints.
&
Ch.8 @sec:fatigue-mechanisms \

Glial Maturation Window and Pediatric Recovery
(@hyp:glial-maturation-window)
&
[H], [0.45],
&
(a) TSPO-PET shows declining microglial activation in recovering adolescents
but persistence in duration-matched adults.
(b) Recovery rates decline sharply at age 22–25, not gradually.
(c) CSF sCD14 and chitotriosidase normalise in recovering adolescents.
(d) CSF-1R expression elevated in adolescents vs.\ adults with same duration.
&
Age-stratified TSPO-PET; CSF inflammatory markers; CSF-1R ELISA;
5-year longitudinal cohort (adolescent vs.\ young-adult onset).
PET infrastructure at several ME/CFS centres; paediatric registries available.
&
Ch.8 @sec:glial \

Spike Protein Primes Brain Innate Immunity, Lowering the Neuroinflammatory Threshold
(@hyp:frank2024-s1-priming)
&
[H], [0.55],
&
(a) Prior S1 spike exposure sensitises brain innate immunity in rats,
producing sustained neuroinflammatory responses (MhcII$alpha$, Nlrp3, Tlr4 upregulation).
(b) Long COVID patients show elevated CSF neuroinflammation markers specifically
after minor intercurrent infections.
(c) Magnitude of neuroinflammatory response correlates with interval since primary
SARS-CoV-2 infection and residual S1 antigen burden.
(d) PEM frequency increases after intercurrent infections in proportion to S1 priming.
&
Rodent S1 priming model with LPS challenge (foundational);
CSF neuroinflammation markers (IL-1$beta$, IL-6, TNF-$alpha$) after experimental
respiratory challenge or natural intercurrent infection;
longitudinal symptom diary + CSF sampling post-infection;
TLR4 antagonist proof-of-concept trial (modelling TLR4 blockade).
&
Ch.8 @sec:bbb \

TRPM3 as Missing Link in Thermoregulation
(@hyp:trpm3-thermoregulation)
&
[H], [inf.],
&
(a) Sensory neuron TRPM3 current reduced in ME/CFS (not only immune cells).
(b) TRPM3 dysfunction severity correlates with temperature dysregulation score.
(c) Pregnenolone sulphate partially restores thermal perception.
&
Patch-clamp of iPSC-derived sensory neurons;
corneal confocal microscopy (non-invasive SFN/TRPM3 surrogate);
pregnenolone sulphate n-of-1 series with thermosensory threshold testing.
&
Ch.14h @sec:trpm3-hypotheses \

TRPM3 Dysfunction Upstream of Mitochondrial Failure
(@sec:trpm3-hypotheses)
&
[OQ], [—],
&
(a) TRPM3 dysfunction severity correlates with mitochondrial O#sub[2] flux
impairment ($r > 0.6$).
(b) Restoring TRPM3 function improves mitochondrial parameters.
(c) Mitochondrial therapies without TRPM3 restoration show only temporary benefit.
(d) Calcium imaging during stress shows abnormal transients in ME/CFS.
&
Seahorse XFe96 assay + TRPM3 current measurement in same PBMCs;
Fura-2 live-cell calcium imaging;
before/after pregnenolone sulphate.
Technically demanding; achievable in specialist laboratory.
&
Ch.14h @sec:trpm3-hypotheses \

Meningitis as Disproportionate Neurological Threat (Double Vulnerability)
(@spec:meningitis-double-vulnerability)
&
[S], [0.35],
&
(a) ME/CFS meningitis patients show worse Glasgow Outcome Scale at 6 months
vs.\ non-ME/CFS meningitis patients.
(b) Post-meningitis ME/CFS shows greater PET microglial activation than
either condition alone.
(c) CSF inflammatory markers disproportionately elevated relative to peripheral
burden during acute meningitis in ME/CFS.
(d) MCAS comorbidity predicts worse post-meningitis cognitive outcomes.
&
Retrospective chart review of ME/CFS patients who contracted meningitis
(rare events; registry-based identification needed);
prospective PET-MRI in post-meningitis ME/CFS vs.\ controls.
Methods available but events rare.
&
Ch.8 @sec:meningitis-bbb \

MCAS-Mediated Glymphatic Impairment via Dural Mast Cell Dysfunction
(@spec:mcas-glymphatic)
&
[S], [0.25],
&
(a) MCAS patients show impaired glymphatic clearance on diffusion-tensor
MRI compared to non-MCAS controls.
(b) Dural mast cell density or degranulation markers correlate with CSF
flow rates at ACE points in post-mortem studies.
(c) Mast cell stabilisers improve cognitive symptoms via glymphatic
rather than anti-inflammatory mechanisms.
&
Diffusion-tensor MRI glymphatic imaging in MCAS vs.\ non-MCAS ME/CFS;
post-mortem dural mast cell histology; mast cell stabiliser trials
with CSF biomarkers. Novel imaging techniques required; post-mortem
studies feasible.
&
Ch.8 @sec:glymphatic-meningitis \

%% ============================================================
%% DOMAIN 4 – ENDOCRINE / HPA
%% ============================================================
\small_*Domain 4: Endocrine / HPA Axis*_ \

Cytokine-Mediated Deiodinase Suppression
(@hyp:deiodinase-suppression)
&
[H], [inf.],
&
(a) IL-6 and TNF-$alpha$ inversely correlate with T3/T4 ratio in same patients.
(b) Anti-inflammatory treatment (LDN, PEA) increases T3/T4 ratio as cytokines fall.
(c) Direct T3 supplementation improves symptoms without reducing cytokines.
&
Paired cytokine panel + full thyroid panel (TSH, FT4, FT3, rT3, T3/T4) in
$n gt.eq 80$ cross-sectional cohort; longitudinal substudy during LDN trial.
Standard clinical laboratory; no new assays.
&
Ch.9 @sec:thyroid \

Clock Gene Dysregulation
(@hyp:clock-gene-dysregulation)
&
[H], [inf.],
&
(a) CLOCK, BMAL1, PER1/2/3 expression in PBMCs shows altered phase/amplitude.
(b) Flattened cortisol diurnal rhythm co-occurs with disrupted peripheral clock
oscillation.
(c) Melatonin or chronotherapy restoring clock phase also improves HPA rhythm.
&
Serial blood sampling (every 4 hours, 24 hours) for cortisol + clock gene
RT-qPCR; actigraphy; melatonin timing crossover trial.
Feasible in inpatient setting; chronobiology protocols published.
&
Ch.9 @sec:circadian \

Post-Viral Pituitary Injury as ME/CFS Trigger
(@hyp:postviral-pituitary)
&
[H], [0.50],
&
(a) A subgroup of post-viral ME/CFS patients shows impaired cortisol on ACTH
stimulation / ITT consistent with secondary AI.
(b) Pituitary MRI in this subgroup reveals structural abnormalities.
(c) This subgroup responds to physiological hydrocortisone ($lt.eq$10mg/day)
better than ME/CFS patients without pituitary injury.
(d) Prevalence of secondary AI correlates with viral tropism: higher after
SARS-CoV-1/2 (ACE2-expressing pituitary) than EBV or enterovirus triggers.
&
ACTH stimulation test or insulin tolerance test + pituitary MRI in post-COVID
ME/CFS cohort ($n gt.eq 50$) within 12 months of onset;
hydrocortisone replacement RCT stratified by ACTH response.
All tests available today; no new assays required.
&
Ch.9 @sec:postviral-pituitary \

%% ============================================================
%% DOMAIN 5 – GUT MICROBIOME
%% ============================================================
\small_*Domain 5: Gut Microbiome*_ \

Severity-Dependent Baseline Gut Permeability
(@hyp:severity-gut-permeability)
&
[H], [0.50],
&
(a) Plasma zonulin and LPS stratify: mild $<$ moderate $<$ severe.
(b) I-FABP chronically elevated at rest in severe patients (not only post-exercise).
(c) LPS fluctuations correlate with minimal daily activities (cognitive tasks,
postural changes) at 2–4-hour intervals.
(d) Wheat elimination produces gradual LPS baseline reduction over 12+ weeks in
severe patients.
&
Plasma zonulin, LPS, sCD14, I-FABP, anti-LPS IgA/IgM (commercial ELISAs);
severity stratification by SF-36 PF score;
wheat elimination crossover with serial biomarker sampling.
Bedbound patient recruitment requires home visits; logistically challenging
but feasible.
&
Ch.11 @sec:leaky-gut \

Gut Serotonin–Vagal–Cardiovascular Link
(@oq:gut-serotonin-vagal)
&
[OQ], [—],
&
(a) Peripheral plasma serotonin inversely correlates with POTS symptom severity.
(b) Probiotic restoration of butyrate producers increases vagal tone (HRV).
(c) 5-HT4 agonist (prucalopride) improves autonomic function in ME/CFS patients
with documented gut dysbiosis.
&
16S rRNA gut profiling + faecal SCFA + plasma serotonin + 24-hour HRV
in cross-sectional cohort; probiotic RCT with HRV primary endpoint.
Methods available; careful timing required for serotonin assay.
&
Ch.11 @sec:gut-brain-axis \

Wheat-Primed Exercise Intolerance
(@spec:wheat-primed-exercise)
&
[S], [0.35],
&
(a) Wheat elimination (4–6 weeks) reduces baseline PEM severity in affected
patients.
(b) Post-elimination wheat reintroduction triggers PEM exacerbation within
24–72 hours.
(c) Biomarkers (zonulin, LPS, I-FABP) normalize during wheat elimination in
responders.
&
Wheat elimination crossover with serial LPS, I-FABP, zonulin sampling;
double-blind gluten vs.\ fructan challenge (cf.\ Skodje 2018 design);
exercise tolerance measurement pre/post elimination.
Feasible but requires careful FODMAP control.
&
Ch.17 @sec:food-sensitivities-wheat \

Activity-Adjusted Meal Timing for Dysautonomic ME/CFS
(@hyp:postprandial-pacing)
&
[H], [0.50],
&
(a) Post-prandial rest (30–60 min supine) reduces symptom exacerbation in POTS
comorbid patients.
(b) Small frequent meals (5–6/day) reduce peak splanchnic demand and improve
orthostatic tolerance.
(c) Concurrent cognitive activity during meals worsens post-prandial symptoms
vs.\ passive eating.
&
Within-subjects crossover: meal timing/size protocol vs.\ habitual eating;
continuous HR/BP monitoring; orthostatic tolerance testing pre/post meals.
Standard equipment; feasible in outpatient or home setting.
&
Ch.17 @sec:food-sensitivities-wheat \

Oral Microbiome as Inflammatory Reservoir
(@oq:oral-microbiome)
&
[OQ], [---],
&
(a) Is periodontal disease prevalence elevated in ME/CFS vs.\ matched controls?
(b) Does oral microbiome composition differ in ME/CFS and correlate with systemic
inflammatory markers?
(c) Does periodontal treatment reduce CRP/IL-6 or improve symptoms?
(d) Severity gradient: do more severe patients show worse periodontal status?
&
Cross-sectional periodontal assessment (pocket depth, attachment loss, BOP)
+ oral 16S rRNA sequencing + systemic CRP/IL-6 in ME/CFS cohort vs.\ controls.
Interventional arm: periodontal SRP with 3--6 month inflammatory marker follow-up.
Standard periodontal methods; requires dental collaboration.
&
Ch.11 @sec:oral-microbiome \

Oral Dysbiosis--Disability Vicious Cycle
(@spec:oral-dysbiosis-cycle)
&
[S], [0.30],
&
(a) ME/CFS symptom severity correlates with periodontal disease markers after
controlling for age, smoking, diabetes.
(b) Assisted oral hygiene in severe patients reduces systemic CRP/IL-6 within 3--6 months.
(c) Periodontal treatment produces greater symptom improvement in ME/CFS patients
with comorbid periodontitis than those without.
&
Severity-stratified cross-sectional with periodontal assessment; oral hygiene
intervention trial in severe/very-severe patients (caregiver-delivered); pre/post
inflammatory markers.
Feasible but requires domiciliary dental services for severe patients.
&
Ch.11 @sec:oral-microbiome \

_P.\ gingivalis_--Autoimmunity Bridge
(@spec:oral-autoimmunity)
&
[S], [0.20],
&
(a) ME/CFS patients with GPCR autoantibodies show higher _P.\ gingivalis_
colonisation than autoantibody-negative patients.
(b) _P.\ gingivalis_ DNA/gingipains detectable in ME/CFS CSF at rates exceeding
healthy controls.
(c) Periodontal treatment in _P.\ gingivalis_-positive ME/CFS patients reduces GPCR
autoantibody titres over 6--12 months.
(d) Monocytes from periodontitis-positive ME/CFS patients show trained immunity
epigenetic signatures.
&
Oral _P.\ gingivalis_ PCR + serum GPCR autoantibody panel in cross-sectional cohort;
CSF gingipain assay in subset; monocyte stimulation assay with epigenetic profiling.
Requires specialised immunology and periodontal labs; CSF collection limits feasibility.
&
Ch.14 @sec:oral-autoimmunity-bridge \

%% ============================================================
%% DOMAIN 6 – GENETICS / EPIGENETICS
%% ============================================================
\small_*Domain 6: Genetics and Epigenetics*_ \

Epigenetic Basis of T-Cell Exhaustion
(@hyp:epigenetic-tcell-exhaustion)
&
[H], [inf.],
&
(a) T-cells show closed chromatin at IFN-$gamma$ and TNF-$alpha$ loci;
elevated H3K27me3 at effector genes.
(b) PD-1, TIM-3, LAG-3 correlate with disease duration.
(c) Epigenetic exhaustion score correlates with NK cytotoxicity and symptom severity.
(d) Low-dose HDAC inhibitors partially reverse exhaustion signatures _in vitro_.
&
ATAC-seq and CUT&RUN on sorted T-cell populations;
PD-1/TIM-3/LAG-3 flow cytometry;
disease-duration stratification.
Methods established in cancer immunology; specialist genomics core required;
$n gt.eq 40$ per group.
&
Ch.12 @sec:chromatin \

MicroRNA Biomarker Panels
(@pred:mirna-biomarker)
&
[P], [inf.],
&
A panel of 5–10 miRNAs achieves $>$80% sensitivity and $>$80% specificity
for ME/CFS vs.\ fibromyalgia, depression, and primary sleep disorders.
Candidates: miR-21, miR-146a, miR-155.
&
miRNA profiling (NanoString or small-RNA-seq) in replication cohort
($n gt.eq 100$ ME/CFS, $n gt.eq 50$ each comparator);
ROC analysis; independent validation cohort.
Commercially available platforms; moderate cost.
&
Ch.12 @sec:micrornas \

%% ============================================================
%% DOMAIN 7 – CARDIOVASCULAR / AUTONOMIC
%% ============================================================
\small_*Domain 7: Cardiovascular and Autonomic*_ \

Motor-Autonomic Coordination Overload
(@hyp:motor-autonomic-coordination)
&
[H], [0.55],
&
(a) ME/CFS patients show greater cognitive impairment during physical activity
than controls (dual-task paradigm).
(b) Inverse relationship between motor performance and HRV during exercise
(autonomic-motor trade-off).
(c) Seated fine motor tasks and passive tilt each less impaired than combined
motor-autonomic challenges.
(d) Pre-treatment with midodrine or pyridostigmine improves exercise tolerance
by offloading CNS autonomic demand.
&
Dual-task treadmill + cognitive battery; simultaneous HRV + force output;
passive tilt vs.\ active exercise within-subjects;
midodrine vs.\ placebo crossover with CPET.
Standard equipment; cardiology/exercise physiology lab needed;
$n approx 30$ per arm (crossover design).
&
Ch.10 @sec:exercise-intolerance \

Immune Complex–Endothelial Injury as Central Vascular Mechanism
(@spec:igg-endothelial-central)
&
[S], [0.35],
&
(a) Immunoadsorption that removes pathogenic IgG should improve flow-mediated
dilation within weeks.
(b) Endothelial or skin punch biopsy should show IgG/complement deposition in
ME/CFS microvasculature.
(c) Patients whose IgG induces greater mitochondrial fragmentation in vitro
should have worse EndoPAT scores.
&
FMD before/after immunoadsorption; immunofluorescence staining of skin biopsies
for IgG and C3/C4 deposition; paired in-vitro IgG–HUVEC fragmentation assay +
EndoPAT in same patients.
Standard immunology and vascular physiology equipment; $n gt.eq 20$ for
correlation analysis.
&
Ch.10 @sec:igg-endothelial \

%% ============================================================
%% DOMAIN 8 – INTEGRATIVE / MULTI-SYSTEM
%% ============================================================
\small_*Domain 8: Integrative and Multi-System*_ \

Long COVID as Stage 1–2 ME/CFS
&
[H], [inf.],
&
(a) Long COVID at 6–12 months shows 1–2 active pathophysiological cycles vs.\
3–5 in established ME/CFS (biomarker-quantified).
(b) Long COVID patients meeting ME/CFS criteria at 24+ months are biologically
indistinguishable from duration-matched ME/CFS.
(c) Early aggressive multi-target intervention halves 5-year ME/CFS progression.
&
Pragmatic RCT: intensive multi-target treatment vs.\ enhanced usual care
in Long COVID 6–18 months post-infection;
primary endpoint = ME/CFS diagnosis at 5 years;
$n approx 400$ (80% power for 50% reduction).
Secondary: CPET, cytokine panel, GPCR autoantibody, neuroimaging.
Long COVID cohorts exist; design in Ch.13.
&
Ch.13 @subsubsec:long-covid-cycle-dynamics \

_— V6 additions (March 2026) —_\

Lymphocyte Reservoir Ratchet
(@hyp:lymphocyte-reservoir-ratchet)
[], [H], [0.35],
(a) scRNA-seq of ME/CFS PBMCs detects viral transcripts in $<$1% lymphocytes.
(b) Virus-positive fraction correlates with severity.
(c) In vitro lymphocyte activation releases viral antigen.
(d) Recovery = clearance; non-recovery = persistence.
&
10x Genomics scRNA-seq on PBMCs (available); MERFISH spatial transcriptomics;
requires post-COVID ME/CFS cohort with matched controls.
Comparative data from FIP model @Kol2026fipv.
&
Ch.7 @sec:viral \

Immune Cell Energy Starvation Creates Viral Persistence Niche
(@hyp:immune-energy-starvation-niche)
[], [H], [0.40],
(a) Metabolic supplementation in vitro restores ME/CFS NK cell killing.
(b) Antiviral + metabolic support $\>$ antiviral alone for viral clearance.
(c) T cell metabolic impairment inversely correlates with clearance.
(d) Worst NK bioenergetics = highest viral antigen persistence.
&
Seahorse metabolic flux (available); NK killing assays (available);
D-ribose/CoQ10/MitoQ supplementation in vitro.
Clinical trial: antiviral $plus.minus$ metabolic support.
&
Ch.6 \

Post-Viral Methyl-Group Depletion as a ME/CFS Onset Mechanism
(@spec:methyl-assault-onset)
&
[S], [0.25],
&
(a) Elevated CSF homocysteine should be detectable acutely and persist chronically post-viral.
(b) Serum and CSF SAM reduced in long-COVID/ME/CFS vs.\ controls.
(c) Early B12/methylfolate post-viral illness reduces ME/CFS onset risk (preventive trial).
&
Prospective biomarker studies in post-viral cohorts (CSF homocysteine, SAM, B12, methylfolate);
preventive supplementation trial design. Invasive CSF sampling required.
&
Ch.14e (@spec:methyl-assault-onset) \

Deconditioning Narrative as Iatrogenic Harm Multiplier
(@hyp:deconditioning-iatrogenic)
[], [H], [0.50],
(a) Deconditioning-managed patients show greater 5-yr decline.
(b) Time-to-diagnosis longer under deconditioning paradigm.
(c) Higher mild$\to$severe progression in GET vs.\ pacing cohorts.
(d) Regional GET rates correlate with severe ME/CFS prevalence.
&
Retrospective cohort study using medical records;
regional prescription rate analysis (UK pre/post 2021);
patient registry data (e.g., UK ME/CFS Biobank).
&
Ch.24 @sec:deconditioning-hypothesis \

hEDS Lymph Node Architecture as ME/CFS Susceptibility Factor
(@spec:heds-lymphnode-architecture)
[], [S], [0.25],
(a) hEDS lymph node biopsies show altered FRC network density.
(b) Imaging reveals structural lymph node differences in hEDS.
(c) Post-COVID hEDS patients have higher lymphoid viral persistence.
(d) Immune cells on hEDS-ECM scaffolds show reduced viral clearance.
&
Lymph node FNA + histology; contrast-enhanced US or MR lymphangiography;
in vitro ECM scaffold assays.
Requires hEDS cohort with post-COVID ME/CFS subset.
&
Ch.14d \

Sports Medicine Paradigm Shift as Natural Experiment
(@oq:paradigm-shift-natural-experiment)
[], [OQ], [—],
(a) Do GET prescription rates decline after BJSM 2026 publication?
(b) Source journal authority affects practice change speed?
(c) What is the half-life of iatrogenic practice change?
(d) Regional outcomes improve after guideline changes?
&
Administrative prescribing data; patient registry outcomes;
interrupted time-series analysis at guideline change dates.
&
Ch.24 @sec:deconditioning-hypothesis \

Viral RNA in Circulating Lymphocytes as Biomarker
(@oq:viral-rna-lymphocyte-biomarker)
[], [OQ], [—],
(a) Minimum virus-positive lymphocyte fraction for immune activation?
(b) Viral species specificity or generic mechanism?
(c) Can biomarker distinguish viral from non-viral ME/CFS subgroups?
(d) Current single-cell platform sensitivity sufficient?
&
10x Genomics scRNA-seq; MERFISH; digital PCR on sorted lymphocyte subsets.
Requires multi-pathogen ME/CFS cohort.
&
Ch.22 @sec:animal-models \

Temporal Mapping: Deconditioning to Pathology Transition
(@oq:deconditioning-pathology-transition)
[], [OQ], [—],
(a) Serial biopsy: when do reversible fibre shifts become irreversible?
(b) CPET trajectory over 24 months distinguishes deconditioning from pathology?
(c) Long-duration patients show qualitatively different tissue changes?
&
Serial muscle biopsy + two-day CPET at 0, 6, 12, 24 months;
newly diagnosed vs.\ $\>$5-year cohort comparison.
Invasive; requires ethics approval and willing participants.
&
Ch.22 \

Three-Field Convergence Against Deconditioning
(@key:deconditioning-convergence)
[], [—], [—],
N/A (synthesis keypoint, not testable hypothesis).
Documents convergence from exercise physiology, clinical guidelines,
and comparative virology against the deconditioning model.
&
Narrative synthesis of existing evidence streams.
&
Ch.13 \

FIP as ME/CFS Comparative Model
[], [—], [—],
(a) Longitudinal immune profiling of FIP-recovered cats.
(b) Activity monitoring for PEM analogue in cats.
(c) Immune cell metabolomics: virus-positive vs.\ cleared cats.
(d) Combined antiviral + metabolic support intervention testing.
&
Veterinary research infrastructure;
GS-441524-treated cat cohorts exist at UC Davis.
Seahorse analysis, accelerometry, scRNA-seq all applicable.
&
Ch.22 @sec:animal-models \

Neutrophil Functional Exhaustion
(@hyp:neutrophil-exhaustion)
[], [H], [0.40],
(a) Ex vivo PMA/fMLP stimulation of ME/CFS neutrophils shows attenuated degranulation and ROS vs.\ controls despite normal counts.
(b) Intracellular flow cytometry reveals depleted granule protein content.
(c) Recovery (e.g., daratumumab responders) normalizes circulating neutrophil granule proteins.
(d) G-CSF priming restores innate defense markers.
&
Functional neutrophil assays (degranulation, ROS);
intracellular flow cytometry for granule content;
paired sampling pre/post treatment in daratumumab or IA trials.
$n approx 30$ pairs minimum.
&
Ch.13 (@hyp:neutrophil-exhaustion) \

Chronic Exerkine Signaling
(@hyp:chronic-exerkine)
[], [H], [0.45],
(a) FGF-21 and GDF-15 correlate with disease severity and PEM threshold.
(b) Successful treatment normalizes exerkine levels.
(c) ME/CFS patients show blunted additional exerkine response to exercise (ceiling effect).
(d) Metabotype 2 patients have lowest exercise tolerance.
&
ELISA panels (FGF-21, GDF-15, leptin, resistin) in graded cohort;
exercise challenge with serial exerkine sampling;
correlation with CPET parameters.
Hoel 2026 extended cohort (n=278) available for validation.
&
Ch.13 (@hyp:chronic-exerkine) \

Secretome-Driven Vascular Autoimmune Loop
(@spec:secretome-autoimmune)
[], [S], [0.25],
(a) ME/CFS serum proteins show elevated citrullination/oxidative modifications.
(b) Autoantibodies against modified vascular proteins detectable in subset.
(c) Autoimmune subset (daratumumab responders) shows strongest secretome shift.
&
Mass spectrometry PTM analysis of ME/CFS vs.\ HC serum;
autoantibody arrays targeting citrullinated/oxidized endothelial proteins;
paired proteomic + autoantibody profiling in treatment responder studies.
&
Ch.13 (@spec:secretome-autoimmune) \

Bone Marrow Stress and Immune Lineage Reprogramming
(@spec:bone-marrow-reprogramming)
[], [S], [0.20],
(a) Bone marrow biopsy shows altered myeloid:lymphoid progenitor ratios.
(b) HSCs show inflammatory epigenetic reprogramming marks.
(c) Bone marrow protein signature improves with immunomodulation.
&
Bone marrow aspirate with flow cytometry lineage analysis;
ATAC-seq/ChIP-seq of hematopoietic progenitors;
highly invasive — likely requires ancillary study within existing treatment trials.
&
Ch.13 (@spec:bone-marrow-reprogramming) \

%% ============================================================
%% DOMAIN – MATHEMATICAL MODELING (Part V)
%% ============================================================
\small_*Domain: Mathematical Modeling (Part V)*_ \

ATP Threshold Model of PEM
&
[H], [0.45],
&
(a) PEM severity correlates with depth/duration of ATP depletion below threshold.
(b) Metabolic substrate provision raises threshold and reduces PEM susceptibility.
(c) Threshold is individually variable, explaining inter-patient exercise tolerance differences.
&
Two-day CPET with intracellular ATP measurement (muscle biopsy or #super[31]P-MRS);
metabolic substrate supplementation trials with PEM as endpoint.
Feasible with existing methods.
&
Ch.@ch:energy-metabolism-models \

Supercompensation Failure as Mechanistic Basis of Exercise Intolerance
&
[H], [0.50],
&
(a) mtDNA copy number decreases 72h post-exercise in ME/CFS but increases in controls.
(b) PGC-1$alpha$ target genes fail to upregulate post-exercise despite adequate AMPK activation (NAD#super[+] bottleneck).
(c) NAD#super[+] precursor supplementation partially restores supercompensation before improving exercise tolerance.
(d) Repeated bout effect (DOMS attenuation) absent or inverted in ME/CFS.
&
Two-day CPET with serial mtDNA quantification and PGC-1$alpha$ expression at 24, 48, 72h;
NR supplementation trial with pre/post mtDNA and CPET endpoints.
Feasible with existing methods.
&
Ch.@ch:energy-metabolism-models \

Bistability of the Energy–Immune Cycle
&
[H], [0.50],
&
(a) Disease onset requires perturbation exceeding threshold severity, not specific pathogen.
(b) Spontaneous recovery is rare because disease attractor is stable.
(c) Effective treatment must be sustained long enough to shift system past separatrix.
&
Longitudinal measurement of immune and metabolic variables to map state-space trajectory;
intervention washout studies to test attractor stability.
Requires multi-month longitudinal cohorts.
&
Ch.@ch:integrated-systems \

Adenosine–ATP Coupling as Unrefreshing Sleep Mechanism
&
[H], [0.35],
&
(a) Sleep pressure builds faster in ME/CFS than controls for equivalent activity.
(b) Improving mitochondrial function improves sleep quality independent of sleep-targeted interventions.
(c) Glymphatic function markers correlate with unrefreshing sleep severity.
&
Adenosine microdialysis (invasive); #super[31]P-MRS during sleep;
MRI-based glymphatic imaging; mitochondrial supplement trials with sleep quality endpoints.
Most methods available; brain adenosine measurement challenging.
&
Ch.@ch:neuroendocrine-models \

Validation Standards for ME/CFS Models
&
[OQ], [—],
&
What constitutes sufficient validation for computational ME/CFS models?
Analogous to FDA PBPK guidance but for emergent phenomena lacking molecular definitions.
&
Consensus process among modelers, clinicians, and regulators needed.
&
Ch.@ch:modeling-foundations \

Autoantibody Subtypes and Clinical Response
&
[OQ], [—],
&
Do different autoantibody specificities ($beta_2$-adrenergic, muscarinic) contribute independently to distinct symptom domains?
Requires antigen-specific modeling.
&
Multiplexed autoantibody assays with symptom domain correlation analysis.
&
Ch.@ch:immune-system-models \

Emergent Cycling Behavior
&
[OQ], [—],
&
Does the coupled 42-variable model produce endogenous limit cycle oscillations (symptom cycling) without external perturbation?
&
Numerical bifurcation analysis (continuation, Hopf detection) of the full integrated model.
Computationally feasible.
&
Ch.@ch:integrated-systems \

Digital Twins for ME/CFS
&
[OQ], [—],
&
Can patient-specific computational models be maintained and updated with real-time wearable/biomarker data for adaptive pacing and treatment optimization?
&
Feasibility study: real-time model fitting with sensor integration and uncertainty quantification.
Analogous systems under development for cardiac care and diabetes.
&
Ch.@ch:predictive-applications \

%% ============================================================
%% DOMAIN 10 – EVOLUTIONARY MEDICINE
%% ============================================================
\small_*Domain 10: Evolutionary Medicine*_ \

Preserved Emergency Override with Broken Restoration
(@spec:evolutionary-deferred-cost)
&
[S], [0.25],
&
(a) Adrenergic reserve inversely correlated with disease severity and duration.
(b) Functional window during exertion predicts crash severity.
(c) $beta$-blockade during exertion attenuates subsequent crash magnitude.
(d) Very severe patients show blunted catecholamine response to acute stressors.
&
Adrenergic stimulation testing; wearable-based exertion/crash correlation studies;
$beta$-blocker crossover trial; plasma epinephrine during orthostatic/cognitive challenge.
All methods available today.
&
Ch.@ch:speculative-hypotheses,
@sec:evolutionary-deferred-cost \

*Speculation* &
Pyridostigmine Immunomodulation in ME/CFS &
@spec:pyridostigmine-immunomod &
0.25 &
Cholinergic anti-inflammatory pathway (vagal ACh on $alpha$7 nAChR) may provide
dual autonomic + immune benefit in ME/CFS, as suggested by mortality reduction
without cytokine changes in COVID-19 RCT. &
ME/CFS patients on chronic pyridostigmine show improved HRV correlating with
reduced tissue-level neuroinflammation (e.g., PET-detected) without serum
cytokine changes. &
Ch.@ch:medications-mechanisms,
@sec:pyridostigmine \

Phase-Dependent Appetite Model
&
[S], [0.35],
&
Prospective dietary tracking across disease phases shows consistent relationship
between disease severity and appetite suppression;
acute/PEM phases show greater appetite loss than stable phases.
&
Prospective food diary studies with phase classification;
cytokine co-measurement during appetite episodes;
comparison of eating patterns during PEM vs.\ remission.
&
Ch.@ch:endocrine,
@sec:insulin-glucose,
`spec:appetite-phases` \

Exercise Adaptation for ME/CFS Comorbidities
(@oq:comorbidity-exercise)
[], [OQ], [—],
(a) Does CPET-guided sub-anaerobic exercise improve glycaemic control in
ME/CFS patients with type 2 diabetes without triggering PEM?
(b) Can isometric resistance protocols stabilise hEDS joints without worsening
ME/CFS severity?
(c) Do non-exercise interventions for depression (ACT, pharmacotherapy) achieve
equivalent outcomes to exercise-based approaches in PEM-positive patients?
&
Dual-diagnosis RCTs: ME/CFS + T2D, ME/CFS + hEDS, ME/CFS + depression.
Two-day CPET to set individual activity ceilings; PEM diaries as safety
outcome. Multi-site recruitment essential given dual-diagnosis rarity.
&
Ch.@ch:lifestyle
@sec:comorbidity-exercise-conflict \

Food-Triggered Non-IgE Mast Cell Activation in ME/CFS
(@hyp:food-mast-cell-mecfs)
[], [H], [0.40],
In ME/CFS patients with comorbid MCAS ($tilde$17–25%), food triggers mast cell
degranulation through non-IgE pathways (MRGPRX2, complement C3a/C5a, lectin–IgE
glycan cross-linking) undetected by standard allergy testing. Resulting mediator
release contributes to post-meal fatigue, brain fog, tachycardia, and GI distress.
Amplified by intestinal barrier dysfunction and reduced SCFA inhibition.
&
Prospective paired urinary mediator (NMH, LTE4, PGD#sub[2] metabolite) measurement
before/after controlled food challenges in ME/CFS patients with negative allergy
testing. MRGPRX2 expression on intestinal mast cells via biopsy immunohistochemistry.
Correlation of gut permeability markers (LBP, zonulin) with food-triggered mediator
elevations.
&
Ch.14 @subsec:food-mast-cell; Ch.19 @subsec:mcas-treatment;
Ch.20 @subsec:mast-cell-biomarkers \

PEM Partially Mediated by Food–Exercise Mast Cell Co-Triggering
(@spec:pem-food-mast)
[], [S], [0.25],
Exercise releases substance P activating mast cells via MRGPRX2; prior food-triggered
mast cell priming lowers the exertion threshold for PEM—analogous to food-dependent
exercise-induced anaphylaxis operating at subthreshold levels. Meals consumed close
to physical activity could worsen PEM in MCAS+ME/CFS patients.
&
Compare PEM severity after fasted vs.\ fed exercise in MCAS+ME/CFS patients.
Measure urinary mediators post-exercise in fed vs.\ fasted state. Pre-treat with
mast cell stabilizers before food+exercise challenges.
&
Ch.14 @subsec:food-mast-cell \

rTMS as Neuromodulatory Intervention for ME/CFS Motor and Autonomic Dysfunction
(@spec:tms-mecfs)
[], [S], [0.30],
Dual-target iTBS (DLPFC + M1) addresses objectively demonstrated motor cortex
hypoexcitability and may improve orthostatic intolerance and disequilibrium.
Sham-controlled trial should show effect sizes $gt.eq$SMD 0.35 (fibromyalgia benchmark).
If sham-controlled effects absent, attribute open-label results to placebo/expectancy.
&
Sham-controlled RCT of dual-target iTBS in ME/CFS, stratified by OI severity.
Primary endpoints: tilt-table tolerance, disequilibrium resolution. No registered
trial exists. Fibromyalgia meta-analyses confirm effects survive sham control for
pain (11 RCTs, $n=303$) and QoL (18 RCTs, $n=643$).
&
Ch.18 @subsubsec:tms-mecfs \

)
*/

=== Full Harvest Statistics

The complete document contains approximately *321 environments* of the
four harvested types (updated 2026-03-07):

  - *Hypothesis:* $approx 136$ — Ch.9, 13, 14j, 18, 27, 29, 30 most dense.
  - *Speculation:* $approx 76$ — Ch.14a–i, 14d, 15–19 most dense.
  - *Prediction:* $approx 10$ — Ch.12 and Ch.14j primarily.
  - *Open Question:* $approx 97$ — Ch.14a–h, 14d, 14e, 14g, 14h, 22, 26, 28, 30, 32 most dense.
  - *Keypoint:* 1 new (convergence argument, Ch.13).

Selection criteria for the 42 table entries: (1) mechanism domain coverage;
(2) actionability with existing methods; (3) clinical impact if resolved;
(4) cross-chapter linkage to existing study designs in Ch.@ch:proposed-studies.

Entries excluded from the table but meriting future registries:
brainstorm-level speculations in Ch.14i without testable predictions;
redundant entries superseded elsewhere; cross-disease open questions in Ch.14d
requiring expertise outside ME/CFS scope.
