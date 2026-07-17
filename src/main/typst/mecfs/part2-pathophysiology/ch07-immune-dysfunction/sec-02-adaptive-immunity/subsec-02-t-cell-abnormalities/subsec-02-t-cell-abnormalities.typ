#import "../../../../shared/environments.typ": *

=== T Cell Abnormalities <sec:t-cells>
#include "../../../../figures/fig-immune-mecfs.typ"
#include "../../../../figures/fig-immune-normal.typ"

T lymphocytes coordinate adaptive immune responses and directly eliminate infected cells.

==== T Cell Subset Distribution

*CD4/CD8 Ratio Changes*
The ratio of helper (CD4#super[+]) to cytotoxic (CD8#super[+]) T cells is altered in some ME/CFS patients, though findings vary considerably across studies . Some report a decreased CD4/CD8 ratio while others find an increased ratio. This heterogeneity may reflect distinct patient subgroups within the ME/CFS population.

*Helper T Cell Subsets*
CD4#super[+] T cells differentiate into functional subsets with distinct roles: Th1 cells produce interferon-gamma and promote cell-mediated immunity; Th2 cells produce IL-4, IL-5, and IL-13 to promote antibody responses; Th17 cells produce IL-17 and are involved in autoimmunity and mucosal defense; and regulatory T cells (Tregs) suppress immune responses to maintain tolerance. ME/CFS findings include Th1/Th2 imbalance (though the direction varies across studies), elevated Th17 cells in some patients, and reduced Treg numbers or function  @Brenu2012miRNA. Altered cytokine profiles reflect these subset imbalances.

==== T Cell Exhaustion Markers

Chronic antigen exposure can lead to T cell exhaustion, characterized by:

    - *Increased PD-1 expression*: Programmed death-1, an inhibitory receptor @iu2024tcell_exhaustion @walitt2024deep
    - *Elevated Tim-3*: T cell immunoglobulin and mucin domain-3 @iu2024tcell_exhaustion
    - *CTLA-4 upregulation*: Cytotoxic T-lymphocyte-associated protein 4 @iu2024tcell_exhaustion
    - *Reduced proliferative capacity*: Impaired response to stimulation @iu2024tcell_exhaustion
    - *Decreased cytokine production*: Despite activation marker expression @iu2024tcell_exhaustion

These findings suggest chronic immune stimulation in ME/CFS, consistent with persistent infection or autoimmune processes @iu2024tcell_exhaustion.

*Comprehensive T Cell Exhaustion Evidence (Iu et al.\ 2024)*

A 2024 study published in _PNAS_ provided the most detailed characterization of T cell exhaustion in ME/CFS to date @iu2024tcell_exhaustion. Using transcriptomic and epigenetic profiling, Iu et al.\ demonstrated that CD8+ T cells from ME/CFS patients undergo extensive reprogramming toward an exhausted phenotype.

==== Key Findings

    - *Elevated PD-1 expression*: Confirmed at both protein and transcriptional levels
    - *Transcriptional reprogramming*: Gene expression patterns characteristic of chronic antigenic stimulation
    - *Epigenetic modifications*: Persistent chromatin changes indicating long-term immune activation rather than transient response
    - *Similarity to chronic infections*: The exhaustion profile resembled that seen in chronic viral infections (HIV, hepatitis C) and cancer

==== Implications
The epigenetic nature of these changes suggests that T cell exhaustion in ME/CFS is not merely a snapshot of current immune activation but represents a durable reprogramming of immune cell function. This has several implications:

    - *Chronicity*: The epigenetic changes may explain why immune dysfunction persists even if the initial trigger resolves
    - *Impaired viral control*: Exhausted T cells cannot effectively clear viruses, potentially permitting herpesvirus reactivation
    - *Therapeutic targets*: Immune checkpoint inhibitors (anti-PD-1, anti-CTLA-4) used in cancer might theoretically restore T cell function, though safety in ME/CFS is unknown
    - *Biomarker potential*: T cell exhaustion markers could serve as diagnostic or prognostic indicators

==== Integration with NIH Deep Phenotyping Study
The Iu et al.\ findings complement the Walitt et al.\ NIH study @walitt2024deep, which also documented elevated CD8+ T cell PD-1 expression. Together, these studies consistently document T cell exhaustion as a reproducible feature of ME/CFS immunopathology, supporting the model of chronic antigenic stimulation driving both B cell (naïve/memory imbalance) and T cell (exhaustion) abnormalities.



Figures @fig:immune-normal and @fig:immune-mecfs illustrate the paradoxical immune state in ME/CFS—simultaneously overactive and underactive. Two interconnected vicious cycles drive disease: chronic inflammation (IDO activation, energy deficit, poor pathogen control) and immune exhaustion (T-cell/NK dysfunction, failed clearance). These cycles reinforce each other. The integration of these immune-specific vicious cycles with metabolic and autonomic cycles is examined in Section @sec:unifying-mechanisms of Chapter @ch:integrative-models.

#limitation(title: [T Cell Exhaustion: Chronic Stimulation Source Unknown])[
T cell exhaustion markers (PD-1, Tim-3, CTLA-4) in ME/CFS resemble those seen in chronic viral infections and cancer. However, the antigenic source driving this exhaustion has not been identified. The exhaustion profile is _consistent with_ chronic antigenic stimulation but does not establish what the antigen is (persistent virus, autoantigen, or metabolic danger signal). Without identifying the driver, the therapeutic implication that checkpoint inhibitors might help remains speculative and carries substantial autoimmune risk.
]

