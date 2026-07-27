# Literature Summary — Pulsed Therapy / Tachyphylaxis in Chronic Illness Pharmacology
**Date:** 2026-07-27
**Research Stream:** `pulsed-therapy`
**Agent:** literature-integrator (deepseek-v4-pro)

## Executive Summary

12 papers across 4 converging literatures: (1) time-dependent hormesis, (2) GPCR tachyphylaxis/resensitization, (3) intermittent rapamycin dosing, (4) drug withdrawal/rebound. The central finding: **no paper unifies these streams into a pulsed-therapy framework for chronic illness pharmacology.** The three literatures converge but have not been integrated. The ME/CFS paper's 17-drug hormesis framework is a natural scaffold for this integration.

### Evidence Strength by Topic
| Topic | Papers | Quality |
|-------|--------|---------|
| Time-dependent hormesis models | 3 | High — Calabrese corpus, peer-reviewed |
| GPCR tachyphylaxis/resensitization | 4 | High — multiple labs, conserved mechanisms |
| Intermittent rapamycin dosing | 2 | High — Science/Geroscience, in vivo |
| Drug withdrawal/rebound | 1 | Medium — 1980 review, still foundational |
| Clinical pulse therapy (psoriasis) | 1 | Medium — narrative review |
| Nrf2 adaptive hormesis (background) | 1 | Medium — review |

### Critical Gap
**No empiric evidence on pulsed dosing in ME/CFS or fibromyalgia.** No clinical trials. LDN 4-6h blockade window is the closest clinical application of time-dependent receptor pharmacology in ME/CFS, but it has not been systematically studied as a "pulsing" strategy. This is a genuine conceptual gap the paper addresses.

---

## Papers by Category

### 1. Time-Dependent Hormesis (Calabrese Corps)

#### Sun2018SeesawHormesis (PMID 29679784)
- **Journal:** Chemosphere (2018)
- **Design:** Dose-time-response study; 5 antibacterial chemicals on *A. fischeri* bioluminescence
- **Key claim:** Proposes a "swinging seesaw" model for time-dependent hormesis — stimulatory and inhibitory effects integrate across dose AND time simultaneously. The model explains why hormetic features are time-dependent: low-dose stimulation that appears at one timepoint may be absent or reversed at another.
- **Quality:** High — published in Chemosphere; quantitative dose-time-response design; direct mechanistic modeling
- **Certainty:** 0.75 (mechanistic model, in vitro, single organism system, no human data)
- **Relevance:** Provides the formal model for why dose-response is not just dose-dependent but time-dependent. Central theoretical pillar for pulsed therapy: the "window" is a 3D volume (dose × time × response), not a 2D curve.

#### Mushak2016TemporalHormesis (PMID 27396315)
- **Journal:** Science of the Total Environment (2016)
- **Design:** Critical review — temporal stability of hormetic dose-response
- **Key claim:** Asks whether hormesis is a "temporary stop on the road to thresholds." Many hormetic responses are **transitory** — they appear at one exposure duration and disappear with continued exposure. This directly implies that continuous dosing extinguishes the therapeutic window that pulsed dosing preserves. Notes that temporal persistence of hormesis is under-studied and often assumed rather than demonstrated.
- **Quality:** High — critical review in well-regarded journal; identifies genuine gap
- **Certainty:** 0.65 (review, not empirical; raises question; environmental toxicology focus)
- **Relevance:** Foundation for why therapeutic windows close with continuous dosing. If hormesis is transient, then continuous drug delivery is inherently self-limiting — the benefit fades. Implies pulsed dosing is not just an optimization strategy but may be required to maintain hormetic benefit.

#### Calabrese2016PreconditioningHormesis (PMID 26748033)
- **Journal:** Pharmacological Research (2016)
- **Design:** Systematic review of preconditioning studies with dose-response + mechanism
- **Key claim:** The optimal conditioning (hormetic) dose that produced maximal protective mechanism activation was the SAME dose that was optimally protective against the challenge dose. Receptor antagonists/inhibitors that blocked the conditioning response abolished the subsequent protection. **Establishes that preconditioning-induced protection is directly mediated by the hormetic mechanism, with defined temporal profiles.** Conditioning → protection time window matters.
- **Quality:** High — Pharmacological Research; systematic inclusion criteria; mechanistic chains verified
- **Certainty:** 0.75
- **Relevance:** Temporal optimization of dosing is systematically linked to mechanism. Conditioning dose must precede challenge dose with correct timing. Translates to clinical scenario: drug doses must be timed so hormetic preconditioning window is active when pathology is active.

