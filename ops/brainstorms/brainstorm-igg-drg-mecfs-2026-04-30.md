# Brainstorm: IgG-DRG Passive Transfer Axis in ME/CFS and Long COVID

**Date:** 2026-04-30
**Status:** Creative analysis — speculative; requires expert review
**Model:** Claude Opus 4.7 (1M context)
**Context window:** Generative brainstorm building on Goebel 2021, Mignolet 2026, Chen 2026, McAlpine 2024, Germain 2025

---

## Framing and core puzzle

The convergent finding that purified patient IgG transfers **pain/sensitisation but not cognitive impairment, not neuroinflammation, not motor deficit** to naive mice is one of the cleanest passive-transfer signals in chronic-illness research. Critically:

- Effect is **Fc-dependent** (Fc digestion abolishes it) → not just antigen binding; effector function matters.
- Target is **anatomically restricted to DRG** (and possibly nodose/sympathetic ganglia).
- DRG sit **outside the blood-brain barrier** — exposed to circulating IgG with leaky fenestrated capillaries.
- Cognitive sparing in mice **dissociates** the peripheral-sensitisation pathway from the brain-fog/cognitive phenotype of ME/CFS.
- Germain 2025 null on REAP+Luminex (7,542 antigens) is **not a refutation**: REAP is yeast-display surface-secreted, biased away from intracellular and conformational neuronal epitopes; sensory-neuron membrane proteins (Nav channels, TRP channels, ASICs, P2X3, neurexins, contactins) are poorly represented.

**Central tension this brainstorm tries to resolve:** if IgG-DRG explains pain, PEM-precursors, autonomic dysfunction, and possibly fatigue via afferent gain — but **not** cognitive symptoms — then ME/CFS is at minimum a **two-compartment disease**: (1) a peripheral-IgG/DRG axis driving sensory-autonomic-fatigue-amplification, and (2) a separate central/metabolic axis driving cognition. Treatment stratification has to follow.

---

## 1. Novel hypotheses

### H1. The DRG-IgG axis is the **afferent-gain amplifier** in PEM (certainty 0.55)

- **Mechanism:** IgG bound to DRG nociceptors and proprioceptors lowers their activation threshold. Normal interoceptive afferent traffic from muscle (lactate, H+, ATP, bradykinin via ASIC3, P2X3, TRPV1) is over-reported to brainstem (NTS) and hypothalamus, generating exaggerated sickness-behaviour, autonomic switching, and fatigue signalling — without any central inflammation.
- **Why it fits:** Explains PEM's **sensory/proprioceptive flavour** (worsened by exertion, postural change, cognitive effort acting via sympathetic outflow) without requiring brain pathology. Explains why mice show pain but not cognitive change — mice have no language for "fatigue" but the afferent gain is real.
- **Falsifiable prediction:** Quantitative sensory testing (QST) at baseline and post-exertion will show afferent thresholds dropping further during PEM in IgG-DRG-positive patients but not in IgG-DRG-negative patients. Microneurography (C-fibre spontaneous discharge) will correlate with PEM severity.
- **Evidence link:** Goebel 2021, Mignolet 2026, McAlpine 2024 (92% PEM in post-COVID SFN).

### H2. **Cognition spared because brain ≠ DRG** — ME/CFS brain fog is a **separate** mechanism (certainty 0.65)

- **Mechanism:** DRG accumulation requires fenestrated capillaries (DRG, area postrema, circumventricular organs); intact BBB protects cortex and hippocampus from IgG. Brain fog therefore comes from **non-IgG** mechanisms: endothelial mitochondrial damage (Liu 2026), neuroinflammation (microglia), astrocytic energy failure, BH4 depletion, or HPA-axis disruption.
- **Why it fits:** Mignolet 2026 explicitly shows cognitive sparing despite robust DRG IgG.
- **Falsifiable prediction:** Patients with isolated cognitive symptoms (no SFN, no autonomic) will have **no detectable DRG-IgG signal**; conversely, IVIG will improve pain/autonomic but not cognition in stratified trials. (McAlpine 2024 IVIG data hint at this — pain/autonomic responded better than cognition.)
- **Treatment implication:** Two-arm trials; do not pool cognitive-dominant and sensory-dominant phenotypes.

