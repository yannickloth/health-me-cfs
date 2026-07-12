# Integration Guide: Energy Metabolism Cartography — ME/CFS

**Created:** 2026-04-11
**Target chapter:** `contents/part2-pathophysiology/ch06-energy-metabolism.tex`
**Secondary targets:** ch18 (therapeutic frameworks)
**Research stream:** `energy-metabolism-cartography`

---

## Summary

This guide documents a systematic mapping of the complete energy metabolism chain from food intake to ATP utilization and waste removal, identifying at each step: what is established in ME/CFS, what is plausible-but-unstudied, and what interventions exist in other diseases that haven't been tried in ME/CFS.

**9 new papers added to references.bib and appendix-h-annotated-bibliography.tex (2026-04-11).**

---

## Papers Added to references.bib

| Citation key | Authors | Year | Journal | PMID | Certainty | Topic |
|---|---|---|---|---|---|---|
| `MorrisMaes2014mitochondria` | Morris, Maes | 2014 | Metab Brain Dis | 24557875 | 0.45 | O&NS → mitochondria pathway |
| `Comhaire2018DCA` | Comhaire | 2018 | Med Hypotheses | 29602463 | 0.25 | DCA/PDK inhibitor pilot |
| `Comhaire2018DCAresponders` | Comhaire | 2018 | Med Hypotheses | 30220343 | 0.25 | DCA responders prediction |
| `Holden2020mitosysrev` | Holden et al. | 2020 | J Transl Med | 32727475 | 0.55 | Systematic review mitochondria |
| `Shankar2025oxidativestress` | Shankar et al. | 2025 | PNAS | 40627396 | 0.65 | MnSOD decrease, ROS, oxidative stress |
| `Godlewska2024creatineMRS` | Godlewska et al. | 2024 | Nutrients | 39408275 | 0.45 | Creatine supplementation + brain MRS |
| `Molnar2024LCmitochondria` | Molnar et al. | 2024 | GeroScience | 38668888 | 0.55 | Long COVID mitochondria, therapeutics |
| `Sweetman2020SWATH` | Sweetman et al. | 2020 | J Transl Med | 32972442 | 0.45 | SWATH-MS PBMC proteomics, ETC proteins |
| `Maksoud2021nutraceuticals` | Maksoud et al. | 2021 | J Transl Med | 33596913 | 0.55 | Systematic review nutraceuticals |

**Already in bib (no action needed):**
- `Fluge2016` — PDH/PDK mRNA upregulation (PMID 28018972) — KEY paper
- `Paul2021redox` — Redox imbalance PNAS (PMID 34400495)
- `Mandarano2020` — T cell altered metabolism (PMID — JCI 2020)
- `Germain2020metabolic` — Acyl carnitines metabolomics (PMID 31947545)
- `Naviaux2016metabolomics` — Hypometabolic state, FAD/riboflavin pathway (PMID 27573827)

---

## Step-by-Step Failure Mode Cartography

### 1. Substrate Delivery: Glucose and Fatty Acid Uptake

**GLUT4 / Insulin resistance in ME/CFS:**
- **Evidence:** Metabolic subset ME-M2 shows elevated insulin and triglycerides (Naviaux metabolomics context). T cells show increased GLUT1 expression suggesting compensatory glucose uptake attempt, but hexokinase I is downregulated — glycolytic entry is blocked downstream. (~Mandarano2020)
- **Status:** PARTIALLY STUDIED. Specific GLUT4 trafficking in skeletal muscle NOT directly studied in ME/CFS.
- **NOT STUDIED:** Malonyl-CoA regulation of CPT1 (the switch between glucose and fatty acid utilization) has not been characterized in ME/CFS.
- **Intervention gap:** AMPK activators (metformin, berberine) could rescue GLUT4 trafficking — not trialled.
- **LaTeX environment:** `observation` or `hypothesis`

**Acylcarnitine / Fatty acid delivery:**
- **Evidence:** Germain2020metabolic shows consistently reduced acylcholines and acylcarnitines in two independent ME/CFS cohorts. Lower flux of mitochondrial fatty acids for beta-oxidation. (~Germain2020metabolic)
- **Status:** ESTABLISHED at metabolomics level.
- **LaTeX environment:** `achievement`

---

### 2. Glycolysis → Pyruvate

