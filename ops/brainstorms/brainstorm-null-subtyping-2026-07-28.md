# Null Subtyping Extensions — Creative Brainstorm

*Session: 2026-07-28 · Trigger: "generate creative brainstorm ideas for extending the null subtyping framework"*
*Parent: brainstorm-pharmacodiagnostic-extensions-2026-07-28.md, section 2*

---

## Category 1 — Novel Hypotheses

### 1a. Null Subtype 4 — Biased: Receptor Present but Signaling-Mode Selective

Current framework: absent, blocked, overwhelmed. The β-arrestin-biased blockade is mentioned as a *caveat* within blocked (@sec:null-subtyping) but is mechanistically distinct and warrants formal subtype status. In a BIASED null, the receptor is structurally present, the orthosteric site is *vacant* (a standard agonist can bind), but chronic biased signaling — from endogenous GPCR autoantibodies with biased efficacy, sustained cytokine tone, or chronic agonist exposure — has driven the receptor into a conformational preference for β-arrestin over G-protein coupling. The receptor produces the *wrong intracellular signal* rather than no signal.

**Distinguishing probe — Signaling-mode comparison.** Compare a Gαs-biased ligand (e.g., isoproterenol at β2-AR) against a β-arrestin-biased ligand (e.g., carvedilol at β2-AR) in the same tissue. If the β-arrestin-biased ligand produces ERK phosphorylation (β-arrestin-dependent) while Gαs-biased fails to produce cAMP → BIASED null confirmed. The receptor is present and bindable but its signaling output is mode-locked.

**Evidence basis:** GPCR biased agonism is well-established pharmacology. β-arrestin-biased GPCR autoantibodies documented in preeclampsia, heart failure, and potentially POTS @DodgeKafka2026betaArrestinAAb — but never tested in ME/CFS. Chronic inflammatory cytokine exposure (TNF-α, IL-1β) can bias receptor coupling via GRK phosphorylation patterns — a plausible ME/CFS pathway.

**Certainty: 0.12.** Biased agonism exists; its relevance as a null subtype in ME/CFS is untested.

**Falsifiable prediction:** Ex vivo PBMC from LDN-null patients show preserved β-arrestin recruitment (β-arrestin-2 translocation assay) but absent cAMP response to the same ligand → BIASED null confirmed at cellular level.

**Non-specialist consequence:** "The receptor is there, and a drug CAN land on it — but the signal comes out garbled. Like a phone that rings but plays static instead of a voice."

**Origin:** brainstorm-null-subtyping-2026-07-28

---

### 1b. Null Subtype Transition Dynamics — Temporal Mapping of Null Type Evolution

Null subtypes may not be static patient properties. Disease progression could shift subtype assignment systematically:

- **Early disease:** OVERWHELMED — compensatory endogenous antagonist upregulation (KYNA, adenosine) as neuroprotective response to initial injury. The system is fighting but saturated.
- **Mid disease:** BLOCKED — autoantibody development (epitope spreading, molecular mimicry) occludes receptors directly. The system is under immunological attack.
- **Late disease:** ABSENT — chronic desensitization → internalization → lysosomal degradation → irreversible receptor loss. Or tissue atrophy from sustained disuse. The system has lost structural components.

**Probe:** Assign null subtype (via the three probes from sec-02i) at t=0, t=12 months, t=24 months in a longitudinal cohort of 50 ME/CFS patients. Track subtype proportions against disease duration. If OVERWHELMED predominates in <3yr duration and ABSENT predominates in >10yr → null subtype is a disease-staging biomarker.

**Evidence basis:** Autoantibody prevalence increases with disease duration in some autoimmune conditions. Receptor internalization/degradation from chronic agonism is well-documented (GPCR desensitization). But no longitudinal null-subtype data exists.

**Certainty: 0.08.** Highly speculative — the subtype-to-stage mapping is a hypothesis, not an observation.

**Falsifiable prediction:** Null subtype proportions are stable over 24 months in a longitudinal cohort; no systematic shift with disease duration.

**Non-specialist consequence:** "How a drug fails tells you how far the disease has progressed — early on, the target is swamped by survival signals; later, the immune system blocks it; eventually, it's gone."