### H3. **Fc-glycosylation, not just antibody titer, gates DRG damage** (certainty 0.45)

- **Mechanism:** IgG effector function depends on Fc N-glycan (sialylation, fucosylation, galactosylation). Pro-inflammatory glycoforms (low-galactose, low-sialic, high-fucose, "G0F") bind FcγRIIIa and activate satellite glial cells / DRG-resident macrophages. Healthy controls' IgG with the same nominal specificity may not be pathogenic because of glycan profile.
- **Why it fits:** Goebel/Mignolet show Fc-dependent effect. Disease-modified IgG glycomes are documented in RA, lupus, COVID. Could explain why some healthy controls have low-titer "self-reactive" antibodies without disease.
- **Falsifiable prediction:** Mass-spec Fc-glycoprofiling of IgG fractions that successfully transfer pain in mice will show pro-inflammatory glycan signatures vs non-transferring fractions.

### H4. Target antigens are **mechanosensitive ion channels and adhesion molecules** on DRG neurons (certainty 0.40)

- **Candidate targets:** Piezo2, Nav1.7, Nav1.8, P2X3, TRPV1, TRPA1, ASIC3, contactin-1, neurexin, CASPR2, LGI1-like, IGSF21. Piezo2 in particular sits at the centre of proprioception and POTS-like phenotypes.
- **Why it fits:** Anti-CASPR2 and anti-LGI1 already cause autoimmune neuropathic pain syndromes; Piezo2 loss-of-function gives proprioceptive deficits; gain-of-function (or autoantibody-mediated potentiation) could give autonomic + sensory phenotype.
- **Falsifiable prediction:** Targeted membrane-protein arrays focused on DRG-enriched ion channels and CAMs will detect IgG signal in patient sera that REAP missed.

### H5. The pathogenic IgG is **plasma-cell-derived, oligoclonal, and antigen-experience-locked** (certainty 0.50)

- **Mechanism:** 2-year persistence (Chen 2026), Fluge 2025 daratumumab signal, EBV/HHV-6 reactivation patterns suggest long-lived bone-marrow plasma cells producing oligoclonal IgG. These cells are **B-cell-depletion resistant** (rituximab failed) but **plasma-cell-targeted-therapy sensitive**.
- **Falsifiable prediction:** Single-cell BCR sequencing of bone-marrow plasma cells from IgG-DRG-positive patients will show shared CDR3 motifs across patients; engineered monoclonals from those clones will recapitulate the passive-transfer phenotype.

### H6. **Molecular mimicry with viral glycoproteins on sensory-neuron surface antigens** (certainty 0.35)

- **Candidates:** SARS-CoV-2 spike, EBV gp350/EBNA1, HHV-6 U24 cross-reactive with neural CAMs. EBNA1 mimics myelin-basic-protein motifs (MS literature); analogous mimicry with DRG surface antigens is plausible but unproven.
- **Falsifiable prediction:** Phage-display of patient IgG against tiled SARS-CoV-2/EBV peptidome will identify epitopes that align with linear sequences in DRG-enriched proteins.

### H7. **Satellite glial cell activation, not direct neuronal IgG binding, is the proximal cause of sensitisation** (certainty 0.45)

- **Mechanism:** IgG-immune-complexes engage FcγR on satellite glial cells surrounding DRG soma. SGCs release IL-6, TNF, ATP, lowering neuronal threshold. Neurons themselves may not be the primary IgG target.
- **Why it fits:** Explains preserved neuronal morphology and absence of frank neuropathy. SGCs are well-documented modulators in neuropathic pain.
- **Falsifiable prediction:** SGC-specific FcγR knockout mice will be resistant to passive transfer despite normal IgG-DRG accumulation.

### H8. **Vagal/nodose ganglion involvement explains autonomic + GI + interoceptive symptoms** (certainty 0.55)

- **Mechanism:** Nodose ganglion (vagal afferents) shares fenestrated-capillary feature with DRG. IgG accumulation there would amplify GI, cardiac, and respiratory afferent signalling — POTS, gastroparesis, air hunger, IBS, all signature ME/CFS comorbidities.
- **Falsifiable prediction:** Histology of nodose ganglia in passive-transfer mice will show analogous IgG accumulation; vagal-afferent recording will show hyperexcitability.

