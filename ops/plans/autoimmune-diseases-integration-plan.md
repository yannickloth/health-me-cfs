# Autoimmune Diseases — ME/CFS Integration Plan

**Purpose:** Systematically integrate each major autoimmune disease as a *causal upstream* context for ME/CFS. Core thesis: autoimmune dysregulation produces ME/CFS as a downstream consequence — not a coincident comorbidity. Goal: document the mechanisms by which each autoimmune disease generates ME/CFS, clarify differential diagnosis, and surface novel hypotheses.

**Integration target:** Each topic → `/integrate-topic` pipeline  
**Primary chapters affected:** ch04-08-differential-diagnosis, ch05-subgroups, ch07-immune-dysfunction, ch13-integrative-models, ch14b/g/d, ch20-biomarker-research

---

## Central Thesis for the Paper

> **ME/CFS as post-autoimmune sequela:** In a significant subset of patients, ME/CFS is not a disease parallel to autoimmune disease — it is caused by it. The autoimmune process (autoantibodies, chronic cytokine milieu, immune-mediated tissue damage) damages or dysregulates the structures that, when disrupted, produce the ME/CFS phenotype: autonomic ganglia, small fibre neurons, mitochondrial function, GPCR signalling, neuroinflammatory tone, energy metabolism.

**Causal model — both directions exist, asymmetric probability:**

```
Direction A (more probable):
  Autoimmune trigger (infection, vaccine, stress)
    → autoimmune dysregulation (autoantibodies, T-reg failure, cytokine storm)
      → structural/functional damage (autonomic, neurological, metabolic)
        → ME/CFS phenotype (PEM, fatigue, brain fog, dysautonomia)

Direction B (less probable, not excluded):
  ME/CFS chronic immune activation (NK dysfunction, elevated cytokines, viral reactivation)
    → sustained loss of self-tolerance
      → overt autoimmune disease (de novo or accelerated)
```

**Asymmetry rationale:** Direction A is supported by treatment evidence (autoantibody removal reverses ME/CFS symptoms). Direction B is plausible mechanistically but lacks longitudinal evidence. The paper must present both, weight them honestly, and flag the absence of prospective cohort data as a critical gap.

**What this changes clinically:**
- Differential diagnosis flips: not "ME/CFS *or* autoimmune?" but "which autoimmune disease *produced* this ME/CFS?"
- Treatment implication: remission induction of the underlying autoimmune disease may reverse ME/CFS — symptom management alone is insufficient
- Subtype definition: "post-autoimmune ME/CFS" is a distinct, mechanistically grounded subgroup in ch05

**Existing paper evidence supporting this thesis:**
- Immunoadsorption/daratumumab: removing autoantibodies *reverses* ME/CFS symptoms (ch14b)
- GPCR autoantibodies → autonomic dysfunction → ME/CFS symptom cluster (ch14b)
- PBC anti-mitochondrial antibodies → mitochondrial dysfunction → fatigue phenotype indistinguishable from ME/CFS (ch14d)

**Open question for the paper (to be documented as `open-question` environment):**
Is ME/CFS in autoimmune-comorbid patients a *complication* of that disease, a *prodrome* of worsening autoimmunity, or a *distinct sequela* requiring separate treatment? Longitudinal data are absent. This must be flagged as a priority research gap.

---

## Scope Note

These are diseases to integrate as *causal upstream contexts*, not mere comparators. The research question for each:

> "How does this autoimmune disease produce ME/CFS as a downstream consequence — which structures does it damage, which autoantibodies does it generate, and what treatment implications follow?"

**Scientific review constraint (mandatory for every integration):**
- The thesis (Direction A more probable) is a working hypothesis, not established fact
- Every `/integrate-topic` run must *find out what the literature actually says*, not confirm the hypothesis
- If the literature supports Direction B, or neither direction, or is silent — that must be reported faithfully
- Mechanism claims require citations; absence of citations = flag as speculation
- The paper must reflect the current state of evidence, including uncertainty and gaps
- Plausible ≠ documented; mechanistically coherent ≠ empirically established

