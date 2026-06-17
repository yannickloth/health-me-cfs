#import "../../../../shared/environments.typ": *

#limitation(title: [Cascade Example Assumptions])[
This example treats the three effects as independent multiplicative factors. In the full coupled ODE system (@ch:integrated-systems), the interactions are more complex: ROS-mediated damage reduces $alpha_(upright("CI"))$ over time, $"NAD"^"+"$ depletion affects both Krebs and ETC flux, and the membrane potential depends on all proton-pumping complexes, not just Complex I. The multiplicative approximation is a pedagogical simplification; the true cascade dynamics require numerical simulation of the coupled system.
]
