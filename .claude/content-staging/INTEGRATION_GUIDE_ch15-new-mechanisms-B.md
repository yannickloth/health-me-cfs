# Integration Guide: Chapter 15 Sections 15.11--15.15 (New Symptom Mechanisms)

**Target file:** `contents/part2-pathophysiology/ch15-symptom-producing-mechanisms.tex`
**Sections:** 15.11 central-sensitization, 15.12 oxidative-stress, 15.13 metabolic-danger, 15.14 endocannabinoid, 15.15 interoception
**Status:** Stubs with TODO comments. Each section has ~2 sentences of introductory text. Replace the TODO comment block with substantive content using the snippets below.

---

## How to integrate

For each section, **replace** the `% TODO: ...` comment block with the new content. Do NOT remove or alter the `\section{...}` heading, `\label{...}`, or the existing introductory paragraph above the TODO. Insert the new LaTeX content between the existing intro paragraph and the next `\section` heading.

---

## Section 15.11: Central Sensitization and Nociplastic Pain

**Label:** `\label{sec:ch15-central-sensitization}` (line 130)
**TODO block:** lines 134--138

### Papers

| Key | Authors | Journal | Year | PMID | Certainty |
|---|---|---|---|---|---|
| `Woolf2011CentralSensitization` | Woolf CJ | Pain | 2011 | 20961685 | High |
| `Nijs2012painCFS` | Nijs et al | Pain Physician | 2012 | 22996861 | Medium |
| `Nijs2012muscle` | Nijs et al | Eur J Clin Invest | 2012 | 21793823 | Medium (already in bib) |
| `Nijs2021sensitization` | Nijs et al | Lancet Rheumatol | 2021 | -- | High (already in bib) |
| `Kosek2024Nociplastic` | Kosek E | Pain | 2024 | 39560415 | High |
| `Baraniuk2025NociplasticMECFS` | Chen, Baraniuk et al | Front Neurosci | 2025 | 40927423 | Medium |

### Key findings

- Central sensitization: nociceptor input drives prolonged increase in CNS excitability via wind-up (NMDA-dependent temporal summation) and dorsal horn LTP-like plasticity (Woolf 2011).
- Fibromyalgia, ME/CFS and IBS share central sensitization phenotype: generalized hyperalgesia (mechanical, thermal, electrical, visceral); this comorbidity pattern supports shared mechanism.
- ME/CFS-specific evidence (Nijs 2012): generalized hyperalgesia across skin, muscle, lung; dysfunctional conditioned pain modulation (endogenous inhibition fails post-exercise and post-heat); ASIC3/P2X4/P2X5 gene upregulation 48h post-exercise correlates with pain severity.
- IASP adopted "nociplastic pain" as third mechanistic descriptor in 2017 (Kosek 2024): pain from altered nociception, not explained by tissue damage or neural lesion. Clinical criteria: >3 months, regional/widespread, hypersensitivity signs present.
- Baraniuk 2025 (Georgetown): ME/CFS and GWI significantly more tender than controls (dolorimetry); proposes midbrain/medullary regulatory pathway injury causing dual loss of descending antinociceptive AND antiinteroceptive inhibition.
- Treatment targets: NMDA antagonists (ketamine, low-dose memantine), alpha-2-delta ligands (pregabalin, gabapentin), LDN (microglial mechanism), pain neuroscience education.

### Suggested LaTeX content

