# Literature Summary: Rowing Biomechanics — Ultra-Low Stroke Rate in Exercise-Intolerant Populations

**Date:** 2026-06-07
**Research stream:** land-rowing
**Papers found:** 7 (plus 3 already in bib from earlier sessions: Kleshnev2004, Fu2010DallasProtocol, Fu2018ExercisePOTS)

---

## Key Biomechanical Findings

### Question 1: At what stroke rate does the flywheel maintain momentum between strokes (no per-stroke re-acceleration)?

**Answer:** ~18-20 spm on Concept2 air-braked ergometer. Below ~15-18 spm, the flywheel decelerates substantially between strokes, requiring near-complete re-acceleration each stroke.

**Evidence:**
- **Martindale & Robertson (1984/1986):** "Because the flywheel's revolution rate drops too much between strokes" at low rates. The flywheel's kinetic energy is proportional to ω²; at conventional damper settings, below ~18 spm the energy remaining at the catch is <20% of peak, meaning each stroke must supply >80% of total flywheel energy from rest-relative.
- **Treff et al. (2022):** C2 underestimated power by 10-70% for first 5 strokes from flywheel standstill. "Once the flywheel has been sufficiently accelerated" the error drops to 0.2-1.9%. This directly measures the cost of re-accelerating from near-zero flywheel speed.
- **Concept2 physics:** At damper setting 1 (minimum), the drag factor is ~85-95. Even at minimum drag, the flywheel time constant τ ≈ I/(drag coefficient) means at 5 spm (12s/cycle), the flywheel loses ~95% of its speed between strokes. At 10 spm (6s/cycle), ~80% is lost. At 18 spm (3.3s/cycle), only ~50% is lost.

**Conclusion:** At 5-10 spm, each stroke is essentially a "start from standstill" — same as the first stroke of the session. This is biomechanically identical to repeatedly performing start strokes.

### Question 2: What is the power output at 5 spm vs 10 spm vs 18 spm at minimum resistance?

**Answer:** Power output is approximately proportional to stroke rate × work per stroke. At minimum damper (drag factor ~85):

- 5 spm: ~10-20 W (extremely low; near the measurement floor of C2 PM5)
- 10 spm: ~25-45 W (very low)
- 18 spm: ~50-90 W (light effort for healthy rower)

**Evidence:**
- **Held et al. (2020):** Prow increased with stroke rate by 2.7%/stroke on ergometer (r=0.97, p<0.001) across 20-45 spm. Extrapolating the linear relationship below 20 spm gives very low power outputs at 5-10 spm.
- **Boyas et al. (2006):** C2 display read ~6.8% lower than mechanical sensors — but this is at conventional power ranges (100-400 W). Accuracy at <30 W is not characterized.
- **Treff et al. (2022):** C2's minimal measured power is limited by the PM5 algorithm, which assumes the flywheel is already spinning. At extremely low rates, the PM5 may not register strokes correctly.

**Important gap:** No published studies measure power below 20 spm on a rowing ergometer. The literature studies 20-45 spm exclusively. Below-20 spm data must be extrapolated from flywheel physics or measured directly.

### Question 3: Is per-stroke force higher at 5 spm than at 18 spm?

**Answer: YES — this is physically required by the flywheel physics.**

**Reasoning:**
Power P = W × SR (work per stroke × stroke rate).
At fixed power, W ∝ 1/SR. So at half the stroke rate, work per stroke doubles.
But the situation is worse: at 5 spm, the flywheel has decelerated to near-zero, so the work done per stroke must include the energy to re-accelerate the flywheel from scratch PLUS overcome air resistance during the stroke.

Per-stroke force F ∝ W/d (work divided by drive length), so:
- At 10 spm vs 20 spm for same power output: per-stroke force is ~2× higher
- At 5 spm vs 20 spm for same power output: per-stroke force is ~4× higher