#hypothesis(title: [CD8+ T-cell Exhaustion as a Downstream Consequence of Exosomal EV Cargo Rather than Antigen-Driven])[


*(Certainty: 0.45 — T-cell exhaustion documented at epigenetic level in a single scRNA-seq study (n = 28/30; unreplicated); EV-cargo mechanism remains mechanistic inference from Ewing sarcoma.)*

CD8+ T-cell exhaustion in ME/CFS has been documented in a single unreplicated scRNA-seq study. Iu et al.\  showed by scRNA-seq and ATAC-seq (n = 28 ME/CFS, 30 controls) that CD8+ effector memory T cells carry epigenetically locked exhaustion programs: TBX21/EOMES transcription factor upregulation, TCF7 chromatin closure (the hallmark of terminal exhaustion), and reduced cytotoxic gene expression. Critically, PD-L1/2 and CD86 were upregulated on ME/CFS monocytes — pointing to an immunosuppressive myeloid cell as the immediate suppressor, consistent with the MDSC hypothesis @hyp:mdsc-nk-bridge. Eaton-Fitch et al.\  confirmed shared PD-1/CTLA-4 checkpoint gene dysregulation in both ME/CFS and Long COVID (n = 14/15/18), with ME/CFS showing the more suppressed and Long COVID the more activated exhaustion phenotype.

Standard accounts assume chronic antigenic stimulation as the upstream driver, but no consistent antigen has been identified in ME/CFS. An alternative mechanism emerges from Evdokimova et al.\ : exosomal uptake of HSAT2/HERV-K RNA by CD8+ T-cells directly induces the exhaustion phenotype (CD8+CD25+PD-1+) independently of antigen presentation. The PD-L1 upregulation on monocytes observed by Iu et al.\ is mechanistically consistent with an MDSC-like myeloid cell driving checkpoint-mediated T-cell suppression. This would reframe PD-1 upregulation and exhaustion in ME/CFS as a consequence of exosomal cargo programming rather than a marker of chronic antigen exposure.

This matters therapeutically: if exhaustion is antigen-driven, the antigen must be eliminated to reverse it. If exhaustion is EV-cargo-driven, removing or blocking the offending EVs could restore T-cell function without requiring pathogen identification. Checkpoint inhibitors (anti-PD-1) would provide temporary symptomatic relief at best, with exhaustion returning as long as the exosomal loop persists.

*Falsifiable prediction:* Plasma EV HSAT2 levels will correlate with CD8+ T-cell PD-1 expression longitudinally within individuals (within-subject r > 0.5 across ≥ 6 timepoints). EV depletion from patient plasma (size-exclusion filtration) before incubation with healthy CD8+ T-cells will abolish or reduce the PD-1 induction compared to unfiltered plasma. If PD-1 induction requires antigen-presenting cells rather than direct EV uptake, antigen-driven exhaustion remains more likely. The epigenetic TCF7 closure (Iu 2024) could be tested for reversibility by EV removal.