```latex
\subsection*{Wind-up and Dorsal Horn Sensitization}

Repetitive C-fibre nociceptor input produces a phenomenon known as wind-up: a slow
temporal summation of action potentials in wide dynamic range neurons of the dorsal
horn that is experienced as progressively increasing pain.
Wind-up depends on activation of \(\text{N}\)-methyl-\textsc{d}-aspartate (NMDA)
receptors, which become available following sustained depolarisation that removes the
resting magnesium block; calcium influx then activates kinase cascades that
potentiate synaptic efficacy---a process analogous to long-term potentiation in the
hippocampus~\cite{Woolf2011CentralSensitization}.
Once established, central sensitization manifests as dynamic tactile allodynia
(pain from light touch), secondary hyperalgesia, and aftersensations, all
reflecting expanded and lowered pain threshold in central circuits.

\subsection*{Evidence for Central Sensitization in ME/CFS}

In ME/CFS, multiple lines of evidence demonstrate central sensitization as a
disease feature rather than an epiphenomenon.
Generalised hyperalgesia has been documented for electrical, mechanical, heat and
histamine stimuli across skin, muscle and visceral tissues.
Critically, endogenous inhibitory analgesia---the conditioned pain modulation (CPM)
response that normally suppresses ongoing pain during a second noxious
stimulus---is absent or blunted in ME/CFS patients~\cite{Nijs2012muscle}.
Furthermore, exercise that normally activates endogenous analgesia instead
exacerbates pain in ME/CFS, accompanied by significant post-exercise upregulation
of ASIC3, P2X4 and TLR4 gene expression in leucocytes, persisting for 48\,h and
correlating with fatigue and pain severity~\cite{Nijs2012painCFS}.

Dolorimetry studies confirm that ME/CFS and Gulf War Illness patients are
significantly more tender than sedentary controls across all sex strata, and
dolorimetry scores correlate strongly with self-reported pain (Spearman
$R = -0.574$ to $-0.629$, $p < 0.001$) and interoceptive
symptoms~\cite{Baraniuk2025NociplasticMECFS}.
These authors propose injury to midbrain and medullary descending regulatory
pathways as the mechanism for simultaneous loss of antinociceptive and
antiinteroceptive inhibition.

\subsection*{Nociplastic Pain Framework}

The International Association for the Study of Pain adopted \textit{nociplastic
pain} as a third mechanistic descriptor in 2017, defined as ``pain that arises from
altered nociception'' not fully explained by nociceptive or neuropathic
mechanisms~\cite{Kosek2024Nociplastic}.
Clinical criteria for musculoskeletal nociplastic pain require: duration exceeding
three months; regional, multifocal or widespread distribution; absence of a
complete nociceptive or neuropathic explanation; and clinical signs of
hypersensitivity in the pain region.
Fibromyalgia is the prototype; ME/CFS pain fits the same phenotype.

\begin{speculation}[Kynurenine--NMDA Link to Central Sensitization]
\label{spec:ch15-kynurenine-nmda}
Elevated quinolinic acid (an NMDA agonist produced by the kynurenine pathway under
neuroinflammatory conditions---see Section~\ref{sec:ch15-kynurenine}) may provide
sustained NMDA receptor activation that maintains wind-up and dorsal horn
sensitization in ME/CFS.
If confirmed, this would mechanistically link neuroinflammation, kynurenine
pathway activation, and central sensitization in a single causal chain
(certainty: low; no direct human measurement of spinal QUIN in ME/CFS).
\end{speculation}

\subsection*{Peripheral Sensitization: Substance P and CGRP}

Substance P and calcitonin gene-related peptide (CGRP) released from primary
afferent C fibres sensitize peripheral nociceptors and maintain neurogenic
inflammation in the periphery.
In the context of mast cell activation (see Section~\ref{sec:ch15-mast-cells}),
mast cell-released histamine and tryptase further lower nociceptor thresholds,
creating a peripheral--central sensitization loop.
CGRP-driven neurogenic inflammation can be sustained via ROS-dependent TRPA1
activation in Schwann cells~\cite{DeLogu2023TRPA1}, independently of direct
neuronal injury.

\subsection*{Treatment Implications}

Targeting central sensitization requires centrally acting approaches:
\begin{itemize}
  \item \textbf{NMDA antagonism:} Low-dose ketamine, memantine and
        dextromethorphan reduce wind-up; see also LDN (low-dose naltrexone) which
        attenuates microglial activation~\cite{Polo2019LDN}.
  \item \textbf{Alpha-2-delta ligands:} Pregabalin and gabapentin reduce
        calcium channel-mediated neurotransmitter release in sensitized dorsal horn
        circuits; widely used in fibromyalgia with modest effect
        sizes~\cite{Wiffen2017Gabapentin}.
  \item \textbf{Pain neuroscience education:} Reconceptualising pain as a
        central amplification phenomenon rather than peripheral tissue damage
        reduces catastrophising and improves function in short-term studies in
        ME/CFS~\cite{Nijs2012painCFS}.
\end{itemize}
```

**Note on existing citations:** `Wiffen2017Gabapentin` and `DeLogu2023TRPA1` should be checked in bib before using; alternatively cite `Nijs2021sensitization` for treatment overview. LDN cite `Polo2019LDN` is already in bib.

---

## Section 15.12: Oxidative and Nitrosative Stress as Symptom Amplifier

**Label:** `\label{sec:ch15-oxidative-stress}` (line 142)
**TODO block:** lines 146--149

### Papers

| Key | Authors | Journal | Year | PMID | Certainty |
|---|---|---|---|---|---|
| `Pall2000Peroxynitrite` | Pall ML | Medical Hypotheses | 2000 | 10790736 | Low (hypothesis) |
| `Pall2001CommonEtiology` | Pall ML | Medical Hypotheses | 2001 | 11461161 | Low (hypothesis) |
| `Shungu2012glutathione` | Shungu et al | NMR Biomed | 2012 | 4775 | Medium (already in bib) |
| `Shungu2016NACtrial` | Shungu DC | IACFS/ME 2016 | 2016 | -- | Low/conference (already in bib) |
| `Maes2009CoQ10` | Maes et al | Neuro Endocrinol Lett | 2009 | -- | Medium (already in bib) |
| `castromarrero2021melatonin` | Castro-Marrero et al | -- | 2021 | -- | Medium (already in bib) |

**Note:** Look up exact bib keys for Shungu entries:

```bash
grep -n "Shungu\|glutathione.*CFS\|NAC.*fatigue" /home/nicky/code/health-me-cfs/references.bib
```

### Key findings

- Pall's NO/ONOO- cycle: infection/trauma induces cytokines (IL-1beta, IL-6, TNF-alpha, IFN-gamma) -> iNOS upregulation -> NO + superoxide -> peroxynitrite (ONOO-); six positive feedback loops sustain elevated ONOO- (NF-kB activation, NMDA receptor activation, mitochondrial dysfunction, BH4 depletion via NOS uncoupling).
- NOS uncoupling (BH4 depletion by peroxynitrite) converts NOS to a peroxynitrite synthase -- a key switching mechanism proposed by Pall 2007 (PMID 17448611, already in bib under related keys).
- Glutathione depletion in ME/CFS: MRS studies show significantly reduced cortical GSH; strong inverse correlation with ventricular lactate (r=-0.545, p=0.001) and positive correlation with physical function.
- ROS activate TRPV1 and TRPA1 (TRP channels) directly and via CGRP-mediated Schwann cell signaling, amplifying nociceptive input.
- Antioxidant strategies: NAC (1800 mg/day, pilot: normalised GSH, lactate and symptoms), CoQ10 (200 mg + NADH 20 mg: RCT n=207, significant cognitive fatigue improvement), melatonin (mitochondria-targeted antioxidant, scavenges ROS and RNS, stimulates SOD/GPx/catalase).
- Certainty note: Pall's hypothesis is in Medical Hypotheses (not empirically tested in RCTs). Present as hypothesis with supporting mechanistic evidence.

