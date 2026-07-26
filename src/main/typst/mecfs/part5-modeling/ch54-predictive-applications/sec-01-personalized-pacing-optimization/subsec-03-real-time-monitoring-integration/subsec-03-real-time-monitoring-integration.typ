#import "../../../../shared/environments.typ": *

=== Real-Time Monitoring Integration

Wearable devices (heart rate monitors, accelerometers, continuous glucose monitors) can provide real-time estimates of energy expenditure, enabling dynamic updating of the remaining daily energy budget. The model-based approach adds value beyond simple step counting by accounting for the nonlinear relationship between activity intensity and energy cost: moderate activity for extended duration may cost less total energy than brief intense exertion, because the latter triggers disproportionate ROS production and immune activation.

#include "limitations/pacing-model-calibration.typ"

==== Severity-Stratified Monitoring Strategy

The piecewise recovery scaling (Equation @eq:recovery-scaling, Table @tab:recovery-regimes) predicts that optimal monitoring strategies differ by severity level. At moderate severity (plateau regime), functional milestones (step count, SF-36) change fast enough to track progress directly. At the extremely severe end (floor regime), functional change is extremely slow, requiring a shift to _rate-of-change_ monitoring.

#include "speculations/spec-monitoring-strategy-shift.typ"

#include "speculations/spec-icuaw-parallel.typ"

