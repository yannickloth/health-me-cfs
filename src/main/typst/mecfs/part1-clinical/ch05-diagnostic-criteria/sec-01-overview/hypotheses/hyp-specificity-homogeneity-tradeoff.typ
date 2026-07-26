#import "../../../../shared/environments.typ": *

#hypothesis(title: [Specificity-Homogeneity Trade-off])[
Stricter diagnostic criteria increase disease homogeneity (reducing phenotypic variance) at the cost of excluding milder cases. Formally:

Let $sigma^2_{"pheno"}(X)$ denote phenotypic variance within the population $X$ meeting criterion set. Then:

$
sigma^2_{"pheno"}(I) < sigma^2_{"pheno"}(C) < sigma^2_{"pheno"}(F)
$

This implies:

    - *Research advantage*: ICC/Canadian cohorts show more consistent biomarker patterns, improving statistical power
    - *Clinical disadvantage*: Mild cases may be missed, delaying diagnosis and early intervention
    - *Treatment trials*: Stricter criteria may improve signal detection but limit generalizability

The optimal criterion set depends on context: research requires homogeneity; clinical practice requires sensitivity.
] <hyp:specificity-homogeneity>
