# Brainstorm: Fibromyalgia Genetics (Kerrebijn 2026 GWAS)

**Topic slug:** `fibromyalgia-genetics`
**Date:** 2026-08-22
**Agent:** scientific-insight-generator (Phase 4)
**Decision:** **PROCEED** — all categories 1–12 allowed (no active-category caps)
**Primary:** @Kerrebijn2026FibromyalgiaGWAS (discounted 0.68)

## Scope guard (duplicate avoidance)

Phase 3 already created these environments — do NOT re-propose them as ideas:
- `@hyp:fibromyalgia-cns-shared-genetic-vulnerability` (CNS/nociplastic architecture)
- `@hyp:shared-transdiagnostic-cns-genetic-factor` (rg>0.7 IBS/back-pain/PTSD)
- `@hyp:shared-central-genetic-architecture-fibro-mecfs` (shared central architecture)
- `@oq:fm-mecfs-genetic-correlation-untested` (no direct FM×ME/CFS rg yet)
- `@lim:kerrebijn-fibromyalgia-gwas-limitations` (ancestry bias, population weight)

Ideas here **extend** these, target the specific un-integrated mechanistic, therapeutic,
modeling, and epistemic angles the genetic evidence surfaces, and are ranked for the
Phase 5 integration guide. No idea restates an existing hypothesis box.

---

## Ranked summary

| # | Label | Category | Cert | One-line rationale |
|---|-------|----------|------|--------------------|
| 1 | Direct FM×ME/CFS LDSC rg + cross-trait MTAG | Research (2) | 0.55 | The single decisive test — compute the rg that both primary GWASs never reported. |
| 2 | GPR52/HTT shared neural-pathway druggability map | Drug (3) | 0.35 | GPR52 (HTT regulator) is shared locus + investigational target; mapping HTT/GPR52/DRD2 onto ME/CFS PRS selects a repurposing candidate. |
| 3 | Shared-vulnerability-vs-severity DAG disambiguation | Model (7) | 0.45 | Two rival DAGs — shared central factor → both diseases vs independent factors → comorbidity-by-clinical-overlap — generate opposite severity predictions. |
| 4 | Autoimmune reconciliation: passive-IgG subset under no-MHC GWAS | Hypothesis (1) | 0.40 | GWAS "no MHC signal" ≠ no autoimmune mechanism; passive-IgG (Goebel 2021) fits an antibody-subset within a non-HLA-linked architecture. |
| 5 | FM-PRS-as-ME/CFS-severity-proxy study | Diagnostic (9) | 0.42 | Test whether FM PRS stratifies ME/CFS severity/central-sensitization burden (currently unknown — GWAS not stratified). |
| 6 | Nociplastic-factor → ME/CFS transdiagnostic PRS | Cross-disease (8) | 0.45 | GenomicSEM nociplastic factor (Johnston 2025) predicts severity across ME/CFS-FM-IBS; validation of a transdiagnostic CNS factor. |
| 7 | Sex-neutral-architecture probe (rg_fm=1.03) | Research (2) | 0.40 | FM inter-sex rg 1.03 contradicts the 87.7% female preponderance → test whether the sex gap is environmental/non-additive, not allelic. |
| 8 | Genetic-correlation ≠ causation caveat (Pleiotropy) | Critical (10) | 0.50 | rg>0.7 with PTSD/back-pain could be reverse/indirect pleiotropy, not a shared causal pathway — the comorbidity link is genetic *association*. |
| 9 | HTT signal may be fibromyalgia-specific, not ME/CFS | Critical (10) | 0.45 | Shared locus (GPR52/OLFM4) ≠ shared mechanism; HTT/GPR52 could be FM-specific and not transfer to ME/CFS pathophysiology. |
| 10 | Population-weight discount means weak direct relevance | Critical (12) | 0.68 | Evidence is a comorbid condition (weight 0.80), not an ME/CFS cohort; direct ME/CFS inference is indirect. |
| 11 | Null role: comorbidity as referral/clinical artifact | Critical (11) | 0.38 | If FM×ME/CFS rg is near-zero, the 20–70% overlap reflects shared-symptom referral, not shared biology. |
| 12 | GPR52 agonist availability/safety gap | Critical (10) | 0.30 | GPR52 agonists largely investigational; no human safety data — repurposing is premature without target engagement. |
| 13 | Severity-stratification absence undermines PRS utility | Critical (12) | 0.45 | GWAS not stratified; PRS-translation to severity, PEM, or OI outcomes is unsupported until stratified. |
| 14 | Peripheral-central discordance probe (Hu 2025) | Research (2) | 0.32 | Hu 2025 brain-network FM vs peripheral SFN subset (Goebel) — test whether a peripheral-neuropathic FM subset is genetically distinct. |