**Origin:** brainstorm-null-subtyping-2026-07-28

---

### 1c. Null Subtype as Treatment Pathway Selector — Differential Algorithm

Once null subtype is assigned, treatment diverges sharply. This is partially implicit in the Diagnostic Implications section of sec-02i but is never formalized as an algorithm:

| Null Subtype | Treatment | Rationale |
|-------------|-----------|-----------|
| **ABSENT** | Stop pharmacological targeting of this mechanism | Target never existed; no drug can reach it. Consider gene therapy, cell transplant, or accept permanent deficit |
| **BLOCKED** | Remove the block → retest drug | Immunoadsorption, plasmapheresis, IVIG, or B-cell depletion. Null was FALSE — mechanism is intact once AAb removed |
| **OVERWHELMED** | Reduce endogenous antagonist → retest at standard dose, OR escalate dose persistently | Kynurenine pathway inhibition (KYNA), adenosine receptor blockade, endorphin antagonism |
| **BIASED** | Redirect signaling mode | β-arrestin-biased ligand for Gαs-blocked receptors; Gαi-biased for β-arrestin-blocked receptors. Find the signaling mode the receptor IS capable of producing |

**Probe:** Compare treatment response rate in a cohort where null subtype is resolved and treatment matched to subtype (algorithm arm) vs. a cohort where nulls are treated without subtyping (standard arm). If algorithm arm has higher response rate → null subtyping has clinical utility beyond conceptual value.

**Certainty: 0.12.** The algorithm is logically coherent but each step depends on interventions (immunoadsorption, kynurenine inhibitors, biased ligands) whose efficacy in ME/CFS is unestablished.

**Falsifiable prediction:** Algorithm-arm and standard-arm response rates are equivalent → null subtyping adds diagnostic precision without therapeutic benefit.

**Non-specialist consequence:** "Knowing WHY a drug failed tells you WHAT to do next — remove the blockade, lower the competing chemical, or accept the loss and move on."

**Origin:** brainstorm-null-subtyping-2026-07-28

---

## Category 2 — Research Directions

### 2a. Pharmacogenetic Pre-Screening for ABSENT Null Assignment

Before any drug trial or pharmacological probe, genotype the patient for known loss-of-function variants in drug targets and metabolic pathways:

- **CYP2D6 poor metabolizer:** Null for all CYP2D6-activated pro-drugs (tramadol, codeine, tamoxifen). The drug's active metabolite was never produced — a pharmacokinetic ABSENT null independent of receptor status.
- **SLC6A4 short allele (5-HTTLPR):** Reduced serotonin transporter expression → SSRIs have fewer targets → partial ABSENT null for serotonergic drugs.
- **COMT Val158Met (rs4680):** Met/Met → 3-4× reduced dopamine catabolism → dopamine tone is constitutively elevated → D2 agonists may produce BLOCKED-like null because endogenous dopamine already occupies the receptor.
- **BDNF Val66Met (rs6265):** Impaired activity-dependent BDNF secretion → TrkB receptor is present but functionally ABSENT in activity-dependent contexts.

**Probe:** Pre-screen with a pharmacogenetic panel of 20 variants. If homozygous LOF variant is present AND bypass agonist works → genetically ABSENT confirmed at molecular level. If no LOF variant but drug still null → non-genetic absent (epigenetic silencing, tissue loss) or blocked/overwhelmed.

**Certainty: 0.25.** Pharmacogenetics is well-validated for drug metabolism and target expression. Integration with null subtyping framework is novel.

**Falsifiable prediction:** CYP2D6 poor metabolizers assigned ABSENT null by genotype have bypass-agonist response rate >80% for CYP2D6-activated pro-drugs.

**Non-specialist consequence:** "A simple genetic test before any drug trial can rule out one kind of failure — the drug target was never made in the first place."

**Origin:** brainstorm-null-subtyping-2026-07-28

---

### 2b. Tissue-Compartment Null Discordance — CNS vs. Peripheral Subtyping