### Suggested LaTeX content

```latex
\subsection*{The NO/ONOO$^-$ Vicious Cycle}

\begin{speculation}[The NO/ONOO$^-$ Vicious Cycle Hypothesis]
\label{spec:ch15-noonoo-cycle}
Martin Pall proposed that ME/CFS is initiated when short-term stressors
(infection, trauma, chemical exposure) induce pro-inflammatory cytokines
(IL-1\textbeta{}, IL-6, TNF-\textalpha{}, IFN-\textgamma{}) that upregulate
inducible nitric oxide synthase (iNOS), elevating nitric oxide~\cite{Pall2000Peroxynitrite}.
Nitric oxide reacts with superoxide to form peroxynitrite (ONOO$^-$), a potent
oxidant that damages proteins, lipids and DNA.
Pall proposed six positive feedback loops sustaining elevated ONOO$^-$:
NF-\textkappa{}B activation (increasing iNOS), NMDA receptor sensitisation,
mitochondrial complex I/III electron leakage (generating more superoxide),
tetrahydrobiopterin (BH4) depletion via ONOO$^-$ oxidation (causing NOS
uncoupling, converting NOS into a peroxynitrite synthase), and HPA axis
suppression via lowered glucocorticoid production~\cite{Pall2001CommonEtiology}.
This mechanism --- named the NO/ONOO$^-$ cycle --- predicts that agents
lowering multiple cycle elements simultaneously (antioxidants, NMDA antagonists,
anti-inflammatory compounds) would be required for therapeutic
benefit (certainty: low; Medical Hypotheses journal, not empirically tested in
RCTs; mechanistically plausible and consistent with downstream evidence).
\end{speculation}

\subsection*{Glutathione Depletion and Oxidative Burden}

Empirical support for oxidative stress as a disease mechanism in ME/CFS comes from
neuroimaging studies.
Proton magnetic resonance spectroscopy documented significantly reduced cortical
glutathione (GSH) in ME/CFS patients compared with controls, with a strong
inverse correlation between ventricular lactate and cortical GSH
($r = -0.545$, $p = 0.001$), and significant positive correlations between GSH
and physical functioning ($\rho = 0.506$, $p = 0.001$) and
energy levels ($\rho = 0.606$, $p < 0.001$)~\cite{Shungu2012CFS}.
A pilot trial of N-acetylcysteine (NAC) at 1800\,mg/day for four weeks
normalised cortical GSH, ventricular lactate and symptom scores, providing
proof-of-concept that GSH repletion via NAC crosses the blood--brain
barrier~\cite{Shungu2016NACtrial}.

\subsection*{TRP Channel Sensitisation by ROS}

Reactive oxygen species activate transient receptor potential channels directly:
TRPV1 (vanilloid 1, the capsaicin receptor) and TRPA1 (ankyrin 1, activated by
oxidant products such as 4-hydroxynonenal and acrolein) function as cellular
danger sensors, translating oxidative stress into nociceptive signalling.
In the context of neurogenic inflammation, CGRP-driven TRPA1 activation in
Schwann cells sustains mechanical allodynia independently of direct neuronal
injury, providing a peripheral amplification loop for central sensitization.

\subsection*{Antioxidant Strategies}

\begin{hypothesis}[Antioxidant Support as Symptom Modifier]
\label{hyp:ch15-antioxidants}
Multiple antioxidant interventions address different nodes of oxidative/nitrosative
stress in ME/CFS~\cite{DiPierro2024CoQ10}:
\begin{itemize}
  \item \textbf{NAC} (N-acetylcysteine): GSH precursor crossing the
        blood--brain barrier; 1800\,mg/day normalised cortical GSH and improved
        symptoms in pilot data~\cite{Shungu2016NACtrial}.
  \item \textbf{CoQ10 + NADH}: Restores mitochondrial electron transport
        efficiency, reducing complex I/III electron leakage and ROS generation;
        RCT ($n = 207$) showed significant cognitive fatigue improvement
        ($p < 0.001$) and QoL gains~\cite{CastroMarrero2021fatigue}.
  \item \textbf{Melatonin:} A mitochondria-targeted antioxidant that scavenges
        ROS and reactive nitrogen species (RNS), stimulates antioxidant enzymes
        (SOD, GPx, catalase) and chelates transition metals reducing hydroxyl
        radical production; mitochondrial concentrations greatly exceed blood
        levels~\cite{Reiter2016Melatonin}.
\end{itemize}
Certainty: medium individually; no multi-agent antioxidant RCT in ME/CFS
has been completed.
Consistent with the NO/ONOO$^-$ cycle prediction that multi-agent approaches
targeting several nodes will be needed for robust benefit.
\end{hypothesis}
```

