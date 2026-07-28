# Literature Summary: Null Subtyping — Absent vs Blocked vs Overwhelmed Receptor Pharmacology in ME/CFS
## Date: 2026-07-28 | research_stream: null-subtyping

---

## Framework Motivation

The existing pharmacodiagnostic framework treats null drug responses as binary: "mechanism eliminated." But there are three distinct null types with mutually exclusive diagnostic implications. A drug failure that looks like "receptor absent" under binary null logic may actually be "receptor blocked by GPCR autoantibody" (blocked) or "receptor outcompeted by elevated kynurenic acid" (overwhelmed). Distinguishing probes exist: bypass agonist (absent), allosteric ligand (blocked), concentration-competition (overwhelmed).

### Null Subtype Diagnostic Table

| Null Type | Biochemical State | Distinguishing Probe | If Probe Works | If Probe Fails |
|-----------|------------------|---------------------|----------------|----------------|
| ABSENT | Receptor never present (genetic null, tissue never developed) | Bypass agonist (e.g., β3-AR agonist when β2-AR null) | → Mechanism is absent; bypass succeeds | → Cannot exclude blocked |
| BLOCKED | Orthosteric site occupied (AAb, competitive ligand, PTM-locked inactive) | Allosteric ligand (e.g., salbutamol at β2-AR when AAb occupy orthosteric) | → BLOCKED mechanism; AAb occupy orthosteric but receptor structurally present | → May be absent OR allosteric site also disrupted |
| OVERWHELMED | Receptor functional but outcompeted by supraphysiological endogenous antagonist | Concentration-competition (escalating drug dose to overcome antagonist) | → OVERWHELMED; receptor works when concentration exceeds endogenous antagonist | → May be absent, blocked, or endogenous antagonist affinity too high |

---

## Paper 1: Finlay2020receptorOccupancy — Foundational Receptor Occupation Theory

**Full Citation:** Finlay DB, Duffull SB, Glass M. 100 years of modelling ligand–receptor binding and response: A focus on GPCRs. _Br J Pharmacol_. 2020;177(7):1501-1520.
**DOI:** 10.1111/bph.14907
**Certainty:** 0.90

**Relevance:** Foundational review of receptor occupancy theory, competitive antagonism, null methods, pA2/pKB derivation. Covers the framework enabling quantitative distinction between absent (no binding site), blocked (competitor occupies site), and functional antagonism. Establishes that a null response does not equate to receptor absence — it only indicates that occupancy by agonist at that concentration is insufficient.

**Citation for framework:** "For simple competitive antagonism with no receptor reserve, the concentration of antagonist required to shift the agonist dose-response curve is described by the pA2. The relationship between receptor occupancy and response is not necessarily linear, and the presence of spare receptors means that near-maximal responses can be achieved at low fractional occupancies."

**Key Framework Contributions:**
- pA2 concept: the negative logarithm of antagonist concentration producing 2-fold shift in agonist curve
- Receptor reserve/spare receptors: full agonist response at <100% occupancy — null at standard dose may not mean receptor absent
- Competitive vs non-competitive antagonism: distinguishes reversibility of block
- Allosteric modulation: cooperativity factor α linking orthosteric and allosteric sites

---

## Paper 2: Skiba2021AAbGPCRmodulation — Autoantibodies as Endogenous GPCR Modulators

**Full Citation:** Skiba MA, Kruse AC. Autoantibodies as endogenous modulators of GPCR signaling. _Trends Pharmacol Sci_. 2021;42(3):135-150.
**DOI:** 10.1016/j.tips.2020.11.013
**Certainty:** 0.85

**Relevance to Framework:** Establishes that autoantibodies targeting GPCRs can function as orthosteric antagonists (blocked null), allosteric modulators, biased agonists (activating β-arrestin but not G-protein), or inverse agonists. Different AAb mechanisms produce different null response patterns that are distinguishable pharmacologically.