**Counts:** H = 2 hypotheses (cat 1) · R = 4 research (cat 2) · D = 1 drug (cat 3) ·
M = 1 model (cat 7) · B = 1 cross-disease (cat 8) · Dg = 1 diagnostic (cat 9) ·
C = 5 critical (3 cat-10, 1 cat-11, 2 cat-12). **Supplement (4), non-pharmacological
(5), combination (6) = 0** — deliberately deferred: genetic-architecture evidence does
not yet justify supplement/intervention/combination brainstorming (weakest therapeutic
linkage of this topic).

---

## Constructive ideas

### Idea 1 — Direct FM×ME/CFS LDSC rg + cross-trait MTAG
*Category 2 (research direction) · cert 0.55 · extends `@oq:fm-mecfs-genetic-correlation-untested`*

**Mechanistic rationale + evidence link.** The pivotal unanswered computation: Kerrebijn computed rg against chronic-pain/psychiatric/somatic traits but not ME/CFS @Kerrebijn2026FibromyalgiaGWAS; DecodeME computed rg against 3,167 traits but not a fibromyalgia case/control GWAS @DecodeME2025. Both independently show exclusive brain/neural-cell-type enrichment and share loci (_OLFM4_, _RABGAP1L_, _GPR52_), so the prior is a significantly positive rg — but it is *unmeasured*. The single clean test is cross-trait LD-score regression between the Kerrebijn summary statistics and DecodeME/Maccallini, plus a cross-trait MTAG to jointly identify loci. This resolves whether the shared-architecture model (`@hyp:shared-central-genetic-architecture-fibro-mecfs`) is supported by a direct correlation or rests only on convergent-but-independent enrichment.

**Falsifiable prediction.** Cross-trait LDSC yields rg > 0.3 (point estimate) with shared brain/neural-cell-type enrichment, and MTAG discovers additional loci significant in the joint but not either single-trait analysis. Falsified if rg is indistinguishable from zero despite clinical overlap.

**Non-specialist consequence.** This one computation settles whether the fibromyalgia-ME/CFS overlap is a shared genetic wiring fault or two conditions that happen to look alike — the difference between "same disease root" and "different roots, same symptoms."

`origin: brainstorm`

---

### Idea 2 — GPR52/HTT shared neural-pathway druggability map
*Category 3 (drug idea) · cert 0.35 · extends `@hyp:fibromyalgia-cns-shared-genetic-vulnerability`*

**Mechanistic rationale + evidence link.** The strongest coding variant in the fibromyalgia GWAS is in _HTT_, and _GPR52_ (an _HTT_ transcriptional regulator) is a shared fibromyalgia-ME/CFS locus @Kerrebijn2026FibromyalgiaGWAS. GPR52 is an established investigational target in Huntington's disease (agonists proposed to lower mutant-HTT), and DRD2 (D2 dopamine receptor) is a third neural risk gene. This traces a candidate shared neural pathway (GPR52→HTT→D2 striatal signaling) that intersects the effort-motivation circuit already genetically grounded in ME/CFS (VTA/SN dopaminergic signal, Maccallini). A PRS-driven "druggability map" — prioritizing ME/CFS patients with high GPR52/HTT/DRD2 PRS and testing GPR52 agonism or a repurposed D2-modulating agent (e.g., aripiprazole-class partial agonist) — is the concrete repurposing path.

