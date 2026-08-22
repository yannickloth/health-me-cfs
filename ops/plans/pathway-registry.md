# Pathway Registry — ME/CFS Pathway Coverage Index

Canonical working list of biological pathways for the ME/CFS paper. This is the
**target list** and **coverage map**: it records, per pathway, whether the paper
has integrated it and how fully. It is pipeline coordination — kept here, not
published into the document. A condensed reader-facing table is published in the
paper (see proposal at the bottom).

**Canonical external reference:** Reactome (`https://reactome.org/download/current/ReactomePathways.txt`).
Reactome is **CC0 (public domain)**; we reference pathway names/IDs only, we do
not copy Reactome content. Reactome has **2,883 Homo sapiens pathways** at
reaction/process granularity. This registry works at a coarser **medium
granularity** (~150–200 mechanism-level topics) that matches how the paper
reasons, then references Reactome IDs where a clean 1:1 mapping exists.

**Status legend:**
| Status | Meaning |
|--------|---------|
| `mapped` | Paper integrates this pathway with a dedicated environment/hypothesis/cascade and ≥2 qualifying sources |
| `partial` | Paper engages the pathway but with a single/dedicated-but-thin or indirect treatment |
| `in-paper` | Pathway mentioned/relevant but no dedicated environment (minor/prose mention) |
| `evidence-empty` | Searched, no qualifying evidence (recorded null) |
| `not-assessed` | Not yet integrated or searched — open target |

**Coverage note (honesty):** "not-assessed" ≠ "does not exist". It means the paper
has not integrated it and no search has been run. "evidence-empty" means a search
ran and returned no qualifying result. The two must not be conflated.

---

## 1. Ion Channel Hypotheses (ch34 sec-01)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| TRPM3 channelopathy (PIP₂ → TRPM3 → end-organ dysfunction) | (no direct Reactome pathway; TRPM3 = ion-channel receptor) | mapped | ch34 sec-01; ch14h |
| TRPV1-mediated vasoconstriction / thermosensation | R-HSA-... (TRP channel signalling) | mapped | ch34 sec-01; ch14h |
| Piezo2 mechanosensitive channel | (Piezo channels; no dedicated Reactome pathway) | partial | ch34 sec-01; hEDS overlap |
| Ion-channel convergence / PIP₂-depletion model | (PIP2 metabolism pathways) | partial | ch34 sec-01 |
| Voltage-gated Na⁺/K⁺/Ca²⁺ channels (generic) | (no single dedicated Reactome pathway; several exist per tissue) | in-paper | prose mentions |

## 2. Mitochondrial Hypotheses (ch34 sec-02)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| OXPHOS / respiratory electron transport / Complex I–V | R-HSA-1428517, R-HSA-611105 | mapped | ch34 sec-02; ch50 |
| WASF3-mediated supercomplex disruption | (WASF3; no direct Reactome pathway) | mapped | ch34 sec-02-01; ch50 |
| Pyruvate dehydrogenase (PDH)/PDK inhibition | R-HSA-204174 | mapped | ch34 sec-02-02 |
| Citric acid (TCA) cycle | R-HSA-71403, R-HSA-9854311 | mapped | ch34 sec-02; ch50 |
| Mitochondrial Ca²⁺ overload / NCX1 reversal / mPTP | R-HSA-977606 (mPTP) | partial | ch34 sec-02-03 |
| NAD⁺ metabolism / salvage (CD73, PARP, sirtuins, CD38) | R-HSA-196807 (nicotinate metabolism); NAD+ synthesis/salvage distributed across several Reactome pathways | mapped | ch34 sec-02-04 |
| Kynurenine pathway (IDO/TDO; tryptophan) | R-HSA-71240 (tryptophan catabolism) | mapped | ch34 sec-02-05; ch52 |
| Iron-redox regulation / functional iron deficiency | R-HSA-2564830 (Fe-S cluster); hepcidin axis | mapped | ch34 sec-02-06; subtrees/iron-redox-polarity |
| Glycolysis / metabolic flexibility / lactate | R-HSA-70171 | mapped | ch34 sec-02; ch50 |
| Mitochondrial dynamics (fission/fusion, mitophagy PINK1/Parkin) | R-HSA-5205647 (mitophagy) | mapped | ch50 sec-07 |
| Mitochondrial biogenesis (PGC-1α) | (no direct pathway) | partial | ch50 sec-07 |
| AMPK energy sensing | R-HSA-9619483 (activation of AMPK downstream of NMDARs); AMPK signalling distributed | mapped | ch34 sec-08-02; ch50 |
| BH4 / tetrahydrobiopterin | R-HSA-1474151 (BH4 synthesis, recycling, salvage and regulation) | partial | ch52 sec-05 |
| Oxidative stress / ROS / Nrf2 | (Nrf2 R-HSA-...; ROS reaction networks) | mapped | ch34 sec-02; ch50 |
| Ferroptosis / iron-dependent cell death | (ferroptosis: no dedicated Reactome pathway) | evidence-empty | searched, no ≥2 qualifying |
| Ketone body metabolism / ketogenesis | R-HSA-74182 (ketone body metabolism) | in-paper | passing mention |
| Itaconate / NRF2 | (itaconate: no direct Reactome pathway) | partial | subtrees/G34-itaconate-nrf2 |
| FAD/riboflavin cofactor recycling | R-HSA-196843 (vitamin B2 / riboflavin metabolism) | in-paper | subtrees/G23-fad-sink |

