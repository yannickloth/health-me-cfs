#import "../../../../../shared/environments.typ": *

===== Primary PET Imaging: Striatal VMAT2 and DAT

-*Tracer:* (+)-11C-DTBZ, or alternatively 18F-AV-133 if a longer-half-life tracer is logistically necessary (multicentre design). The Liu 2026 long COVID study used (+)-11C-DTBZ, providing a direct comparison dataset @Liu2026VMAT2longcovid.

-*Scanner:* High-resolution PET/CT or PET/MR. MRI-based attenuation correction preferred for striatal subregion delineation.

-*Quantification:* Non-displaceable binding potential (BP_ND) using the simplified reference tissue model with occipital cortex as reference region. Striatal subregions: ventral striatum (nucleus accumbens + ventral caudate + ventral putamen), dorsal putamen (pre-commissural and post-commissural), dorsal caudate (head, body). Brainstem (substantia nigra, ventral tegmental area, locus coeruleus) as exploratory regions.

-*Analytical approach:* Paired t-test on BP_ND within each subregion (affected vs unaffected co-twin). False Discovery Rate (FDR) correction across 5 subregions (q < 0.05). Effect size reported as Cohen's d_z (within-pair standardised mean difference) with 95% CI.

-*DAT SPECT:* Standard clinical DaTSCAN (ioflupane I-123) protocol. DaTSCAN binds the dopamine transporter (DAT) on presynaptic dopaminergic terminals — a distinct presynaptic marker from VMAT2. This radioligand is FDA-approved and available in most nuclear medicine departments. Quantify specific binding ratio (SBR) in the same striatal subregions. Together, VMAT2 and DAT provide complementary presynaptic information: VMAT2 measures vesicular monoamine packaging capacity, while DAT measures transporter-mediated dopamine reuptake at the terminal membrane.

-*Discordance pattern interpretation (both markers are presynaptic):*
  - VMAT2↓ + DAT↓: concordant reduction on both presynaptic markers. Indicates structural terminal loss or severe presynaptic dysfunction. Most consistent with dopaminergic terminal degeneration.
  - VMAT2↓ + DAT normal: vesicular packaging deficit without structural terminal loss. Suggests a functional impairment in vesicular loading (e.g., ATP-dependent VMAT2 proton gradient dysfunction) rather than terminal loss.
  - VMAT2 normal + DAT↓: transporter-specific pathology. DAT downregulation or internalization without vesicular deficit — could reflect compensatory adaptation to elevated synaptic dopamine or a primary DAT regulatory abnormality.
  - Both normal: striatal dopaminergic system is NOT the locus of pathology in ME/CFS. Falsifies the primary hypothesis.

-*TSPO PET (optional, funding-dependent):* Subset of n=10 ME/CFS pairs receive TSPO PET (e.g., 11C-PBR28) to quantify microglial activation. Genotyping for TSPO rs6971 polymorphism required (high-affinity binders only). Determines whether VMAT2 reduction is accompanied by neuroinflammation as in long COVID @Braga2023neuroCOVID, or whether the pathology is non-inflammatory.
