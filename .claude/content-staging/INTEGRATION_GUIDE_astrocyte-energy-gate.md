# Integration Guide: Astrocyte Energy Gate Hypothesis

## Paper Citation Keys
- `Kim2025ANLS` (ANLS evolution review)
- `Godlewska2025MRS` (7T brain lactate in ME/CFS)
- `Mueller2020MRS` (whole-brain MRS in ME/CFS)
- `Syed2025MitoCFS` (mitochondrial dysfunction in ME/CFS)
- `Jang2024Ketone` (ketone bodies neuroprotection)
- Already in bib: `Pellerin1994`, `Magistretti2018`, `Pierre2005`, `Belanger2011`

## BibTeX Entries to Add

```bibtex
@article{Kim2025ANLS,
  author = {Kim, Yihyang and Dube, Solomon Ergando and Park, Chan Bae},
  title = {Brain energy homeostasis: the evolution of the astrocyte-neuron lactate shuttle hypothesis},
  journal = {Korean Journal of Physiology and Pharmacology},
  year = {2025},
  volume = {29},
  number = {1},
  pages = {1--8},
  doi = {10.4196/kjpp.24.388},
  pmid = {39725609},
  pmcid = {PMC11694005},
  keywords = {ANLS, astrocyte, neuron, lactate, brain energy, MCT},
  note = {Comprehensive 2025 review of ANLS hypothesis evolution. Documents MCT1/MCT4 downregulation reducing neuronal lactate by 60\%. Reviews ANLS dysfunction in AD, ALS, epilepsy, depression. Notes neurons have more metabolic flexibility via LDHA expression than originally assumed}
}

@article{Godlewska2025MRS,
  author = {Godlewska, Beata R. and Sylvester, Amy L. and Emir, Uzay E. and Sharpley, Ann L. and Clarke, William T. and Williams, Stephen R. and {Jorge Gon{\c{c}}alves}, Ana and Cowen, Philip J.},
  title = {Brain and muscle chemistry in myalgic encephalitis/chronic fatigue syndrome ({ME/CFS}) and long {COVID}: a {7T} magnetic resonance spectroscopy study},
  journal = {Molecular Psychiatry},
  year = {2025},
  volume = {30},
  pages = {5215--5226},
  doi = {10.1038/s41380-025-03108-8},
  keywords = {ME/CFS, long COVID, MRS, brain lactate, 7T, anterior cingulate cortex},
  note = {7T MRS study (n=24 ME/CFS, n=25 Long COVID, n=24 controls). ME/CFS patients had elevated brain lactate in pgACC (1.52 vs 1.22 mM, p=0.003) and dACC. ME/CFS and Long COVID show distinct neurochemical profiles despite similar clinical presentation}
}

@article{Mueller2020MRS,
  author = {Mueller, Chantal and Lin, James C. and Sheriff, Sulaiman and Maudsley, Andrew A. and Younger, Jarred W.},
  title = {Evidence of widespread metabolite abnormalities in {Myalgic encephalomyelitis/chronic fatigue syndrome}: assessment with whole-brain magnetic resonance spectroscopy},
  journal = {Brain Imaging and Behavior},
  year = {2020},
  volume = {14},
  number = {2},
  pages = {562--572},
  doi = {10.1007/s11682-018-0029-4},
  pmid = {30617782},
  pmcid = {PMC6612467},
  keywords = {ME/CFS, MRS, brain lactate, neuroinflammation, choline, myo-inositol},
  note = {Whole-brain MRS study (n=15 ME/CFS, n=15 controls). Elevated lactate/creatine ratio in right insula, thalamus, and cerebellum. Brain temperature increases correlated with lactate elevations, suggesting neuroinflammation drives metabolic shift}
}

@article{Syed2025MitoCFS,
  author = {Syed, Abu Mohammad and Karius, Alexander K. and Ma, Jin and Wang, Ping-yuan and Hwang, Paul M.},
  title = {Mitochondrial dysfunction in myalgic encephalomyelitis/chronic fatigue syndrome},
  journal = {Physiology},
  year = {2025},
  doi = {10.1152/physiol.00056.2024},
  keywords = {ME/CFS, mitochondria, energy metabolism, lactate, anaerobic glycolysis},
  note = {Comprehensive 2025 review of mitochondrial dysfunction in ME/CFS. Elevated CSF lactate consistent with oxidative stress and conditions favoring anaerobic metabolism. Phosphorus-31 MRS documents impaired ATP synthesis with increased glycolytic activity}
}

@article{Jang2024Ketone,
  author = {Jang, Jiwon and Kim, Su Rim and Lee, Jo Eun and Lee, Soomin and Son, Hyunjin and Choe, Yejin and Park, Hyo-Bum and Hong, Jinsoo and Kim, Hyun Jung and Kim, Gyu-Hee and Han, Pyung-Lim},
  title = {Molecular mechanisms of neuroprotection by ketone bodies and ketogenic diet in cerebral ischemia and neurodegenerative diseases},
  journal = {International Journal of Molecular Sciences},
  year = {2024},
  volume = {25},
  number = {1},
  pages = {124},
  doi = {10.3390/ijms25010124},
  pmid = {38203294},
  pmcid = {PMC10779133},
  keywords = {ketone bodies, neuroprotection, BHB, MCT, brain energy, ketogenic diet},
  note = {Review of ketone body neuroprotection. Ketones traverse BBB via MCT1, enter neurons via MCT2, bypass astrocyte-mediated lactate shuttle. BHB enhances mitochondrial efficiency by reducing NAD+/NADH ratio and increasing ATP hydrolysis energy yield}
}
```

