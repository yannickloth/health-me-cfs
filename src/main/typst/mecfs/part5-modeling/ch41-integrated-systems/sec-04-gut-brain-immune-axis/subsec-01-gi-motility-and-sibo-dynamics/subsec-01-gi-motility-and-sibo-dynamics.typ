#import "../../../../shared/environments.typ": *

=== GI Motility and SIBO Dynamics
<sec:gi-motility-model>

GI dysmotility is a core component of the Septad framework (@sec:septad). Gastric emptying scintigraphy studies report delayed emptying in approximately 60% of tested ME/CFS patients @GastricDysmotility2023, while breath testing identifies SIBO in 48% of those evaluated @SIBOKarhu2023. Gastroparesis and impaired migrating motor complex (MMC) function predispose to small intestinal bacterial overgrowth (SIBO), which in turn drives immune activation and nutrient malabsorption (@ch:gut-microbiome, @sec:sibo). The preceding gut--brain--immune model captures dysbiosis $->$ permeability $->$ LPS translocation but omits motility entirely. This subsection extends the gut compartment to formalize the autonomic $->$ motility $->$ SIBO $->$ immune $+$ energy cascade.

The model tracks three additional state variables: gut motility index $cal(G) in [0,1]$ (where 1 is normal MMC cycling and 0 is complete gastroparesis), small intestinal bacterial load $B_upright("SI")$ (colony-forming units, normalized to healthy baseline $B_(upright("SI,0"))$), and nutrient absorption efficiency $eta in [0,1]$:

$
frac(d cal(G), d t) &= frac(1, tau_(cal(G))) [cal(G)_upright("set")(V, upright("MC")_d) + cal(G)_upright("pro") - cal(G)] \
frac(d B_upright("SI"), d t) &= r_B dot.op B_upright("SI") (1 - frac(B_upright("SI"), K_B(cal(G)))) - delta_upright("MMC") dot.op cal(G)^2 dot.op B_upright("SI") - delta_upright("Abx") dot.op B_upright("SI") \
frac(d eta, d t) &= frac(1, tau_eta) [eta_0 dot.op frac(K_eta, K_eta + B_upright("SI") \/ B_(upright("SI,0"))) - eta]
$ <eq:gi-motility>

In @eq:gi-motility, $cal(G)_upright("pro") >= 0$ represents the prokinetic drug effect (e.g., prucalopride, low-dose erythromycin), which directly augments motility independently of vagal tone; $cal(G)_upright("pro") = 0$ in the absence of prokinetic treatment. The motility set point $cal(G)_upright("set")$ depends on vagal efferent tone $V$ (from the ANS model, @eq:ans-balance) and mast cell degranulation state $upright("MC")_d$ (from the mast cell model, @eq:mast-cell-dynamics):

$
cal(G)_upright("set")(V, upright("MC")_d) = underbrace(frac(V^(n_V), K_V^(n_V) + V^(n_V)), "vagal drive") dot.op underbrace(frac(K_(upright("MC,gut")), K_(upright("MC,gut")) + upright("MC")_d), "mast cell inhibition")
$ <eq:motility-setpoint>

Vagal tone drives motility through the enteric nervous system: reduced vagal output (as in ME/CFS autonomic dysfunction) lowers the motility set point, impairing MMC cycling. Simultaneously, degranulated mast cells in the gut mucosa release histamine and prostaglandins that can disrupt coordinated peristalsis (@ch:gut-microbiome). The Hill coefficient $n_V$ determines the steepness of the vagal drive---a steep response means that modest vagal impairment has disproportionate effects on motility, consistent with the clinical observation that many ME/CFS patients develop gastroparesis despite only moderate autonomic dysfunction.

In the SIBO dynamics (@eq:gi-motility), bacterial growth follows logistic kinetics with a carrying capacity $K_B(cal(G))$ that increases as motility decreases:

$
K_B(cal(G)) = K_(B,upright("min")) + (K_(B,upright("max")) - K_(B,upright("min"))) dot.op (1 - cal(G))
$ <eq:sibo-carrying-capacity>

The MMC clearance term $delta_upright("MMC") dot.op cal(G)^2$ is quadratic in motility, reflecting the fact that effective bacterial sweep requires coordinated phase III contractions---partial motility provides disproportionately less clearance. The antibiotic term $delta_upright("Abx")$ represents rifaximin or herbal antimicrobial treatment (@sec:sibo).

