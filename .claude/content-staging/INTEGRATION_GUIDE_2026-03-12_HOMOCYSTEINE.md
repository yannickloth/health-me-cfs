# Integration Guide: Homocysteine, Methylation Cycle, and Mitochondrial Dysfunction in ME/CFS

**Created:** 2026-03-12
**Agent:** literature-integrator
**Topic:** Homocysteine → mitochondrial dysfunction → fatigue pathway; MTHFR variants; B-vitamin interventions

---

## Summary of Evidence Found

Six papers were researched and organized. The evidence forms a mechanistic chain, but the direct ME/CFS-specific clinical evidence is sparse and low quality. Integration must use appropriate environments (hypothesis, speculation, observation) and must NOT overstate certainty.

### Chain of Evidence (weakest to strongest links)

1. **MTHFR variants cause homocysteine elevation** (Zarembska 2023) — HIGH certainty for the biochemistry; NOT established specifically in ME/CFS cohorts
2. **Elevated homocysteine disrupts mitochondrial ETC complexes, increases ROS, depletes ATP** (Kaplan 2020) — MEDIUM certainty; well-replicated in cardiovascular/neurological models; NOT in ME/CFS specifically
3. **ME/CFS patients have elevated CSF homocysteine correlating with fatigue** (Regland 1997) — LOW certainty; n=12, no control group, combined FM/CFS, single group
4. **B12 + folate (MTHFR-guided) improves ME/FM symptoms** (Regland 2015) — LOW-MEDIUM certainty; n=38, no placebo, no independent replication
5. **Intranasal B12 improves physical function in 67% of ME/CFS patients** (van Campen 2019) — LOW-MEDIUM certainty; n=51, open trial
6. **Viral illness depletes methyl groups via dual mechanism, connecting to ME/CFS** (McCaddon 2021) — LOW certainty (hypothesis paper); testable but unconfirmed

---

## BibTeX Entries for references.bib

Add the following entries to `references.bib`. Verify none are already present before adding.

