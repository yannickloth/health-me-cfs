# Integration Guide: Muscle Electro-Stimulation and Fatigue (muscle-electrostimulation-fatigue)

**Phase 1 deliverable.** For the main session to act on in Phases 2–3.

## Question
Does EMS/NMES induce fatigue/PEM in ME/CFS, or is it a safe exercise substitute for deconditioned/bedbound patients?

## Evidence verdict (for Phase 2 decision)
**Likely PARTIAL.** No clinical trials of EMS/NMES in ME/CFS exist. Evidence is indirect: in-vitro + neurophysiological + adjacent-population deconditioning + one harm case. Several papers (Gibson1993, Edwards1993, Jamal1991) are legacy nulls. No paper reaches raw certainty ≥ 0.60; the highest discounted certainty is 0.55 (two ME/CFS cohort studies with n≤12 physiology subsets). Mixed direction (F1 safe vs F4 harmful vs F3 null vs F2 mechanism) → PARTIAL, `#speculation`/`#open-question` only.

## Bib keys (VERIFIED via awk — cite these, exact case)

```
vonDeneen2024EMSrhabdo
Brown2015EPSAMPK
Gibson1993CFSmuscle
Edwards1993muscleHistopathology
Jamal1991postviralNeurophysiology
Jammes2019neuromuscularCFS
Jacobsen1991fibromyalgiaTwitch
Burgess2021NMEScovidICU
Maffiuletti2019NMESspaceflight
Inns2021NMESPNSfatigability
Tajima2021hybridNMESoxygen
Vecchiet2003oxidativeElectrical
```
Location: `src/main/typst/mecfs/bib/exercise-pem.bib` (research_stream `muscle-electrostimulation-fatigue`).

## Reuse keys (already in corpus — do NOT re-add, cite directly)
- `Brown2018AMPK` (energy-metabolism.bib) — AMPK rescue confirms Brown 2015 defect.
- `Bao2022NMESICU`, `Dirks2015NMES` (treatments.bib) — NMES prevents ICU atrophy.
- `Jammes2020MembranePotential`, `Jammes2021muscle` — ME/CFS muscle electrophysiology.
- `Charlton2026MuscleBedrest` (musculoskeletal.bib) — ME/CFS muscle ≠ bed-rest deconditioning.

## Recommended integration targets

1. **ch32 lifestyle interventions (primary).** Environment `#speculation` (or `#open-question` for the F1-vs-F4 tension): NMES as a *possible* passive muscle-preservation modality for bedbound/very-severe patients — balanced against the rhabdomyolysis case (vonDeneen2024) and the metabolic-load finding (Tajima2021). Must state: no ME/CFS trials; severity applicability = bedbound/very-severe only, otherwise unknown.
2. **Part 2 muscle/mitochondrial mechanisms (secondary).** Environment `#speculation` or `#open-question`: contraction metabolism as PEM trigger — electrically-driven contraction reproduces the ME/CFS AMPK/glucose defect (Brown2015EPSAMPK + reuse Brown2018AMPK) and reveals peripheral membrane defects (Jammes2019neuromuscularCFS + reuse Jammes2020/2021), but legacy studies (Gibson1993, Edwards1993, Jamal1991) found normal muscle → central-vs-peripheral tension must be framed as an unresolved open question.

## Key content points (phrase carefully)

- **No EMS/NMES clinical trial in ME/CFS exists** — state this explicitly; do not imply efficacy.
- **F1 (safe substitute):** NMES prevents disuse atrophy without aerobic/orthostatic load (Burgess2021, Maffiuletti2019; reuse Bao2022, Dirks2015).
- **F2 (contraction metabolism triggers PEM):** EPS in CFS muscle fails to activate AMPK/glucose uptake (Brown2015EPSAMPK); direct muscle stimulation reveals membrane-conduction defect (Jammes2019).
- **F3 (null):** legacy studies found normal electrically-stimulated muscle force (Gibson1993, Edwards1993, Jamal1991).
- **F4 (harm):** rhabdomyolysis after a single EMS session in FM+CFS (vonDeneen2024); NMES local fatigability (Inns2021); central-activation failure via twitch interpolation (Jacobsen1991).
- **Indirect:** EMS raises metabolic load (Tajima2021); CFS muscle is more electrically sensitive tracking oxidative stress (Vecchiet2003).

## Certainty to carry into environments
Raw + population weight + discounted, per paper, are in `ops/research/literature-muscle-electrostimulation-fatigue-2026-10-11.md`. Highest discounted = 0.55 (Gibson1993, Edwards1993). The in-vitro mechanistic core is discounted to 0.16 (Brown2015EPSAMPK) — cite it as *mechanistically suggestive*, not clinically established.

## Fragments
Literal quotes for quantitative claims in `ops/research/fragments-muscle-electrostimulation-fatigue-2026-10-11.md` (feed Phase 5a).

## Search log
`ops/research/search-log-muscle-electrostimulation-fatigue-2026-10-11.md` (rival framings F1–F4 + counts, queries, flow, coverage declaration).