**Falsifiable prediction.** In a PRS-selected ME/CFS+FM cohort, a GPR52 agonist or D2 partial agonist improves central-sensitization/effort outcomes only in the high-PRS stratum, and HTT/GPR52 expression is altered in the corresponding brain cell types. Falsified if no differential response by PRS stratum, or if GPR52 engagement is undetectable at tolerable dose.

**Non-specialist consequence.** If fibromyalgia and ME/CFS share an HTT/GPR52 wiring fault, a drug already being developed for Huntington's could be repurposed — but only for the genetically-matched patients, not everyone.

`origin: brainstorm`

---

### Idea 3 — Shared-vulnerability-vs-severity DAG disambiguation
*Category 7 (mathematical model extension) · cert 0.45 · extends `@hyp:shared-central-genetic-architecture-fibro-mecfs`*

**Mechanistic rationale + evidence link.** The genetic evidence supports two rival causal graphs with *opposite* severity predictions. **Model A (shared latent factor):** one shared central genetic factor → both fibromyalgia and ME/CFS; comorbidity is a high-loading phenotype, so comorbid patients should be *more* affected centrally. **Model B (independent factors + clinical overlap):** two correlated-but-distinct central factors whose symptom domains (pain vs fatigue) overlap at the diagnostic boundary, so comorbidity is a *phenotypic threshold* artifact, not higher central burden. These make opposite predictions for disease-specific PRS in comorbid vs single-diagnosis patients. The model extension is to add an explicit severity/loading variable to the existing EPC/ODE framework and specify that Model A predicts positive correlation between FM-PRS and ME/CFS-severity, Model B predicts near-zero. This is testable and currently undecided — the GWAS is not severity-stratified.

**Falsifiable prediction.** In comorbid patients, FM-PRS correlates positively with a composite central-sensitization/severity index (Model A) vs shows no association once pain is regressed out (Model B). Falsified if the correlation direction contradicts the specified DAG.

**Non-specialist consequence.** This decides whether having both diagnoses means "worse underlying condition" or simply "two labels for overlapping symptoms" — which changes whether double-diagnosis patients need more or different treatment.

`origin: brainstorm`

---

### Idea 4 — Autoimmune reconciliation: passive-IgG subset under a no-MHC GWAS
*Category 1 (novel hypothesis) · cert 0.40 · reconciles Kerrebijn no-MHC vs `@Goebel2021passiveTransferFM`*

**Mechanistic rationale + evidence link.** The apparent contradiction — GWAS finds no MHC/immune-heritability signal @Kerrebijn2026FibromyalgiaGWAS, yet passive transfer of fibromyalgia IgG produces pain/fatigue in mice @Goebel2021passiveTransferFM — is not a contradiction if the autoantibody mechanism is (a) rare/subset-specific (present in a minority of patients, invisible to case/control GWAS), (b) not HLA-restricted (targets are satellite glial cells/DRG, not classical MHC-presented autoantigens), and (c) secondary or downstream of a primary neural-genetic vulnerability. This reconciles the `@Clauw2024FMAutoimmune` debate: an antibody-driven subset can coexist with a non-HLA, brain-enriched common genetic architecture. The hypothesis is that FM (and the FM-co-morbid ME/CFS subset) contains a latent antibody-positive subgroup whose passive-IgG mechanism operates independently of the polygenic CNS architecture.

**Falsifiable prediction.** In FM and FM-co-morbid ME/CFS, a detectable satellite-glial-cell-IgG-positive subset exists that (i) shows no elevated MHC/HLA PRS, (ii) has normal CNS PRS, and (iii) selectively responds to immunoadsorption. Falsified if antibody status is entirely explained by CNS PRS or if no such subset reproduces on passive transfer.

**Non-specialist consequence.** "No immune genes" does not mean "no immune cause" for some patients — a minority may still have an antibody-driven form that a genetic scan cannot see, which matters for who should be offered antibody-targeted treatment.

`origin: brainstorm`

---

### Idea 5 — FM-PRS as ME/CFS severity/central-sensitization proxy
*Category 9 (diagnostic/biomarker) · cert 0.42 · targets severity gap*

