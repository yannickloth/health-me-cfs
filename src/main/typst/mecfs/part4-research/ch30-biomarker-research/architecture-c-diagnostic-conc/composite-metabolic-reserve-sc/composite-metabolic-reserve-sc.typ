#import "../../../../shared/environments.typ": *

=== Composite Metabolic Reserve Score (MRS)
<subsec:metabolic-reserve-score>

A clinically practical composite score estimating metabolic reserve from available measurements:
$ "MRS" = w_1 dot ("ferritin" / 100) + w_2 dot ("BH4" / "BH4"_"ref") + w_3 dot ("VO"_2 "max" / "VO"_2 "max"_"predicted") + w_4 dot ("CBF" / "CBF"_"ref") + w_5 dot (1 - "ND"_"burden") $
where $"ND"_"burden"$ = sum of binary indicators (ADHD = 0.15, ASD = 0.20, hEDS = 0.10, migraine = 0.05, GCH1 homozygous = 0.10).
*Practical challenge:* BH4 and CBF are not routine clinical measures. A simplified version using only ferritin + VO#sub[2]max + neurodivergent diagnosis could be implemented in primary care as a screening tool. However, the simplified version currently lacks calibrated weights, clinical cut-off values, and actionable interpretation guidance — a GP receiving a raw score would have no evidence-based threshold for deciding intervention intensity.
*Use case:* Identify high-risk individuals before infection (prevention) and stratify treatment intensity (lowest MRS = most aggressive metabolic support the severity-stratified reserve protocol).


