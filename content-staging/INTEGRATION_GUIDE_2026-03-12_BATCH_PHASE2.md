# Integration Guide: 2026-03-12 Literature Batch Phase 2

**Created:** 2026-03-12
**Agent:** literature-integrator
**Status:** BibTeX entries added; appendix-h updated; chapter-integrator to add `\cite{}` calls

This guide covers 6 new papers resolved from the pending/inaccessible items of the
2026-03-12 batch. Items A12, A21, and A15 remain unresolvable (see end of this file).

---

## Paper A4 (resolved): Omdal et al. 2026 — Long-COVID: No Circulating Neuroinflammation Markers

### Citation Key
`Omdal2026LongCovidNeuroinflammation`

### Bibliographic Details
- Journal: Scientific Reports (Nature)
- DOI: 10.1038/s41598-026-40142-0
- Year: 2026
- Study: n=48 long-COVID, n=48 recovered controls; Stavanger University Hospital, Norway
- Design: Age- and sex-matched case-control; median 69 weeks post-infection

### Summary
Case-control study measuring circulating neuroinflammation and neurodegeneration markers
(NfL, GFAP) in long-COVID patients vs. recovered controls. Found no significant differences,
suggesting persistent long-COVID symptoms are not accompanied by detectable neuronal injury
or circulating neuroinflammation markers at the tested timepoint.

### Certainty Assessment
- Study quality: Medium (Scientific Reports; small single-centre cohort)
- Certainty: 0.55
- Key limitation: NfL/GFAP detect neuronal injury, not glial activation — does not
  exclude localised PET-detectable neuroinflammation

### Recommended Chapter Placement

**Primary:** ch08-neurological.tex
Section: neuroinflammation subsection — as a balancing observation

**Environment type:** `observation` or inline limitation note

**Suggested LaTeX:**
```latex
\begin{observation}[Circulating Neuroinflammation Biomarkers Do Not Reflect Long-COVID Brain Pathology]
\label{obs:omdal2026-null-nfl}
A case-control study ($n=48$ per group, median 69 weeks post-infection) found no
significant differences in circulating neurofilament light (NfL) or GFAP between
long-COVID patients and recovered controls~\cite{Omdal2026LongCovidNeuroinflammation},
suggesting that neuronal injury detectable via standard blood biomarkers is not a
universal feature of long COVID. This null finding does not exclude localised
microglial activation: NfL and GFAP primarily reflect neuronal injury, whereas
PET imaging studies demonstrating elevated TSPO binding in ME/CFS detect
glial inflammation without overt neurodegeneration~\cite{Nakatomi2014neuroinflammation}.
Study: (case-control, $n=96$, Scientific Reports 2026, certainty: 0.55).
\end{observation}
```

**Alternative inline version:**
```latex
Standard circulating neuroinflammation markers (NfL, GFAP) are not significantly
elevated in long-COVID at median 69 weeks post-infection~\cite{Omdal2026LongCovidNeuroinflammation},
indicating that blood biomarkers may be insufficient to capture the localised
microglial activation documented by PET imaging~\cite{Nakatomi2014neuroinflammation,VanElzakker2024NeuroinflammationProject}.
```

### Key Points to Convey
1. Negative result for circulating markers — does not disprove neuroinflammation
2. NfL/GFAP test neuronal injury, not glial activation; PET is the right tool
3. Useful as a balancing caveat to prevent overclaiming neuroinflammation from blood data

---

## PolyBio B1 Paper 1 (resolved): Frank et al. 2024 — S1 Subunit Neuroinflammatory Priming

### Citation Key
`Frank2024S1Priming`

### Bibliographic Details
- Journal: Brain, Behavior, and Immunity, 121:87–103
- DOI: 10.1016/j.bbi.2024.07.034
- PMID: 39043345
- Year: 2024
- PI: Matthew G. Frank (University of Colorado)
- Study: Rat model; S1 subunit administration, LPS challenge one week later

### Summary
Rodent study demonstrating that prior exposure to SARS-CoV-2 S1 spike subunit sensitises
the brain innate immune system, producing exaggerated neuroinflammatory, physiological, and
behavioural responses to a subsequent immune challenge one week later. S1 reduces brain
corticosteroid levels, disinhibiting TLR-driven innate immune pathways. Key priming genes
(MhcIIalpha, Nlrp3, Tlr4) remain elevated 7 days post-S1 exposure.

