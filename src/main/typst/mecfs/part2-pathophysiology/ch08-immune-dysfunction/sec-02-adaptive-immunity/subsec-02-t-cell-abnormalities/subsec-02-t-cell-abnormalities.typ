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
CD4+ helper T cells also demonstrated reduced glycolysis at rest, though their activation response was less severely impaired than CD8+ cells. This suggests a hierarchy of metabolic dysfunction, with cytotoxic cells more vulnerable than helper cells .

*T-Cell Fatty Acid Oxidation Shift*
Maya et al.\ (2023) extended the metabolic characterization by measuring fatty acid oxidation in isolated T-cell subsets from the same cohort @Maya2023FAOxidation. CD4+ and CD8+ T cells, as well as NK cells, showed increased lipid utilization and elevated fatty acid oxidation proteins, especially during activation. CD4+ memory, CD4+ effector, and CD8+ memory subsets were all affected. This shift from glucose to lipid metabolism represents a suboptimal fuel choice for effector function — glycolysis supports rapid proliferation and cytokine production, while fatty acid oxidation sustains memory and resting states. The proposed interpretation: chronic immune activation forces T cells into a fuel economy mode that preserves survival at the cost of effector competence.

*CD8+ Functional Impairment*
Gil et al.\ (2024) independently demonstrated that CD8+ T cells from ME/CFS and Long COVID patients have severely diminished capacity to produce IFNγ and TNFα following stimulation @Gil2024CD8dysfunction. A retrospective case series (n=8) using a nebulized antioxidant formulation (glutathione, NAC, and three additional antioxidants) reported partial restoration of CD8+ cytokine production and a 54% reduction in symptom severity over 3–15 months — but this was unblinded, uncontrolled, and not placebo-controlled. The finding is consistent with Shankar et al.\ (2025) who demonstrated that oxidative stress specifically targets memory lymphocytes in both ME/CFS and Long COVID (Section @sec:immune-metabolic-crosstalk).

*Severity-Stratified T-Cell Activation*
Lee et al.\ (2025), using the UK ME/CFS Biobank (n=96, mild/moderate vs severe), found that severe ME/CFS is characterized by increased cytotoxic effector molecule expression and enhanced proportions of early immunosenescence (CD28−) cells, suggesting that T-cell activation profiles discriminate symptom severity @Lee2025TcellActivation. This is consistent with the larger UK Biobank finding by Cliff et al.\ (2019, n=251) that conventional T-cell subset proportions (CD4/CD8 ratios, naïve/memory distribution) were within normal range — dysfunction is at the functional and metabolic level, not the numerical level @Cliff2019Cellular.

*ME/CFS and Long COVID: Divergent Immune States*
Petrov et al.\ (2026) performed the largest direct immunophenotyping comparison of ME/CFS (n=103) and Long COVID (n=63) and found a critical divergence: Long COVID showed M2-like monocyte polarization, dendritic cell expansion, and persistent immune activation with features of exhaustion; ME/CFS showed reduced costimulatory molecule expression, impaired CCR7 trafficking, and less coordinated activation — a pattern of immune *suppression*, not the activation/exhaustion pattern of Long COVID @Petrov2026Immunophenotyping. This is consistent with the distinct immune exhaustion gene expression patterns reported by Eaton-Fitch et al.\ (2024), where ME/CFS was characterized by downregulated interferon signaling and immunoglobulin genes (suppression), while Long COVID showed dysregulated antigen presentation and cytokine signaling (activation) @EatonFitch2024ImmuneExhaustion. These findings caution against simple cross-disease generalizations: the immune dysfunction in ME/CFS is not a milder version of Long COVID but a mechanistically distinct state.

==== Long COVID Immune Profiling as a Convergent Reference Point

The canonical long-COVID immune-profiling study by Klein et al.\ (2023, _Nature_) provides a directly relevant cross-disease reference for the T-cell exhaustion picture in ME/CFS @Klein2023longcovidprofiling. In a multidimensional immune-phenotyping cohort (n=275, Yale LISTEN + Mount Sinai PASC cohorts; long COVID versus matched controls — no ME/CFS arm), long COVID was associated with reduced naive CD4#super[+] and CD8#super[+] T cells, exhausted T cells (PD-1, TIM-3) and exhausted B cells, and elevated nonclassical monocytes — a profile that is *consistent with* the exhaustion and antibody dysregulation documented in ME/CFS (an inference drawn across separately-published studies, not a head-to-head comparison). The study also reported exaggerated humoral responses against SARS-CoV-2 *and* against other latent viruses, notably Epstein-Barr virus and varicella-zoster virus, and lower morning cortisol.