**Key Findings:**
- GPCR AAb can promote receptor internalization and desensitization via β-arrestin recruitment
- Antibody binding site (extracellular loop 1, 2, 3, or N-terminus) determines functional effect: ECL2 binding most commonly produces agonist-like activation; ECL1 binding can produce antagonism
- AAb-mediated blockade is structurally reversible (unlike genetic null) but functionally persistent while AAb present
- Allosteric small molecules can still bind and modulate receptor function even when orthosteric site is AAb-occupied

**Framework-specific implication:** A GPCR AAb occupying the orthosteric site (e.g., β2-AR ECL2) produces the BLOCKED null subtype. An allosteric ligand (e.g., Cmpd-6 at β2-AR) that binds a distinct site can bypass the block, confirming the receptor is structurally present. This is the basis for the allosteric probe in the BLOCKED subtype.

---

## Paper 3: Sunami2025GPCRPOTS — GPCR Autoantibodies in POTS with Allosteric Modulation

**Full Citation:** Sunami Y, Sugaya K, Takahashi K. G protein-coupled receptors related to autoimmunity in postural orthostatic tachycardia syndrome. _Immunol Med_. 2025;48(1):1-11.
**DOI:** 10.1080/25785826.2025.2457613 [PubMed provisional]
**Certainty:** 0.50

**Relevance to Framework:** Direct evidence that POTS-associated GPCR autoantibodies exert allosteric modulation of adrenergic and muscarinic receptors. Documents negative allosteric modulation of M2 receptor activity by autoantibodies. This provides a direct example where a drug targeting the orthosteric site (e.g., standard β-blocker) would show null response, but an allosteric modulator would produce response — the BLOCKED null subtype confirmed by probe.

**Key Findings:**
- POTS adrenergic receptor autoantibodies activated α1 and β2 receptors via allosteric mechanism
- M2 muscarinic autoantibodies produced negative allosteric modulation
- Allosteric mechanism means drug-receptor interaction depends on cooperativity between AAb binding site and orthosteric ligand binding site

**Certainty note:** 0.50 — recent review, relies primarily on CellTrend ELISA methodology; awaiting functional assay replication.

---

## Paper 4: DodgeKafka2026betaArrestinAAb — β-AR Autoantibody Functional Effects

**Full Citation:** Dodge-Kafka KL, Turcotte MG, Possidento SM, et al. β-Adrenergic Receptors: Not Always Outside-In. _Physiology_. 2026;41(4).
**DOI:** 10.1152/physiol.00026.2025
**Certainty:** 0.55

**Relevance to Framework:** Documents that β1-AR autoantibodies can produce sustained biased signaling (β-arrestin over G-protein) and receptor internalization — a form of chronic functional blockade distinct from simple orthosteric antagonism. This creates a null response to drugs that signal through Gαs while β-arrestin pathway remains active.

**Key Findings:**
- β1AR autoantibodies reduced plasma membrane receptor expression (internalization)
- Sustained activation producing chronic desensitization (homologous desensitization)
- β-arrestin-biased signaling: AAb activates β-arrestin pathway while Gαs pathway is desensitized
- This creates a partial null: Gαs-coupled drug responses are null despite receptor presence

**Framework-specific implication:** This is a hybrid case between BLOCKED and ABSENT. The receptor is structurally present (reversible with AAb removal) but functionally absent for certain signaling pathways due to desensitization/internalization. The probe here is a β-arrestin-biased ligand or a Gαi-biased ligand that activates pathways still accessible.

---

## Paper 5: Kavyani2024kynurenineMEcfs — Kynurenine Pathway in ME/CFS

**Full Citation:** Kavyani B, Ahn SB, Missailidis D, Annesley SJ, Fisher PR, Guillemin GJ, et al. Dysregulation of the kynurenine pathway, cytokine expression pattern, and proteomics profile link to symptomology in myalgic encephalomyelitis/chronic fatigue syndrome (ME/CFS). _Mol Neurobiol_. 2024;61(7):4728-4748.
**DOI:** 10.1007/s12035-023-03756-w
**PMID:** 38097810
**Certainty:** 0.60