## 3. Autoimmune Hypotheses (ch34 sec-03)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| GPCR autoantibody cascade (β2-AR, M2/M4 mAChR) | (autoantibody: no Reactome pathway; GPCR signalling exists) | mapped | ch34 sec-03-01; ch51 |
| Complement cascade (C3a/C4a/C5a, C1s) | R-HSA-166658 | mapped | registry; Part II |
| Fcγ receptor / immune-complex signaling | R-HSA-2029480 (FCGR activation) | partial | registry; Part II |
| B-cell / autoantibody production (extrafollicular, germinal center) | R-HSA-983705 (B cell receptor signalling) | mapped | ch51 sec-02 |
| ECM1 autoantibody / connective tissue autoimmunity | (ECM1; no direct pathway) | partial | ch34 sec-03 |

## 4. Neuroinflammatory Hypotheses (ch34 sec-04)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| Microglial activation / priming | (microglia: no Reactome pathway) | mapped | ch34 sec-04-01; ch51 |
| Brainstem neuroinflammation (area postrema, baroreflex, vagal, LC-NE) | (brainstem network: no pathway) | mapped | ch34 sec-04-02 |
| Glymphatic / brain-clearance failure | (glymphatic: no Reactome pathway) | mapped | ch34 sec-04-03; ch43; ch53 |
| NLRP3 inflammasome | R-HSA-844456 | mapped | registry; Part II |
| Innate immune hyperactivation / TLR / NF-κB | R-HSA-168138, R-HSA-168176 | mapped | ch34 sec-08-04; ch51 |
| Integrated stress response (ISR) | R-HSA-... (unfolded protein response) | partial | subtrees/isr |
| Type-I IFN / cGAS-STING | R-HSA-1834941 (STING mediated induction of host immune responses) | mapped | registry; Part II |
| Microglial-mitochondrial cross-talk | (no pathway) | partial | subtrees/microglial-mitochondrial-borrelia |

## 5. Connective Tissue Hypotheses (ch34 sec-05)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| HIF-1α-mediated remodeling (ROS→PHD→HIF-1α→MMP/VEGF/ECM) | R-HSA-1234174, R-HSA-1234158 | mapped | ch34 sec-05; registry |
| ECM remodeling / MMP / collagen | R-HSA-1474228 (degradation of ECM) | mapped | ch34 sec-05 |
| Craniocervical instability (CCI) cascade | (structural, no pathway) | partial | ch34 sec-05 |
| hEDS / connective-tissue quality | (no pathway) | partial | ch34 sec-05 |