*Parameter-dependent convergence and divergence.* The relationship between ME/CFS and long COVID is not a single axis. The monocyte/dendritic-cell immunophenotype diverges (as above), but the lymphocyte-subset and cytokine profile converges: Petrov et al.\ (2025) found no significant biomarker differences between ME/CFS and long COVID for lower lymphocytes, CD8#super[+] T cells, and NK cells or for higher IL-6, TNF, IL-4, and IL-10 @Petrov2026comparable. This is a parameter-dependent finding — the two conditions share a convergent pro-inflammatory, lymphopenic profile at the level of T/NK/cytokine readouts while differing in myeloid-cell activation state. Both findings originate from the same Plovdiv cohort (65 CFS / 54 long COVID subset), so they are not independent replications of each other, but the divergent-panel and convergent-panel results together argue that the immune relationship between ME/CFS and long COVID is compartment- and marker-specific rather than uniformly shared or uniformly distinct.

#speculation(title: [Long COVID Immune Dysregulation as a Time-Limited Precursor State])[

*(Certainty: 0.40 — direct long-COVID longitudinal evidence (Phetsouphanh 2024, raw cert 0.70, long-COVID population → discounted 0.60) documents reversibility; the extrapolation to a subset of ME/CFS that might share this reversibility window is inference, and the paper already establishes that most ME/CFS immune changes persist. This 0.40 is not yet corrected for the mild-cohort sampling bias and cohort-overlap caveats noted below; folding those in would lower it further.)* *(Origin: literature synthesis.)*

Long COVID immune dysregulation may be partly reversible in a way that distinguishes it from established ME/CFS. A 24-month longitudinal follow-up of the Australian ADAPT cohort (mild--moderate long COVID) found that the early immune-activation features — elevated PD-1/TIM-3 on CD4#super[+] and CD8#super[+] T cells, elevated nucleocapsid IgG and neutralizing capacity at 3--8 months — resolved by 24 months, with scRNA-seq showing reconstituted naive T/B subsets and no residual exhaustion-score difference @Phetsouphanh2024longcovid24mo. This is the *opposite* of the durable, epigenetically locked exhaustion documented in ME/CFS (Hypothesis @hyp:tcell-exhaust-ev-downstream). The contrast has diagnostic and prognostic value: transient immune activation that resolves should not be conflated with persistent immune dysregulation. This does not rule out a long-COVID subgroup that progresses to persistent ME/CFS, but it cautions that an abnormal immune profile in early long COVID is not itself evidence of a permanent exhaustion state.

*Falsifiable prediction:* In patients with post-infectious illness, longitudinal immune profiling will show that those who recover have normalization of PD-1/TIM-3 exhaustion markers and naive T/B reconstitution within 24 months, whereas those who progress to ME/CFS criteria retain elevated exhaustion markers with no reconstitution. To test the distinguishing claim that the persistent state is *epigenetically locked* (rather than merely transcriptionally active), the prediction must be extended to chromatin accessibility: recovering patients will show no lasting open-chromatin gain at exhaustion loci (PDCD1, HAVCR2, TOX, ENTPD1 by ATAC-seq), while ME/CFS-progressors will show stable, open exhaustion-locus chromatin already present at 3–8 months. Falsified if recovering long-COVID patients show no immune normalization, if ME/CFS-progressing patients show full immune reconstitution, or if exhaustion-locus chromatin accessibility does not separate the two trajectories.

*Limitations:* The ADAPT cohort comprised mild--moderate cases; severe long COVID and ME/CFS-phenotype long COVID may not follow the same resolution trajectory. The reversibility finding does not apply to established ME/CFS, where persistence is well documented. The Phetsouphanh 2024 cohort is a longitudinal extension of the same ADAPT biobank as the earlier Phetsouphanh 2022 report, not an independent replication.

*Consequence:* If some post-infectious immune changes are reversible within a defined window, it changes how clinicians and researchers interpret an early abnormal immune profile: it is not necessarily the onset of permanent immune exhaustion, and it argues for early-intervention trials within the potentially reversible phase rather than assuming irreversibility.

] <spec:long-covid-reversibility>