**Relevance to Framework:** Direct ME/CFS study showing kynurenine pathway dysregulation. Reduced KYNA/QUIN ratio — meaning neuroprotective KYNA is depleted relative to neurotoxic QUIN. This is the opposite of the OVERWHELMED null mechanism (where KYNA is elevated). However, it documents the pathway is dysregulated in ME/CFS, establishing that KYNA levels are abnormal and direction matters for the OVERWHELMED subtype diagnosis.

**Key Findings:**
- ME/CFS patients showed altered tryptophan metabolism via kynurenine pathway
- Reduced KYNA/QUIN ratio in ME/CFS (neuroprotective KYNA depleted)
- Cytokines (IL-1β, TNF) correlated with kynurenine pathway enzymes
- Kynurenine pathway linked to proteomics-based symptom clusters

**Framework-specific implication:** This study shows KYNA depletion, not elevation. For the OVERWHELMED null subtype, we need elevated KYNA. The literature is split: some studies show elevated KYNA (Anderson 2014 depression/CFS with inflammation), others show depleted KYNA (Kavyani 2024). This means the OVERWHELMED null subtype only applies to the KYNA-elevated subset. A pharmacodiagnostic probe for OVERWHELMED would need to measure KYNA levels first, then test whether increasing drug concentration overcomes the null response — but only in patients with confirmed KYNA elevation.

---

## Paper 6: Hazrati2024kynureninePain — Kynurenine Pathway Across Chronic Pain Conditions

**Full Citation:** Hazrati E, Eftekhar SP, Mosaed R, et al. Understanding the kynurenine pathway: A narrative review on its impact across chronic pain conditions. _Mol Pain_. 2024;20:17448069241297714.
**DOI:** 10.1177/17448069241297714
**PMID:** 39618145
**Certainty:** 0.45

**Relevance to Framework:** Narrative review covering kynurenine pathway in chronic pain conditions including ME/CFS, fibromyalgia, and depression. Documents KYNA as endogenous NMDA antagonist with specific binding properties relevant to concentration-competition probe design.

**Key Findings:**
- KYNA interacts with NMDA receptors at the glycine co-agonist site (not the glutamate site)
- 7-Cl-KYNA is a synthetic analog with higher NMDA antagonist potency — could serve as positive control
- KYNA also antagonizes α7 nicotinic acetylcholine receptors
- Elevation of KYNA in inflammatory conditions is driven by IDO/TDO activation

**Framework-specific implication:** The glycine-site binding of KYNA at NMDA receptors means the concentration-competition probe must consider glycine concentration as a confounder. If KYNA is elevated and glycine is normal, escalating NMDA agonist or glycine-site agonist dose could overcome the KYNA block. This distinguishes KYNA-mediated OVERWHELMED from receptor-level BLOCKED (where AAb occupy the receptor itself, not the co-agonist site).

---

## Evidence Synthesis Across All Papers

### Strength of the Framework

The absent/blocked/overwhelmed distinction has strong theoretical grounding:
1. **Receptor occupancy theory** (Finlay2020) formally models competitive antagonism and distinguishes it from absence — this is century-old pharmacology, highest certainty
2. **GPCR AAb as endogenous antagonists** (Skiba2021) — AAb occupy orthosteric sites producing competitive blockade; well-established in multiple disease contexts
3. **KYNA as endogenous NMDA antagonist** (Schwarcz2012, Hazrati2024) — elevated in inflammation-driven conditions; could overwhelm drug responses at NMDA receptors

### Limiting Factors