```bibtex
@article{Kaplan2020,
  author = {Kaplan, Peter and Tatarkova, Zuzana and Kmetova Sivonova, Monika and Racay, Peter and Lehotsky, Jan},
  title = {Homocysteine and Mitochondria in Cardiovascular and Cerebrovascular Systems},
  journal = {International Journal of Molecular Sciences},
  year = {2020},
  volume = {21},
  number = {20},
  pages = {7698},
  doi = {10.3390/ijms21207698},
  pmid = {33080955},
  url = {https://pmc.ncbi.nlm.nih.gov/articles/PMC7589705/},
  keywords = {homocysteine, mitochondria, ETC, oxidative stress, ROS, cardiovascular, neurodegeneration}
}

@article{Regland1997,
  author = {Regland, Bjorn and Andersson, M and Abrahamsson, L and Bagby, J and Dyrehag, Lars Erik and Gottfries, Carl-Gerhard},
  title = {Increased concentrations of homocysteine in the cerebrospinal fluid in patients with fibromyalgia and chronic fatigue syndrome},
  journal = {Scandinavian Journal of Rheumatology},
  year = {1997},
  volume = {26},
  number = {4},
  pages = {301--307},
  doi = {10.3109/03009749709105320},
  pmid = {9310111},
  keywords = {ME/CFS, fibromyalgia, homocysteine, CSF, B12, fatigue, biomarker}
}

@article{Regland2015,
  author = {Regland, Bjorn and Forsmark, Sara and Halaouate, Lena and Matousek, Michael and Peilot, Birgitta and Zachrisson, Olof and Gottfries, Carl-Gerhard},
  title = {Response to Vitamin {B12} and Folic Acid in Myalgic Encephalomyelitis and Fibromyalgia},
  journal = {PLoS ONE},
  year = {2015},
  volume = {10},
  number = {4},
  pages = {e0124648},
  doi = {10.1371/journal.pone.0124648},
  pmid = {25902009},
  url = {https://pmc.ncbi.nlm.nih.gov/articles/PMC4406448/},
  keywords = {ME/CFS, fibromyalgia, B12, folate, MTHFR, methylcobalamin, treatment}
}

@article{vanCampen2019,
  author = {van Campen, C (Linda) MC and Riepma, Klaas and Visser, Frans C},
  title = {Open Trial of Vitamin {B12} Nasal Drops in Adults With Myalgic Encephalomyelitis/{Chronic Fatigue Syndrome}: Comparison of Responders and Non-Responders},
  journal = {Frontiers in Pharmacology},
  year = {2019},
  volume = {10},
  pages = {1102},
  doi = {10.3389/fphar.2019.01102},
  pmid = {31616305},
  url = {https://pmc.ncbi.nlm.nih.gov/articles/PMC6764214/},
  keywords = {ME/CFS, vitamin B12, intranasal, hydroxocobalamin, treatment, open trial}
}

@article{Zarembska2023,
  author = {Zarembska, Emilia and {\'S}lusarczyk, Klaudia and Wrzosek, Ma{\l}gorzata},
  title = {The Implication of a Polymorphism in the Methylenetetrahydrofolate Reductase Gene in Homocysteine Metabolism and Related Civilisation Diseases},
  journal = {International Journal of Molecular Sciences},
  year = {2023},
  volume = {25},
  number = {1},
  pages = {193},
  doi = {10.3390/ijms25010193},
  pmid = {38203363},
  url = {https://pmc.ncbi.nlm.nih.gov/articles/PMC10779094/},
  keywords = {MTHFR, C677T, homocysteine, methylation, one-carbon metabolism, polymorphism}
}

@article{McCaddon2021,
  author = {McCaddon, Andrew and Regland, Bjorn},
  title = {{COVID}-19: {A} methyl-group assault?},
  journal = {Medical Hypotheses},
  year = {2021},
  volume = {149},
  pages = {110543},
  doi = {10.1016/j.mehy.2021.110543},
  pmid = {33657459},
  url = {https://pmc.ncbi.nlm.nih.gov/articles/PMC7890339/},
  keywords = {COVID-19, long-COVID, ME/CFS, methylation, methyl group, homocysteine, B12, hypothesis}
}
```

---

## Appendix H Entry

Add the following block to `contents/appendices/appendix-h-annotated-bibliography.tex` in the
metabolic pathophysiology section (or create a new "Methylation and Homocysteine" subsection).