### H9. **Two-hit model:** infection generates the antibodies, but a **second hit** (BBB/BNB permeability, complement priming) is required for clinical manifestation (certainty 0.40)

- **Why it fits:** Many people make transient anti-self IgG post-infection; few develop ME/CFS. Pre-existing barrier-permeability variants (genetic or stress-induced) may decide who progresses.
- **Falsifiable prediction:** Pre-onset blood-nerve-barrier markers (S100B, NfL, claudin-5) will be elevated in those who progress to ME/CFS post-COVID vs those who recover.

---

## 2. Research directions

### R1. Antigen identification — multi-pronged
- **Immunoprecipitation from intact mouse DRG lysate** with patient IgG → mass-spec. Avoids REAP's surface-secreted bias.
- **Cell-surface BioID / proximity labelling** in DRG neuron cultures pre-incubated with patient IgG.
- **Phage-immunoprecipitation sequencing (PhIP-seq)** with a custom DRG-membrane-protein library (curated from sensory-neuron transcriptomics atlases).
- **Cryo-EM of patient-IgG-bound DRG membrane fractions** to capture conformational epitopes REAP misses.

### R2. Patient stratification
- Develop **IgG-DRG-binding assay** (patient IgG on rodent DRG sections, scored by intensity + colocalisation pattern).
- Stratify ME/CFS cohorts: IgG-DRG+ vs IgG-DRG−. Hypothesis: phenotype clusters separate cleanly (sensory-autonomic vs cognitive-metabolic).
- Re-analyse rituximab/cyclophosphamide/IVIG/daratumumab trial data with retrospective IgG-DRG status.

### R3. Cognitive-sparing mechanism
- Compare BBB integrity (claudin-5, ZO-1, S100B, NfL) in patients with cognitive-dominant vs sensory-dominant phenotypes.
- Test whether cognitive symptoms in mice emerge only with **BBB-disrupting co-treatment** (e.g., LPS, hypertension model) plus patient IgG.

### R4. Durability and source of pathogenic IgG
- Bone-marrow aspirate (in subset, or cadaveric) → single-cell BCR-seq + plasma-cell phenotyping.
- Test daratumumab efficacy stratified by IgG-DRG status (Fluge 2025 follow-up).

### R5. Microneurography registry
- Multi-centre registry of C-fibre microneurography (single-fibre recording) in ME/CFS, coupled with IgG-DRG status and PEM provocation.

### R6. Imaging
- 7T MR neurography of lumbar DRG — search for volumetric, T2, or diffusion abnormalities in IgG+ patients.
- DRG-targeted PET tracers (FcγR ligands, TSPO for SGC activation).

### R7. Veterinary cross-check
- Naturally occurring fatigue/pain syndromes in companion animals post-viral (canine post-distemper, feline post-FIP) — passive transfer to mice as model validation.

---

## 3. Drug and medication ideas

### Tier A — Mechanistically grounded, clinical-stage in adjacent disease

**A1. Efgartigimod (FcRn antagonist)** — certainty 0.55
- Approved for myasthenia gravis, CIDP. Reduces total IgG ~60-70% within weeks.
- **Rationale:** Lowers pathogenic IgG without depleting plasma cells, reversible.
- **Risk:** Reduces protective IgG; infection susceptibility.
- **Falsifiable trial:** RCT in IgG-DRG+ ME/CFS, primary endpoint pain + PEM frequency at 12 weeks.

**A2. Rozanolixizumab, Nipocalimab (other FcRn antagonists)** — certainty 0.50
- Same class; differentiation by half-life and infection profile.

**A3. Daratumumab (anti-CD38, plasma cell depletion)** — certainty 0.50
- Already signal in Fluge 2025. Targets the **source** of pathogenic IgG.
- **Pair with:** efgartigimod for fast onset + daratumumab for durable remission ("induction-maintenance" model from myeloma).

**A4. Imlifidase (IdeS, IgG-cleaving endopeptidase)** — certainty 0.45
- Single-dose Fab/Fc cleavage, used in transplant desensitisation.
- **Rationale:** Mignolet 2026 showed Fc digestion abolishes effect. IdeS does this in vivo within hours.
- **Limitation:** Single-use due to anti-IdeS antibodies; bridging only.

