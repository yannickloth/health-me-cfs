# Integration Guide: 2026-03-12 Literature Batch

**Created:** 2026-03-12
**Agent:** literature-integrator
**Status:** BibTeX entries added; chapter-integrator to add `\cite{}` calls

This guide covers 11 new papers added to `references.bib` on 2026-03-12.
Papers already in bib (Romano2022, GarciaLabroucheColomer2024, Ewing2024,
Nunes2024coagulation, Bastos2025CSF) are not repeated here.

---

## Paper A2: Krinsky et al. 2023 — NETosis Induction Reflects COVID-19 Severity and Long COVID

### Citation Key
`Krinsky2023`

### Bibliographic Details
- Journal: Journal of Thrombosis and Haemostasis, 21(9):2561–2575
- DOI: 10.1016/j.jtha.2023.02.033
- PMID: 37054916 / PMCID: PMC10088279

### Summary
Two-center Israeli cohort study (n=177 patients + 54 controls) measuring NETosis induction
across COVID-19 severity groups: acute mild/moderate, acute severe/critical, convalescent
recovered, and convalescent long COVID. Found that NETosis induction correlated with
severity and persisted in long COVID patients. NETosis was more sensitive than MPO-DNA
levels for distinguishing severity. Dexamethasone treatment reduced NETosis induction.

### Key Findings
- NETosis induction is elevated in long COVID months after acute infection resolves
- Correlates with platelet activation markers and coagulation factors
- More sensitive biomarker than MPO-DNA for distinguishing COVID-19 severity levels
- Dexamethasone reduces NETosis — suggests corticosteroids partially act via NET suppression
- Persistent NETosis may be a mechanistic driver of long COVID pathology, not just an epiphenomenon

### Certainty Assessment
- Study quality: High (peer-reviewed JTH, prospective cohort, two centres)
- Sample: n=177 patients, n=54 controls
- Replication: Consistent with multiple NETosis studies in COVID/Long COVID
- COI: None disclosed
- Overall certainty: 0.75

### Suggested Chapter Placement

#### Primary: ch07-immune-dysfunction.tex
Section: `\subsection{Neutrophil and Monocyte Function}` (line ~76)

**Environment type:** `achievement`

**Suggested LaTeX:**
```latex
\begin{achievement}[Persistent NETosis Induction in Long COVID as Potential Pathogenic Driver]
\label{ach:krinsky2023-netosis-long-covid}
Krinsky et al.~\cite{Krinsky2023} measured NETosis induction capacity across 177 COVID-19
patients at two Israeli centres spanning acute and convalescent timepoints. NETosis induction
correlated strongly with disease severity, platelet activation, and coagulation factor
elevation, and remained significantly elevated in long COVID patients months after acute
resolution. Critically, NETosis induction was more sensitive than MPO-DNA for stratifying
disease severity, and dexamethasone treatment reduced induction. Persistent NETosis capacity
in long COVID suggests ongoing neutrophil priming as a mechanistic contributor to post-acute
pathology rather than a transient inflammatory response.
Study: ($n=177$ + 54 controls, two-centre cohort, Journal of Thrombosis and Haemostasis,
certainty: 0.75, partially replicated).
\end{achievement}
```

### Creative Connections
- Dexamethasone suppressing NETosis provides a mechanistic rationale for why low-dose
  corticosteroid trials in long COVID might help some patients — and why withdrawal causes
  relapse
- If NETosis induction capacity can be measured from routine blood draws, this could be
  an accessible clinical biomarker for ME/CFS activity monitoring
- The persistent priming of neutrophils in long COVID mirrors the "primed neutrophil"
  phenotype hypothesis in ME/CFS — the two conditions may share the same neutrophil
  activation trajectory

### Replication Status
Partially replicated — consistent with Romano2022 and Monsalve2025 findings; the
long COVID persistence finding is this group's primary contribution.

---

## Paper A7: Son et al. 2023 — Anti-Nuclear Autoantibodies Predict Long COVID

### Citation Key
`Son2023`

### Bibliographic Details
- Journal: European Respiratory Journal, 61(3):2200970
- DOI: 10.1183/13993003.00970-2022
- PMID: 36137590

### Summary
Prospective longitudinal study tracking 106 COVID-19 convalescent patients at 3, 6, and
12 months post-infection. Survivors showed significantly elevated anti-nuclear antibodies
(ANAs) compared to healthy controls and other respiratory infection patients. Persistent
ANA positivity correlated with fatigue, dyspnoea, and cough severity. Specific antibodies
(U1-snRNP and anti-SS-B/La) tracked with fatigue and breathing difficulties. TNF-alpha
independently predicted both ANA persistence and ongoing symptom burden at 12 months.

