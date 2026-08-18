#import "../../../../shared/environments.typ": *


The integrated model (Chapter @ch:integrated-systems) and global sensitivity analysis (Section @sec:sensitivity-drug-targets) identify several distinct _causal primary mechanisms_ in ME/CFS, each sustained by its own positive feedback loop and accessible to a different intervention class. This section synthesizes these mechanisms into a single map: what each loop does, how to detect it, what targets it, and on which of the three recovery timescales (Table @tab:three-recovery-timescales) the intervention acts.

Three principles frame the map:

(1) *Mechanisms are loops, not deficits.* Every entry describes a self-sustaining feedback circuit rather than a static abnormality. The disease attractor (Section @sec:hysteresis-analysis) emerges from the simultaneous engagement of multiple loops; recovery requires shrinking or breaking enough of them that the attractor disappears.

(2) *Evidence tiers vary widely.* Some interventions have RCT evidence (LDN, low-dose hydrocortisone, fludrocortisone); some have mechanistic rationale and case-series support (CoQ10, nattokinase, cromolyn); others are research-stage only (BC007, daratumumab, gene therapy). Each row of the table specifies tier explicitly. _Mechanistic rationale is not clinical recommendation_ --- the warnings in Chapters @ch:urgent-action-severe and @ch:medications-mechanisms apply.

(3) *Patients differ in which loops dominate.* Sensitivity analysis predicts subtype-specific bottlenecks (Section @sec:treatment-optimization): the same parameter ($alpha_upright("CI")$) is the dominant target in metabolic-dominant patients ($S_T approx 0.35$) but nearly irrelevant in immune-dominant patients ($S_T approx 0.04$). The map informs _which loops to interrogate first_ for a given patient phenotype, not which interventions to apply universally.

=== Master Map

#figure(
  table(
    columns: (1.6fr, 1fr, 1.4fr, 1.6fr, 0.8fr),
    align: (left, left, left, left, left),
    stroke: 0.5pt,
    table.header(
      [*Mechanism*], [*Driver parameter*], [*Sustaining loop (one line)*], [*Targeting interventions (evidence tier)*], [*Timescale*]
    ),
    [Complex I deficit], [$alpha_upright("CI")$], [ETC failure $arrow.r$ ROS $arrow.r$ further ETC damage], [CoQ10/ubiquinol (M); methylene blue (R); NR/NMN (M); riboflavin (M)], [Medium--Slow],
    [MCAS], [$K_upright("MC")$], [Mast cell mediator release $arrow.r$ tissue inflammation $arrow.r$ MC sensitization], [H1 + H2 antihistamines (E); cromolyn (E); LTRAs (E); ketotifen (M); xolair (R)], [Fast--Medium],
    [GPCR autoantibodies], [Autoantibody titre], [Autoantibody $arrow.r$ receptor dysregulation $arrow.r$ vascular/autonomic failure $arrow.r$ ongoing immune activation], [Immunoadsorption (R, mixed RCTs); IVIG (M); efgartigimod, daratumumab, BC007 (R)], [Medium],
    [Microclots / fibrinaloid amyloid], [$beta_upright("epoxy")$], [Fibrin amyloid $arrow.r$ microvascular blockage $arrow.r$ tissue hypoxia $arrow.r$ oxidative stress $arrow.r$ more clotting], [Triple anticoagulation (R); nattokinase (M); lumbrokinase (M)], [Medium],
    [Autonomic / OI / POTS], [$G_upright("baro")$, $V_upright("blood")$], [Reduced blood volume $arrow.r$ cerebral hypoperfusion $arrow.r$ orthostatic stress $arrow.r$ sympathetic overdrive], [Fludrocortisone (E); midodrine (E); ivabradine (E); pyridostigmine (E); compression + salt (E)], [Fast],
    [HPA / cortisol dysregulation], [$n_F$], [Low cortisol $arrow.r$ unrestrained inflammation $arrow.r$ energy drain $arrow.r$ further HPA suppression], [Low-dose hydrocortisone 5--15 mg (E); DHEA (M); circadian protocol (M)], [Medium],
    [Immune exhaustion / chronic activation], [$k_upright("exh")$], [Persistent low-grade activation $arrow.r$ T cell exhaustion $arrow.r$ poor pathogen control $arrow.r$ sustained activation], [LDN (E); rintatolimod (R); mycophenolate (R); inebilizumab (R)], [Medium],
    [BBB hyperpermeability], [$P_0$], [Peripheral inflammation $arrow.r$ BBB leak $arrow.r$ neuroinflammation $arrow.r$ autonomic dysreg $arrow.r$ more peripheral stress], [PEA (M); luteolin (M); low-dose aripiprazole (R); minocycline (R)], [Medium],
    [Neuroinflammation / microglial priming], [$M_a$], [Microglial activation $arrow.r$ cytokine release $arrow.r$ behavioral/cognitive symptoms], [LDN (E); low-dose aripiprazole (R); intranasal insulin (R); dextromethorphan (R)], [Medium],
    [BH4 depletion], [$["BH4"]$], [Inflammation $arrow.r$ BH4 oxidation $arrow.r$ catecholamine deficit + iNOS uncoupling $arrow.r$ more ROS], [Sapropterin (R); folinic acid (M); 5-MTHF (M)], [Medium],
    [Viral persistence / EBV reactivation], [$V(t)$], [Viral replication $arrow.r$ chronic immune drain $arrow.r$ energy exhaustion], [Valacyclovir, valganciclovir (M, Lerner); EBV-targeted (R)], [Medium--Slow],
    [Gut dysbiosis / SIBO / motility], [$cal(G)_upright("set")$, $B_upright("SI")$], [Vagal impairment $arrow.r$ SIBO $arrow.r$ endotoxin $arrow.r$ systemic inflammation $arrow.r$ more vagal impairment], [Rifaximin (E); prucalopride (E); low-FODMAP (M); butyrate, PHGG (M)], [Medium],
    [TRP channelopathy], [TRPM3, TRPM7 activity], [Calcium dysregulation $arrow.r$ NK/immune dysfunction + smooth muscle issues], [LDN (TRPM3 partial, M); naltrexone (M); MDC002 (R); magnesium (M)], [Medium],
    [Glymphatic / sleep failure], [Glymphatic flux], [Sleep disruption $arrow.r$ glymphatic failure $arrow.r$ protein accumulation $arrow.r$ neuroinflammation $arrow.r$ more sleep disruption], [Trazodone (M, glymphatic-friendly); glycine (M); avoid Z-drugs (M); orexin caution (M)], [Medium--Slow],
    [hEDS connective tissue coupling], [$kappa$], [Vascular laxity $arrow.r$ venous pooling $arrow.r$ sympathetic compensation $arrow.r$ energy tax], [Compression garments (E); supine work (E); ivabradine, beta-blockers (E)], [Fast],
    [NAD#super[+] / redox imbalance], [$gamma$], [NAD#super[+] depletion $arrow.r$ SIRT inactivation $arrow.r$ biogenesis block $arrow.r$ metabolic inflexibility], [NR, NMN (M); niacinamide (M); NAD#super[+] IV (R); NAD#super[+]-sparing lifestyle (M)], [Medium--Slow],
  ),
  caption: [Primary mechanism map for ME/CFS. Evidence tiers: *E* = Established (RCT or strong clinical evidence); *M* = Moderate (mechanistic rationale + case-series or observational support); *R* = Research-stage (preclinical, early-phase, or experimental). Timescales reference Table @tab:three-recovery-timescales: _Fast_ = hours to weeks (within-envelope), _Medium_ = weeks to months (damage-rate reduction), _Slow_ = months to years (ceiling restoration). Most interventions act on Medium timescale because they reduce ongoing damage or modulate immune set-points without immediately restoring structural deficits.],
) <tab:primary-mechanism-map>