### Certainty Assessment
- Study quality: Medium-High (Brain Behavior Immunity; rigorous rodent model)
- Certainty: 0.55 (rodent model; human translation inferential but consistent with in vitro data)
- Replication: Consistent with independent S1 neuroinflammation studies (PMID 34915155, 39428044)

### Recommended Chapter Placement

**Primary:** ch08-neurological.tex
Section: neuroinflammation or spike protein CNS effects subsection

**Environment type:** `hypothesis`

**Suggested LaTeX:**
```latex
\begin{hypothesis}[Spike Protein Primes Brain Innate Immunity, Lowering the Neuroinflammatory Threshold]
\label{hyp:frank2024-s1-priming}
Frank et al.~\cite{Frank2024S1Priming} demonstrated that prior S1 spike subunit
exposure sensitises brain innate immunity in rats, producing protracted potentiation
of neuroinflammatory responses---MhcII$\alpha$, Nlrp3, and Tlr4 upregulation
persisting 7 days---and exaggerated reactions to subsequent immune challenges.
S1 reduced baseline corticosteroid levels in brain tissue, disinhibiting TLR-driven
innate immune pathways. If this priming mechanism operates in humans, even minor
infections or physiological stressors following SARS-CoV-2 could trigger
disproportionate neuroinflammatory cascades in long COVID and post-COVID ME/CFS
patients, explaining symptom relapse after minor immune challenges and the
characteristic neurological component of post-exertional malaise.

\textbf{Testable prediction:} Long COVID patients should show elevated cerebrospinal
fluid neuroinflammation markers specifically after minor intercurrent infections, with
the magnitude correlating with the interval since primary SARS-CoV-2 infection and
residual S1 antigen burden.

\textbf{Treatment implication:} Reducing S1-driven TLR4 signalling (e.g., via
TLR4 antagonists or anti-neuroinflammatory agents) could lower the neuroinflammatory
threshold before the next immune challenge.
Study: (rat model, Brain Behavior Immunity 2024, certainty: 0.55; human translation pending).
\end{hypothesis}
```

**Secondary:** ch07-immune-dysfunction.tex — brief mention as context for viral-triggered immune sensitisation.

### Key Points to Convey
1. S1 subunit functions as a PAMP — activates TLR2/TLR4 independently of viral replication
2. The corticosteroid-reduction mechanism explains reduced anti-inflammatory tone post-COVID
3. Sustained gene upregulation (7 days) means the priming window is clinically relevant
4. Connects to the "kindling" model of ME/CFS relapse after minor triggers

### Hypothesis Registry
MUST be added to `contents/part4-research/hypothesis-registry.tex`:
- Label: `hyp:frank2024-s1-priming`
- Title: Spike Protein Primes Brain Innate Immunity, Lowering the Neuroinflammatory Threshold
- Type: `hypothesis`
- Chapter: ch08
- Certainty: 0.55
- Falsifiable: Yes (CSF markers after intercurrent infection)

---

## PolyBio B1 Paper 2 (resolved): Proal et al. 2025 — Targeting the SARS-CoV-2 Reservoir in Long COVID

### Citation Key
`Proal2025Reservoir`

### Bibliographic Details
- Journal: Lancet Infectious Diseases, 25(5):e294–e306
- DOI: 10.1016/S1473-3099(24)00769-2
- PMID: 39947217
- Year: 2025
- Type: Expert consensus/position review
- Authors include: VanElzakker, Proal, Iwasaki, Putrino, Deeks, Peluso (core ME/CFS researchers)

### Summary
Multi-author Lancet ID position paper establishing the trial-design framework for treating
Long COVID as a viral reservoir disease. Synthesises evidence for SARS-CoV-2 persistence
months to years post-infection. Notes that existing antivirals (nirmatrelvir/ritonavir, 15
days) showed no efficacy in completed RCT, likely because stable reservoirs, not active
replication, are the therapeutic target. Draws on HIV long-term non-progressors and
hepatitis C cure models to propose: reservoir biomarker-stratified participant selection,
extended treatment duration, combination antiviral approaches, and standardised reservoir
endpoints.

### Certainty Assessment
- Study quality: High (Lancet Infectious Diseases; international expert consensus)
- Certainty: 0.75 (framework paper; primary trial data awaited)
- Replication: Synthesises independently replicated viral persistence findings

### Recommended Chapter Placement

**Primary:** ch07-immune-dysfunction.tex
Section: Viral Reactivation and Persistence subsection — after `ach:peluso2024-viral-persistence`

**Environment type:** `achievement`

