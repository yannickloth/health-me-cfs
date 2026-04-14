# Template Proposal: Formalization Environments

| Field | Value |
|-------|-------|
| Date | 2026-01-24 |
| Proposer | ME/CFS Documentation Project |
| Status | Draft → template inclusion consideration |

## Motivation

Scientific docs need formal models + uncertainty quantification. Adds environments for:

1. Formal math models (ODEs, differential, algebraic)
2. Process models (BPMN, workflows, temporal sequences)
3. Causal claims w/ certainty annotations
4. Testable predictions from models

Complements existing `achievement`, `hypothesis`, `prediction` → structure for quantitative/formal representations.

## Proposed Environments

### 1. `model` — Mathematical Models

| Field | Spec |
|-------|------|
| Purpose | Formal math models w/ equations, parameters, validation |
| Visual | Blue tcolorbox, double left bar, gear/equation icon |
| Numbering | `chapter.X` (shares counter w/ `derivation`) |
| Title | Optional (e.g., "ATP Dynamics", "Cytokine Cascade") |
| Auto sections | Variables, Equations, Parameters, Predictions, Validation, Limitations |
| Contents | May contain align/equation envs |
| Unnumbered | `\begin{model*}[Title]...\end{model*}` |
| Rationale | `derivation` = math proofs; `model` = complete models w/ params, validation, predictions |

**Usage:**
```latex
\begin{model}[ATP Production and Consumption]
\label{model:atp}

\textbf{Variables:}
\begin{itemize}
  \item $A(t)$: ATP concentration at time $t$ (mmol/L)
  \item $E(t)$: Exertion level (dimensionless, 0-10)
\end{itemize}

\textbf{Equations:}
\begin{equation}
\frac{dA}{dt} = k_{\text{syn}} \cdot f(O_2) - k_{\text{cons}} \cdot E(t)
\end{equation}

\textbf{Parameters:} (with uncertainties and sources)
\begin{itemize}
  \item $k_{\text{syn}} = 0.45 \pm 0.12$ mmol/L/s \cite{Tomas2017}
  \item $k_{\text{cons}} = 0.35 \pm 0.08$ mmol/L/s per unit exertion
\end{itemize}

\textbf{Predictions:}
Critical exertion threshold: $E_{\text{crit}} = k_{\text{syn}}/k_{\text{cons}} = 1.29$ (dimensionless)

\textbf{Validation:}
Model fit to data from \cite{VanNess2010}: $R^2 = 0.73$, RMSE = 0.21 mmol/L

\textbf{Limitations:}
Does not account for mitochondrial recovery time (multi-day effects).
\end{model}
```

---

### 2. `process` — Process and Workflow Models

| Field | Spec |
|-------|------|
| Purpose | BPMN diagrams, temporal sequences, state machines, workflow descriptions |
| Visual | Purple tcolorbox, dashed border, flowchart icon |
| Numbering | `chapter.X` (shares counter w/ `construction`) |
| Title | Optional (e.g., "Post-Exertional Malaise Cascade") |
| Contents | Typically figure (BPMN, state machine); annotations for timing, probabilities, transitions; refs to supporting data |
| Unnumbered | `\begin{process*}[Title]...\end{process*}` |
| Rationale | `construction` = math/CS algorithms; `process` = scientific/clinical processes w/ empirical timing + probability data |

**Usage:**
```latex
\begin{process}[Post-Exertional Malaise Timeline]
\label{proc:pem}
\centering
\includegraphics[width=\textwidth]{figures/pem-bpmn.pdf}

\textbf{Temporal stages:}
\begin{enumerate}
  \item Metabolic shift (0-4h post-exertion): 95\% of patients
  \item Immune activation (4-24h): IL-6 elevation 2.3-fold \cite{LightStudy}
  \item Symptom peak (24-72h): median 48h \cite{Keller2014}
  \item Recovery (3-14 days): median 5d, 40\% incomplete recovery
\end{enumerate}

\textbf{Data sources:} Aggregated from n=347 patients across 5 studies.
\end{process}
```