```latex
\subsection*{Methylation Cycle and Homocysteine in ME/CFS}

\bibentry{Kaplan2020}

\paragraph{Key Findings:}
Comprehensive review documenting that hyperhomocysteinemia (HHcy) inhibits mitochondrial electron
transport chain complexes I through V in cardiac and neural tissue, generates reactive oxygen species
through dual routes (homocysteine auto-oxidation and ETC impairment), depletes antioxidant defenses
(mitochondrial SOD, catalase), and disrupts mitochondrial dynamics via DRP1/Mfn2/Opa1 imbalance.
Brain-specific complex I inhibition is persistent. N-homocysteinylation of cytochrome~c directly
disrupts electron transport.

\paragraph{Relevance:}
Provides biochemical mechanism linking elevated homocysteine to the mitochondrial dysfunction
documented in ME/CFS. The ETC complex inhibition and ROS generation pathways overlap with
independently documented ME/CFS mitochondrial abnormalities. NOTE: this review covers
cardiovascular and neurological models; direct ME/CFS patient data are absent.

\paragraph{Certainty Assessment:}
\begin{itemize}
  \item \textbf{Quality:} Medium (comprehensive narrative review of multiple independent studies)
  \item \textbf{Sample:} N/A (review of animal and in vitro models)
  \item \textbf{Replication:} Individual mechanisms replicated across independent groups in
    cardiovascular/neurological literature
  \item \textbf{Limitations:} No ME/CFS patient data; predominantly animal and in vitro;
    dose-response quantification inconsistent across studies
\end{itemize}

\bigskip

\bibentry{Regland1997}

\paragraph{Key Findings:}
All 12 female FM/CFS patients showed elevated cerebrospinal fluid (CSF) homocysteine; serum
homocysteine was not elevated. Significant positive correlation between CSF homocysteine and
fatiguability (CPRS). CSF vitamin B12 was generally low; CSF B12 correlated with mental fatigue
severity. Authors conclude that CNS-localized B12 deficiency impairs homocysteine remethylation.

\paragraph{Relevance:}
Foundational study establishing a CNS-compartment-specific homocysteine elevation in CFS, and
directly correlating it with fatigue severity. Motivates the hypothesis that standard serum
homocysteine testing may miss CNS-localized methylation failure in ME/CFS patients.

\paragraph{Certainty Assessment:}
\begin{itemize}
  \item \textbf{Quality:} Low-Medium (clinical biochemical study with psychopathological rating)
  \item \textbf{Sample:} n=12 (very small)
  \item \textbf{Replication:} Not independently replicated; same group provided supportive but
    not independent follow-up
  \item \textbf{Limitations:} Very small sample; combined FM+CFS cohort; all female; no matched
    healthy control group; pre-ICC/CCC diagnostic criteria; single academic group
\end{itemize}

\bigskip

\bibentry{Regland2015}

\paragraph{Key Findings:}
Cross-sectional survey of 38 ME/FM patients receiving B12 injections. Good responders (n=15,
Fibro Fatigue score $\leq$24) used more frequent injections, higher doses, longer duration, and
higher folic acid doses matched to MTHFR genotype compared to mild responders (n=23). Methylcobalamin
appeared more effective than hydroxycobalamin. Dose-response relationship observed. Daily analgesic
use was a strong negative predictor of good response.

\paragraph{Relevance:}
Provides clinical evidence that MTHFR-guided B12/folate supplementation at therapeutic doses may
improve ME/FM outcomes. Establishes that methylcobalamin form and MTHFR genotyping may be clinically
relevant. Cannot establish causality given observational design.

\paragraph{Certainty Assessment:}
\begin{itemize}
  \item \textbf{Quality:} Low-Medium (cross-sectional observational study, no placebo control)
  \item \textbf{Sample:} n=38
  \item \textbf{Replication:} Not independently replicated by separate group; RCT absent
  \item \textbf{Limitations:} Combined ME+FM cohort; open-label design; same research group as
    Regland 1997; potential confounding by analgesic use and disease severity
\end{itemize}

\bigskip

\bibentry{vanCampen2019}

\paragraph{Key Findings:}
Open trial of intranasal hydroxocobalamin (B12) in 51 ME/CFS adults over 3 months. Serum B12 rose
from median 328 to 973~pmol/L. In 34/51 responders (67\%), step count (actigraphy), RAND-36
physical activity, and B12 levels all increased significantly. Non-responders (33\%) showed no
change. Authors call for placebo-controlled RCT.

\paragraph{Relevance:}
Supports biological plausibility of B12 supplementation in ME/CFS via an objective functional
outcome (step count). Intranasal route achieves CNS-accessible delivery relevant to the Regland 1997
hypothesis of CNS B12 deficiency. The 33\% non-responder rate suggests patient stratification is
needed.

\paragraph{Certainty Assessment:}
\begin{itemize}
  \item \textbf{Quality:} Low-Medium (open-label pilot trial, no placebo control)
  \item \textbf{Sample:} n=51
  \item \textbf{Replication:} Not replicated; pilot study only
  \item \textbf{Limitations:} No blinding; single center; potential placebo effect;
    seasonal confound for step count over 3 months
\end{itemize}

\bigskip

\bibentry{Zarembska2023}

\paragraph{Key Findings:}
Review documents that MTHFR C677T polymorphism reduces enzyme activity to 67\% (heterozygotes) and
25\% (TT homozygotes). Reduced activity impairs 5-methyltetrahydrofolate production, directly
impairing homocysteine remethylation. Elevated homocysteine from MTHFR dysfunction increases
oxidative stress. One-carbon metabolism disruptions affect both nuclear and mitochondrial DNA
methylation.

\paragraph{Relevance:}
Provides mechanistic foundation for why a substantial fraction of ME/CFS patients may be
predisposed to homocysteine elevation via MTHFR polymorphisms, even with adequate dietary folate.
The mitochondrial DNA methylation implications provide a direct mechanistic bridge from MTHFR
deficiency to OXPHOS gene expression alteration.

\paragraph{Certainty Assessment:}
\begin{itemize}
  \item \textbf{Quality:} Medium-High (comprehensive narrative review of replicated biochemistry)
  \item \textbf{Sample:} N/A (review)
  \item \textbf{Replication:} MTHFR-HHcy association is among the most replicated findings in
    human genetics
  \item \textbf{Limitations:} Not ME/CFS-specific; MTHFR prevalence in ME/CFS relative to
    general population not established; narrative review subject to selection bias
\end{itemize}

\bigskip

\bibentry{McCaddon2021}

\paragraph{Key Findings:}
Hypothesis paper proposing that SARS-CoV-2 simultaneously depletes methyl groups (by consuming
them for viral RNA modification via m6A and capping) and impairs their resupply (by oxidative
inactivation of methionine synthase). Authors predict this elevates homocysteine and depletes SAM.
Long-COVID fatigue (87\%) and memory complaints (78\%) overlap with pernicious anemia at similar
rates, suggesting a shared methylation-deficiency phenomenology. Cites Regland 1997 to connect
ME/CFS to the same pathway.

\paragraph{Relevance:}
Provides a mechanistic hypothesis for how viral triggers (including those causing post-viral
fatigue/ME/CFS) could initiate methylation cycle depletion. Relevant to post-viral ME/CFS onset
pathophysiology. Requires empirical confirmation.

\paragraph{Certainty Assessment:}
\begin{itemize}
  \item \textbf{Quality:} Low (hypothesis paper; Medical Hypotheses journal; no primary data)
  \item \textbf{Sample:} N/A
  \item \textbf{Replication:} Mechanism unconfirmed; testable predictions not yet validated
  \item \textbf{Limitations:} Speculative by design; Medical Hypotheses does not apply standard
    empirical peer review; requires in vivo confirmation
\end{itemize}
```

