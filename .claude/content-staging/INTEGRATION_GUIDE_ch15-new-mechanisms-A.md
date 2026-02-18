# Integration Guide: Ch15 Sections 15.2, 15.8, 15.9, 15.10 — New Symptom Mechanisms

**Target file:** `contents/part2-pathophysiology/ch15-symptom-producing-mechanisms.tex`
**Created:** 2026-02-17
**Agent:** literature-integrator

---

## Summary of Papers Found

| BibTeX Key | Authors | Year | Journal | Certainty | Section |
|---|---|---|---|---|---|
| `Matsumura2004endothelial` | Matsumura & Kobayashi | 2004 | Front Bioscience | Medium | 15.2 |
| `Marty2008NTS` | Marty et al. | 2008 | Eur J Neuroscience | Medium-High | 15.2 |
| `Huang2020IDO` | Huang et al. | 2020 | Front Immunology | High | 15.8 |
| `LugoHuitron2013quinolinic` | Lugo-Huitrón et al. | 2013 | Oxid Med Cell Longevity | High | 15.8 |
| `Bai2021kynurenineTherapy` | Bai et al. | 2021 | Complex Psychiatry | Medium | 15.8 |
| `Weinstock2023MCASneuro` | Weinstock et al. | 2023 | J Personalized Medicine | Medium | 15.9 |
| `Abdulrazzaq2022H3receptor` | Abdulrazzaq et al. | 2022 | Biomed Pharmacother | Medium | 15.9 |
| `Kempuraj2016neuroinflammation` | Kempuraj et al. | 2016 | J Neurol Neurosurg Spine | Medium | 15.9 |
| `Lakatos2025mastMicroglia` | Lakatos & Rosta | 2025 | Int J Mol Sciences | Medium-High | 15.9 |
| `Wostyn2018glymphatic` | Wostyn & De Deyn | 2018 | Medical Hypotheses | Low-Medium | 15.10 |
| `NematGorgani2025glymphatic` | Nemat-Gorgani et al. | 2025 | Int J Mol Sciences | Medium | 15.10 |
| `Ding2025glymphaticAD` | Ding et al. | 2025 | Alzheimer's & Dementia | High | 15.10 |

**Already in references.bib (also cite these):**
- `Dantzer2007twenty` — 20 years cytokine sickness behavior (15.2)
- `Dantzer2008inflammation` — cytokines to depression, Nature Rev Neurosci (15.2)
- `Dantzer2000neural` — neural and humoral pathways, cytokine-to-brain (15.2)
- `Morris2013sickness` — ME/CFS and sickness behavior narrative review (15.2)
- `Kavyani2022kynurenine` — kynurenine pathway review in ME/CFS (15.8)
- `Dehhaghi2022kynurenine` — kynurenine pathway and NAD+ in ME/CFS (15.8)
- `phair2019ido` — IDO metabolic trap hypothesis (15.8)
- `Novak2022` — mast cell disorders, cerebral blood flow, small fiber neuropathy (15.9)
- `Frioni2024MCAS` — clinical relevance of mast cell activation in ME/CFS (15.9)
- `Zhang2024MastBrain` — mast cells in brain disorders (15.9)
- `Afrin2017MCAS` — characterization of mast cell activation syndrome (15.9)
- `Xie2013glymphatic` — sleep drives metabolite clearance from brain (15.10)

---

## Section 15.2: Sickness Behavior as Overarching Framework

**Section label:** `\label{sec:ch15-sickness-behavior}`

### Key Concept

Sickness behavior (fatigue, anorexia, social withdrawal, hyperalgesia, sleep changes) is a
coordinated, cytokine-driven program mediated primarily through hypothalamic integration.
PGE2, synthesized at the blood-brain barrier endothelium in response to peripheral IL-1beta,
IL-6, and TNF-alpha, is the critical final effector. In ME/CFS, this program fails to resolve.

### Coverage Map