**Mechanistic rationale + evidence link.** The GWAS is not severity-stratified, so no PRS-to-severity relationship is known for FM, and none has been computed for ME/CFS. Given exclusive brain/neural enrichment and rg>0.7 with PTSD/back-pain/IBS @Kerrebijn2026FibromyalgiaGWAS, a fibromyalgia polygenic score plausibly indexes a *transdiagnostic central-sensitization burden* rather than fibromyalgia per se. The diagnostic idea: use FM-PRS as an objective, immutable proxy to stratify ME/CFS patients by central-sensitization load and test its correlation with severity (PEM, OI, pain comorbidity, allodynia), independent of self-report. This adds an objectively-weighted risk dimension to a diagnostic field that currently rests on symptom scales.

**Falsifiable prediction.** FM-PRS correlates with a central-sensitization index (pressure-pain thresholds, comorbid pain count) and with ME/CFS severity in comorbid patients, and is elevated in ME/CFS+FM vs ME/CFS-only. Falsified if FM-PRS shows no association with any objective severity marker in ME/CFS.

**Non-specialist consequence.** A genetic "central-sensitization score" could identify who carries the highest pain-network wiring burden without relying on how a patient describes their symptoms.

`origin: brainstorm`

---

### Idea 6 — Nociplastic transdiagnostic factor → ME/CFS PRS validation
*Category 8 (cross-disease bridge) · cert 0.45 · extends `@hyp:shared-transdiagnostic-cns-genetic-factor`*

**Mechanistic rationale + evidence link.** GenomicSEM independently establishes a shared nociplastic-pain heritable factor across chronic overlapping pain conditions @Johnston2025NociplasticPain, and a shared CNS/synaptic factor across fibromyalgia-psychiatric traits @Lin2026FibromyalgiaPsychiatric. Fibromyalgia rg>0.7 with IBS/back-pain/PTSD and pervasive with depression/migraine @Kerrebijn2026FibromyalgiaGWAS. The bridge: construct a *nociplastic factor PRS* and test whether it predicts cross-condition severity in ME/CFS, IBS, and FM jointly. If it does, ME/CFS is not a peripheral pain outlier but a node on a shared transdiagnostic CNS network — supporting centrally-targeted comorbidity management and transdiagnostic trials.

**Falsifiable prediction.** A nociplastic-factor PRS, computed from the GenomicSEM loadings, significantly predicts a shared severity factor across ME/CFS+IBS+FM cohorts and is enriched in brain/neural cell types. Falsified if the factor explains negligible cross-condition variance or enrichment is condition-specific.

**Non-specialist consequence.** If one "central-wiring" score predicts severity across all these overlapping conditions, it strengthens the case that they are flavors of one underlying brain problem — supporting shared, not condition-siloed, treatment research.

`origin: brainstorm`

---

### Idea 7 — Sex-neutral-architecture probe (rg_fm = 1.03)
*Category 2 (research direction) · cert 0.40 · extends `@Pan2025WidespreadPain`*

**Mechanistic rationale + evidence link.** Fibromyalgia is 87.7% female, yet the inter-sex genetic correlation is 1.03 — essentially identical architecture across sexes @Kerrebijn2026FibromyalgiaGWAS. This is a striking dissociation: near-maximal female preponderance with zero sex-difference in common-variant architecture. If allelic effects are identical, the female excess must come from sex-specific *environmental* triggers (trauma, hormonal, endocrine), from non-additive/epistatic or rare-variant effects invisible to GWAS, or from differential diagnostic ascertainment/referral bias. Independent GWAS reported sex trait-differences @Pan2025WidespreadPain. The research direction: a sex-stratified re-analysis probing gene-environment (female-specific trauma/hormonal) and non-additive contributions, and whether the female excess is genuinely biological or partially a diagnostic-referral artifact.

**Falsifiable prediction.** If the female excess is biological/environmental, female-specific exposures (e.g., reproductive-hormone timing, sex-specific trauma prevalence) account for the sex gap with identical PRS; if it is referral artifact, community-based (non-referral) screening narrows the apparent female preponderance without any genetic difference. Falsified if sex-stratified re-analysis finds sex-specific allelic effects despite rg=1.03.