**Note on cite keys:** The following bib keys may need verification or substitution with correct keys from the existing bib:
- `Shungu2012CFS` -- grep bib for Shungu to find exact key
- `Shungu2016NACtrial` -- already in bib as `Shungu2016NACtrial` (confirmed)
- `Castro2021CoQ10NADH` -- grep for "Castro" or "CoQ10 NADH 207" to find key
- `DiPierro2024CoQ10` -- check if `DiPierro2024CoQ10` exists
- `Reiter2016Melatonin` -- grep for "Reiter" antioxidant in bib

Run before integrating:
```bash
grep -n "Shungu\|Castro.*2021\|DiPierro\|Reiter.*melatonin\|castromarrero" /home/nicky/code/health-me-cfs/references.bib | grep "@article" | head -20
```

---

## Section 15.13: Metabolic Danger Signals and the PEM Mechanism

**Label:** `\label{sec:ch15-metabolic-danger}` (line 153)
**TODO block:** lines 157--160

### Papers

| Key | Authors | Journal | Year | PMID | Certainty |
|---|---|---|---|---|---|
| `Yang2020GPR81` | Yang et al | Front Immunol | 2020 | 33123172 | Medium |
| `Keller2024MetabolicCPET` | Keller et al | -- | 2024 | -- | High (already in bib) |
| `VanCampen2020SeverityCPET` | Van Campen et al | -- | 2020 | -- | Medium (already in bib) |
| `LightAR2012exercise` (check key) | Light AR et al | -- | 2012 | -- | Medium (already in bib; ASIC3/P2X data) |
| `Vink2015` | Vink M | -- | 2015 | -- | Medium (already in bib) |

### Key findings

- GPR81 (HCAR1) is the lactate receptor on immune cells; normally suppresses macrophage NF-kB and YAP activation, reducing TNF-alpha/IL-6. At high lactate loads this brake may be desensitized -- the anti-inflammatory paradox (Yang 2020).
- Succinate accumulates in ischaemic/metabolically stressed cells; acts as a DAMP activating NLRP3 inflammasome via HIF-1alpha stabilization; produces IL-1beta and IL-18.
- ASIC channels (ASIC3, acid-sensing ion channels) detect local acidosis from lactate accumulation; ASIC3 gene expression significantly upregulated post-exercise in ME/CFS leucocytes (Light AR et al).
- 2-day CPET (Keller 2024, largest study n=84 ME/CFS): significant Day 2 declines in work capacity, peak VO2, cardiovascular function versus Day 1; controls maintained or improved. VanCampen 2020: severity correlates with magnitude of Day 2 deterioration.
- Immune activation post-exertion: IL-1beta, IFN-alpha, CXCL1, CD40L specifically elevated in ME/CFS 18h post-exercise (Stanford Montoya group; see existing bib).
- Why GET fails: aerobic exercise below anaerobic threshold on Day 1 produces supra-threshold metabolic stress on Day 2 in ME/CFS due to reduced ventilatory threshold; graded exercise ignores this physiological abnormality.

### Suggested LaTeX content

