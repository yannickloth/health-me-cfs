# Hypothesis Subtree: Li/Mg Analogs

**Origin:** `/integrate-topic` brainstorm
**Brainstorm file:** `content-staging/brainstorm-li-mg-analogs-2026-04-17.md`
**Plan file:** `ops/plans/li-mg-analogs-integration-plan.md` (create if needed)
**Date:** 2026-04-17
**Parent topic:** root
**Child subtrees:** (none yet)

## Integration Context

**Priority:** 🔴  
**Tier:** Tier 1 (Li/Mg direct relationship), Tier 2 (taurine, selenium, zinc), Tier 3 (speculative analogs)  
**ME/CFS links:**
- Na⁺/K⁺-ATPase dysfunction: Mg-ATP substrate, taurine structural stability, Li expression regulation — three non-redundant axes
- GSK-3β hyperactivity: Mg deficiency → cofactor starvation; Li competitive inhibition at Mg²⁺ site; Zn²⁺ direct inhibition
- NF-κB suppression: Li (TLR4), Mg (IκB stabilization), taurine chloramine (nuclear translocation) — sequential cascade
- Thyroid deiodinase: Se (catalytic), Mg (transport support), Zn (DIO1 structural) — all three required for T4→T3
- TRPM7 multi-cation transport: dysfunction impairs Mg²⁺, Zn²⁺, Mn²⁺ simultaneously  
**Target chapters:** ch16-supplements-nutraceuticals, ch06-energy-metabolism, ch14h-trpm3-channelopathy, ch14a-severe-protocol, ch07-immune-dysfunction, ch08-neurological, ch18-emerging-therapies  
**Pre-identified hypotheses:** Li response ~ inverse RBC-Mg (TASK 1.2); Mg+Zn combined 23Na-MRI prediction (TASK 4.1); TRPM7 pan-divalent-cation signature (TASK 9.2)  
**Research questions:**
1. Direction A (Mg/Li sequencing → pump restoration): Does pre-Li Mg repletion improve Na⁺/K⁺-ATPase function and reduce Li-induced T4→T3 suppression?
2. Direction B (combined supplementation → synergistic NF-κB suppression): Do Li+Mg+taurine together show greater cytokine reduction than any alone?

**Execution tasks (15, ordered by priority):**
1. TASK 1.3 — Mg-first sequencing note in Li protocol (safety-critical)
2. TASK 1.4 — Thyroid deiodinase Se/Mg/Zn + Li (safety-critical)
3. TASK 3.1 — Selenium as deiodinase cofactor
4. TASK 5.1 — K⁺/Mg co-dependency (fludrocortisone patients)
5. TASK 2.1 — Taurine Na⁺/K⁺-ATPase / NCX mechanism
6. TASK 1.1 — Mg + GSK-3β missing link in ch16
7. TASK 1.2 — Li response ~ inverse RBC-Mg hypothesis
8. TASK 4.1 — Zinc triple overlap (NMDA, GSK-3β, DIO1)
9. TASK 2.2 — Taurine NF-κB via TauCl
10. TASK 7.1 — Inositol: Li antagonist + TRPM7/PIP₂ ally
11. TASK 6.1 — Berberine as Li-analog via AMPK
12. TASK 8.1 — Creatine + Mg creatine-kinase co-dependency
13. TASK 8.2 — NMN/NR + Mg-dependent NAD kinase
14. TASK 9.1 — Memantine as Mg functional analog at NMDA
15. TASK 9.2 — TRPM7 as pan-divalent-cation transporter

## Execution Detail

> Full task list migrated from `content-staging/integrate-topic-tasklist-li-mg-analogs.md`. All items ⬜ pending.

## BATCH 1 — Li/Mg Direct Relationship (from conversation analysis)
_These directly address the Li ↔ Mg relationship; highest integration priority_

### TASK 1.1 — Mg + GSK-3β missing link in ch16