**Non-specialist consequence.** If the near-identical genetics across sexes holds, the heavy female skew is more about life experience and who gets referred than about female-specific genes — which changes both research and who we look for.

`origin: brainstorm`

---

## Critical ideas

### Idea 8 — Genetic correlation ≠ causation: pleiotropy caveat
*Category 10 (reason this mechanism may NOT be relevant) · cert 0.50 · governs ALL rg claims*

**Mechanistic rationale + evidence link.** Every rg>0.7 value (IBS, back-pain, PTSD) and the pervasive depression/migraine correlations @Kerrebijn2026FibromyalgiaGWAS are *genetic correlations*, not proof of a shared causal biological pathway. r_g can be inflated by: (a) reverse causation (fibromyalgia causes secondary depression/chronic pain, not vice versa); (b) horizontal pleiotropy (one locus influencing many traits through unrelated mechanisms); (c) ascertainment/sample overlap; (d) a broad "distress/somatic symptom" genetic factor rather than a specific central-sensitization pathway. The GenomicSEM factors @Johnston2025NociplasticPain @Lin2026FibromyalgiaPsychiatric are model fits that could reflect a generic neuroticism/negative-affect factor rather than a pain-specific network. The shared-central-architecture inference (`@hyp:shared-central-genetic-architecture-fibro-mecfs`) rests on correlation, and correlation-based enrichment is not a causal demonstration.

**Falsifiable prediction.** If the correlation is causal and specific, shared loci show directional consistency and genetic-Mendelian-randomization (MR) effects of FM genetic liability on ME/CFS outcomes are non-null; falsified if the rg collapses after conditioning on negative-affect/genetic-depression, or if MR shows bidirectional or null effects.

**Non-specialist consequence.** Two conditions sharing risk genes is a clue, not a verdict — a shared brain wiring pattern could be correlation rather than cause, so "genetically linked" does not yet mean "same disease."

`origin: brainstorm`

---

### Idea 9 — HTT/GPR52 signal may be fibromyalgia-specific, not ME/CFS
*Category 10 (reason mechanism may NOT transfer) · cert 0.45 · governs the repurposing idea (Idea 2)*

**Mechanistic rationale + evidence link.** Shared *loci* (_OLFM4_, _RABGAP1L_, _GPR52_) and convergent brain enrichment do not establish a shared *mechanism*. The strongest fibromyalgia signal is a coding variant in _HTT_ @Kerrebijn2026FibromyalgiaGWAS; _HTT_ is a huge gene whose variants associate with many neuropsychiatric/neurodegenerative conditions, and its FM association could reflect a fibromyalgia-specific (pain-network) effect that does not transfer to ME/CFS fatigue/PEM. GPR52's prominence in ME/CFS genetics is via regulatory/expression overlap, not necessarily the same causal direction. The fibromyalgia weight is 0.80, not 1.00. The HTT/GPR52/DRD2 neural pathway — the very basis of the repurposing idea (Idea 2) — could be genuinely FM-specific, and pushing it onto ME/CFS could be an over-reach.

**Falsifiable prediction.** In a direct FM×ME/CFS cross-trait analysis, HTT/GPR52/DRD2 loci show FM-specific direction/effect that does not replicate in ME/CFS, and the shared loci do not drive shared genetic correlation. Falsified if the GPR52/HTT pathway shows concordant directional effects and joint significance across both traits.

**Non-specialist consequence.** The headline gene discovery could belong to fibromyalgia only — so a drug aimed at it might help fibromyalgia without touching the ME/CFS half of the overlap, and we should not assume it transfers.

`origin: brainstorm`

---

### Idea 10 — Population-weight discount: comorbid condition, not ME/CFS cohort
*Category 12 (evidence-quality concern) · cert 0.68 · the primary epistemic caveat*