**Mechanism 1: Two routes of cytokine-to-brain communication**
- Neural route (vagal afferents via nucleus tractus solitarius): rapid, seconds-to-minutes
- Humoral route (PGE2 at BBB endothelium, circumventricular organs): slower, minutes-to-hours
- Papers: `Dantzer2000neural`, `Matsumura2004endothelial`, `Marty2008NTS`

**Mechanism 2: PGE2 as primary hypothalamic effector**
- Brain endothelial cells (COX-2-dependent) are the major PGE2 source during inflammation
- PGE2 acts on EP3 and EP4 receptors in hypothalamus and brainstem
- Triggers fever, HPA activation, reduced appetite, social withdrawal, fatigue
- Papers: `Matsumura2004endothelial`, `Marty2008NTS`, `Dantzer2008inflammation`

**Mechanism 3: Why resolution fails in ME/CFS**
- Normal sickness behavior resolves when pathogen is cleared; cytokines return to baseline
- In ME/CFS: persistent low-level immune activation (TGF-beta, NK hypofunctionality) maintains
  cytokine drive; HPA axis hyporesponsiveness removes anti-inflammatory glucocorticoid brake
- Papers: `Morris2013sickness`, `Dantzer2007twenty`

**Mechanism 4: PEM as acute sickness behavior exacerbation**
- Exercise triggers an abnormal cytokine spike in ME/CFS patients (vs. no spike in controls)
- This recapitulates acute sickness behavior, explaining 12-48h delayed symptom onset
- Tie to cytokine fatigue section (already covered in 15.4)

### Certainty Assessment

- `Matsumura2004endothelial`: Medium certainty. Review/mechanistic paper. Well-established
  endothelial PGE2 biology but written in 2004; core mechanism remains accepted.
- `Marty2008NTS`: Medium-High certainty. Electrophysiology study in rat brainstem slices.
  Strong mechanistic data, but animal model.
- The sickness behavior framework overall: High certainty for acute sickness behavior;
  Medium certainty for its application to ME/CFS chronicity.

### Suggested LaTeX (15.2 opening hypothesis)

```latex
\begin{hypothesis}[Sickness Behavior: Physiological Basis]
\label{hyp:ch15-sickness-cytokine-PGE2}
Peripheral proinflammatory cytokines communicate with the hypothalamus via two
parallel pathways: (1) rapid vagal afferent signaling through the nucleus tractus
solitarius~\cite{Marty2008NTS, Dantzer2000neural}, and (2) slower humoral signaling
in which brain endothelial cells synthesize prostaglandin~E\textsubscript{2}
(PGE\textsubscript{2}) via COX-2 in response to circulating IL-1\textbeta{} and
TNF-\textalpha{}~\cite{Matsumura2004endothelial}. PGE\textsubscript{2} acts on
hypothalamic EP3/EP4 receptors to produce the coordinated sickness behavior program:
fatigue, anorexia, hyperalgesia, social withdrawal, and sleep
dysregulation~\cite{Dantzer2008inflammation, Dantzer2007twenty}.
(Mechanism: well-established in animal and human models; certainty: High for acute
sickness behavior, Medium for chronic persistence in ME/CFS).
\end{hypothesis}
```

```latex
\begin{hypothesis}[Persistent Sickness Behavior in ME/CFS]
\label{hyp:ch15-sickness-persistence}
In acute infection, sickness behavior resolves as pathogens are cleared and cytokines
return to baseline. In ME/CFS, this resolution fails: persistent immune activation
(elevated TGF-\textbeta{}, NK hypofunctionality, activated microglia) maintains
cytokine drive, while HPA axis hyporesponsiveness removes the glucocorticoid
anti-inflammatory brake~\cite{Morris2013sickness}. Post-exertional malaise may
represent an acute exacerbation of this state, in which exercise triggers an
abnormal cytokine spike that transiently recapitulates full sickness
behavior~\cite{Dantzer2007twenty, Morris2013sickness}.
(Certainty: Medium. Mechanism coherent; direct PGE2 measurement in ME/CFS lacking.)
\end{hypothesis}
```