```latex
\subsection*{The Lactate Paradox: GPR81 and Anti-Inflammatory Brake Failure}

Under physiological conditions, lactate generated during exercise acts as an
anti-inflammatory signal via the G-protein-coupled receptor GPR81 (also known as
HCAR1 or HCA1), which is expressed on macrophages and other immune cells.
GPR81 activation suppresses LPS-stimulated macrophage TNF-\textalpha{} and IL-6
production via AMPK/LATS-mediated YAP inactivation, disrupting the YAP--NF-\textkappa{}B
p65 interaction and reducing cytokine transcription~\cite{Yang2020GPR81}.
Under normal conditions, lactate generated by exercise thus dampens
post-exercise inflammation.

\begin{speculation}[GPR81 Desensitization in ME/CFS]
\label{spec:ch15-gpr81-desensitization}
In ME/CFS, chronic low-grade immune activation and elevated baseline lactate
may desensitize or downregulate GPR81 signalling, converting the
anti-inflammatory lactate brake into a non-functional component.
This would explain why exercise-generated lactate fails to suppress
post-exertional immune activation in ME/CFS patients while it does so in
healthy controls (certainty: low; GPR81 expression and function in ME/CFS
leucocytes has not been measured directly).
\end{speculation}

\subsection*{Succinate as a DAMP and NLRP3 Inflammasome Activator}

Succinate, a tricarboxylic acid cycle intermediate, accumulates in
metabolically stressed or ischaemic tissue where oxidative phosphorylation is
impaired.
Extracellular succinate acts as a danger-associated molecular pattern (DAMP),
activating the NLRP3 inflammasome---a cytoplasmic innate immune sensor---to
produce cleaved IL-1\textbeta{} and IL-18, amplifying neuroinflammation.
Succinate also stabilises HIF-1\textalpha{}, shifting cellular metabolism toward
glycolysis and further lactate/succinate accumulation, creating a self-reinforcing
metabolic danger loop.
Abnormal TCA cycle intermediate levels (including succinate) have been documented
in ME/CFS metabolomics studies, consistent with impaired oxidative phosphorylation.

\subsection*{Acid-Sensing Ion Channels and Post-Exertional Pain}

Acid-sensing ion channels (ASICs), particularly ASIC3, detect local acidosis from
lactate accumulation and H\textsuperscript{+} generation during exercise.
Post-exercise leucocyte gene expression studies in ME/CFS demonstrate significantly
greater increases in ASIC3, P2X4 and P2X5 mRNA compared to controls, persisting
for 48\,h and correlating with fatigue and pain
severity~\cite{Nijs2012painCFS}.
ASIC3 activation contributes both to pain perception and to
TLR4-mediated NF-\textkappa{}B/cytokine amplification, providing a mechanistic link
between exercise-induced acidosis and the sustained immune activation of PEM.

\subsection*{Two-Day CPET Evidence: Physiological Basis of PEM}

The two-day cardiopulmonary exercise test (CPET) protocol provides objective
physiological evidence for PEM as a real, measurable, reproducible
phenomenon~\cite{Vink2015}.
In the largest multi-site 2-day CPET study ($n = 84$ ME/CFS, $n = 71$ controls),
ME/CFS patients showed significant Day~1 to Day~2 declines in peak work capacity,
peak oxygen consumption and cardiovascular function, while controls maintained or
improved performance~\cite{Keller2024MetabolicCPET}.
Severity correlates with magnitude of decline: patients with severe ME/CFS show the
largest Day~2 deterioration in peak workload ($-19\%$) compared with
mild--moderate patients~\cite{VanCampen2020SeverityCPET}.

\begin{hypothesis}[PEM as Metabolic Danger Signal Cascade]
\label{hyp:ch15-pem-cascade}
Post-exertional malaise arises through a multi-step metabolic danger signal cascade:
(1) exertion exceeds impaired aerobic threshold, generating excess lactate and
succinate; (2) lactate fails to suppress immune activation via desensitized
GPR81; (3) succinate activates NLRP3 inflammasome, producing IL-1\textbeta{}
surge; (4) ASIC3 channels detect acidosis, amplifying pain and TLR4-driven
NF-\textkappa{}B activation; (5) immune activation and oxidative stress persist
for 24--48\,h, producing the delayed-onset, multi-system PEM syndrome.
This model predicts that exercise below the ventilatory threshold --- but not
above it --- would minimise danger signal generation, consistent with
pacing recommendations (certainty: medium; mechanistic components individually
supported; integrated model not yet tested in ME/CFS directly).
\end{hypothesis}

\subsection*{Why Graded Exercise Therapy Is Contraindicated}

Standard graded exercise therapy (GET) assumes deconditioning as the primary
mechanism of exercise intolerance and prescribes progressive load increases.
The metabolic danger signal model predicts the opposite: even modest exercise
above the impaired ventilatory threshold on Day~1 produces supra-threshold
ASIC3/NLRP3 activation on Day~2, exacerbating metabolic stress rather than
resolving it.
The consistent finding of objectively reduced Day~2 ventilatory threshold in
2-day CPET studies demonstrates that this threshold is physiologically (not
psychologically) impaired~\cite{Keller2024MetabolicCPET,VanCampen2020SeverityCPET},
and that progressive exercise at conventional doses worsens physiological
capacity. This constitutes physiological contraindication to GET as
currently prescribed.
```

---

## Section 15.14: Endocannabinoid Deficiency and Mast Cell Brake Failure

**Label:** `\label{sec:ch15-endocannabinoid}` (line 164)
**TODO block:** lines 168--172

### Papers

| Key | Authors | Journal | Year | PMID | Certainty |
|---|---|---|---|---|---|
| `Russo2004CECD` | Russo EB | Neuro Endocrinol Lett | 2004 | 15159679 | Low (hypothesis) |
| `Russo2016CECDReconsidered` | Russo EB | Cannabis Cannabinoid Res | 2016 | 28861491 | Medium |
| `YangCBD2024MastCell` | Yang et al | Mol Nutr Food Res | 2024 | 38059783 | Medium |
| `LangIlievich2023PEA` | Lang-Illievich et al | -- | 2023 | -- | High (already in bib) |
| `Petrosino2021PEA` | Petrosino et al | -- | 2021 | -- | Medium (already in bib) |
| `Artukoglu2017PEA` | Artukoglu et al | -- | 2017 | -- | High (already in bib) |

Note: PEA references are already well represented in the bib. The new additions fill the CECD theory gap and the CBD mast cell mechanism.

### Key findings

- ECS anatomy: CB1 receptors in CNS (presynaptic suppression of neurotransmitter release), CB2 receptors in peripheral immune cells (mast cells, macrophages, NK cells, microglia). 2-AG (major agonist) synthesized on demand from membrane diacylglycerol by DAGL-alpha/beta; degraded by MAGL (monoacylglycerol lipase).
- Mast cell regulation by ECS: CB2 activation on mast cells suppresses degranulation; the DAGL-beta/2-AG/CB2 pathway is the key mast cell brake. PEA inhibits mast cell degranulation via this pathway (Petrosino 2021; already in bib).
- CECD hypothesis (Russo 2004/2016): fibromyalgia, migraine, IBS share central sensitization + hyperalgesia + ECS hypofunction pattern. CSF anandamide significantly reduced in migraineurs (objective evidence). PTSD shows ECS hypofunction on neuroimaging.
- CBD suppresses IgE-mediated mast cell degranulation by inhibiting FcεRI downstream phosphorylation and calcium mobilization; effect is CB1/CB2-independent (Yang 2024), suggesting additional non-canonical mechanisms beyond the 2-AG/CB2 pathway.
- Therapeutic implications: PEA (palmitoylethanolamide) as indirect ECS enhancer via mast cell DAGL-beta/2-AG/CB2 pathway; CBD for mast cell-mediated symptoms; exercise, sleep, stress reduction as lifestyle ECS tonics.
- Certainty note: CECD in ME/CFS is speculative (no CSF anandamide measurement in ME/CFS published); PEA efficacy for pain is meta-analyzed (high certainty); CBD for mast cell is mechanistic (medium certainty).