A receptor may be ABSENT in one tissue compartment (e.g., TRPM3 absent on peripheral NK cells) but intact in another (CNS TRPM3 on hypothalamic thermosensory neurons). A peripheral null assay may misclassify a CNS-intact mechanism as ABSENT.

**Probe:** Pair peripheral probe (ex vivo PBMC calcium flux with TRPM3 agonist) with CNS proxy probe:
- **TRPM3 CNS:** Thermoregulatory sweat response to pregnenolone sulfate (CNS-mediated) vs. ionomycin calcium flux in PBMCs (peripheral). Discordance → compartment-specific null.
- **D2 CNS:** Prolactin response to aripiprazole (pituitary D2, outside BBB, peripheral proxy) vs. prefrontal cognitive benefit (CNS D2). Discordance → D2 present peripherally but absent/blocked in CNS.
- **β2-AR peripheral vs. CNS:** Salbutamol bronchodilation (lung β2, accessible) vs. salbutamol cognitive effect (CNS β2, requires BBB penetration). Discordance → β2-AR intact in lung but inaccessible in CNS due to BBB transport failure or CNS-specific AAb.

**Certainty: 0.08.** Compartment-specific GPCR expression is established (peripheral vs. CNS receptor populations differ in density, splice variant, and coupling). Its application to null subtyping is novel and untested.

**Falsifiable prediction:** At least 20% of patients show discordance between peripheral and CNS proxy null subtype for the same receptor — peripheral null ≠ CNS null.

**Non-specialist consequence:** "A drug might fail because the broken receptor is in the brain, not in the blood — a blood test might say the system is fine, but the brain tells a different story."

**Origin:** brainstorm-null-subtyping-2026-07-28

---

### 2c. Formal Combination Probe Protocol — Sequential Null Resolution Algorithm

A systematic decision tree that resolves null subtype for any drug-mechanism pair in 3-5 sequential probe steps:

```
Step 1: Standard orthosteric agonist (the drug being tested)
  → WORKS → mechanism confirmed. STOP.
  → NULL → proceed to Step 2.

Step 2: Bypass agonist (acts downstream of receptor)
  → WORKS → ABSENT. Receptor absent; downstream machinery intact.
  → NULL → proceed to Step 3.

Step 3: Allosteric ligand (binds different site on same receptor)
  → WORKS → BLOCKED. Orthosteric site occupied; allosteric site accessible.
  → NULL → proceed to Step 4.

Step 4: High-dose orthosteric agonist (3-5× standard dose)
  → WORKS → OVERWHELMED. Receptor was outcompeted; higher dose displaced endogenous antagonist.
  → NULL → proceed to Step 5.

Step 5: β-arrestin-biased ligand (alternative signaling mode)
  → WORKS → BIASED. Receptor present; signaling mode-locked to β-arrestin.
  → NULL → mechanism genuinely absent at ALL levels. Irreversible downstream damage.
```

Each step rules IN a subtype; reaching step 5 with failure confirms genuine mechanism elimination. The protocol can be run per mechanism class and terminates when a subtype is resolved or all probes are exhausted.

**Certainty: 0.12.** Each individual probe has pharmacological rationale. The sequential protocol as a whole has never been tested. Steps 4 and 5 require drugs that may not exist for many targets.

**Falsifiable prediction:** In a cohort of 100 drug-null ME/CFS patients, at least one subtype is resolved for >50% of nulls using this protocol.

**Non-specialist consequence:** "Instead of saying 'this drug didn't work,' run a checklist of follow-up tests to figure out WHY — each answer points to a different fix."

**Origin:** brainstorm-null-subtyping-2026-07-28

---

## Category 4 — Supplement Ideas (Probing/Exploiting Null Subtypes)

### 4a. Endogenous Antagonist Manipulation via Supplements — Converting OVERWHELMED to Responsive

Several supplements can manipulate endogenous antagonist concentrations, potentially converting an OVERWHELMED null to a drug-responsive state:

