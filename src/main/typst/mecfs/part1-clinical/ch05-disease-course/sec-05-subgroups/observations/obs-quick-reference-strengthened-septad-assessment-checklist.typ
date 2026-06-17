#import "../../../../shared/environments.typ": *

#observation(title: [Quick-Reference: Strengthened Septad Assessment Checklist])[
Condensed decision aid for clinical use. Full rationale in the sections above.

#figure(
  table(
    columns: (auto, 2fr, 1.5fr, 1fr),
    align: (left, left, left, left),
    [*Step*], [*Action*], [*Tool / Test*], [*Time*],
    [0 — Genetics (conditional)],
      [TPSAB1 if: hEDS + severe MCAS/anaphylaxis \ KIT D816V if: tryptase $gt.eq$20 ng/mL baseline],
      [Lab send-out], [As needed],
    [1 — Triage],
      [Ambiguous presentation? Screen hypermobility first, then POTS, then MCAS labs],
      [Beighton score, NASA Lean Test, tryptase],
      [$lt.eq$15 min],
    [2 — Dominant pathway],
      [Enter MCAS/HIT, hEDS, autonomic, post-infectious, or GI branch per Section @sec:septad-diagnostic-hierarchy],
      [Clinical history],
      [Consult],
    [3 — MCAS treatment],
      [Start H1+H2 antihistamines ± mast cell stabilizer; document baseline COMPASS-31 @Sletten2012compass31, IBS-SSS @Francis1997ibssss, fatigue scale @Smets1995mfi20],
      [Standard MCAS protocol],
      [Visit 1],
    [4 — Cascade check (4--8 wk)],
      [Repeat same scores. $gt.eq$2-of-4 domains improved? → cascade confirmed. Only MCAS symptoms improved? → treat remaining conditions independently],
      [COMPASS-31, IBS-SSS, NRS/PEM diary, MFI-20 @Smets1995mfi20],
      [4--8 wk],
    [5 — MCAS-primary check],
      [MCAS onset before ME/CFS onset + PEM triggers = MCAS triggers? → MCAS-triggered pathway. Otherwise: standard cascade model],
      [Onset history timeline],
      [$lt$3% of ME/CFS],
  ),
  kind: table, supplement: [Table],
  caption: [Strengthened Septad diagnostic map — condensed clinical checklist. Not a validated algorithm; expert synthesis only (Certainty: 0.40). Full evidence in Sections @sec:septad-prevalence-priors through @sec:septad-genetics.],
) <tab:septad-checklist>
] <obs:septad-checklist>