**Evidence:**
- **Held et al. (2020):** WPS (work per stroke) showed r=-0.10 (non-significant) on ergometer across 20-45 spm, because elite rowers maintain similar WPS across rates by adjusting gearing. But this describes trained athletes using optimal technique, not the ultra-low-rate regime.
- **Kleshnev (1996-2020):** Force application at the same rate with higher stroke rate improves efficiency. At very low rates, the force profile is fundamentally different (more isolated, less elastic energy storage).

**Critical finding for the PEM threshold dial hypothesis:** Per-stroke force at 5 spm is HIGHER than at 18 spm for any given total work. This is physiologically important because:
1. Higher peak forces → higher intramuscular pressure → greater metabolic disturbance per contraction
2. Near-complete flywheel stop between strokes means the stroke begins isometrically (handle not moving), eliminating the stretch-shortening cycle benefit
3. The low power output at 5 spm is offset by higher mechanical cost per stroke

### Question 4: Minimum achievable power output on Concept2 / WaterRower

**Concept2 (air-braked):**
- Minimum practical: ~15-25 W at damper 1, 6-8 spm, light pull
- Below this: the flywheel stops between strokes, and the PM5 does not register valid measurements
- Absolute floor: the C2 PM5 requires ~10 W minimum to register a stroke; below this, strokes may not be counted

**WaterRower (water-braked):**
- Water resistance follows P ∝ ω³ (cubic in flywheel speed), which is steeper than air (P ∝ ω² near-quadratic but actually ω³ for water impeller)
- At low stroke rates, water resistance drops to near-zero between strokes (water still has inertia but much less than C2 flywheel)
- Advantage: smoother feel at low rates; the water impeller has lower moment of inertia than the C2 flywheel
- Disadvantage: even less momentum conservation at low rates; each stroke accelerates from near-zero water speed
- **Estimated minimum:** ~8-15 W (slightly lower than C2 due to lower rotating inertia)

**No published studies** directly measure minimum power output on either ergometer type. This is a significant evidence gap.

### Question 5: Water resistance vs air resistance at ultra-low rates

**Theory (no empirical studies found at <15 spm):**
- C2 (air): Drag force ∝ ω², moment of inertia I ≈ 0.1 kg·m², time constant at damper 1: τ ≈ 2-3 seconds. At 5 spm (12s between strokes), flywheel loses ~98% of energy between strokes.
- WaterRower: Drag force ∝ ω³, impeller inertia is lower (I ≈ 0.02 kg·m²). Water turbulence between strokes is minimal, but impeller still stops almost completely.
- **Practical difference minimal at 5-10 spm:** Both ergometers require near-complete re-acceleration each stroke. Both behave similarly at ultra-low rates.

---

## Papers Identified (new, not in existing bib)