*Limitations:* The EV-cargo mechanism was demonstrated in vitro with high EV concentrations from Ewing sarcoma cells; whether chronic low-level ME/CFS EVs produce the same phenotype is unknown. The Iu 2024 PD-L1 finding is on monocytes, not specifically CD33+HLA-DR− MDSCs. The antigen-driven and EV-cargo-driven models are not mutually exclusive — both could contribute. Replication: exhaustion confirmed (Iu 2024, Eaton-Fitch 2024); EV mechanism not replicated in any chronic disease context.
] <hyp:tcell-exhaust-ev-downstream>

#speculation(title: [PD-L1-High Monocytes in ME/CFS as the M-MDSC Compartment Under a Different Gate])[


*(Certainty: 0.40 — phenotypic overlap is mechanistically plausible; direct MDSC gating of the Iu 2024 cohort not yet performed.)*

Iu et al.\  identified PD-L1/2-upregulated monocytes as the proximate suppressor of CD8+ T-cell cytotoxicity in ME/CFS. Monocytic MDSCs (M-MDSCs) are defined as CD33+HLA-DR−/lo CD14+ monocytes  — a phenotypically suppressive myeloid population that constitutively upregulates PD-L1 as part of their exhaustion-inducing program. The Iu 2024 "PD-L1-high monocyte" gate and the canonical "CD33+HLA-DR−/lo" M-MDSC gate may describe the same or substantially overlapping cell population using different flow cytometry panels.

If so, the M-MDSC compartment has already been implicitly identified in ME/CFS by Iu et al.\ — simply without MDSC nomenclature. This would: (a) provide the first indirect evidence for M-MDSC expansion in ME/CFS; (b) connect the checkpoint-mediated CD8 exhaustion finding to the HSAT2-exosome-MDSC mechanistic framework @spec:hsat2-exosome-mdsc; and (c) explain why PD-L1 expression on monocytes tracks with ME/CFS severity — it is not an independent suppressive mechanism but a phenotypic readout of MDSC-like monocyte activation.

*Falsifiable prediction:* Re-staining the Iu 2024 cohort PBMC samples with the EuroFlow MDSC panel (CD33, HLA-DR, CD14, CD15) will show ≥ 60% phenotypic overlap between the PD-L1-high monocyte gate and the CD33+HLA-DR−/lo M-MDSC gate. If the two populations are phenotypically distinct (< 30% overlap), they represent separate suppressive mechanisms.

*Limitations:* The Iu 2024 panel did not include HLA-DR or CD33 specifically for MDSC gating; retrospective analysis would require stored samples. PD-L1 upregulation on monocytes occurs in many contexts (LPS, IFN-γ, complement activation) independent of MDSC biology; the overlap is phenotypic rather than functional. Not replicated; this is a testable retroactive hypothesis.
] <spec:pd-l1-mdsc-overlap>

#speculation(title: [Tear-Fluid T-Cell Dysregulation as an Accessible Readout of Systemic Immune Reprogramming])[
*(Origin: literature synthesis.)* *(Certainty: 0.35 — direct tear--blood signature concordance demonstrated in post-COVID ocular syndrome; extension to ME/CFS is inference.)* Moustardas et al.\ (2026) reported that the tear fluid of patients with persistent post-COVID ocular symptoms carries a CD4+ T-cell dysregulation proteomic signature (ITGB6, NFASC, ANGPTL2, SKAP2, DAPP1) matching protein patterns previously documented in blood and tissue in _severe and fatal_ COVID-19 @moustardas2026ocular. This concordance suggests tear fluid — trivially and non-invasively sampled — can mirror the systemic T-cell dysregulation otherwise requiring blood draws or tissue biopsy.