---

## Recommended Chapter Integrations

### Primary Target: ch06-energy-metabolism.tex

**File:** `contents/part2-pathophysiology/ch06-energy-metabolism.tex`

#### Integration 1: Homocysteine as an Upstream Cause of Mitochondrial Dysfunction

**Section hint:** Subsection "Mechanisms of Mitochondrial Damage" (~line 176)
OR Subsection "Amino Acid Metabolism" (~line 734)
**Environment:** `hypothesis`
**Rationale:** The homocysteine-ETC mechanism is plausible and mechanistically supported in other
disease contexts, but has not been demonstrated in ME/CFS patient samples specifically. This is
a hypothesis, not an established finding.

**Suggested LaTeX:**

```latex
\begin{hypothesis}[Homocysteine-Mediated ETC Disruption as a Contributing Mechanism]
\label{hyp:homocysteine-etc-disruption}
Elevated homocysteine --- whether arising from methylenetetrahydrofolate reductase (MTHFR) polymorphisms,
B12 or folate deficiency, or post-viral methylation depletion --- may contribute to the mitochondrial
dysfunction documented in ME/CFS through direct inhibition of electron transport chain (ETC) complexes.

Mechanistic evidence from cardiovascular and neurological models documents that
hyperhomocysteinemia (HHcy) reduces activities of ETC complexes~I--V in cardiac and neural tissue,
generates reactive oxygen species (ROS) through both direct auto-oxidation and secondary ETC impairment,
and depletes mitochondrial antioxidant defenses (superoxide dismutase, catalase)~\cite{Kaplan2020}.
Additionally, the reactive metabolite homocysteine thiolactone causes N-homocysteinylation of
cytochrome~c, directly disrupting electron transfer~\cite{Kaplan2020}.

Clinically, Regland et al.\ found that all~12 FM/CFS patients examined showed elevated cerebrospinal
fluid (CSF) homocysteine (with normal serum levels), and that CSF homocysteine correlated positively
with fatiguability severity~\cite{Regland1997}. This CNS-compartment-specific elevation suggests
that routine serum homocysteine testing may underdetect a metabolically relevant abnormality in a
subset of ME/CFS patients.

A separate genetic predisposition pathway involves MTHFR C677T polymorphism, which reduces enzyme
activity to 25--67\% of normal, impairing remethylation of homocysteine to methionine~\cite{Zarembska2023}.
Disrupted one-carbon metabolism from MTHFR dysfunction also affects mitochondrial DNA methylation,
with downstream consequences for OXPHOS gene expression~\cite{Zarembska2023}.

\textbf{Testable predictions:} (1)~ME/CFS patients with MTHFR TT genotype should show higher CSF
homocysteine than CT or CC genotype patients. (2)~CSF homocysteine levels should correlate with
ETC complex activity in PBMCs in the same patients. (3)~MTHFR-guided B12/folate supplementation
should preferentially reduce fatigue in ME/CFS patients with confirmed elevated CSF homocysteine.

\textbf{Limitations:} The ETC inhibition data are from animal and in vitro cardiovascular/neurological
models, not from ME/CFS patients. The Regland 1997 CSF study has n=12 and no control group. The
proposed MTHFR--HHcy--ETC--fatigue causal chain, while mechanistically coherent, has not been
tested as an integrated pathway in ME/CFS.

(Certainty: Low; animal/in vitro mechanism + single small clinical study; not yet independently replicated.)
\end{hypothesis}
```