### Suggested LaTeX content

```latex
\subsection*{Endocannabinoid System Architecture}

The endocannabinoid system (ECS) comprises two main G-protein-coupled receptors
(CB1 and CB2), two principal endogenous ligands (anandamide and
2-arachidonoylglycerol, 2-AG), and the enzymatic machinery for their on-demand
synthesis and degradation.
CB1 receptors are concentrated at presynaptic terminals throughout the CNS,
mediating retrograde suppression of neurotransmitter release; CB2 receptors are
predominantly expressed by peripheral immune cells---including mast cells,
macrophages, natural killer cells and microglia---where they suppress
pro-inflammatory signalling.
2-AG, the more abundant ECS agonist, is synthesized from membrane
diacylglycerol by diacylglycerol lipase (DAGL-\textalpha{}/\textbeta{}) and
degraded primarily by monoacylglycerol lipase (MAGL), whose pharmacological
inhibition substantially elevates 2-AG tissue levels.

\subsection*{Mast Cell ECS Brake and Its Failure}

Mast cell degranulation---the release of histamine, tryptase, prostaglandins,
leukotrienes and cytokines---is normally suppressed by CB2 receptor activation
via the DAGL-\textbeta{}/2-AG/CB2 signalling axis.
Palmitoylethanolamide (PEA) inhibits mast cell degranulation via this pathway and
is meta-analytically effective for nociceptive, neuropathic and nociplastic pain
(including conditions overlapping with ME/CFS)~\cite{Artukoglu2017PEA,LangIlievich2023PEA}.
Cannabidiol (CBD) additionally suppresses IgE-mediated mast cell degranulation by
inhibiting Fc\textepsilon{}RI downstream signalling and calcium mobilisation, with
effects preserved even in CB1/CB2-depleted cells, suggesting additional
non-canonical mechanisms~\cite{YangCBD2024MastCell}.

\begin{speculation}[Clinical Endocannabinoid Deficiency in ME/CFS]
\label{spec:ch15-cecd}
Ethan Russo proposed that fibromyalgia, migraine and irritable bowel syndrome
share an underlying Clinical Endocannabinoid Deficiency (CECD): reduced
anandamide/2-AG tone, impaired CB receptor signalling, and consequent loss of
ECS-mediated homeostatic regulation of pain, sleep and immune
function~\cite{Russo2004CECD}.
Updated evidence supports this hypothesis: CSF anandamide is statistically
reduced in migraineurs, and PTSD --- another post-traumatic condition with ME/CFS
overlap --- shows ECS hypofunction on advanced neuroimaging~\cite{Russo2016CECDReconsidered}.
By analogy, ME/CFS may represent a CECD state in which mast cell CB2 signalling
is insufficient, removing the primary brake on mast cell degranulation and
neuroinflammatory amplification.
Direct measurement of CSF anandamide and 2-AG, and CB receptor expression in
immune cells, in ME/CFS patients is required to test this
hypothesis (certainty: low; extrapolated from fibromyalgia and PTSD evidence;
no direct ME/CFS CSF endocannabinoid measurements published).
\end{speculation}

\subsection*{Therapeutic Implications}

Current ECS-targeting approaches with evidence in ME/CFS-relevant conditions
include:
\begin{itemize}
  \item \textbf{Palmitoylethanolamide (PEA):} Ultra-micronised PEA
        600--1200\,mg/day; inhibits mast cell degranulation via DAGL-\textbeta{}/2-AG/CB2
        pathway; effective for nociplastic pain ($\text{SMD} = -0.59$,
        peak effect at 24--26 weeks)~\cite{LangIlievich2023PEA}.
  \item \textbf{Cannabidiol (CBD):} Non-psychoactive; suppresses mast cell
        degranulation by CB1/CB2-independent mechanism; also attenuates
        microglial activation~\cite{YangCBD2024MastCell}.
  \item \textbf{Lifestyle ECS enhancement:} Aerobic exercise (within
        energy envelope), sleep normalisation and stress reduction
        each tonically elevate endocannabinoid levels, providing
        mechanistic rationale for pacing that includes gentle movement.
\end{itemize}
```

---

## Section 15.15: Interoceptive Prediction Error and the Bayesian Brain Fog Framework

**Label:** `\label{sec:ch15-interoception}` (line 176)
**TODO block:** lines 180--185

### Papers

| Key | Authors | Journal | Year | PMID | Certainty |
|---|---|---|---|---|---|
| `Friston2010FreeEnergy` | Friston K | Nat Rev Neurosci | 2010 | 20068583 | High (foundational theory) |
| `Kadota2010Interoception` | Kadota et al | Biol Psychol | 2010 | 20678991 | Medium |
| `Baraniuk2025NociplasticMECFS` | Chen, Baraniuk et al | Front Neurosci | 2025 | 40927423 | Medium (also used in 15.11) |