**Topic:** Magnesium as GSK-3β permissive cofactor — missing from current ch16 Mg rationale  
**Why:** ch16:100–106 lists ATP synthesis, NMDA, autonomic, sleep — but NOT GSK-3β. Yet Mg deficiency is the mechanistic reason Li's GSK-3β inhibition is needed in ME/CFS. The connection belongs in ch16 alongside the Li protocol.  
**Prompt for /integrate-topic:**
```
Integrate the following into ch16-supplements-nutraceuticals — Magnesium section:

Add a mechanistic paragraph explaining that Mg²⁺ is the catalytic cofactor at the GSK-3β
active site. In Mg-deficient states, GSK-3β becomes hyperactive (undersupplied cofactor
→ sustained kinase activity → suppressed BDNF, impaired autophagy, promoted
neuroinflammation). Low-dose lithium inhibits GSK-3β directly by competitive inhibition
at this same Mg²⁺ site. This makes Mg repletion and Li non-redundant: Mg restores the
cofactor pool, Li blocks the enzyme regardless of Mg status, but Mg-deficient patients
have amplified GSK-3β activity that Li must compensate for more fully.

Prediction: Li response should correlate inversely with baseline RBC magnesium —
patients most Mg-deficient should show greatest GSK-3β inhibition benefit from Li.

Add forward cross-reference to the Li neuroinflammation protocol (ch14a).
Certainty: 0.50 (mechanism solid; ME/CFS-specific prediction novel).
Source files: brainstorm-li-mg-analogs-2026-04-17.md (A1 context), ch14a (~line 1870).
```

---

### TASK 1.2 — Li/Mg sequencing hypothesis (Li response ~ inverse RBC-Mg)

**Topic:** Novel falsifiable hypothesis: Li therapeutic response correlates inversely with baseline RBC magnesium  
**Why:** Not documented anywhere in current chapters. Directly falsifiable. Clinically actionable (test RBC-Mg before starting Li).  
**Prompt for /integrate-topic:**
```
Create a new speculation or hypothesis environment in ch14a (near Li protocol, ~line 1870)
or ch18-emerging-therapies:

Hypothesis title: "Lithium response as inverse function of Magnesium status"

Mechanism: In ME/CFS patients with intracellular Mg depletion (common due to TRPM7
dysfunction per DuPreez2023 and chronic Mg losses), GSK-3β runs hyperactive because its
Mg²⁺ catalytic site is undersupplied. Low-dose Li provides competitive inhibition at
this same site. Therefore: the more Mg-depleted the patient, the greater the baseline
GSK-3β hyperactivity, and the greater the fractional inhibition provided by a given Li
dose. Mg-replete patients have lower baseline GSK-3β activity and may show attenuated
Li response for this mechanism specifically.

Falsifiable predictions:
(a) Li responders (defined as ≥20% fatigue score improvement) should have lower baseline
RBC magnesium than non-responders.
(b) Pre-treatment Mg repletion (3 months) should reduce the magnitude of Li response
(by restoring GSK-3β cofactor supply), while improving overall outcomes via independent
Mg mechanisms.
(c) The correlation should be specific to GSK-3β-downstream outcomes (cognitive clarity,
BDNF-mediated neurogenesis markers) rather than Li's IMPase/IP3 outcomes.

Certainty: 0.35 (speculative; no clinical data; mechanism inference from biochemistry).
Source: brainstorm-li-mg-analogs-2026-04-17.md; existing spec:low-dose-lithium.
```

---

### TASK 1.3 — Mg-first sequencing note in Li protocol

**Topic:** Clinical note: Mg should precede Li in treatment sequencing — reasons and risks if not  
**Why:** The ch14a Li protocol (line ~1870) gives dosing and monitoring but no rationale for sequencing relative to Mg. The Na⁺/K⁺-ATPase substrate risk (Li weakly competes when Mg-ATP is limiting) and thyroid deiodinase partial offset both justify Mg-first.  
**Prompt for /integrate-topic:**
```
Add a clinical sequencing note to the Li protocol in ch14a (near line 1870) or as a
warning/note environment:

Title: "Establish Mg and Se status before initiating Li"

Content:
1. Na⁺/K⁺-ATPase: Li⁺ enters cells via Na⁺ channels and is pumped out slowly by
Na⁺/K⁺-ATPase. When Mg-ATP substrate is already limiting (Mg deficiency), Li adds
marginal pump load at the moment when pump capacity is most constrained. This is
resolved by achieving Mg repletion before Li initiation.

2. Thyroid deiodinase: Li suppresses T4→T3 conversion. Mg supports deiodinase enzyme
stability; Se provides the catalytic selenocysteine. A patient starting Li with Se
depletion faces additive T3 suppression risk. Recommended: check serum Se and RBC Mg
at baseline; replete if deficient before Li is added. Monitor fT3 (not just TSH) at
every 3-month check.

3. Suggested minimum pre-Li workup addition: RBC magnesium, serum selenium, plasma
zinc — all relevant to Li's mechanisms and safety.

Source: brainstorm-li-mg-analogs-2026-04-17.md (sequencing section).
```