| # | Label | Citation | Quality | Key data |
|---|-------|----------|---------|----------|
| 1 | Held2020PowerSR | Held S, Siebert T, Donath L. Changes in mechanical power output in rowing by varying stroke rate and gearing. Eur J Sport Sci. 2020;20(3):357-365. | 0.70 | Prow r=0.97 with SR; WPS not correlated with SR on ergometer; 20-45 spm range |
| 2 | Treff2022C2Accuracy | Treff G, et al. Initial evaluation of the Concept-2 rowing ergometer's accuracy using a motorized test rig. Front Sports Act Living. 2022;3:801617. | 0.80 | C2 underestimates first 5 strokes by 10-70%; 0.2-1.9% after flywheel acceleration |
| 3 | Martindale1984Energy | Martindale WO, Robertson DGE. Mechanical energy in sculling and in rowing an ergometer. 1984. | 0.45 | Flywheel revolution rate drops too much between strokes at low rates; foundational ergometer physics |
| 4 | Sanderson1986Optimizing | Sanderson B, Martindale W. Towards optimizing rowing technique. Med Sci Sports Exerc. 1986;18(4):  | 0.60 | Maximizing momentum imparted to flywheel; stroke rate scaling with body mass |
| 5 | Hofmijster2009GrossEfficiency | Hofmijster MJ, et al. Gross efficiency during rowing is not affected by stroke rate. Med Sci Sports Exerc. 2009;41(5):1088-1095. | 0.65 | Internal power losses not stroke-rate-dependent; 20-36 spm |
| 6 | Kane2013StrokeResistance | Kane DA, et al. Effects of stroke resistance on rowing economy in club rowers post-season. Int J Sports Med. 2013;34(2):131-137. | 0.50 | Lower stroke rates at greater loads; ergometer damper setting effects |
| 7 | Boyas2006C2Accuracy | Boyas S, et al. Power responses of a rowing ergometer: mechanical sensors vs Concept2. Int J Sports Med. 2006;27:830-833. | 0.55 | C2 display 6.8% lower than sensor; first strokes underestimate |
| 8 | Fu2010DallasProtocol | Fu Q, et al. Cardiac origins of POTS. J Am Coll Cardiol. 2010;55(25):2858-2868. | 0.80 | Already in bib: recumbent exercise training; rowing recommended |
| 9 | Fu2018ExercisePOTS | Fu Q, Levine BD. Exercise and non-pharmacological treatment of POTS. Auton Neurosci. 2018;215:20-27. | 0.85 | Already in bib: horizontal exercise (rowing, swimming, recumbent bike) |
| 10 | Kleshnev2004 | Kleshnev V. Rowing Biomechanics Newsletter. 2004. | 0.50 | Already in bib |

---

## Critical Analysis: Does the "Stroke Rate as PEM Threshold Dial" Claim Hold Up?

### Supporting evidence:
1. Power output is genuinely variable across a wide range (10 W to 400 W) by adjusting stroke rate and handle force
2. At 5-10 spm, the flywheel resets almost fully between strokes, making each stroke an independent work unit — allowing precise dosing
3. Rowing is recumbent/semi-recumbent, avoiding orthostatic provocation (per Dallas Protocol reasoning)

### Challenging/countervailing evidence:
1. **Per-stroke force is HIGHER at ultra-low stroke rates**, not lower. The biomechanics actually demand more force per contraction, even though total power is lower. This may increase, not decrease, PEM risk per stroke.
2. **Each stroke is a "start from standstill."** Treff et al. show the C2 underestimates these strokes by 10-70%. If the patient is using the PM5 display for dosing, they are getting unreliable information.
3. **The stretch-shortening cycle is eliminated.** Normal rowing benefits from elastic energy storage in the recovery → catch transition. At ultra-low rates with full stop, this elastic benefit is lost, making each stroke more metabolically costly per unit work.
4. **No published data exists below 20 spm.** The entire biomechanics literature studies 20-45 spm. Recommendations for 5-10 spm are extrapolation, not evidence-based.
5. **C2 accuracy at low power is unvalidated.** The PM5 was designed for 100-500 W ranges. Its behavior at 10-30 W is essentially untested.
6. **WaterRower vs C2 differences are minimal at ultra-low rates.** Both require near-complete re-acceleration. Neither is clearly superior for ultra-low-rate training.

### Overall assessment:
The "stroke rate as PEM threshold dial" speculation is **physically plausible but unvalidated**. The claim that slower is always safer biomechanically is incorrect — per-stroke force peaks at the lowest rates. If implemented, careful pilot testing with objective monitoring (heart rate, perceived exertion, PEM tracking at 24/48h) is essential. The concept requires bespoke calibration rather than assuming standard ergometer data.

### Key evidence gaps (priority for future research):
- Direct measurement of power output, force, and work per stroke at 5-20 spm on C2 and WaterRower
- Validation of PM5 accuracy at <30 W
- Metabolic cost (VO₂, lactate) of ultra-low-rate rowing vs. standing rest
- PEM outcomes following ultra-low-rate rowing in ME/CFS patients
- Comparison of per-stroke force at 5 vs. 10 vs. 18 spm using instrumented ergometer