**KYNA pathway (NMDA overwhelmed → responsive):**
- **L-tryptophan / L-kynurenine dietary avoidance** → less substrate for KYNA synthesis → lower KYNA tone.
- **Pyridoxal-5'-phosphate (P5P, vitamin B6, 50-100 mg/day):** KAT-II cofactor → shunts kynurenine toward KYNA → may WORSEN overwhelmed null. Direction depends on whether the patient is KYNA-depleted or KYNA-elevated.
- **L-leucine (5 g):** Competitive inhibitor of L-kynurenine BBB transport → reduces CNS KYNA → NMDA receptors de-repressed.
- **Rosmarinic acid (rosemary extract):** KAT-II inhibitor → reduces KYNA synthesis → NMDA de-repression.
- **N-acetylcysteine (NAC, 600-1200 mg):** Cysteine donor → glutathione synthesis → reduces oxidative stress → indirect kynurenine pathway normalization. Also substrate for kynurenine aminotransferase.

**Adenosine pathway (adenosine receptors overwhelmed → responsive):**
- **Caffeine (100-200 mg):** Adenosine A1/A2A antagonist. If caffeine partially rescues a drug null → the null was overwhelmed by endogenous adenosine at a shared receptor or downstream convergent pathway. Coffee AS a pharmacodiagnostic probe.
- **Dipyridamole (adenosine reuptake inhibitor):** Increases extracellular adenosine. If dipyridamole WORSENS a drug response → adenosine tone is load-bearing for the null.

**Endorphin pathway (opioid receptors overwhelmed → responsive):**
- **Naltrexone (LDN, 3.0-4.5 mg):** Already used. At this dose, naltrexone blocks opioid receptors → prevents endogenous endorphin competition → if LDN works at this dose but a standard opioid agonist doesn't → endogenous endorphin OVERWHELMED null confirmed. The LDN response IS the probe result.
- **DL-phenylalanine (500-1000 mg):** Enkephalinase inhibitor → increases endogenous endorphins → may WORSEN an opioid-receptor overwhelmed null by adding more competitor.

**Certainty: 0.08.** Supplement effects on KYNA and adenosine are documented in preclinical models but human dose-response and ME/CFS specificity are unknown.

**Falsifiable prediction:** Dietary kynurenine restriction + high-dose P5P alters plasma KYNA by >30% and converts ketamine non-responders to responders in patients with elevated baseline KYNA.

**Non-specialist consequence:** "Simple supplements — vitamin B6, NAC, or even a cup of coffee — might change whether a drug works, by reducing the natural chemicals that compete with the drug."

**Origin:** brainstorm-null-subtyping-2026-07-28

---

### 4b. Allosteric Probe Supplements — Natural Products as Null Subtype Resolvers

Several natural products act as allosteric modulators at GPCRs and could serve as BLOCKED-null probes without requiring prescription allosteric drugs:

- **Berberine (500 mg):** Positive allosteric modulator at M3 muscarinic and α2-adrenergic receptors. If berberine produces a response when the orthosteric agonist (pilocarpine, clonidine) fails → BLOCKED null at muscarinic or α2 sites confirmed. Berberine is OTC and tolerability data exists.
- **Curcumin (500 mg, with piperine):** Allosteric modulator at CB1/CB2 cannabinoid receptors and PPAR-γ. If curcumin partially rescues an orthosteric CB1 agonist null → endocannabinoid system is BLOCKED, not ABSENT.
- **Resveratrol (250 mg):** Allosteric SIRT1 activator, PDE4 inhibitor. Acts on cellular energetics downstream of many GPCRs. If resveratrol produces energy benefit when receptor-specific drugs fail → the null was at the receptor; downstream energy machinery is intact (ABSENT null).
- **Magnesium (300-400 mg):** Physiological NMDA channel blocker at a site distinct from the KYNA glycine site. If magnesium partially rescues ketamine null → NMDA channel is present; the null was glycine-site overwhelmed (KYNA), not channel-absent.

**Certainty: 0.10.** Natural products have documented allosteric activity in vitro but in vivo potency, selectivity, and ME/CFS-specific effects are unstudied.

**Falsifiable prediction:** Berberine produces a measurable therapeutic response in >30% of patients who are null to orthosteric muscarinic/α2 agonists — and these patients have detectable anti-muscarinic or anti-α2 autoantibodies.

