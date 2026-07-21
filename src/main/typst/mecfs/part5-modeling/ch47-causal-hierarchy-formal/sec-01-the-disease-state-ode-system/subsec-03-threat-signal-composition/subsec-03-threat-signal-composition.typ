#import "../../../../shared/environments.typ": *

=== Threat Signal Composition

The composite threat signal $cal(T)$ that governs safe mode activation is a weighted sum:

$ cal(T) = w_"cyto" dot C_"pro" + w_"ROS" dot ["ROS"] + w_"LPS" dot ["LPS"] + w_V dot V $

where $w_"cyto" = 0.35$, $w_"ROS" = 0.25$, $w_"LPS" = 0.20$, $w_V = 0.20$ are weights reflecting the relative contribution of each signal. Note that $["ROS"]$ and $["LPS"]$ are derived quantities (functions of the primary state variables) rather than independent state variables. These weights are not fixed constants across patients---genetic polymorphisms in oxidative stress sensing may alter $w_"ROS"$ (see @sec:threat-miscalibration), and the dominant signal source shifts as disease progresses.