---

### 2. GPCR Tachyphylaxis, Desensitization, and Resensitization

#### CostaNeto2025GPCRTachyphylaxis (PMID 40400289)
- **Journal:** Clinical Science (2025)
- **Design:** Comprehensive review — GPCR signaling complexity, tachyphylaxis, drug discovery
- **Key claim:** GPCR tachyphylaxis is governed primarily by the **ligand's dissociation rate (k_off)** — i.e., high residence time — rather than β-arrestin-mediated desensitization alone. Internalized receptors remain active when bound to ligands with high residence time, favoring sustained endosomal signaling. **This directly implies that ligands with shorter receptor residence times (intermittent/pulsed delivery) may avoid tachyphylaxis.**
- **Quality:** High — Clinical Science; comprehensive review from leading GPCR group; mechanistic depth
- **Certainty:** 0.70 (review; strong mechanistic evidence; conceptual novelty)
- **Relevance:** Translates directly to ME/CFS pharmacology: for drugs with high receptor residence time (e.g., beta-blockers, H1 antihistamines, LDN), tachyphylaxis may develop via sustained endosomal signaling, and pulsed/intermittent dosing could prevent this by allowing receptor recycling to the surface in a resensitized state.

#### Gupta2018GPCRResensitization (PMID 29776605)
- **Journal:** International Review of Cell and Molecular Biology (2018)
- **Design:** Comprehensive review — GPCR resensitization mechanisms
- **Key claim:** GPCR function requires coordinated activation → desensitization → **resensitization**. Desensitized GPCRs internalize into endosomes where protein phosphatases dephosphorylate them (resensitization), then recycle back to the membrane as naive receptors. This cycle is exquisitely regulated. Resensitization has been under-studied compared to activation and desensitization.
- **Quality:** High — IRCMB; authoritative review
- **Certainty:** 0.70
- **Relevance:** Resensitization is the cellular mechanism that restores drug sensitivity after a drug-free interval. Provides molecular rationale for drug holidays: the receptor population recovers during the off-period. Without off-periods, receptors remain in desensitized internal pools.

#### Kliewer2017GPCRDephosphorylation (PMID 28478994)
- **Journal:** Trends in Pharmacological Sciences (2017)
- **Design:** Review — GPCR dephosphorylation kinetics and spatial regulation
- **Key claim:** GPCR dephosphorylation starts immediately after activation at the plasma membrane and continues along the endocytic pathway. Dephosphorylation disrupts receptor-arrestin complexes, terminating arrestin-dependent signaling. Partially dephosphorylated GPCRs remain membrane-bound for renewed agonist activation. **Dephosphorylation kinetics set the temporal window for receptor re-availability.**
- **Quality:** High — TiPS; mechanisms well documented
- **Certainty:** 0.70
- **Relevance:** If the dephosphorylation half-life of a receptor is, e.g., 4–6 hours, then dosing every 4 hours would prevent resensitization while dosing every 12 hours would allow it. This directly informs optimal pulsing intervals for specific receptor targets.

#### Koch2008OpioidTolerance (PMID 18076994)
- **Journal:** Pharmacology & Therapeutics (2008)
- **Design:** Comprehensive review — opioid receptor internalization, tolerance, dependence
- **Key claim:** **Paradoxical finding:** agonist-induced μ-opioid receptor internalization can REDUCE tolerance in vivo rather than contribute to it. Desensitized and internalized receptors are rapidly recycled to the cell surface in a reactivated state, counteracting desensitization. Opioids with high internalization efficacy produce LESS tolerance than those with low internalization efficacy. Internalization → dephosphorylation → recycling → resensitization: a protective cycle.
- **Quality:** High — Pharmacology & Therapeutics; well-cited; mechanism-based
- **Certainty:** 0.75
- **Relevance:** Direct precedent for the receptor-recycling model of drug sensitivity preservation. The findings that internalization protects against tolerance suggest that intermittent drug presence (allowing the full internalize → dephosphorylate → recycle → resensitize cycle) may preserve therapeutic responsiveness better than continuous receptor occupancy.