---

## Section 15.8: Kynurenine/Quinolinic Acid Excitotoxicity Cascade

**Section label:** `\label{sec:ch15-kynurenine}`

### Key Concept

IFN-gamma and other inflammatory cytokines upregulate IDO-1, diverting tryptophan away from
serotonin synthesis into the kynurenine pathway. Downstream, quinolinic acid (QUIN) -- an NMDA
receptor agonist -- accumulates and drives sub-threshold excitotoxicity in the hippocampus,
striatum, and cortex. Kynurenic acid (KYNA) serves as a protective counterweight (NMDA antagonist)
but has sedating, cognitive-dampening effects. NAD+ depletion via PARP activation by QUIN-induced
DNA damage compounds fatigue.

### Coverage Map

**Mechanism 1: IDO-1 upregulation by IFN-gamma**
- IFN-gamma, IL-1beta, TNF-alpha induce IDO1 (and to a lesser extent IDO2/TDO)
- This diverts up to 90% of tryptophan through the kynurenine pathway
- Reduces serotonin and melatonin synthesis (links to 15.5 serotonin section, 15.3 melatonin)
- Papers: `Huang2020IDO`, `Kavyani2022kynurenine`

**Mechanism 2: Quinolinic acid accumulation and NMDA excitotoxicity**
- Kynurenine is converted by KMO to 3-hydroxykynurenine, then to quinolinic acid
- QUIN is an NMDA receptor agonist with multiple neurotoxic mechanisms beyond receptor activation:
  oxidative stress, mitochondrial dysfunction, cytoskeletal disruption, apoptosis induction
- At sub-threshold concentrations (below frank excitotoxicity), QUIN impairs hippocampal
  function (memory, learning) and contributes to central sensitization
- Papers: `LugoHuitron2013quinolinic`, `Kavyani2022kynurenine`, `Dehhaghi2022kynurenine`

**Mechanism 3: Kynurenic acid as sedating neuroprotective counterweight**
- KYNA (produced by KAT from kynurenine) blocks NMDA receptors at glycine-B site and GluN2
- Neuroprotective against QUIN excitotoxicity, but excess KYNA:
  - Causes cognitive slowing, mental fatigue, brain fog
  - Inhibits presynaptic alpha-7 nicotinic receptors, reducing acetylcholine release
- The QUIN/KYNA ratio determines the net cognitive/excitotoxicity outcome
- Papers: `Bai2021kynurenineTherapy`, `Huang2020IDO`

**Mechanism 4: NAD+ depletion loop**
- QUIN-induced DNA strand breaks activate PARP (poly-ADP-ribose polymerase)
- PARP consumes NAD+ to repair DNA, depleting cellular energy currency
- Synergizes with mitochondrial dysfunction already present in ME/CFS
- Papers: `Dehhaghi2022kynurenine`

**Therapeutic implications:**
- IDO-1 inhibitors (e.g., 1-methyl-tryptophan analogs): reduce flux into KP
- KMO inhibitors: reduce QUIN synthesis while increasing KYNA
- Tryptophan supplementation: partially restores serotonin/melatonin but may increase QUIN
- Niacin/NAD+ precursors: address NAD+ depletion directly
- Papers: `Bai2021kynurenineTherapy`, `Kavyani2022kynurenine`

### Certainty Assessment

- `Huang2020IDO`: High certainty. Peer-reviewed review, Frontiers Immunology, multiple
  independent research groups' findings synthesized.
- `LugoHuitron2013quinolinic`: High certainty. Core biochemical mechanisms well-replicated;
  NMDA agonism of QUIN is textbook-level established.
- `Bai2021kynurenineTherapy`: Medium certainty. Therapeutic framework; RCT evidence for KP
  enzyme inhibitors in ME/CFS specifically is lacking.
