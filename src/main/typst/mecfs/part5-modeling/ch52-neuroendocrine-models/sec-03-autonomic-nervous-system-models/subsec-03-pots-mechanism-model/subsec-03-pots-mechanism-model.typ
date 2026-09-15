#import "../../../../shared/environments.typ": *

=== POTS Mechanism Model
<sec:pots-model>

Postural orthostatic tachycardia syndrome (POTS), defined as a sustained heart rate increase $gt.eq 30$ bpm within 10 minutes of standing without orthostatic hypotension, is prevalent among ME/CFS patients. The orthostatic model (Equations @eq:orthostatic and @eq:baroreflex) reproduces POTS when the parameter combination produces adequate MAP maintenance (through excessive sympathetic activation) at the cost of sustained tachycardia. The model identifies three parameter regimes corresponding to distinct POTS subtypes:

+ *Neuropathic POTS*: reduced $G_V$ (impaired parasympathetic function) with compensatory sympathetic overdrive
+ *Hypovolemic POTS*: reduced effective blood volume (increased $Delta P_(upright("grav"))$ effect) requiring greater compensatory response
+ *Hyperadrenergic POTS*: elevated baseline $S$ and increased $alpha_S$ gain, producing excessive heart rate response to normal orthostatic stress

This subtype classification has treatment implications: hypovolemic POTS responds to volume expansion (saline, fludrocortisone), neuropathic POTS to parasympathetic enhancement (pyridostigmine @Raj2005Pyridostigmine), and hyperadrenergic POTS to sympatholytic agents (propranolol, clonidine).

#include "../../../../figures/fig-tryptophan-branching-model.typ"