**Suggested LaTeX:**
```latex
\begin{achievement}[International Consensus Framework for Targeting SARS-CoV-2 Reservoir in Long COVID]
\label{ach:proal2025-reservoir-framework}
A multi-institutional Lancet Infectious Diseases position paper~\cite{Proal2025Reservoir}
by leading long COVID and ME/CFS researchers established the conceptual and trial-design
framework for treating long COVID as a viral reservoir disease. The authors synthesised
evidence that SARS-CoV-2 persists for months to years in tissue reservoirs in affected
individuals, propose that this persistence drives ongoing immune activation and symptoms,
and identify critical design considerations for reservoir-targeting trials: mechanism of
action of candidate therapeutics, participant selection by reservoir biomarker burden,
treatment duration, standardised measurables, and potential combination approaches.
The failure of a 15-day nirmatrelvir/ritonavir RCT to improve symptoms is reinterpreted
as evidence that active replication is not the primary target---stable viral reservoirs
require a different therapeutic strategy, drawing lessons from HIV and hepatitis~C
functional cure models.
Study: (consensus review, Lancet Infectious Diseases 2025, certainty: 0.75).
\end{achievement}
```

**Secondary:** Part III treatment chapters — as the methodological anchor for ME/CFS antiviral trial discussions.

### Key Points to Convey
1. Existing short-course antivirals failed — stable reservoir, not active replication, is the target
2. Participant selection must be stratified by reservoir biomarker burden
3. Combination approaches (analogous to HIV HAART) are likely needed
4. Authored by the same researchers driving ME/CFS biomarker work — this is the field's consensus

---

## PolyBio B1 Paper 3 (resolved): Autaa et al. 2025 — Aging and IL-18 Limit CD8+ T Cell Induction

### Citation Key
`Autaa2025CD8Aging`

### Bibliographic Details
- Journal: JCI Insight, 10(4):e180867
- DOI: 10.1172/jci.insight.180867
- PMID: 39847442 / PMCID: PMC11949069
- Year: 2025

### Summary
Multi-centre French-Japanese cohort study (pandemic initial wave) demonstrating that
CD8+ T cell induction is specifically impaired with aging in severe COVID-19, while
antibody responses remain intact. IL-18, elevated in severe disease, is identified as a
direct suppressor of both new and recall antigen-specific CD8+ T cell responses. The
contraction of naive lymphocyte pool with aging is the structural basis.

### Certainty Assessment
- Study quality: High (JCI Insight; multi-centre; two independent national cohorts)
- Certainty: 0.70
- Limitation: Acute COVID cohort — long COVID/ME/CFS not directly examined

### Recommended Chapter Placement

**Primary:** ch07-immune-dysfunction.tex
Section: T Cell Dysfunction or CD8 exhaustion subsection

**Environment type:** inline supporting reference or `observation`

**Suggested LaTeX:**
```latex
Aging-associated contraction of the naive lymphocyte pool specifically impairs
SARS-CoV-2-specific CD8$^+$ T cell induction in severe COVID-19, while antibody
responses remain intact~\cite{Autaa2025CD8Aging}. Critically, IL-18---elevated in
severe disease and implicated in the NETosis--NLRP3 loop in long COVID---was
identified as a direct suppressor of antigen-specific CD8$^+$ T cell induction and
memory recall. This IL-18-mediated CD8 suppression could impair viral reservoir
clearance in older post-COVID ME/CFS patients, linking immunosenescence to the
failure to eliminate SARS-CoV-2 tissue persistence.
```

### Key Points to Convey
1. CD8 (not antibody) responses specifically impaired with age — relevant to viral clearance failure
2. IL-18 connects to NETosis/NLRP3 loop already in ch07 — cross-reference explicitly
3. Mechanism for why older patients are more susceptible to persistent long COVID
4. Certainty 0.70 — high quality but not directly tested in ME/CFS population

---

## C1 Resolved: Wu et al. 2024 — BNT162b2 Effectiveness Against Long COVID in Children

### Citation Key
`Wu2024LongCovidChildren`

### Bibliographic Details
- Journal: EClinicalMedicine (Lancet), 79:102962
- DOI: 10.1016/j.eclinm.2024.102962
- PMID: 39720603 / PMCID: PMC11667630
- Year: 2024
- Study: n>385,000 children and adolescents; 13 US hospitals; RECOVER consortium