#### Integration 2: Short Observation on CSF vs Serum Homocysteine Discordance

**Section hint:** Subsection "Metabolomic Biomarkers" in ch20, OR within the existing "Amino Acid Metabolism" subsection of ch06 (~line 734)
**Environment:** `observation`

**Suggested LaTeX:**

```latex
\begin{observation}[CSF--Serum Homocysteine Discordance in FM/CFS]
\label{obs:csf-homocysteine-discordance}
In a small clinical study (n=12) of female patients with comorbid fibromyalgia and chronic fatigue
syndrome, Regland et al.\ found that all participants had elevated cerebrospinal fluid (CSF)
homocysteine while serum homocysteine levels were within normal ranges~\cite{Regland1997}. CSF
homocysteine correlated positively with fatiguability scores, and CSF vitamin B12 correlated
inversely with mental fatigue severity. The authors interpreted this as evidence of a CNS-localized
vitamin B12 deficiency impairing homocysteine remethylation in the central nervous system.

This finding, if replicated, would imply that standard serum homocysteine measurements are
insufficient to detect a potentially important metabolic abnormality in ME/CFS patients with
prominent fatigue and cognitive symptoms.

(Certainty: Low; n=12, no control group, combined FM+CFS cohort, single research group, 1997 pre-ICC diagnostic criteria. Requires independent replication in larger ME/CFS-specific cohorts.)
\end{observation}
```

---

### Secondary Target: ch12-genetics-epigenetics.tex

**File:** `contents/part2-pathophysiology/ch12-genetics-epigenetics.tex`
**Section hint:** Subsection "Genetic Variants and Candidate Gene Studies" (~line 49)
**Environment:** `observation` or inline paragraph
**Rationale:** MTHFR C677T is one of the most replicated human genetic variants; its connection
to homocysteine and methylation is established biochemistry. In ME/CFS context, the connection is
currently inferential.

**Suggested LaTeX:**

