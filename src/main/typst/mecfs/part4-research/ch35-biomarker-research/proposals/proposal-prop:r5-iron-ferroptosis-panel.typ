#import "../../../shared/environments.typ": *

#proposal(title: [R5: Iron/Ferroptosis Panel — GPX4 + 4-HNE + ACSL4 + SLC7A11 + MRI R2^\*])[
*Proposal.* A panel combining serum markers of ferroptosis susceptibility with MRI-based tissue iron quantification:

*Serum markers:*
- *GPX4 activity:* Glutathione peroxidase 4 is the primary ferroptosis defense; reduced activity indicates impaired protection against lipid peroxidation. Measured by enzymatic activity assay or ELISA.
- *4-HNE (4-hydroxynonenal):* Major lipid peroxidation end product; elevated in oxidative stress and directly reflects the lipid damage ferroptosis executes. Measured by ELISA or LC-MS.
- *ACSL4* (acyl-CoA synthetase long-chain family member 4): Upregulated in ferroptosis-prone cells; marks commitment to ferroptotic cell death. Measured by ELISA or qPCR in PBMCs.
- *SLC7A11 (xCT):* Cystine/glutamate antiporter; rate-limiting for glutathione synthesis. Reduced expression indicates limited cysteine import and ferroptosis vulnerability. Measured by ELISA or qPCR.

*Imaging marker:*
- *MRI R2^\* (1/T2):* Quantitative mapping detects tissue iron overload non-invasively. R2^\* values >50 Hz in liver, >35 Hz in midbrain suggest pathologic iron accumulation. Liver R2^\* reflects systemic iron stores; midbrain R2^\* captures CNS iron relevant to neuroinflammation.

*Interpretation:*
- Ferroptosis index = z(GPX4_activity inverted) + z(4-HNE) + z(ACSL4) + z(SLC7A11 inverted)
- Combined ferro-MRI score: Ferroptosis index + R2^\* liver + R2^\* midbrain
- Threshold: Ferroptosis index >1.5 indicates elevated ferroptosis risk; combined score >3 indicates active ferroptotic pathology

*Clinical applications:*
- Identify ME/CFS patients with ferroptosis-driven pathology for targeted intervention (vitamin E, iron chelation, GPX4 enhancers)
- Monitor response to iron redistribution protocols (@spec:iron-redistribution-protocol, Chapter @ch:immune-dysfunction)
- Distinguish iron overload (elevated ferritin, low GPX4, elevated R2^\*) from functional iron deficiency (low serum iron, elevated hepcidin, normal GPX4)
- Track ferroptosis prevention during PEM (4-HNE spikes post-exertion would confirm exercise-induced ferroptosis risk)

*Key questions:*
1. Is the ferroptosis index elevated in ME/CFS vs controls?
2. Does 4-HNE increase after CPET in ME/CFS (exercise-induced lipid peroxidation)?
3. What proportion of ME/CFS patients show MRI evidence of tissue iron overload (R2^\* > threshold)?
4. Does GPX4 activity correlate with glutathione levels and selenium status?

*Limitations:* No study has measured GPX4 activity, ACSL4, or SLC7A11 in ME/CFS. 4-HNE is technically challenging (short half-life, rapid metabolism). R2^\* MRI requires specialized sequences not available in all centers. Normative R2^\* ranges for ME/CFS age groups are not established.

*Cross-reference:* Ferroptosis susceptibility (@sec:ferroptosis, Chapter @ch:immune-dysfunction). Danazol/hepcidin speculation (@spec:danazol-hepcidin, Chapter @ch:immune-dysfunction). Iron redistribution protocol (@spec:iron-redistribution-protocol, Chapter @ch:immune-dysfunction).
] <prop:r5-iron-ferroptosis-panel>