**A5. Rilzabrutinib, evobrutinib (BTK inhibitors)** — certainty 0.30
- Block FcγR signalling in macrophages/SGCs. Under study in ITP, MS.

**A6. Anti-CD20 (rituximab, obinutuzumab) — re-examined** — certainty 0.25
- Failed unstratified, but might work in IgG-DRG+ subset with short disease duration (before plasma-cell pool established). Counterintuitive but worth retrospective re-analysis.

**A7. Anti-IL-6 (tocilizumab, satralizumab)** — certainty 0.30
- If H7 (SGC activation) holds, IL-6R blockade could break the SGC-neuron sensitisation loop.

### Tier B — Sodium-channel / sensitisation blockers

**B1. Nav1.7-selective blockers (vixotrigine, in development)** — certainty 0.35
- DRG nociceptors depend on Nav1.7. Selective block could mute IgG-driven hyperexcitability without CNS effects.

**B2. P2X3 antagonists (gefapixant, eliapixant)** — certainty 0.40
- Approved for refractory chronic cough; P2X3 sits on C-fibre afferents. Off-label trial in ME/CFS pain + cough/POTS subset.

**B3. Low-dose lidocaine infusions or mexiletine** — certainty 0.45
- Already used in SFN/erythromelalgia; cheap, accessible. Symptomatic but mechanistically aligned.

**B4. CGRP antagonists (erenumab, atogepant, rimegepant)** — certainty 0.30
- DRG neurons release CGRP; antagonism reduces neurogenic inflammation. Migraine overlap with ME/CFS frequent.

### Tier C — Complement and FcγR

**C1. C1q / C5 inhibitors (sutimlimab, ravulizumab)** — certainty 0.30
- If complement deposition contributes to DRG damage. Test C1q+ histology first.

**C2. Anti-FcγRIIa (under preclinical development)** — certainty 0.25
- Specific block of immune-complex effector arm.

### Tier D — Repurposing

**D1. Hydroxychloroquine** — certainty 0.20
- Endosomal TLR blockade reduces autoantibody class-switch. Low risk, low evidence.

**D2. Low-dose naltrexone (LDN)** — already in document; relevant to SGC/microglia modulation.

**D3. Maraviroc + pravastatin (Patterson long-COVID protocol)** — certainty 0.15
- Anti-CCR5; might reduce monocyte infiltration around DRG. Speculative.

---

## 4. Supplements / nutraceuticals

| Idea | Mechanism | Certainty | Falsifiable prediction |
|---|---|---|---|
| **Palmitoylethanolamide (PEA)** 600-1200 mg/d | Endogenous fatty-acid amide; PPAR-α agonist; mast-cell + glia stabiliser; SFN evidence already published | 0.50 | RCT in IgG-DRG+ subset shows pain reduction > placebo |
| **Alpha-lipoic acid** 600 mg/d | Antioxidant; trial evidence in diabetic SFN | 0.40 | Improves QST thresholds in 12 weeks |
| **Acetyl-L-carnitine** 1-2 g/d | Mitochondrial support of axon; SFN small trials positive | 0.35 | Skin biopsy IENFD increase at 6 months |
| **Benfotiamine + methyl-B12 + methylfolate** | Axonal metabolism; B12 deficiency mimics SFN | 0.35 | Subset with low-normal B12 responds |
| **N-acetylcysteine** 1.2-1.8 g/d | Glutathione precursor; reduces oxidative DRG stress; cheap | 0.25 | — |
| **Omega-3 (high-EPA)** 2-4 g/d | Resolvins act on DRG nociceptors; anti-inflammatory glycome shift | 0.30 | Fc-glycoprofile shifts toward anti-inflammatory pattern after 3 months |
| **Curcumin (bioavailable form)** | NF-κB block in SGC | 0.20 | — |
| **Vitamin D optimisation** (50-80 nmol/L) | B-cell tolerogenic effect; plasma-cell modulation | 0.30 | — |
| **Quercetin + bromelain** | Mast-cell stabilisation around DRG | 0.20 | — |
| **Lactoferrin** | IgG glycosylation modulation (early evidence) | 0.15 | — |
| **Berberine / metformin** | AMPK; reduces plasma-cell longevity in preclinical | 0.20 | — |