#open-question(title: [Cortisol in Post-Infectious Illness: A Contested Peripheral Biomarker])[

Klein et al.\ (2023) reported lower morning cortisol in long COVID @Klein2023longcovidprofiling, a finding convergent with the HPA-axis blunting and low-normal cortisol documented in ME/CFS (Chapter @ch:endocrine; Section @sec:hpa-axis). However, a prospective study (n=178, Essen cohort) found no difference in serum IL-1$beta$, IL-6, TNF$alpha$, or cortisol between ongoing-PASC, resolved-PASC, and control groups at a single timepoint @Fleischer2024cortisolnull. The discrepancy is not fully resolved: Klein measured morning cortisol in a longer-term, multi-site cohort; Fleischer used single-timepoint peripheral blood. Both findings caution against treating peripheral cytokine/cortisol levels as stable, stand-alone biomarkers of post-infectious illness — a caution that extends to ME/CFS biomarker claims built on single-timepoint peripheral measures. Dynamic or repeated measures, and severity-stratified cohorts, are required to resolve whether hypocortisolism is a consistent feature of the post-infectious phenotype.

*Consequence:* Clinicians and researchers should not rely on a single cortisol or cytokine measurement to confirm or exclude post-infectious immune/HPA dysregulation; the marker is contested and timepoint-sensitive.

] <oq:cortisol-postinfectious-contested>

#limitation(title: [Cohort Overlap Constrains the Convergence Claim])[
The apparent ME/CFS–long-COVID convergence (above) must not be read as independent corroboration. Petrov 2025 (convergent lymphocytes/cytokines) and Petrov 2026 (divergent monocyte/DC) are drawn from the same Plovdiv research group with overlapping recruitment and shared authorship (Maes, Murdjeva), and the reversibility finding (Phetsouphanh 2024) is a longitudinal extension of the *same* ADAPT biobank as the earlier Phetsouphanh 2022 report. The "convergent lymphocytes + divergent myeloid" picture is therefore two analyses from overlapping patient populations, not two independent replications, and cannot be cited as corroborating independent cohorts. (The two Petrov panels report differing sample sizes — n=190 vs n=207 — so the precise overlap is not fully documented; the caution rests on shared group, site, and authorship.) Independent multi-site replication is required before the convergent-immunopathology framing is treated as robust.

*Consequence:* The convergence and reversibility signals are weaker than their headline certainties imply; independent-cohort replication must precede any firm cross-disease claim.

] <lim:lc-convergence-cohort-overlap>

#limitation(title: [Mild-Disease Sampling Bias in the Long-COVID Reversibility Evidence])[
The long-COVID reversibility and EBV-null findings come from cohorts at the mild end of the spectrum: Phetsouphanh (mild–moderate), Hoeggerl (mild/asymptomatic blood donors), and Lorenz (retrospective post-COVID syndrome). The severe or ME/CFS-phenotype subgroup — where persistence, epigenetic locking, and reactivation are most relevant — is systematically under-sampled. The reversibility and EBV-null conclusions may therefore not generalize to the population this document is most concerned with; they argue for caution, not for discarding persistence or reactivation as relevant in severe post-infectious ME/CFS.

*Consequence:* Reversibility of long-COVID immune changes in mild cohorts should not be extrapolated to severe or ME/CFS-phenotype patients, where persistence is the documented pattern.

] <lim:lc-reversibility-mild-bias>

#synthesis(title: [Long COVID as a Convergent but Partly Reversible Immune State])[
The long-COVID immune-profiling evidence establishes a convergent but not identical relationship with ME/CFS. Long COVID shows comparable T-cell exhaustion, exhausted B cells, and exaggerated EBV/VZV antibody responses to those documented in ME/CFS @Klein2023longcovidprofiling, and a direct head-to-head comparison finds no significant difference in lymphocyte, CD8#super[+], NK, or cytokine readouts between the two conditions @Petrov2026comparable. Yet two cautions bound this convergence: the immune changes appear partly reversible by ~24 months in mild long-COVID cohorts (@spec:long-covid-reversibility), in contrast to the durable, epigenetically locked exhaustion of established ME/CFS; and the direct-comparison and divergence panels derive from the same Plovdiv research group, so the "convergent lymphocytes + divergent myeloid" picture is not independent replication (@lim:lc-convergence-cohort-overlap). Where the two panels can be weighed, the larger dedicated immunophenotyping panel (n=207) points to a *divergent* myeloid activation state (immune suppression in ME/CFS vs activation in long COVID), so the convergence is best restricted to the lymphopenic/cytokine readouts rather than treated as a global shared immunophenotype. The most defensible claim is that post-infectious immune dysregulation follows a shared convergent pattern whose *persistence* — not its mere presence — is what distinguishes ME/CFS. Distinguishing reversible from locked exhaustion, and confirming convergence in independent cohorts, are the two open priorities (@oq:cortisol-postinfectious-contested; @lim:lc-reversibility-mild-bias).

