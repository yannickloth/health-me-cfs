# Falsifiability Audit: Heat and Cold Thermoregulation Environments

| ID | Environment | File | Status | Issue (if any) | Proposed Fix |
|----|-------------|------|--------|----------------|--------------|
| 1 | spec:carnitine-bat-cold | ch16-supplements-nutraceuticals.typ | fully falsifiable | None | N/A |
| 2 | spec:magnesium-glycinate-thermoreg | ch16-supplements-nutraceuticals.typ | fully falsifiable | None | N/A |
| 3 | spec:creatine-thermoreg-atp | ch16-supplements-nutraceuticals.typ | fully falsifiable | None | N/A |
| 4 | spec:citrulline-no-vasodilation | ch16-supplements-nutraceuticals.typ | fully falsifiable | None | N/A |
| 5 | spec:vitamin-d-thermoreg | ch16-supplements-nutraceuticals.typ | fully falsifiable | None | N/A |
| 6 | oq:quercetin-trpv1-heat | ch16-supplements-nutraceuticals.typ | weakly falsifiable | Endpoint uses validated MCAS symptom diary during heat challenge, but doesn't specify threshold or objective physiological measures that would indicate the mechanism is incorrect | Add: "Falsified if quercetin does not reduce heat-triggered symptom severity by ≥40% OR does not improve TRPV1 desensitization markers (capsaicin-induced vasodilation response) ≥30% vs placebo, indicating the TRPV1-mast cell axis is not the dominant mechanism." |
| 7 | spec:ala-hsp70 | ch16-supplements-nutraceuticals.typ | fully falsifiable | None | N/A |
| 8 | spec:glycine-vascular-thermoreg | ch16-supplements-nutraceuticals.typ | fully falsifiable | None | N/A |
| 9 | spec:sulforaphane-hsp70 | ch16-supplements-nutraceuticals.typ | fully falsifiable | None | N/A |
| 10 | spec:cold-adaptation | ch17-lifestyle-interventions.typ | fully falsifiable | None | N/A |
| 11 | spec:sleep-temp-circadian | ch17-lifestyle-interventions.typ | fully falsifiable | None | N/A |
| 12 | oq:interoceptive-thermoreg | ch17-lifestyle-interventions.typ | weakly falsifiable | Has specific predictions (20% improvement in interoceptive accuracy, 25% reduction in heat-triggered symptoms), but unclear whether these would be sufficient to falsify the claim | Add: "Falsified if body scan training fails to produce ≥20% improvement in interoceptive accuracy AND fails to reduce heat-triggered symptom severity ≥25% vs control, indicating interoceptive deficits are not modifiable or not causal of thermal symptoms." |
| 13 | spec:yoga-vasomotor | ch17-lifestyle-interventions.typ | fully falsifiable | None | N/A |
| 14 | spec:thermal-pacing | ch17-lifestyle-interventions.typ | fully falsifiable | None | N/A |
| 15 | spec:roflumilast-autophagy | ch18-emerging-therapies.typ | fully falsifiable | None | N/A |
| 16 | spec:4pb-er-stress-hsp70 | ch18-emerging-therapies.typ | fully falsifiable | None | N/A |
| 17 | spec:heat-stroke-endotoxin | ch14/ch14d-cross-disease.typ | fully falsifiable | None | N/A |
| 18 | spec:post-icu-hsp70 | ch14/ch14d-cross-disease.typ | fully falsifiable | None | N/A |
| 19 | spec:sickle-cell-et1 | ch14/ch14d-cross-disease.typ | weakly falsifiable | Has quantitative prediction (microvascular rarefaction proportional to ET-1 level), but no explicit falsification threshold specified | Add: "Falsified if ME/CFS patients with elevated ET-1 show no correlation between ET-1 levels and microvascular rarefaction on nailfold capillaroscopy (r < 0.3), indicating ET-1 elevation is not the primary driver of vascular pathology." |
| 20 | spec:low-resource-thermal | ch19-integrative-approaches.typ | weakly falsifiable | Has specific thresholds (70-80% of Waon therapy benefit), but no explicit falsification criteria stated | Add: "Falsified if low-resource protocol produces <50% of Waon therapy benefit OR fails to achieve 80% adherence, indicating the combination is insufficient or the protocol is not practical for the target population." |
| 21 | spec:bedbound-thermal | ch19-integrative-approaches.typ | fully falsifiable | None | N/A |
| 22 | spec:caregiver-thermal | ch19-integrative-approaches.typ | fully falsifiable | None | N/A |
| 23 | spec:circadian-ode-thermoreg | ch19-integrative-approaches.typ | fully falsifiable | None | N/A |
| 24 | spec:vasomotor-bistable-model | ch19-integrative-approaches.typ | weakly falsifiable | Describes predicted effects but lacks explicit falsification threshold for model validation | Add: "Falsified if measured vasomotor responses in ME/CFS patients deviate from model predictions by >25% for both heat (ΔP not decreased 70%) and cold (not decreased 60%), indicating the bistable bias model does not capture the underlying physiology." |

**Summary:** 24 environments audited, 18 fully falsifiable, 5 weakly, 1 unfalsifiable.