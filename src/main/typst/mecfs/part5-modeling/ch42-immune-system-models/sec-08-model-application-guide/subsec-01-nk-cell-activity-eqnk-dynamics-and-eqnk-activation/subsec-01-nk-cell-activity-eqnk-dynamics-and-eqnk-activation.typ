#import "../../../../shared/environments.typ": *

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