**Non-specialist consequence:** "Some herbal supplements work at different spots on the same receptor — if one spot is blocked by the immune system, the supplement might still get through."

**Origin:** brainstorm-null-subtyping-2026-07-28

---

## Categories 10-12 — Critical/Negative Assessment

### 10a. The Null Subtype Framework May Be Clinically Unimplementable

**Critical assessment.** The three (or four) distinguishing probes require drugs that do not exist for most receptor targets in clinical practice:

| Probe | Best-case target | Drug exists? | Clinical concern |
|-------|-----------------|-------------|------------------|
| Bypass agonist (ABSENT) | TRPM3 → calcium ionophore | Ionomycin exists but is toxic (research-only) | Lethal at human doses; no clinical bypass agonist for TRPM3 |
| Allosteric ligand (BLOCKED) | β2-AR → salbutamol (partial allosteric) | Exists but partial; most GPCRs lack clinical allosteric modulators | Salbutamol vs. isoproterenol produces ambiguous results (both are orthosteric β2-AR agonists with some allosteric component) |
| Concentration-competition (OVERWHELMED) | NMDA → high-dose ketamine | Ketamine exists but 5× dose risks psychosis, hypertension, bladder toxicity | Unsafe at doses needed to overcome KYNA in many patients |
| Biased ligand (BIASED) | β2-AR → carvedilol (β-arrestin-biased) | Exists (carvedilol at β2-AR) but biased ligands exist for <10% of GPCRs | Most receptors have no clinical biased ligand |

**Additional implementability barriers:**
- Each additional probe trial requires weeks (washout + trial + washout), taxing severely ill patients.
- Each trial risks PEM — the framework's probing cost is physical, not just conceptual.
- Probe results may be ambiguous: a partial bypass-agonist response could mean "partially absent" — 30% of receptors present, 70% absent. The framework assumes binary categories, not receptor density continua.

**Certainty: 0.30.** The implementability concern is well-grounded in the limited availability of selective pharmacological probes. Most receptors implicated in ME/CFS (TRPM3, P2X, TLR4, various GPCR subtypes) lack clinical-grade bypass agonists, allosteric modulators, or biased ligands.

**Origin:** brainstorm-null-subtyping-2026-07-28

---

### 10b. Null Subtype Distinction May Be Pharmacologically Spurious

**Critical assessment.** The three null subtypes assume mutual exclusivity and clean separability via the proposed probes. This assumption may fail in practice:

**Simultaneous mixed states.** A receptor population can be simultaneously:
- Partially ABSENT (some copies degraded/lost)
- Partially BLOCKED (remaining copies occupied by AAb)
- Partially OVERWHELMED (endogenous antagonist at elevated concentration competing for unblocked copies)

A bypass agonist would partially work (some downstream machinery intact), an allosteric ligand would partially work (some receptors unblocked), and dose escalation would partially work (some receptors overwhelmed). The response pattern would be continuously graded, not binary — and the "dominant" null subtype would be a statistical construct, not a biological reality.

**Receptor reserve confound.** Most GPCRs have substantial receptor reserve — full response requires only 10-30% receptor occupancy. 70% of receptors could be absent while the remaining 30% produce a normal drug response. The ABSENT null requires near-total receptor loss to produce a clinical null, making it rarer than the framework suggests — and making the false-negative rate of the ABSENT probe high (bypass agonist fails because the small fraction of remaining receptors isn't enough, but the mechanism isn't truly eliminated).

**Downstream coupling heterogeneity.** A bypass agonist might work today and fail tomorrow — because the downstream machinery's functional state fluctuates with inflammation, energy status, or circadian rhythm. The null subtype assignment would be state-dependent, not a fixed patient property.

**Certainty: 0.25.** The mixed-state, receptor-reserve, and state-dependence problems are well-known in receptor pharmacology and apply directly to the null subtyping probes.

**Origin:** brainstorm-null-subtyping-2026-07-28

---

### 10c. Opportunity Cost of Null Subtyping Implementation