---

## Master Disease List

### Tier 1 — High Relevance (strong documented ME/CFS overlap)

| # | Disease | ME/CFS Links Already Known | Priority |
|---|---------|---------------------------|----------|
| 1 | **Systemic Lupus Erythematosus (SLE)** | Fatigue phenotype; anti-dsDNA; interferon signature; PEM-like flares; NK cell dysfunction overlap | 🔴 Critical |
| 2 | **Sjögren's Syndrome** | Small fibre neuropathy; autonomic dysfunction; sicca-fatigue phenotype; anti-SSA/SSB; B-cell hyperactivity | 🔴 Critical |
| 3 | **Multiple Sclerosis (MS)** | Neuroinflammation; EBV as trigger; demyelination vs. ME/CFS neuroinflammation distinction; fatigue overlap; PEM absent in MS | 🔴 Critical |
| 4 | **Myalgic Encephalomyelitis (overlap)** | Already the subject — but explicit MS/ME differential in ch04-08 can be strengthened | 🔴 Critical |
| 5 | **Rheumatoid Arthritis (RA)** | Cytokine overlap (TNF-α, IL-6, IL-17); methotrexate/biologics crossover; fatigue as under-treated RA component; JAK inhibitor relevance | 🔴 Critical |
| 6 | **Hashimoto's Thyroiditis** | Most common ME/CFS comorbidity; euthyroid Hashimoto fatigue; TPO-Ab; shared HLA; T-regulatory dysfunction | 🔴 Critical |
| 7 | **Graves' Disease** | TSH-receptor autoantibodies; hyperthyroid-phase symptom overlap; shared GPCR autoantibody class with ME/CFS β-AR antibodies | 🔴 Critical |
| 8 | **Type 1 Diabetes** | Pancreatic β-cell autoimmunity; islet autoantibodies; shared HLA-DR4; energy metabolism dysregulation angle | 🟠 High |
| 9 | **Antiphospholipid Syndrome (APS)** | Hypercoagulability; microclot hypothesis in ME/CFS; anti-β2GPI; endothelial dysfunction; aPL as ME/CFS comorbidity | 🔴 Critical |
| 10 | **Myasthenia Gravis** | Neuromuscular junction; AChR/MuSK antibodies; fatigable weakness vs. PEM; Lambert-Eaton overlap | 🔴 Critical |
| 11 | **Celiac Disease** | Gut dysbiosis; leaky gut; gliadin antibodies; neurological celiac; gluten-ME overlap claims in literature | 🟠 High |
| 12 | **Inflammatory Bowel Disease (Crohn's/UC)** | Gut microbiome; mucosal immunity; IL-10/TGF-β; fatigue in IBD; post-infectious IBS trigger | 🟠 High |
| 13 | **Autoimmune Hepatitis** | Liver autoimmunity; anti-SMA, anti-LKM; fatigue as dominant symptom; overlap with ME/CFS in post-viral setting | 🟡 Medium |
| 14 | **Primary Biliary Cholangitis (PBC)** | Anti-mitochondrial antibodies (AMA); mitochondrial dysfunction angle; profound fatigue phenotype near-identical to ME/CFS | 🔴 Critical |
| 15 | **PANDAS/PANS** | Streptococcal molecular mimicry; basal ganglia autoantibodies; encephalitis variant; childhood ME/CFS trigger overlap | 🟠 High |
| 16 | **Narcolepsy (type 1)** | Hypocretin/orexin autoimmunity; H1N1 vaccine trigger; HLA-DQB1*06:02; sleep dysfunction overlap | 🟠 High |
| 17 | **Autoimmune Encephalitis (anti-NMDAR, LGI1)** | Brain fog differential; NMDAR hypofunction; encephalitis vs. ME/CFS distinction; CSF findings | 🔴 Critical |
| 18 | **Neuromyelitis Optica (NMOSD)** | AQP4 antibodies; astrocyte targeting; BBB disruption; EBV trigger | 🟡 Medium |
| 19 | **Immune Thrombocytopenia (ITP)** | Platelet autoimmunity; COVID-19 trigger shared with Long COVID/ME; microclot connection | 🟡 Medium |
| 20 | **Dermatomyositis / Polymyositis** | Muscle inflammation; anti-Jo-1; mitochondrial myopathy differential; PEM-like post-exertional worsening | 🟠 High |

---

### Tier 2 — Moderate Relevance (mechanism-specific links)

| # | Disease | Key ME/CFS Mechanistic Link |
|---|---------|----------------------------|
| 21 | **Psoriasis** | IL-17/IL-23 axis; skin-brain-gut axis; TNF-α; mast cell activation overlap |
| 22 | **Psoriatic Arthritis** | Enthesitis; IL-17; JAK pathway; fatigue burden |
| 23 | **Ankylosing Spondylitis** | HLA-B27; IL-17; gut microbiome; IgA dysregulation |
| 24 | **Reactive Arthritis** | Post-infectious trigger (Chlamydia, Salmonella); molecular mimicry; shared EBV/enteroviral triggers |
| 25 | **Systemic Sclerosis (SSc)** | Endothelial injury; TGF-β fibrosis; Raynaud's; mitochondrial antibodies |
| 26 | **Mixed Connective Tissue Disease (MCTD)** | Anti-U1 RNP; overlap syndrome; fibromyalgia within |
| 27 | **Polymyalgia Rheumatica (PMR)** | Age-onset fatigue; IL-6; giant-cell arteritis link; SIBO |
| 28 | **Primary Immunodeficiency (CVID)** | IgG subclass deficiency in ME/CFS; B cell maturation defect; post-viral immune exhaustion |
| 29 | **Selective IgA Deficiency** | IgA in gut immunity; celiac comorbidity; mucosal barrier |
| 30 | **Autoimmune Gastritis / Pernicious Anaemia** | Anti-parietal cell/intrinsic factor; B12 deficiency; neurological consequences overlapping ME/CFS |
| 31 | **Vitiligo** | Melanocyte autoimmunity; HLA associations; oxidative stress link |
| 32 | **Alopecia Areata** | Hair follicle autoimmunity; stress-immune axis; JAK inhibitor treatment bridge |
| 33 | **Pemphigus Vulgaire** | Desmoglein-3 antibodies; B cell-driven; less direct ME/CFS link |
| 34 | **Bullous Pemphigoid** | BP180/BP230 antibodies; aged population; less direct link |
| 35 | **Autoimmune Urticaria** | IgE/IgG against FcεRIα; mast cell connection → MCAS overlap | 🟠 High |
| 36 | **Eosinophilic Esophagitis** | Th2 immunity; food triggers; gut-ME/CFS overlap |
| 37 | **Autoimmune Inner Ear Disease** | Cochlear antibodies; immune-mediated hearing loss; tinnitus in ME/CFS |
| 38 | **Relapsing Polychondritis** | Cartilage autoimmunity; airway involvement; fatigue |
| 39 | **Adult Still's Disease** | Macrophage activation syndrome; IL-18; ferritin; post-viral trigger |
| 40 | **Hemophagocytic Lymphohistiocytosis (HLH)** | Cytokine storm; NK cell dysfunction → direct ME/CFS NK link |

---

### Tier 3 — Lower Relevance (include for completeness, brief treatment)

| # | Disease |
|---|---------|
| 41 | Primary Addison's Disease |
| 42 | Autoimmune Hypophysitis |
| 43 | Autoimmune Oophoritis/Orchitis |
| 44 | Hypoparathyroidism (autoimmune) |
| 45 | Goodpasture Syndrome |
| 46 | ANCA-associated Vasculitides (GPA, MPA, EGPA) |
| 47 | IgA Vasculitis (Henoch-Schönlein) |
| 48 | Takayasu Arteritis |
| 49 | Giant Cell Arteritis |
| 50 | Kawasaki Disease (post-COVID MIS-C overlap) |
| 51 | Autoimmune Retinopathy |
| 52 | Anterior Uveitis (autoimmune) |
| 53 | Autoimmune Hepatitis type 2 |
| 54 | Primary Sclerosing Cholangitis (PSC) |
| 55 | Myocarditis (autoimmune) |
| 56 | Recurrent Pericarditis |
| 57 | Autoimmune Nephritis (Berger IgA) |
| 58 | Minimal Change Nephropathy |
| 59 | Autoimmune Peripheral Neuropathy (CIDP) |
| 60 | Stiff Person Syndrome |
| 61 | POEMS Syndrome |
| 62 | Paraneoplastic Autoimmune Syndromes |
| 63 | Susac Syndrome |
| 64 | Rasmussen Encephalitis |
| 65 | Bickerstaff Brainstem Encephalitis |

---

## Integration Plan — per disease

### Template (used for each `/integrate-topic` run)

```
Topic: [Disease name] — ME/CFS causal upstream context and bidirectional relationship
Research questions:
  Direction A (autoimmune → ME/CFS, more probable):
    1. Does this disease produce ME/CFS as a documented complication or sequela?
    2. Which structures does it damage that generate the ME/CFS phenotype?
    3. Which autoantibodies/cytokines/mechanisms are the likely effectors?
    4. Does treating this disease remit ME/CFS symptoms? (treatment evidence)
  Direction B (ME/CFS → autoimmune risk, less probable):
    5. Is there longitudinal evidence of elevated autoimmune disease incidence in ME/CFS cohorts?
    6. Does ME/CFS immune activation (NK dysfunction, viral reactivation) create conditions for autoimmune onset?
  Both directions:
    7. What distinguishes ME/CFS from this disease clinically and biologically (differential diagnosis)?
    8. What novel hypotheses does the relationship suggest?
    9. What is currently unknown — what prospective cohort data is missing?
Target chapters:
  - ch04-08 (differential diagnosis): always
  - ch05-subgroups: if subgroup-defining (post-autoimmune ME/CFS subtype)
  - ch07, ch14b/d/g (immune/mechanistic): if mechanism link ≥ moderate
  - ch14d (cross-disease): always
  - ch20 (biomarkers): if shared biomarker identified
  - ch13 (integrative models): if this disease illuminates the integrative model
Output: integration guide in content-staging/, then apply
```

---

## Execution Phases

### Phase A — Critical tier (items 1–20 + 35)
**Estimated:** ~21 `/integrate-topic` runs  
**Order:** highest-priority first (SLE → Sjögren → MS → APS → Myasthenia → PBC → Autoimmune Encephalitis → RA → Hashimoto → Graves → PANDAS → Narcolepsy → T1D → Celiac → IBD → Dermatomyositis → ITP → NMOSD → Hepatitis → Autoimmune Urticaria)

### Phase B — Mechanism-specific tier (items 21–40)
**Estimated:** ~20 `/integrate-topic` runs  
**Filter:** Only integrate if Phase A research surfaces a direct ME/CFS link not already documented

### Phase C — Completeness tier (items 41–65)
**Estimated:** ~10 condensed runs (group by system)  
**Format:** brief cross-reference entries in ch14d, no full sections

---

## Novel Hypotheses to Explore (Pre-identified)

These are hypotheses the integration may validate or refute:

| # | Hypothesis | Relevant Diseases |
|---|-----------|------------------|
| H1 | ME/CFS as a forme fruste of SLE without renal/skin manifestations | SLE, MCTD |
| H2 | GPCR autoantibodies in ME/CFS overlap with those in autoimmune dysautonomia (POTS, AAG) | Sjögren, AAG, myasthenia |
| H3 | APS microcoagulation as shared mechanism between Long COVID, ME/CFS, and APS | APS, ITP |
| H4 | PBC fatigue phenotype = ME/CFS fatigue phenotype (anti-mitochondrial → mitochondrial dysfunction) | PBC, autoimmune hepatitis |
| H5 | Molecular mimicry (EBV/streptococcal/enteroviral) as common autoimmune trigger across MS, narcolepsy, PANDAS, ME/CFS | MS, narcolepsy, PANDAS |
| H6 | NK cell dysfunction as shared effector in ME/CFS, HLH, and viral-triggered autoimmunity | HLH, SLE, dermatomyositis |
| H7 | Anti-NMDAR encephalitis sub-threshold → brain fog without frank encephalitis | Autoimmune encephalitis |
| H8 | IgG4-related disease as steroid-responsive ME/CFS subtype | IgG4-RD (not listed yet) |
| H9 | Mast cell-IgE-FcεRI axis links MCAS, autoimmune urticaria, and ME/CFS autonomic dysfunction | Autoimmune urticaria, MCAS |

---

## Missing Disease: IgG4-Related Disease (IgG4-RD)

Not in standard autoimmune lists but mechanistically relevant:
- Multi-organ fibroinflammatory infiltration
- IgG4 subclass elevation
- Post-infectious trigger overlap
- Responds to rituximab (B cell depletion — same target as failed ME/CFS trial)
- **Add to integration queue:** after Phase A

---

## Tracking

| # | Disease | Status | Integration guide | Chapters updated | Commit |
|---|---------|--------|-------------------|-----------------|--------|
| 1 | SLE | ⬜ pending | — | — | — |
| 2 | Sjögren | ⬜ pending | — | — | — |
| 3 | MS | ⬜ pending | — | — | — |
| 5 | RA | ⬜ pending | — | — | — |
| 6 | Hashimoto | ⬜ pending | — | — | — |
| 7 | Graves | ⬜ pending | — | — | — |
| 8 | T1D | ⬜ pending | — | — | — |
| 9 | APS | ⬜ pending | — | — | — |
| 10 | Myasthenia Gravis | ⬜ pending | — | — | — |
| 11 | Celiac | ⬜ pending | — | — | — |
| 12 | IBD | ⬜ pending | — | — | — |
| 13 | Autoimmune Hepatitis | ⬜ pending | — | — | — |
| 14 | PBC | ⬜ pending | — | — | — |
| 15 | PANDAS/PANS | ⬜ pending | — | — | — |
| 16 | Narcolepsy | ⬜ pending | — | — | — |
| 17 | Autoimmune Encephalitis | ⬜ pending | — | — | — |
| 18 | NMOSD | ⬜ pending | — | — | — |
| 19 | ITP | ⬜ pending | — | — | — |
| 20 | Dermatomyositis | ⬜ pending | — | — | — |
| 21 | Psoriasis | ⬜ pending | — | — | — |
| 25 | Systemic Sclerosis (SSc) | 🟡 partial | content-staging/integration-guide-lichen-sclerosus-mecfs-2026-05-01.md | ch14d (@hyp:ssc-ifn-fatigue-model) | 4a631f4 |
| 31 | Vitiligo | 🟡 partial | content-staging/integration-guide-lichen-sclerosus-mecfs-2026-05-01.md | ch14d (@hyp:vitiligo-trm-control) | 4a631f4 |
| 35 | Autoimmune Urticaria | ⬜ pending | — | — | — |
| 40 | HLH | ⬜ pending | — | — | — |
| + | IgG4-RD | ⬜ pending | — | — | — |
| + | **Lichen Sclerosus** | ✅ done | content-staging/integration-guide-lichen-sclerosus-mecfs-2026-05-01.md | ch05, ch07, ch13, ch14d, ch16, ch18, ch20, hypothesis-registry, appendix-h | 4a631f4 |

---

## Notes

- Each `/integrate-topic` run produces a `content-staging/integration-guide-*.md` — apply before next run to avoid conflicts
- Build after every 5 integrations max (per project convention: only at end of session)
- Update `hypothesis-registry.typ` whenever a new hypothesis environment is added
- Cross-check `ch04-08-differential-diagnosis.typ` after each Tier 1 integration — it's the primary differential section
- `ch14d-cross-disease.typ` accumulates all cross-disease mechanistic comparisons — will grow significantly