*Consequence:* For researchers, the key discriminator is not whether immune dysregulation is present but whether it persists and is epigenetically locked — which points to longitudinal designs and independent-cohort replication, and cautions against treating reversible long-COVID changes as evidence of permanent immune exhaustion.

] <syn:lc-mecfs-convergence-reversible>

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

#hypothesis(title: [CD8+ T-Cell Mitochondrial Fragmentation Underlies Acquired Immune Exhaustion])[
*(Origin: brainstorm — literature synthesis.)* *(Certainty: 0.60 — T-cell exhaustion (Iu 2024, cert 0.75) and mitochondrial dysfunction (Mandarano 2020, cert 0.70; Shankar 2025, cert 0.75) both established in ME/CFS; DRP1 activation in PBMCs documented (Schreiner 2020); 3 independent reinforcement domains (ch06 selective-energy, ch07 immune-energy-starvation niche, ch14d HIV/cancer parallels) support the fission-to-exhaustion pathway. Causal link (DRP1→fission→exhaustion) still inferred from separate cell types and separate patients.)*

The CD8+ T-cell exhaustion documented in ME/CFS by Iu et al.\ (2024) @iu2024tcell_exhaustion and the metabolic dysfunction characterized by Mandarano et al.\ (2020) @Mandarano2020 may share a common upstream mechanism: mitochondrial fragmentation (fission) mediated by the DRP1 pathway.

*The Cascade.* Post-infectious triggers — viral reactivation, ER stress, or chronic immune activation — activate DRP1-mediated mitochondrial fission. In T cells, this produces: (1) fragmented mitochondria with reduced membrane potential and impaired oxidative phosphorylation, (2) failed metabolic reprogramming upon activation (the Warburg effect deficit documented by Mandarano 2020), and (3) epigenetic locking via TOX/EOMES/TCF7 chromatin remodeling into a terminally exhausted state (Iu 2024). Schreiner et al.\ (2020) demonstrated that HHV-6 reactivation triggers DRP1-mediated mitochondrial fragmentation in ME/CFS PBMCs @SchreinerEtAl2020, providing mechanistic precedent for the fission pathway operating in immune cells. Missailidis et al.\ (2020) showed that even immortalized ME/CFS lymphocytes carry a Complex V (ATP synthase) defect with compensatory respiratory upregulation — when activated, these cells exhaust their reserve capacity and cannot meet acute energy demands @Missailidis2020ComplexV.

*Why Acquired, Not Inherited.* The largest ME/CFS GWAS to date (DecodeME) found genetic risk enrichment in neuronal cell types rather than immune cells. This genetic architecture implies that the mitochondrial failure observed in CD8+ T cells is an *acquired* consequence of the post-infectious disease state, driven by the same DRP1/oxidative-stress/fission pathways that damage neuronal mitochondria. The immune system's mitochondrial pathology is a downstream casualty of the energy crisis, not a genetic predisposition. This explains why T-cell subset counts remain normal (Cliff 2019 @Cliff2019Cellular) while T-cell function collapses: the cells are present but metabolically crippled.

*Falsifiable prediction:* Direct TEM imaging of CD8+ TEM cells from ME/CFS patients versus matched controls will show increased mitochondrial fragmentation (reduced mean mitochondrial length, increased circularity index). DRP1 protein levels (western blot) will be elevated in isolated CD8+ T cells from ME/CFS patients compared to controls. If CD8+ mitochondrial morphology is normal despite documented exhaustion (Iu 2024), mitochondrial fission is not the cause — exhaustion is driven by a different mechanism (antigen, EV cargo, or signaling from exhausted myeloid cells). In vitro DRP1 inhibition (e.g., Mdivi-1) of ME/CFS CD8+ T cells should partially restore membrane potential and metabolic reprogramming capacity if the fission hypothesis is correct.

