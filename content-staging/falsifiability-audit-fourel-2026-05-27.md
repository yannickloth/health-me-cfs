# Falsifiability Audit: Fourel Corrections — May 2026

## File: ch12-genetics-epigenetics.typ

### hyp:hsat2-activation-mecfs
- Status: FULLY FALSIFIABLE
- Existing predictions:
  1. ME/CFS patient cells should show elevated HSAT2 RNA levels vs healthy controls (qPCR, RNA-seq)
  2. ME/CFS patients should demonstrate HSF1 activation and pericentromeric hypomethylation vs controls (ChIP-seq, bisulfite sequencing)
  3. ME/CFS patients should show CTCF loss at pericentromeric regions vs controls (ChIP-seq)
  4. HSAT2 RNA levels should correlate with senescence markers (p16, p21, β-galactosidase) in ME/CFS cells
  5. Post-viral ME/CFS patients should show higher HSAT2 levels than non-post-viral patients
  6. Centromeric alpha-satellite DNA amplification should be detectable in cells from herpesvirus-triggered ME/CFS patients (FISH, qPCR for alpha-SAT copy number)
- Gap: None - hypothesis contains concrete, testable predictions with specific experimental methods specified
- Proposed fix: N/A

## File: ch16-causal-hierarchy.typ

### spec:methylation-loss-consolidation
- Status: FULLY FALSIFIABLE
- Existing predictions:
  1. Bisulfite sequencing of sorted immune cell subsets from ME/CFS patients should show progressive hypomethylation at PTPRN2, pericentromeric repeats, and immune activation loci over the first 6-12 months of disease
  2. Recovered patients (symptom-free ≥12 months) should show partial remethylation at these same loci compared to patients with persistent disease
  3. DNMT3A activator treatment should reduce hypomethylation and restore immune function in ME/CFS patient cells in vitro
- Falsification criteria:
  1. Longitudinal bisulfite sequencing shows progressive hypermethylation (not hypomethylation) at PTPRN2 and pericentromeric loci during the first 12 months of disease
  2. Recovered and non-recovered patients show equivalent methylation levels at these loci
  3. DNMT3A activator treatment of ME/CFS patient cells fails to reduce derepression of target genes at hypomethylated loci despite confirmed methylation restoration
- Gap: None - hypothesis includes explicit falsification criteria with specific experimental designs
- Proposed fix: N/A

## File: ch07-immune-dysfunction.typ

### spec:hsat2-ets-spi1-sponge
- Status: FULLY FALSIFIABLE
- Existing predictions:
  1. HSAT2 RNA in ME/CFS immune cells co-immunoprecipitates with SPI1 protein (RNA-IP)
  2. SPI1 ChIP-seq in ME/CFS PBMCs shows reduced genome-wide binding at canonical target genes compared to healthy controls
  3. The expression of SPI1 target genes involved in lymphoid differentiation is reduced in ME/CFS, while myeloid gene programs are relatively preserved or expanded
- Gap: None - predictions are specific, testable, with experimental methods specified
- Proposed fix: N/A

## File: ch14/ch14a-core-mechanistic.typ

### VICAR Centromere Hypothesis Content (Subsections: "Proximal Trigger: Viral Centromere Disruption" and "Cell-Type Specificity: Herpesvirus Neurotropism")
- Status: WEAKLY FALSIFIABLE
- Existing claims (certainty-tagged):
  1. "The centromere amplification occurs in the absence of mitosis — a non-mitotic DNA amplification process" (Certainty: 0.50)
  2. "This centromere rearrangement is the proximate trigger for pericentromeric satellite (HSAT2, and possibly HSAT3) transcription in herpesvirus-infected cells" (Certainty: 0.35)
  3. "Geneviève Fourel (pers. comm. May 2026) proposes that loss-meCpG at HSAT2 initially occurs in specific brain cell types before propagating to other cells" (Certainty: 0.30)
  4. "The brain regions preferentially infected by HSV-1, HHV-6, and SARS-CoV-2 are closely adjacent but not identical" (Certainty: 0.45 for herpesvirus neuroglial tropism; 0.30 for HSAT2 activation specifically in these brain cell types)
- Gap: While sections describe a proposed mechanism, they lack explicit testable predictions with falsification criteria. The certainty tags indicate uncertainty, but no concrete predictions are stated that would allow a researcher to design an experiment to test or falsify the VICAR-HSAT2 pathway in ME/CFS specifically.
- Proposed fix: Add explicit testable predictions, such as:
  - "In herpesvirus-triggered ME/CFS patients, cells from affected brain regions (or proxy neuronal/glial cultures derived from iPSCs if tissue not accessible) should show (a) alpha-satellite DNA amplification detectable by FISH or qPCR, (b) reduced methylation at HSAT2/HSAT3 loci by bisulfite sequencing, and (c) elevated HSAT2/HSAT3 RNA levels by RNA-seq or qPCR compared to healthy controls."
  - "The temporal sequence in herpesvirus-infected cell cultures should be: herpesvirus protein expression (ICP0, IE1/IE2) → centromeric alpha-satellite amplification (detectable within X hours) → HSAT2/HSAT3 transcriptional activation (detectable within Y hours after amplification). If HSAT2 activation precedes amplification or occurs independently, the VICAR pathway model is not supported."
  - "Herpesvirus-infected cells with HSAT2/HSAT3 activation should show reduced DNMT3B binding at these loci (ChIP-seq) compared to uninfected controls, demonstrating that DNMT3B loss is downstream of transcriptional activation rather than the initiating cause."

## Summary
- N hypotheses audited: 4
- K fully falsifiable: 3 (hyp:hsat2-activation-mecfs, spec:methylation-loss-consolidation, spec:hsat2-ets-spi1-sponge)
- L weakly falsifiable: 1 (VICAR centromere hypothesis content in ch14a)
- M unfalsifiable: 0

## Actions Required
1. Add explicit testable predictions to the VICAR centromere hypothesis content in ch14a ("Proximal Trigger: Viral Centromere Disruption" and "Cell-Type Specificity: Herpesvirus Neurotropism" subsections) with:
   - Specific experimental methods (FISH, qPCR for alpha-SAT copy number, bisulfite sequencing for HSAT2/HSAT3 methylation, ChIP-seq for DNMT3B binding)
   - Temporal sequence predictions for in vitro herpesvirus infection models
   - Falsification criteria (e.g., HSAT2 activation preceding amplification would falsify the model)
   - Specific cell-type predictions (which brain regions/cell types should show the strongest signal)

2. Consider adding a named hypothesis environment for the VICAR-HSAT2 pathway if it becomes a core mechanistic claim, with formal testable predictions and falsification criteria consistent with other hypotheses in the document.