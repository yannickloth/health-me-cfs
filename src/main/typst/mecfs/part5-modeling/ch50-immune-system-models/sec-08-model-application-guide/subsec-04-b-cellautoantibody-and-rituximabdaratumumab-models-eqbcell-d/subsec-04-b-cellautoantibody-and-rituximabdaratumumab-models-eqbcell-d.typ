#import "../../../../shared/environments.typ": *

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

