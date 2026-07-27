#import "../../../../shared/environments.typ": *

==== Critical Caveats and Limitations of the Negative-Control Framework

#limitation(title: [The Adequacy Assumption — Every Negative-Control Requires Unvalidated Parameters])[
The second condition of the negative-control decision heuristic (@spec:negative-control-decision-heuristic) requires adequate dose, duration, and endpoint. But in ME/CFS, "adequate" is almost always unknown. No drug has ME/CFS-specific dose-finding data. Rituximab dosing (1,000 mg × 2, standard RA protocol) may not be adequate for ME/CFS immune kinetics. The 24-week primary endpoint in Fluge 2019 was chosen to capture the Phase II signal, but if clinical benefit requires 9–12 months (matching the timecourse of tissue-bound IgG clearance after B-cell depletion), the trial may have stopped measuring too early.

This is systematic, not trial-specific: negative-control inference requires knowing the adequate parameters for the specific mechanism, and ME/CFS has no empirical basis for knowing what "adequate" is for any mechanism. A null result under potentially inadequate parameters is uninformative — you cannot distinguish "inadequate trial" from "false mechanism." Every negative-control interpretation in ME/CFS is conditional on an unverified adequacy assumption.

*Certainty: 0.65.* The pharmacokinetic argument is well-established (IgG half-life 21 days, tissue-bound IgG clearance longer, B-cell repopulation kinetics). The ME/CFS-specific adequacy gap is empirically observable — no drug in the ch33 compendium has ME/CFS-specific dose-ranging data.

*Consequence:* All negative-control inferences in ME/CFS currently carry a structural caveat: the parameters may have been wrong. Rituximab might need 3× the dose for the ME/CFS immune environment, or 12 months for the tissue-bound antibody to clear. You can't falsify a mechanism with a trial that was too short or too low-dose — and in ME/CFS, nobody knows what "enough" is. This is not a reason to discard negative-control reasoning — it's a reason to discount its certainty.
(Origin: brainstorm.)

] <lim:negative-control-adequacy-assumption>

#limitation(title: [The Compartment Proportionality Principle — Negative-Controls Partially Cover Multi-Compartment Mechanisms])[
Virtually every negative-control drug candidate targets only a subset of the compartments where the hypothesized pathogenic factor operates. GPCR autoantibodies could be produced and active in at least six compartments: blood B cells, secondary lymphoid organs, bone marrow plasma cell niches, CNS meningeal follicles, tissue-resident lymphoid structures (GALT, BALT, skin), and intracellular (intracrine antibodies). Rituximab effectively covers two of six (blood and secondary lymphoid organ B cells). The remaining four survive the null.

Negative-control inference is compartment-specific, not mechanism-specific. "Rituximab falsifies the AAb hypothesis" is imprecise — the correct statement is "rituximab constrains the blood/lymphoid-organ CD20+ B-cell-derived AAb sub-hypothesis, leaving four compartments untested." The decision heuristic (@spec:negative-control-decision-heuristic) needs a compartment coverage fraction: what proportion of total hypothesized compartments does the drug reach? If the fraction is below 0.50, the negative-control inference is mostly about uncovered compartments, not about the mechanism's validity.

*Certainty: 0.50.* Compartment diversity of antibody-producing cells is well-established immunology. The six-compartment model is a conservative estimate — additional compartments (cerebrospinal fluid immune niches, thymic B cells) may exist.

*Consequence:* Rituximab kills B cells in blood and lymph nodes. But if pathogenic antibodies are being made by plasma cells hiding in bone marrow, or by immune cells behind the blood-brain barrier, rituximab never reached those factories. Its failure tells you the factories it could reach weren't the problem — but the unreachable factories are still operational and potentially causal. A negative-control drug is only as informative as the compartments it physically accesses.
(Origin: brainstorm.)

] <lim:negative-control-compartment-proportionality>

#open-question(title: [Does the Negative-Control Class Add Incremental Value Beyond the Null Matrix?])[
The null matrix (@sec:null-matrix) operates at the patient level: "this drug failed for this patient, eliminating the mechanisms it could intercept for this patient." The negative-control class extends this to mechanism-level inference: "the drug failed in an adequately powered trial, constraining the mechanism for the population." This extension requires assumptions that the null matrix avoids: (a) that patients' mechanisms are homogeneous enough for population-level aggregation, (b) that the trial population was representative of the hypothesis-relevant subgroup, (c) that the adequacy assumption holds uniformly across patients with the hypothesized mechanism.

In a disease as heterogeneous as ME/CFS, these assumptions may not hold. Tölle 2020's IA study (n=5) showed 2 of 5 patients improved — even within a small cohort of AAb-positive patients, response heterogeneity precludes population-level inference from individual nulls. If "the GPCR AAb hypothesis" is actually a family of related but distinct mechanisms (different AAb targets, different compartment sources, different rate-limiting nodes), aggregating individual nulls into mechanism-level falsification conflates distinct entities.

The null matrix is epistemically safer: it eliminates mechanisms per-patient without claiming population-level falsification. The negative-control class may add nothing but overgeneralization — the same null data, interpreted at an unjustified level of aggregation.

*Certainty: 0.40.* The heterogeneity concern is empirically grounded (IA response heterogeneity, ME/CFS subtype evidence). Whether the negative-control class actually produces false-positive falsifications depends on mechanism homogeneity, which is unknown.