**Status:** Established in ME/CFS.
- Naviaux 2016: broad pathway abnormalities.
- Mandarano 2020: reduced basal glycolysis in both CD4+ and CD8+ T cells.
- **BUT:** The glycolytic enzyme-by-enzyme failure analysis (hexokinase, PFK, PK) has not been done in ME/CFS tissue.
- **NOT STUDIED:** Hexokinase II localization to mitochondrial outer membrane (its role in coupling glycolysis to OXPHOS) is unstudied in ME/CFS.

---

### 3. Pyruvate Dehydrogenase Complex (PDC) — KEY SECTION

**Evidence in ME/CFS:**
- `Fluge2016`: PDK1, PDK2, PDK4 mRNA significantly upregulated in PBMCs from 200 ME/CFS patients vs 102 controls. SIRT4 (mitochondrial lipoamidase that deacetylates/inhibits PDH) also upregulated. Patient serum caused muscle cells to increase mitochondrial respiration and excrete excess lactate. This is the strongest mechanistic evidence for PDH constraint in ME/CFS.
- `Comhaire2018DCA` + `Comhaire2018DCAresponders`: Clinical proof-of-concept that PDK inhibition with DCA helps ~37–45% of ME/CFS patients (LOW quality evidence but directionally consistent with Fluge2016).

**Mechanism understood:**
- Inflammatory cytokines + ROS activate PDK → PDH hyper-phosphorylation → reduced pyruvate entry into TCA → compensatory lactate accumulation.
- SIRT4 upregulation adds a second inhibitory layer on PDH E3 subunit.

**Cofactors at risk (PDC requires all four):**
- Thiamine (B1) — cofactor for E1 subunit: **NOT STUDIED as a standalone intervention in ME/CFS** (Maksoud2021nutraceuticals confirms absence)
- Lipoic acid — cofactor for E2 subunit (also E3 for KGDHC): NOT studied as isolated intervention
- FAD/riboflavin — cofactor for E3 (dihydrolipoamide dehydrogenase): **NOT STUDIED in ME/CFS** (Naviaux 2016 found riboflavin pathway abnormal)
- NAD+/NADH — final electron acceptor from E3: studied (kynurenine pathway context)

**NOT STUDIED in ME/CFS:**
- Thiamine-high-dose treatment (used in thiamine-responsive metabolic disorders and POTS-adjacent conditions)
- Riboflavin alone
- Combined cofactor replacement (thiamine + riboflavin + lipoic acid + CoQ10)

**LaTeX environments:**
- `achievement` for Fluge2016 PDK finding (partially replicated)
- `observation` for Comhaire DCA (low certainty, note carefully)
- `speculation` for cofactor replacement combinations

**Suggested LaTeX for PDK finding:**
```latex
\begin{achievement}[PDK Overactivation Impairs Pyruvate Entry into TCA Cycle]
\label{ach:fluge2016-pdk}
Fluge et al.~\cite{Fluge2016} found significantly increased mRNA expression of
\textbf{PDK1, PDK2, and PDK4} (but not PDK3) and of the mitochondrial lipoamidase
\textbf{SIRT4} in peripheral blood mononuclear cells from 200 ME/CFS patients
versus 102 healthy controls. Patient serum caused healthy muscle cells to increase
mitochondrial respiration while excreting excess lactate---a pattern consistent
with functional impairment of the pyruvate dehydrogenase complex (PDC) and
compensatory anaerobic metabolism.
Study: (n=200 ME/CFS + 102 controls; transcriptomic + cell-based assay; certainty:
medium---replication needed in muscle tissue).
\end{achievement}
```

**Suggested LaTeX for DCA intervention:**
```latex
\begin{observation}[Sodium Dichloroacetate (PDK Inhibitor) Partially Effective in ME/CFS]
\label{obs:comhaire2018-dca}
Two small open-label studies by Comhaire~\cite{Comhaire2018DCA,Comhaire2018DCAresponders}
found that $\approx$37--45\% of treatment-resistant ME/CFS patients responded
favorably to sodium dichloroacetate (DCA), a direct PDK inhibitor that restores
pyruvate dehydrogenase activity. Six pre-treatment characteristics predicted
response with high discriminative accuracy (AUC=0.92), suggesting biological
heterogeneity: only a subgroup has PDH constraint as a dominant mechanism.
\textbf{Important limitation:} no placebo control, single investigator,
published in \textit{Medical Hypotheses} (low-threshold journal).
Studies: (n=22, n=35; open-label; certainty: 0.25---hypothesis-generating only).
\end{observation}
```