**Mechanistic rationale + evidence link.** Kerrebijn et al. studied fibromyalgia cases — a comorbid population with a 0.80 population weight relative to ME/CFS, not an ME/CFS cohort @Kerrebijn2026FibromyalgiaGWAS. The discounted certainty is 0.68 (raw 0.85 × 0.80). Every ME/CFS inference in this topic is *indirect*: we infer a shared architecture from the fact that both conditions independently show brain enrichment, but the only direct link between the two is clinical comorbidity (20–70%) and shared loci — neither of which is measured in a single dataset. This means the entire ME/CFS-relevant edifice (Ideas 1–7) rests on a two-step chain (FM-CNS architecture + ME/CFS-CNS architecture → shared), and each step carries independent error.

**Falsifiable prediction.** Direct FM×ME/CFS cross-trait analysis (Idea 1) either confirms or refutes the inferred shared architecture; falsified (for the inference) if the two are correlated but with wholly divergent locus-level effects, indicating the convergent enrichment is coincidental.

**Non-specialist consequence.** The fibromyalgia study tells us a lot about fibromyalgia and only by reasonable inference about ME/CFS — the direct ME/CFS reading is educated extrapolation until the two are measured together.

`origin: brainstorm`

---

### Idea 11 — Null role: comorbidity as referral/clinical artifact
*Category 11 (null-hypothesis assessment) · cert 0.38 · the honest no-role case*

**Mechanistic rationale + evidence link.** The 20–70% fibromyalgia-ME/CFS co-occurrence could be inflated by shared symptoms (pain, fatigue, sleep disturbance, cognitive fog) that drive co-referral to the same clinics and attract both labels in the same patient — a diagnostic-threshold artifact rather than shared biology. If the direct FM×ME/CFS rg (Idea 1) is near-zero, the null model holds: the two are biologically distinct CNS conditions whose phenotypic overlap produces apparent comorbidity without a shared genetic root. This is not an outlandish null — the GWAS already shows FM rg>0.7 with PTSD/back-pain but the ME/CFS correlation is unmeasured and could fall well below that @Kerrebijn2026FibromyalgiaGWAS @DecodeME2025. Under the null, centrally-targeted treatments should NOT be assumed to cross conditions, and the comorbidity statistic should be interpreted as a measurement artifact.

**Falsifiable prediction.** Direct LDSC gives rg near zero between FM and ME/CFS, and adjusting FM×ME/CFS comorbidity for shared-symptom severity and referral-center overlap collapses the association. Falsified (null rejected) if rg is robustly positive after such adjustment.

**Non-specialist consequence.** It is possible the two diagnoses mostly travel together because they share symptoms and get filed together in the same clinic — not because they share a cause — in which case treatment should stay condition-specific.

`origin: brainstorm`

---

### Idea 12 — GPR52 agonist availability/safety gap
*Category 10 (drug-idea disproof constraint) · cert 0.30 · governs Idea 2*

**Mechanistic rationale + evidence link.** GPR52 is an investigational target in Huntington's (agonists proposed to lower mutant-HTT), but a *validated*, clinically available GPR52 agonist with human safety data is not established — the target is largely at the preclinical/investigational stage. The druggability argument in Idea 2 therefore outruns the pharmacology: even if the GPR52/HTT pathway is shared (Idea 9 caveat), the repurposing step (Idea 2) is blocked by target-availability and safety uncertainty. There is no human-dose, no engagement biomarker, and no long-term safety record for GPR52 modulation; DRD2 partial agonism (the D2 leg of the pathway) has known psychiatric/endocrine side effects. This is a material reason the treatment idea may fail at the implementation stage regardless of the genetics.

**Falsifiable prediction.** A GPR52-agonist dosing study fails to show measurable target engagement at tolerated dose in human CNS tissue, or the D2-modulating agent's side-effect profile precludes use in ME/CFS patients. Falsified if a safe GPR52-agonist with confirmed engagement enters human trials and shows differential effect by PRS stratum.

**Non-specialist consequence.** A promising gene target is worthless if no safe drug exists that actually reaches it — so the treatment idea is years away, gated on pharmacology, not just on the genetics being right.

`origin: brainstorm`

---

### Idea 13 — Severity-stratification absence undermines PRS utility
*Category 12 (evidence-quality concern) · cert 0.45 · governs Ideas 5 and 3*