If the T-cell exhaustion and reprogramming documented in ME/CFS blood (Hypothesis @hyp:tcell-exhaust-ev-downstream) is systemic rather than compartment-restricted, an analogous tear signature might be detectable in ME/CFS, offering a low-burden longitudinal immune biomarker especially valuable for severe and bedbound patients for whom repeated venepuncture is difficult. This is an inference: no tear proteomics has been performed in a criteria-defined ME/CFS cohort, and the Moustardas cohort was selected for ocular symptoms, not ME/CFS criteria.

*Falsifiable prediction:* Tear-fluid proteomics in ME/CFS patients versus matched controls will reveal a CD4+/CD8+ T-cell dysregulation signature correlating with blood T-cell exhaustion markers (PD-1, TCF7 chromatin state) within individuals. Falsified if tear proteomes are indistinguishable from controls in patients with documented blood T-cell exhaustion.

*Limitations:* Entirely untested in ME/CFS. Tear--blood concordance shown only in a selected post-COVID ocular-symptom cohort. Tear composition varies with ocular surface disease, diet, environment, and sleep — all confounders in ME/CFS. Mechanism of spillover (active secretion vs passive leakage vs local ocular immune response) unknown.

*Consequence:* If confirmed, a tear sample — collectable at home without a needle — could track immune status in ME/CFS, making immune-focused trials feasible in the severe patients usually excluded by blood-draw burden. This is currently an untested research proposal, not a clinical test.
] <spec:tear-tcell-readout>

Two recent single-cell transcriptomic studies strengthen the T cell exhaustion
finding.  Mayer et al.\ (2025) constructed a scRNA-seq atlas of 336,269
T lymphoid cells from 28 ME/CFS patients and 30 controls, demonstrating
transcriptional reprogramming of CD8+ T cells toward exhaustion that is
amplified by exercise provocation @Mayer2025Tcellexhaustion
(Appendix @app:research-registry,
Section @sec:registry-tcell-exhaustion).  Elahi et al.\ (2026) applied
scRNA-seq to long COVID–ME/CFS patients 12 months post-infection, finding
persistent immune remodeling—monocyte polarization, NK cell dysfunction,
and T cell exhaustion—absent in recovered
individuals @Elahi2026singlecell
(Section @sec:registry-elahi-singlecell).  Cell-free RNA profiling
by Gardella et al.\ (2025) independently detected T cell exhaustion
signatures in plasma cfRNA, confirming these findings via an orthogonal
method @Gardella2025cfRNA
(Section @sec:registry-cfrna).

Comparative virology provides indirect support for the viral persistence hypothesis. Kol et al.\ (2026) demonstrated that feline infectious peritonitis virus (FIPV), a naturally occurring coronavirus in cats, replicates not only in macrophages but also in B and T lymphocytes within mesenteric lymph nodes . Critically, rare FIPV RNA-positive lymphocytes persisted after antiviral treatment and full clinical recovery, suggesting that long-lived immune cells serve as viral reservoirs. Because lymphocytes can survive for years, this reservoir may explain relapse and chronic immune dysregulation. FIPV offers a unique comparative model: unlike human studies, where accessing infected lymphoid tissue is ethically and practically difficult, feline FIP permits direct examination of coronavirus–immune cell interactions in naturally infected tissue. While FIPV is not SARS-CoV-2, the shared coronavirus biology—tropism for immune cells, persistence despite apparent clearance, and post-treatment relapse—strengthens the plausibility that analogous mechanisms operate in post-COVID ME/CFS.

#speculation(title: [Lymphocyte Reservoir Ratchet])[

*Certainty: 0.35.* Mechanistically plausible and supported by comparative virology (FIP model), but no direct human data yet demonstrates SARS-CoV-2 or other ME/CFS-triggering virus persistence specifically within lymphocytes. The hypothesis extends the Ratchet Model (Speculation @spec:infection-damage-ratchet) with a specific reservoir mechanism.

The Kol et al.\ (2026) demonstration that FIPV persists in B and T lymphocytes after antiviral treatment  suggests a mechanism distinct from classical viral latency: triggering viruses may reside within long-lived immune cells themselves, below conventional PCR detection thresholds but sufficient to drive chronic immune activation. Because memory lymphocytes survive for years to decades, even a small fraction of virus-harbouring cells constitutes a persistent antigenic reservoir.