Note: Seth (2021) "Being You" is a popular science book, not a primary paper; for academic citation consider:
- Seth AK & Friston KJ (2016) Active interoceptive inference and the emotional brain. Phil Trans R Soc B 371:20160007 -- search PMID: 27872380

Additional to check/search:
- Barrett LF (2015) Interoceptive predictions in the brain -- search PubMed

### Key findings

- Free-energy principle (Friston 2010): brain minimizes prediction error (surprise) about sensory states; perceptions are top-down predictions adjusted by bottom-up prediction errors. Action changes sensory data to match predictions.
- Applied to interoception: brain holds a generative model of bodily state; when this model persistently diverges from actual physiological signals (as in ME/CFS with autonomic/immune dysfunction), the system produces elevated interoceptive prediction errors experienced as fatigue, cognitive effort-intolerance, pain.
- Empirical ME/CFS evidence (Kadota 2010): post-infective fatigue syndrome patients show higher heartbeat discrimination accuracy (heightened interoceptive sensitivity); lower pressure pain threshold; cardiac hyper-reactivity (insensitive to task difficulty, lack of habituation). First evidence of autonomic hyper-vigilance. Correlates with symptoms.
- Baraniuk 2025: pain and interoception symptoms highly correlated (Spearman R -0.42 to -0.55) in ME/CFS; dolorimetry (tenderness) is better correlated with pain than with fatigue, suggesting partly separable mechanisms.
- Distinction from psychosomatic: the model does not require psychological primary causation; peripheral dysfunction (autonomic, immune, metabolic) provides genuinely aberrant afferent signals that then become encoded in pathological prior beliefs.
- Why graded exposure fails: graded exposure therapy (GET/CBT-exposure variant) attempts to recalibrate beliefs by demonstrating that exercise does not cause harm; but in ME/CFS, exercise genuinely does cause measurable physiological harm (Day 2 CPET), so prediction errors are veridical, not maladaptive. Exposing patients to harm to update beliefs is both ineffective and harmful.
- Interoceptive training and HRV biofeedback: provide accurate afferent feedback (not false reassurance), potentially reducing prediction error by improving interoceptive resolution and autonomic flexibility.

### Suggested LaTeX content

```latex
\subsection*{The Free-Energy Principle and Predictive Processing}

The free-energy principle, proposed by Friston, holds that biological systems
minimise \textit{surprise} (formally: variational free energy, a bound on the
surprise of sensory observations) by maintaining an internal generative model of
their environment and updating it against incoming sensory
evidence~\cite{Friston2010FreeEnergy}.
In predictive processing terms: perception is the brain's best explanation of
sensory data, not a direct read-out; prediction errors (mismatches between
model and reality) propagate upward to update the model; action drives the body
to fulfil the model's predictions.
Applied to interoception---the brain's modelling of the body's internal
state---this framework predicts that persistent, genuine perturbations in
afferent bodily signals will produce persistent, amplified prediction errors
experienced phenomenologically as fatigue, effort-intolerance and
pain~\cite{Friston2010FreeEnergy}.

\subsection*{Interoceptive Hyper-Vigilance in ME/CFS}

\begin{hypothesis}[Chronic Interoceptive Prediction Error in ME/CFS]
\label{hyp:ch15-interoceptive-error}
In ME/CFS, chronic peripheral dysfunction (autonomic dysregulation, immune
activation, impaired oxygen delivery) generates persistently aberrant afferent
interoceptive signals.
The brain's generative model, attempting to minimise prediction error, increases
the \textit{precision weighting} assigned to interoceptive signals---effectively
amplifying internal body awareness and reducing the threshold for detecting
deviation from homeostatic norms.
This precision upweighting manifests clinically as: heightened heartbeat
discrimination accuracy, lower pain pressure thresholds, cognitive
effort-intolerance, and the subjective experience of fatigue as a
physiological state rather than a psychological one.
Importantly, this is not a psychosomatic mechanism; it is the brain's
rational response to genuine physiological disorder.
(Certainty: medium; mechanism plausible; direct tests of prior beliefs and
precision weighting in ME/CFS are limited.)
\end{hypothesis}

Empirical support comes from case-control studies in post-infective fatigue
syndrome: patients demonstrate significantly higher accuracy on heartbeat
discrimination tasks, lower pressure pain thresholds, and a distinct cardiac
response profile characterised by insensitivity to task difficulty and absence of
habituation~\cite{Kadota2010Interoception}.
Heightened interoceptive sensitivity correlated strongly with concurrent symptoms.
Complementary structural neuroimaging shows increased grey matter in the insula
(the primary interoceptive cortex) in ME/CFS versus controls, with white matter
reductions in brainstem pathways~\cite{Thapaliya2023insula}.
Tenderness (a proxy for central sensitization) and interoceptive symptom burden
are strongly correlated in ME/CFS and Gulf War
Illness~\cite{Baraniuk2025NociplasticMECFS}, suggesting that nociplastic
and interoceptive mechanisms may co-amplify each other.

\subsection*{Distinction from Psychosomatic Frameworks}

The interoceptive prediction error model is explicitly distinguished from
psychosomatic or functional somatic syndrome models in two critical respects.
First, the primary afferent signals in ME/CFS are genuinely abnormal (reduced
VO\textsubscript{2}max, impaired autonomic function, elevated lactate, abnormal
cytokine profiles), not normal signals misinterpreted by an anxious mind.
Second, the model predicts that symptom persistence should track the persistence
of peripheral dysfunction, not psychological intervention alone -- consistent with
the observation that CBT/GET produces no sustained physiological improvement on
objective exercise testing~\cite{Keller2024MetabolicCPET}.

\subsection*{Why Graded Exposure Fails}

Graded exposure therapy operates on the premise that catastrophising and fear-
avoidance maintain symptoms by preventing corrective experiences.
This is appropriate when avoidance is maintained by maladaptive beliefs
about safe activities.
In ME/CFS, however, two-day CPET demonstrates that the belief ``exercise causes
harm'' is physiologically accurate: Day~2 objective capacity
declines are reproducible and measurable~\cite{Keller2024MetabolicCPET,VanCampen2020SeverityCPET}.
Exposing patients to an activity that genuinely produces physiological harm
(NLRP3 activation, ASIC3 upregulation, immune surge) to demonstrate it is ``safe''
is both theoretically inconsistent with the interoceptive error model and
inconsistent with the physiological evidence.

\subsection*{Therapeutic Implications: Interoceptive Retraining}

Consistent with the model, therapeutic approaches that improve interoceptive
\textit{resolution} --- the ability to discriminate internal signals accurately
rather than amplify them non-specifically --- rather than suppress interoceptive
awareness, are mechanistically predicted to be beneficial:
\begin{itemize}
  \item \textbf{Heart rate variability (HRV) biofeedback:} Provides
        high-resolution, real-time autonomic feedback, potentially improving
        the precision and accuracy of cardiovascular interoceptive
        prediction, reducing allostatic load.
  \item \textbf{Pacing within energy envelope:} By remaining below the
        ventilatory threshold, pacing prevents the generation of genuine
        metabolic danger signals, reducing the afferent input driving
        prediction error.
  \item \textbf{Interoceptive awareness training:} Mindfulness-based
        approaches that explicitly target interoceptive attention have been
        explored in chronic pain and fatigue; effects are modest and require
        careful implementation to avoid effort-based exacerbation in
        ME/CFS.
\end{itemize}
```

