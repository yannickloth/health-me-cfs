#import "../../../../shared/environments.typ": *

=== Cytokine Network Model
<sec:cytokine-model>

Cytokines mediate communication between immune cells and between the immune system and other organ systems. The cytokine network model tracks the concentrations of key pro-inflammatory (IL-1$beta$, IL-6, TNF-$alpha$, IFN-$gamma$) and anti-inflammatory (IL-10, TGF-$beta$) cytokines. Each cytokine $C_i$ follows:

$
frac(d C_i, d t) = sum_(j) sigma_(i j)(bold(C), bold(N)) - delta_i C_i
$ <eq:cytokine-general>

where $sigma_(i j)$ represents production of cytokine $i$ by cell type $j$ (dependent on the full cytokine vector $bold(C)$ and immune cell populations $bold(N)$), and $delta_i$ is the degradation rate. The production terms encode the network topology---which cytokines stimulate or inhibit the production of which other cytokines.

Hornig et al. identified distinct cytokine signatures in ME/CFS that vary with disease duration: patients with illness duration $lt.eq 3$ years showed elevated pro-inflammatory cytokines, while those with longer illness showed a mixed or suppressed profile @Hornig2015. Montoya et al. confirmed that cytokine levels correlate with symptom severity, with IL-6 and TNF-$alpha$ among the strongest correlates @Montoya2017. The model captures this transition through a bifurcation in the cytokine network: early disease corresponds to a high-inflammation attractor, while chronic disease transitions to a "remodeled" state where feedback inhibition (via IL-10, cortisol) partially suppresses acute inflammation but fails to restore normal homeostasis.

The IL-6 dynamics illustrate the feedback structure:

$
frac(d [upright("IL-6")], d t) = sigma_(upright("IL-6"))^(upright("mono")) dot.op f_(upright("act"))(bold(C)) dot.op M_a + sigma_(upright("IL-6"))^(upright("Th17")) dot.op T_(17) - delta_(upright("IL-6")) [upright("IL-6")]
$ <eq:il6>

where $M_a$ is the activated monocyte/macrophage population, $T_(17)$ is the Th17 cell population, and $f_(upright("act"))(bold(C))$ is an activation function incorporating stimulation by TNF-$alpha$ and IL-1$beta$ and inhibition by IL-10. IL-6 in turn promotes Th17 differentiation (creating a positive feedback loop) and stimulates acute-phase protein production by hepatocytes.

