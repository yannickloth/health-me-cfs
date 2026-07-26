#import "../../../../shared/environments.typ": *

=== Autonomic Balance and Orthostatic Intolerance (Equations @eq:ans-balance and @eq:baroreflex)

*Measurements required.*
(1) Heart rate variability (HRV): time-domain (SDNN, RMSSD) and frequency-domain (LF/HF ratio) from 24-hour Holter or 5-minute resting ECG (why: constrains sympathetic/parasympathetic balance $S/V$).
(2) Active standing test or tilt-table test: HR and MAP at 1, 3, 5, 10 minutes (why: constrains baroreflex gains $G_S$, $G_V$ and response time constants $tau_(upright("MAP"))$, $tau_(upright("HR"))$).
(3) Blood volume estimation: dye dilution or impedance cardiography (why: determines whether orthostatic intolerance is hypovolemic).

*Worked example.*
POTS assessment: patient has resting HR = 72, standing HR at 10 min = 108 ($Delta$HR = 36, meeting POTS criterion of $gt.eq$30). Standing MAP is maintained at 82 mmHg (vs. 85 supine)---no orthostatic hypotension. Using the model with reduced blood volume ($Delta P_(upright("grav"))$ increased by 30%) and reduced $G_V$ (parasympathetic gain halved): the model predicts the observed pattern---adequate MAP maintenance via excessive sympathetic compensation, at the cost of tachycardia and elevated cardiac energy demand. The energy cost of standing: the sympathetic overdrive increases cardiac oxygen consumption by ~15%, directly reducing the activity energy budget.

*Inter-model dependencies.*
_Inputs_: histamine from mast cell model (vasodilation), cortisol from HPA (stress response modulation), pain from sensitization model (sympathetic drive). _Outputs_: heart rate and MAP to oxygen delivery equation (Chapter @ch:integrated-systems); vagal tone to gut motility (Chapter @ch:integrated-systems); sympathetic tone to energy demand.

*Scope and rationale.*
The two-variable ANS model ($S$, $V$) with baroreflex feedback captures the core hemodynamic physiology. It omits thermoregulatory reflexes, respiratory sinus arrhythmia, and detailed baroreceptor afferent processing. These could be added for specific applications (e.g., heat intolerance modeling, see ch10:@spec:vasomotor-constriction-bias for a proposed ET-1 vasomotor mechanism and ch06:@spec:mitochondrial-reserve-thermoreg for spare respiratory capacity as thermoregulatory bottleneck) but are unnecessary for the primary targets: orthostatic HR/MAP dynamics and POTS subtyping.

*Falsification criteria.*
The model predicts three distinct POTS parameter regimes (neuropathic, hypovolemic, hyperadrenergic) with different treatment responses. *Falsified if*: POTS subtype classification by tilt-table hemodynamics does not predict differential treatment response (e.g., if patients classified as hypovolemic by the model respond equally well to parasympathomimetics as to volume expansion).

*Clinical implications.*
*Whom to treat*: all ME/CFS patients with orthostatic symptoms (the majority). *How*: the model provides mechanistic subtyping. Hypovolemic POTS ($Delta P_(upright("grav"))$ dominant): volume expansion (saline infusions, fludrocortisone, compression garments, increased salt/fluid intake). Neuropathic POTS ($G_V$ reduced): parasympathomimetics (pyridostigmine @Raj2005Pyridostigmine). Hyperadrenergic POTS ($S$ elevated): sympatholytics (propranolol, clonidine). Mixed presentations: combination therapy targeting the dominant mechanism first.