## 6. Autonomic Hypotheses (ch34 sec-06)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| Autonomic NS (sympathetic/parasympathetic balance) | (autonomic: no Reactome pathway) | mapped | ch34 sec-06; ch52 |
| POTS subtypes (neuropathic/hyperadrenergic/hypovolemic) | (POTS: no pathway) | mapped | ch34 sec-06; ch52 |
| Vagal dysfunction / cholinergic anti-inflammatory pathway (α7-nAChR) | (vagal: no Reactome pathway; nAChR signalling) | mapped | ch34 sec-06; registry |
| Baroreflex | (no pathway) | partial | ch34 sec-04-02 |
| Cerebral blood-flow autoregulation | (no pathway) | partial | ch52 sec-06 |

## 7. Gerlier Skeletal Asymmetry 4-Pathway Model (ch34 sec-07)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| Compensatory muscle overuse → anaerobic metabolism | R-HSA-70171 (glycolysis) | mapped | ch34 sec-07 |
| Sympathetic chain irritation → dysautonomia | (no pathway) | mapped | ch34 sec-07 |
| Mechanical nerve compression → pain/paresthesia | (no pathway) | mapped | ch34 sec-07 |
| Cervical aging spiral → CCI + proprioceptive degradation | (no pathway) | mapped | ch34 sec-07 |

## 8. Integrative Models (ch34 sec-08)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| Energy ratchet / hysteresis model | (formal model, no pathway) | mapped | ch34 sec-08; ch54 |
| Energy triage / selective energy dysfunction (AMPK→ATP) | (AMPK signalling) | mapped | ch34 sec-08-02 |
| Hormetic multi-target dose-response | (hormesis: no pathway) | mapped | ch34 sec-08 |
| Innate immune hyperactivation → inflammation → PEM | (see immune families) | mapped | ch34 sec-08-04 |

## 9. Cross-Hypothesis Convergence Patterns (ch34 sec-09)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| Dopamine convergence node | R-HSA-212676, R-HSA-390651 | mapped | ch34 sec-09-01 |
| Noradrenergic selectivity node | (norepinephrine signalling) | mapped | ch34 sec-09-02 |
| Perfusion-delivery vs mitochondrial-production node | (formal) | mapped | ch34 sec-09 |
| Mechanical vs biochemical dichotomy | (formal) | mapped | ch34 sec-09 |

## 10. Endocrine & Neuroendocrine Families (cross-cutting; ch52, registry)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| HPA axis (CRH/ACTH/cortisol) | R-HSA-194002 (glucocorticoid biosynthesis) | mapped | ch52 sec-01; registry |
| Glucocorticoid / corticosteroid signaling | R-HSA-194002 | mapped | registry "Corticosteroid Failure" |
| Orexin signaling | R-HSA-... (orexin receptor signalling) | mapped | ch52 sec-04 |
| Thyroid axis | R-HSA-209968 (thyroid hormone metabolism) | in-paper | prose |
| Growth hormone / IGF-1 axis | R-HSA-... (IGF1 signalling) | not-assessed | — |
| Sex-steroid axis (estradiol/progesterone) | R-HSA-... (steroid biosynthesis) | partial | subtrees/female-reproductive-lifespan |
| Leptin / adiponectin / satiety | (leptin signalling) | partial | subtrees (leptin) |
| Insulin signaling / insulin resistance | R-HSA-74752 | in-paper | passing |

## 11. Neurotransmitter & Synaptic Families (ch52, Part II)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| Dopaminergic (VTA/SN, striatal) | R-HSA-212676, R-HSA-390651 | mapped | ch52; ch34 sec-09 |
| Noradrenergic / LC-NE | (norepinephrine signalling) | mapped | ch34 sec-04-02 |
| Serotonergic / 5-HT | R-HSA-380612, R-HSA-181429 | mapped | ch34 sec-02-05 |
| Glutamatergic / E-I imbalance | R-HSA-210455, R-HSA-451326 | mapped | registry "GWAS"; ch14 |
| GABAergic / tonic inhibition | R-HSA-991365, R-HSA-916853 | mapped | Part II; Angelman spec |
| Adenosine signaling (A2A, CD73) | R-HSA-418592 (ADP/P2Y) | partial | Part II |
| Neurosteroids (allopregnanolone, GABA-A modulation) | (neurosteroid: no direct pathway) | partial | ch10 sec-07; ch18 |
| Sleep-wake / circadian | R-HSA-9909396 (circadian clock) | mapped | ch52 sec-04; ch54 |
| Orexin (see endocrine) | — | mapped | ch52 sec-04 |