---

### 4. Carnitine Shuttle (CPT1/CPT2) and Beta-Oxidation

**Evidence in ME/CFS:**
- `Germain2020metabolic`: reduced acylcarnitines in two independent cohorts — consistent with impaired beta-oxidation flux.
- `Plioplys1995carnitine` (already in bib): significantly lower serum total carnitine, free carnitine, and acylcarnitine in 35 CFS patients vs controls. Correlation between higher carnitine and better functional capacity.
- `Plioplys1997carnitineTreatment` (already in bib): L-carnitine (3g/day) improved 12/18 clinical parameters in CFS.
- `Vermeulen2004carnitine` (already in bib): open RCT of acetyl- and propionyl-carnitine (n=90); 59-63% improvement.

**CPT1 regulation by malonyl-CoA:**
- NOT STUDIED in ME/CFS. Malonyl-CoA is the master switch between glucose and fatty acid oxidation (produced by ACC when carbohydrates are abundant; inhibits CPT1). In a cell sensing energy deficit (low ATP, high AMP), AMPK should inhibit ACC, lower malonyl-CoA, and open CPT1. Whether this AMPK-ACC-malonyl-CoA axis is dysfunctional in ME/CFS is UNKNOWN.

**Beta-oxidation cofactors:**
- FAD (riboflavin-derived): required by VLCAD, LCAD, MCAD, SCAD, ETF, ETF-QO. Naviaux 2016 found riboflavin pathway abnormal. **NOT STUDIED as standalone intervention**.
- NADH (required at steps producing NADH): competes with FADH2 for ETC.
- Iron-sulfur cluster in ETF-QO (electron transfer flavoprotein-ubiquinone oxidoreductase): NOT studied in ME/CFS.

**NOT STUDIED in ME/CFS:**
- MCAD, LCAD, VLCAD enzyme activity measurement in ME/CFS muscle
- ETF-QO activity (bridge from beta-oxidation to CoQ)
- Riboflavin supplementation for beta-oxidation support

**LaTeX environment:** `observation` for carnitine evidence; `speculation` for malonyl-CoA/AMPK

---

### 5. Krebs Cycle Enzyme Failures

**Overall evidence:** Naviaux 2016 found decreased TCA intermediates. Metabolomic studies show decreased citrate, isocitrate, malate. `MorrisMaes2014mitochondria` provides mechanistic framework.

**Aconitase (step 2: citrate → isocitrate):**
- Contains an iron-sulfur [4Fe-4S] cluster — highly ROS-sensitive. Superoxide directly inactivates it.
- In ME/CFS: elevated ROS (Paul2021redox, Shankar2025oxidativestress) would predictably inhibit aconitase.
- **NOT DIRECTLY MEASURED** in ME/CFS patient tissue (only inferred from low isocitrate in metabolomics).

**Alpha-ketoglutarate dehydrogenase complex (KGDHC, step 4):**
- Requires thiamine (E1), lipoic acid (E2), riboflavin/FAD (E3) — same cofactors as PDC.
- Highly sensitive to oxidative stress and calcium overload.
- **NOT STUDIED** as a specific target in ME/CFS. All evidence is indirect.

**Succinate dehydrogenase / Complex II (step 6):**
- The only TCA enzyme that is also an ETC complex. Contains iron-sulfur clusters.
- **NOT STUDIED** as a specific target in ME/CFS.

**Isocitrate dehydrogenase (ICDH, step 3):**
- NAD+-dependent (mitochondrial form) or NADP+-dependent.
- When NAD+ is depleted, ICDH activity falls — TCA cycle slows.
- NOT studied in ME/CFS.

**General flag:** All iron-sulfur cluster-containing enzymes (aconitase, KGDHC, Complex I, Complex II, ETF-QO) are simultaneously vulnerable when iron-sulfur cluster assembly (ISCU) is impaired or when ROS is elevated. **ISCU has NOT been studied in ME/CFS.**

**LaTeX environment:** `hypothesis` or `speculation` for these mechanistic proposals

---

### 6. Cofactor Availability as Systemic Failure Mode