## Recommended Chapter for Integration

### Primary Target: ch08-neurological.tex
**File:** `contents/part2-pathophysiology/ch08-neurological.tex`
**Placement:** After the Astrocyte Abnormalities subsection (after line 333, before Oligodendrocyte Function at line 335)
**Environment type:** hypothesis
**Rationale:** This is the neurological chapter where astrocyte biology is already discussed but lacks mechanistic depth on metabolic coupling. The existing Astrocyte Abnormalities subsection (lines 327-333) is only 5 lines of general statements. The energy gate hypothesis provides the detailed mechanism connecting astrocyte dysfunction to the brain fog and cognitive symptoms that are the chapter's core concern.

### Secondary cross-reference targets (do NOT add content, just ensure cross-refs work):
- `ch14j-selective-dysfunction.tex` - already has `hyp:astrocyte-gate`, the expanded ch08 section should cross-reference it
- `ch06-energy-metabolism.tex` - compartmental energy model
- `ch08-neurological.tex` line 1280 - already references ANLS; should cite new hypothesis

## Suggested LaTeX Content

**IMPORTANT:** Insert this content REPLACING the existing Astrocyte Abnormalities subsection (lines 327-333). The new content subsumes and greatly expands the original.

```latex
\subsubsection{Astrocyte Abnormalities and the Astrocyte Energy Gate}
\label{sec:astrocyte-energy-gate}

Astrocytes perform essential functions including neurotransmitter uptake and recycling, blood-brain barrier maintenance, metabolic support for neurons, synaptic modulation, and ion homeostasis. Astrocyte dysfunction in ME/CFS may contribute to impaired glutamate clearance and excitotoxicity, reduced metabolic support for neurons, blood-brain barrier compromise, and abnormal synaptic transmission. Elevated GFAP (glial fibrillary acidic protein) in some ME/CFS patients suggests astrocyte reactivity, though findings have been inconsistent.

Beyond these recognized roles, astrocytes occupy a uniquely critical position in brain energy metabolism that may constitute a central vulnerability in ME/CFS. The following hypothesis develops this metabolic dimension in detail.

\paragraph{The Astrocyte-Neuron Lactate Shuttle: Normal Physiology}

The brain consumes 20--25\% of the body's glucose despite comprising only 2\% of body mass~\cite{Belanger2011}. A substantial fraction of this energy reaches neurons not as glucose directly, but via the \textbf{astrocyte-neuron lactate shuttle} (ANLS), first described by Pellerin and Magistretti~\cite{Pellerin1994}. In this system, glutamate released during synaptic transmission is taken up by astrocytes via excitatory amino acid transporters (EAATs), triggering astrocytic glucose uptake through GLUT1 transporters and subsequent glycolysis. Astrocytes convert glucose to pyruvate and then to lactate via lactate dehydrogenase A (LDHA), which preferentially catalyzes the pyruvate-to-lactate direction. This lactate is then exported from astrocytes through monocarboxylate transporter 4 (MCT4, a low-affinity, high-capacity exporter) and imported into neurons through MCT2 (a high-affinity importer)~\cite{Pierre2005}. Within neurons, LDHB converts lactate back to pyruvate for oxidative phosphorylation in mitochondria.

This architecture elegantly couples neuronal energy supply to neuronal activity: when a synapse fires, the glutamate released simultaneously signals the local astrocyte to increase energy delivery~\cite{Magistretti2018}. Lactate provides an estimated 30--50\% of neuronal ATP under physiological conditions~\cite{Magistretti2018}, and this fraction likely increases during periods of intense neural activity when neurons' own glycolytic capacity is insufficient.

Several features make this shuttle critical rather than merely supplementary:

\begin{enumerate}
    \item \textbf{Activity coupling:} The glutamate-triggered mechanism ensures energy supply scales with demand at the single-synapse level
    \item \textbf{Metabolic specialization:} Neurons preferentially express LDHB (favoring lactate $\to$ pyruvate) while astrocytes express LDHA (favoring pyruvate $\to$ lactate), creating directional metabolic flow~\cite{Kim2025ANLS}
    \item \textbf{Antioxidant protection:} By outsourcing glycolysis to astrocytes, neurons can direct more glucose through the pentose phosphate pathway for glutathione regeneration, protecting against oxidative damage
    \item \textbf{Signaling function:} Lactate also acts as a signaling molecule via the hydroxycarboxylic acid receptor 1 (HCAR1/GPR81), modulating neuronal excitability and synaptic plasticity~\cite{Magistretti2018}
\end{enumerate}

\paragraph{Important Nuance: Neuronal Metabolic Flexibility}

The classical ANLS model has been refined by recent evidence demonstrating that neurons possess greater metabolic flexibility than originally assumed. Single-cell RNA sequencing studies reveal that neurons express both LDHA and LDHB, not exclusively LDHB~\cite{Kim2025ANLS}. Neurons can directly take up and oxidize glucose, particularly during high-demand states. LDHB-deficient neurons maintain stable energy metabolism under physiological glucose conditions, suggesting compensatory pathways exist.

However, this flexibility has limits. During high-frequency neural activity---precisely the conditions of cognitive exertion---direct neuronal glucose oxidation may prove insufficient, and astrocyte-derived lactate becomes the critical marginal fuel source. This distinction between \emph{basal} sufficiency and \emph{demand-responsive} insufficiency is central to the hypothesis that follows.

\begin{hypothesis}[Astrocyte Energy Gate]
\label{hyp:astrocyte-energy-gate}
We hypothesize that dysfunction in the astrocyte-neuron lactate shuttle creates a \textbf{metabolic bottleneck}---an ``energy gate''---that produces CNS-specific energy failure in ME/CFS while peripheral tissues with direct glucose access remain unaffected.

\paragraph{Three Candidate Mechanisms}

The energy gate may fail at any of three nodes, singly or in combination:

\begin{enumerate}
    \item \textbf{Astrocyte glucose uptake impairment (GLUT1 dysfunction):} Reduced GLUT1 expression or function on astrocytes limits the raw substrate entering the shuttle. GLUT1 deficiency syndrome demonstrates that impaired astrocytic glucose transport causes seizures, cognitive impairment, and brain hypometabolism---features that partially overlap with ME/CFS neurological symptoms. Neuroinflammatory mediators (IL-1$\beta$, TNF-$\alpha$) documented in ME/CFS can downregulate GLUT1 expression.

    \item \textbf{Lactate production impairment (glycolytic defects):} Reactive astrogliosis---documented via elevated GFAP in ME/CFS---involves metabolic reprogramming that may paradoxically impair effective lactate delivery. While reactive astrocytes initially upregulate glycolysis, chronic neuroinflammation shifts astrocyte metabolism toward a state where mitochondrial dysfunction reduces overall metabolic efficiency. Inflammatory cytokines can alter pyruvate dehydrogenase kinase (PDK) activity, disrupting the glycolysis/oxidative phosphorylation balance within astrocytes themselves.

    \item \textbf{Lactate transport impairment (MCT dysfunction):} Downregulation of MCT4 (astrocyte export) or MCT2 (neuronal import) directly restricts lactate flow. This mechanism has the strongest precedent in other neurological diseases: MCT1/MCT4 downregulation reduces neuronal lactate supply by approximately 60\%~\cite{Kim2025ANLS}. In Alzheimer's disease, decreased expression of MCT1, MCT2, and MCT4 is documented. In amyotrophic lateral sclerosis, reduced MCT1 in oligodendrocytes precedes motor neuron degeneration. In temporal lobe epilepsy, MCT2 redistribution and MCT4 reduction are observed in epileptic foci.
\end{enumerate}

\paragraph{Why This Creates Selective Dysfunction}

The energy gate hypothesis explains why CNS function fails while peripheral tissues remain functional:

\begin{itemize}
    \item \textbf{CNS vulnerability:} Neurons depend on the ANLS for a substantial portion of their activity-dependent energy supply. No other cell type in the body has this intermediary requirement for its primary fuel.
    \item \textbf{Peripheral independence:} Skeletal muscle, cardiac muscle, and peripheral tissues express GLUT4 (insulin-responsive) and can directly oxidize glucose without astrocytic intermediation. Hair follicles operate autonomous local Cori cycles, recycling lactate within the follicular unit without CNS coordination.
    \item \textbf{Demand-dependence:} The ANLS is most critical during cognitive exertion (when glutamate release surges trigger proportional lactate demand). This explains why cognitive symptoms worsen with mental effort while resting cognition may remain closer to normal---a hallmark of ME/CFS ``brain fog.''
\end{itemize}

This mechanism connects directly to the selective energy dysfunction hypothesis (Section~\ref{sec:selective-dysfunction}), which predicts that high CNS-dependency ($\alpha$) and high demand-responsiveness ($\rho$) processes should be most impaired. The ANLS provides the \emph{specific molecular mechanism} through which this selective vulnerability operates.

\paragraph{Certainty Assessment}

This hypothesis integrates well-established neuroscience (ANLS physiology: high certainty) with speculative application to ME/CFS (low-to-moderate certainty). No study has directly measured ANLS flux, MCT expression, or astrocyte-specific glycolytic rates in ME/CFS patients. The hypothesis is graded at \textbf{certainty 0.35}: mechanistically plausible, consistent with indirect evidence, but requiring direct experimental validation.
\end{hypothesis}

\paragraph{Supporting Evidence: Brain Lactate Elevation}

While no study has directly assayed ANLS function in ME/CFS, magnetic resonance spectroscopy (MRS) studies provide indirect evidence consistent with impaired brain energy metabolism:

\begin{itemize}
    \item \textbf{7T MRS (2025):} Godlewska et al.~\cite{Godlewska2025MRS} found elevated lactate in the pregenual anterior cingulate cortex (pgACC: 1.52 vs.\ 1.22~mM, $p = 0.003$) and dorsal ACC (dACC) of ME/CFS patients (n=24) compared to healthy controls (n=24), using ultra-high-field 7 Tesla MRS. Notably, ME/CFS and Long COVID patients showed \emph{different} neurochemical profiles despite similar clinical presentations.

    \item \textbf{Whole-brain MRS (2020):} Mueller et al.~\cite{Mueller2020MRS} documented elevated lactate-to-creatine ratios in the right insula, thalamus, and cerebellum (n=15 ME/CFS vs.\ n=15 controls), with brain temperature increases correlated with lactate elevations---suggesting neuroinflammation drives metabolic shifts.

    \item \textbf{Mitochondrial review (2025):} Syed et al.~\cite{Syed2025MitoCFS} synthesize evidence of elevated CSF lactate, impaired ATP synthesis, and increased glycolytic activity in ME/CFS, consistent with oxidative stress and conditions favoring anaerobic metabolism.
\end{itemize}

\begin{warning}[Interpreting Elevated Brain Lactate]
Elevated brain lactate in ME/CFS is consistent with the energy gate hypothesis but does not uniquely support it. At least three interpretations are possible:
\begin{enumerate}
    \item \textbf{ANLS dysfunction:} Lactate accumulates in astrocytes because it cannot be efficiently exported to or utilized by neurons (supports the energy gate hypothesis)
    \item \textbf{Mitochondrial dysfunction:} Neuronal mitochondria cannot oxidize lactate efficiently, causing backpressure (supports a downstream mitochondrial hypothesis)
    \item \textbf{Anaerobic shift:} Increased glycolysis due to hypoperfusion or oxygen limitation produces excess lactate (supports a vascular hypothesis)
\end{enumerate}
These mechanisms are not mutually exclusive and may operate simultaneously. Distinguishing between them requires studies that measure not just lactate levels but lactate \emph{flux} between cellular compartments---technically challenging but feasible with advanced $^{13}$C-MRS techniques.
\end{warning}

\paragraph{Testable Predictions}

The astrocyte energy gate hypothesis generates specific, falsifiable predictions that distinguish it from alternative explanations:

\begin{enumerate}
    \item \textbf{CSF lactate gradient:} If astrocytes produce lactate but neurons cannot utilize it, the CSF lactate/blood lactate ratio should be elevated in ME/CFS (astrocyte-derived lactate accumulating in extracellular space). In mitochondrial disorders affecting the CNS, a CSF/blood lactate ratio $> 0.91$ indicates central origin~\cite{Syed2025MitoCFS}. \\
    \emph{Prediction:} ME/CFS patients will show CSF/blood lactate ratio $> 0.91$, distinguishing CNS-origin lactate from peripheral sources.

    \item \textbf{MCT expression profiling:} Post-mortem or biopsy studies should reveal reduced MCT2 (neuronal) and/or MCT4 (astrocyte) expression in ME/CFS brain tissue, particularly in regions showing functional deficits (prefrontal cortex, anterior cingulate). \\
    \emph{Prediction:} MCT2/MCT4 expression reduced $\geq$30\% vs.\ matched controls.

    \item \textbf{Astrocyte-specific metabolomics:} Single-cell or spatial transcriptomics of ME/CFS brain tissue should show altered expression of glycolytic enzymes (hexokinase, phosphofructokinase, LDHA) and glucose transporters (GLUT1) in astrocytes specifically. \\
    \emph{Prediction:} Astrocyte glycolytic gene expression altered while neuronal oxidative genes remain intact.

    \item \textbf{Exogenous lactate challenge:} If the bottleneck is at the glucose $\to$ lactate step (mechanisms 1 or 2 above), then providing exogenous lactate should partially bypass the gate and improve cognitive function. If the bottleneck is at MCT transport (mechanism 3), exogenous lactate should not help. \\
    \emph{Prediction:} IV sodium lactate infusion during cognitive testing will improve performance in a subgroup of ME/CFS patients.

    \item \textbf{Ketone body bypass:} Ketone bodies ($\beta$-hydroxybutyrate, acetoacetate) enter neurons via MCT2 and are metabolized directly in neuronal mitochondria, bypassing the astrocyte glycolysis step entirely~\cite{Jang2024Ketone}. If the energy gate is at the astrocyte level, ketones should preferentially benefit CNS symptoms. \\
    \emph{Prediction:} Ketogenic diet or exogenous ketone supplementation will improve cognitive symptoms disproportionately to peripheral fatigue symptoms.

    \item \textbf{Activity-dependent worsening:} Since the ANLS is most critical during high neural activity (when glutamate-triggered demand surges), the energy gate should cause greater deficits during cognitive exertion than at rest. \\
    \emph{Prediction:} The difference between resting and task-evoked brain lactate (measured by functional MRS) will be larger in ME/CFS than controls---reflecting both increased demand signaling and impaired supply response.
\end{enumerate}

\paragraph{Treatment Implications}

The energy gate framework suggests several therapeutic strategies, ordered by plausibility and feasibility:

\begin{enumerate}
    \item \textbf{Ketogenic diet or exogenous ketones:} By providing $\beta$-hydroxybutyrate directly to neurons via MCT2, this approach bypasses the astrocyte glycolysis step entirely. The ketogenic diet has established neuroprotective effects in epilepsy (where MCT dysfunction is documented) and emerging evidence in psychiatric disorders associated with brain energy dysfunction~\cite{Jang2024Ketone}. \emph{This represents the most immediately testable intervention.}

    \item \textbf{Exogenous lactate supplementation:} Sodium lactate infusion or oral lactate has shown cognitive benefits in Alzheimer's disease models by restoring hippocampal and CSF lactate concentrations. In ME/CFS, this could bypass impaired astrocyte glycolysis (mechanisms 1--2) but would not help if MCT2 transport is the bottleneck (mechanism 3).

    \item \textbf{MCT upregulation:} Exercise and certain pharmacological agents can upregulate MCT expression. However, exercise intolerance in ME/CFS limits this approach. Pharmacological MCT modulators remain experimental.

    \item \textbf{Anti-neuroinflammatory strategies:} If chronic neuroinflammation drives astrocyte metabolic reprogramming and MCT downregulation, targeting neuroinflammation at its source may restore ANLS function. Low-dose naltrexone (LDN), which modulates microglial activation, could theoretically improve astrocyte metabolic function through reduced neuroinflammatory signaling.

    \item \textbf{Astrocyte-targeted delivery:} Emerging drug delivery technologies using astrocyte-specific targeting (e.g., nanoparticles with GFAP-binding peptides) could deliver metabolic support directly to astrocytes, enhancing glycolytic capacity or MCT expression without systemic effects.
\end{enumerate}

\paragraph{Limitations and Alternative Explanations}

Several important caveats apply to this hypothesis:

\begin{itemize}
    \item \textbf{No direct evidence in ME/CFS:} No study has measured ANLS flux, MCT expression, or astrocyte-specific glycolytic rates in ME/CFS patients. The hypothesis rests entirely on indirect evidence (elevated brain lactate, documented neuroinflammation) and analogy to other neurological conditions.

    \item \textbf{Elevated lactate is ambiguous:} As noted above, elevated brain lactate has at least three interpretations. The ANLS dysfunction interpretation is not uniquely supported by current data.

    \item \textbf{The ANLS itself is debated:} While the ANLS is well-established, its quantitative contribution remains contested. Some evidence suggests neurons can sustain activity through direct glucose oxidation alone, at least under non-demanding conditions~\cite{Kim2025ANLS}. The hypothesis is strongest for high-demand cognitive states.

    \item \textbf{Downstream mitochondrial dysfunction:} Even if lactate reaches neurons normally, impaired neuronal mitochondria (a well-documented finding in ME/CFS~\cite{Syed2025MitoCFS}) would produce similar symptoms. The energy gate and mitochondrial hypotheses are not mutually exclusive but have different treatment implications.

    \item \textbf{GLUT1 paradox:} Recent studies show that astrocyte-specific GLUT1 reduction can \emph{paradoxically improve} brain glucose metabolism, suggesting compensatory mechanisms may complicate predictions based on simple GLUT1 downregulation.

    \item \textbf{Small sample sizes:} The MRS studies supporting brain lactate elevation in ME/CFS have samples of n=15--24, which limits statistical power and generalizability. Larger, multi-site replication studies are needed.
\end{itemize}

For the relationship between the astrocyte energy gate and the broader selective energy dysfunction framework, including formal mathematical treatment and additional predictions, see Section~\ref{sec:selective-dysfunction}, specifically the astrocyte energy gate sub-hypothesis~(\ref{hyp:astrocyte-gate}).
```