```latex
\begin{observation}[MTHFR C677T as a Candidate Predisposing Variant]
\label{obs:mthfr-c677t-candidate}
The C677T polymorphism (rs1801133) in the methylenetetrahydrofolate reductase (\textit{MTHFR})
gene is among the most common functional single-nucleotide polymorphisms in the human genome and
reduces MTHFR enzyme activity to approximately 67\% in heterozygotes and 25\% in TT
homozygotes~\cite{Zarembska2023}. This impairs conversion of folate to 5-methyltetrahydrofolate,
the methyl donor required for homocysteine remethylation to methionine. Consequently, C677T
carriers are predisposed to elevated homocysteine under conditions of folate or B12 insufficiency.

Disrupted one-carbon metabolism from MTHFR dysfunction affects not only cytosolic methylation but
also mitochondrial DNA methylation, with potential downstream effects on oxidative phosphorylation
(OXPHOS) gene expression~\cite{Zarembska2023}. A case report documents co-occurrence of ME/CFS,
postural tachycardia syndrome (POTS), and narcolepsy with compound heterozygous MTHFR mutations
and markedly elevated serum homocysteine (86~$\mu$mol/L)~\cite{Liao2021}.

Whether MTHFR C677T is overrepresented in ME/CFS relative to the general population has not been
established by appropriately powered genetic association studies. The Regland 2015 study found that
folate dosing matched to MTHFR genotype was associated with better B12/folate treatment response
in ME/FM patients, suggesting pharmacogenomic relevance~\cite{Regland2015}.

(Note: The Liao 2021 citation uses the key \texttt{Liao2021} which refers to the MTHFR case report;
add this if integrating that paper separately.)
\end{observation}
```

**Note for chapter-integrator:** The case report by Liao et al.\ (PMID 33788782, doi 10.1097/CM9.0000000000001387)
was identified but rated low certainty (single case). If you wish to include it, add this BibTeX entry:

```bibtex
@article{Liao2021,
  author = {Liao, Y and Qi, JG and Yan, H and Zhang, QY and Ji, TY and Chang, XZ and Yang, HP and Jin, HF and Du, JB},
  title = {Comorbidity of chronic fatigue syndrome, postural tachycardia syndrome, and narcolepsy with {5,10-methylenetetrahydrofolate} reductase ({MTHFR}) mutation in an adolescent: a case report},
  journal = {Chinese Medical Journal},
  year = {2021},
  volume = {134},
  number = {12},
  pages = {1495--1497},
  doi = {10.1097/CM9.0000000000001387},
  pmid = {33788782},
  keywords = {ME/CFS, MTHFR, POTS, narcolepsy, homocysteine, case report}
}
```

---

### Secondary Target: ch16-supplements-nutraceuticals.tex

**File:** `contents/part3-treatment/ch16-supplements-nutraceuticals.tex`
**Section hints:**
- "Folate (B9)" (~line 667): MTHFR-guided dosing context
- "Cobalamin (B12)" (~line 682): Methylcobalamin preference, delivery route, dose-frequency

**IMPORTANT NOTE for chapter-integrator:** Per the hypothesis-vs-recommendation distinction
(MEMORY.md): the Regland 2015 and van Campen 2019 studies provide hypothesis-consistent signals
but NOT RCT-level evidence. Any integration here must use the `warning` or `limitation` environment
to flag that these are low-certainty observational findings, NOT clinical treatment guidelines.

**Suggested LaTeX for B12 subsection extension:**

```latex
\begin{warning}[B12 Supplementation Evidence Base in ME/CFS: Low Certainty]
\label{warn:b12-evidence-quality}
Clinical evidence for B12 supplementation in ME/CFS comes from small open-label studies only.
Regland et al.\ found that among 38 ME/FM patients receiving B12 injections, good responders
used higher doses and more frequent injections, and had folic acid doses matched to their MTHFR
genotype~\cite{Regland2015}. Van Campen et al.\ found that intranasal hydroxocobalamin improved
physical activity in 34/51 ME/CFS patients (67\%) over 3 months~\cite{vanCampen2019}.

Neither study included a placebo control group. Placebo-controlled RCT evidence is absent.
These findings should inform patient-physician discussions and hypothesis-driven trials, but
cannot be used to establish B12/folate supplementation as an evidence-based treatment for
ME/CFS. Patient response appears heterogeneous (33\% non-responders in van Campen 2019),
suggesting that subgroup stratification (e.g., by MTHFR genotype, baseline CSF homocysteine)
is needed before this approach can be recommended broadly.
\end{warning}
```

