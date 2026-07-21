#import "../../../shared/environments.typ": *

== Cardiovascular--Metabolic Integration
<sec:cardiovascular-metabolic>

Oxygen delivery to tissues depends on cardiac output, blood oxygen content, and microvascular perfusion. The cardiovascular--metabolic coupling links the autonomic model (heart rate, blood pressure) to the energy metabolism model (oxygen-dependent ATP production):

$
upright("DO")_2 = upright("CO") dot.op upright("CaO")_2 = (upright("HR") times upright("SV")) dot.op (1.34 dot.op [upright("Hb")] dot.op upright("SaO")_2 + 0.003 dot.op upright("PaO")_2)
$ <eq:o2-delivery>

where DO₂ is oxygen delivery, CO is cardiac output (heart rate $times$ stroke volume), and CaO₂ is arterial oxygen content. Tissue oxygen extraction determines the available oxygen for mitochondrial respiration:

$
upright("VO")_2 = upright("DO")_2 dot.op upright("O")_2 upright("ER") = upright("DO")_2 dot.op frac(upright("CaO")_2 - upright("CvO")_2, upright("CaO")_2)
$ <eq:o2-consumption>

In ME/CFS, reduced cardiac output (due to autonomic dysfunction and hypovolemia), impaired oxygen extraction (due to microvascular dysfunction or mitochondrial uncoupling), or both can reduce tissue VO₂. The oxygen consumption $upright("VO")_2$ constrains the maximal ETC flux in the energy model: $J_(upright("CIV,max")) prop upright("VO")_2$. Reduced cerebral blood flow has been documented in ME/CFS patients @Novak2022CBFReview, suggesting that the brain may be particularly vulnerable to this cardiovascular--metabolic mismatch.