1. **GPCR AAb in ME/CFS is contested** — Germain2025 (n=172, largest screen) found null result; ELISA-based studies are positive but may be detecting non-specific binding. The BLOCKED null subtype depends on the existence of truly pathogenic orthosteric-site autoantibodies.
2. **KYNA direction is inconsistent** — some studies show elevation (Anderson2014), others show depletion (Kavyani2024). The OVERWHELMED null subtype only applies to the KYNA-elevated subgroup.
3. **No probe validation studies** — no published experiment tests the allosteric bypass probe (salbutamol vs isoproterenol in AAb+ patients), the concentration-competition probe (escalating NMDA drug in high-KYNA patients), or the bypass agonist probe (β3-AR agonist when β2-AR null/blocked).

### Pharmacodiagnostic Implementation

For the pharmacodiagnostic matrix, null subtyping would add a third dimension:
- **Axis 1:** Drug → Mechanism (existing)
- **Axis 2:** Origin inference from response (existing)
- **Axis 3:** Null subtype diagnosis (new)

| Drug | Null Response | Possible Null Subtypes | Distinguishing Probe |
|------|---------------|----------------------|---------------------|
| Salbutamol (β2-AR agonist) | Null | ABSENT: β2-AR never expressed; BLOCKED: β2-AR AAb occupies orthosteric site; OVERWHELMED: unlikely (no known β2 endogenous antagonist) | Allosteric β2 modulator (BLOCKED probe); β3-AR agonist (ABSENT bypass) |
| NMDA antagonist | Null | ABSENT: NMDA receptor not expressed; BLOCKED: autoantibody occupies NMDA site (as in anti-NMDAR encephalitis); OVERWHELMED: elevated KYNA outcompetes drug at glycine site | Glycine-site agonist (OVERWHELMED probe); allosteric NMDA modulator (BLOCKED probe) |
| Propranolol (β-blocker) | Null | ABSENT: no sympathetic tone; BLOCKED: receptor already occupied by endogenous catecholamines; OVERWHELMED: impossible (antagonist cannot be outcompeted by antagonist) | Check baseline catecholamines (BLOCKED probe); isoproterenol challenge (ABSENT probe) |

---

## Negative/Null Findings

| Finding | Evidence | Implication |
|---------|----------|-------------|
| GPCR AAb in ME/CFS not replicated by high-throughput methods | Germain2025 n=172 REAP/Luminex null; Bynke2020 failed symptom correlations | BLOCKED null subtype contingent on AAb existence; may be false positive from CellTrend ELISA |
| IA symptom improvement not significant in independent centre | Anft2025: biomarkers improved, subjective symptoms did not | If AAb removal doesn't reverse null response, AAb may not be causal for the null |
| KYNA direction contested in ME/CFS | Kavyani2024 shows depletion; Anderson2014 shows elevation | OVERWHELMED null only applies to elevated-KYNA subset |
| No published sham-controlled IA trial for ME/CFS yet | IA-PACS-CFS (Preßler2024) and EXTINCT both completed but results pending | Causal role of GPCR AAb in ME/CFS symptoms remains unproven |

---

## Papers Summary

| # | Bib Key | First Author | Year | Topic | Certainty | Status |
|---|---------|-------------|------|-------|-----------|--------|
| 1 | Finlay2020receptorOccupancy | Finlay DB | 2020 | Receptor occupancy theory review | 0.90 | NEW |
| 2 | Skiba2021AAbGPCRmodulation | Skiba MA | 2021 | AAb as GPCR modulators | 0.85 | NEW |
| 3 | Sunami2025GPCRPOTS | Sunami Y | 2025 | GPCR AAb in POTS, allosteric | 0.50 | NEW |
| 4 | DodgeKafka2026betaArrestinAAb | Dodge-Kafka KL | 2026 | β-AR AAb functional effects | 0.55 | NEW |
| 5 | Kavyani2024kynurenineMEcfs | Kavyani B | 2024 | Kynurenine pathway ME/CFS | 0.60 | NEW |
| 6 | Hazrati2024kynureninePain | Hazrati E | 2024 | Kynurenine pathway pain review | 0.45 | NEW |

**Total: 6 new papers, 22 total supporting papers (6 new + 16 existing).**
