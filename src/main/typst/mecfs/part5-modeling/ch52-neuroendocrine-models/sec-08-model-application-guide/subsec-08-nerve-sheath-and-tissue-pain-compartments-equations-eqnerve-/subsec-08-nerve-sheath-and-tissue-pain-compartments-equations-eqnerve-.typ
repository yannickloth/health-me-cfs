#import "../../../../shared/environments.typ": *

=== Nerve Sheath and Tissue Pain Compartments (Equations @eq:nerve-sheath-inflammation and @eq:total-noci-compartments)

*Measurements required.*
(1) Tryptase and histamine (plasma or 24-hour urine) (why: constrains mast cell activation input $H_(upright("mc"))$ for both nerve sheath and periarticular compartments).
(2) Nerve conduction studies and neuromuscular ultrasound (why: identifies nerve trunk inflammation $cal(N)_s$ vs. distal SFN $cal(F)$; enlarged nerves on ultrasound suggest endoneurial edema).
(3) Venous lactate at rest and post-exertion (why: constrains $[upright("Lac")]_m$ in the muscular compartment).
(4) Serum NGF (why: constrains the TRPV1 upregulation term $alpha_(upright("NGF"))$ in periarticular input).
(5) Postural pain variation diary (why: endoneurial ischemia worsens upright; if pain increases with standing and improves supine, the nerve sheath compartment with its $O_(2,upright("endo"))$/MAP coupling is likely dominant).

*Worked example.*
A patient with MCAS overlap ($H_(upright("mc")) = 3 times$ normal), moderate oxidative stress ($[upright("ROS")] = 1.5 times$ normal), mild SFN ($cal(F)/cal(F)_0 = 0.8$), and central sensitization ($cal(S) = 0.5$). Using $rho_(upright("mc,joint")) = 20$ (joint mast cell density ratio):

- SFN input: $P_0 times (1 + 1.5 times 0.2) = 1.3 P_0$
- Nerve sheath: $gamma_(upright("sheath")) dot.op cal(N)_s approx 0.4 P_0$ (moderate, driven by ROS + mast cells)
- Periarticular: $rho_(upright("mc,joint")) dot.op H_(upright("mc")) dot.op (1 + alpha_(upright("NGF")) dot.op [upright("NGF")]) approx 0.8 P_0$ (high, driven by MCAS)
- Muscular: $0.3 P_0$ at rest (mild metabolic stress)
- Total $P_(upright("noci,total")) = (1.3 + 0.4 + 0.8 + 0.3) P_0 = 2.8 P_0$
- After central sensitization amplification: $(1 + 1.5 times 0.5) times 2.8 = 4.9 P_0$

Treatment with mast cell stabilizer (reducing $H_(upright("mc"))$ by 60%): periarticular drops to $0.32 P_0$, nerve sheath drops to $0.28 P_0$. New total: $(1.3 + 0.28 + 0.32 + 0.3) times 1.75 = 3.85 P_0$---a 21% pain reduction from mast cell stabilization alone, targeting the dominant compartments without directly addressing sensitization.

*Inter-model dependencies.*
_Inputs_: ROS from oxidative stress model; mast cell activation $H_(upright("mc"))$ from immune model; NO from BH₄ model (endoneurial perfusion); MAP from ANS model (postural perfusion); lactate and ATP from energy metabolism model (muscular compartment); joint stability from hEDS model (periarticular compartment). _Outputs_: total $P_(upright("noci,total"))$ feeds into central sensitization wind-up (Equation @eq:central-sensitization) and thence to the pain $->$ ANS $->$ sleep feedback cascade.

*Scope and rationale.*
The four-compartment decomposition captures the clinically relevant distinction between pain types (nerve trunk vs. joint vs. muscle vs. distal neuropathic) while remaining tractable. It omits visceral pain (relevant to IBS comorbidity) and headache-specific mechanisms (trigeminovascular system). Each compartment uses at most two state variables, keeping the total model dimensionality manageable.

*Falsification criteria.*
The model predicts that pain temporal profile correlates with compartment dominance: (1) fast fluctuation with mast cell episodes $->$ periarticular/nerve sheath dominant; (2) 48 h post-exertional decay $->$ muscular dominant; (3) slow progressive worsening $->$ SFN dominant. *Falsified if*: longitudinal pain phenotyping shows no correlation between temporal dynamics and the biomarkers predicted to drive each compartment (e.g., if mast cell markers do not predict periarticular pain fluctuation).

*Clinical implications.*
*Whom to treat*: all ME/CFS patients with significant pain. *How*: (1) Pain diary analysis (temporal pattern, distribution, postural variation) identifies likely dominant compartment(s); (2) MCAS-dominant patients (periarticular + nerve sheath): mast cell stabilizers (cromolyn, ketotifen), PEA, antihistamines; (3) metabolic-dominant patients (muscular): strict pacing, CoQ10 + NADH (improve $dot(V) O_(2,upright("musc"))$); (4) SFN-dominant patients: neuroprotection (alpha-lipoic acid), IVIG if autoimmune markers present; (5) all patients benefit from central sensitization reduction (LDN, NMDA antagonists) because $cal(S)$ acts as a gain multiplier on all compartments.