==== Cross-System Coupling

The GI motility model couples to four other subsystems:

+ *SIBO $->$ Immune activation*: Bacterial overgrowth increases luminal LPS concentration. The existing LPS translocation equation (@eq:gut-immune) is extended with a SIBO-dependent source term:
  $
  [upright("LPS")_upright("gut")] = [upright("LPS")_(upright("gut,0"))] dot.op frac(B_upright("SI"), B_(upright("SI,0")))
  $ <eq:lps-sibo>
  This creates a positive feedback loop: autonomic dysfunction $->$ reduced motility $->$ SIBO $->$ increased LPS $->$ immune activation $->$ sickness behavior $->$ further autonomic impairment.

+ *Malabsorption $->$ Energy metabolism*: Reduced nutrient absorption impairs substrate availability for mitochondrial respiration. The absorption efficiency $eta$ modifies the substrate input to the energy model:
  $
  J_upright("substrate") = eta dot.op J_(upright("substrate,0"))
  $ <eq:malabsorption-energy>
  where $J_(upright("substrate,0"))$ is the dietary substrate flux at full absorption. This couples to the energy metabolism model (@ch:energy-metabolism-models) by reducing the maximal glycolytic and fatty acid oxidation rates proportionally. SIBO-mediated fat-soluble vitamin malabsorption (via bile salt deconjugation) and bacterial consumption of B12 are both captured through $eta$ without requiring individual nutrient tracking.

+ *SIBO $->$ Butyrate depletion*: The preceding model treated $[upright("butyrate")]$ as an exogenous parameter. Bacterial overgrowth in the small intestine competes with colonic commensals for fermentable substrates, making butyrate production endogenous. This replaces the static treatment with an explicit ODE:
  $
  frac(d[upright("butyrate")], d t) = sigma_upright("butyrate") dot.op frac(K_upright("SIBO"), K_upright("SIBO") + B_upright("SI") \/ B_(upright("SI,0"))) - delta_upright("butyrate") dot.op [upright("butyrate")]
  $ <eq:sibo-butyrate>
  where $sigma_upright("butyrate")$ is the colonic production rate and the inhibitory Hill term captures substrate competition from SIBO. This links SIBO to gut barrier integrity via @eq:gut-immune: SIBO $->$ reduced butyrate $->$ increased permeability $->$ more LPS translocation, creating a second positive feedback loop that amplifies the immune consequences of dysmotility.

+ *Mast cell $<->$ Motility bidirectional loop*: Histamine released by degranulated mast cells impairs motility (@eq:motility-setpoint), while SIBO-derived LPS and bacterial metabolites can trigger further mast cell activation through TLR signaling. This is captured by the existing mast cell priming equation (@eq:mast-cell-dynamics) receiving LPS as an additional trigger input, creating a self-amplifying MCAS--dysmotility--SIBO triangle.

==== Treatment Predictions

The GI motility model generates testable treatment predictions:

- *Prokinetics* (prucalopride, low-dose erythromycin): increase effective motility via $cal(G)_upright("pro")$ (@eq:gi-motility), bypassing the vagal impairment. The model predicts that prokinetics should reduce SIBO recurrence rate by maintaining MMC clearance ($delta_upright("MMC") dot.op cal(G)^2$ term), consistent with established clinical practice of continuing prokinetics after SIBO eradication to prevent recurrence.
- *Rifaximin*: increases $delta_upright("Abx")$, rapidly reducing $B_upright("SI")$. The model predicts transient improvement followed by relapse if motility remains impaired ($cal(G) < cal(G)_upright("crit")$), because the carrying capacity $K_B(cal(G))$ remains elevated. This formalizes the clinical observation that SIBO frequently recurs after antibiotic treatment unless underlying motility dysfunction is addressed.
- *Mast cell stabilizers + prokinetics*: the model predicts synergy because stabilizers reduce $upright("MC")_d$ (improving motility set point) while prokinetics directly increase $cal(G)$, attacking the dysmotility from both upstream drivers simultaneously.
- *Vagal nerve stimulation*: increases $V$ in the ANS model, which propagates to $cal(G)_upright("set")$ through @eq:motility-setpoint. The model predicts that vagal stimulation should improve GI motility as a secondary benefit beyond its anti-inflammatory effects via the cholinergic pathway (@eq:vagal-coupling).