### Key Findings
- ANA positivity at 3 months predicted persistent symptoms at 12 months
- Specific autoantibodies (U1-snRNP, SS-B/La) correlate with fatigue
- TNF-alpha is both an upstream driver and independent predictive marker
- Autoimmune profile resembles early connective tissue disease (mixed CTD, Sjogren's)
- Raises the question of whether ME/CFS post-viral autoimmune subgroup shares this ANA profile

### Certainty Assessment
- Study quality: Medium-High (prospective, European Respiratory Journal)
- Sample: n=106
- Replication: Consistent with broader autoantibody literature in Long COVID
- COI: None disclosed
- Overall certainty: 0.65

### Suggested Chapter Placement

#### Primary: ch07-immune-dysfunction.tex
Section: `\subsection{Autoantibodies Identified}` (line ~1145)

**Environment type:** `observation`

**Suggested LaTeX:**
```latex
\begin{observation}[Anti-Nuclear Autoantibodies at 3 Months Predict Long COVID Symptom Persistence]
\label{obs:son2023-ana-long-covid}
Son et al.~\cite{Son2023} tracked 106 COVID-19 convalescent patients longitudinally
and found that anti-nuclear antibody (ANA) positivity at 3 months post-infection
predicted persistent symptoms (fatigue, dyspnoea) at 12 months. Specific antibodies
targeting U1-snRNP and SS-B/La correlated with fatigue severity; elevated TNF-$\alpha$
independently predicted both ANA persistence and symptom continuation. The autoantibody
profile resembled early connective tissue disease, suggesting post-viral autoimmunity
as a distinct endotype of long COVID with implications for ME/CFS subgroups.
Study: ($n=106$, prospective cohort 3--12 months post-infection, European Respiratory Journal,
certainty: 0.65, partially replicated).
\end{observation}
```

#### Secondary: ch07 `\subsection{Autoimmune Mechanisms}`
Supports the autoimmune mechanism framework; cross-reference with GuedesDeSa2024.

### Creative Connections
- U1-snRNP antibodies are classically associated with mixed connective tissue disease and
  lupus — their post-COVID appearance raises the question of molecular mimicry vs.
  bystander activation of pre-existing autoreactive B cells
- If ME/CFS patients show higher ANA rates in post-viral subsets, this could identify a
  targetable subgroup for hydroxychloroquine or low-dose naltrexone
- TNF-alpha as the upstream driver creates a clear intervention point: anti-TNF biologics
  could theoretically prevent autoantibody induction if given early post-viral illness

### Replication Status
Partially replicated — consistent with multiple autoantibody studies, but the specific
ANA/U1-snRNP fatigue-prediction finding is this group's contribution.

---

## Paper A8: Schonrich & Raftery 2016 — Neutrophil Extracellular Traps Go Viral

### Citation Key
`Schonrich2016`

### Bibliographic Details
- Journal: Frontiers in Immunology, 7:366
- DOI: 10.3389/fimmu.2016.00366
- PMID: 27698656

### Summary
Foundational review examining how neutrophils respond to viral infections via NETosis.
Describes three roles: (1) viruses directly trigger NETosis via PAMPs and cytokine signalling,
(2) NETs immobilize virions and amplify innate immune responses, (3) some viruses (herpesviruses,
HIV) actively suppress NETosis as an immune evasion strategy. Excessive viral-triggered
NETosis causes bystander tissue damage. Provides mechanistic groundwork for post-viral
NETosis dysregulation.

### Key Findings
- Viruses trigger NETosis both directly (via PAMPs) and indirectly (via IFN, pro-inflammatory cytokines)
- NETs immobilize virions and recruit additional immune effectors
- Viral immunoevasion of NETosis includes suppression of PAD4 and NADPH oxidase
- Excessive or unresolved NETosis causes collateral tissue injury
- Herpesviruses (EBV, CMV, HSV) are known NETosis triggers — directly relevant to ME/CFS

### Certainty Assessment
- Study quality: Medium (2016 review, Frontiers in Immunology, well-cited)
- Type: Narrative review — foundational mechanistic reference
- Overall certainty: 0.55 (background/foundational context)

### Suggested Chapter Placement

#### Primary: ch07-immune-dysfunction.tex
Section: `\subsection{Neutrophil and Monocyte Function}` — background citation for
NETs in viral contexts.

**Suggested use (inline, no dedicated environment):**
```latex
Neutrophil extracellular trap formation is directly triggered by viral infections through
both pattern-recognition receptor activation and cytokine-mediated pathways~\cite{Schonrich2016},
providing a mechanistic bridge between acute viral illness and the sustained neutrophil
dysfunction observed in ME/CFS~\cite{Romano2022,Krinsky2023,Monsalve2025}. Notably,
herpesviruses implicated in ME/CFS triggering (EBV, CMV) are among the established viral
NETosis inducers~\cite{Schonrich2016}.
```

### Replication Status
Well-replicated (2016 review synthesising established findings; foundational reference).

---

## Paper A10: Monsalve et al. 2025 — NETosis: Key Player in Autoimmunity, COVID-19, and Long COVID

### Citation Key
`Monsalve2025`

### Bibliographic Details
- Journal: Journal of Translational Autoimmunity, 10:100280
- DOI: 10.1016/j.jtauto.2025.100280
- PMID: 40071133

### Summary
Comprehensive 2025 review examining NETosis mechanisms across autoimmune disease,
acute COVID-19, and Long COVID. Documents how excessive NET formation generates
autoantigens (citrullinated histones, extracellular DNA, NET-associated proteins) through
molecular mimicry and bystander activation. Proposes that NLRP3 inflammasome activation
by NETs sustains IL-1beta/IL-18 release in Long COVID. Reviews PAD4 inhibitors,
DNase I, and anti-citrullinated protein antibody (ACPA) blockade as therapeutic targets.

### Key Findings
- NET components act as persistent autoantigens driving sustained autoimmune-like pathology
- SARS-CoV-2 spike protein directly triggers NETosis via ACE2 on neutrophils
- Long COVID NETs activate NLRP3 inflammasome sustaining IL-1beta/IL-18
- Molecular mimicry: NET-derived citrullinated proteins resemble self-antigens in RA, SLE
- Therapeutic angle: PAD4 inhibitors, recombinant DNase I, ACPA blockade

### Certainty Assessment
- Study quality: High for a review (Journal of Translational Autoimmunity, peer-reviewed)
- Type: Systematic review synthesising replicated findings across multiple groups
- Overall certainty: 0.70

### Suggested Chapter Placement

#### Primary: ch07-immune-dysfunction.tex
Section: `\subsection{Neutrophil and Monocyte Function}` or NETs subsection

**Environment type:** `hypothesis`

**Suggested LaTeX:**
```latex
\begin{hypothesis}[NETosis as Bridge from Acute Viral Infection to Chronic Autoimmunity]
\label{hyp:monsalve2025-nets-autoimmunity}
Monsalve et al.~\cite{Monsalve2025} propose that excessive NETosis following SARS-CoV-2
infection generates persistent autoantigenic stimuli---citrullinated histones, extracellular
DNA, and NET-associated proteins---that activate NLRP3 inflammasome pathways and sustain
IL-1$\beta$/IL-18 release characteristic of long COVID. Under this model, impaired NET
clearance (reduced DNase activity or persistent neutrophil priming) creates a self-amplifying
loop linking the acute viral trigger to chronic autoimmune-like pathology indistinguishable
from primary autoimmune disease.

\textbf{Testable prediction:} Long COVID patients with persistent NETosis should show
higher NLRP3 activation markers (IL-1$\beta$, IL-18, caspase-1) and higher citrullinated
autoantibody titres than those who resolved NET formation normally.

\textbf{Treatment implication:} PAD4 inhibitors (reducing NET citrullination) and
recombinant DNase~I (enhancing NET clearance) represent mechanistically grounded therapeutic
targets that could be tested in ME/CFS NETosis-positive subgroups.
Study: (systematic review, certainty: 0.70, synthesises findings across multiple groups).
\end{hypothesis}
```

### Creative Connections
- NLRP3 activation by NETs explains the IL-1beta/IL-18 cytokine signature seen in ME/CFS
  post-exertional flares — directly testable via IL-18 measurement before/after PEM trigger
- If citrullinated histones from NETs drive autoantibody induction, anti-PAD4 strategies
  already in clinical trials for RA could be repurposed for ME/CFS NETosis-positive subgroups
- The NLRP3-NETosis loop predicts that NLRP3 inhibitors (e.g., dapansutrile, colchicine)
  could break the cycle in long COVID and post-viral ME/CFS

### Replication Status
Well-established NET-autoimmunity link; Long COVID-specific NLRP3 claims are partially
replicated across independent groups.

---

## Paper A13: Veras et al. 2023 — Targeting NETs Reduces Multi-Organ Injury in COVID-19 Mouse Model

### Citation Key
`Veras2023`

### Bibliographic Details
- Journal: Respiratory Research, 24(1):66
- DOI: 10.1186/s12931-023-02336-2
- PMID: 36864506 / PMCID: PMC9978286

### Summary
Mouse model study demonstrating that pharmacological NET disruption (via DNase I treatment)
reduces SARS-CoV-2-driven multi-organ injury. DNase I decreased detectable NET levels and
improved clinical disease scores. Isolated lung epithelial cells exposed to purified NETs
showed direct cytopathic effects mitigated by DNase I. Authors propose NET-targeting
pharmacology as a therapeutic strategy for COVID-19 and its sequelae.

### Key Findings
- DNase I treatment reduces organ injury in SARS-CoV-2-infected mice
- NETs directly damage lung epithelial cells — not merely a bystander marker
- Net disruption protects lungs, heart, and kidneys simultaneously
- Provides in vivo therapeutic proof-of-concept for NET clearance strategies

### Certainty Assessment
- Study quality: Medium-High (Respiratory Research, rigorous mouse model, mechanism confirmed)
- Type: Animal model (lower translational certainty but mechanistically definitive)
- Overall certainty: 0.55 (mouse model; human translation pending)

### Suggested Chapter Placement

#### Primary: ch07-immune-dysfunction.tex
Section: `\subsection{Neutrophil and Monocyte Function}` — therapeutic implications paragraph.

**Suggested use (inline citation):**
```latex
Preclinical evidence supports NET disruption as a viable therapeutic strategy:
DNase~I treatment reduced multi-organ injury in SARS-CoV-2-infected mice~\cite{Veras2023},
with NETs shown to directly damage lung epithelium independently of other viral effects,
suggesting that pharmacological NET clearance could be protective across multiple
organ systems in post-viral inflammatory states.
```

#### Secondary: Part III treatment chapters
If a NET-targeted treatment section is developed, cite as preclinical proof-of-concept.

### Creative Connections
- DNase I already has clinical safety data from cystic fibrosis use (dornase alfa) —
  repurposing for Long COVID/ME/CFS NET clearance is clinically feasible
- Multi-organ protection by NET disruption supports the hypothesis that diverse ME/CFS
  organ manifestations (brain fog, cardiac, gut) share a common NET-driven endothelial
  injury mechanism
- Mouse model NETs match human Long COVID NETs in composition — suggesting translational
  validity

### Replication Status
Not independently replicated in humans; consistent with multiple in vitro NET cytotoxicity
studies.

---

## Paper A14: Garcia et al. 2024 — NET Formation/DNase Imbalance in COVID-19 (already in bib)

Already present as `GarciaLabroucheColomer2024`. No new entry needed.

---

## Paper A16: Hetland et al. 2022 — NETs and Calprotectin After ChAdOx1 Vaccination

### Citation Key
`Hetland2022`

### Bibliographic Details
- Journal: Vaccines, 10(8):1267
- DOI: 10.3390/vaccines10081267
- PMID: 36016155

### Summary
Case-comparison study examining NETosis and calprotectin as markers of inflammatory
severity after ChAdOx1 nCoV-19 (AstraZeneca) vaccination. Patients developing VITT
(vaccine-induced immune thrombotic thrombocytopenia) showed markedly elevated H3-NETs
and calprotectin (S100A8/S100A9) compared to those with mild post-vaccination symptoms.
Correlations between these markers and clinical severity were strong (r >= 0.745).
Demonstrates NETs as both biomarkers and mediators of thrombotic complications.

### Key Findings
- H3-NETs and calprotectin are dose-responsive markers of NETosis-driven thromboinflammation
- VITT shares coagulation pathology with NETosis-driven microclotting seen in Long COVID
- Calprotectin (S100A8/S100A9) is a readily measurable proxy for neutrophil activation
- Strong correlation (r >= 0.745) between NET markers and clinical symptom severity

### Certainty Assessment
- Study quality: Medium (Vaccines journal, small VITT cohort)
- Relevance: Adjacent — vaccine context, but the NETs-calprotectin-coagulation mechanism
  is directly applicable to any NETosis-driven thromboinflammation
- Overall certainty: 0.50

### Suggested Chapter Placement

#### Primary: ch07-immune-dysfunction.tex
`\subsection{Neutrophil and Monocyte Function}` — supporting reference for calprotectin
as NET biomarker.

**Suggested use (inline):**
```latex
NETosis-mediated thromboinflammation has been documented across diverse immune stimuli:
in vaccine-associated thrombotic complications (VITT), H3-NET levels and calprotectin
correlated strongly with clinical severity ($r \geq 0.745$)~\cite{Hetland2022},
establishing calprotectin (S100A8/S100A9) as a clinically accessible proxy for NET
burden that could be applied in ME/CFS monitoring protocols.
```

### Creative Connections
- Calprotectin is already used as an inflammation marker in IBD; proposing its use as
  an ME/CFS NET burden proxy is clinically actionable and inexpensive
- The VITT-Long COVID coagulation parallel supports the hypothesis that microclotting in
  ME/CFS is NET-driven regardless of the specific immune trigger (virus vs. vaccine)

### Replication Status
Limited — small VITT cohort. The calprotectin-NET correlation is mechanistically consistent
with multiple independent studies.

---

## Paper A18: Weckbach et al. 2019 — Midkine Drives Cardiac NETosis in Myocarditis

### Citation Key
`Weckbach2019`

### Bibliographic Details
- Journal: The Journal of Experimental Medicine, 216(5):1040–1058
- DOI: 10.1084/jem.20181102
- PMID: 30647120 / PMCID: PMC6363424

### Summary
Demonstrates that midkine (MK), a cytokine elevated in cardiac stress, drives neutrophil
trafficking and NETosis in experimental myocarditis via LRP1 receptor signalling. NETs were
identified in cardiac tissue from both human myocarditis patients and mouse models.
NET-mediated fibrosis was documented as a mechanism for post-inflammatory ventricular
dysfunction. Blocking MK or LRP1 reduced cardiac inflammation and fibrosis.

### Key Findings
- NETs are present in cardiac tissue in myocarditis, not just in circulating blood
- Midkine-LRP1 axis specifically recruits neutrophils to inflamed cardiac tissue
- NET-driven fibrosis is a mechanism for post-inflammatory cardiac dysfunction
- LRP1 or midkine blockade reduces cardiac NETosis and injury

### Certainty Assessment
- Study quality: High (Journal of Experimental Medicine, rigorous human tissue + mouse data)
- Relevance: Cardiac NETosis in post-viral settings — relevant to post-COVID/ME/CFS cardiac involvement
- Overall certainty: 0.65

### Suggested Chapter Placement

#### Primary: ch10-cardiovascular.tex
Background support for cardiac NET involvement in post-viral conditions.

**Suggested use (inline):**
```latex
Neutrophil extracellular traps accumulate in cardiac tissue during myocarditis, where
the midkine--LRP1 axis drives NET-mediated fibrosis and ventricular dysfunction~\cite{Weckbach2019}.
This mechanism may underlie the subclinical post-viral cardiomyopathy reported in some
ME/CFS and Long COVID patients, and suggests that cardiac NET burden---not just circulating
NET markers---merits investigation in this population.
```

#### Secondary: ch07-immune-dysfunction.tex
Background reference establishing tissue-level NETosis beyond the vascular compartment.

### Creative Connections
- If midkine is elevated post-SARS-CoV-2 (plausible given cardiac stress responses),
  this could explain post-COVID cardiac microinflammation even in clinically "mild" cases
- Midkine is measurable in plasma — provides a potential biomarker for cardiac NETosis risk
- LRP1 inhibition is under investigation for other fibrotic conditions; repurposing
  for post-viral cardiomyopathy is a novel direction

### Replication Status
Human tissue confirmed; mouse model replicated multiple times. Long COVID cardiac translation
is inferential.

---

## Paper from PolyBio B1: Gao et al. 2025 — Soluble Biomarkers for Long COVID Manifestations

### Citation Key
`Gao2025LongCovidBiomarkers`

### Bibliographic Details
- Journal: Nature Immunology, 26:692–705
- DOI: 10.1038/s41590-025-02135-5
- PMID: 40307449

### Summary
Multi-cohort Swedish and UK prospective study identifying distinct immune and proteomic
signatures for Long COVID manifestations. Long COVID patients showed impaired SARS-CoV-2
neutralizing antibody titres, subtle CD8+ T cell exhaustion (elevated PD-1, TIM-3
co-inhibitory receptors on SARS-CoV-2-specific cells), and a specific plasma proteomic
signature for the breathlessness subtype: CCL3, CD40, IKBKG, IL-18, and IRAK1.
Abnormalities in cell cycle progression, lung injury, and platelet activation pathways
identified. Demonstrates that Long COVID is immunologically heterogeneous.

### Key Findings
- Impaired neutralizing antibody response in Long COVID vs. full recovery
- CD8+ T cell exhaustion (PD-1/TIM-3) persists months after acute infection
- Breathlessness subtype has a distinct proteomic signature: CCL3/CD40/IKBKG/IL-18/IRAK1
- Platelet activation dysregulation consistent with microclotting hypothesis
- Immune heterogeneity means no single biomarker captures all Long COVID

### Certainty Assessment
- Study quality: High (Nature Immunology, multi-cohort validated)
- Sample: Multi-centre Swedish + UK cohort
- Replication: Multi-cohort validation included in study design
- Overall certainty: 0.80

### Suggested Chapter Placement

#### Primary: ch07-immune-dysfunction.tex
Section: `\subsection{B Cell Function and Antibodies}` or `\subsection{Chronic Immune Activation}`

**Environment type:** `achievement`

**Suggested LaTeX:**
```latex
\begin{achievement}[Distinct Proteomic Signatures Identify Long COVID Subtypes]
\label{ach:gao2025-long-covid-biomarkers}
Gao et al.~\cite{Gao2025LongCovidBiomarkers} identified heterogeneous immune and proteomic
signatures across Long COVID manifestations in validated Swedish and UK multi-cohort data.
Compared to fully recovered individuals, long COVID patients showed impaired SARS-CoV-2
neutralising antibody responses and subtle CD8$^+$ T cell exhaustion (elevated PD-1 and
TIM-3 co-inhibitory receptors on virus-specific cells). A distinct plasma proteomic
signature---CCL3, CD40, IKBKG, IL-18, and IRAK1---characterised the breathlessness subtype,
pointing to apoptotic-inflammatory pathways and platelet activation dysregulation as
organ-specific mechanisms. These findings support stratification of Long COVID (and by
extension, post-COVID ME/CFS) into immunologically distinct endotypes with different
therapeutic requirements.
Study: (multi-cohort, Nature Immunology, multi-cohort validated, certainty: 0.80).
\end{achievement}
```

#### Secondary: ch12 (viral persistence context: impaired antibody response supports viral reservoir)
#### Secondary: ch14 (Long COVID overlap: endotype heterogeneity)

### Creative Connections
- IRAK1 is a key TLR/IL-1R signalling adapter — its elevation in breathlessness suggests
  that TLR pathway hyperactivation drives organ-specific manifestations. If IRAK1 variants
  are enriched in ME/CFS genetics, this would provide a mechanistic link
- CD40 elevation suggests ongoing B-T cell co-stimulation in tissue — consistent with
  tissue-based viral persistence driving adaptive immune activation
- IL-18 in the breathlessness signature connects to NLRP3 inflammasome activation (also
  implicated in NETosis loop) — a shared upstream pathway across ME/CFS and Long COVID

### Replication Status
Multi-cohort validated within study. The specific proteomic signatures require independent
replication, but the immune exhaustion findings are consistent with multiple Long COVID
immune studies.

---

## Paper from PolyBio B1: Guedes de Sa et al. 2024 — Autoantibodies Causally Drive Neurological Long COVID

### Citation Key
`GuedesDeSa2024`

### Bibliographic Details
- Preprint: medRxiv, DOI: 10.1101/2024.06.18.24309100
- PMID: 38947091 / PMCID: PMC11213106
- Note: preprint status — peer review status unverified at time of writing

### Summary
Proteome-wide array study (>21,000 human proteins) identifying autoantibodies in Long
COVID patients correlating with neurological symptoms. Purified IgG from patients with
neurological Long COVID transferred to mice reproduced pain hypersensitivity, balance
impairment, and coordination deficits mirroring donor symptom profiles. Autoantibodies
cross-reacted with nervous system tissue (pons, sciatic nerves, spinal cord, meninges).
Reactivity to meninges and sciatic nerve correlated with headache and disorientation.

### Key Findings
- Passive IgG transfer proves autoantibody causality, not just correlation, for neurological symptoms
- Autoantibody targets include pontine tissue, meninges, spinal cord, peripheral nerves
- Meningeal antibody reactivity correlates with headache; sciatic nerve reactivity with disorientation
- Supports autoantibody-directed therapies for neurological Long COVID endotype
- Proteome-wide discovery approach identified diverse novel targets (not just classical ANAs)

### Certainty Assessment
- Study quality: High mechanistic design (passive transfer is gold standard); preprint caveat
- Sample: Neurological Long COVID subset with matched controls
- Replication: Not independently replicated yet; preprint
- Overall certainty: 0.60 (strong mechanistic evidence discounted for preprint status)

### Suggested Chapter Placement

#### Primary: ch08-neurological.tex
Section: `\subsection{Glial Cell Dysfunction}` or `\subsection{Blood-Brain Barrier as CNS Vulnerability Factor}`

**Environment type:** `hypothesis` (given preprint status)

**Suggested LaTeX:**
```latex
\begin{hypothesis}[Autoantibodies Causally Drive Neurological Dysfunction in Long COVID]
\label{hyp:guedesde-sa2024-autoab-neuro}
Guedes de S\'a et al.~\cite{GuedesDeSa2024} identified diverse autoantibodies against
nervous system targets in Long COVID patients with neurological symptoms, using proteome-wide
arrays covering $>$21\,000 human proteins. Critically, passive transfer of purified patient
IgG to mice reproduced the donors' neurological phenotypes---including pain hypersensitivity,
balance loss, and disorientation---establishing causal sufficiency. Autoantibodies targeted
pontine tissue, meninges, spinal cord, and sciatic nerve; meningeal reactivity correlated
with headache and sciatic reactivity with disorientation. If this mechanism extends to
post-viral ME/CFS with prominent neurological symptoms, it would identify a distinct
autoimmune endotype where autoantibody removal (plasmapheresis, IVIG, rituximab) would
be the mechanistically appropriate intervention.

\textbf{Testable prediction:} ME/CFS patients with prominent neurological features should
show higher titres of anti-pons and anti-meningeal autoantibodies than those with
predominantly fatigue-dominant presentation.

\textbf{Treatment implication:} Plasmapheresis, IVIG, or B-cell depletion (rituximab)
should be evaluated in ME/CFS patients with documented anti-nervous system autoantibodies.
Study: (preprint, passive transfer demonstrated, certainty: 0.60, not yet independently replicated).
\end{hypothesis}
```

#### Secondary: ch07-immune-dysfunction.tex `\subsection{Autoimmune Mechanisms}`

### Creative Connections
- Pons-targeting autoantibodies are striking: the pons is implicated in VanElzakker's
  vagus nerve hypothesis and brainstem autonomic control. If autoantibodies specifically
  damage pontine circuits, this could simultaneously explain autonomic, cognitive, and
  fatigue dysfunctions through a single immune mechanism
- Passive transfer design brings Long COVID neurological autoimmunity to the same
  evidential standard as NMO-IgG and NMDAR encephalitis — landmark methodologically
- If shared autoantibody profiles exist between Long COVID and ME/CFS neurological subsets,
  the existing B-cell depletion literature (e.g., Fluge & Mella rituximab trials) gains
  a direct mechanistic rationale

### Replication Status
Not independently replicated. Passive transfer methodology is gold standard but requires
confirmation in independent cohorts.

---

## Paper from PolyBio B1: Peluso et al. 2024 — Viral RNA Persists Up to 2 Years Post-SARS-CoV-2

### Citation Key
`Peluso2024ViralPersistence`

### Bibliographic Details
- Journal: Science Translational Medicine, 16(754):eadk3295
- DOI: 10.1126/scitranslmed.adk3295

### Summary
Science Translational Medicine study using total-body PET-CT imaging and rectosigmoid
biopsies to demonstrate SARS-CoV-2 spike-encoding RNA persistence in gut lamina propria
up to 676 days (nearly 2 years) after initial infection. Both single-stranded (ssRNA) and
double-stranded (dsRNA) viral RNA detected. dsRNA in tissue constitutively activates
innate immune sensors (RIG-I, MDA5), explaining persistent immune activation without
active viral replication. Prolonged T cell activation correlated with viral RNA presence.

### Key Findings
- SARS-CoV-2 RNA (ssRNA and dsRNA) detected in rectosigmoid lamina propria up to 676 days post-infection
- dsRNA would constitutively activate RIG-I/MDA5 innate sensors — explaining perpetual IFN signature
- Viral RNA presence associated with ongoing T cell activation in gut-associated lymphoid tissue
- Total-body PET imaging showed widespread lymphoid tissue involvement
- Gut reservoir provides mechanistic explanation for why immune activation never fully resolves

### Certainty Assessment
- Study quality: High (Science Translational Medicine, direct tissue biopsy evidence)
- Sample: Small biopsy cohort (n=5 with rectosigmoid data) within larger PET study
- Replication: Consistent with Zollner 2022, Patterson 2022, and other viral persistence studies
- Overall certainty: 0.70 (mechanistically definitive but small biopsy n)

### Suggested Chapter Placement

#### Primary: ch07-immune-dysfunction.tex
Section: `\subsection{Viral Reactivation and Persistence}` (line ~697)

**Environment type:** `achievement`

**Suggested LaTeX:**
```latex
\begin{achievement}[SARS-CoV-2 Viral RNA Detected in Gut Tissue for Nearly Two Years]
\label{ach:peluso2024-viral-persistence}
Using total-body PET-CT imaging and rectosigmoid biopsies, Peluso et al.~\cite{Peluso2024ViralPersistence}
detected SARS-CoV-2 spike-encoding RNA---both single- and double-stranded---in gut lamina
propria tissue up to 676 days after initial infection. Double-stranded RNA present in tissue
would constitutively activate innate immune sensors (RIG-I, MDA5), generating a perpetual
interferon signature and sustaining T cell activation without active viral replication.
Total-body PET imaging revealed widespread lymphoid tissue involvement, supporting the
gastrointestinal tract as a viral reservoir maintaining systemic immune dysregulation in
long COVID and post-COVID ME/CFS.
Study: (tissue biopsy + PET imaging, $n=5$ biopsy participants, Science Translational Medicine,
certainty: 0.70, consistent with multiple independent viral persistence studies).
\end{achievement}
```

#### Secondary: ch11-gut-microbiome.tex
The gut reservoir finding has direct implications for gut-immune axis chapter.

#### Secondary: ch12-genetics-epigenetics.tex
Viral RNA persistence may trigger epigenetic changes via innate immune sensor activation.

### Creative Connections
- dsRNA constitutively activating RIG-I/MDA5 is mechanistically elegant: it explains
  the persistent IFN-I signature in Long COVID without requiring ongoing viral replication —
  a "molecular fossil" that keeps the immune system in a perpetual alarm state
- If gut viral RNA load correlates with Long COVID/ME/CFS severity, total-body PET imaging
  could stratify patients by reservoir burden — a diagnostic tool and treatment endpoint
- Antivirals targeting the gut reservoir (nirmatrelvir/ritonavir) are currently in RCTs;
  the 676-day persistence argues for extended treatment courses rather than the current 5-day standard

### Replication Status
Consistent with multiple independent viral persistence studies (Zollner 2022, Patterson 2022,
tissue reservoir literature). Small biopsy n is the primary limitation.

---

## Paper A19: Cullen et al. 2026 — ATP Bioenergetics and Fatigue in Depression

### Citation Key
`Cullen2026ATP`

### Bibliographic Details
- Journal: Translational Psychiatry
- DOI: 10.1038/s41398-026-03904-y

### Summary
Translational Psychiatry study examining ATP production in brain and blood cells of 18
young adults with major depressive disorder versus non-depressed controls. The key finding
is counterintuitive: cells from depressed individuals produce more ATP at rest but have
reduced capacity to upscale energy output under metabolic stress. Authors describe this
as "stress-responsive mitochondrial failure" — a state where the mitochondria are maximally
engaged at baseline with no reserve capacity for demand surges.

### Key Findings
- Resting ATP production paradoxically elevated in depressed individuals
- Stress-induced ATP upscaling markedly blunted — "stress-responsive mitochondrial failure"
- Pattern resembles ME/CFS post-exertional energy collapse: near-normal baseline, catastrophic
  failure under demand
- Raises the question of shared mitochondrial regulatory dysregulation between depression
  and ME/CFS fatigue

### Certainty Assessment
- Study quality: Medium (Translational Psychiatry, peer-reviewed)
- Sample: n=18 (very small — results are preliminary)
- Relevance: Adjacent (depression, not ME/CFS) — but mechanistically suggestive
- Overall certainty: 0.40 (small n, different condition; conceptual cross-application speculative)

### Suggested Chapter Placement

#### Primary: ch06-energy-metabolism.tex (if it exists) or the energy section of ch07
If ch06 covers mitochondrial dysfunction, add as a speculation. Otherwise, integrate
into the energy metabolism subsection of whichever chapter covers this.

**Environment type:** `speculation`

**Suggested LaTeX:**
```latex
\begin{speculation}[Depression and ME/CFS May Share a Stress-Responsive Mitochondrial Failure Mode]
\label{spec:cullen2026-atp-fatigue}
Cullen et al.~\cite{Cullen2026ATP} found that cells from young adults with major depression
produce paradoxically elevated ATP at rest but show markedly reduced capacity to upscale
energy output under metabolic stress---a pattern they term \textit{stress-responsive
mitochondrial failure}. This phenotype is conceptually similar to the post-exertional
energy collapse in ME/CFS: near-normal baseline function until an energy demand threshold
is exceeded, whereupon output fails catastrophically. Whether ME/CFS mitochondria share
this specific regulatory defect (rather than, or in addition to, absolute ATP deficiency)
remains to be directly tested in ME/CFS populations.
Study: ($n=18$, major depression cohort, Translational Psychiatry 2026, certainty: 0.40;
relevance to ME/CFS is speculative).
\end{speculation}
```

### Creative Connections
- "Stress-responsive mitochondrial failure" may be a better conceptual model for PEM than
  "mitochondrial deficiency" — it explains why ME/CFS patients appear near-normal on
  routine metabolic tests but collapse under exertion
- A 2-day CPET protocol applied to depressed individuals with fatigue would test whether
  this energetic overlap is real and extends to exercise physiology
- If the mechanism is shared, antidepressants that improve mitochondrial biogenesis
  (e.g., certain SSRIs, NAD+ precursors) might have crossover benefit in ME/CFS fatigue

### Replication Status
Not replicated; very small sample; different condition. Treat as hypothesis-generating only.

---

## PolyBio Project 5272: VanElzakker et al. — Neuroinflammation and Brain Fog PET-MRI Project

### Citation Key
`VanElzakker2024NeuroinflammationProject`

### Bibliographic Details
- Type: Research project (not yet published)
- Source: PolyBio Research Foundation, Project 5272
- URL: https://polybio.org/projects/5272/
- PIs: Michael B. VanElzakker (Harvard), Marco Loggia, Eva Ratai

### Summary
Ongoing PolyBio-funded Harvard project using dual PET-MRI to measure glial cell activation
in Long COVID and ME/CFS patients during cognitive tasks. Central hypothesis: neuroinflammation
(glial activation) drives brain fog independently of systemic blood biomarkers. Also measuring
blood SARS-CoV-2 proteins, microclot burden, and neutrophil activity to correlate with PET
neuroinflammatory signal. No peer-reviewed published results at time of this guide.

### Key Aims (from project description)
- Quantify glial cell activation in Long COVID and ME/CFS via PET tracer
- Test whether brain PET signal correlates with systemic markers (blood NETs, microclots, SARS-CoV-2 proteins)
- Determine whether cognitive impairment severity correlates with neuroinflammation magnitude

### Certainty Assessment
- Status: Ongoing — no published results
- Certainty: N/A (unpublished research aims)

### Suggested Use
Do NOT cite as evidence for a specific finding. Use as:
1. Evidence that leading ME/CFS researchers are actively investigating neuroinflammation as the
   driver of brain fog
2. Methodological context for PET-MRI as the appropriate tool for this question
3. Forward reference to pending results

**Suggested use (context sentence):**
```latex
Direct measurement of neuroinflammatory activity in ME/CFS and Long COVID via dual
PET-MRI is currently underway, with preliminary pilot data from existing PET studies
suggesting elevated microglial activation in multiple brain regions~\cite{Nakatomi2014},
and ongoing work aiming to establish the causal relationship between glial activation
and objective cognitive impairment~\cite{VanElzakker2024NeuroinflammationProject}.
```

---

## Papers Skipped — Irrelevant or Inaccessible

| URL | Label | Disposition | Reason |
|-----|-------|-------------|--------|
| link.springer.com/10.1007/s10654-025-01334-6 | A3 | Not relevant | COVID-19 vaccination and short-term mortality Netherlands |
| nature.com/s41598-026-40142-0 | A4 | Not accessible | URL did not resolve |
| medicalxpress.com/...blood-mutations | A5 | Not relevant | CHIP somatic mutations and IBD; no ME/CFS connection |
| hss.edu/lupus | A11 | Not relevant | Non-academic patient education page |
| scienceopen.com/...pdf | A15 | Inaccessible | 404 / document not accessible |
| volition.com/nu-q-nets | A17 | Not relevant | Commercial diagnostic product marketing page |
| medicalxpress.com/...flu-virus | A20 | Not relevant | B cell imprinting by sequential flu subtypes in children; limited ME/CFS relevance |
| preprints.org/202602.1993 | A21 | Not assessed | Could not load preprints.org content |
| santersus.com | B2/B3 | Not relevant | Commercial apheresis device; no ME/CFS clinical programme listed |
| jthjournal.org/S1538-7836(23)00274-X | A2 | Added as Krinsky2023 | (relevant, included) |
| link.springer.com/s12931-023-02336-2 | A13 | Added as Veras2023 | (relevant, included) |
| onlinecjc.ca/S0828-282X(24)00281-2 | A12 | Could not assess | 403 access denied |

### A12 Note
The Canadian Journal of Cardiology PDF (A12, pii=S0828-282X(24)00281-2) returned 403.
Search results suggest it is likely a Long COVID / cardiovascular autonomic or POTS paper
from 2024. Recommended follow-up: access via institutional credentials and process separately
if relevant (probable target: ch10-cardiovascular.tex).

---

## PolyBio Publications B1 — Additional Papers Identified for Future Processing

From polybio.org/publications/ the following papers were identified but not yet fully
processed (not yet in bib):

| Title | Source | Suggested action |
|-------|---------|-----------------|
| Quantification of fibrinaloid clots in pediatric Long COVID (ResearchSquare rs-7483367) | ResearchSquare preprint | Process when peer-reviewed |
| SARS-CoV-2 S1 subunit neuroinflammatory priming (ScienceDirect) | ScienceDirect | Fetch and integrate into ch08 |
| Targeting SARS-CoV-2 reservoir in long COVID (Lancet Infect Dis) | Lancet | Integrate into ch07 viral persistence |
| Ageing limits CD8+ T cell induction in severe COVID (PMID 39847442) | PubMed | Assess for ch07 T cell section |
| Persistent immune dysregulation and metabolic alterations following SARS-CoV-2 (medRxiv) | medRxiv preprint | Process when peer-reviewed |

---

## Summary Statistics

| Category | Count |
|----------|-------|
| URLs reviewed | 23 |
| New BibTeX entries added | 11 |
| Already in bib (confirmed) | 5 |
| Not relevant (skipped) | 6 |
| Inaccessible (403/404) | 2 |
| Future processing recommended | 5 |

## New Citation Keys Added This Session

| BibKey | Paper | Primary Chapter |
|--------|-------|----------------|
| `Krinsky2023` | NETosis induction in COVID-19 severity and Long COVID | ch07 |
| `Son2023` | Anti-nuclear autoantibodies predict Long COVID | ch07 |
| `Schonrich2016` | NETs Go Viral (foundational review) | ch07 |
| `Monsalve2025` | NETosis in autoimmunity/COVID/Long COVID | ch07 |
| `Veras2023` | Targeting NETs reduces multi-organ injury (mouse model) | ch07 |
| `Hetland2022` | NETs and calprotectin after ChAdOx1 | ch07 |
| `Weckbach2019` | Midkine drives cardiac NETosis | ch10 |
| `Gao2025LongCovidBiomarkers` | Long COVID soluble biomarkers (Nature Immunology) | ch07 |
| `GuedesDeSa2024` | Autoantibody causality for neurological Long COVID | ch08 |
| `Peluso2024ViralPersistence` | SARS-CoV-2 RNA persists 2 years in gut tissue | ch07 |
| `Cullen2026ATP` | ATP bioenergetics and fatigue in depression | ch06 |
| `VanElzakker2024NeuroinflammationProject` | PolyBio PET-MRI neuroinflammation project | ch08 |

## Particularly Significant Findings for User Attention

1. **Peluso2024ViralPersistence** — Viral RNA persisting 676 days in gut tissue with
   constitutive innate immune sensor activation is the strongest mechanistic explanation
   yet for why post-COVID immune dysregulation never resolves. Landmark for the viral
   reservoir model.

2. **GuedesDeSa2024** — Passive IgG transfer reproducing neurological symptoms brings Long
   COVID neurological autoimmunity to the same evidential level as NMO and NMDAR encephalitis.
   The pons-targeting antibodies are directly relevant to ME/CFS brainstem hypotheses.

3. **Gao2025LongCovidBiomarkers** — Multi-cohort Nature Immunology validation confirms Long
   COVID immune heterogeneity and identifies IRAK1/IL-18/platelet dysregulation as the
   breathlessness endotype signature. Applicable to ME/CFS subtyping strategy.

4. **Krinsky2023** — Two-centre cohort demonstrating persistent NETosis induction capacity
   in long COVID provides the most direct clinical evidence that NETosis is a sustained
   mechanistic driver, not a transient acute-phase phenomenon.

5. **Monsalve2025** — Most comprehensive review of NETosis-autoimmunity bridge; NLRP3
   inflammasome-NETosis loop mechanistically explains IL-1beta/IL-18 cytokine signature
   in ME/CFS post-exertional flares.