## Key Points to Convey

1. **Established ANLS physiology** (high certainty): Astrocytes convert glucose to lactate, shuttle it to neurons via MCT transporters. This is well-established since 1994 but recently refined.

2. **Three candidate failure mechanisms** (speculative): GLUT1 dysfunction, glycolytic defects, MCT dysfunction -- any could create the "energy gate" bottleneck.

3. **Brain lactate evidence** (moderate certainty): Multiple MRS studies show elevated brain lactate in ME/CFS, consistent with (but not uniquely supporting) ANLS dysfunction.

4. **Selective vulnerability explanation** (speculative): Why cognition fails while hair/nails/peripheral tissues continue -- neurons uniquely depend on the ANLS.

5. **Testable and treatable** (the key value): The hypothesis generates 6 specific predictions and 5 treatment strategies, making it scientifically productive regardless of whether it proves correct.

6. **Limitations are explicit**: No direct evidence, ANLS itself is debated, alternative explanations exist, small sample sizes.

## Certainty Assessment for Integration
- **ANLS physiology:** HIGH (well-established neuroscience)
- **Brain lactate in ME/CFS:** MODERATE (replicated MRS findings, small samples)
- **ANLS dysfunction as ME/CFS mechanism:** LOW (plausible, no direct evidence)
- **Overall hypothesis certainty:** 0.35 (lower than typical for inclusion, but scientifically productive due to testability)