*Mechanism.*
Unlike classical latency (e.g., EBV in B cells, where the viral genome is silenced), this model proposes low-level active or semi-active viral transcription within circulating lymphocytes. Each time these cells are activated by any immune challenge—a new infection, vaccination, allergen exposure, or even exercise-induced immune mobilization—viral antigen is re-presented, triggering localized immune activation without classical “reactivation.” This would explain why PEM can follow diverse immune stimuli, not only physical exertion.

*Testable Predictions.*

    - Single-cell RNA sequencing of peripheral blood mononuclear cells from post-COVID ME/CFS patients will detect viral transcripts in a small percentage ($<$1%) of lymphocytes, below bulk PCR sensitivity but detectable at single-cell resolution.
    - The fraction of virus-positive lymphocytes will correlate with disease severity and duration.
    - In vitro activation of ME/CFS patient lymphocytes will produce detectable viral antigen release, while resting cells will not.
    - Patients who recover from ME/CFS will show clearance of lymphocyte-associated viral RNA, while non-recoverers will retain it.

*Falsifiability.*
This hypothesis would be falsified if ultra-sensitive single-cell methods (10x Genomics, MERFISH) applied to ME/CFS patient lymphocytes consistently fail to detect viral transcripts across multiple triggering virus types and patient cohorts. It would also be weakened if lymphocyte depletion therapies (e.g., rituximab targeting B cells) show no effect on viral antigen levels, since the model predicts B cells as a primary reservoir.

*Relationship to the Ratchet Model.*
This hypothesis provides a specific cellular mechanism for the “viral reactivation and persistent viral load” arm of the Ratchet Model (Speculation @spec:infection-damage-ratchet). The Ratchet Model describes the clinical pattern (step-wise decline); this hypothesis explains _where_ the virus hides between steps.

*Treatment Implications.*
If confirmed, treatment would require either (a) antiviral therapy sustained long enough to outlast the lifespan of virus-harbouring lymphocytes (potentially years), (b) targeted depletion of the harbouring cell population, or (c) metabolic support enabling immune cells to clear the reservoir autonomously (see Hypothesis @hyp:immune-energy-starvation-niche).

*Limitations.*
Cross-species extrapolation from FIP to human disease requires caution: FIPV and SARS-CoV-2 differ in receptor usage, tropism breadth, and host immune biology. The “below PCR threshold” claim is currently unfalsifiable with standard methods—only emerging single-cell technologies can test it. The model does not explain non-viral-onset ME/CFS.
] <spec:lymphocyte-reservoir-ratchet>

#hypothesis(title: [Corticosteroids May Exacerbate T Cell Exhaustion in Post-Viral Fatigue])[
*(Certainty: 0.45 — Mechanistic inference from glucocorticoid receptor (GR) biology and documented T cell exhaustion in ME/CFS; no direct evidence in ME/CFS/Long COVID yet.)*

Glucocorticoids modulate T cell function through multiple pathways that may worsen rather than improve T cell exhaustion in ME/CFS and Long COVID. While corticosteroids are immunosuppressive, their effects on exhausted T cells are complex and potentially counterproductive in post-viral syndromes.

*Mechanisms of Corticosteroid-Induced Exacerbation:*
1. *GR-mediated transcriptional reprogramming*: Glucocorticoids activate GR, which binds to glucocorticoid response elements (GREs) and induces widespread transcriptional changes. In ME/CFS, where CD8+ T cells already show epigenetic locking of exhaustion programs (TCF7 chromatin closure) @iu2024tcell_exhaustion, additional GR-driven transcriptional reprogramming may lock cells deeper into exhausted states rather than restoring function.

2. *PD-1 pathway modulation*: Corticosteroids can upregulate PD-1 expression on T cells in certain contexts, potentially increasing checkpoint-mediated inhibition. This would exacerbate the already-elevated PD-1 levels documented in ME/CFS @iu2024tcell_exhaustion @walitt2024deep.

