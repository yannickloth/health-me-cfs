# Integration Guide: CNS Energy Triage Hypothesis

## Overview
Develops the neuroscience foundation for why the brain implements energy prioritization during metabolic scarcity, applied to ME/CFS cognitive dysfunction. This is a `\speculation` environment (certainty 0.40) for ch08-neurological.tex.

## Paper Citation Keys (NEW -- add to references.bib)

### BibTeX key: `Jamadar2025metabolic`
```bibtex
@article{Jamadar2025metabolic,
  author = {Jamadar, Sharna D. and Behler, Anna and Deery, Hamish and Breakspear, Michael},
  title = {The metabolic costs of cognition},
  journal = {Trends in Cognitive Sciences},
  year = {2025},
  volume = {29},
  number = {6},
  pages = {541--555},
  doi = {10.1016/j.tics.2024.11.010},
  pmid = {39809687},
  keywords = {brain energy, metabolic cost, cognition, homeostasis, neurocognitive disease}
}
```

### BibTeX key: `Sebaiti2022cognitive`
```bibtex
@article{Sebaiti2022cognitive,
  author = {Aoun Sebaiti, Mehdi and Hainselin, Mathieu and Gounden, Yannick and Sirbu, Carmen Adella and Sekulic, Slobodan and Lorusso, Lorenzo and Nacul, Luis and Authier, Fran\c{c}ois J\'{e}r\^{o}me},
  title = {Systematic review and meta-analysis of cognitive impairment in myalgic encephalomyelitis/chronic fatigue syndrome ({ME/CFS})},
  journal = {Scientific Reports},
  year = {2022},
  volume = {12},
  number = {1},
  pages = {2157},
  doi = {10.1038/s41598-021-04764-w},
  pmid = {35140252},
  keywords = {ME/CFS, cognitive impairment, meta-analysis, processing speed, attention, memory}
}
```

### BibTeX key: `Mashour2024anesthesia`
```bibtex
@article{Mashour2024anesthesia,
  author = {Mashour, George A.},
  title = {Anesthesia and the neurobiology of consciousness},
  journal = {Neuron},
  year = {2024},
  volume = {112},
  number = {10},
  pages = {1553--1567},
  doi = {10.1016/j.neuron.2024.03.002},
  pmid = {38579714},
  keywords = {anesthesia, consciousness, brain networks, metabolic hierarchy, rich club}
}
```

### BibTeX key: `Graveling2013hypoglycemia`
```bibtex
@article{Graveling2013hypoglycemia,
  author = {Graveling, Alison J. and Deary, Ian J. and Frier, Brian M.},
  title = {Acute hypoglycemia impairs executive cognitive function in adults with and without type 1 diabetes},
  journal = {Diabetes Care},
  year = {2013},
  volume = {36},
  number = {10},
  pages = {3240--3246},
  doi = {10.2337/dc13-0194},
  pmid = {23780950},
  keywords = {hypoglycemia, executive function, cognitive impairment, brain energy}
}
```

### BibTeX key: `Wiehler2022glutamate`
```bibtex
@article{Wiehler2022glutamate,
  author = {Wiehler, Antonius and Branzoli, Francesca and Adanyeguh, Isaac and Mochel, Fanny and Pessiglione, Mathias},
  title = {A neuro-metabolic account of why daylong cognitive work alters the control of economic decisions},
  journal = {Current Biology},
  year = {2022},
  volume = {32},
  number = {16},
  pages = {3564--3575},
  doi = {10.1016/j.cub.2022.06.074},
  pmid = {35961314},
  keywords = {cognitive fatigue, glutamate, prefrontal cortex, metabolic cost, lateral PFC}
}
```

### BibTeX key: `Bansal2025cognitive`
```bibtex
@article{Bansal2025cognitive,
  author = {Bansal, Amolak S. and Seton, Katie A. and Engelbrecht, Floyd C. and others},
  title = {Cognitive Dysfunction in Myalgic Encephalomyelitis/Chronic Fatigue Syndrome---Aetiology and Potential Treatments},
  journal = {International Journal of Molecular Sciences},
  year = {2025},
  volume = {26},
  number = {5},
  pages = {1896},
  doi = {10.3390/ijms26051896},
  keywords = {ME/CFS, cognitive dysfunction, neuroinflammation, cerebral blood flow, brain fog}
}
```