---

### 3. `causalclaim` — Causal Claims with Certainty

| Field | Spec |
|-------|------|
| Purpose | Explicit causal relationships w/ uncertainty quantification |
| Visual | Orange tcolorbox, arrow icon; color intensity varies by certainty |
| Numbering | Unnumbered (too many per document) |
| Parameter | `certainty=high\|medium\|low` → frame thickness + bg intensity |
| Structure | Main claim · Evidence (studies, n, p-values) · Mechanism (if known) · Gap/uncertainty notes |
| Rationale | `hypothesis` = unproven claims, no certainty gradations; `causalclaim` = causal vs. correlational + visual certainty |

**Usage:**
```latex
\begin{causalclaim}[certainty=high]
Persistent immune activation following viral infection triggers ME/CFS onset in susceptible individuals.

\textbf{Evidence:}
\begin{itemize}
  \item Nunes et al.~\cite{Nunes2024}: n=156, $p<0.001$, longitudinal design
  \item Replicated in \cite{RuizPablos2021}: n=89, EBV reactivation mechanism
\end{itemize}

\textbf{Mechanism:} Incomplete viral clearance → chronic TLR signaling → cytokine production.
\end{causalclaim}

\begin{causalclaim}[certainty=medium]
Immune activation impairs mitochondrial function through cytokine-mediated pathways.

\textbf{Evidence:} Mechanism demonstrated in cell culture \cite{Syed2025}, but limited in vivo ME/CFS data.

\textbf{Gap:} Need longitudinal studies measuring both immune markers and mitochondrial function simultaneously.
\end{causalclaim}

\begin{causalclaim}[certainty=low]
Mitochondrial dysfunction may trigger further immune dysregulation.

\textbf{Status:} Speculative—theoretical plausibility from feedback loop models, but no direct empirical evidence in ME/CFS patients.
\end{causalclaim}
```

---

### 4. `dag` — Causal DAG Figures

| Field | Spec |
|-------|------|
| Purpose | Directed acyclic graphs showing causal structure |
| Visual | Minimal box, gray theme, graph/network icon |
| Numbering | Standard `figure` numbering |
| Contents | TikZ graph or included PDF · Legend (edge styles → certainty levels) · Key for node types (triggers, intermediates, outcomes) |
| Rationale | Standard `figure` works, but `dag` adds semantic meaning + enforces legend/certainty docs |

**Usage:**
```latex
\begin{dag}[ME/CFS Pathophysiology Causal Structure]
\label{dag:mecfs-full}
\centering
\input{figures/mecfs-causal-dag.tikz}

\textbf{Legend:}
\begin{itemize}
  \item \textcolor{green!70!black}{\textbf{Solid thick}}: High certainty ($\geq 0.7$)
  \item \textcolor{orange}{\textbf{Solid medium}}: Medium certainty (0.5--0.7)
  \item \textcolor{red}{\textbf{Dashed thin}}: Low certainty ($< 0.5$)
\end{itemize}

\textbf{Feedback loops:} Oxidative stress ↔ Mitochondrial dysfunction (certainty 0.8)
\end{dag}
```

---

## Implementation Sketch

### colors.tex additions

```latex
% Model environment (blue theme)
\definecolor{modelframe}{HTML}{1565C0}
\definecolor{modelbg}{HTML}{E3F2FD}

% Process environment (purple theme)
\definecolor{processframe}{HTML}{6A1B9A}
\definecolor{processbg}{HTML}{F3E5F5}

% Causal claim (orange, intensity varies by certainty)
\definecolor{causalframe_high}{HTML}{E65100}
\definecolor{causalbg_high}{HTML}{FFF3E0}
\definecolor{causalframe_medium}{HTML}{FB8C00}
\definecolor{causalbg_medium}{HTML}{FFF8E1}
\definecolor{causalframe_low}{HTML}{FFB74D}
\definecolor{causalbg_low}{HTML}{FFFDE7}

% DAG environment (gray theme)
\definecolor{dagframe}{HTML}{424242}
\definecolor{dagbg}{HTML}{FAFAFA}
```