---

## 5. Non-pharmacological interventions

| Intervention | Rationale | Certainty |
|---|---|---|
| **Strict pacing / energy envelope** | Reduces afferent overdrive that re-sensitises hyper-IgG-bound DRG | 0.65 (already evidence-based) |
| **Compression garments + supine rest** | Reduces orthostatic afferent volley from baroreceptors / muscle | 0.55 |
| **Vagal nerve stimulation (non-invasive, taVNS)** | Cholinergic anti-inflammatory; dampens nodose-ganglion afferent gain | 0.40 |
| **Cold-water face immersion (mammalian dive reflex)** | Acute parasympathetic shift; useful in POTS subset | 0.35 |
| **Graded sensory desensitisation (NOT GET)** | Topical capsaicin patches paradoxically deplete DRG TRPV1 nociceptors; FDA-approved for postherpetic neuralgia | 0.40 |
| **TENS at C-fibre frequencies** | Gate-control + DRG modulation | 0.30 |
| **Hyperbaric oxygen** | Reduces SGC activation; long-COVID trial evidence (Zilberman-Itskovich 2022) | 0.35 |
| **Plasmapheresis / immunoadsorption** | Already in document; mechanistically primary for IgG-DRG axis | 0.55 |

---

## 6. Combinations and patient-accessible protocols

### P1. "Bridge-and-maintain" research protocol (high-tier)
1. Imlifidase (single dose) — rapid IgG cleavage
2. Efgartigimod (8-12 weeks) — sustained IgG suppression
3. Daratumumab (monthly × 6) — plasma-cell depletion
4. Long-term: pacing + PEA + ALA + low-dose mexiletine
- Total cost: very high; trial-only.

### P2. Patient-accessible "DRG-quieting" stack (low-risk, OTC where legal)
- PEA 600 mg × 2/d
- Acetyl-L-carnitine 1 g × 2/d
- Alpha-lipoic acid 600 mg/d
- Methyl-B12 (sublingual or IM if deficient)
- Omega-3 EPA-dominant 2-3 g/d
- Vitamin D to 75 nmol/L
- Strict pacing + compression garments + taVNS device
- **Note:** Symptomatic and mechanistic-plausible; NOT disease-modifying. Requires medical supervision.

### P3. Prescription-tier accessible
- Add: LDN 1.5-4.5 mg, mexiletine (cardiology-supervised), gefapixant (off-label), gabapentinoid trial (limited by sedation)

---

## 7. Mathematical model extensions

### M1. Two-compartment SDE for ME/CFS
- **Compartment A (peripheral-IgG-DRG):** state = afferent gain `g_A(t)` driven by IgG titer × DRG-binding affinity; perturbed by activity (lactate, mechanical strain) → produces PEM.
- **Compartment B (central-metabolic):** state = `M(t)` cerebral mitochondrial capacity / endothelial integrity; drives cognition.
- Coupling: HPA axis links them; chronic A drives B via stress hormones, but A can exist without B.
- **Prediction:** clustering on (g_A, M) plane separates phenotypes; IVIG moves A but not B.

### M2. ODE for IgG-DRG dynamics
```
dA/dt = k_p·P − k_c·A − k_FcRn·A·R_FcRn   (serum IgG)
dD/dt = k_in·A − k_out·D                  (DRG-bound IgG)
dS/dt = α·D − β·S + noise(activity)        (sensitisation)
PEM = Heaviside(S − threshold)
```
- Efgartigimod: increases `k_FcRn`. Daratumumab: decreases `k_p` (plasma cells). IdeS: pulse decrease in A.
- Fits Chen 2026's 2-year persistence with low `k_c` (DRG-bound IgG turnover) — predicts sustained remission needs **both** lowering A and clearing D.

### M3. DAG addition to existing causal model
- Add nodes: `LongLivedPlasmaCell → patho_IgG → DRG_binding → afferent_gain → {PEM, autonomic_dysfn, pain}`
- Backdoor: `infection → {patho_IgG, BBB_perm}`; controlling for BBB_perm separates cognitive from sensory arm.