## Recommended Chapter for Integration

### Primary Target: ch08-neurological.tex
**File:** `contents/part2-pathophysiology/ch08-neurological.tex`
**Insertion point:** After line 1418 (after the "CNS Energy Crisis as Primary Event" subsection treatment implications paragraph, before the "Summary: An Integrated Neurological Model" section at line 1421)
**Environment type:** `speculation` (certainty 0.40)

## Complete LaTeX Content for Insertion

Insert the following block between line 1418 and line 1421:

```latex

\subsection{CNS Energy Triage: A Hierarchical Model of Brain Fog}
\label{sec:cns-energy-triage-clinical}

\begin{speculation}[CNS Energy Triage Hypothesis]
\label{spec:cns-energy-triage}
The brain may operate a hardwired energy prioritization system during metabolic scarcity, explaining why ME/CFS cognitive dysfunction follows a characteristic pattern rather than producing uniform degradation across all domains.

\paragraph{Neuroscience of brain energy prioritization.}
The human brain comprises approximately 2\% of body mass yet consumes 20--25\% of resting metabolic energy, with goal-directed cognition requiring only an additional $\sim$5\% above resting homeostatic costs~\cite{Jamadar2025metabolic}. This tight energy budget means that even modest metabolic deficits---such as those produced by impaired astrocyte-neuron lactate shuttling (Section~\ref{sec:astrocyte-energy-gate})---could disproportionately affect the most energy-intensive neural processes.

Not all brain regions have equal metabolic demands. The prefrontal and frontoparietal association cortices, which support executive function, cognitive flexibility, and novel problem-solving, exhibit the highest \emph{relative metabolic cost}---defined as energy utilization exceeding baseline activity levels~\cite{Jamadar2025metabolic}. In contrast, brainstem nuclei governing vital functions (respiration, cardiovascular regulation, arousal) and primary sensory cortices operate with lower relative metabolic overhead, relying on phylogenetically older, more energy-efficient circuits.

\paragraph{Evidence from metabolic disruption models.}
Two natural experiments demonstrate hierarchical cognitive shutdown under energy scarcity:

\begin{enumerate}
    \item \textbf{Hypoglycemia:} Acute reduction in brain glucose supply impairs complex higher-order cognitive processes at higher glucose thresholds and to a greater extent than lower-level functions. Executive functions show large effect sizes ($d > 0.8$) during hypoglycemia~\cite{Graveling2013hypoglycemia}, consistent with the prefrontal cortex's elevated metabolic sensitivity.

    \item \textbf{Anesthesia:} General anesthetics produce a hierarchical disconnection pattern in which prefrontal and association cortices are affected first, while primary sensory processing and thalamocortical connectivity remain preserved. Mashour characterizes this as preferential failure of ``rich club'' network hubs with greater metabolic demands~\cite{Mashour2024anesthesia}---an ``airport in a snowstorm'' analogy where the most connected, most metabolically expensive nodes fail first.
\end{enumerate}

Furthermore, prolonged cognitive work causes glutamate accumulation specifically in the lateral prefrontal cortex, making further executive function activation progressively more metabolically costly~\cite{Wiehler2022glutamate}. This suggests a built-in mechanism by which the brain curtails its most expensive operations when metabolic capacity is strained.

\paragraph{Application to ME/CFS.}
We speculate that ME/CFS produces a chronic version of this triage state. If total available CNS energy is reduced---whether through astrocyte dysfunction, reduced cerebral blood flow, or neuroinflammation---the brain may engage the same prioritization hierarchy that normally activates only during acute metabolic crises. The proposed triage order, from most to least protected, would be:

\begin{enumerate}
    \item Brainstem vital functions (preserved even in severe ME/CFS)
    \item Basic sensory processing (usually intact)
    \item Language comprehension (impaired only in severe cases)
    \item Motor coordination (degraded in moderate-severe disease)
    \item Memory consolidation (commonly affected)
    \item Executive function and cognitive flexibility (affected early, often prominently)
\end{enumerate}

This maps to the formal energy triage hypothesis developed in Section~\ref{sec:selective-dysfunction} (specifically Hypothesis~\ref{hyp:energy-triage}), but here we emphasize the clinical neuroscience basis rather than the mathematical framework.

\paragraph{An important caveat from meta-analytic evidence.}
The largest meta-analysis of cognitive impairment in ME/CFS (33 studies, $n = 1{,}086$) reveals that the observed pattern is more nuanced than a simple ``executive function fails first'' model~\cite{Sebaiti2022cognitive}. Processing speed shows the largest impairment ($g = -0.82$), followed by sustained attention ($g = -0.75$), then memory domains ($g = -0.55$ to $-0.67$), with executive function showing a smaller effect ($g = 0.42$) and instrumental functions preserved. This is important: processing speed is \emph{more} impaired than executive function on standard neuropsychological measures.

This apparent discrepancy may be reconciled by recognizing that processing speed is a \emph{global} measure of neural efficiency degraded by any reduction in brain energy delivery, not a specific cognitive tier. It reflects the overall metabolic throughput of cortical circuits rather than a discrete cognitive function. Additionally, standardized tests of executive function (e.g., Trail Making Test Part B) involve relatively routinized operations that may not capture the full metabolic cost of genuinely novel, unstructured problem-solving. The energy triage model predicts that \emph{novel, complex, integrative} cognitive operations fail first---not necessarily the specific neuropsychological domain labeled ``executive function'' in test batteries.

\paragraph{Testable predictions.}
If the CNS energy triage model is correct, the following should hold:
\begin{itemize}
    \item Novel tasks are impaired more than practiced routines at matched difficulty
    \item Working memory (high-energy encoding) fails before recognition memory (lower-energy pattern completion), as formalized in Hypothesis~\ref{hyp:memory-triage}
    \item Cognitive hierarchy of impairment maps to regional metabolic demand on FDG-PET
    \item Severity progression follows the triage order: mild ME/CFS shows primarily executive/speed deficits; severe ME/CFS additionally shows language and motor involvement
    \item Interventions that bypass energy-expensive processing (routinization, external cognitive scaffolding) should preferentially improve function
\end{itemize}

\paragraph{Treatment implications.}
If the brain operates in chronic triage mode, the therapeutic strategy shifts from ``try harder'' to ``reduce the load'': (1)~\emph{routinize} daily activities to shift them from energy-expensive prefrontal control to energy-efficient basal ganglia automaticity; (2)~use external cognitive scaffolding (lists, alarms, decision templates) to offload executive demands; (3)~schedule cognitively demanding tasks during peak energy windows when triage thresholds are temporarily relaxed; (4)~explore metabolic interventions (ketone supplementation, cerebral blood flow optimization) that may expand the total energy budget and raise triage thresholds across all tiers.

\paragraph{Limitations.}
This hypothesis faces several challenges: (1)~the meta-analytic evidence does not cleanly support executive function as the most impaired domain~\cite{Sebaiti2022cognitive}; (2)~the triage hierarchy has not been directly tested in ME/CFS with tasks specifically designed to probe each tier; (3)~alternative explanations for the cognitive pattern exist, including neuroinflammation-mediated cytokine effects on specific circuits~\cite{Bansal2025cognitive}, tryptophan pathway diversion, and autonomic-mediated cerebral hypoperfusion; (4)~the model may oversimplify what is likely a multi-mechanism process. The triage framework should be understood as one contributing mechanism among several, not a complete explanation for ME/CFS cognitive dysfunction.
\end{speculation}
```

## Cross-References Used

| Reference | Location | Label |
|-----------|----------|-------|
| Astrocyte Energy Gate | ch08, ~line 327 | `\ref{sec:astrocyte-energy-gate}` |
| Selective Energy Dysfunction | ch14j | `\ref{sec:selective-dysfunction}` |
| Energy Triage Hypothesis (formal) | ch14j | `\ref{hyp:energy-triage}` |
| Memory Triage Hypothesis | ch14j | `\ref{hyp:memory-triage}` |

## New Labels Introduced

| Label | Type | Description |
|-------|------|-------------|
| `sec:cns-energy-triage-clinical` | section | Subsection anchor |
| `spec:cns-energy-triage` | speculation | Main speculation environment |

## Word Count
~850 words (within the 700-900 target).
