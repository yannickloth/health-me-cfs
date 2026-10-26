#import "../../../../shared/environments.typ": *

=== Trial-Level Null Dissociation: The STIMULATE-ICP Four-Arm Result <sec:trial-level-null-dissociation>

The rest of this section reads nulls at the level of a single patient: one person takes one drug, nothing changes, and we ask which mechanism that eliminates. A trial-level null is a different object. It tests one hypothesis across hundreds of people, against a control group, on a pre-specified endpoint. Its null does not tell us which mechanism is broken in *your* body. It tells us whether a mechanism was broken often enough, and uniformly enough, that fixing it moved the group average. The STIMULATE-ICP trial is the first large test of three mechanistically distinct post-COVID treatments --- anticoagulant, anti-inflammatory, and mast-cell/histamine --- run side by side against a no-drug control. What it returned is a dissociation: one arm clearly null, two arms nominally positive, and all of it small enough to sit inside the trial's own non-specific improvement @StimulateICP2026rivaroxaban.

==== The Design Fact That Dominates the Result

STIMULATE-ICP was a Phase 3, four-group, open-label, randomised, adaptive platform trial in 778~adults with the post-COVID-19 condition, none of whom had been hospitalised with COVID-19, across 12~UK specialist clinics @StimulateICP2026rivaroxaban. The four arms were colchicine 500~µg twice daily ($n = 192$), rivaroxaban 10~mg once daily ($n = 197$), famotidine 40~mg plus loratadine 10~mg once daily ($n = 193$), and no drug (usual care only, $n = 196$). Treatment ran for 12~weeks. The primary endpoint was the 12-week Fatigue Assessment Scale (FAS), which ranges 10--50, where roughly a 10% change (about 4~points) is the trial's threshold for clinical meaningfulness.

The result that dominates everything else is this: *every* arm improved, including the no-drug arm. The mean FAS score fell 4.3~points, from 36.8 (SD 7.49) at baseline to 32.5 (SD 9.13) at 12~weeks. A 4.3-point non-specific improvement --- one that happens to people who receive no drug at all --- is the floor against which every drug arm must be measured. The adjusted differences versus no drug were colchicine $-1.49$ points (95% confidence interval $-2.92$ to $-0.06$, $p = 0.041$), famotidine-loratadine $-1.48$ ($-2.88$ to $-0.08$, $p = 0.038$), and rivaroxaban $-1.06$ ($-2.47$ to $0.35$, $p = 0.139$). In plain terms: the best any drug did was to add about 1.5~points of improvement on top of the 4.3~points that happened anyway. That 1.5 points is statistically detectable --- the confidence intervals for colchicine and famotidine-loratadine barely exclude zero --- but it is well below the trial's own 4-point threshold for what counts as clinically meaningful. Both statements are true at once: the differences are statistically real and too small to matter to a patient.

==== What the Rivaroxaban Null Eliminates

Rivaroxaban is a direct factor Xa inhibitor --- it blocks a specific step in the blood-clotting cascade, so it is a single-target probe of the coagulation-arm hypothesis: that ongoing low-grade clot formation (or microclot burden) drives post-COVID fatigue, and that thinning the clotting system should relieve it. This arm was a specific, well-powered test, and it failed: $-1.06$ points, confidence interval spanning zero, $p = 0.139$.

Per the null-ladder logic of this section (@sec:null-ladder-clinical), a single-target null eliminates its target with more specificity than a positive would implicate it. The logical chain runs: if ongoing clot formation were a dominant driver of fatigue in this population, blocking factor Xa for 12~weeks should have separated rivaroxaban from no drug; it did not; therefore ongoing factor Xa-dependent clot formation is unlikely to be the dominant fatigue driver in never-hospitalised post-COVID patients. This is stronger evidence than a positive arm would have been, because a positive arm on a multi-target drug leaves the question of *which* target open, whereas a null on a single-target drug closes the question of *that* target.

What it does not eliminate: the mechanism could be real but upstream of or downstream from the point the drug touches. Microaggregates that are already formed, amyloid-stabilised, and fibrinolysis-resistant are not reversed by a drug that only slows *new* clot formation. The negative trial result constrains the *intervention*, not the *existence* of the microclot finding. And the alternative coagulation-removal route --- plasmapheresis to physically take the particles out --- has no randomised evidence at all: a Cochrane review found no study in which post-COVID patients had undergone it @Cochrane2023Plasmapheresis.

==== What the Colchicine and Famotidine-Loratadine Signals Do NOT Establish

Two arms reached nominal significance ($p = 0.041$ and $p = 0.038$). "Nominal" is doing real work in that sentence, and three design facts mean a nominally significant result here is not a replicated, nor a clinically meaningful, one.

*Open label on a self-reported endpoint.* Every participant knew which arm they were in, and the primary outcome was a questionnaire the participant filled in themselves. Open-label designs inflate reported benefit on subjective outcomes --- the knowledge of receiving an active drug, plus the extra attention, shifts self-reported scores toward improvement. This is exactly the situation where expectancy and reporting effects concentrate.

*Three active arms against one control, no reported multiplicity adjustment.* When you test three drug arms against one control on the same endpoint, the probability that at least one shows a nominally significant result by chance alone is higher than the 5% each individual $p$-value advertises. No multiplicity correction was reported in the abstract, so the two $p$-values of 0.041 and 0.038 sit close enough to 0.05 that the adjustment, if applied, could push either across the line.