---

### TASK 1.4 — Thyroid deiodinase Mg/Se/Zn offset of Li suppression

**Topic:** Mg + Se + Zn as physiological counterweights to Li-induced T4→T3 suppression  
**Why:** The Li document (20260413_genevieve-fourel-lithium-trp-sama.md:69–73) notes Li suppresses T3 and recommends monitoring, but doesn't specify which cofactors protect deiodinase. Se is the most important. This creates a specific, actionable clinical recommendation missing from the protocol.  
**Prompt for /integrate-topic:**
```
Add to the Li monitoring section in ch14a (near line 1870) and to the published Li
response document:

Selenium is the catalytic residue of all three deiodinase isoforms (DIO1/2/3 contain
selenocysteine at their active site). Without Se, deiodinase cannot convert T4→T3
regardless of Mg or other cofactor status. Lithium's T4→T3 suppression is additive
with Se deficiency. In a patient with baseline Se deficiency starting Li, the fT3
decline at 3 months may be severe even before Li concentrations reach the target range.

Zinc (Zn²⁺) provides structural support for DIO1 (zinc finger domain); Mg supports
iodothyronine transport into cells (indirect). All three (Se > Mg > Zn) contribute to
deiodinase function, with Se being non-negotiable.

Clinical recommendation: For any ME/CFS patient starting low-dose Li:
- Baseline: serum Se, RBC Mg, plasma Zn, fT3, TSH
- If Se < 80 µg/L: replete with selenomethionine 100–200 µg/day for 8–12 weeks before
  Li initiation, or concurrently if clinical urgency
- Recheck fT3 (not just TSH) at each 3-month Li monitoring visit

Certainty: 0.52 (Se deiodinase mechanism: very high; clinical application in Li-treated
ME/CFS: low — extrapolation, no direct data).
Source: brainstorm-li-mg-analogs-2026-04-17.md (A2, thyroid axis section).
```

---

## BATCH 2 — Taurine (highest-priority new analog)

### TASK 2.1 — Taurine as third Na⁺/K⁺-ATPase axis (ch16 + ch06 + ch14h)

**Topic:** Taurine stabilizes Na⁺/K⁺-ATPase structure (distinct from Mg-ATP substrate and Li expression regulation)  
**Why:** Taurine plasma depletion is directly documented in ME/CFS metabolomics (Germain2017, Glass2023). Taurine's pump-stabilization mechanism is completely absent from the document. This is the most direct analog to the Mg Na⁺/K⁺-ATPase rationale.  
**Prompt for /integrate-topic:**
```
Integrate taurine's Na⁺/K⁺-ATPase and NCX mechanism across three chapters:

1. ch16-supplements (taurine section or new subsection): Taurine stabilizes the
Na⁺/K⁺-ATPase α-subunit conformation (increases Vmax without changing Km),
independently from Mg-ATP (substrate) and Li (expression regulation). Taurine
depletion destabilizes the pump → Na⁺ accumulation → NCX reversal → Ca²⁺ overload.
Taurine is directly depleted in ME/CFS plasma (Germain2017taurineME) and fails to
recover post-exertion (Glass2023urineMetabolomics).

2. ch06 (Na⁺/K⁺-ATPase section): Add taurine alongside Mg-ATP as a third requirement
for full pump function: substrate (Mg-ATP) + co-transport partner (K⁺) + structural
stability (taurine).

3. ch14h (calcium cascade): Add taurine as an intervention targeting NCX reversal at
the same endpoint as Mg (reducing intracellular Na⁺ accumulation), but via structural
pump stabilization rather than substrate provision. Label as convergent, non-redundant.

Falsifiable prediction: ME/CFS patients with lowest plasma taurine should show highest
post-exercise intracellular Na⁺ (23Na-MRI), independent of RBC Mg status. Combined
taurine+Mg depletion should predict worst sodium accumulation scores.

Certainty: 0.45 (mechanism solid; ME/CFS prediction novel but anchored in metabolomics
data).
Source: literature-taurine-2026-04-16.md; brainstorm-taurine-2026-04-16.md;
brainstorm-li-mg-analogs-2026-04-17.md (A1).
```

