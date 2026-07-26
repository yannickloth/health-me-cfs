#import "../../../../shared/environments.typ": *

=== B Cell and Autoantibody Production
<sec:bcell-model>

B cell-mediated autoimmunity has been implicated in ME/CFS by studies documenting autoantibodies against neurotransmitter receptors and autonomic nervous system components @Loebel2016 @Sotzny2021 @Bynke2020. The B cell model tracks naïve B cells ($B_n$), activated B cells ($B_a$), and long-lived plasma cells ($P$) that produce autoantibodies ($upright("Ab")$):

$
frac(d B_a, d t) &= k_(upright("Bact")) dot.op T_e dot.op B_n - k_(upright("plasma")) B_a - d_(B a) B_a \
frac(d P, d t) &= k_(upright("plasma")) B_a - d_P P \
frac(d [upright("Ab")], d t) &= sigma_(upright("Ab")) dot.op P - delta_(upright("Ab")) [upright("Ab")]
$ <eq:bcell-dynamics>

where $k_(upright("Bact"))$ is the T cell-dependent B cell activation rate and $sigma_(upright("Ab"))$ is the antibody secretion rate per plasma cell. The long half-life of plasma cells ($d_P^(-1) approx$ months to years) means that autoantibody production persists long after the initial B cell activation---a mechanism potentially explaining why B cell depletion therapy (rituximab) showed delayed and variable responses in ME/CFS trials @Fluge2011rituximab @Fluge2015rituximab_rct @Fluge2019. The model predicts that clinical response requires waiting for pre-existing plasma cells to die naturally, with response timing inversely proportional to $d_P$.