## Cross-References

The new section should reference:
- `\ref{sec:selective-dysfunction}` -- the parent selective dysfunction hypothesis in ch14j
- `\ref{hyp:astrocyte-gate}` -- the compact version of this hypothesis already in ch14j
- `\ref{sec:cns-energy-crisis}` -- the CNS energy crisis section later in ch08 (line 1267)
- `\ref{ch:energy-metabolism}` -- ch06 energy metabolism chapter

The CNS Energy Crisis section (line 1280) already mentions ANLS and should be updated to cross-reference the new section:
- Change "The brain's unique metabolic architecture---with neurons depending on astrocytes for lactate via the ANLS" to include a forward reference to the new section label.

## Verification Checklist

After integration, verify:
1. `\label{sec:astrocyte-energy-gate}` exists and compiles
2. `\label{hyp:astrocyte-energy-gate}` exists and compiles
3. All `\cite{}` keys exist in references.bib
4. Cross-references to `sec:selective-dysfunction` and `hyp:astrocyte-gate` resolve
5. No duplicate labels with the existing `hyp:astrocyte-gate` in ch14j (these are different: `hyp:astrocyte-gate` is the compact ch14j version; `hyp:astrocyte-energy-gate` is the expanded ch08 version)
6. Build succeeds: `nix build`

## Placement Summary

**Replace lines 327-333 of ch08-neurological.tex** (the existing 5-line Astrocyte Abnormalities subsection) with the expanded content above. The new subsection heading is `\subsubsection{Astrocyte Abnormalities and the Astrocyte Energy Gate}` which preserves the original content while adding ~1000 words of mechanistic detail.

**Also update line 1280** to add a cross-reference:
```latex
% Current:
\item \textbf{Astrocyte vulnerability}: The brain's unique metabolic architecture---with neurons depending on astrocytes for lactate via the ANLS~\cite{Pellerin1994,Magistretti2018}---may create CNS-specific vulnerability not present in peripheral tissues with direct glucose access

% Updated:
\item \textbf{Astrocyte vulnerability}: The brain's unique metabolic architecture---with neurons depending on astrocytes for lactate via the ANLS (Section~\ref{sec:astrocyte-energy-gate})---may create CNS-specific vulnerability not present in peripheral tissues with direct glucose access~\cite{Pellerin1994,Magistretti2018}
```
