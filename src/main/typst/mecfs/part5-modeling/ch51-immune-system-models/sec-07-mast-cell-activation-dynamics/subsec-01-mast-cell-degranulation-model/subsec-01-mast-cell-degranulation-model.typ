#import "../../../../shared/environments.typ": *

=== Mast Cell Degranulation Model

The model tracks resting mast cells ($upright("MC")_r$), primed mast cells ($upright("MC")_p$), and degranulated mast cells ($upright("MC")_d$), with degranulation releasing histamine ($[upright("His")]$), tryptase, and prostaglandin D₂ (PGD₂):

$
frac(d upright("MC")_r, d t) &= s_(upright("MC")) - k_(upright("prime"))(bold(S)_(upright("MC"))) dot.op upright("MC")_r + k_(upright("restab")) dot.op upright("MC")_d - d_(upright("MC")) dot.op upright("MC")_r \
frac(d upright("MC")_p, d t) &= k_(upright("prime"))(bold(S)_(upright("MC"))) dot.op upright("MC")_r - k_(upright("degran"))(bold(T)_(upright("MC"))) dot.op upright("MC")_p - k_(upright("deact")) dot.op upright("MC")_p \
frac(d upright("MC")_d, d t) &= k_(upright("degran"))(bold(T)_(upright("MC"))) dot.op upright("MC")_p - k_(upright("restab")) dot.op upright("MC")_d
$ <eq:mast-cell-dynamics>

where $s_(upright("MC"))$ is the tissue replenishment rate, $k_(upright("prime"))(bold(S)_(upright("MC")))$ is the priming rate driven by signals $bold(S)_(upright("MC"))$ (IgE, IgG immune complexes, complement C3a/C5a, SCF), $k_(upright("degran"))(bold(T)_(upright("MC")))$ is the degranulation trigger rate driven by stimuli $bold(T)_(upright("MC"))$ (mechanical stress, temperature, exercise, neuropeptides), and $k_(upright("restab"))$ is the restabilization rate. IgG immune complexes add an IgE-independent activation input to human mast cells @Woolhiser2001IgG1MastFcgammaRI @Zhao2006FcgammaRIIaSkinMast.

#speculation(title: [IFN-γ-Gated FcγRI Opens a Slow, Tissue-Dependent IgG Priming Route])[
*Certainty: 0.16.* The existing model treats IgG immune complexes as a flat, constant priming input alongside IgE, complement C3a/C5a, and SCF (@eq:mast-cell-dynamics). In human mast cells this input is not constitutive: resting mast cells express FcγRI on only approximately 2% of cells, and IFN-γ raises this to approximately 44% before IgG immune complexes can aggregate FcγRI and trigger degranulation @Okayama2000FcgammaRIHumanMast. The IgG route is therefore *gated* — it opens only after IFN-γ has induced FcγRI — and the gate is represented as an IFN-γ-dependent FcγRI availability term that multiplies the IgG component of the priming signal $bold(S)_(upright("MC"))$:

$
g_(upright("FcγRI")) &= g_(upright("FcγRI,0")) + (g_(upright("FcγRI,max")) - g_(upright("FcγRI,0"))) dot.op frac([upright("IFN-γ")], K_(upright("IFN")) + [upright("IFN-γ")]) \
k_(upright("prime,IgG")) &= phi_(upright("FcγRIIB")) dot.op k_(upright("prime,IgG,0")) dot.op g_(upright("FcγRI"))
$ <eq:mast-cell-igg-gating>

where $g_(upright("FcγRI"))$ is the dimensionless FcγRI availability (approximately 0.02 basal, saturating toward approximately 0.44 under IFN-γ, per the approximately 2%→approximately 44% induction @Okayama2000FcgammaRIHumanMast), $[upright("IFN-γ")]$ is the local IFN-γ concentration, $K_(upright("IFN"))$ is the half-maximal induction constant, and $k_(upright("prime,IgG"))$ is the gated IgG priming rate that replaces the flat IgG term inside $k_(upright("prime"))(bold(S)_(upright("MC")))$. The gated route is kinetically distinct: IgG-driven degranulation reaches half-maximum at approximately 11 min, roughly an order of magnitude slower than IgE-driven degranulation (approximately 1 min) @Woolhiser2001IgG1MastFcgammaRI, so $k_(upright("prime,IgG,0"))$ carries its own slower time constant rather than borrowing the FcεRI/neuropeptide one. The net IgG effect is also tissue-dependent: the inhibitory receptor FcγRIIB is absent from dermal mast cells but present on gut mast cells, so the tissue factor $phi_(upright("FcγRIIB"))$, a dimensionless factor between 0 and 1, scales the net IgG priming down where FcγRIIB is present (gut) and leaves it unrestrained where FcγRIIB is absent (skin) @Burton2018FcgammaRIIbTissueMast.

*Falsifiable prediction:* An IFN-γ pulse produces a delayed, sustained mediator output with a time-to-peak >10 min, distinguishable from the immediate neuropeptide route; this is falsified if the IFN-γ-gated term does not materially change output at physiological IFN-γ concentrations.

*Limitations:* No ME/CFS parameter estimates exist for $g_(upright("FcγRI,0"))$, $g_(upright("FcγRI,max"))$, $K_(upright("IFN"))$, or the slow IgG time constant; the IFN-γ dependence of FcγRI is a single-laboratory in-vitro finding; and the model's other parameters remain uncalibrated to ME/CFS.

(Origin: brainstorm.)

*Consequence:* If the gated, slow IgG term materially changes output at physiological IFN-γ, it predicts a distinct late-onset, sustained mediator signature that can be separated from the immediate neuropeptide route, giving researchers a quantitative test of whether the IgG route is large enough — and in which patients — to matter at all.
] <spec:fcgri-ifn-gated-ode>