---

### TASK 2.2 — Taurine NF-κB suppression via TauCl (third parallel node)

**Topic:** Taurine chloramine (TauCl) suppresses NF-κB at a third node distinct from Li (TLR4) and Mg (IκB)  
**Why:** Li, Mg, and taurine each suppress NF-κB through different nodes — this triple-pathway suppression is not documented and could explain why clinical improvement requires all three vs. any alone.  
**Prompt for /integrate-topic:**
```
Add to ch07-immune-dysfunction (NF-κB section) or ch14h (neuroinflammation):

Three substances suppress NF-κB in ME/CFS-relevant cells through distinct, non-redundant
nodes:
- Lithium: suppresses TLR4 upstream signal → reduces IKK phosphorylation
- Magnesium: stabilizes IκBα, preventing its degradation (IκB stabilization mechanism)
- Taurine: oxidized by neutrophil-derived hypochlorous acid to taurine chloramine
  (TauCl), which directly inhibits NF-κB nuclear translocation and reduces TNF-α,
  IL-1β, and IL-6 production

These three nodes are upstream (TLR4), intermediate (IκB degradation), and nuclear
(translocation inhibition) — they form a sequential suppression cascade where no single
agent covers the full pathway. A patient deficient in taurine loses the downstream
translocation suppression even if Li and Mg cover the upstream nodes.

Add as clinical rationale for maintaining taurine status alongside Li and Mg in ME/CFS
with evidence of neuroinflammation or elevated cytokines.

Certainty: 0.40 (TauCl mechanism: established; ME/CFS-specific triple-node synergy:
speculative).
Source: brainstorm-li-mg-analogs-2026-04-17.md (A1, NF-κB section).
```

---

## BATCH 3 — Selenium

### TASK 3.1 — Selenium as deiodinase cofactor (ch16 + Li safety protocol)

**Topic:** Se as primary deiodinase cofactor in ME/CFS, especially when Li is used  
**Prompt for /integrate-topic:**
```
Integrate selenium mechanistic content into ch16-supplements:

Selenium is the catalytic residue (selenocysteine) of all three deiodinase isoforms —
without Se, T4→T3 conversion is impossible regardless of other cofactor status. This
distinguishes Se from Mg (indirect support) and Zn (structural). Se also activates
glutathione peroxidase (GPx) and thioredoxin reductase (TrxR) — the two primary
selenoprotein antioxidant systems. In ME/CFS, where oxidative stress is elevated,
Se depletion simultaneously impairs thyroid axis AND antioxidant defense.

Clinically: ME/CFS patients starting low-dose Li should have Se assessed first (target
>100 µg/L). Se deficiency + Li = additive T4→T3 suppression risk. Selenomethionine
100–200 µg/day is the preferred form (organic, well-absorbed, minimal toxicity risk at
these doses; upper tolerable limit 400 µg/day).

Falsifiable prediction: In ME/CFS patients on Li, fT3 decline at 3 months correlates
with baseline Se quartile — lowest Se predicts greatest fT3 suppression.

Certainty: 0.50 (deiodinase mechanism: very high; Li-interaction in ME/CFS: extrapolated).
Source: brainstorm-li-mg-analogs-2026-04-17.md (A2).
```

---

## BATCH 4 — Zinc

