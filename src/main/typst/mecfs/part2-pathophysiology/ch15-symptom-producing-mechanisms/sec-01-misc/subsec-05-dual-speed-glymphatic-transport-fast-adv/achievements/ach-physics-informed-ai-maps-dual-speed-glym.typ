#import "../../../../../shared/environments.typ": *

#achievement(title: [Physics-Informed AI Maps Dual-Speed Glymphatic Flow])[
Toscano et al.\ (2026) developed MR-AIV (Magnetic Resonance Artificial Intelligence Velocimetry), a physics-informed neural network framework that reconstructs 3D fluid velocity fields from dynamic contrast-enhanced MRI. Applied to the mouse brain, MR-AIV revealed two mechanistically distinct glymphatic transport regimes @Toscano2026MRAIV:

- *Fast advective flow ($tilde$3 μm/s).* Perivascular transport along cerebral arteries, driven by the LC-NE vasomotion pump. This is the high-throughput clearance component that moves waste rapidly through paravascular conduits.
- *Slow diffusive transport ($tilde$0.1 μm/s).* Interstitial diffusion through brain parenchyma, mediated by AQP4 water channels at astrocytic endfeet. This is the rate-limiting bottleneck for waste that has entered deep tissue.

The 30-fold velocity difference is not a continuous spectrum but a genuine bifurcation between two transport modes: advection (pressure-driven, perivascular) and diffusion (concentration-gradient-driven, interstitial). MR-AIV simultaneously provides tissue permeability estimates and pressure field maps --- quantities inaccessible to any other method.

(Certainty: 0.50 for the dual-speed mechanism in mice. Caveats: $n=5$ mice; not yet applied to disease models or humans; method validated against synthetic ground truth ($<2%$ reconstruction error) not independent physical flow measurements; no replication. The $<2%$ error is against computational ground truth — a known optimistic form of PINN validation. Published in _Science Advances_ (2026); unreplicated; no ME/CFS data. Downgraded from 0.75: this is a methodological advance in 5 mice. Certainty calibrated to be consistent with other small-n animal studies in this paper (cf. cert 0.30 for n=4--6 mouse studies).)
] <ach:ch15-mraiv-dual-speed>