3. *Metabolic suppression*: Glucocorticoids inhibit glycolysis and reduce mitochondrial function in T cells. Given that ME/CFS CD8+ T cells already demonstrate failed metabolic reprogramming (impaired Warburg effect) @Mandarano2020, corticosteroids may further cripple the metabolic capacity required for T cell activation and viral clearance.

4. *Subset-specific effects*: Corticosteroids preferentially suppress cytotoxic CD8+ T cells over helper CD4+ T cells. In ME/CFS, where CD8+ dysfunction is more severe @Mandarano2020, this selective suppression may worsen the imbalance and impair viral control.

5. *Timing-dependent paradox*: In acute viral infection, early corticosteroids may impair T cell priming and memory formation, while in chronic infection, they may suppress already-exhausted cells further without addressing the underlying antigenic drive.

*Connection to Corticosteroid Trial Failures:*
The PoCoVIT methylprednisolone trial in Long COVID showed no benefit and high adverse event rates @Adam2024PoCoVIT. While the trial's primary outcome was fatigue, one mechanistic explanation is that methylprednisolone worsened T cell exhaustion—particularly CD8+ cytotoxic T cells—impairing viral clearance and immune surveillance. This would be consistent with the broader ME/CFS pattern where interventions targeting single immune pathways (rituximab, hydrocortisone, methylprednisolone) fail to improve outcomes.

*Falsifiable predictions:*
- ME/CFS/Long COVID patients receiving corticosteroids will show increased PD-1, Tim-3, and CTLA-4 expression on CD8+ T cells compared to baseline and untreated controls.
- Single-cell RNA-seq of CD8+ T cells post-corticosteroid will reveal transcriptional shifts deeper into exhaustion programs (increased TBX21/EOMES, further TCF7 closure).
- Corticosteroid-treated patients will show reduced viral clearance (higher EBV/HHV-6 viral load, delayed SARS-CoV-2 RNA clearance) correlating with T cell exhaustion markers.
- In vitro dexamethasone treatment of ME/CFS CD8+ T cells will increase checkpoint expression and reduce cytotoxic function more than in healthy controls (GR hypersensitivity/resistance phenotype).

*Limitations:* Direct evidence for corticosteroid effects on ME/CFS T cell exhaustion is lacking; this is mechanistic inference from GR biology and the negative methylprednisolone trial. The hypothesis assumes T cell exhaustion is central to ME/CFS pathology, which may not be true for all patients. Replication: Not tested; requires prospective studies with pre/post corticosteroid T cell profiling.
] <hyp:steroid-tcell-exhaustion>

==== T Cell Metabolic Dysfunction

As discussed in Chapter @ch:energy-metabolism, mitochondrial dysfunction in ME/CFS is not limited to muscle and nervous system—it extends to immune cells themselves. Mandarano et al.\ (2020) provided the first comprehensive metabolic analysis of T cells in ME/CFS (n=53 patients, n=45 controls), demonstrating that immune dysfunction has a fundamental bioenergetic basis .

*CD8+ T Cell Metabolic Deficits*
CD8+ cytotoxic T cells showed the most severe impairment: reduced mitochondrial membrane potential (indicating mitochondrial dysfunction), impaired glycolysis at rest, and crucially, failed metabolic reprogramming following activation. Healthy T cells switch from oxidative phosphorylation to glycolysis when activated (the Warburg effect), but ME/CFS CD8+ T cells cannot make this transition effectively . In a tick-borne-triggered subset, this intrinsic glycolytic deficit may be compounded by pathogen-imposed glycolytic reprogramming of innate immune cells (@sec:tick-borne, @hyp:tickborne-glycolytic-reprogramming) — a hypothetical additive interaction not yet tested in any human cohort.

*CD4+ T Cell Abnormalities*
CD4+ helper T cells also demonstrated reduced glycolysis at rest, though their activation response was less severely impaired than CD8+ cells. This suggests a hierarchy of metabolic dysfunction, with cytotoxic cells more vulnerable than helper cells .

#hypothesis(title: [CD161+ CD56+ CD4 T Cell Depletion in ME/CFS Gut])[
*(Certainty: 0.55 — Parallel to IBD findings (78% depletion) and gut-immune axis dysfunction in ME/CFS; no direct ME/CFS studies yet.)*

