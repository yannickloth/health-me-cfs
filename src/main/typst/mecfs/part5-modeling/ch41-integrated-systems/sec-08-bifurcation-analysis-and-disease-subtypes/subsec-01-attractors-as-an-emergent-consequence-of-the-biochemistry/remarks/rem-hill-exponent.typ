#import "../../../../../shared/environments.typ": *

#remark(title: [The Hill Exponent Is a Modelling Choice])[
The cooperativity exponent $n = 2$ in @eq:immune-energy-feedback is a modelling choice with consequences for bistability. With $n = 1$ (standard Michaelis--Menten), the $I$-nullcline becomes a hyperbolic function lacking the inflection point that enables triple intersection with the $A$-nullcline; the system is then monostable for all parameter values. With $n gt.eq 2$, the $I$-nullcline is sigmoidal and triple intersection becomes possible.

The choice of $n = 2$ is motivated by immunometabolism: immune cell activation involves cooperative processes (receptor clustering, signalling threshold effects, metabolic reprogramming switches) that produce ultrasensitive responses @Ferrell1996ultrasensitivity. T cell activation in particular exhibits a switch-like dependence on TCR signal strength, well-described by Hill kinetics with $n = 1.5$--$3$ @Altan-Bonnet2005 However, $n = 1$ cannot be excluded a priori for all immune cell types, and the bistability result depends on this choice. The analysis below should therefore be read as: _if_ ATP-dependent immune activation is cooperative ($n gt.eq 2$), _then_ bistability follows from the feedback structure.
] <rem:hill-exponent>
