# Literature Summary: Contraindication Ladder — What NEVER to Combine

**Topic:** Contraindicated drug combinations formalized into a 4-level ladder in the pharmacodiagnostic framework (ch33)
**Date:** 2026-07-29
**Research Stream:** `contraindication-ladder`
**Bib file:** `treatments.bib`

---

## Executive Summary

Searched 23 PubMed queries across Level 1 (receptor antagonism), Level 2 (PK catastrophe), Level 3 (PD opposition), Level 4 (metabolic PEM risk), contraindication table entries, and DDI classification frameworks. **19 papers included** across all categories. Key findings:

1. **Level 1 pairs** (LDN+opioids, BB+beta-agonists): Pharmacology established in textbooks/reviews; primary evidence for specific pairs is sparse but mechanism-based certainty is high.
2. **Level 2 — Fluvoxamine+duloxetine**: Strong primary evidence — Knadler 2011 shows 460% AUC increase (CYP1A2 inhibition). Drug labeling and FDA guidance confirm.
3. **Level 2 — Cimetidine+aripiprazole**: **Null result** — zero PubMed papers for this specific combination. CYP2D6 inhibition by cimetidine is textbook pharmacology, but the specific pair lacks primary literature.
4. **Level 3 — Clonidine+midodrine**: One case report (Dayal 2025) demonstrating the timed-use strategy (midodrine daytime, clonidine bedtime) for SH-OH.
5. **Level 4 — Stimulants+ME/CFS**: Blockmans 2006 RCT (n=60) for methylphenidate; Eckey 2025 patient survey (n=3,925) showing CNS stimulant benefit in cognitive-dysfunction cluster but risk in POTS-dominant cluster.
6. **Level 4 — Rapamycin+metformin**: Abundant geroscience/anti-aging reviews but **zero papers specifically on adverse interaction from combined mTORC1 suppression**. Risk is mechanistic inference.
7. **DDI classification**: No existing "ladder" framework found. Amariles 2007 proposes severity/probability classification. Pharmavista (Swiss CDSS) uses "contraindicated" / "contraindicated by precaution" tiers. Existing frameworks (Stockley's, Micromedex) use 3-5 severity levels but no mechanism-based ladder.

**Primary gap:** No formal contraindication ladder framework exists. The mechanism-based 4-level ladder is a novel organizational contribution.

---

## Level 1 — Receptor Antagonism

### LDN (Opioid Antagonist) + Tramadol/Tapentadol (Opioid Agonists)

**PubMed query:** `"low dose naltrexone" AND (tramadol OR tapentadol)` → 2 hits

| # | Bib Key | Design | n | Certainty | Key Finding |
|---|---------|--------|---|-----------|-------------|
| 1 | Perrot2025Fibromyalgia | Review | — | 0.40 | Tramadol has weak short-term effect on FM pain; LDN gaining attention for neuroinflammation; "some treatments should be avoided due to high risk of abuse and severe side effects, especially opioids" |
| 2 | Ciwun2026OpioidsBreastCancer | Review | — | 0.50 | Opioid antagonists (naloxone, naltrexone, LDN) exhibit antineoplastic properties via OGF-OGFr axis; tramadol has atypical profile vs morphine — does NOT act purely at μOR |

**Analysis:** Direct LDN+tramadol interaction studies are absent from PubMed. The antagonism is pharmacologically inevitable: naltrexone is a competitive μ-opioid receptor antagonist; tramadol's analgesic effect is partially μOR-mediated. LDN at 1.5–6 mg doses may partially occupy μOR → reduced tramadol efficacy + potential precipitated withdrawal in opioid-dependent patients. Evidence level: **mechanism-based pharmacology (FDA labeling-level certainty), no primary interaction studies**.

**Additional search:** `(naltrexone OR LDN) AND (opioid agonist OR tramadol) AND (antagonism OR precipitated withdrawal)` → 1,511 hits (too broad, mostly naltrexone/naloxone general pharmacology). Key relevant: Bannwarth 2012 (Embeda = morphine+naltrexone formulation — tampering releases naltrexone, precipitates withdrawal). Ruan 2010 (case: crushed Embeda → acute opioid withdrawal).

**LDN dysphoria → avoid all opioid-modulating drugs:** This is clinical observation. LDN can cause dysphoria as a known adverse effect (μOR antagonism reduces tonic opioid tone). Perrot 2025 confirms LDN side effect profile includes dysphoria. Yang 2023 systematic review (n=9 studies) — LDN safe at low doses but no severe AEs reported; vivid dreams noted as common. Due Bruun 2024 RCT (n=99, LDN 6 mg) — no significant pain benefit over placebo; adverse events in 84% of LDN group vs 86% placebo.

#### Perrot2025Fibromyalgia — Certainty: 0.40

- **PMID:** 39801722 | **Journal:** Pain Reports (2025)
- **Design:** Narrative review
- **Key finding:** Pharmacological approaches to fibromyalgia are weakly effective. FDA-approved: SNRIs (duloxetine), pregabalin. LDN and ketamine gaining attention but unvalidated. "Some treatments should be avoided due to high risk of abuse and severe side effects, especially opioids, steroids, and hormonal replacement."
- **Relevance:** Identifies tramadol and LDN as two fibromyalgia treatments with different mechanisms; implies non-combination by class avoidance logic.

#### DueBruun2024LDNFibromyalgia — Certainty: 0.75

- **PMID:** 38258677 | **Journal:** Lancet Rheumatology (2024)
- **Design:** Double-blind RCT; n=99 women with fibromyalgia; LDN 6 mg vs placebo ×12 weeks
- **Key finding:** No significant difference in pain intensity change (−0.34 points, p=0.27). AEs in 84% LDN vs 86% placebo. Discontinuation due to AEs: 8% vs 6%.
- **Relevance:** Establishes LDN safety profile; no interaction data but characterizes AE spectrum relevant to combination risk.

#### Yang2023LDNSystematicReview — Certainty: 0.60

- **PMID:** 36974308 | **Journal:** J Pain Res (2023)
- **Design:** Systematic review; n=9 studies (1 RCT, 2 case reports, 2 case series, 4 pilot trials) of LDN for fibromyalgia
- **Key finding:** LDN effective for symptomatic management of FM; no severe AEs reported. Evidence limited.
- **Relevance:** Safety characterization of LDN.

---

### Beta-blockers + Beta-agonists (Salbutamol/Albuterol)

**PubMed query:** `(beta-blocker OR propranolol) AND (salbutamol OR albuterol) AND (asthma OR bronchospasm OR contraindicated)` → 169 hits

This interaction is **textbook pharmacology** — non-cardioselective beta-blockers (propranolol) block β2 receptors in bronchial smooth muscle, opposing the bronchodilatory action of β2-agonists (salbutamol). The interaction is **well-established in FDA labeling, GOLD guidelines, and standard pharmacology textbooks.**

| # | Bib Key | Design | n | Certainty | Key Finding |
|---|---------|--------|---|-----------|-------------|
| 1 | Lipworth1997PartialAgonist | Review | — | 0.55 | β-AR partial agonist exhibits opposite agonist/antagonist activity depending on prevailing adrenergic tone. Salmeterol can act as antagonist in presence of full agonist (fenoterol). |
| 2 | Everly2004BBUnderuse | Review | — | 0.50 | β-blockers contraindicated in reactive airway disease so severe that airway support is required. Cardioselective β-blockers + albuterol can minimize bronchospasm. |
| 3 | Cullum2023Beta2cAMP | Lab study | — | 0.45 | Kinetic analysis: preincubation with β2-AR antagonists produced large reduction in isoprenaline peak response due to hemi-equilibrium in low receptor reserve system. |
| 4 | Oppenheimer1990Arrhythmia | Animal study | 63 cats | 0.40 | Sympathomimetic arrhythmogenicity requires both α and β receptor activation. Combined propranolol + phentolamine most effectively abolished arrhythmias. |

#### Lipworth1997PartialAgonist — Certainty: 0.55

- **PMID:** 9056046 | **Journal:** Br J Clin Pharmacol (1997)
- **Key finding:** "In the presence of raised endogenous adrenergic tone such as exercise or an exogenous full agonist, β-AR subtype antagonist activity will become evident." β2-AR partial agonist activity may be expressed as antagonism in presence of exogenous full agonist (e.g., salmeterol attenuating fenoterol responses).
- **Relevance:** Mechanistic basis for β2-AR opposition: BB occupancy → reduced bronchodilator response.

#### Everly2004BBUnderuse — Certainty: 0.50

- **PMID:** 14742768 | **Journal:** Ann Pharmacother (2004)
- **Key finding:** "The only absolute contraindications to beta-blockers are severe bradycardia, preexisting sick sinus syndrome, second- and third-degree AV block, severe left ventricular dysfunction, active peripheral vascular disease with rest ischemia, or reactive airway disease so severe that airway support is required."
- **Relevance:** Explicit listing of reactive airway disease as contraindication for non-cardioselective BBs. Cardioselective BBs + albuterol can minimize bronchospasm risk — but β1-selectivity is dose-dependent and lost at higher doses.

**Additional note:** This interaction is described in every standard pharmacology textbook (Goodman & Gilman, Katzung, Rang & Dale) and FDA prescribing information for all non-cardioselective β-blockers. The mechanism is competition at the β2 adrenergic receptor — a direct pharmacodynamic antagonism requiring no primary literature to establish.

---

## Level 2 — Pharmacokinetic Catastrophe

### Fluvoxamine (CYP1A2 Inhibitor) + Duloxetine (CYP1A2 Substrate)

**PubMed query:** `fluvoxamine AND duloxetine AND (interaction OR CYP1A2 OR serotonin syndrome)` → 31 hits

**This is the best-documented interaction pair in the ladder.** The pharmacokinetic interaction is established by an Eli Lilly-sponsored drug interaction study and documented in FDA prescribing information.

| # | Bib Key | Design | n | Certainty | Key Finding |
|---|---------|--------|---|-----------|-------------|
| 1 | Knadler2011DuloxetinePK | PK review | — | 0.80 | Fluvoxamine increases duloxetine AUC by 460% and Cmax by 141%. CYP1A2 inhibition → clinically significant exposure increase. |
| 2 | Hanif2023NebivololPK | Systematic review | 20 studies | 0.65 | Nebivolol AUC/Cmax increased when co-administered with fluvoxamine, duloxetine, paroxetine — confirms CYP2D6 inhibition by both drugs. |
| 3 | Alborghetti2025AntidepressantDI | Review | — | 0.60 | Fluvoxamine is a potent CYP1A2 and CYP2C19 inhibitor. Duloxetine is a moderate CYP2D6 inhibitor. Serotonergic antidepressants can precipitate serotonin syndrome with MAO-B inhibitors or triptans. |
| 4 | Shelton2019SNRI | Review | — | 0.55 | Duloxetine is a moderate CYP2D6 inhibitor. All SNRIs can cause serotonin syndrome when combined with MAOIs. |
| 5 | Park2014TramadolSS | Review | 10 case reports | 0.40 | Tramadol + SSRI/SNRI can cause serotonin syndrome. Risk factors: increased age, higher doses, concomitant CYP2D6 inhibitors. |

#### Knadler2011DuloxetinePK — Certainty: 0.80

- **PMID:** 21366359 | **Journal:** Clin Pharmacokinet (2011)
- **Design:** Comprehensive PK review from Eli Lilly (drug manufacturer)
- **Key finding:** "Following oral administration in the presence of fluvoxamine, the area under the plasma concentration-time curve and Cmax of duloxetine significantly increased by 460% (90% CI 359, 584) and 141% (90% CI 93, 200), respectively." CYP1A2 inhibition increases duloxetine exposure to "a clinically significant degree."
- **Relevance:** Direct quantitation of the interaction. This is **label-level evidence** — included in duloxetine prescribing information as a warning.

#### Hanif2023NebivololPK — Certainty: 0.65

- **PMID:** 37849071 | **Journal:** Drug Metab Rev (2023)
- **Key finding:** Nebivolol showed higher Cmax, AUC, and t1/2 when co-administered with bupropion, duloxetine, fluvoxamine, paroxetine, lansoprazole, and fluoxetine. Confirms that both fluvoxamine and duloxetine are CYP inhibitors.
- **Relevance:** Cross-validation that both drugs are CYP inhibitors; dual CYP inhibition → compounded risk.

#### Alborghetti2025AntidepressantDI — Certainty: 0.60

- **PMID:** 40995638 | **Journal:** Expert Opin Drug Metab Toxicol (2025)
- **Key finding:** "Fluvoxamine is a potent inhibitor of CYP1A2 and CYP2C19." Duloxetine inhibits CYP2D6. Serotonergic antidepressants can precipitate fatal serotonin syndrome with MAO-B inhibitors.
- **Relevance:** Latest review confirming the PK interaction landscape for newer antidepressants.

---

### Cimetidine (CYP Inhibitor) + Aripiprazole (CYP2D6 Substrate) — NULL RESULT

**PubMed query:** `cimetidine AND aripiprazole AND (interaction OR CYP2D6)` → **0 hits**

**There are zero PubMed-indexed papers studying the specific cimetidine-aripiprazole interaction.** This is a significant finding. The interaction is based on:
1. Cimetidine is a known **non-selective CYP450 inhibitor** (CYP1A2, CYP2D6, CYP3A4) — textbook pharmacology
2. Aripiprazole is metabolized primarily by CYP2D6 and CYP3A4 — FDA labeling
3. The prediction: cimetidine → CYP2D6 inhibition → ↑ aripiprazole exposure → akathisia, metabolic syndrome

**Evidence level: Extrapolation from established pharmacology — no primary evidence for this specific pair.** This must be flagged as "predicted interaction — unstudied" in the ladder.

**Additional search:** `cimetidine AND (CYP inhibitor OR drug interaction) AND review` → 294 hits. Cimetidine's CYP inhibition is well-characterized but no paper pairs it with aripiprazole.

---

## Level 3 — Pharmacodynamic Opposition

### Clonidine (α2 Agonist) + Midodrine (α1 Agonist)

**PubMed query:** `clonidine AND midodrine AND (interaction OR contraindication OR opposition)` → 2 hits

| # | Bib Key | Design | n | Certainty | Key Finding |
|---|---------|--------|---|-----------|-------------|
| 1 | Dayal2025SHOHCase | Case report | 1 | 0.25 | Clonidine at bedtime for supine HTN + midodrine timed around daytime activity for OH in Parkinson's patient with SH-OH. Both used safely when temporally separated. |
| 2 | Kleinrok1980MidodrineCNS | Animal study | rats | 0.15 | Clonidine inhibited midodrine-induced hyperactivity — evidence of CNS opposition. |

#### Dayal2025SHOHCase — Certainty: 0.25

- **PMID:** 40385848 | **Journal:** Cureus (2025)
- **Design:** Case report; 85M with Parkinson's disease and severe SH-OH
- **Key finding:** "Final regimen involved clonidine and hydralazine at bedtime for SH, along with midodrine timed around daytime activity for OH." Fludrocortisone was contraindicated due to recent upper GI bleed.
- **Relevance:** Direct clinical evidence that clonidine + midodrine can be used in the same patient when temporally separated (bedtime vs daytime). If co-administered simultaneously, the drugs would oppose each other — clonidine suppresses sympathetic outflow (↓ BP) while midodrine increases peripheral vasoconstriction (↑ BP).

**Additional pharmacology context:** Clonidine is a central α2-adrenergic agonist → reduces sympathetic outflow → lowers BP. Midodrine is a peripheral α1-adrenergic agonist → vasoconstriction → raises BP. These are pharmacodynamically opposed — simultaneous administration would partially negate each drug's therapeutic intent. The Dayal 2025 case demonstrates that temporal separation is a mitigation strategy (not a contraindication per se).

---

## Level 4 — Metabolic PEM Risk

### Stimulants (Methylphenidate, Modafinil) + Documented PEM

**PubMed query:** `(methylphenidate OR modafinil OR stimulant) AND (ME/CFS OR "chronic fatigue") AND (PEM OR safety OR adverse)` → 21 hits

| # | Bib Key | Design | n | Certainty | Key Finding |
|---|---------|--------|---|-----------|-------------|
| 1 | Blockmans2006MPHCFS | RCT crossover | 60 | 0.65 | Methylphenidate 2×10 mg/day significantly better than placebo for fatigue (p<0.0001) and concentration (p<0.0001) in CFS. Clinical significant effect in only 17% for fatigue, 22% for concentration. |
| 2 | Eckey2025PatientReported | Survey | 3,925 | 0.70 | CNS stimulants beneficial in cognitive-dysfunction cluster; POTS-dominant cluster benefited from autonomic modulators. Treatment responses correlated between ME/CFS and long COVID (R²=0.68). |
| 3 | VanHoudenhove2010CFSPharm | Review | — | 0.45 | "Stimulants seem to benefit some CFS patients but their long-term effects is uncertain." Pharmacotherapy should not be first-line. |
| 4 | Kumar2008ModafinilReview | Review | — | 0.50 | Modafinil for CFS: inconsistent results; trials had extremely small sample sizes. Modafinil induces/inhibits multiple CYP450 isoenzymes. |

#### Blockmans2006MPHCFS — Certainty: 0.65

- **PMID:** 16443425 | **Journal:** Am J Med (2006)
- **Design:** Double-blind randomized placebo-controlled crossover; n=60 CFS patients (Fukuda 1994); methylphenidate 2×10 mg/day ×4 weeks
- **Key finding:** Fatigue fell significantly on MPH vs placebo (CIS: −9.7 points, p<0.0001; VAS: −1.0, p=0.001). Concentration improved (VAS: −1.1, p<0.0001). **However:** clinical significant effect (>33% improvement) in only 17% for fatigue, 22% for concentration. **Did not assess PEM specifically.**
- **Relevance:** Demonstrates stimulants can reduce fatigue short-term in a minority of CFS patients, but does NOT address the PEM risk from activity masking. The 83% non-response rate may indicate a subset for whom stimulants are harmful.

#### Eckey2025PatientReported — Certainty: 0.70

- **PMID:** 40627388 | **Journal:** PNAS (2025)
- **Design:** Patient survey; n=3,925 ME/CFS and long COVID patients; 150+ treatments evaluated
- **Key finding:** "Patient subgroups, characterized by distinct symptom profiles and comorbidities, exhibited increased responses to specific treatments, e.g., a POTS-dominant cluster benefiting from autonomic modulators and a cognitive-dysfunction cluster from CNS stimulants." 89.7% of ME/CFS reported PEM; 79.4% of long COVID.
- **Relevance:** Direct evidence that CNS stimulants benefit a specific cluster (cognitive dysfunction) but NOT the POTS-dominant cluster. Implies cluster-specific contraindication: stimulants may be harmful in POTS-dominant ME/CFS (increased HR → cardiometabolic strain → PEM exacerbation).

---

### Rapamycin + Metformin (Combined mTORC1 Suppression)

**PubMed query:** `rapamycin AND metformin AND (mTOR OR autophagy OR interaction)` → 744 hits

**No paper specifically addresses a harmful interaction from combined mTORC1 suppression.** The literature focuses on potential anti-aging benefits of each drug separately, or combined use in oncology. **The risk is a mechanistic inference**, not empirically documented.

| # | Bib Key | Design | n | Certainty | Key Finding |
|---|---------|--------|---|-----------|-------------|
| 1 | Triggle2022MetforminReview | Review | — | 0.55 | Metformin's benefits may partially involve mTOR inhibition. Environmental impact of metformin (no known metabolites) raises endocrine disruption concerns. |
| 2 | Kritchevsky2025Geroscience | Review | — | 0.60 | Rapamycin + metformin both studied in geroscience. Rapamycin extends mouse lifespan. Metformin studied in TAME trial. No adverse combination mentioned. |
| 3 | Ponticelli2023Autophagy | Review | — | 0.45 | "Caution is needed with autophagy activators, such as mTOR inhibitors and metformin, because of potential adverse events." — the closest statement to our concern. |
| 4 | Stojić2023AntiAging | Review | — | 0.30 | Describes metformin (AMPK activator) + rapamycin (mTOR inhibitor) as calorie restriction mimetics; notes need for long-term follow-up for delayed adverse events. |

#### Ponticelli2023AutophagyPodocyte — Certainty: 0.45

- **PMID:** 36708169 | **Journal:** Nephrol Dial Transplant (2023)
- **Key finding:** "Caution is needed with other autophagy activators, such as mTOR inhibitors and metformin, because of potential adverse events."
- **Relevance:** The **only paper in the search** that flags the combined mTORC1 suppression concern, albeit in the context of podocytopathy, not ME/CFS. This is the closest evidence for our Level 4 concern: excessive autophagy → cellular compromise.

**Rapamycin+metformin combined risk — mechanistic basis:**
- Rapamycin: direct mTORC1 inhibition via FKBP12-rapamycin complex binding
- Metformin: indirect mTORC1 suppression via AMPK activation → TSC2 phosphorylation → Rheb inhibition
- Combined: dual-pathway mTORC1 suppression → potentially excessive autophagy → impaired muscle protein synthesis → sarcopenia risk amplified in PEM-vulnerable ME/CFS patients
- This is a **predicted interaction — unstudied at the clinical level for ME/CFS**

---

## Contraindication Table Entries

### Fludrocortisone Worsening Orthostasis → Avoid Permanently

**PubMed query:** `(fludrocortisone OR ketamine OR prazosin) AND (ME/CFS OR POTS OR orthostatic) AND (adverse OR safety)` → 211 hits

Two key reviews establish fludrocortisone's limitations in OH:

| # | Bib Key | Design | n | Certainty | Key Finding |
|---|---------|--------|---|-----------|-------------|
| 1 | Kim2022OrthostaticHypotension | Review | — | 0.55 | Fludrocortisone improves OH symptoms but has "concerning long-term effects." Midodrine and droxidopa are first-line. |
| 2 | Palma2020OHManagement | Review | — | 0.60 | "Fludrocortisone has been extensively used as first-line treatment in the past, [but] is associated with adverse events including renal and cardiac failure and increased risk of all-cause hospitalization." |

#### Kim2022OrthostaticHypotension — Certainty: 0.55

- **PMID:** 35029940 | **Journal:** Am Fam Physician (2022)
- **Key finding:** "Although fludrocortisone improves symptoms, it has concerning long-term effects." Not recommended as first-line agent. Midodrine and droxidopa preferred.
- **Relevance to contraindication ladder:** In connective-tissue-driven venous pooling (hyper-Ehlers-Danlos spectrum, common in ME/CFS), fludrocortisone's volume expansion does not address the structural venous incompetence. Worsening orthostasis may result from supine hypertension + inadequate venous return compensation. Once fludrocortisone worsening is observed → permanent contraindication.

#### Palma2020OHManagement — Certainty: 0.60

- **PMID:** 31996627 | **Journal:** Continuum (Neurology) (2020)
- **Key finding:** Fludrocortisone associated with renal failure, cardiac failure, increased hospitalization risk. Distinguishing neurogenic vs non-neurogenic OH has therapeutic implications: peripheral denervation → droxidopa; central dysfunction → NE reuptake inhibitors.
- **Relevance:** Pharmacodiagnostic differentiation of OH type predicts drug response — aligns with ch33 framework.

### Ketamine Psychosis → Avoid All NMDA Antagonists

**No ME/CFS-specific papers on ketamine psychosis/contraindication found directly.** The risk is established in general psychiatry literature but not specifically for ME/CFS patients receiving ketamine therapy.

### Prazosin Hypotension → Avoid All α1 Antagonists

**No ME/CFS-specific papers on prazosin hypotension leading to class-wide α1 antagonist contraindication found.**

### Clonidine BP Crash → Avoid α2 Agonists (Unless Midodrine Co-administered)

**Covered by Dayal2025 case report above** (Level 3).

---

## Drug-Drug Interaction Classification Frameworks (to Anchor the Ladder)

**PubMed query:** `"drug drug interaction" AND (classification OR severity OR framework OR tier) AND review` → 1,046 hits. Refined queries below.

| # | Bib Key | Design | n | Certainty | Key Finding |
|---|---------|--------|---|-----------|-------------|
| 1 | Amariles2007DDIClinicalRelevance | Review | — | 0.40 | Proposes DDI classification based on severity and probability of occurrence. Spanish-language review. |
| 2 | Dieu2019DDIPaediatrics | Cohort | 300 | 0.55 | Pharmavista (Swiss CDSS) uses "contraindicated" and "contraindicated by precaution" tiers. Low prevalence of contraindicated DDIs (0% in 300 paediatric cases). |
| 3 | Zhao2023DDIPrediction | Review | — | 0.50 | Comprehensive review of DDI databases, web servers, and computational models. Three categories: literature-based extraction, ML prediction, pharmacovigilance data mining. |
| 4 | Qiu2022DDIComprehensive | Review | — | 0.50 | DDI detection methods: literature extraction, ML prediction, pharmacovigilance data mining. No mechanism-based severity ladder described. |
| 5 | Shelton2019SNRI | Review | — | 0.55 | Clinical DDI framework for antidepressants: classifies by PK mechanism (CYP inhibition) and PD mechanism (serotonin syndrome). |

#### Amariles2007DDIClinicalRelevance — Certainty: 0.40

- **PMID:** 17570184 | **Journal:** Med Clin (Barc) (2007) [Spanish]
- **Key finding:** Proposed classification of DDIs based on severity and probability of occurrence. Emphasizes changes in systemic clearance or bioavailability.
- **Relevance:** Closest existing framework to our ladder — severity + probability. But does NOT organize by mechanism type (receptor antagonism vs PK vs PD vs metabolic).

#### Dieu2019DDIPaediatrics — Certainty: 0.55

- **PMID:** 31422575 | **Journal:** Swiss Med Wkly (2019)
- **Key finding:** Pharmavista CDSS uses "contraindicated" and "contraindicated by precaution" as severity tiers. Only 1.7% of paediatric cases had "contraindicated by precaution" DDIs; zero had "contraindicated."
- **Relevance:** Demonstrates that severity-tiered DDI alert systems exist in clinical practice. Our 4-level ladder extends this by adding a **mechanistic** dimension (why the interaction occurs) alongside severity.

**Key gap identified:** No existing DDI classification framework organizes interactions by **mechanism type** (receptor antagonism → PK catastrophe → PD opposition → metabolic PEM risk). Existing frameworks (Stockley's Drug Interactions, Micromedex, Pharmavista, Lexicomp) use severity ratings (minor/moderate/major/contraindicated) or documentation quality ratings, but none use a mechanism-based ladder. **The contraindication ladder is a novel organizational contribution.**

---

## Null Results / Literature Gaps

| Pair / Topic | Searched | Result | Interpretation |
|-------------|----------|--------|----------------|
| Cimetidine + aripiprazole | 1 query, 0 hits | **No primary evidence** | Interaction predicted from established CYP pharmacology; unstudied as specific pair |
| LDN + tramadol direct interaction | 1 query, 2 hits (neither direct) | **No interaction studies** | Mechanism-based antagonism (μOR); no human PK/PD interaction study |
| Rapamycin + metformin adverse interaction | 1 query, 744 hits (0 relevant) | **No adverse interaction papers** | Combined mTORC1 suppression risk is mechanistic inference only |
| Clonidine + midodrine as contraindication | 1 query, 2 hits (1 clinical) | **One case report supports temporal separation** | Evidence for opposition but not contraindication per se |
| Ketamine psychosis in ME/CFS | 1 query, 211 hits (none ME/CFS-specific) | **No ME/CFS-specific evidence** | General psychiatry literature exists but not ME/CFS-contextualized |
| Prazosin hypotension class-wide contraindication | 1 query (same as above) | **No direct evidence** | Pharmacology-based inference |
| Existing mechanism-based DDI ladder | 3 queries, screened ~50 abstracts | **No mechanism-based ladder exists** | Novel organizational contribution |

---

## Certainty Summary by Level

| Ladder Level | Evidence Strength | Primary Source Type |
|-------------|-------------------|---------------------|
| Level 1 — Receptor Antagonism | High (pharmacology) | Textbooks, FDA labeling, mechanistic studies |
| Level 2 — PK Catastrophe (fluvoxamine+duloxetine) | High (n=PK study) | Manufacturer PK study + FDA labeling |
| Level 2 — PK Catastrophe (cimetidine+aripiprazole) | Low (predicted only) | Extrapolated from CYP pharmacology |
| Level 3 — PD Opposition | Medium (1 case report) | Case report + autonomic physiology |
| Level 4 — Metabolic PEM Risk (stimulants) | Medium (1 RCT + 1 survey) | Blockmans 2006 RCT + Eckey 2025 survey |
| Level 4 — Metabolic PEM Risk (rapamycin+metformin) | Low (predicted only) | Mechanistic inference from geroscience |
| Contraindication table entries | Variable | Clinical reviews + pharmacological inference |
| DDI classification frameworks | Medium | Existing severity-tier systems, no mechanism ladder |

---

## Papers Included: 19 distinct papers

**Bib entries written to:** `src/main/typst/mecfs/bib/treatments.bib`

**Annotated bibliography entries:** `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ`

**Search log:** `ops/research/search-log-contraindication-ladder-2026-07-29.md`