### theorems.tex additions

```latex
% Model environment - for mathematical models with parameters and validation
\newcounter{modelcounter}[chapter]
\renewcommand{\themodelcounter}{\thechapter.\arabic{modelcounter}}

\newtcolorbox[use counter=modelcounter]{model}[1][]{
  enhanced,
  breakable,
  colback=modelbg,
  colframe=modelframe,
  fonttitle=\bfseries,
  title={Model~\themodelcounter\ifstrempty{#1}{}{:~#1}},
  attach boxed title to top left={yshift=-2mm, xshift=5mm},
  boxed title style={colback=modelframe, colframe=modelframe},
  borderline west={3pt}{0pt}{modelframe},
  borderline west={1pt}{3pt}{modelframe},
  before upper={\parindent15pt},
}

% Unnumbered variant
\newtcolorbox{model*}[1][]{
  enhanced,
  breakable,
  colback=modelbg,
  colframe=modelframe,
  fonttitle=\bfseries,
  title={\ifstrempty{#1}{Model}{#1}},
  attach boxed title to top left={yshift=-2mm, xshift=5mm},
  boxed title style={colback=modelframe, colframe=modelframe},
  borderline west={3pt}{0pt}{modelframe},
  borderline west={1pt}{3pt}{modelframe},
  before upper={\parindent15pt},
}

% Process environment - for BPMN/workflow diagrams with empirical timing
\newcounter{processcounter}[chapter]
\renewcommand{\theprocesscounter}{\thechapter.\arabic{processcounter}}

\newtcolorbox[use counter=processcounter]{process}[1][]{
  enhanced,
  breakable,
  colback=processbg,
  colframe=processframe,
  fonttitle=\bfseries,
  title={Process~\theprocesscounter\ifstrempty{#1}{}{:~#1}},
  attach boxed title to top left={yshift=-2mm, xshift=5mm},
  boxed title style={colback=processframe, colframe=processframe},
  borderline={1.5pt}{0pt}{processframe, dashed},
  before upper={\parindent15pt},
}

\newtcolorbox{process*}[1][]{
  enhanced,
  breakable,
  colback=processbg,
  colframe=processframe,
  fonttitle=\bfseries,
  title={\ifstrempty{#1}{Process}{#1}},
  attach boxed title to top left={yshift=-2mm, xshift=5mm},
  boxed title style={colback=processframe, colframe=processframe},
  borderline={1.5pt}{0pt}{processframe, dashed},
  before upper={\parindent15pt},
}

% Causal claim environment - with certainty parameter
\newtcolorbox{causalclaim}[1][certainty=medium]{
  enhanced,
  breakable,
  % Parse certainty level and set colors accordingly
  IfBooleanTF={#1}{
    colback=causalbg_high,
    colframe=causalframe_high,
    borderline west={3pt}{0pt}{causalframe_high},
  }{
    % Default to medium
    colback=causalbg_medium,
    colframe=causalframe_medium,
    borderline west={2pt}{0pt}{causalframe_medium},
  },
  fonttitle=\bfseries,
  title={Causal Claim},
  attach boxed title to top left={yshift=-2mm, xshift=5mm},
  boxed title style={colback=causalframe_medium, colframe=causalframe_medium},
  before upper={\parindent15pt},
}

% DAG environment - wrapper for causal graphs
\newtcolorbox{dag}[1][]{
  enhanced,
  breakable,
  colback=dagbg,
  colframe=dagframe,
  fonttitle=\bfseries,
  title={\ifstrempty{#1}{Causal Directed Acyclic Graph}{#1}},
  attach boxed title to top left={yshift=-2mm, xshift=5mm},
  boxed title style={colback=dagframe, colframe=dagframe},
  before upper={\parindent15pt},
}
```