### TASK 4.1 — Zinc triple overlap: NMDA + GSK-3β + deiodinase (ch16 + ch08)

**Topic:** Zinc's three convergent mechanisms with Mg and Li — and Mg/Zn intestinal absorption competition  
**Prompt for /integrate-topic:**
```
Integrate zinc mechanistic content across:

1. ch16-supplements (zinc section): Zinc has three ME/CFS-relevant mechanisms that
overlap with Mg and Li:
(a) NMDA block: Zn²⁺ blocks NMDA receptors at NR2B subunit with IC₅₀ ≈ 10–20 nM
(nanomolar vs Mg's millimolar) — more potent than Mg at NR2B specifically; depleted
by chronic immune activation (metallothionein sequesters Zn during macrophage
activation).
(b) GSK-3β inhibition: Zn²⁺ coordinates at the Mg²⁺ catalytic site of GSK-3β —
direct inhibition similar to Li's mechanism.
(c) DIO1 structural support: Zn finger domain in DIO1 enzyme complex; Zn deficiency
impairs T4→T3 conversion independently of Se.

IMPORTANT INTERACTION: Mg and Zn compete for intestinal absorption (same divalent
cation transporters). High-dose Mg supplementation can deplete Zn. In ME/CFS where
both are commonly deficient, separate by ≥2 hours and monitor both.

2. ch08-neurological (central sensitization section): Add Zn²⁺ as endogenous
nanomolar NMDA modulator, depleted by chronic immune activation — a mechanism for
worsening central sensitization during immune flares that is pharmacologically
addressable (zinc glycinate 15–25 mg/day).

Certainty: 0.42 (NMDA: well established; GSK-3β: documented; ME/CFS-specific: extrapolated).
Source: brainstorm-li-mg-analogs-2026-04-17.md (A3).
```

---

## BATCH 5 — Potassium/Mg co-dependency

### TASK 5.1 — K⁺ as Na⁺/K⁺-ATPase co-requirement with Mg (clinical urgency)

**Topic:** K⁺ is a non-negotiable co-requirement with Mg-ATP for Na⁺/K⁺-ATPase; fludrocortisone depletes K⁺; refractory hypokalemia signals Mg deficiency  
**Why:** Clinically urgent — ME/CFS patients on fludrocortisone may be supplementing Mg while K⁺ is depleted, rendering pump support useless. Also: refractory hypokalemia as Mg-deficiency sign is not currently documented.  
**Prompt for /integrate-topic:**
```
Integrate K⁺/Mg co-dependency across:

1. ch16 (K⁺ section and Mg section):
The Na⁺/K⁺-ATPase requires BOTH Mg-ATP (substrate, E1 phosphorylation step) AND
extracellular K⁺ (E2 dephosphorylation step). Without K⁺, the pump is locked in
E1-P state even with abundant Mg-ATP. K⁺ and Mg must both be replete for pump
restoration.

Add to Mg section: "Refractory hypokalemia (K⁺ fails to correct with supplementation)
is a classic sign of hypomagnesemia — Mg is required for renal K⁺ retention. Check Mg
when K⁺ supplementation is not working."

2. ch14a severe protocol (fludrocortisone context):
Fludrocortisone (common OI/POTS treatment in ME/CFS) causes kaliuresis (K⁺ loss).
Patients on fludrocortisone + Mg supplementation for Na⁺/K⁺-ATPase support must have
K⁺ monitored — if K⁺ is low-normal, Mg supplementation alone will not restore pump
function. Add clinical check: before attributing Na⁺/K⁺-ATPase dysfunction to Mg
deficiency alone, verify K⁺ is replete (target 4.0–4.5 mEq/L in ME/CFS with OI).

Falsifiable prediction: ME/CFS patients on fludrocortisone with K⁺ < 3.8 mEq/L should
show worse 23Na-MRI sodium accumulation than K⁺-replete patients with same Mg status.

Certainty: 0.55 (mechanism: established; fludrocortisone-K⁺-pump chain: clinical inference).
Source: brainstorm-li-mg-analogs-2026-04-17.md (A4).
```

---

## BATCH 6 — Berberine