### Summary
Large real-world EHR study assessing BNT162b2 effectiveness against long COVID in children
(5-11y) and adolescents (12-20y) during Delta and Omicron waves. Causal mediation analysis
showed vaccine protection operates primarily through preventing acute infection, not by
directly modifying post-infection immune trajectory.
- Delta: 95.4% effectiveness in adolescents
- Omicron: 75.1% (adolescents), 60.2% (children)

### Relevance Assessment
RELEVANT to ME/CFS documentation as follows:
1. Establishes that long COVID (post-viral ME/CFS trigger) is substantially preventable
   in children by preventing the antecedent infection
2. The mediation finding — vaccine works via infection prevention, not post-infection immune
   modification — supports the model that the acute infection event, not pre-existing
   susceptibility alone, initiates the post-viral cascade
3. Relevant to pediatric ME/CFS sections and to causal modelling of onset

### Certainty Assessment
- Study quality: High (EClinicalMedicine/Lancet; n>385k; multi-site; causal mediation)
- Certainty: 0.80

### Recommended Chapter Placement

**Primary:** pediatric ME/CFS chapter (ch14 if it exists) or the pediatric section of
whichever chapter covers onset epidemiology

**Environment type:** `achievement`

**Suggested LaTeX:**
```latex
\begin{achievement}[Vaccination Substantially Reduces Long COVID Incidence in Children]
\label{ach:wu2024-bnt162b2-long-covid}
A real-world effectiveness study across $>385{,}000$ children and adolescents in
13 US hospital systems~\cite{Wu2024LongCovidChildren} found that BNT162b2 reduced
long COVID risk by 95.4\% in adolescents during Delta and by 60--75\% during Omicron.
Causal mediation analysis demonstrated that this protection operates primarily through
infection prevention rather than post-infection immune modification, confirming that
long COVID---and by extension post-COVID ME/CFS---arises as a direct consequence of
the acute infection process itself. The finding implies that modifying the post-infection
immune trajectory (e.g., with antivirals or immunomodulators after infection) faces a
fundamentally harder challenge than preventing the initiating event.
Study: (EHR cohort, $n>385{,}000$, EClinicalMedicine 2024, certainty: 0.80).
\end{achievement}
```

**Secondary:** Introduction or epidemiology section — as evidence for the viral-trigger model of ME/CFS onset.

### Key Points to Convey
1. Vaccine works primarily by preventing infection, not by immune modification after infection
2. Supports the model that the acute infection event initiates the post-viral cascade
3. Large sample with causal mediation analysis — methodologically strongest vaccine-LC study in children

---

## B4 Resolved: Beentjes et al. 2025 — Replicated Blood Biomarkers for ME, Activity-Independent

### Citation Key
`Beentjes2025Biomarkers`

### Bibliographic Details
- Journal: EMBO Molecular Medicine, 17(7):1868–1891
- DOI: 10.1038/s44321-025-00258-8
- PMID: 40537675 / PMCID: PMC12254397
- Year: 2025
- Study: UK Biobank n=1,455 ME/CFS cases, n=131,303 controls; replication in All-of-Us cohort
- Authors: Beentjes, Miralles Meharon, Kaczmarczyk, Ponting et al. (University of Edinburgh)

### Summary
Largest ME/CFS blood biomarker study to date using UK Biobank. Hundreds of blood traits
significantly different between ME/CFS and controls; 116 replicated in both sexes.
Mediation analysis shows differences are NOT explained by reduced physical activity
(only 1 of 3,237 traits mediated by activity). PEM subgroup shows more pronounced
differences. 9/14 traits replicated in independent All-of-Us cohort.
Trait pattern: chronic inflammation, insulin resistance, liver disease.

### Certainty Assessment
- Study quality: High (EMBO Molecular Medicine; largest ME sample; two-cohort replication)
- Certainty: 0.75

### Recommended Chapter Placement

**Primary:** ch07-immune-dysfunction.tex or ch06-energy-metabolism.tex
Section: biomarkers or evidence base section

**Environment type:** `achievement`

**Suggested LaTeX:**
```latex
\begin{achievement}[Hundreds of Blood Biomarkers Distinguish ME/CFS, Independent of Inactivity]
\label{ach:beentjes2025-biomarkers}
Using UK Biobank data ($n=1{,}455$ ME/CFS cases, $n=131{,}303$ controls) and mediation
analysis, Beentjes et al.~\cite{Beentjes2025Biomarkers} identified hundreds of blood-based
traits significantly different between ME/CFS patients and controls, including 116 traits
replicated in both female and male cohorts. The pattern indicated chronic inflammation,
insulin resistance, and liver disease. Critically, mediation analysis showed ME/CFS status
had a significant direct effect on 290 traits but affected only 1 of 3,237 traits via an
activity-duration mediator---demonstrating that these biomarker differences are not
explained by reduced physical activity. Nine of fourteen traits were independently replicated
in the All-of-Us cohort, and post-exertional malaise correlated with more pronounced
biomarker alterations.
Study: (UK Biobank + All-of-Us replication, $n=131{,}758$ total,
EMBO Molecular Medicine 2025, certainty: 0.75).
\end{achievement}
```