=== Mechanisms with No Established Targeted Therapy

The following primary mechanisms have model-derived rationale but no established targeted therapy --- they represent the highest-leverage research gaps:

  - *Cell Danger Response (CDR) persistence.* Naviaux's CDR framework posits that ME/CFS represents a failure to complete the salugenesis (recovery) phase after danger response. No specific Tx; suramin trials in autism showed transient effects but ME/CFS RCT not done.

  - *Itaconate / aconitase block.* TCA cycle interruption at step 2; metabolomic signatures consistent (Yamano 2016, Ciregia 2016) but no targeted intervention exists. Theoretical: itaconate antagonists (none developed for ME/CFS).

  - *Sphingolipid / ceramide accumulation.* Multiple metabolomic studies report altered sphingolipid profiles. No targeted Tx; speculative interventions include myriocin (preclinical only) and dietary ceramide reduction (no evidence).

  - *Lactate / GPR81 bistability.* Section @sec:lactate-kinetics predicts a metabolic bistable state below $alpha_upright("CI") < 0.65$ where the lactate $arrow.r$ GPR81 $arrow.r$ FFA suppression loop locks glycolytic dominance. Theoretical Tx: medium-chain triglycerides (CPT-I bypass) and GPR81 antagonists (none clinical-grade).

  - *WASF3 supercomplex disruption.* Wang/Hwang 2023 identified WASF3 over-expression disrupting mitochondrial supercomplex assembly. No targeted Tx; potential CRISPR or small-molecule WASF3 modulators are research-stage only.

These five mechanisms are flagged as *Research Priority* in Chapter @ch:proposed-studies and represent first-in-class therapeutic opportunities if targeted molecules can be developed and validated.

=== Why Single-Target Trials Underperform: The Multi-Loop Attractor

Network controllability analysis (Section @sec:network-controllability) predicts that the ME/CFS system requires _at least 4--6 independent driver nodes_ for full structural controllability. This is a property of the network topology --- independent of parameter values --- and provides a mathematical explanation for why monotherapy trials in ME/CFS have consistently shown small average effect sizes even for treatments that produce dramatic responses in individual patients.