**CoQ10:**
- Decreased in ME/CFS (Holden2020mitosysrev confirms both studies examining it found decrease).
- `Maes2009CoQ10` (already in bib): CoQ10 inversely correlated with fatigue/autonomic symptom severity.
- `CastroMarrero2021CoQ10` (already in bib): CoQ10 + NADH supplementation improved HRR in RCT.
- **Status:** ESTABLISHED deficiency. Treatment evidence: medium (multiple small RCTs).

**NAD+/NADH ratio:**
- PARP competition: quinolinic acid (kynurenine pathway) induces DNA damage → PARP overactivation → NAD+ depletion. Already covered in bib (KP papers).
- NR trial in Long COVID: `NR_LongCOVID2024` (check if in bib — probably yes given prior work).
- **Status:** Mechanism well-argued. Direct NAD+ measurement in ME/CFS tissue: NOT DONE.

**Riboflavin (FAD precursor):**
- Naviaux 2016: riboflavin pathway in list of 20 abnormal metabolic pathways.
- FAD required by: VLCAD, LCAD, ETF, ETF-QO (beta-oxidation), Complex I (FMN), Complex II, PDH E3, KGDHC E3, glutathione reductase.
- Riboflavin supplementation **NOT STUDIED** in ME/CFS as a standalone intervention (Maksoud2021nutraceuticals confirms).
- **Intervention gap (other diseases):** Riboflavin 400mg/day is standard-of-care for MADD (multiple acyl-CoA dehydrogenase deficiency) and riboflavin-responsive Complex I/II deficiency. This has NOT been tried in ME/CFS.

**Thiamine (TPP precursor for PDH E1 and KGDHC E1):**
- Functional deficiency documented (lower erythrocyte transketolase activity in some CFS patients, historical data).
- High-dose thiamine (600-1800 mg/day) used in thiamine-responsive conditions.
- **NOT STUDIED** as formal trial in ME/CFS (Maksoud2021nutraceuticals confirms).

**Cardiolipin:**
- Required for proper folding and activity of all inner mitochondrial membrane complexes (CI-CV), ANT, and the structural integrity of cristae.
- Anti-cardiolipin antibodies found in 90% of CFS patients in one study (historical).
- Cardiolipin oxidation by ROS impairs all IMM functions simultaneously.
- Elamipretide (SS-31 peptide) stabilises cardiolipin and is in trials for Barth syndrome and heart failure.
- **NOT STUDIED** in ME/CFS. (~Molnar2024LCmitochondria mentions elamipretide for Long COVID)

**Iron-sulfur clusters (ISCU):**
- ISCU assembles [Fe-S] clusters for: aconitase, KGDHC, Complex I (8 clusters), Complex II, ETF-QO.
- ISCU mutations cause exercise intolerance, myopathy, and lactic acidosis (diseases with ME/CFS symptom overlap).
- ISCU has **NOT BEEN STUDIED** in ME/CFS.
- Intervention: iron-sulfur cluster assembly can be supported by ensuring adequate iron, cysteine, and frataxin function. Directly relevant to Friedreich's ataxia treatments.