- `Kavyani2022kynurenine` and `Dehhaghi2022kynurenine`: Medium-High certainty for KP
  dysregulation in ME/CFS; mechanistic proposals plausible but require larger direct studies.

### Suggested LaTeX (15.8)

```latex
\begin{hypothesis}[Quinolinic Acid Excitotoxicity in ME/CFS]
\label{hyp:ch15-kynurenine-QUIN}
Proinflammatory cytokines (IFN-\textgamma{}, IL-1\textbeta{}, TNF-\textalpha{})
upregulate IDO-1, diverting tryptophan from serotonin synthesis into the kynurenine
pathway~\cite{Huang2020IDO, Kavyani2022kynurenine}. Downstream, kynurenine
monooxygenase (KMO) converts kynurenine to 3-hydroxykynurenine and ultimately to
quinolinic acid (QUIN), a potent NMDA receptor agonist~\cite{LugoHuitron2013quinolinic}.
At sub-threshold concentrations, QUIN drives hippocampal dysfunction, oxidative stress,
and mitochondrial injury rather than frank excitotoxic cell death, potentially
explaining the cognitive impairment and dysexecutive symptoms in
ME/CFS~\cite{Kavyani2022kynurenine, Dehhaghi2022kynurenine}.
(Certainty: Medium. KP dysregulation in ME/CFS is replicated; direct QUIN
measurement in brain parenchyma is technically challenging and understudied.)
\end{hypothesis}
```

```latex
\begin{hypothesis}[KYNA--QUIN Balance and Brain Fog]
\label{hyp:ch15-kynurenine-KYNA-balance}
Kynurenic acid (KYNA), produced by kynurenine aminotransferases (KAT) from
kynurenine, is a broad-spectrum NMDA and \textalpha{}-7 nicotinic receptor
antagonist that counteracts QUIN toxicity~\cite{Bai2021kynurenineTherapy,
Huang2020IDO}. However, elevated KYNA itself impairs cognition by suppressing
cholinergic and dopaminergic neurotransmission. The net cognitive outcome in
ME/CFS thus depends on the dynamic QUIN/KYNA ratio: when QUIN dominates,
excitotoxic stress predominates; when KYNA dominates, a sedating ``fog'' effect
predominates~\cite{Bai2021kynurenineTherapy}.
(Certainty: Medium. Ratio hypothesis is mechanistically coherent; direct human
data in ME/CFS is limited to peripheral measurements.)
\end{hypothesis}
```

---

## Section 15.9: Mast Cell Mediators and Histaminergic Symptoms

**Section label:** `\label{sec:ch15-mast-cells}`

### Key Concept

Mast cells are tissue sentinels that degranulate in response to allergens, pathogens, stress,
and neuropeptides (substance P). In ME/CFS, mast cell activation (MCAS overlap in 15-25% of
patients) releases histamine, tryptase, prostaglandins, and cytokines that: (1) activate
microglia, (2) disrupt the blood-brain barrier, and (3) modulate neurotransmission via
H1-H4 receptors. H3 receptors -- presynaptic autoreceptors -- are particularly relevant:
endogenous histamine acting on H3R inhibits release of dopamine, acetylcholine, and
norepinephrine, potentially amplifying fatigue and cognitive symptoms.

### Coverage Map

**Mechanism 1: MCAS-ME/CFS overlap and prevalence**
- 15-25% of ME/CFS patients meet clinical criteria for MCAS (Frioni 2024 data)
- Shared features: post-exertional worsening, orthostatic intolerance, mast-cell-type symptoms
- MCAS-positive ME/CFS subgroup responds better to mast-cell-directed treatment
- Papers: `Novak2022`, `Frioni2024MCAS`, `Weinstock2023MCASneuro`

**Mechanism 2: H1/H2/H3/H4 receptor pharmacology**
- H1R (postsynaptic): mediates allergic inflammation, itch, vascular permeability
- H2R (gastric, cardiac): regulates gastric acid, cardiac chronotropy
- H3R (presynaptic autoreceptor and heteroreceptor): inhibits release of histamine, DA, ACh,
  NE, serotonin. H3R activation = reduced neurotransmitter tone (cognitive slowing, fatigue)
