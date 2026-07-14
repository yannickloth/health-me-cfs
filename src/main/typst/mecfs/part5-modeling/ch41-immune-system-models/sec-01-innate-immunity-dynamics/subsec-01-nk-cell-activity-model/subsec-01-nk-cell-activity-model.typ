#import "../../../../shared/environments.typ": *

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