**Note on cite keys to verify before integrating:**
- `Thapaliya2023insula` -- check bib for Thapaliya (brain MRI insula paper); appears to be in bib at line 2769
- `Keller2024MetabolicCPET` -- already confirmed in bib
- `VanCampen2020SeverityCPET` -- already confirmed in bib

---

## Verification Checklist for Chapter-Integrator

Before finalising integration, run:

```bash
# Confirm all new keys exist in bib
grep -n "Woolf2011CentralSensitization\|Nijs2012painCFS\|Kosek2024Nociplastic\|Baraniuk2025NociplasticMECFS\|Pall2000Peroxynitrite\|Pall2001CommonEtiology\|Yang2020GPR81\|Russo2004CECD\|Russo2016CECDReconsidered\|YangCBD2024MastCell\|Friston2010FreeEnergy\|Kadota2010Interoception" /home/nicky/code/health-me-cfs/references.bib

# Confirm existing keys used in snippets
grep -n "Nijs2012muscle\|Nijs2021sensitization\|Polo2019LDN\|Keller2024MetabolicCPET\|VanCampen2020SeverityCPET\|Vink2015\|Artukoglu2017PEA\|LangIlievich2023PEA\|Petrosino2021PEA\|Shungu2016NACtrial\|DiPierro2024CoQ10" /home/nicky/code/health-me-cfs/references.bib | grep "@article" | head -20

# Verify bib keys for Shungu glutathione, Castro CoQ10 RCT, Thapaliya insula
grep -n "Shungu\|Castro.*CoQ10\|castromarrero\|Thapaliya" /home/nicky/code/health-me-cfs/references.bib | grep "@article" | head -10

# Build after integration
nix build 2>&1 | tail -20
```

## Certainty Summary

| Section | Key Claim | Certainty | Environment |
|---|---|---|---|
| 15.11 | Wind-up/NMDA central sensitization | High | \begin{observation} |
| 15.11 | ME/CFS = nociplastic pain phenotype | High | \begin{observation} |
| 15.11 | Kynurenine-NMDA link | Low | \begin{speculation} |
| 15.12 | NO/ONOO- vicious cycle | Low (hypothesis) | \begin{speculation} |
| 15.12 | GSH depletion / MRS evidence | Medium | \begin{observation} |
| 15.12 | Multi-antioxidant strategy | Medium | \begin{hypothesis} |
| 15.13 | GPR81 desensitization in ME/CFS | Low | \begin{speculation} |
| 15.13 | PEM as metabolic danger cascade | Medium | \begin{hypothesis} |
| 15.13 | 2-day CPET objective evidence | High | \begin{observation} |
| 15.13 | GET contraindication (physiological) | High | \begin{observation} |
| 15.14 | CECD in ME/CFS | Low | \begin{speculation} |
| 15.14 | PEA for nociplastic pain | High | \begin{observation} |
| 15.14 | CBD mast cell mechanism | Medium | \begin{hypothesis} |
| 15.15 | Free-energy principle (general) | High | \begin{observation} |
| 15.15 | Interoceptive hyper-vigilance in ME/CFS | Medium | \begin{hypothesis} |
| 15.15 | Why graded exposure fails | High | \begin{observation} |