*Consequence:* If mitochondrial fission is the mechanism linking acquired energy failure to immune exhaustion, then DRP1 inhibition — a pharmacological strategy already under investigation in neurodegeneration — becomes a plausible path to restoring T-cell function in ME/CFS. This is a specific, testable therapeutic hypothesis rather than a general "mitochondrial support" approach.

*Limitations:* DRP1/fission not directly measured in primary ME/CFS T cells — inferred from PBMC (Schreiner 2020) and lymphoblast (Missailidis 2020) data. The Hanson lab cohort (Mandarano 2020, Iu 2024, Maya 2023) uses overlapping patient samples — these are extensions, not independent replications. Gil 2024 antioxidant case series is unblinded, n=8. Severity coverage: unknown — all cohorts were ambulatory; severe/very-severe patients may show different or exaggerated patterns.

] <hyp:cd8-mito-fragmentation-exhaustion>

#limitation(title: [Systematic Evidence Gaps in the CD8+ T-Cell Mitochondrial Exhaustion Literature])[
*(Origin: brainstorm — evidence quality assessment.)* *(Certainty: 0.75 that the core findings survive correction for most concerns but require qualification.)*

The CD8+ mitochondrial exhaustion literature has structural weaknesses that constrain inference:

*Cohort non-independence.* Mandarano et al.\ 2020 (@Mandarano2020), Iu et al.\ 2024 (@Iu2024CD8Exhaustion), and Maya et al.\ 2023 (@Maya2023FAOxidation) all draw from the same Hanson/Cornell clinical cohort. These papers build depth (multi-omics on the same patients) but are not independent replications. The three strongest CD8+ mitochondrial findings in the literature come from a single patient group.

*Activity confounding.* No study has measured or controlled for physical activity level between ME/CFS and healthy controls. Bed rest alone reduces PBMC mitochondrial respiration in healthy volunteers (Alibegovic 2010; Dirks 2016). The degree to which CD8+ mitochondrial differences reflect ME/CFS-specific pathophysiology versus deconditioning is unknown.

*Missing mechanistic intermediate.* DRP1 and fission/fusion proteins (p-DRP1(Ser616), MFN1/2, OPA1) have never been measured in primary CD8+ T cells — the cell type where exhaustion is documented. The central causal claim (DRP1-mediated fission → exhaustion) rests on PBMC DRP1 data (Schreiner 2020, n=10 @SchreinerEtAl2020) plus CD8+ exhaustion data (Iu et al.\ 2024 @Iu2024CD8Exhaustion) — measured in different cell types from different patients.

*Functional validation absent.* "Exhaustion" is inferred from transcriptional and surface-marker similarity to cancer exhaustion, not from functional impairment. No study has tested whether ME/CFS CD8+ T cells fail to respond to cognate antigen (e.g., CMV or EBV tetramer+ recall assay) — the defining functional feature of exhaustion. The Gil et al.\ 2024 @Gil2024CD8dysfunction finding (diminished IFNγ/TNFα) used PMA/ionomycin, a non-physiological stimulus that bypasses TCR and metabolic checkpoints.

*Small samples, winner's curse.* The largest study with CD8+ functional metabolic data is Mandarano et al.\ 2020 (n=53). The scRNA-seq from Iu et al.\ 2024 uses a subset of that cohort. Effect sizes may be substantially overestimated. No multi-center replication with >200 patients exists.

*Consequence:* Until the activity confound is controlled, DRP1 is measured in primary CD8+ TEM cells, and antigen-specific recall is tested with concurrent metabolic readout, the CD8+ mitochondrial exhaustion hypothesis should be treated as mechanistically promising but unvalidated — consistent with a ~17% probability that it represents a primary causal mechanism (see Section @sec:tcell-mito-null-hypotheses). The three highest-priority experiments are TEM imaging of CD8+ cell mitochondria (Idea 2.1), DRP1 protein quantification in sorted CD8+ TEM cells (Idea 2.2), and antigen-specific recall response with concurrent metabolic readout (Idea 2.3) — all feasible within 12–24 months at modest cost.

*Alternative null hypotheses ranked by likelihood in Section @sec:tcell-mito-null-hypotheses.*
] <lim:cd8-mito-evidence-quality>

#open-question(title: [Null Hypotheses for T-Cell Mitochondrial Exhaustion])[
*(Origin: brainstorm — null hypothesis assessment.)* *(Certainty: cumulative ~83% that at least one null hypothesis partially holds.)*