- H4R (immune cells, gut): regulates immune cell chemotaxis
- Papers: `Abdulrazzaq2022H3receptor`

**Mechanism 3: H3 receptor and cognitive/fatigue symptoms**
- H3R is exclusively expressed in CNS; predominantly presynaptic
- Endogenous histamine from mast cells or histaminergic neurons activates H3R
- H3R activation inhibits ACh release in the frontal cortex and hippocampus (impairs attention,
  memory) and inhibits DA release in striatum (impairs motivation, reward, motor initiation)
- H3R antagonists/inverse agonists improve cognition in animal and early human studies
- Papers: `Abdulrazzaq2022H3receptor`

**Mechanism 4: Mast cell-microglia bidirectional communication**
- Mast cells release histamine, tryptase, IL-1beta, and TNF-alpha that activate microglia
  via PAR2 and purinergic receptors
- Activated microglia release IL-6, TNF-alpha, and ROS that in turn trigger further mast
  cell degranulation
- Bidirectional loop amplifies neuroinflammation beyond what either cell type does alone
- Blood-brain barrier disruption by tryptase/histamine allows peripheral immune access to CNS
- Papers: `Kempuraj2016neuroinflammation`, `Lakatos2025mastMicroglia`, `Zhang2024MastBrain`

**Mechanism 5: Substance P in pain amplification**
- Substance P is released from sensory neurons and activates mast cells via MRGPRX2/NK1 receptor
- Activated mast cells release more substance P (amplification loop) and histamine/tryptase
  that sensitize nociceptors
- Contributes to allodynia, widespread pain, and central sensitization in ME/CFS
- Papers: `Kempuraj2016neuroinflammation`, `Lakatos2025mastMicroglia`

**Therapeutic implications:**
- H1 antihistamines (cetirizine, loratadine): reduce histamine-mediated symptoms
- H2 antihistamines (famotidine): reduce GI symptoms, secondary mast cell effects
- Mast cell stabilizers (cromolyn sodium, ketotifen): prevent degranulation
- H3R inverse agonists/antagonists (pitolisant): investigational for cognitive symptoms
- Papers: `Weinstock2023MCASneuro`, `Abdulrazzaq2022H3receptor`

### Certainty Assessment

- `Weinstock2023MCASneuro`: Medium certainty. Case series (n=8), open-label; directionally
  significant but small sample. Important clinical evidence for MCAS-ME/CFS link.
- `Abdulrazzaq2022H3receptor`: Medium certainty. Review of H3R pharmacology; well-established
  basic science. Application to ME/CFS is extrapolated, not directly studied.
- `Kempuraj2016neuroinflammation`: Medium certainty. Mechanistic review; in vitro and animal
  data for mast cell-microglia crosstalk.
- `Lakatos2025mastMicroglia`: Medium-High certainty. Recent 2025 review consolidating multiple
  lines of bidirectional mast cell-microglia evidence.
- `Novak2022`: Medium-High certainty. Clinical study directly measuring mast cell disorder
  prevalence in ME/CFS cohort.

### Suggested LaTeX (15.9)

```latex
\begin{hypothesis}[H3 Receptor Mediation of Histamine-Induced Cognitive Impairment]
\label{hyp:ch15-mastcell-H3receptor}
Mast-cell-derived histamine, whether released systemically (as in MCAS) or locally
within the central nervous system, acts on histamine H3 receptors (H3R)~---~presynaptic
autoreceptors and heteroreceptors exclusively expressed in the
brain~\cite{Abdulrazzaq2022H3receptor}. H3R activation inhibits the release of
dopamine, acetylcholine, and norepinephrine in the frontal cortex, hippocampus,
and striatum, reducing neurotransmitter tone. This mechanism could contribute to
the brain fog, impaired attention, and motivational deficits characterizing
ME/CFS~\cite{Abdulrazzaq2022H3receptor, Novak2022}.
Prediction: H3R inverse agonists (e.g., pitolisant) would attenuate cognitive
symptoms in ME/CFS patients with elevated histamine or MCAS overlap.
(Certainty: Low-Medium. H3R pharmacology is well-established; direct evidence
in ME/CFS patients is currently absent.)
\end{hypothesis}
```

