#import "../../../../shared/environments.typ": *

=== Fission--Fusion Balance

Mitochondrial morphology is dynamically regulated. Fusion (mediated by mitofusins MFN1/2 and OPA1) creates interconnected networks that share metabolites and buffer local damage. Fission (mediated by DRP1) segregates damaged portions for removal by mitophagy. The model tracks healthy ($M_h$) and damaged ($M_d$) mitochondrial mass:

$
frac(d M_h, d t) &= J_(upright("biogenesis")) + k_(upright("fusion")) dot.op M_h dot.op M_d dot.op p_(upright("rescue")) - k_(upright("fission")) dot.op M_h dot.op r_(upright("damage"))([upright("ROS")]) - d_h M_h \
frac(d M_d, d t) &= k_(upright("fission")) dot.op M_h dot.op r_(upright("damage"))([upright("ROS")]) + k_(upright("fusion")) dot.op M_h dot.op M_d dot.op (1 - p_(upright("rescue"))) - J_(upright("mitophagy")) - d_d M_d
$ <eq:mito-dynamics>

where $J_(upright("biogenesis"))$ is the rate of new mitochondrial production (regulated by PGC-1$alpha$, itself activated by AMPK and SIRT1), $p_(upright("rescue"))$ is the probability that fusion with a healthy mitochondrion rescues a damaged one, $r_(upright("damage"))([upright("ROS")])$ is the ROS-dependent damage rate, and $J_(upright("mitophagy"))$ is the rate of selective removal of damaged mitochondria via the PINK1/Parkin pathway.