*No durability.* At 24~weeks --- 12~weeks after the drugs stopped --- no group differed from any other. A genuine mechanism-level effect from a drug that was withdrawn does not necessarily persist, but the complete disappearance of both signals on cessation is consistent with a treatment-period artefact (expectancy, attention, or a transient symptomatic effect) rather than a durable repair of an underlying defect.

Distinguishing "nominally significant" from "replicated" and from "clinically meaningful" is the whole discipline here. These two signals are, on present evidence, only the first of the three.

==== The Dissociation as a Mechanism Probe

The four arms, read together, are the real output. The pattern runs: the anticoagulant produced nothing; the anti-inflammatory (colchicine, which acts on microtubules and neutrophils) produced a small, non-durable effect; and the mast-cell/histamine blockade (famotidine, an H2-receptor blocker, plus loratadine, an H1-receptor blocker) produced a small, non-durable effect of almost exactly the same size.

Two mechanistically unrelated interventions producing near-identical small effects, both of which vanish on withdrawal, is more consistent with non-specific or expectancy effects than with two distinct mechanisms each contributing about 1.5~points. The reasoning is comparative. If colchicine genuinely repaired an inflammatory driver and famotidine-loratadine genuinely repaired a mast-cell driver, the two effects would have no reason to be the same size --- the drivers would be different strengths in different people, and the drugs would not move in lockstep. When two different mechanistic stories produce the same small number, the most economical explanation is that neither story is doing the work; a shared non-specific cause (expectancy, regression to the mean, attention from trial participation) is producing the number.

This does not prove the mechanisms are absent. It means the trial, as designed, could not separate a real 1.5-point inflammatory effect from a 1.5-point placebo-level effect, because it lacked the one feature --- blinding --- that would have separated them.

==== The Severity and Population Boundary

The trial enrolled only people who were never hospitalised with COVID-19, and it enrolled the post-COVID-19 condition, not ME/CFS by criteria. Two boundaries follow.

*Severity applicability:* nothing in this trial constrains severe or very-severe ME/CFS. A person who was never hospitalised is, by definition, not the person whose illness has the kind of severity that fills the severe and very-severe strata of ME/CFS. The coagulation null, the two small anti-inflammatory and antihistamine signals, and the 4.3-point non-specific improvement all describe a milder, ambulatory population. The stratum where anticoagulation risk and microvascular compromise would matter most --- the severe and very-severe patient --- has no trial evidence in either direction from this study.

*Diagnostic boundary:* post-COVID-19 condition and ME/CFS overlap but are not the same case definition. A null or a positive in one does not transfer cleanly to the other. The honest reading is that this trial is the closest large-scale evidence available for the coagulation, anti-inflammatory, and mast-cell hypotheses, and it is negative or only nominally positive.

==== Drug-Safety Facts That Constrain Any Extrapolation

Even setting the null result aside, these are not benign drugs, and neither has any ME/CFS fatigue data.

*Colchicine* is a CYP3A4 and P-glycoprotein (P-gp) substrate. Its toxicity rises sharply when co-administered with strong CYP3A4 or P-gp inhibitors --- clarithromycin, the azole antifungals, and cyclosporine are the classic examples --- and it carries a myopathy risk that increases when combined with statins. Its therapeutic window is narrow, which is precisely why the trial used a low 500~µg twice-daily dose.

*Famotidine* reduces gastric acidity, which alters the absorption of drugs that require an acidic stomach for uptake --- some antifungals and other acid-dependent medications are absorbed less reliably on it.

*No treatment recommendation:* patients should not take colchicine or famotidine plus loratadine for ME/CFS fatigue on the basis of this trial. The trial's own anti-inflammatory and antihistamine arms failed to show a durable or clinically meaningful effect, and both drugs carry real interaction and toxicity liabilities that a null result does nothing to justify.

*Already prescribed an anticoagulant:* nothing here applies to an anticoagulant taken for another indication, such as atrial fibrillation, a mechanical heart valve, or a previous venous thromboembolism. This trial tested starting rivaroxaban to treat fatigue; it did not test stopping anticoagulation that a prescriber started for a separate reason. No patient should stop or change such a prescription on the basis of this trial, because stopping without advice carries its own thrombotic risk.

==== A Falsifiable Discriminating Test

The present reading --- that the two nominally significant arms are expectancy or non-specific effects, and that the rivaroxaban arm is a genuine null --- is falsifiable. The discriminating experiment is a blinded, placebo-controlled ME/CFS trial that pre-specifies a FAS difference of 4~points or more, sustained at 24~weeks. If a colchicine or famotidine-loratadine effect survives blinding and reaches 4~points at 24~weeks, the current reading is wrong and a real mechanism is operating. If the effect disappears under blinding, or fails to reach 4~points, the current reading stands and the small open-label signal is confirmed as artefact.

*Consequence:* this trial weakens --- but does not alone demolish --- the case that anticoagulation, anti-inflammatory, or mast-cell blockade treats post-COVID fatigue, because the one arm that was a clean single-target test (anticoagulation) failed outright while the other two arms produced only small, non-durable, unblinded signals that we cannot yet tell apart from placebo. (Origin: brainstorm.)