```latex
\begin{hypothesis}[Mast Cell--Microglia Amplification Loop in ME/CFS Neuroinflammation]
\label{hyp:ch15-mastcell-microglia-loop}
Mast cell degranulation products (histamine, tryptase, IL-1\textbeta{}, TNF-\textalpha{})
activate microglia via protease-activated receptor 2 (PAR2) and purinergic
receptors~\cite{Lakatos2025mastMicroglia, Kempuraj2016neuroinflammation}. Activated
microglia reciprocally stimulate further mast cell degranulation, creating a positive
feedback loop that amplifies neuroinflammation beyond what either cell type could
sustain independently. Tryptase-mediated blood-brain barrier disruption additionally
allows peripheral immune access to the CNS, potentially explaining why some ME/CFS
patients exhibit fluctuating, trigger-sensitive symptom bursts characteristic of
mast cell biology~\cite{Frioni2024MCAS, Lakatos2025mastMicroglia}.
(Certainty: Medium. The mast cell-microglia loop is demonstrated in vitro and in
animal models; its specific role in ME/CFS requires direct investigation.)
\end{hypothesis}
```

---

## Section 15.10: Glymphatic Dysfunction and Brain Waste Accumulation

**Section label:** `\label{sec:ch15-glymphatic}`

### Key Concept

The glymphatic system (named by Nedergaard lab, 2012) is a brain-wide fluid exchange network
in which cerebrospinal fluid (CSF) flows along perivascular spaces (para-arterial), exchanges
with interstitial fluid (ISF) through astrocytic AQP4 water channels, and drains via para-venous
spaces and meningeal lymphatics. This system clears tau, amyloid-beta, and metabolic waste
products. It operates preferentially during slow-wave sleep (60% increase in interstitial space).
In ME/CFS, several factors converge to impair glymphatic function: unrefreshing sleep (reduced
SWS), adrenergic dysregulation (norepinephrine inhibits AQP4 polarization), and pre-existing
neuroinflammation. The result is a vicious cycle: waste accumulates, activates NLRP3
inflammasome in microglia, worsens neuroinflammation, and further disrupts sleep architecture.

### Coverage Map

**Mechanism 1: Glymphatic system physiology**
- CSF flows para-arterially along pulsatile vessels; astrocyte AQP4 channels at endfeet
  facilitate bulk flow exchange with ISF
- System is 60% more active during sleep; near-dormant during waking
- Xie 2013 (foundational, already in bib): demonstrated sleep-dependent metabolite clearance
- Papers: `Xie2013glymphatic`, `NematGorgani2025glymphatic`

**Mechanism 2: Slow-wave sleep dependency**
- Glymphatic efficiency is maximally coupled to delta-wave (SWS) oscillations
- Sleep duration is less important than sleep QUALITY (specifically SWS content)
- ME/CFS patients have reduced SWS relative to total sleep time (alpha-delta intrusion,
  unrefreshing sleep pattern)
- Papers: `NematGorgani2025glymphatic`, `Xie2013glymphatic`

**Mechanism 3: AQP4 polarization and its disruption**
- AQP4 must be polarized to astrocytic endfeet facing perivascular spaces
- Norepinephrine inhibits AQP4 function: chronic adrenergic dysregulation in ME/CFS
  (elevated resting NE, sympathetic overdrive) may chronically suppress glymphatic flow
- APOE4, TBI, neuroinflammation can depolarize AQP4 (relevant for comorbidities)
- Papers: `NematGorgani2025glymphatic`, `Ding2025glymphaticAD`