Five distinct null hypotheses, each testable with well-defined experiments:

*N1 — Activity confound (P ~0.45).* CD8+ mitochondrial dysfunction is mainly or entirely explained by physical inactivity. When step count is controlled by accelerometry, the ME/CFS vs HC difference in CD8+ ΔΨm is reduced by ≥50%. Test: activity-controlled comparison (feasible, 6 months).

*N2 — No clinical consequence (P ~0.35).* CD8+ mitochondrial exhaustion is real and not explainable by inactivity, but it has no clinical consequence — it does not predict infection susceptibility, vaccine response, or symptom severity. Test: prospective infection/vaccine study with concurrent CD8+ metabolic readout (feasible, 12 months).

*N3 — CNS-primary (P ~0.30).* CD8+ mitochondrial exhaustion is downstream of neuroendocrine/autonomic dysfunction: sympathetic overactivity, sleep disruption, and HPA axis dysregulation directly suppress T-cell mitochondrial metabolism. Test: CNS-targeted intervention (sleep improvement, vagal nerve stimulation) with CD8+ mitochondrial readout (feasible, 18 months).

*N4 — Protective exhaustion (P ~0.20).* CD8+ exhaustion is an adaptive response that limits immunopathology — reversing it could unleash cytotoxic activity on tissues with compromised mitochondrial function, worsening the disease. Test: monitor tissue damage markers (CPK, troponin) during any exhaustion-reversing intervention trial.

*N5 — Measurement artifact (P ~0.15).* The Iu 2024 scRNA-seq exhaustion signature is driven by a small subset of terminally differentiated cells overrepresented due to batch effects, processing delays, or viability differences between ME/CFS and HC samples. Test: independent replication of scRNA-seq with proper batch correction and viability controls.

These nulls are nested: N1 is the most likely, N5 the least. The cumulative probability that CD8+ mitochondrial exhaustion is a primary, pathological, and clinically consequential immune defect (all five nulls rejected) is approximately (1−0.45) × (1−0.35) × (1−0.30) × (1−0.20) × (1−0.15) ≈ 0.17. This is high enough to justify continued research but demands epistemic humility in therapeutic claims.

*Consequence:* Readers should interpret the CD8+ mitochondrial exhaustion hypothesis as a promising mechanistic framework — not an established pathogenic mechanism. The hypothesis survives or dies on three experiments: TEM imaging (see @hyp:cd8-mito-fragmentation-exhaustion, falsifiable prediction), DRP1 quantification in primary CD8+ TEM cells, and antigen-specific recall assay. These are prioritized over therapeutic development because distinguishing the null hypotheses determines whether treatments targeting CD8+ mitochondria are worth pursuing or fundamentally misdirected.
] <sec:tcell-mito-null-hypotheses>

#speculation(title: [DRP1-ROS-pERK Positive Feedback Loop May Make CD8+ Mitochondrial Fragmentation Self-Sustaining])[
*(Origin: brainstorm.)* *(Certainty: 0.40 — DRP1-ERK(Ser616) phosphorylation established in cancer biology (Kashatus 2015 @Kashatus2015ERKDRP1); ROS-ERK activation documented in T cells (Kaminski 2012 @Kaminski2012ROSERKTCell); SOD2 depletion + lymphocyte ROS documented in ME/CFS (Shankar 2025 @Shankar2025oxidativestress). The three nodes (DRP1, ROS, pERK) have not been measured simultaneously in ME/CFS T cells, but each pairwise connection has independent literature support.)*

Schreiner et al.\ 2020 showed HHV-6 reactivation activates DRP1-mediated mitochondrial fission in PBMCs @SchreinerEtAl2020. Shankar et al.\ 2025 showed elevated mitochondrial ROS and SOD2 depletion in memory lymphocytes @Shankar2025oxidativestress. These two findings, from separate labs and separate cohorts, are connected by a documented positive feedback loop: DRP1 activation → mitochondrial fragmentation → electron transport chain disruption → ROS production → ERK1/2 phosphorylation (pERK) → DRP1 phosphorylation at Ser616 (the activating site) → further DRP1 translocation to mitochondria → sustained fission. This loop is documented in cancer biology (Kashatus 2015) and neurodegeneration (Kim 2016) but never examined in ME/CFS T cells.