*Consequence:* The null matrix says "rituximab didn't work for the patients in the trial, so CD20+ B-cell AAb is probably not the mechanism for those patients." The negative-control class says "rituximab didn't work in 151 patients, so the CD20+ B-cell AAb model is wrong — period." The second claim is bigger, more important, and potentially wrong for some patients who have a slightly different version of the AAb mechanism. In a heterogeneous disease, population-level inference from individual nulls is a leap — and we don't know if the ground is there.
(Origin: brainstorm.)

] <oq:negative-control-incremental-value>

#limitation(title: [Rituximab Phase III — Null Primary Endpoint, Unanswered Subgroup Questions])[
Fluge 2019 Phase III (n=151, @Fluge2019RituximabPhase3) is the canonical negative-control — but its null is more qualified than the "definitive" label implies. Three residual questions: (a) The Phase II signal (Fluge 2011, n=30) showed delayed improvement at 6–12 months in a subset. The Phase III used a 24-week primary endpoint — if the true time-to-effect is 9–12 months (matching tissue-bound IgG clearance kinetics), the endpoint may have been too early. (b) Subgroup analyses by baseline AAb status and completeness of B-cell depletion have not been fully reported. If AAb-positive patients with confirmed CD19+ depletion showed a signal that was diluted by the ITT population, the population-level null masks a subgroup-level positive. (c) The IgG timecourse after B-cell depletion: IgG half-life ~21 days, tissue-bound IgG clearance slower. Clinical improvement in autoantibody diseases follows IgG decline with a tissue-clearance lag — the peak effect may occur well after 24 weeks.

These do not overturn the negative-control inference — Fluge 2019 is a properly powered, multi-centre RCT with a null primary endpoint. But they qualify the certainty: "no evidence of efficacy at week 24" is not "evidence of no efficacy at any timepoint in any subgroup."

*Certainty: 0.45.* The Phase II signal is documented but from n=30 (Type I error possible). The pharmacokinetic argument is well-established.

*Consequence:* The Fluge 2019 trial found rituximab no better than placebo at 6 months. But the Phase II signal at 9–12 months, combined with what we know about how slowly antibodies clear from tissues, means the real benefit — if any — might show up later than the trial measured. The rituximab null may be a "not yet" rather than a "no." Negative-control inferences require the right endpoint at the right time — and in ME/CFS, we don't know what "right" is for any mechanism.
(Origin: brainstorm.)

] <lim:negative-control-rituximab-residual-signal>

#limitation(title: [Immunoadsorption Negative-Control Inference — 13 Patients Is Insufficient])[
The IA negative-control inference (@sec:negative-control-class) rests on 13 patients total: Tölle 2020 (n=5 ME/CFS, @Tolle2020immunoadsorption) and Stein 2025 (n=8 post-COVID, @Stein2025ImmunoadsorptionPostCOVIDMECFS). Both are open-label, no sham-IA control, with heterogeneous protocols and different outcome measures. A Class II negative-control inference from 13 uncontrolled, unblinded patients does not meet the adequacy condition of the decision heuristic.

This does not invalidate IA as a diagnostic probe — a positive IA response IS informative (removing circulating IgG produces improvement → circulating IgG is rate-limiting for that patient). But a null IA response from 13 patients constrains almost nothing. The evidence base is too thin to support even the already-hedged claims in the negative-control section. Subsec-13's IA discussion illustrates the negative-control boundary conceptually, but the empirical inference should carry explicit sample-size qualification.

*Certainty: 0.60.* Both studies are published, but n=13 is not a negative-control evidence base by any standard.

*Consequence:* Thirteen patients, no blinding, different diseases, different protocols. You can't constrain a mechanism with 13 uncontrolled observations. If a 50-person sham-controlled IA trial showed null, that would constrain the circulating-IgG hypothesis. But the current evidence is a conceptual illustration, not an empirical constraint — and the negative-control framework should say so.
(Origin: brainstorm.)

] <lim:negative-control-ia-small-sample>

#speculation(title: [The Inverse Negative-Control — When a Positive Response Falsifies the Hypothesis])[
The existing negative-control definition covers null responses: the hypothesis predicts the drug must work, the drug fails, the hypothesis is constrained. But there is a dual: the *inverse negative-control* — drugs where a *positive* response falsifies a hypothesis. If hypothesis H asserts "node N is broken" and drug D operates downstream of N, then H predicts D *cannot* work because the broken node blocks the signal D needs. If D works, the premise "N is broken" is falsified.

The inverse negative-control is cleaner than the standard negative-control because a positive response cannot be explained by drug non-engagement — if the drug worked, it reached its target and produced a biological effect. Candidate: if TRPM3 Ca²⁺ channels are non-functional (TRPM3 hypothesis), mast cell stabilizers dependent on Ca²⁺ flux (ketotifen, cromolyn) should be ineffective. If ketotifen works in a TRPM3-mutant patient, either TRPM3 is not non-functional, or ketotifen works through an unknown non-Ca²⁺ pathway — in either case, the "TRPM3 loss-of-function as rate-limiting" premise is constrained.

*Certainty: 0.25.* The logical structure is sound but the empirical candidates need specific testing. No formal literature on inverse negative-controls exists.

*Consequence:* If you take a drug that shouldn't work — because your mechanism hypothesis says the thing it needs is broken — and it works anyway, you've learned something important: your hypothesis has a structural flaw. (Origin: brainstorm.)

] <spec:negative-control-inverse>