**Manganese (MnSOD):**
- Shankar2025oxidativestress: MnSOD protein levels are DECREASED in ME/CFS and Long COVID lymphocytes.
- MnSOD is the primary mitochondrial superoxide scavenger. Its decrease means superoxide accumulates in the mitochondrial matrix, directly inactivating iron-sulfur proteins (aconitase, KGDHC, ETC).
- Manganese supplementation is NOT routinely trialled in ME/CFS (manganese is MnSOD's required cofactor).

---

### 7. Electron Transport Chain and ATP Synthase

**Evidence:**
- `Sweetman2020SWATH`: Complex I and V proteins differentially expressed in ME/CFS PBMCs.
- `Syed2025MitoCFS` (Physiology 2025, already in bib): WASF3 disrupts respiratory supercomplex assembly; decreased oxygen consumption.
- `MorrisMaes2014mitochondria`: cytokines + O&NS decrease ETC activity and membrane potential.

**ANT (Adenine Nucleotide Translocator):**
- ANT1-4 isoforms; ANT exchanges mitochondrial ATP for cytosolic ADP across the IMM.
- ANT blocking = no ATP export = cellular energy crisis even if ETC is functional.
- In primary biliary cirrhosis: anti-ANT antibodies (antimitochondrial antibodies AMA-M4) are well-characterized.
- In ME/CFS: theoretical relevance given autoantibody findings, but **ANT-specific autoantibodies have NOT been measured in ME/CFS** (distinct from the general anti-mitochondrial antibody searches which were negative).
- **Status:** NOT STUDIED IN ME/CFS. High-priority research gap.

**Uncoupling proteins (UCP2/UCP3):**
- UCP3 is primarily in skeletal muscle. When activated (by ROS, fatty acid metabolites), it dissipates the proton gradient as heat instead of ATP synthesis.
- Acts as a mild ROS-scavenging mechanism but reduces ATP yield.
- In ME/CFS: predictable upregulation to compensate for ROS, but this further reduces ATP output.
- **NOT STUDIED** specifically in ME/CFS skeletal muscle.

---

### 8. Creatine Phosphate Shuttle

**Evidence:**
- `Godlewska2025MRS` (already in bib): 7T MRS cross-sectional — decreased brain creatine in ME/CFS vs controls.
- `Godlewska2024creatineMRS` (NEW): creatine supplementation (16g/day, 6 weeks) significantly increased brain creatine in pgACC and DLPFC; improved fatigue and cognition (n=11, no placebo). First intervention evidence.
- Historical MRS studies (Shungu 2012 replication, already in bib via `Mueller2020MRS` context): decreased creatine in anterior cingulate.

**Mechanism:** Brain and muscle creatine kinase maintain a PCr/ATP buffer that sustains local ATP during burst demand. Depletion = no buffer = immediate energy deficit during activity.

**NOT STUDIED:** Creatine transport protein (SLC6A8) expression in ME/CFS muscle and brain. Whether creatine deficiency is due to synthesis failure, transport failure, or increased consumption.

**Suggested LaTeX:**
```latex
\begin{achievement}[Creatine Supplementation Increases Brain Creatine and Reduces Fatigue]
\label{ach:godlewska2024-creatine}
In a feasibility trial (n=11 completers), Godlewska et al.~\cite{Godlewska2024creatineMRS}
found that 6 weeks of creatine monohydrate (16~g/day) significantly increased
brain creatine in both the pregenual anterior cingulate cortex (+8.3\%, p=0.004)
and dorsolateral prefrontal cortex (+2.9\%, p=0.012). Secondary outcomes showed
decreased fatigue scores and improved Stroop reaction time and hand-grip strength.
This is the first intervention evidence that brain creatine deficiency in ME/CFS
(previously shown by 7T MRS~\cite{Godlewska2025MRS}) is pharmacologically correctable.
Study: (n=11; open-label feasibility; certainty: 0.45---no placebo; requires RCT).
\end{achievement}
```

---

### 9. ROS Scavenging System

**Evidence:**
- `Shankar2025oxidativestress` (NEW, PNAS 2025): MnSOD protein levels DECREASED; elevated GSH; GPX4 lipid oxidative damage. Both ME/CFS and Long COVID affected. Sex-specific patterns.
- `Paul2021redox` (already in bib, PNAS 2021): Redox imbalance links COVID-19 and ME/CFS; impaired H2S/cysteine metabolism.
- `Holden2020mitosysrev`: oxidative stress markers present across multiple ME/CFS studies.

**Specific gaps:**
- **Thioredoxin/peroxiredoxin system:** NOT studied in ME/CFS. Peroxiredoxin 3 (PRDX3) is a mitochondrial peroxidase; its deficiency is associated with ME/CFS-like phenotypes in animal models. PRDX3 in ME/CFS: NOT MEASURED.
- **Glutathione peroxidase (GPX1 vs GPX4):** GPX4 disruption (lipid peroxidation) confirmed by Shankar2025. GPX1 (cytosolic H2O2 detox) status: NOT CHARACTERIZED.
- **Catalase in ME/CFS:** decreased in at least one study (Naviaux context). NOT systematically studied.
- **NRF2 pathway** (master antioxidant transcription factor): NOT studied in ME/CFS.

**Suggested LaTeX:**
```latex
\begin{achievement}[Decreased MnSOD and GPX4 Dysfunction in ME/CFS and Long COVID Lymphocytes]
\label{ach:shankar2025-mnSOD}
Shankar et al.~\cite{Shankar2025oxidativestress} demonstrated that both ME/CFS and
Long COVID lymphocytes exhibit elevated oxidative stress with \textbf{decreased
mitochondrial superoxide dismutase (MnSOD) protein levels} and \textbf{glutathione
peroxidase 4 (GPX4)-mediated lipid oxidative damage}. Female patients show higher
total ROS and mitochondrial calcium; male patients show normal ROS levels but greater
lipid oxidative damage---suggesting sex-specific failure modes in ROS management.
Excess lymphocyte ROS consumes host energy, contributing to fatigue.
Study: (multi-cohort; flow cytometry + mass spectrometry; PNAS; certainty: 0.65).
\end{achievement}
```

---

### 10. Mitochondrial Dynamics (Fission/Fusion/Biogenesis)

**Evidence:**
- `Syed2025MitoCFS` (already in bib): WASF3 disrupts respiratory supercomplex assembly; ER stress → WASF3 → mitochondrial dysfunction.
- IgG-mediated fragmentation (already covered in ch06).
- `Sweetman2020SWATH`: proteomics showing mitochondrial protein dysregulation.

**PGC-1alpha / biogenesis:**
- PGC-1alpha is the master regulator of mitochondrial biogenesis. Chronic inflammation suppresses PGC-1alpha.
- PGC-1alpha also upregulates MnSOD → connects to ROS deficiency.
- **PGC-1alpha has NOT been directly measured in ME/CFS patient tissue.** Only inferred from downstream markers.
- **NOT STUDIED:** Whether exercise intolerance prevents the adaptive upregulation of PGC-1alpha that healthy subjects experience.

**DRP1 / OPA1 fission-fusion balance:**
- IgG-mediated mitochondrial fragmentation (already in ch06) implies excess DRP1 activity.
- Direct measurement of DRP1/FIS1 vs MFN1/2/OPA1 in ME/CFS tissue: **NOT DONE** (only inferred from morphology).

**Suggested LaTeX (hypothesis):**
```latex
\begin{hypothesis}[PGC-1alpha Suppression Prevents Mitochondrial Biogenesis Recovery]
\label{hyp:pgc1alpha-suppression}
Chronic neuroinflammation and elevated TNF-\(\alpha\) in ME/CFS are predicted to
suppress PGC-1\(\alpha\)---the master regulator of mitochondrial biogenesis---thereby
preventing compensatory mitochondrial proliferation in response to energy deficits.
PGC-1\(\alpha\) also transcriptionally upregulates MnSOD~\cite{MorrisMaes2014mitochondria},
meaning its suppression would simultaneously impair ROS clearance, as confirmed
by decreased MnSOD protein levels in ME/CFS lymphocytes~\cite{Shankar2025oxidativestress}.

\textbf{Testable prediction:} PGC-1\(\alpha\) protein and mRNA levels should be
lower in ME/CFS skeletal muscle biopsies than in matched controls, with the decrease
correlating with disease severity. PGC-1\(\alpha\) agonists (e.g., low-dose
resveratrol, exercise mimetics) should partially restore MnSOD expression and
mitochondrial density.

\textbf{Limitation:} This hypothesis has not been directly tested in ME/CFS tissue.
\end{hypothesis}
```

---

## Complete Failure Mode Map: NOT STUDIED IN ME/CFS

The following failure modes are mechanistically plausible, established in other diseases, and have NOT been studied in ME/CFS:

| Failure mode | Established in | Relevance to ME/CFS | Drug/Supplement gap |
|---|---|---|---|
| PDH cofactor depletion (thiamine, riboflavin, lipoic acid) | PDH deficiency, mitochondrial disease | PDK overactivation uses same cofactors | High-dose thiamine (not trialled) |
| KGDHC failure (alpha-KGD complex) | Alzheimer's, mitochondrial disease | Same cofactor requirements as PDH | Same cofactor supplements |
| ISCU dysfunction → combined ETC failure | Friedreich's ataxia, ISCU myopathy | All [Fe-S] proteins fail simultaneously | Iron/cysteine support |
| ANT autoantibodies | Primary biliary cirrhosis (AMA-M4) | ME/CFS has broad autoantibody findings | No specific intervention yet |
| Cardiolipin oxidation → IMM failure | Barth syndrome, heart failure | ROS in ME/CFS would oxidize cardiolipin | Elamipretide (SS-31) — in trials for Barth |
| UCP3 upregulation → proton leak | Obesity, diabetes, thyroid disease | Predicted compensatory response to ROS | Specific UCP3 modulation not established |
| NRF2 pathway suppression | Multiple conditions | Master antioxidant regulator | Sulforaphane, DMF (NRF2 activators) |
| Thioredoxin/PRDX3 dysfunction | PRDX3 KO mice (ME/CFS-like phenotype) | Mitochondrial H2O2 clearance | TRX mimetics (experimental) |
| PGC-1alpha suppression | Type 2 diabetes, neurodegenerative disease | Mitochondrial biogenesis failure | Resveratrol, PGC-1alpha agonists |
| GLUT4 trafficking failure | Type 2 diabetes, insulin resistance | Substrate delivery to mitochondria | SGLT2 inhibitors, metformin |
| Riboflavin-responsive beta-oxidation failure | MADD, multiple ACD deficiency | FAD required for all beta-oxidation enzymes | Riboflavin 400mg/day (standard for MADD) |

---

## Integration Priority for chapter-integrator

### Primary target: `ch06-energy-metabolism.tex`

**Section: PDC/PDK subsection (ADD NEW)**
- Add `\begin{achievement}` for `Fluge2016` PDK finding (already in bib, just not yet in ch06 text)
- Add `\begin{observation}` for `Comhaire2018DCA` + `Comhaire2018DCAresponders` (caution: very low certainty)
- Add `\begin{speculation}` for thiamine/riboflavin/lipoic acid cofactor replacement gap

**Section: Carnitine shuttle and beta-oxidation (ADD NEW)**
- Add evidence summary citing `Germain2020metabolic`, `Plioplys1995carnitine`, `Vermeulen2004carnitine`
- Add `\begin{hypothesis}` for malonyl-CoA/CPT1 dysregulation (unstudied)
- Flag riboflavin gap for ETF/ETF-QO

**Section: Krebs cycle enzyme failures (ADD NEW)**
- Add note on aconitase, KGDHC, succinate dehydrogenase ROS sensitivity
- Cite `Naviaux2016metabolomics` for TCA metabolite decreases
- Flag ISCU as NOT STUDIED

**Section: Cofactor availability (EXPAND)**
- CoQ10 (already covered) — add `Holden2020mitosysrev` as systematic evidence
- Creatine/phosphocreatine — add `Godlewska2024creatineMRS` and `Godlewska2025MRS`
- NAD+/riboflavin/thiamine — flag as unexplored gaps

**Section: ROS scavenging (ADD NEW or EXPAND)**
- MnSOD decrease: add `\begin{achievement}` for `Shankar2025oxidativestress`
- Thioredoxin/PRDX3: flag as NOT STUDIED
- NRF2: flag as NOT STUDIED

**Section: Mitochondrial dynamics (ADD or EXPAND)**
- Add `\begin{hypothesis}` for PGC-1alpha suppression using `MorrisMaes2014mitochondria` + `Shankar2025oxidativestress`
- DRP1/OPA1 direct measurement: flag as NOT DONE
- ANT autoantibodies: flag as NOT STUDIED

**Section: ANT (ADD NEW)**
- Note ANT's role as gatekeeper of ATP/ADP exchange
- Flag ANT-specific autoantibodies as NOT STUDIED in ME/CFS (distinguishing from general AMA negative findings)

### Secondary target: `ch18-therapeutic-frameworks.tex`

- DCA for PDK subgroup: `Comhaire2018DCA` + `Comhaire2018DCAresponders` (note: add warning environment — hypothesis-generating only)
- Creatine as support: `Godlewska2024creatineMRS`
- Thiamine/riboflavin: flag as NOT TRIALLED (based on `Maksoud2021nutraceuticals`)
- Elamipretide for cardiolipin: `Molnar2024LCmitochondria` (note: not trialled in ME/CFS)

---

## Verification

```
grep "@article{MorrisMaes2014mitochondria" references.bib     # should find entry
grep "@article{Comhaire2018DCA," references.bib                # should find entry
grep "@article{Comhaire2018DCAresponders" references.bib       # should find entry
grep "@article{Holden2020mitosysrev" references.bib            # should find entry
grep "@article{Shankar2025oxidativestress" references.bib      # should find entry
grep "@article{Godlewska2024creatineMRS" references.bib        # should find entry
grep "@article{Molnar2024LCmitochondria" references.bib        # should find entry
grep "@article{Sweetman2020SWATH" references.bib               # should find entry
grep "@article{Maksoud2021nutraceuticals" references.bib       # should find entry
```