In healthy CD8+ T cells, TCR stimulation triggers a transient fission burst (~30–60 minutes) followed by OPA1/MFN-mediated re-fusion. If SOD2 is depleted (Shankar 2025) and ROS cannot be quenched, pERK remains active, DRP1 stays at Ser616-phosphorylated and mitochondrially localized, and the fission burst becomes chronic. The initial viral trigger is no longer required — the loop sustains itself. This makes a prediction that distinguishes it from competing models: pharmacologically breaking the loop at any node (antioxidant → reduce ROS, MEK inhibitor → block ERK, mdivi-1 → inhibit DRP1) should restore mitochondrial fusion and partially reverse the exhaustion program. The positive-feedback model predicts reversibility; a "mitochondrial damage" model predicts irreversibility. Distinguishing these has direct therapeutic implications.

*Falsifiable prediction:* Isolated CD8+ TEM cells from ME/CFS patients will show elevated p-DRP1(Ser616)/total DRP1 ratio and elevated p-ERK1/2 (T202/Y204) by western blot compared to healthy controls. In vitro mdivi-1 (DRP1 inhibitor, 10 µM, 24h) treatment will reduce p-ERK and restore mitochondrial network morphology — if it does not, ERK is not upstream of DRP1 in this context, and the loop is not the dominant mechanism.

*Consequence:* If the DRP1-ROS-pERK loop is operational, it implies that a limited-duration pharmacological intervention (DRP1 inhibitor or potent antioxidant) could reset the fission-fusion balance — potentially restoring CD8+ function without lifelong treatment. The key measurement (p-DRP1(Ser616) and p-ERK in sorted CD8+ TEM cells by western blot) uses standard antibodies and could be completed in weeks.

*Limitations:* p-DRP1(Ser616) and p-ERK have never been measured in ME/CFS T cells. The DRP1-ROS-pERK loop is inferred from Schreiner 2020 (PBMC DRP1) + Shankar 2025 (lymphocyte ROS) + published non-ME/CFS models (Kashatus 2015). The three nodes have not been measured in the same patients.
] <spec:drp1-ros-perk-loop>

#open-question(title: [Research Priorities for Validating the CD8+ T-Cell Mitochondrial Exhaustion Hypothesis])[
*(Origin: brainstorm — research gap synthesis.)*

The highest-impact experiments — none yet performed in ME/CFS — that could confirm or refute the CD8+ mitochondrial exhaustion hypothesis:

1. *TEM imaging of sorted CD8+ TEM cell mitochondria (highest priority).* All existing mitochondrial data are indirect (membrane potential, oxygen consumption, transcriptomics). Direct visualization would quantify mitochondrial length, cristae density, and fission/fusion intermediates — confirming or refuting the central prediction of mitochondrial fragmentation. Feasibility: standard TEM, commercially available antibodies for immunogold labeling, ~12 months.

2. *DRP1 and fission/fusion protein quantification in primary CD8+ TEM cells.* Western blot for p-DRP1(Ser616), total DRP1, MFN1, MFN2, OPA1 (long and short forms) in sorted CD8+ TEM cells from ME/CFS vs HC. The single most critical missing data point — measured in PBMCs (Schreiner 2020) but never in the cell type where exhaustion is documented. Feasibility: standard western blot, commercially available antibodies, ~4 weeks.

3. *Antigen-specific recall response with concurrent metabolic readout.* CMV/EBV/Flu tetramer+ CD8+ cells tested for proliferation, cytokine production, and Seahorse metabolic flux upon cognate peptide stimulation. The functional significance question: do metabolically exhausted CD8+ T cells actually fail to respond to their cognate antigen? Feasibility: requires HLA-A2 screening + tetramer staining + metabolic flux analyzer + peptide-pulsed APCs, ~18 months.

Until these three experiments are completed, the CD8+ mitochondrial exhaustion hypothesis rests on inferential evidence — strong inference, multiple converging data streams, but no direct causal chain measurement. Priority ranking: direct observation (TEM) before mechanism (DRP1) before function (recall response).

*Consequence:* For researchers: these three experiments have well-defined protocols, commercial reagents, and accessible techniques — they are constrained only by access to patient samples, not by technological barriers. For funders: prioritizing the evidence gap (do the mitochondria actually look fragmented?) over therapeutic development (should we trial DRP1 inhibitors?) is the rational allocation of scarce research resources.
] <spec:cd8-mito-research-priorities>

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