**Mechanism 4: Waste accumulation cascade**
- Impaired clearance allows tau, amyloid-beta, and pro-inflammatory metabolites to accumulate
- NLRP3 inflammasome activation by accumulated waste drives microglial
  neuroinflammation (IL-1beta, IL-18 production)
- Neuroinflammation further disrupts sleep architecture → closes the vicious cycle
- Papers: `NematGorgani2025glymphatic`, `Ding2025glymphaticAD`, `Wostyn2018glymphatic`

**Mechanism 5: Why sleep quality (not duration) matters**
- Total sleep time may appear normal or even increased in ME/CFS
- Patients report unrefreshing sleep despite adequate duration
- If glymphatic clearance requires SWS, then fragmented/alpha-intrusion sleep fails to
  provide the clearance window regardless of total sleep time
- This explains why "just sleeping more" does not resolve cognitive symptoms
- Papers: `Wostyn2018glymphatic`, `NematGorgani2025glymphatic`

### Certainty Assessment

- `Xie2013glymphatic`: High certainty. Landmark Science paper, widely replicated, foundational.
- `NematGorgani2025glymphatic`: Medium certainty. 2025 hypothesis/review from Stanford ME/CFS
  group (Davis lab). Mechanistically well-argued; direct glymphatic imaging in ME/CFS patients
  not yet performed. Application to ME/CFS is hypothesis-level.
- `Wostyn2018glymphatic`: Low-Medium certainty. Medical Hypotheses journal (post-review,
  hypothesis format). First ME/CFS-glymphatic hypothesis paper; cited for historical priority
  and conceptual framing.
- `Ding2025glymphaticAD`: High certainty for Alzheimer's; Medium for extrapolation to ME/CFS.
  Provides mechanistic grounding for the AQP4/waste accumulation model.

### Suggested LaTeX (15.10)

```latex
\begin{hypothesis}[Glymphatic Failure as Driver of Cognitive Symptoms and Unrefreshing Sleep]
\label{hyp:ch15-glymphatic-vicious-cycle}
The glymphatic system -- a brain-wide CSF/ISF exchange network driven by astrocytic
aquaporin-4 (AQP4) water channels and perivascular fluid dynamics -- clears metabolic
waste, tau, and amyloid-\textbeta{} primarily during slow-wave sleep
(SWS)~\cite{Xie2013glymphatic}. In ME/CFS, multiple factors converge to impair this
system: (1) reduced SWS content from alpha-delta sleep intrusion, (2) chronic
adrenergic dysregulation (elevated norepinephrine) inhibiting AQP4 polarization at
astrocytic endfeet, and (3) pre-existing neuroinflammation disrupting perivascular
flow dynamics~\cite{NematGorgani2025glymphatic}. Waste accumulation then activates
the NLRP3 inflammasome in microglia, producing IL-1\textbeta{} and IL-18 that further
disrupt sleep architecture~\cite{NematGorgani2025glymphatic, Ding2025glymphaticAD}.
The resulting vicious cycle -- impaired glymphatic clearance \textrightarrow{} waste
accumulation \textrightarrow{} neuroinflammation \textrightarrow{} worse sleep ---
may explain why ME/CFS patients report unrefreshing sleep despite adequate total sleep
duration~\cite{Wostyn2018glymphatic, NematGorgani2025glymphatic}.
(Certainty: Low-Medium for the ME/CFS-specific application; the glymphatic mechanism
itself is High certainty. Direct glymphatic imaging studies in ME/CFS are lacking as
of 2025.)
\end{hypothesis}
```