**Note:** `causalclaim` parameter parsing needs refinement per tcolorbox key-value syntax. Above = conceptual.

---

## Relationship to Existing Environments

| Existing | Proposed | Distinction |
|----------|----------|-------------|
| `hypothesis` | `model` | Hypothesis = qualitative; Model = quantitative w/ equations |
| `prediction` | `model` | Prediction = single testable claim; Model = complete system, multiple predictions |
| `derivation` | `model` | Derivation = math proof; Model = empirical w/ fitted parameters |
| `construction` | `process` | Construction = algorithmic; Process = empirical workflow w/ timing data |
| `observation` | `causalclaim` | Observation = empirical data; Causal claim = inferred causation w/ certainty |

No overlap — each serves distinct purpose.

---

## Alternatives Considered

| # | Alternative | Rejected because |
|---|-------------|------------------|
| 1 | Existing `hypothesis` + manual certainty notes | No visual certainty distinction · Readers parse prose for confidence · Can't systematically extract low-certainty claims |
| 2 | Standard `figure` for all models | Loses semantic distinction (decorative vs. formal model) · Can't cross-ref "all models" · No enforcement of required sections (params, validation, limitations) |
| 3 | Keep everything project-specific | Formal modeling increasingly common across fields · Other docs (physics, biology, medicine, economics) benefit · Reinventing per-project wastes effort |

---

## Open Questions

1. **Icons:** model/process/causal/DAG?
   - FontAwesome: `\faGear`, `\faProjectDiagram`, `\faArrowRight`, `\faShareAlt`
   - Unicode: ⚙, ⚡, →, ⚛
2. **`causalclaim` certainty syntax:** `\begin{causalclaim}[certainty=high]` | three separate envs `\begin{causalclaim_high}` etc. — maintainer decides per tcolorbox best practices
3. **Counter sharing:** `model` ↔ `derivation` (math) | `process` ↔ `construction` (procedural) | independent?
4. **Breakability:** multi-page models break across pages | force page breaks? Current draft: breakable (for long models)

---

## Integration with ME/CFS Document

| Env | Use cases |
|-----|-----------|
| `model` | ATP dynamics (Ch.6 Energy Metabolism) · Cytokine cascade kinetics (Ch.7 Immune Dysfunction) · HPA axis feedback (Ch.9 Endocrine) |
| `process` | PEM timeline (Ch.2 Core Symptoms) · 2-day CPET response (Ch.6) · Diagnostic workflow (Ch.4) |
| `causalclaim` | Throughout Part 2 (Pathophysiology) — replace vague "may cause" w/ explicit certainty; annotate every causal chain |
| `dag` | Overall pathophysiology DAG (Ch.13 Integrative Models) · Subsystem DAGs (per chapter, Part 2) |

---

## Recommendation

**Propose to template for inclusion:**

1. Generalizable → any scientific field w/ formal models (biology, medicine, physics, economics, climate)
2. Non-redundant → complements existing envs, no overlap
3. Standards-promoting → encourages uncertainty quantification + validation reporting
4. Accessibility → visual certainty coding aids reader confidence assessment

**Alt:** If maintainers prefer waiting for broader demand → keep project-specific, propose later once usage proven.

---

## Next Steps

1. Refine implementation (icon choices, certainty parameter syntax)
2. Create examples in ME/CFS document to demonstrate value
3. Propose to template maintainers (this doc = spec)
4. Accepted → migrate project-specific → template
5. Rejected → keep project-specific; document in `.claude/template-environments.md` as custom additions

---

| Field | Value |
|-------|-------|
| Contact | ME/CFS Documentation Project (@claude-code-assistant) |
| Template Repo | [infolead-latex-templates](../infolead-latex-templates/) |