#### Teyani2024Beta2Tachyphylaxis (PMID 38945277)
- **Journal:** Biochemical Pharmacology (2024)
- **Design:** Review — β2AR tachyphylaxis, ROS-mediated regulation
- **Key claim:** β2-agonists (bronchodilators) exhibit clinical tachyphylaxis over repeated/chronic use. ROS generated by β2AR activation can oxidize β2AR cysteine residues, producing distinct functional outcomes. **ROS-mediated receptor oxidation provides a direct mechanism for tachyphylaxis that is distinct from canonical arrestin-mediated desensitization.** The airway microenvironment (highly oxidative in disease) amplifies this.
- **Quality:** High — Biochem Pharmacol; novel mechanism; clinically grounded
- **Certainty:** 0.65
- **Relevance:** If oxidative stress amplifies receptor tachyphylaxis, then patients with high oxidative burden (ME/CFS) are at elevated risk of drug tachyphylaxis. Pulsed dosing would reduce cumulative ROS exposure at the receptor. This provides a pathophysiological rationale for why ME/CFS patients may be especially susceptible to drug tolerance.

---

### 3. Intermittent Rapamycin Dosing (Paradigm Case)

#### Konopka2023RapamycinTherapeutic (PMID 37801202)
- **Journal:** GeroScience (2023)
- **Design:** Review + clinical trial preview — rapamycin/RAP PAC/EVERLAST trials
- **Key claim:** While mTORC1 inhibition promotes healthy aging, many negative side effects of rapamycin are associated with "off-target" mTORC2 inhibition. Differences in kinetics and molecular mechanisms by which rapamycin inhibits mTORC1 vs mTORC2 suggest a **therapeutic window exploitable through intermittent dosing**. Optimal intermittent schedules in humans remain unknown but several clinical trials are addressing this.
- **Quality:** High — GeroScience; from leading rapamycin-aging lab; clinical trial context
- **Certainty:** 0.75
- **Relevance:** The paradigmatic case of how different target complexes (mTORC1 vs mTORC2) have different temporal sensitivities to the same drug. This principle — differential off-rates for therapeutic vs adverse targets — generalizes to other drugs in the hormesis framework.

#### ArriolaApelo2016RapamycinIntermittent (PMID 26463117)
- **Journal:** Aging Cell (2016)
- **Design:** In vivo — C57BL/6J mice; compared daily vs intermittent rapamycin
- **Key finding:** An intermittent rapamycin dosing schedule (2 mg/kg every 5 days) had minimal effects on glucose tolerance, reduced impact on pyruvate tolerance, fasting glucose/insulin, beta-cell function, and the immune system compared to daily treatment. **Daily rapamycin caused metabolic side effects; intermittent preserved mTORC1 inhibition benefits while sparing mTORC2.**
- **Quality:** High — Aging Cell; rigorous in vivo; dose-response comparison
- **Certainty:** 0.80
- **Relevance:** Empirical proof that intermittent = better for a drug with dual complex targets. Directly translatable: intermittent dosing separates therapeutic effects from adverse effects when they are mediated by different targets with different temporal dynamics.

---

### 4. Drug Withdrawal / Rebound (Risk Counterpart)

#### Hodding1980DrugWithdrawal (PMID 7008358)
- **Journal:** Western Journal of Medicine (1980)
- **Design:** Literature review — drug withdrawal syndromes
- **Key claim:** Sedative-hypnotics, opiates, corticosteroids, clonidine, tricyclic antidepressants, and beta-blockers meet criteria for withdrawal syndromes. Gradual tapering is recommended. **Defines criteria for withdrawal syndrome identification.**
- **Quality:** Medium — dated 1980; foundational review; clinical
- **Certainty:** 0.50
- **Relevance:** The risk counterpart to pulsed therapy: some drugs with tachyphylaxis also have rebound/withdrawal syndromes if stopped abruptly. Any pulsed-therapy framework must account for withdrawal risk. Gradual tapering vs rapid pulsing are opposite strategies — the framework must determine which applies to which drugs.

---

### 5. Clinical Pulse Therapy Precedent

#### Papp2021ProactivePsoriasis (PMID 34418251)
- **Journal:** Dermatologic Therapy (2021)
- **Design:** Narrative review — proactive topical psoriasis therapy
- **Key claim:** Emerging paradigm shift toward proactive treatment once skin is completely clear, as a strategy to enhance disease control without compromising safety. Chronic continuous topical corticosteroids carry safety concerns; pulse/proactive maintenance preserves benefit while reducing cumulative exposure.
- **Quality:** Medium — narrative review; dermatology focused; industry-funded authors
- **Certainty:** 0.55
- **Relevance:** Direct clinical precedent for "pulse therapy" paradigm — treating intermittently to maintain effect while avoiding continuous exposure side effects. Psoriasis is an autoimmune/inflammatory chronic condition: conceptually analogous to the inflammatory maintenance problem in ME/CFS.

