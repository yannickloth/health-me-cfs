#import "../../../../shared/environments.typ": *

=== Damage Accumulation and Energy Ratchet Models

*Measurements required.*
Longitudinal functional capacity: 6-minute walk test or step count (monthly), self-reported activity level (daily via wearable). Biomarkers of damage: 8-OHdG (oxidative DNA damage), cell-free mitochondrial DNA, neurofilament light chain (neuronal damage). Energy status: resting metabolic rate, lactate at standardized workload. Event log: dates and severity of infections, PEM crashes, surgeries, and major stressors (patient diary).

*How to use.*
Calibrate the ratchet model (Equations @eq:ratchet-interevent and @eq:ratchet-irreversible-loss) from the patient's event history. Fit $delta_0$, $alpha$, and $r(B)$ to the observed trajectory of functional capacity $B(t)$ over at least 3 damaging events. Once calibrated, simulate forward: given the patient's current $B$ and $B_max$, predict how many additional events of a given severity can occur before the next severity threshold is crossed. This provides a quantitative basis for event prevention urgency.

*Worked example.*
A patient diagnosed 3 years ago has experienced 5 documented infections and an estimated 20 PEM crashes. Functional capacity has declined from $B_0 = 0.72$ (mild) to $B = 0.48$ (approaching moderate threshold at $theta_upright("mod") = 0.6$; current ceiling $B_max = 0.55$). Fitting the ratchet model yields $delta_0 = 0.025$, $alpha = 0.8$ (moderate damage sensitisation). Forward simulation predicts that 3 more infections of similar severity will drop $B_max$ below $0.35$ (severe threshold) within 2 years, whereas strict event prevention (reducing infection rate by 80% through masking and antivirals) extends the time to severe threshold to $> 8$ years. The model quantifies the stakes of infection prevention for this specific patient.

*Inter-model dependencies.*
The ratchet model takes initial conditions from the tipping point model (Section @sec:tipping-point). The repair rate $r(B)$ depends on ATP availability from the energy metabolism models (Chapter @ch:energy-metabolism-models). Damage sensitisation parameter $alpha$ connects to immune exhaustion (Chapter @ch:immune-system-models) and microglial priming (Chapter @ch:neuroendocrine-models). The continuous damage model (Equation @eq:damage-accumulation) provides the inter-event drift dynamics when chronic ROS/inflammation is significant.

*Falsification criteria.*
The ratchet model is falsified if: (1) patients show no correlation between event frequency and rate of functional decline over 2+ years of prospective tracking; (2) damage sensitisation ($alpha > 0$) is not observed---i.e., later events produce the same or smaller ceiling losses as earlier ones; (3) functional capacity spontaneously exceeds $B_max$ without identifiable disease-modifying intervention (this would violate the one-way ceiling constraint).

*Clinical implications.*
The ratchet model provides the quantitative case for aggressive event prevention as disease-modifying therapy. For each patient, the model computes: (a) current ceiling $B_max$ and remaining margin to the next severity threshold, (b) expected events per year given current lifestyle and infection exposure, (c) projected time to severity transition under current conditions vs. with enhanced prevention. This transforms the abstract advice "avoid crashes" into a concrete risk quantification. Patients with high $alpha$ (strong damage sensitisation) and low remaining margin benefit most from aggressive prevention strategies.