### M4. Energy-envelope model coupling
- Replace fixed exertion threshold with a **state-dependent** threshold = f(afferent_gain). IgG-DRG+ patients have lower threshold and steeper post-exertion recovery curve. Predicts non-linear "cliff" behaviour observed clinically.

---

## 8. Cross-disease bridges

| Disease | Lesson | Application to ME/CFS |
|---|---|---|
| **Anti-NMDAR encephalitis** | Receptor-internalising IgG; reversible with PLEX + rituximab | Test whether IgG-DRG causes channel internalisation (Nav1.7, Piezo2) |
| **Anti-CASPR2 / LGI1** | Surface-protein autoantibodies cause neuromyotonia, pain, autonomic features | Direct mechanistic template; assay these specifically in ME/CFS |
| **PANDAS / PANS** | Anti-neuronal antibodies post-strep cause OCD/tics; IVIG responsive | Demonstrates infection → autoantibody → neuropsychiatric pipeline |
| **Fibromyalgia (Goebel 2021)** | Same passive-transfer phenotype | Likely overlapping or identical mechanism |
| **CIDP / GBS** | Anti-nodal/paranodal antibodies (NF155, contactin-1) cause sensory neuropathy | Test these antigens in ME/CFS SFN subset |
| **Sjögren-associated SFN** | Sensory-ganglionopathy phenotype | Likely overlap; some ME/CFS patients have subclinical Sjögren |
| **POTS post-COVID (Vernino lab)** | Anti-adrenergic, anti-muscarinic | Already in document; dovetails with IgG-DRG via nodose |
| **Erythromelalgia (Nav1.7 gain-of-function)** | Genetic model of DRG hyperexcitability | Phenocopy via IgG potentiating Nav1.7 |
| **Complex regional pain syndrome (CRPS)** | Goebel work on passive transfer here too | Likely same family of disorders |
| **Long-COVID SFN (McAlpine 2024)** | 92% PEM overlap; IVIG 9/9 vs 3/7 | Cleanest evidence for stratified IVIG trials |

---

## 9. Diagnostic / biomarker ideas

### D1. **DRG-IgG immunohistochemistry assay** (clinical-stage feasible)
- Patient serum → fixed mouse/rat DRG sections → fluorescent anti-human IgG. Score: intensity, neuronal vs SGC pattern, colocalisation with NF200/CGRP/IB4.
- **Use:** Stratify for IVIG/efgartigimod trials.

### D2. **IENFD + autonomic battery + IgG-DRG positivity** triple-screen
- Patients meeting all three = "IgG-DRG-dominant" phenotype.

### D3. **Microneurography of peroneal C-fibres**
- Hyperexcitable spontaneous activity = direct functional readout of DRG sensitisation.

### D4. **Quantitative sudomotor axon reflex (QSART)** + tilt-table
- Maps autonomic small-fibre involvement; widely available.

### D5. **Fc-glycoprofile of bulk IgG**
- Mass-spec of IgG N-glycans; pro-inflammatory shift (low galactosylation, low sialylation) as diagnostic + treatment-response marker.

### D6. **Serum NfL + peripherin**
- Axonal injury markers; peripherin is DRG-enriched. Untested in ME/CFS.

### D7. **DRG-targeted PET (TSPO)** when accessible
- Research-grade; visualises SGC activation.

### D8. **AI on skin-biopsy whole-slide imaging**
- Beyond IENFD count: dermal immune infiltrates, IgG deposition, capillary density.

### D9. **Predictive panel for IVIG response**
- Pre-treatment IgG-DRG positivity + Fc-glycoprofile + IENFD < threshold → predicted responder cohort. Test in McAlpine-style retrospective cohort first.

### D10. **Wearable "afferent-gain" surrogate**
- HRV + actigraphy + skin-conductance during standardised cognitive/postural challenge. Potentially indexes peripheral sensitisation non-invasively.

---

## Ranked top-10 ideas across all categories