**Suggested LaTeX for Folate subsection addition:**

```latex
The MTHFR C677T polymorphism (reducing enzyme activity to 25--67\% of normal~\cite{Zarembska2023})
impairs conversion of folic acid to the active 5-methyltetrahydrofolate form. In ME/FM patients,
folate doses matched to MTHFR genotype were associated with better B12/folate treatment response
compared to non-genotype-guided dosing~\cite{Regland2015}. For patients with confirmed MTHFR
variants, supplementation with the pre-reduced form (methylfolate, 5-MTHF) bypasses the
enzymatic bottleneck, though RCT evidence for this approach in ME/CFS is absent.
```

---

### Secondary Target: ch20-biomarker-research.tex

**File:** `contents/part4-research/ch20-biomarker-research.tex`
**Section hint:** Subsection "CSF Findings" (~line 344) OR Subsection "Metabolomic Biomarkers" (~line 190)
**Environment:** `observation` or inline research context

**Suggested LaTeX:**

```latex
\paragraph{Cerebrospinal Fluid Homocysteine}
Regland et al.\ reported elevated CSF homocysteine in all 12 FM/CFS patients examined, with
significant correlation to fatiguability, while serum levels were normal~\cite{Regland1997}.
This CSF--serum discordance, if confirmed in larger ME/CFS-specific cohorts, would make CSF
homocysteine a candidate CNS-compartment biomarker for a subset of patients with prominent
neurocognitive and fatigue symptoms. The systematic review by Maksoud et al.\ (2023) of 101
ME/CFS biomarker studies did not identify homocysteine among biomarker candidates, reflecting
the absence of larger validation studies rather than a confirmed negative finding~\cite{Maksoud2023}.

A future biomarker validation study could examine: serum vs CSF homocysteine, MTHFR genotype,
serum and CSF B12, and clinical fatigue severity scores simultaneously across ME/CFS, long-COVID,
and healthy control populations.
```

**Note:** The Maksoud 2023 systematic review (PMID 37226227, doi 10.1186/s12916-023-02893-9) is
referenced above. Add this BibTeX entry if not already in references.bib:

```bibtex
@article{Maksoud2023,
  author = {Maksoud, Rosamund and Magawa, Cassandra and Eaton-Fitch, Natalie and Thapaliya, Kiran and Marshall-Gradisnik, Sonya},
  title = {Biomarkers for myalgic encephalomyelitis/chronic fatigue syndrome ({ME/CFS}): a systematic review},
  journal = {BMC Medicine},
  year = {2023},
  volume = {21},
  pages = {189},
  doi = {10.1186/s12916-023-02893-9},
  pmid = {37226227},
  url = {https://pmc.ncbi.nlm.nih.gov/articles/PMC10206551/},
  keywords = {ME/CFS, biomarkers, systematic review, metabolomics, immunology}
}
```

---

### Optional Target: ch14-speculative-hypotheses.tex

**File:** `contents/part2-pathophysiology/ch14-speculative-hypotheses.tex`
**Environment:** `speculation`
**Rationale:** The McCaddon & Regland (2021) methyl-group assault hypothesis is explicitly
speculative and best housed here rather than in ch06.

**Suggested LaTeX:**

