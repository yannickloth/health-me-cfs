#import "../../../../shared/environments.typ": *

=== Cross-Step Interaction Matrix


#figure(
  kind: table,
  caption: [Failure at Step X (row) exacerbating Step Y (column), based on mechanistic reasoning from the step-by-step analysis. $arrow.r.double$ = direct amplification with cited evidence; $arrow.r$ = indirect/delayed or inferred from general biochemistry; — = no significant interaction. Individual cell assignments reflect author judgment and have not been systematically validated.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
    align: (center, center, center, center, center, center, center, center, center, center, center),
    table.header([*↓X \\ Y→*], [*1*], [*2*], [*3*], [*4*], [*5*], [*6*], [*7*], [*8*], [*9*], [*10*]),
    [*1*], [—], [$arrow.r.double$], [$arrow.r.double$], [$arrow.r.double$], [$arrow.r.double$], [—], [—], [—], [—], [—],
    [*2*], [—], [—], [$arrow.r$], [—], [—], [—], [—], [—], [—], [—],
    [*3*], [—], [—], [—], [—], [$arrow.r.double$], [—], [—], [—], [$arrow.r$], [—],
    [*4*], [—], [—], [—], [—], [$arrow.r.double$], [—], [—], [—], [—], [—],
    [*5*], [—], [—], [—], [—], [—], [$arrow.r$], [—], [—], [$arrow.r$], [—],
    [*6*], [—], [—], [$arrow.r.double$], [$arrow.r$], [$arrow.r.double$], [—], [$arrow.r$], [—], [$arrow.r$], [$arrow.r$],
    [*7*], [—], [—], [—], [—], [—], [—], [—], [$arrow.r$], [—], [—],
    [*8*], [—], [—], [—], [—], [—], [—], [—], [—], [—], [—],
    [*9*], [—], [—], [$arrow.r.double$], [—], [$arrow.r.double$], [$arrow.r.double$], [$arrow.r.double$], [—], [—], [$arrow.r.double$],
    [*10*], [$arrow.r$], [—], [$arrow.r$], [$arrow.r$], [$arrow.r$], [$arrow.r$], [$arrow.r$], [$arrow.r$], [$arrow.r.double$], [—],
  )
) <tab:interaction-matrix>

Key interactions: Step 9 (ROS scavenging) failure amplifies nearly every other step — superoxide inactivates aconitase (Step 5), oxidizes cardiolipin (Step 7), damages PDC E2 lipoyl groups (Step 3), depletes cofactors (Step 6), and accelerates mitochondrial damage requiring biogenesis (Step 10). Step 10 (biogenesis) failure is a slow amplifier: over weeks the declining mitochondrial population reduces capacity at Steps 3--9. Step 6 (cofactors) has the widest _direct_ amplification because a single cofactor gates multiple enzymatic steps simultaneously. Step 7 (ANT) failure reduces cytosolic ATP availability, secondarily depleting the PCr pool as creatine kinase cannot regenerate PCr without ATP substrate.