| Rank | Idea | Cat. | Certainty | Actionability |
|---|---|---|---|---|
| 1 | DRG-IgG IHC stratification assay (D1) → trial enrichment | Diagnostic | 0.65 | Near-term, cheap |
| 2 | H2: Cognition spared because BBB intact → two-compartment model | Hypothesis | 0.65 | Conceptual; reframes trial design |
| 3 | H1: DRG-IgG = afferent-gain amplifier in PEM | Hypothesis | 0.55 | High explanatory value |
| 4 | Efgartigimod RCT in IgG-DRG+ subset (A1) | Drug | 0.55 | Trial-ready |
| 5 | Strict pacing + PEA + ALA + Methyl-B12 stack (P2) | Combo | 0.50 | Patient-accessible now |
| 6 | Daratumumab in IgG-DRG+ subset (A3) | Drug | 0.50 | Trial-ready |
| 7 | DRG-membrane PhIP-seq + IP-mass-spec for antigen ID (R1) | Research | 0.50 | High-impact; needs lab |
| 8 | H8: Nodose-ganglion IgG → POTS/GI/air hunger | Hypothesis | 0.55 | Testable in mouse |
| 9 | H3: Fc-glycoprofile gates pathogenicity | Hypothesis | 0.45 | Mass-spec assay |
| 10 | Two-compartment ODE / DAG model (M1, M3) | Model | 0.55 | Useful for trial design |

---

## Document integration recommendations

### Suggested additions

**Chapter on autoimmunity (Part II):**
- New `\begin{hypothesis}[DRG-IgG Afferent-Gain Amplifier]` for H1 with falsifiable predictions.
- New `\begin{hypothesis}[Two-Compartment ME/CFS]` for H2 framing peripheral vs central mechanisms.
- New `\begin{speculation}[Fc-Glycoprofile Pathogenicity Gate]` for H3.

**Chapter on small fibre neuropathy:**
- Update with McAlpine 2024 IVIG numbers (9/9 vs 3/7) and the 92% PEM overlap.
- Cross-reference Mignolet 2026, Chen 2026, Goebel 2021 as the passive-transfer triad.

**Chapter on treatment:**
- Add `\begin{speculation}` block on FcRn-antagonist and plasma-cell-targeted therapy as **future trial concepts**, with explicit `\begin{warning}` that this is research-stage.
- Patient-accessible stack (P2) framed as `\begin{limitation}`-flagged symptomatic support, NOT a recommendation.

**Hypothesis registry update:** add H1, H2, H3, H8 with cross-references.

**Mathematical model section:** add M1 two-compartment formulation as an extension of existing energy-envelope ODE.

### Certainty levels
- All hypotheses: explicitly flagged with numerical certainty as above.
- All treatments: flagged as research-stage; require medical supervision; not clinical recommendations.

---

## Caveats and limitations

- All passive-transfer studies to date use mice; species differences in DRG biology are non-trivial.
- Germain 2025 null result is real and constrains hypotheses: any antigen claim must explain why REAP missed it (conformational / DRG-membrane-specific / glycan-dependent).
- IVIG response numbers (McAlpine 2024) are observational, small-n, not RCT.
- Two-compartment hypothesis (H2) is parsimonious but speculative; some patients may have mixed phenotypes that don't cleanly stratify.
- Treatment ideas in Tier A are all serious immunomodulators with infection, malignancy, and infusion-reaction risks; trial-only.
- Patient-accessible stack (P2) is symptomatic; do not present as disease-modifying.

---

## Recommended next steps

1. **Immediate (document):** Add H1, H2, H8 as hypothesis blocks; update SFN chapter with passive-transfer triad.
2. **Near-term (research):** Develop DRG-IgG IHC assay protocol; propose to ME/CFS research consortia.
3. **Trial design:** Stratified efgartigimod and daratumumab trials in IgG-DRG+ subset.
4. **Patient-facing:** Discuss Tier-2 stack with clinician; document caveats clearly.
5. **Expert review:** Neurology (peripheral nerve), immunology (autoantibody), ME/CFS clinician, biostatistician for stratification design.

---

**Total ideas generated: 65**
- Hypotheses: 9 (H1-H9)
- Research directions: 7 (R1-R7)
- Drug ideas: 16 (Tier A: 7, Tier B: 4, Tier C: 2, Tier D: 3)
- Supplement ideas: 11
- Non-pharmacological: 8
- Combinations: 3 (P1-P3)
- Mathematical models: 4 (M1-M4)
- Cross-disease bridges: 10
- Diagnostic/biomarker: 10

(Counts overlap categories; ranked top-10 above represents synthesis.)