**Critical assessment.** The framework requires 2-4 additional drug trials per initial null. Each additional trial imposes opportunity costs that may exceed the diagnostic gain:

| Cost | Detail |
|------|--------|
| **Patient time** | Weeks of washout + probe trial + washout per probe step. A 3-step protocol could add 8-12 weeks before reaching a treatment decision |
| **PEM risk** | Each drug trial is a physiological stress. Severe patients may crash from a single probe, losing weeks of function for diagnostic information that may not change treatment |
| **Cognitive load** | Patients must track responses to 3-4 probes, not 1 drug. Symptom-tracking burden multiplies |
| **Diverted investigation** | Time spent resolving null subtype is time NOT spent trying the next drug in a different mechanism class. The null ladder already says: "this mechanism is eliminated → move on." Null subtyping reopens mechanisms that the ladder already eliminated |
| **Ambiguous resolution** | If probes produce inconsistent results (bypass works, allosteric doesn't, dose escalation partially works) → no clean subtype assignment → framework fails to resolve the null. The patient underwent 3 additional trials for no gain |

**The core trade-off:** Null subtyping adds diagnostic precision to nulls that may not change treatment decisions. If a patient's β2-AR is BLOCKED by AAb, the treatment is immunoadsorption — which is expensive, invasive, and unproven in ME/CFS. If immunoadsorption is unavailable or refused, knowing the null is BLOCKED rather than ABSENT changes nothing. The framework adds precision without adding actionable treatment options for most patients.

**Certainty: 0.30.** The opportunity cost concern is independent of the framework's pharmacological validity — even if the probes work perfectly, the downstream treatment implications may not justify the probing burden.

**Origin:** brainstorm-null-subtyping-2026-07-28

---

### 10d. Prevalence of Non-ABSENT Nulls May Be Too Low to Justify Framework

**Critical assessment.** The framework's clinical value depends on the prevalence of BLOCKED, OVERWHELMED, and BIASED nulls in the ME/CFS population. If 85-95% of drug nulls are genuinely ABSENT (receptor never present in that patient), the framework adds complexity without changing management for most patients:

- **GPCR autoantibody prevalence in ME/CFS is contested.** CellTrend ELISA reports high positivity; REAP/Luminex reports near-zero (Germain2025). If GPCR AAb are measurement artefacts, BLOCKED null has near-zero prevalence.
- **KYNA elevation prevalence is uncertain.** Some studies show elevated KYNA, others show depletion. If KYNA elevation occurs in <15% of patients, OVERWHELMED null at NMDA receptors has low prevalence.
- **Biased agonism from chronic inflammation is plausible but unquantified.** No data on what fraction of ME/CFS patients have signaling-mode-locked receptors.

The framework could be the correct answer to a question most patients aren't asking. It may solve a rare edge case — the blocked or overwhelmed null — while adding complexity to the common case (absent null) without benefit.

**Certainty: 0.20.** The prevalence question is empirically testable but currently unanswered. Until prevalence data exists, the framework's clinical value is unknown.

**Origin:** brainstorm-null-subtyping-2026-07-28

---

## Summary Table

| # | Category | Idea | Cert | Probe/Test | Impact |
|---|----------|------|------|------------|--------|
| 1a | Novel Hypothesis | BIASED null: receptor present, signaling mode-locked to β-arrestin | 0.12 | Gαs vs. β-arrestin biased ligand comparison | High — adds 4th null subtype with distinct treatment implications |
| 1b | Novel Hypothesis | Null subtype transition dynamics: overwhelmed→blocked→absent over disease course | 0.08 | Longitudinal null subtype assignment at t=0,12,24mo | High — reframes null subtype as disease staging, not static classification |
| 1c | Novel Hypothesis | Null subtype as treatment pathway selector — differential algorithm | 0.12 | RCT: algorithm-guided vs. standard treatment after null subtyping | High — translates framework from diagnostic to therapeutic decision tool |
| 2a | Research Direction | Pharmacogenetic pre-screening for ABSENT null assignment | 0.25 | 20-variant panel + bypass agonist concordance study | High — eliminates one null subtype before any drug trial |
| 2b | Research Direction | Tissue-compartment null discordance: CNS vs. peripheral subtyping | 0.08 | Peripheral ex vivo assay vs. CNS proxy probe for same receptor | Medium — resolves whether peripheral null = CNS null |
| 2c | Research Direction | Formal combination probe protocol — 5-step sequential resolution algorithm | 0.12 | Run protocol on 100 drug-null patients; measure % resolved | High — systematizes null subtyping into a reproducible protocol |
| 4a | Supplement | Endogenous antagonist manipulation via NAC, P5P, leucine, caffeine | 0.08 | Dietary/OTC intervention → plasma KYNA/adenosine change → drug retest | Medium — low-cost intervention to convert OVERWHELMED to responsive |
| 4b | Supplement | Allosteric probe supplements: berberine, curcumin, resveratrol, magnesium | 0.10 | OTC allosteric modulator → drug-null rescue test | Medium — OTC probes for BLOCKED null without prescription drugs |
| 10a | Critical | Clinical unimplementability: probes don't exist for most targets | 0.30 | Systematic gap analysis: which ME/CFS-relevant targets have probes? | High — negative: framework may be pharmacologically sound but clinically useless |
| 10b | Critical | Pharmacological spuriousness: mixed states, receptor reserve, state-dependence | 0.25 | In vitro mixed-state receptor modeling | High — negative: binary null subtypes may not exist in biology |
| 10c | Critical | Opportunity cost: 2-4 extra trials per null; PEM risk; diverted investigation | 0.30 | Compare time-to-treatment in subtyped vs. non-subtyped cohorts | High — negative: precision gain may not justify probing burden |
| 10d | Critical | Prevalence of non-ABSENT nulls may be too low to justify framework | 0.20 | Estimate BLOCKED/OVERWHELMED prevalence from existing AAb + metabolomic data | High — negative: framework solves a rare edge case at high cost |

---

## Idea Summary

All 12 ideas (across 4 categories):

1. **BIASED null (1a):** 4th null subtype — receptor present, orthosteric site vacant, but signaling is β-arrestin-locked. Probe: Gαs vs. β-arrestin biased ligand comparison. Cert 0.12.
2. **Null subtype transition dynamics (1b):** Subtypes shift with disease duration: overwhelmed→blocked→absent. Probe: longitudinal null assignment at 0/12/24mo. Cert 0.08.
3. **Null subtype as treatment pathway selector (1c):** Algorithm maps subtype to treatment: absent→abandon, blocked→immunoadsorption, overwhelmed→KYNA/caffeine manipulation, biased→alternative signaling mode. Cert 0.12.
4. **Pharmacogenetic pre-screening (2a):** CYP2D6, SLC6A4, COMT, BDNF variants pre-assign ABSENT null without drug trial. Cert 0.25.
5. **Tissue-compartment null discordance (2b):** Peripheral assay vs. CNS proxy for same receptor — discordance means compartment-specific null. Cert 0.08.
6. **Formal combination probe protocol (2c):** 5-step sequential algorithm: orthosteric→bypass→allosteric→dose escalation→biased ligand. Cert 0.12.
7. **Endogenous antagonist manipulation via supplements (4a):** NAC/P5P/leucine/caffeine to reduce KYNA/adenosine → convert OVERWHELMED to responsive. Cert 0.08.
8. **Allosteric probe supplements (4b):** Berberine/curcumin/resveratrol/magnesium as OTC allosteric modulators to probe BLOCKED null. Cert 0.10.
9. **Clinical unimplementability (10a):** Probes don't exist for most targets; ionomycin is toxic; dose escalation is unsafe. Cert 0.30.
10. **Pharmacological spuriousness (10b):** Mixed states, receptor reserve, state-dependent coupling make binary null subtypes biologically dubious. Cert 0.25.
11. **Opportunity cost (10c):** 2-4 extra trials per null = weeks of patient time, PEM risk, diverted investigation, ambiguous resolution. Cert 0.30.
12. **Low non-ABSENT prevalence (10d):** If BLOCKED/OVERWHELMED nulls are rare (<15%), framework adds complexity for most patients without benefit. Cert 0.20.