### TASK 6.1 — Berberine as Li-analog (4/5 mechanism overlap via AMPK)

**Topic:** Berberine shares GSK-3β inhibition, NF-κB suppression, mitophagy, NLRP3 modulation with Li — via AMPK rather than ionic competition  
**Prompt for /integrate-topic:**
```
Add berberine to ch18-emerging-therapies with explicit Li comparison:

Berberine (plant alkaloid, 500–1500 mg/day) shares four of lithium's five ME/CFS-relevant
mechanisms, via AMPK activation rather than ionic substitution:
- GSK-3β: AMPK phosphorylates and inactivates GSK-3β (indirect, same outcome as Li)
- NF-κB: berberine inhibits IKKβ (different node from Li's TLR4 suppression)
- Mitophagy: AMPK-dependent mitophagy induction (analogous to Li's mTOR-independent route)
- NLRP3: berberine reduces NLRP3 activation (overlapping with Li)
- Missing vs Li: no IMPase/IP3/Ca²⁺ effect; no aquaporin-4/glymphatic effect; poor BBB
  penetration (P-glycoprotein substrate)

Berberine's safety profile differs from Li: no thyroid or renal toxicity; GI side
effects; significant CYP3A4 drug interactions. It may serve as a partial Li alternative
for patients who cannot tolerate Li or who need a lower-risk starting point for
GSK-3β/mitophagy targeting.

Also add anti-dysbiotic rationale (berberine targets SIBO-associated bacteria) —
relevant for ME/CFS gut-brain axis.

Certainty: 0.38 (mechanism overlap: documented; ME/CFS-specific efficacy: absent).
Source: brainstorm-li-mg-analogs-2026-04-17.md (B1).
```

---

## BATCH 7 — Inositol

### TASK 7.1 — Inositol: Li antagonist at IMPase + Mg/TRPM7 PIP₂ ally

**Topic:** Inositol as PIP₂ precursor that both reverses Li's mechanism AND supports TRPM7-impaired PIP₂ synthesis — the Li/inositol paradox  
**Prompt for /integrate-topic:**
```
Integrate inositol into:

1. ch16-supplements (new subsection or expand H5 from brainstorm-calcium):
Myo-inositol (2–4 g/day) is the head-group precursor for PIP₂ synthesis. It is relevant
to ME/CFS via two distinct mechanisms:

(a) Li antagonism: Li inhibits IMPase → depletes free inositol → slows PIP₂ resynthesis.
Inositol supplementation directly reverses this depletion (Belmaker1998: behavioral
reversal of Li by inositol in rats is stereospecific). Patients on Li who add inositol
may partially offset Li's IMPase mechanism — a clinically relevant paradox that should
be disclosed.

(b) PIP₂ pool restoration: The PIP₂ exhaustion hypothesis (hyp:pip2-exhaustion, ch14h)
proposes GPCR autoantibodies drive PLC to deplete PIP₂. TRPM7 dysfunction (DuPreez2023)
may additionally impair PIP₂ metabolism via its kinase domain. Myo-inositol
supplementation could partially replenish the precursor pool, independent of Li status.

Paradox resolution: If Li's primary ME/CFS benefit is via GSK-3β (not IMPase), then
inositol supplementation is fully compatible with Li. If Li's benefit is via IMPase/
inositol depletion, inositol reduces that specific arm. The distinction is testable:
patients on Li + inositol vs Li alone, measuring GSK-3β phosphorylation state and
IP3-mediated Ca²⁺ release.

Certainty: 0.40 (PIP₂ mechanism: established; Li paradox: well-documented in preclinical
models; ME/CFS-specific prediction: novel).
Source: literature-lithium-ip3-calcium-2026-04-17.md; brainstorm-li-mg-analogs-2026-04-17.md (B2).
```

---

## BATCH 8 — Creatine + NAD⁺ precursors

### TASK 8.1 — Creatine Mg co-dependency and phosphocreatine deficit in ME/CFS