### Key Points to Convey
1. Activity-independence finding is critical — directly refutes deconditioning hypothesis
2. PEM correlation provides a biological anchor for PEM as a distinct measurable phenomenon
3. Chronic inflammation + insulin resistance aligns with metabolic dysfunction hypotheses
4. Largest ME/CFS biomarker study to date; cite as a foundational reference

---

## Items Remaining Unresolvable

| Item | Status | Reason |
|------|--------|--------|
| A12 (CJC 2024, pii S0828-282X(24)00281-2) | UNRESOLVABLE | All access attempts return 403; not indexed in PubMed under searchable terms; institutional journal access required |
| A21 (preprints.org/202602.1993) | UNRESOLVABLE | Site returns 403 for direct fetch; no identifying title/author found via web search |
| A15 (ScienceOpen PDF 28cd6ccd) | UNRESOLVABLE | 404 persists; document ID does not resolve to identifiable paper via PMC or Google Scholar |

**A12 note:** The CJC 2024 paper sits adjacent to a 2024 CJC myocarditis review
(pii S0828-282X(24)00277-0) and was originally flagged as likely a cardiovascular/autonomic
Long COVID paper. Probable target chapter: ch10-cardiovascular.tex. Requires institutional
library access to resolve. Flag for future session.

---

## Papers Already in Bib (Not Duplicated This Session)

| Key | Paper | Confirmed |
|-----|-------|-----------|
| `Che2025` | Heightened innate immunity in ME/CFS (npj Metabolic Health and Disease) | Yes |
| `Hunter2025` | EpiSwitch blood-based biomarkers for ME/CFS (J Translational Medicine) | Yes |
| `Syed2025` | Mitochondrial dysfunction in ME/CFS (Physiology) | Yes |

---

## Summary: Phase 2 New BibTeX Entries

| BibKey | Paper | Primary Chapter | Certainty |
|--------|-------|----------------|-----------|
| `Omdal2026LongCovidNeuroinflammation` | Null circulating neuroinflammation markers in long COVID | ch08 | 0.55 |
| `Frank2024S1Priming` | S1 spike subunit primes brain neuroinflammatory responses (rat model) | ch08 | 0.55 |
| `Proal2025Reservoir` | Targeting SARS-CoV-2 reservoir in long COVID (Lancet ID consensus) | ch07 | 0.75 |
| `Autaa2025CD8Aging` | Aging + IL-18 suppress CD8+ T cell induction in severe COVID-19 | ch07 | 0.70 |
| `Wu2024LongCovidChildren` | BNT162b2 reduces long COVID in children (n>385k, RECOVER) | pediatric | 0.80 |
| `Beentjes2025Biomarkers` | Replicated ME/CFS blood biomarkers, activity-independent (n=131k) | ch07/ch06 | 0.75 |

---

## Hypothesis Registry Updates Required

When chapter-integrator processes `Frank2024S1Priming`, add to
`contents/part4-research/hypothesis-registry.tex`:

- Label: `hyp:frank2024-s1-priming`
- Title: Spike Protein Primes Brain Innate Immunity, Lowering the Neuroinflammatory Threshold
- Type: `hypothesis`
- Certainty: 0.55
- Chapter: ch08
- Falsifiable: Yes — CSF neuroinflammation markers elevated specifically after intercurrent infections
- Testable prediction: Documented in hypothesis body

---

## Priority Order for chapter-integrator

1. `Beentjes2025Biomarkers` — landmark activity-independence biomarker finding; ch07 or ch06
2. `Proal2025Reservoir` — Lancet consensus; ch07 viral persistence section after Peluso2024
3. `Frank2024S1Priming` — new hypothesis requiring hypothesis-registry entry; ch08
4. `Omdal2026LongCovidNeuroinflammation` — balancing null result; ch08 neuroinflammation
5. `Autaa2025CD8Aging` — supporting IL-18/CD8 cross-reference; ch07 T cell section
6. `Wu2024LongCovidChildren` — pediatric or epidemiology section
