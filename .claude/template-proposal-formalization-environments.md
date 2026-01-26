# Template Proposal: Formalization Environments

**Date:** 2026-01-24
**Proposer:** ME/CFS Documentation Project
**Status:** Draft - for template inclusion consideration

## Motivation

Scientific documents increasingly require formal models (causal DAGs, mathematical models, process diagrams) with explicit uncertainty quantification. This proposal adds environments for:

1. **Formal mathematical models** (ODEs, differential equations, algebraic models)
2. **Process models** (BPMN, workflows, temporal sequences)
3. **Causal claims** with certainty annotations
4. **Testable predictions** generated from models

These complement existing `achievement`, `hypothesis`, and `prediction` environments by providing structure for **quantitative and formal representations**.

## Proposed Environments

### 1. `model` - Mathematical Models

**Purpose:** Formal mathematical models with equations, parameters, and validation.

**Visual Style:** Blue-themed tcolorbox with double left bar, gear/equation icon

**Numbering:** `chapter.X` (shares counter with `derivation`)

**Structure:**
- Optional title (e.g., "ATP Dynamics", "Cytokine Cascade")
- Automatic sections for: Variables, Equations, Parameters, Predictions, Validation, Limitations
- Can contain align/equation environments

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

**Unnumbered variant:** `\begin{model*}[Title]...\end{model*}`

**Rationale:** Existing `derivation` environment is for mathematical proofs, not complete models with parameters, validation, and predictions. This environment provides structure for reproducible quantitative models.

---

### 2. `process` - Process and Workflow Models

**Purpose:** BPMN diagrams, temporal sequences, state machines, workflow descriptions.

**Visual Style:** Purple-themed tcolorbox with dashed border, flowchart icon

**Numbering:** `chapter.X` (shares counter with `construction`)

**Structure:**
- Optional title (e.g., "Post-Exertional Malaise Cascade")
- Typically contains a figure (BPMN diagram, state machine)
- Annotations for timing, probabilities, transitions
- References to supporting data

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

**Unnumbered variant:** `\begin{process*}[Title]...\end{process*}`

**Rationale:** While `construction` exists for algorithms, it's math/CS-focused. This environment is for scientific/clinical processes with empirical timing and probability data.

---

### 3. `causalclaim` - Causal Claims with Certainty

**Purpose:** Explicit causal relationships with uncertainty quantification.

**Visual Style:** Orange-themed tcolorbox with arrow icon, color intensity varies by certainty level

**Numbering:** Unnumbered (too many in typical document)

**Parameters:**
- `certainty=high|medium|low` (changes frame thickness and background intensity)

**Structure:**
- Main causal claim
- Evidence section (studies, sample sizes, p-values)
- Mechanism explanation (if known)
- Gap/uncertainty notes

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

**Rationale:** Existing `hypothesis` is for unproven claims, but doesn't capture **certainty gradations** or distinguish causal from correlational claims. This environment makes uncertainty explicit and visual.

---

### 4. `dag` - Causal DAG Figures

**Purpose:** Directed acyclic graphs showing causal structure.

**Visual Style:** Minimal box, gray theme, graph/network icon

**Numbering:** Uses standard `figure` numbering

**Structure:**
- Contains TikZ graph or included PDF
- Legend explaining edge styles (certainty levels)
- Key for node types (triggers, intermediates, outcomes)

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

**Rationale:** Could use standard `figure`, but this environment adds semantic meaning and enforces legend/certainty documentation.

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

**Note:** The `causalclaim` parameter parsing would need refinement based on tcolorbox's actual key-value syntax. Above is conceptual.

---

## Relationship to Existing Environments

| Existing | Proposed | Distinction |
|----------|----------|-------------|
| `hypothesis` | `model` | Hypothesis = qualitative claim; Model = quantitative with equations |
| `prediction` | `model` | Prediction = single testable claim; Model = complete system with multiple predictions |
| `derivation` | `model` | Derivation = mathematical proof; Model = empirical model with fitted parameters |
| `construction` | `process` | Construction = algorithmic; Process = empirical workflow with timing data |
| `observation` | `causalclaim` | Observation = empirical data; Causal claim = inferred causation with certainty |

**No overlap or redundancy** - each serves a distinct purpose.

---

## Alternatives Considered

### Alternative 1: Use existing `hypothesis` + manual certainty notes

**Rejected because:**
- No visual distinction for certainty levels
- Readers must parse prose to understand confidence
- Can't systematically extract all low-certainty claims for review

### Alternative 2: Use standard `figure` for all models

**Rejected because:**
- Loses semantic distinction (is this decorative or a formal model?)
- Can't cross-reference "all models" easily
- No enforcement of required sections (parameters, validation, limitations)

### Alternative 3: Keep everything project-specific

**Rejected because:**
- Formal modeling is increasingly common across scientific fields
- Other documents (physics, biology, medicine, economics) would benefit
- Reinventing per-project wastes effort

---

## Open Questions

1. **Icon choices:** What icons best represent model/process/causal/DAG?
   - Could use FontAwesome: `\faGear`, `\faProjectDiagram`, `\faArrowRight`, `\faShareAlt`
   - Or unicode: ⚙, ⚡, →, ⚛

2. **`causalclaim` certainty syntax:**
   - Current draft: `\begin{causalclaim}[certainty=high]`
   - Alternative: Three separate environments? `\begin{causalclaim_high}`, etc.?
   - Template maintainer should decide based on tcolorbox best practices

3. **Counter sharing:**
   - Should `model` share counter with `derivation`? (both math-focused)
   - Should `process` share counter with `construction`? (both procedural)
   - Or independent counters?

4. **Breakability:**
   - Should multi-page models break across pages or force page breaks?
   - Current draft: breakable (for long models)

---

## Integration with ME/CFS Document

Once added to template, the ME/CFS document would use:

1. **`model`** for:
   - ATP dynamics (Chapter 6 - Energy Metabolism)
   - Cytokine cascade kinetics (Chapter 7 - Immune Dysfunction)
   - HPA axis feedback model (Chapter 9 - Endocrine)

2. **`process`** for:
   - PEM timeline (Chapter 2 - Core Symptoms)
   - 2-day CPET response (Chapter 6)
   - Diagnostic workflow (Chapter 4)

3. **`causalclaim`** throughout Part 2 (Pathophysiology):
   - Replace vague "may cause" with explicit certainty levels
   - Annotate every causal chain

4. **`dag`** for:
   - Overall pathophysiology DAG (Chapter 13 - Integrative Models)
   - Subsystem DAGs (per chapter in Part 2)

---

## Recommendation

**Propose to template for inclusion** because:

1. **Generalizable:** Useful for any scientific field with formal models (biology, medicine, physics, economics, climate science)
2. **Non-redundant:** Complements existing environments without overlap
3. **Standards-promoting:** Encourages best practices (uncertainty quantification, validation reporting)
4. **Accessibility:** Visual certainty coding helps readers assess confidence at a glance

**Alternative:** If template maintainers prefer to wait for broader demand, keep in project-specific file for now and propose later once usage is proven.

---

## Next Steps

1. **Refine implementation** (icon choices, certainty parameter syntax)
2. **Create examples** in ME/CFS document to demonstrate value
3. **Propose to template maintainers** with this document as specification
4. **If accepted:** Migrate from project-specific to template
5. **If rejected:** Keep project-specific, document in `.claude/template-environments.md` as custom additions

---

**Contact:** ME/CFS Documentation Project (@claude-code-assistant)
**Template Repository:** [infolead-latex-templates](../infolead-latex-templates/)