**Mechanistic rationale + evidence link.** The Kerrebijn GWAS is not severity-stratified — it contrasts cases vs controls, so no relationship between fibromyalgia genetic liability and severity (or PEM, OI, comorbid burden) is established @Kerrebijn2026FibromyalgiaGWAS. This directly limits Ideas 3 (severity-DAG) and 5 (FM-PRS-as-severity-proxy): a PRS built from a binary case/control GWAS may index *case status / liability* but not *severity*, and the two can be genetically distinct (liability-increasing variants need not be severity-increasing variants). Moreover, severity in ME/CFS (PEM severity, OI, cognitive impairment) is a multidimensional construct the FM GWAS never measured. The PRS-to-severity bridge is therefore an untested extrapolation until a severity-stratified or quantitative-trait analysis exists.

**Falsifiable prediction.** A severity-stratified FM/ME/CFS analysis shows the FM-PRS predicts case status but not within-case severity (PEM, OI, pain burden); falsified if the PRS stratifies severity in comorbid patients as hypothesized by Ideas 3/5.

**Non-specialist consequence.** A genetic score may tell who is at risk of *having* the condition but not who has it *worse* — so "high genetic risk" cannot yet be read as "severe disease."

`origin: brainstorm`

---

### Idea 14 — Peripheral-central discordance probe (brain-network vs SFN subset)
*Category 2 (research direction) · cert 0.32 · links genetics to `@Hu2025BrainNetworkFM` + `@Goebel2021passiveTransferFM`*

**Mechanistic rationale + evidence link.** Fibromyalgia genetics strongly favor a central/brain architecture @Kerrebijn2026FibromyalgiaGWAS, yet independent evidence documents a *peripheral-neuropathic subset* — reduced intraepidermal nerve fiber density and satellite-glial-cell IgG accumulation in DRG on passive transfer @Goebel2021passiveTransferFM @sommer2025fibromyalgiasfn — and brain-network alterations on imaging @Hu2025BrainNetworkFM. This peripheral-central discordance is unresolved: does the peripheral-neuropathic subset carry the same central genetic architecture, or is it a genetically distinct endotype that the case/control GWAS averaged away? The research direction: stratify FM and FM-co-morbid ME/CFS by corneal-confocal-microscopy/SFN status and passive-IgG status, then test whether the peripheral and central phenotypes are genetically or mechanistically separable. This bears directly on whether "fibromyalgia" is one disease or two, and whether the peripheral subset is the one that overlaps ME/CFS.

**Falsifiable prediction.** SFN-positive FM patients show distinct (peripheral-neuropathy-associated) genetic profile and normal CNS PRS, whereas SFN-negative patients carry the brain-enriched architecture; the SFN-positive subset selectively overlaps ME/CFS peripheral-neuropathy findings. Falsified if both subsets share identical CNS-enriched PRS and the peripheral findings are downstream of the same central mechanism.

**Non-specialist consequence.** Some fibromyalgia patients may actually have a nerve-fiber problem in the body rather than only a brain-wiring problem — and that distinction may decide who the ME/CFS overlap applies to and which treatments work.

`origin: brainstorm`

---

## Critical-category coverage note (MANDATORY)

Negative/epistemic side is present in all three critical categories:
- **Cat 10 (reasons NOT relevant):** Idea 8 (rg≠causation, pleiotropy), Idea 9 (HTT/GPR52 FM-specific, not ME/CFS), Idea 12 (GPR52 drug-availability/safety gap). Ideas 8 and 9 directly satisfy the "genetic correlation ≠ causation" and "HTT finding may not transfer" requirements.
- **Cat 11 (null assessment):** Idea 11 (comorbidity as referral/clinical artifact; null rg). Also addresses the "what if no role" case explicitly.
- **Cat 12 (evidence quality):** Idea 10 (0.80 population weight → indirect ME/CFS inference), Idea 13 (no severity stratification undermines PRS). Idea 10 addresses "population relevance 0.80, not 1.00"; Idea 13 addresses "severity stratification absent."

**Autoimmune debate reconciled** in Idea 4 (passive-IgG subset coexists with non-HLA, brain-enriched common architecture), cross-referenced in Ideas 8 and 14.