---

### 6. Nrf2 Adaptive Hormesis (Background Mechanism)

#### Son2008HormeticPhytochemicals (PMID 18543123)
- **Journal:** NeuroMolecular Medicine (2008)
- **Design:** Review — hormetic dietary phytochemicals, Nrf2/ARE pathway
- **Key claim:** Phytochemicals activate adaptive cellular stress response pathways (hormesis/preconditioning) at subtoxic doses. The Nrf2/ARE pathway serves as a prototypical neuroprotective mechanism. The concept that "noxious" properties of phytochemicals at low doses induce beneficial adaptive responses = hormesis applied to dietary pharmacology.
- **Quality:** Medium — review; NIH Intramural; foundational but superseded
- **Certainty:** 0.55
- **Relevance:** Background for Nrf2 activator pulsatile dosing. If Nrf2 activation is hormetic (benefit at low/intermittent, tolerance/depletion at continuous), then drugs like sulforaphane, NAC, quercetin that activate Nrf2 may benefit from pulsed administration.

---

## Cross-Cutting Themes

### Theme 1: The Resensitization Window
Across GPCR, opioid, β2AR, and mTOR literatures, a consistent kinetic principle emerges: **receptor resensitization requires a drug-free interval.** The interval length is receptor-specific (determined by dephosphorylation half-life, recycling rate, and endosomal trafficking). Continuous dosing fills this interval, preventing the resensitization that would otherwise occur.

### Theme 2: Transient vs Persistent Hormesis
Mushak (2016) and Sun (2018) converge on the same finding from different angles: hormetic responses are **time-dependent** and often **transient**. The therapeutic window is a 3D volume (dose × time × response), and failing to account for time collapses it into a potentially misleading 2D curve.

### Theme 3: Differential Off-Rate Principle
Rapamycin's mTORC1 vs mTORC2 selectivity depends on differential off-rates. CostaNeto (2025) generalizes this: ligand residence time (k_off) determines tachyphylaxis liability. Drugs with slow k_off at therapeutic target but fast k_off at adverse target are ideal for intermittent dosing — the adverse receptor resensitizes during the pause while the therapeutic receptor remains modulated.

### Theme 4: ME/CFS-Specific Vulnerability
Teyani (2024) links oxidative microenvironment to accelerated receptor tachyphylaxis. ME/CFS is characterized by oxidative stress across multiple studies. This creates a convergence: the disease state that most needs sustained pharmacology is the one in which receptor tachyphylaxis is most likely.

---

## Quality Summary Table

| Bib Key | Design | n / System | Journal | Certainty |
|---------|--------|-----------|---------|-----------|
| Sun2018SeesawHormesis | Dose-time-response model | In vitro | Chemosphere | 0.75 |
| Mushak2016TemporalHormesis | Critical review | — | Sci Total Environ | 0.65 |
| Calabrese2016PreconditioningHormesis | Systematic review | Multiple in vitro/in vivo | Pharmacol Res | 0.75 |
| CostaNeto2025GPCRTachyphylaxis | Comprehensive review | — | Clin Sci | 0.70 |
| Gupta2018GPCRResensitization | Comprehensive review | — | IRCMB | 0.70 |
| Kliewer2017GPCRDephosph | Review | — | Trends Pharmacol Sci | 0.70 |
| Koch2008OpioidTolerance | Comprehensive review | — | Pharmacol Ther | 0.75 |
| Teyani2024Beta2Tachyphylaxis | Review | — | Biochem Pharmacol | 0.65 |
| Konopka2023RapamycinTherapeutic | Review + trials | — | GeroScience | 0.75 |
| ArriolaApelo2016RapamycinIntermittent | In vivo | Mice | Aging Cell | 0.80 |
| Hodding1980DrugWithdrawal | Review | — | West J Med | 0.50 |
| Papp2021ProactivePsoriasis | Narrative review | — | Dermatol Ther | 0.55 |

---

## Evidence Gaps (for subsequent phases)
1. No human RCTs of pulsed vs continuous dosing for any ME/CFS-relevant drug
2. No LDN pulsatile dosing studies beyond theoretical 4–6h window
3. No clinical trials on Nrf2 activator pulsed dosing (sulforaphane, NAC)
4. No receptor resensitization half-life data for ME/CFS-relevant drug targets (TLR4, H1, D1, α2A, β2, GABA-A, mTORC1/C2, GR)
5. No withdrawal/rebound risk data specific to ME/CFS population
6. No formal "optimal pulsing interval" calculation methods for clinical application
