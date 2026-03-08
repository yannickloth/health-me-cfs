# When Your Cells Can't Make Energy: The Biology Behind ME/CFS

Your body produces and recycles roughly 50 kg of ATP — its molecular fuel — every single day. That's your own body weight in energy currency, turned over and rebuilt continuously just to keep you alive and functioning.

Now imagine that process breaking down.

Not completely. Not like a power outage. More like a power grid running at half capacity, with damaged equipment that gets worse every time you push it. That's the metabolic reality facing millions of people with Myalgic Encephalomyelitis/Chronic Fatigue Syndrome (ME/CFS).

---

## How your cells normally make energy

Every cell runs on ATP. The production line has three stages, and they need to work in sequence:

**Stage 1 — Glycolysis.** In the cell's cytoplasm, glucose gets broken down into pyruvate (a smaller molecule that feeds the next stage). This is fast but inefficient: 2 ATP per glucose molecule. No oxygen required.

**Stage 2 — The Krebs cycle.** Inside mitochondria (the cell's power plants), pyruvate is processed further, generating electron carriers that feed into the final stage.

**Stage 3 — The electron transport chain (ETC).** This is where the real power comes from. Electrons pass through a series of protein complexes in the mitochondrial membrane, pumping protons to build an electrochemical gradient. That gradient drives ATP synthase — a molecular turbine — that accounts for the vast majority of ATP production.

Together, the three stages yield roughly 30-32 ATP per glucose — and Stage 3 produces around 90% of that total. When it fails, everything downstream suffers.

---

## What goes wrong in ME/CFS

Research has identified dysfunction at multiple points in this chain. Here's what the evidence shows — and what the math reveals.

**Impaired Complex I activity.** Studies on lymphocytes (immune cells from blood) from ME/CFS patients show reduced function of Complex I, the first and largest component of the electron transport chain. When we modeled this mathematically, something striking emerged: the relationship between Complex I damage and ATP loss isn't proportional. There's a cliff.

ATP synthase only works when the electrical potential across the mitochondrial membrane (ΔΨ) exceeds a minimum threshold — about 110 millivolts. Its output is proportional to how far above that threshold the potential sits:

> **Model rule:** ATP synthase driving force = (ΔΨ − 110) / ΔΨ

In health, ΔΨ sits at about 160 mV — plenty of headroom:

> Healthy driving force = (160 − 110) / 160 = 50/160 = **31%** of theoretical maximum

With 35% Complex I impairment, reduced proton pumping lowers ΔΨ to about 135 mV:

> ME/CFS driving force = (135 − 110) / 135 = 25/135 = **19%** of maximum

The drop from 31% to 19% is a **39% reduction in ATP synthase output** — from only 35% Complex I damage. And the closer ΔΨ gets to 110 mV, the steeper the cliff becomes: at 125 mV, the driving force is just 12%; at 115 mV, only 4%. This is why patients near the threshold experience catastrophic energy failure from seemingly modest additional insults.

**NAD+ redox imbalance.** The Krebs cycle depends on NAD+ (nicotinamide adenine dinucleotide), a molecule that shuttles electrons to the electron transport chain. It cycles between two forms: NAD+ ("empty," ready to pick up electrons) and NADH ("loaded," carrying electrons to deliver). In ME/CFS, this balance is shifted — less in the usable NAD+ form, more stuck as spent NADH — a redox imbalance estimated at 10-40%.

The Krebs cycle's throughput depends on the ratio of NAD+ to total NAD:

> **Model rule:** Krebs flux ∝ [NAD+] / ([NAD+] + [NADH])

In health, this ratio sits at about 0.85 (most NAD is in the oxidized, ready-to-use form). With a 30% redox shift — NAD+ converting to NADH because the impaired electron transport chain can't recycle it fast enough — the ratio drops to about 0.60:

> Healthy Krebs flux factor = 0.85
> ME/CFS Krebs flux factor = 0.60
> Reduction = (0.85 − 0.60) / 0.85 = **29%** — roughly matching the 30% redox shift

This near-1:1 relationship holds when NAD+ is the limiting factor. When other substrates (acetyl-CoA, oxaloacetate) are also depleted — as may occur in ME/CFS — the deficits multiply rather than add. That 29% Krebs cycle loss compounds multiplicatively with electron transport chain impairment.

**A broken cleanup system.** Damaged mitochondria need to be identified and replaced through a process called mitophagy — essentially cellular quality control. But mitophagy itself requires ATP. When mitochondria are damaged and ATP is low, the cell can't remove the broken machinery because the energy needed for cleanup is exactly what the broken machinery fails to produce. This is a catch-22 that our mathematical modeling identified as a potential tipping point: below a critical ATP level, quality control collapses, and damaged mitochondria accumulate unchecked.

**Runaway free radicals.** When the electron transport chain is impaired, electrons leak out and react with oxygen to form reactive oxygen species (ROS) — free radicals that damage the very enzymes they leaked from.

The model captures this with a simple principle: the slower the chain runs relative to its capacity, the more electrons leak:

> **Model rule:** ROS production ∝ (1 − actual flux / maximum flux)

In health, Complex I runs at about 95% of capacity. The leak fraction is small:

> Healthy ROS factor = 1 − 0.95 = **0.05**

With 35% Complex I impairment (running at 65% of capacity):

> ME/CFS ROS factor = 1 − 0.65 = **0.35**

> Ratio: 0.35 / 0.05 = **7×** more ROS production

This 7-fold increase explains why oxidative stress markers are consistently elevated in ME/CFS research — and why the damage is self-reinforcing: more ROS damages more enzymes, which slows the chain further, which produces more ROS. A vicious cycle.

---

## Why exercise makes it worse — the biology of "crashing"

The hallmark symptom of ME/CFS is post-exertional malaise (PEM): a delayed, disproportionate worsening of symptoms after physical, cognitive, or even emotional exertion. This isn't "being tired after exercise." It's a measurable metabolic event.

Two-day cardiopulmonary exercise testing (CPET) shows something that doesn't happen in any other fatigue condition: ME/CFS patients perform *worse* on day 2 than on day 1. Healthy controls maintain or improve. Deconditioned people maintain. People with depression maintain. Only in ME/CFS does the system degrade from use.

Our energy metabolism model explains the mechanism:

1. **Exertion increases ATP demand** — muscles, brain, or immune cells need more energy.
2. **The impaired system can't keep up** — production maxes out below demand, and ATP levels fall.
3. **The cell enters crisis** — ATP depletion triggers the cell's energy-deficit alarm system (an energy-sensing enzyme called AMPK), inflammatory cascades, and what researcher Robert Naviaux has described as a "cell danger response."
4. **ROS spike** — the remaining functional mitochondria are pushed harder to compensate, generating a burst of free radicals from the overloaded electron chain.
5. **Secondary damage follows** — but on a delayed timescale. Inflammatory mediator production peaks 6-24 hours after tissue damage. Downstream effects like tissue swelling and nerve sensitization follow hours to days later.

This sequence explains the characteristic 12-72 hour delay of PEM. The exertion is the trigger, but the symptoms come from the secondary damage wave.

And here's the critical part: the recovery machinery is impaired too. In a healthy person, the damage from exercise is repaired overnight. In ME/CFS, the repair processes themselves require energy the system can't spare.

---

## The energy envelope — a mathematical framework for pacing

The clinical strategy called "pacing" — staying within your energy limits — has a rigorous mathematical basis. The available daily energy budget is:

**Budget = Maximum production capacity − Baseline vital functions − Ongoing repair costs**

In ME/CFS, all three terms move in the wrong direction. Maximum production is lower (damaged mitochondria). Baseline costs may be higher (chronic immune activation burns energy). Repair costs are elevated (ongoing oxidative damage needs fixing). What's left for daily activities — walking, thinking, talking — can be startlingly small.

Staying within this envelope prevents PEM episodes. Over time, our model predicts this may allow partial mitochondrial recovery by reducing the ROS-mediated damage that maintains the cycle.

---

## Why single treatments usually aren't enough

When we coupled the energy model with immune dynamics, autonomic regulation (the nervous system's automatic control of heart rate, blood pressure, and digestion), and hormone signaling into an integrated 64-variable mathematical system, a striking result emerged: the model predicts that the disease state is *stable*. Not in the medical sense of "not getting worse," but in the mathematical sense: the system has settled into an alternative equilibrium — a disease attractor — that actively resists return to health. This remains a theoretical prediction, but it's consistent with the clinical reality that ME/CFS rarely resolves spontaneously.

The energy deficit impairs immune function. Impaired immunity allows chronic low-grade activation. Immune activation drains energy. Energy deficits impair stress hormones. Disrupted hormones fail to suppress inflammation. Inflammation damages mitochondria. And so on.

Network controllability analysis from our modeling suggests that 4-6 simultaneous intervention points may be needed to shift the system — a theoretical prediction from the model's network structure, not yet tested empirically. But it offers a plausible mathematical explanation for why single-drug clinical trials in ME/CFS have consistently disappointed, while patients who improve tend to report multi-pronged approaches.

---

## Why mathematical models matter

Verbal descriptions of disease mechanisms — "immune activation causes fatigue" — are useful but imprecise. They don't tell you *how much* immune activation produces *how much* fatigue, whether the relationship is linear or has tipping points, or what happens when multiple mechanisms interact simultaneously.

Mathematical models force precision. When you write an equation, every assumption becomes explicit and every prediction becomes testable. "Mitochondrial damage reduces energy" becomes "35% Complex I impairment reduces ATP synthase output by 39% due to a nonlinear threshold effect" — a claim that can be confirmed or refuted with data.

This matters for three practical reasons:

1. **Identifying leverage points.** Verbal reasoning struggles with feedback loops. When A affects B, B affects C, and C feeds back to A, intuition fails. Mathematical network analysis can identify which intervention points would actually shift the system — and which would be absorbed by compensatory mechanisms.

2. **Explaining treatment failure.** Models can show *why* a drug that targets one mechanism might fail — not because the mechanism is wrong, but because the system compensates through parallel pathways. This reframes negative clinical trials from "the hypothesis was wrong" to "the intervention was insufficient."

3. **Generating testable predictions.** Every model parameter — the 110 mV threshold, the 0.85 NAD+ ratio, the ROS amplification factor — is a prediction that can be measured. Confirming or refuting these values progressively constrains the model, turning a theoretical framework into a quantitative tool.

The models presented here are a starting point, not an endpoint. Their value lies not in being right, but in being *precisely wrong* in ways that data can correct.

---

## What this means for patients, clinicians, and researchers

**For patients**: Your exhaustion has a biological basis — measurable, modelable, and mechanistically understood at increasing resolution. "Pushing through" doesn't build resilience; it damages an already impaired system. Pacing isn't psychological — it's the mathematically optimal strategy for an energy-constrained system.

**For clinicians**: Two-day CPET (cardiopulmonary exercise testing) is the most informative diagnostic test — but it reliably triggers PEM, sometimes severe and lasting weeks. It should only be performed when the diagnostic or legal benefit (e.g., disability documentation) justifies the cost to the patient, and never without informed consent about the expected crash. When performed, day-2 decrements in VO2max (peak oxygen consumption) are specific to ME/CFS and directly quantify the metabolic impairment. Consider metabolic support — CoQ10 (coenzyme Q10, an electron carrier in the transport chain) and NAD+ precursors — as adjuncts, with the caveat that our models predict greatest benefit in moderate impairment, not mild or severe.

**For researchers**: The field urgently needs longitudinal data that tracks patients over time across multiple biological layers — genetics, metabolites, immune markers, proteins. The mathematical models exist to turn that data into treatment predictions, but current datasets are too small and too snapshot-based to constrain them. Projects like DecodeME are exactly what's needed.

---

## Important caveats

The mathematical models described here are theoretical frameworks, not validated clinical tools. They formalize hypotheses — translating verbal descriptions of "immune activation causes fatigue" into systems of equations that can be tested, parameterized, and potentially falsified. The models have not been computationally implemented or validated against patient data. They represent a formalization of current understanding, not established quantitative science.

This work is openly available (CC-BY 4.0) as part of a comprehensive ME/CFS medical documentation: https://zenodo.org/records/18905326.

---

*Yannick Loth — Independent Researcher — ORCID: 0009-0003-5754-827X*

*#MECFS #MyalgicEncephalomyelitis #ChronicFatigueSyndrome #EnergyMetabolism #Mitochondria #OpenAccess #OpenScience #MedicalResearch #Neuroimmunology #LongCOVID #PatientAdvocacy #SystemsBiology*