**Topic:** Creatine kinase requires Mg²⁺; phosphocreatine repletion is slower in ME/CFS (31P-MRS evidence)  
**Prompt for /integrate-topic:**
```
Add to ch16-supplements (creatine section) and ch06 (energy metabolism):

Creatine kinase (CK) catalyzes phosphocreatine + ADP ↔ creatine + ATP using Mg-ADP
and Mg-ATP as the actual substrates. Without adequate intracellular Mg, CK cannot
efficiently resynthesize phosphocreatine between bursts. Mg depletion therefore impairs
both the primary ATP synthesis pathway (Complex V) and the rapid ATP buffer system
(phosphocreatine).

31P-MRS studies in ME/CFS show slower post-exercise phosphocreatine resynthesis than
controls — consistent with either mitochondrial dysfunction OR Mg-CK impairment, or
both. Creatine supplementation (3–5 g/day monohydrate) restores the phosphocreatine
pool; Mg repletion maximizes CK efficiency for its resynthesis.

Clinical implication: Creatine supplementation without Mg repletion may be suboptimal.
The two are mechanistically complementary — address in sequence.

Certainty: 0.40 (CK mechanism: established; ME/CFS 31P-MRS: documented; combined
supplementation: not directly studied).
Source: brainstorm-li-mg-analogs-2026-04-17.md (B4).
```

---

### TASK 8.2 — NAD⁺ precursors (NMN/NR) + Mg-dependent NAD kinase

**Topic:** NADK (NAD kinase, converts NAD⁺ → NADP⁺ for antioxidant defense) is strictly Mg²⁺-dependent — NMN/NR supplementation without Mg repletion may fail to improve NADP⁺-dependent antioxidant defense  
**Prompt for /integrate-topic:**
```
Add to ch16-supplements (NMN/NR section) and ch06 (antioxidant defense):

NAD kinase (NADK) converts NAD⁺ to NADP⁺, which is required for:
- Glutathione recycling (NADP⁺ → NADPH via G6PDH → GSH via glutathione reductase)
- Pentose phosphate pathway (NADPH production)
- Antioxidant defense broadly

NADK is strictly Mg²⁺-dependent (Mg²⁺ chelates ATP in the phosphate transfer). In Mg
deficiency, NADK activity is impaired → NADP⁺ production reduced → glutathione
recycling falls → oxidative stress compounds despite adequate NAD⁺.

Implication: NMN or NR supplementation increases the NAD⁺ substrate pool but cannot
rescue NADP⁺-dependent antioxidant defense without adequate Mg. In Mg-deficient ME/CFS
patients, NMN/NR supplementation addresses one arm (NAD⁺ for energy) while leaving the
antioxidant arm impaired.

Recommended sequence: Mg repletion → NADK activation restored → then NMN/NR to maximize
NAD⁺ pool, now convertible to NADP⁺ for full antioxidant benefit.

Certainty: 0.35 (NADK Mg-dependence: established biochemistry; ME/CFS-specific sequencing:
speculative but mechanistically sound).
Source: brainstorm-li-mg-analogs-2026-04-17.md (B3).
```

---

## BATCH 9 — Memantine + TRPM7 divalent cation broadening (Tier 3)

### TASK 9.1 — Memantine as Mg functional analog at NMDA

**Topic:** Memantine as use-dependent NMDA blocker — mechanistically superior to Mg²⁺ for sustained neuroprotection in ME/CFS central sensitization  
**Prompt for /integrate-topic:**
```
Add memantine to ch18-emerging-therapies with Mg comparison:

Memantine is an open-channel, use-dependent NMDA antagonist. Unlike Mg²⁺ (voltage-
dependent, relieved by depolarization), memantine blocks preferentially during
pathological NMDA overactivation and is not relieved by normal physiological activity.
This property makes it functionally superior to Mg²⁺ for sustained neuroprotection
during chronic low-level NMDA overactivation (the proposed mechanism in ME/CFS central
sensitization and allodynia).

Mechanistic relationship to Mg: memantine and Mg²⁺ share the NMDA channel block
mechanism but differ in subunit selectivity, voltage-dependence, and kinetics. They
are additive, not redundant.

Mechanistic relationship to Li: Li reduces NR2B subunit expression (reducing NMDA
currents upstream); memantine blocks the channel; Mg²⁺ blocks voltage-dependently.
Three non-redundant layers of NMDA modulation.

Clinical evidence: fibromyalgia case series (cognitive improvement, pain reduction);
no ME/CFS RCTs. Used at 5–20 mg/day (standard Alzheimer's dosing). Notable: memantine
is FDA-approved, well-tolerated, no thyroid/renal risks.

Certainty: 0.30 (NMDA mechanism: excellent; ME/CFS application: no controlled data).
Source: brainstorm-li-mg-analogs-2026-04-17.md (C2).
```