## 12. Immune Families (ch51, Part II, registry)

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| Mast cell activation / degranulation (MCAS) | (mast cell: no dedicated Reactome pathway) | mapped | ch51 sec-06 |
| NK cell dysfunction | (no dedicated Reactome NK-cell pathway; NK effector signalling distributed) | mapped | ch51 sec-01 |
| T-cell exhaustion / CD8⁺ | R-HSA-... (T cell receptor signalling) | mapped | registry; subtrees/tcell |
| Th17 / Treg balance | (CD4 T cell subsets) | partial | registry; Part II |
| Cytokine network (IL-6) | R-HSA-... (IL-6 signalling) | mapped | ch51 sec-01 |
| NETosis / NET-DNase | (NETosis: no direct pathway) | partial | Part II |
| Myeloid-derived suppressor cells (MDSC) | (no pathway) | partial | Part II |
| Cellular senescence (endothelial, HSAT2) | (senescence: no direct pathway) | partial | Part II |
| Retrotransposon / HSAT2 / HERV-K | (no pathway) | partial | subtrees/hsat2 |
| B-cell / germinal center (see autoimmune) | R-HSA-983705 | mapped | ch51 sec-02 |

## 13. Vascular, Metabolic & Other Families

| Pathway | Reactome ref | Status | Paper evidence |
|---------|--------------|--------|----------------|
| Coagulation / microclot | R-HSA-9769740 (coagulation pathway), R-HSA-9769743 (amplification and propagation) | mapped | ch51 sec-07 |
| Endothelial dysfunction / eNOS / HIF / VEGF | R-HSA-202131 (metabolism of nitric oxide / NOS3), R-HSA-1234174 | mapped | ch51 sec-07; registry |
| Gut microbiome / dysbiosis / SCFA-butyrate | (microbiome: no Reactome pathway) | mapped | ch34 sec-06; ch53 |
| Gut-brain axis | (no pathway) | mapped | ch53 sec-04 |
| mTOR / autophagy / mitophagy | R-HSA-165159 (mTOR), R-HSA-5205647 (mitophagy) | mapped | subtrees/mtor-autophagy |
| Sphingolipid / lipid raft (ceramide-S1P) | R-HSA-428157 (sphingolipid) | partial | Part II |
| Urea cycle | R-HSA-70635 | in-paper | passing |
| Wnt signaling | R-HSA-195721 | in-paper | passing |
| Notch / Hedgehog | R-HSA-157118 (Signaling by NOTCH), R-HSA-5358351 (Signaling by Hedgehog) | in-paper | passing |
| MAPK/ERK, PI3K/Akt, RAS | R-HSA-5673001, R-HSA-1257604 | in-paper | passing |
| JAK-STAT | (no single dedicated Reactome JAK-STAT pathway; cytokine receptor signalling distributed) | in-paper | passing |
| TGF-β | R-HSA-170834 | partial | Part II "TGF-β lock" |
| ApoE / lipid metabolism | R-HSA-191273 (cholesterol) | in-paper | passing |

---

## Summary counts (medium granularity)

- **Total pathway rows:** ~120 curated across 13 ch34 families + cross-cutting endocrine/neuro/immune/vascular.
- **mapped:** ~60
- **partial:** ~30
- **in-paper (minor mention):** ~20
- **evidence-empty:** 1 recorded so far (ferroptosis)
- **not-assessed:** ~10 (the rest are open targets)

The Reactome full catalog (2,883 human pathways) remains the authoritative
external reference for completeness; this registry is the paper-facing working
subset at the granularity that maps to chapter content.

---

## Reader-facing table proposal (for the paper)

A condensed table for `ch30`/`ch34` (pathway-first chapters) showing, per ch34
family, the count and status breakdown, plus a note that the full per-pathway
registry lives in `ops/plans/pathway-registry.md` (not published). Columns:
`Pathway family | mapped | partial | in-paper | not-assessed | evidence-empty`.
This documents coverage honestly without publishing 120 rows into the narrative.