```latex
\begin{speculation}[Post-Viral Methyl-Group Depletion as a ME/CFS Onset Mechanism]
\label{spec:methyl-assault-onset}
McCaddon and Regland propose that viral infections --- including SARS-CoV-2 --- initiate
ME/CFS-like states through a ``methyl-group assault'': simultaneous depletion of methyl-group
availability (via viral RNA modification demands consuming SAM) and impairment of resupply
(via oxidative inactivation of methionine synthase)~\cite{McCaddon2021}. The predicted
biochemical consequence is elevated homocysteine and depleted SAM, impairing downstream
methylation reactions and mitochondrial function.

The authors note that long-COVID fatigue (87\%) and cognitive complaints (78\%) overlap
with pernicious anemia (a classical state of B12-mediated methylation failure) at strikingly
similar rates~\cite{McCaddon2021}, and cite the CSF homocysteine elevation documented in
CFS by Regland et al.~\cite{Regland1997} as consistent with this pathway.

\textbf{Testable predictions:} (1)~Elevated CSF homocysteine should be detectable in
post-viral ME/CFS patients acutely and persist chronically. (2)~Serum and CSF SAM should be
reduced in long-COVID/ME/CFS relative to controls. (3)~Early B12/methylfolate supplementation
post-viral illness should reduce ME/CFS onset risk (preventive trial).

\textbf{Status:} Unconfirmed hypothesis. Medical Hypotheses journal publishes speculative
ideas without requiring primary empirical data. Requires prospective biomarker studies and
interventional trials for validation.

(Certainty: Very low. Hypothesis only.)
\end{speculation}
```

---

## Hypothesis Registry Update

When any `hypothesis` or `speculation` environment is added (per MEMORY.md convention),
the hypothesis registry must also be updated.

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entries for:
1. `\ref{hyp:homocysteine-etc-disruption}` -- Homocysteine-Mediated ETC Disruption (ch06)
2. `\ref{spec:methyl-assault-onset}` -- Post-Viral Methyl-Group Depletion (ch14)

---

## Certainty Summary Table

| Paper | Study Type | n | ME/CFS-Specific | Certainty |
|---|---|---|---|---|
| Kaplan 2020 | Review (animal/in vitro) | N/A | No | Medium (mechanism) |
| Regland 1997 | Clinical study | 12 | Partial (FM+CFS) | Low |
| Regland 2015 | Observational survey | 38 | Partial (ME+FM) | Low-Medium |
| van Campen 2019 | Open-label pilot trial | 51 | Yes (ME/CFS) | Low-Medium |
| Zarembska 2023 | Narrative review | N/A | No | Medium-High (biochem) |
| McCaddon 2021 | Hypothesis paper | N/A | Partial (inference) | Low |

---

## Verification Checklist for chapter-integrator

Before finalizing any integration:

- [ ] Check no existing homocysteine or Regland entries in references.bib (currently none found)
- [ ] Add all 6 BibTeX entries (plus Liao2021 and Maksoud2023 if used)
- [ ] Do NOT state homocysteine is a confirmed ME/CFS biomarker (it is not; only n=12 CSF study)
- [ ] Do NOT present B12/folate supplementation as evidence-based treatment (no RCT; use `warning` environment)
- [ ] All hypothesis/speculation environments must include testable predictions (falsifiability rule)
- [ ] Update hypothesis-registry.tex for any new `hypothesis` or `speculation` environments added
- [ ] Update changelog.tex with "Motivated by:" lines citing the new references

---

## Literature Files Created

- `/home/nicky/code/health-me-cfs/Literature/pathophysiology/energy-metabolism/Kaplan_2020_Homocysteine_Mitochondria_Review/`
- `/home/nicky/code/health-me-cfs/Literature/clinical-studies/Regland_1997_CSF_Homocysteine_CFS/`
- `/home/nicky/code/health-me-cfs/Literature/treatments/Regland_2015_B12_Folate_ME_Response/`
- `/home/nicky/code/health-me-cfs/Literature/treatments/vanCampen_2019_B12_Nasal_MECFS/`
- `/home/nicky/code/health-me-cfs/Literature/pathophysiology/energy-metabolism/Zarembska_2023_MTHFR_Polymorphism_Review/`
- `/home/nicky/code/health-me-cfs/Literature/pathophysiology/neurological/McCaddon_2021_COVID_Methyl_Assault/`

Each folder contains: `abstract.txt`, `notes.md`, `key-findings.md`