---

### TASK 9.2 — TRPM7 as pan-divalent-cation transporter (Mg + Mn + Zn)

**Topic:** TRPM7 dysfunction impairs not just Mg²⁺ but Mn²⁺ and Zn²⁺ entry — broadens the consequence of TRPM7 dysfunction in ME/CFS  
**Prompt for /integrate-topic:**
```
Add to ch14h-trpm3-channelopathy (TRPM7 section, H1 in brainstorm-calcium):

TRPM7 is not exclusively a Mg²⁺ channel — it transports several divalent cations
including Zn²⁺ and Mn²⁺. If TRPM7 is dysfunctional in ME/CFS (DuPreez2023), the
functional consequences extend beyond Mg deficiency:

- Zn²⁺ entry via TRPM7 is impaired → reduced synaptic Zn²⁺ → loss of nanomolar
  NMDA brake → enhanced central sensitization (independent of Mg's millimolar block)
- Mn²⁺ entry via TRPM7 is impaired → Mn²⁺-dependent kinase activity reduced (including
  some GSK-3β activity in certain cellular contexts)
- The net effect: TRPM7 dysfunction is not a single-mineral deficiency but a
  pan-divalent-cation transport failure, simultaneously impairing Mg²⁺, Zn²⁺, and
  Mn²⁺ homeostasis

Prediction: ME/CFS patients with the most severe TRPM7 dysfunction (DuPreez2023 patch-
clamp measure) should show combined deficits in RBC Mg, plasma Zn, and possibly plasma
Mn — a multi-mineral signature that distinguishes TRPM7-mediated from other causes of
isolated Mg deficiency.

Certainty: 0.30 (TRPM7 multi-cation transport: established; ME/CFS prediction: novel,
no direct data).
Source: brainstorm-li-mg-analogs-2026-04-17.md (C4 and A3 Zn section).
```

---

## Execution Order (priority-sorted)

| Priority | Task | Rationale |
|----------|------|-----------|
| 1 | 1.3 — Mg-first sequencing note | Safety-critical, actionable immediately |
| 2 | 1.4 — Thyroid Se/Mg/Zn + Li | Safety-critical, Li protocol gap |
| 3 | 3.1 — Selenium deiodinase | Enables task 1.4 content |
| 4 | 5.1 — K⁺/Mg co-dependency | Fludrocortisone patients at risk now |
| 5 | 2.1 — Taurine NCX/ATPase | Highest-evidence new analog |
| 6 | 1.1 — Mg + GSK-3β in ch16 | Fills documented gap |
| 7 | 1.2 — Li response ~ inverse RBC-Mg hypothesis | Novel hypothesis |
| 8 | 4.1 — Zinc triple overlap | Mechanistically rich |
| 9 | 2.2 — Taurine NF-κB (TauCl) | Extends taurine content |
| 10 | 7.1 — Inositol Li paradox | Integrates literature-lithium-ip3 content |
| 11 | 6.1 — Berberine as Li-analog | Emerging therapy addition |
| 12 | 8.1 — Creatine + Mg CK | Straightforward ch16 addition |
| 13 | 8.2 — NMN/NR + Mg NADK | Metabolic depth addition |
| 14 | 9.1 — Memantine NMDA | Speculative, ch18 |
| 15 | 9.2 — TRPM7 pan-divalent | Mechanistic broadening, ch14h |

**Run with:** `/integrate-topic` for each task, using the prompt above as the topic description.

## Nodes

> **Status: stub** — nodes not yet populated. Run Phase 3a of `/integrate-topic li-mg-analogs` to populate this table.

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