ME/CFS patients may exhibit reduced CD161+ CD56+ CD4 T cell frequency in intestinal tissue, paralleling the 78% depletion observed in inflammatory bowel disease (IBD). CD161+ CD56+ CD4 T cells are tissue-resident effector-memory cells enriched in the ileum and liver, exhibiting innate-like effector features including NK receptors (NKp80, NKG2D, NKG7) and granzymes, with high IL-18 receptor expression making them responsive to inflammatory cytokines.

*Mechanistic Rationale.*
CD161+ CD56+ CD4 T cells play several critical roles in mucosal immunity:
- *Barrier maintenance*: Produce IL-17A and IL-22, essential for epithelial integrity
- *Antiviral surveillance*: Enriched in CMV-specific TCRs, providing local viral defense
- *Cytokine sensing*: High IL-18R expression enables rapid innate-like responses to inflammation
- *Tissue persistence*: Express CD103 and CD69, indicating long-term tissue residency

Depletion of these cells could contribute to:
1. Impaired mucosal barrier maintenance (reduced IL-17A/IL-22)
2. Reduced antiviral surveillance at barrier sites (CMV specificity)
3. Systemic immune dysregulation via altered cytokine production
4. Increased intestinal permeability ("leaky gut") documented in ME/CFS

*ME/CFS Context.*
Gut-immune axis dysfunction is well-documented in ME/CFS: intestinal dysbiosis, increased permeability, and compromised GI-barrier integrity are consistent findings. The IBD parallel is compelling: CD161+ CD56+ CD4 T cells are depleted 78% in IBD colon tissue, suggesting a similar pattern may occur in ME/CFS given shared barrier dysfunction.

*Testable Predictions.*
- Flow cytometry on ileal biopsies from ME/CFS patients shows reduced CD161+ CD56+ CD4 T cells compared to healthy controls
- Peripheral blood CD161+ CD56+ CD4 T cell frequency correlates with ileal levels in ME/CFS (providing less invasive biomarker)
- Reduced IL-17A/IL-22 production upon stimulation in ME/CFS CD161+ CD56+ CD4 T cells
- Depletion severity correlates with intestinal permeability markers (zonulin, LPS)

*Limitations.* No direct studies of CD161+ CD56+ CD4 T cells in ME/CFS patients exist. Limited data on intestinal immune cell phenotyping in ME/CFS gut. The IBD parallel is mechanistically plausible but not yet demonstrated in ME/CFS.
] <hyp:cd4-depletion-gut>

*Clinical Implications*
T cell metabolic dysfunction may provide a mechanistic explanation for several observations: reduced CD8+ cytotoxic function (Brenu et al.\ 2011 @Brenu2011) could result from insufficient ATP to sustain degranulation and target killing, though direct causation has not been experimentally demonstrated; impaired proliferation following stimulation may reflect inability to meet the energetic demands of cell division; and post-exertional malaise may be exacerbated by immune activation, as metabolically compromised immune cells compete with other tissues for limited ATP. This finding bridges the energy metabolism (Chapter @ch:energy-metabolism) and immune dysfunction chapters, demonstrating that ME/CFS is characterized by systemic bioenergetic failure affecting all cellular systems.

==== Regulatory T Cell Dysfunction

Tregs maintain immune tolerance and prevent autoimmunity. ME/CFS patients show reduced numbers of Tregs (CD4#super[+]CD25#super[+]FoxP3#super[+] cells) with impaired suppressive function @Brenu2012miRNA . Altered Treg/effector T cell ratios may potentially contribute to the autoimmune features observed in some patients.

==== Sex-Specific T Cell Findings from the NIH Study

The Walitt et al.\ deep phenotyping study revealed striking sex differences in T cell abnormalities @walitt2024deep:

*Male Patients*
Men with PI-ME/CFS demonstrated:

    - Altered T cell activation patterns
    - Changes in markers of innate immunity
    - Distinct inflammatory signatures compared to female patients

These findings suggest that immune pathophysiology may differ fundamentally between sexes, with implications for treatment approaches.