```latex
\begin{observation}[Sleep Quality Over Duration: The Glymphatic Rationale]
\label{obs:ch15-glymphatic-sleep-quality}
The glymphatic hypothesis provides a mechanistic rationale for a clinically observed
but poorly explained phenomenon: ME/CFS patients often sleep for adequate or extended
durations yet report profoundly unrefreshing sleep and persistent cognitive
impairment~\cite{Wostyn2018glymphatic}. Since glymphatic clearance is maximally
coupled to delta-oscillation (slow-wave) sleep -- not total sleep duration -- the
alpha-delta intrusion pattern documented in ME/CFS polysomnography (non-delta
electroencephalographic activity during NREM sleep) would suppress glymphatic flow
regardless of how long the patient sleeps~\cite{NematGorgani2025glymphatic,
Xie2013glymphatic}. Treatment implication: improving sleep quality (SWS content) is
likely more therapeutically relevant than extending sleep
duration~\cite{NematGorgani2025glymphatic}.
\end{observation}
```

---

## Cross-Section Integration Notes

### Links to Other ch15 Sections

- **15.2 (Sickness behavior) and 15.4 (Cytokine fatigue):** PGE2 mechanism bridges both.
  Section 15.2 should set the framework that 15.4 instantiates with specific cytokine data.
  Avoid duplicating the Dantzer citations.

- **15.8 (Kynurenine) and 15.5 (Serotonin fatigue):** IDO-1 upregulation directly reduces
  serotonin by diverting tryptophan. A cross-reference \verb|\cref{sec:ch15-serotonin}| or
  similar is recommended.

- **15.9 (Mast cells) and 15.6 (Microglia):** The mast cell-microglia bidirectional loop
  links these sections. A brief forward reference in 15.9 to the microglia section is
  appropriate.

- **15.10 (Glymphatic) and 15.3 (Melatonin/Circadian):** Melatonin and circadian disruption
  affect SWS quality directly. Glymphatic failure is a downstream consequence. Consider a
  cross-reference.

### Environment Types by Content

| Content | Recommended Environment |
|---|---|
| Established mechanism (PGE2, QUIN NMDA agonism) | `\begin{hypothesis}` with certainty note |
| Speculative ME/CFS application (H3R, glymphatic) | `\begin{speculation}` or `\begin{hypothesis}` with explicit Low-Medium certainty |
| Observable clinical pattern (unrefreshing sleep) | `\begin{observation}` |
| Therapeutic targets | `\begin{hypothesis}` with "Prediction" framing |

Note: `hypothesis` requires certainty >= 0.45; use `speculation` if below that threshold.
For the glymphatic vicious cycle and H3R mechanism, the certainty is borderline
(~0.40--0.45 for ME/CFS application); use `hypothesis` with explicit Low-Medium certainty
text, or `speculation` if the document's convention is strict.

---

## Verification Checklist (for chapter-integrator)

Before integrating:
```bash
# Confirm all new cite keys are in references.bib
grep "@article{Matsumura2004endothelial" /home/nicky/code/health-me-cfs/references.bib
grep "@article{Marty2008NTS" /home/nicky/code/health-me-cfs/references.bib
grep "@article{Huang2020IDO" /home/nicky/code/health-me-cfs/references.bib
grep "@article{LugoHuitron2013quinolinic" /home/nicky/code/health-me-cfs/references.bib
grep "@article{Bai2021kynurenineTherapy" /home/nicky/code/health-me-cfs/references.bib
grep "@article{Weinstock2023MCASneuro" /home/nicky/code/health-me-cfs/references.bib
grep "@article{Abdulrazzaq2022H3receptor" /home/nicky/code/health-me-cfs/references.bib
grep "@article{Kempuraj2016neuroinflammation" /home/nicky/code/health-me-cfs/references.bib
grep "@article{Lakatos2025mastMicroglia" /home/nicky/code/health-me-cfs/references.bib
grep "@article{Wostyn2018glymphatic" /home/nicky/code/health-me-cfs/references.bib
grep "@article{NematGorgani2025glymphatic" /home/nicky/code/health-me-cfs/references.bib
grep "@article{Ding2025glymphaticAD" /home/nicky/code/health-me-cfs/references.bib
```

After integrating:
```bash
# Build to confirm no LaTeX errors
nix build
```
