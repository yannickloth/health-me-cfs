#import "../../../../shared/environments.typ": *

=== Prediction-to-Dataset Coverage

Four of the seven core predictions (brain hypometabolism, exercise demand-response
failure, autonomic demand-response failure, and CNS coordination failure) can be
tested through secondary analysis of existing datasets.
Table @tab:prediction-dataset-mapping maps these predictions to available
resources.
#figure(
    table(
    columns: (auto, auto, auto, auto, auto, auto),
  [*Prediction*], [*NIH 2024*], [*CPET DB*], [*Autonomic*], [*Brain PET*], [*UK Biobank*],
  [Brain hypometabolism], [$checkmark$], [–], [–], [$checkmark checkmark$], [Partial],
  [Exercise demand-response], [$checkmark$], [$checkmark checkmark$], [–], [–], [–],
  [Resting muscle ATP preserved], [–], [–], [–], [–], [–],
  [ATP scaling failure], [$checkmark$], [$checkmark checkmark$], [–], [–], [–],
  [Autonomic demand-response], [$checkmark$], [–], [$checkmark checkmark$], [–], [Partial],
  [CNS coordination failure], [$checkmark checkmark$], [–], [–], [$checkmark$], [–],
  [Hair/nail growth normal], [–], [–], [–], [–], [–],
    ),
  kind: table, supplement: [Table], caption: [Coverage of core predictions by existing ME/CFS datasets],
) <tab:prediction-dataset-mapping>
   $checkmark checkmark$ = ideal dataset for this prediction;\
  $checkmark$ = can test prediction; Partial = incomplete coverage; – = not testable.
Three predictions (resting muscle ATP, electrical stimulation versus voluntary force, and
hair/nail growth rate) require novel measurement protocols and are addressed exclusively
in the multi-modal study.


