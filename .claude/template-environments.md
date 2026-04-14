# Template Environments Quick Reference

Theorem-like environments in [infolead-latex-templates](../infolead-latex-templates/).

**Use when:** creating new env | choosing between similar | checking visual styles | maintaining consistency.

## 1. Standard Math Environments

`\newtheorem`-defined, simple styling, chapter-numbered.

| Env | Purpose | Style | Counter |
|---|---|---|---|
| `theorem` | Mathematical theorems | Plain (italic) | `chapter.X` |
| `lemma` | Supporting results | Plain (italic) | shares w/ theorem |
| `corollary` | Direct consequences | Plain (italic) | shares w/ theorem |
| `proposition` | Propositions | Plain (italic) | shares w/ theorem |
| `definition` | Formal definitions | Definition (upright) | `chapter.X` |
| `example` | Examples | Definition (upright) | `chapter.X` |
| `remark` | Remarks/notes | Remark | unnumbered |

```latex
\begin{theorem}[Optional Name]
\label{thm:mytheorem}
Statement of the theorem.
\end{theorem}

\begin{proof}
Proof content.
\end{proof}
```

## 2. Design / Methodological Environments

Theoretical frameworks, architectural decisions, methodological structures. All globally numbered.

| Env | Purpose |
|---|---|
| `principle` | Fundamental principles/axioms |
| `directive` | Guidelines/directives |
| `problem` | Problem statements |
| `pattern` | Recurring structures |
| `design-decision` | Explicit design decisions |
| `fallacy` | Common misconceptions |
| `observation` | Empirical observations |
| `instantiation` | Concrete examples of abstract concepts |
| `construction` | Algorithms/processes/systematic methods |
| `speculation` | Speculative hypotheses |

```latex
\begin{principle}[Conservation of Energy]
\label{prin:energy}
Energy cannot be created or destroyed, only transformed.
\end{principle}

\begin{pattern}[Symptom Clustering]
\label{pat:cluster}
ME/CFS symptoms tend to cluster into distinct phenotypic groups.
\end{pattern}
```

## 3. Scientific Claim Environments (tcolorbox)

Visually distinct boxes per epistemic status. Chapter-numbered.

**Research results:**

| Env | Visual | When to use |
|---|---|---|
| `achievement` | Double border, star | Original findings unique to your work |
| `prediction` | Dashed border, arrow | Future-oriented, falsifiable claims |
| `postdiction` | Solid border, checkmark | Results fitting existing experimental data |

**Foundational claims:**

| Env | Visual | When to use |
|---|---|---|
| `axiom` | Thick double border | Basic assumptions taken as given |
| `hypothesis` | Dash-dot border | Working hypotheses requiring validation |
| `assumption` | Left+right bars | Conditional premises |

**Verification / requirements:**

| Env | Visual | When to use |
|---|---|---|
| `requirement` | Corner brackets | Mandatory criteria/constraints |
| `consistency_check` | Simple box | Confirms theory reproduces known physics |

**Questions / caveats:**

| Env | Visual | When to use |
|---|---|---|
| `open_question` | Dotted border | Future research directions |
| `warning` | Left bar, triangle | Caveats, scope boundaries, known issues |

```latex
\begin{achievement}[Biomarker Discovery]
\label{ach:biomarker}
We identified elevated cytokine IL-8 as a consistent marker...
\end{achievement}

\begin{hypothesis}[Mitochondrial Dysfunction]
\label{hyp:mito}
Cellular energy deficits may result from impaired ATP synthesis...
\end{hypothesis}

\begin{warning}[Small Sample Size]
This study included only 42 participants, limiting generalizability.
\end{warning}
```

**Unnumbered variants:** append `*` to env name.
```latex
\begin{achievement*}[Optional Title]
Content for unnumbered box (useful in appendices).
\end{achievement*}
```

## 4. Derivation / Calculation Environments

| Env | Purpose | Numbering |
|---|---|---|
| `derivation` | Mathematical derivations | `chapter.X` |
| `calculation` | Numerical calculations | `chapter.X` |
| `step` | Individual proof/derivation steps | sequential |

```latex
\begin{derivation}[Energy Balance]
\label{der:energy}
Starting from conservation of energy:
\begin{align}
  E_{\text{total}} &= E_{\text{kinetic}} + E_{\text{potential}} \\
                   &= \frac{1}{2}mv^2 + mgh
\end{align}
\end{derivation}
```

## 5. Document Structure Environments

| Env | Purpose |
|---|---|
| `chapterabstract` | Chapter-level summaries (not document abstract) |
| `roadmap` | Chapter structure outline (tcolorbox) |
| `conclusion` | Chapter/section conclusions |
| `\qa{question}` | Q&A sections; reset via `\setcounter{qacounter}{0}` per chapter |

```latex
\begin{chapterabstract}
This chapter examines the core symptoms of ME/CFS, including...
\end{chapterabstract}

\begin{roadmap}
We first introduce diagnostic criteria (\S\ref{sec:diagnosis}), then...
\end{roadmap}

\qa{What distinguishes PEM from general fatigue?}
Post-exertional malaise involves a delayed worsening...
```

## Visual Styling

Scientific claim envs: subtle semantic colors (`colors.tex`) | distinct B&W-visible borders | icons | breakable boxes | boxed top-left titles.

Color schemes (`infolead-latex-templates/colors.tex`): viridis palette (perceptually uniform); inferno/magma for warnings/requirements; light backgrounds + darker frames; screen + print.

## Selection Decision Table

| Question | → Path |
|---|---|
| Need boxed env? | NO → standard (`theorem`/`definition`/`remark`); YES → next |
| Scientific claim w/ epistemic status? | NO → next; YES → epistemic table below |
| Methodological/theoretical? | YES → design envs (`principle`, `pattern`, `construction`, ...); NO → project-specific or `roadmap`/`chapterabstract` |

**Epistemic-status selection (when boxed scientific claim):**

| Claim type | → Env |
|---|---|
| Novel result | `achievement` |
| Future test | `prediction` |
| Fits existing data | `postdiction` |
| Unproven claim | `hypothesis` |
| Foundational | `axiom` |
| Working assumption | `assumption` |
| Necessary condition | `requirement` |
| Verification | `consistency_check` |
| Unsolved problem | `open_question` |
| Caveat/limitation | `warning` |

## Medical Writing (ME/CFS) Recommendations

| Content type | → Env | Example |
|---|---|---|
| Diagnostic criteria | `definition` \| `requirement` | ICC-2011 criteria |
| Biomarker findings | `achievement` \| `observation` | Novel metabolite discoveries |
| Pathophysiology hypotheses | `hypothesis` | Mitochondrial dysfunction theory |
| Treatment protocols | project-specific | Pacing strategies |
| Research gaps | `open_question` | Mechanism of PEM |
| Study limitations | `warning` | Sample size constraints |
| Clinical observations | `observation` | Symptom patterns |
| Known results | `postdiction` | Reproducing published cytokine data |

**Keep project-specific (NOT in template):** custom symptom severity scales | patient case study formats | diagnostic flowcharts | treatment decision trees | ME/CFS abbreviation lists.

## Template vs Project-Specific

**Add to template (`infolead-latex-templates/theorems.tex`)** when ALL of: reusable across academic docs | general scientific/academic need | benefits multiple people | not domain-specific.

**Process:**
1. Edit `infolead-latex-templates/theorems.tex`
2. Add env in appropriate section
3. If tcolorbox: define colors in `colors.tex`
4. Document in template README
5. Commit to template repo

**Keep project-specific** when ANY: unique to ME/CFS | one-off | references project-specific content | experimental/temporary. Location: project preamble file or inline.

## Color Customization

Defined in `infolead-latex-templates/colors.tex`:

```latex
% Achievement (green theme)
\definecolor{viridis_yellowgreen_frame}{HTML}{2E7D32}
\definecolor{viridis_yellowgreen_bg}{HTML}{F6FFF4}
\colorlet{achievementframe}{viridis_yellowgreen_frame}
\colorlet{achievementbg}{viridis_yellowgreen_bg}
```

Per-document override:
```latex
\input{\preamble/theorems.tex}

% Document-specific override
\colorlet{achievementframe}{red}
\colorlet{achievementbg}{yellow!10}
```

## Common Patterns

**Multiple related claims:**
```latex
\begin{hypothesis}[Energy Depletion]
\label{hyp:energy}
Cellular ATP production is impaired.
\end{hypothesis}

\begin{prediction}[ATP Measurement]
\label{pred:atp}
Patient ATP levels should measure below 4.5 mmol/L.
\end{prediction}

\begin{warning}[Measurement Variability]
ATP assays show high inter-laboratory variability ($\pm$30\%).
\end{warning}
```

**Q&A:**
```latex
\section{Frequently Asked Questions}
\setcounter{qacounter}{0}

\qa{What causes post-exertional malaise?}
The mechanism remains unclear, though several hypotheses...

\qa{How is ME/CFS diagnosed?}
No single test exists. Diagnosis requires...
```

**Chapter roadmap:**
```latex
\chapter{Pathophysiology}

\begin{roadmap}
We examine three major systems:
\begin{enumerate}
  \item Energy metabolism (\S\ref{sec:energy})
  \item Immune dysfunction (\S\ref{sec:immune})
  \item Neurological manifestations (\S\ref{sec:neuro})
\end{enumerate}
\end{roadmap}

\section{Energy Metabolism}
\label{sec:energy}
...
```

## Pedagogical / Instructional Environments

Guide reader; NOT truth-claims about reality (use scientific envs for that).

| Env | Numbering | When to use |
|---|---|---|
| `protocol` | `chapter.X` | Treatment protocols, experimental methods, systematic procedures |
| `clinicalfinding` | `chapter.X` | Patient case observations, diagnostic summaries (NOT literature claims) |
| `keypoint` | unnumbered | Pedagogical emphasis, key distinctions, takeaways |
| `practicalwarning` | unnumbered | Safety warnings, practical constraints, clinical warnings |
| `continuation` | unnumbered | Pointers to appendices, continued topics |

```latex
\begin{protocol}[Iron Supplementation]
\label{prot:iron}
\textbf{Target}: Ferritin $>$100~$\mu$g/L

\textbf{Dosing}:
\begin{enumerate}
  \item Ferrous bisglycinate 25mg elemental iron
  \item Take with vitamin C (100mg) on empty stomach
  \item Monitor ferritin every 3 months
\end{enumerate}
\end{protocol}

\begin{keypoint}[Unwilling vs Unable]
ME/CFS patients choose low-effort tasks not due to lack of motivation, but because their body cannot physically complete high-effort tasks without triggering PEM.
\end{keypoint}

\begin{practicalwarning}[Stimulant Medications]
When taking methylphenidate or modafinil, subjective energy perception is unreliable. Trust objective measurements over how you feel.
\end{practicalwarning}
```

**Unnumbered variants** (append `*`): available for `protocol`, `clinicalfinding`.
```latex
\begin{protocol*}[Quick Protocol]
Content for unnumbered protocol (useful in appendices).
\end{protocol*}
```

`keypoint`, `practicalwarning`, `continuation` → always unnumbered by design.

## Formalization Environments (Proposed for Template)

Formal modeling w/ explicit uncertainty quantification. Currently project-specific.

| Env | Numbering | When to use |
|---|---|---|
| `model` | `chapter.X` | Quantitative models w/ fitted parameters, validation, predictions (ODEs, equations) |
| `epcprocess` | `chapter.X` | Biological processes w/ temporal dynamics, event triggers, probabilities |
| `causalclaim` | unnumbered | Cause-effect claims w/ evidence quality (high/medium/low) |
| `dag` | standard figure | Directed acyclic graphs of causal structure w/ certainty weights |

### Why EPC over pure BPMN (biological processes)

- Events first-class (not just sequence markers)
- Observable detection criteria for validation (e.g., "IL-6 > 2.0 pg/mL")
- Temporal precision (latency, duration, probabilities from cohort data)
- Natural feedback loops (common in pathophysiology)

**Structure:** Event → Activity → Event
- **Events:** observable state changes w/ detection criteria
- **Activities:** biological responses w/ durations and mechanisms
- **Connectors:** branching probabilities (e.g., Recovery 40% | Chronic 60%)

### Examples

**EPC Process:**
```latex
\begin{epcprocess}[Post-Exertional Malaise Cascade]
\label{epc:pem}

% TikZ diagram with event-activity-event chains

\textbf{Events:}
\begin{itemize}
  \item[E1] Activity Exceeds Threshold (trigger)
  \item[E2] Metabolic Shift to Anaerobic (30min-4h latency, 95\% probability)
  \item[E3] Immune Activation (4-24h latency, 87\% probability)
  \item[E4] Symptom Peak (24-72h latency, 100\% probability)
\end{itemize}

\textbf{Activities:}
\begin{itemize}
  \item[A1] Metabolic Compensation (E1 → E2, 2h median duration)
  \item[A2] Immune Detection (E2 → E3, 12h median duration)
  \item[A3] Symptom Manifestation (E3 → E4, 48h median duration)
\end{itemize}

\textbf{Branching:} After E4: Recovery (40\%, IF ≥7d rest) vs Chronic (60\%, IF <7d rest)

\textbf{Feedback:} Chronic activation loop re-triggers E2 (certainty 0.6)

\textbf{Data sources:} Light et al.~\cite{Light2012}, Keller et al.~\cite{Keller2014}
\end{epcprocess}
```

**Mathematical Model (ODE):**
```latex
\begin{model}[ATP Production Dynamics]
\label{model:atp}

\textbf{Variables:}
\begin{itemize}
  \item $A(t)$: ATP concentration at time $t$ (mmol/L)
  \item $E(t)$: Exertion level (dimensionless, 0-10)
\end{itemize}

\textbf{Equations:}
\begin{equation}
\frac{dA}{dt} = k_{\text{syn}} - k_{\text{cons}} \cdot E(t)
\end{equation}

\textbf{Parameters:}
\begin{itemize}
  \item $k_{\text{syn}} = 0.45 \pm 0.12$ mmol/L/s (synthesis rate, \cite{Tomas2017})
  \item $k_{\text{cons}} = 0.35 \pm 0.08$ mmol/L/s per unit exertion
\end{itemize}

\textbf{Predictions:}
Critical exertion threshold: $E_{\text{crit}} = k_{\text{syn}}/k_{\text{cons}} = 1.29$ (0-10 scale)

\textbf{Validation:}
Model fit: $R^2 = 0.73$, RMSE = 0.21 mmol/L (\cite{VanNess2010})

\textbf{Limitations:}
Does not account for multi-day recovery effects
\end{model}
```

**Causal Claim with Certainty:**
```latex
\begin{causalclaim}[certainty=high]
Persistent immune activation following viral infection triggers ME/CFS onset in susceptible individuals.

\textbf{Evidence:}
\begin{itemize}
  \item Nunes et al.~\cite{Nunes2024}: n=156, $p<0.001$, longitudinal design
  \item Replicated in \cite{RuizPablos2021}: n=89, mechanistic validation
\end{itemize}

\textbf{Mechanism:} Incomplete viral clearance → chronic TLR signaling → cytokine production
\end{causalclaim}

\begin{causalclaim}[certainty=medium]
Immune activation impairs mitochondrial function through cytokine-mediated pathways.

\textbf{Evidence:} Mechanism demonstrated in cell culture \cite{Syed2025}, but limited in vivo ME/CFS data.

\textbf{Gap:} Need longitudinal studies measuring both immune markers and mitochondrial function.
\end{causalclaim}

\begin{causalclaim}[certainty=low]
Mitochondrial dysfunction may trigger further immune dysregulation (feedback loop).

\textbf{Status:} Speculative—theoretical plausibility but no direct empirical evidence in ME/CFS patients.
\end{causalclaim}
```

**Causal DAG Figure:**
```latex
\begin{dag}[ME/CFS Immune Dysfunction Causal Structure]
\label{dag:immune}

\centering
\input{figures/immune-dag.tikz}

\textbf{Legend:}
\begin{itemize}
  \item \textcolor{green!70!black}{\textbf{Solid thick}}: High certainty ($\geq 0.7$)
  \item \textcolor{orange}{\textbf{Solid medium}}: Medium certainty (0.5--0.7)
  \item \textcolor{red}{\textbf{Dashed thin}}: Low certainty ($< 0.5$)
\end{itemize}

\textbf{Feedback loops:} Cytokines ↔ Mitochondrial dysfunction (certainty 0.6)
\end{dag}
```

### Selection per Use Case

| Use case | → Env | Notes / examples |
|---|---|---|
| Biological process w/ temporal dynamics | `epcprocess` | events + activities + branching probabilities; PEM cascade, viral reactivation timeline, 2-day CPET response |
| Quantitative mechanistic model | `model` | ODEs + fitted params; require data ≥2 studies, n≥20, temporal data; ATP dynamics, cytokine kinetics, autonomic response |
| Causal claim w/ uncertainty | `causalclaim` | certainty=high\|medium\|low; visual distinction by frame thickness/color intensity; annotating pathophysiology chapters |
| Overall causal structure | `dag` | DAG + legend; chapter/section overviews; Ch. 13 (Integrative Models), per-system summaries |

### Relation to Existing Environments

| Existing | Formalization | Distinction |
|---|---|---|
| `hypothesis` | `model` | Hypothesis = qualitative; Model = quantitative w/ equations |
| `prediction` | `model` | Prediction = single testable claim; Model = complete system, multiple predictions |
| `derivation` | `model` | Derivation = mathematical proof; Model = empirical w/ fitted params |
| `construction` | `epcprocess` | Construction = algorithmic; EPC = empirical workflow w/ timing data |
| `observation` | `causalclaim` | Observation = empirical data; Causal claim = inferred causation w/ certainty |

### Full Spec + Methodology

- `.claude/template-proposal-formalization-environments.md` → complete LaTeX code (colors, tcolorbox defs); template-vs-project criteria; implementation notes (icons, param syntax)
- `.claude/FORMALIZATION_METHODOLOGY.md` → decision matrix (Data × Impact × Maturity → Level/Model type); evidence quality tiers (High/Med/Low certainty 0–1); EPC vs BPMN rationale; per-process ME/CFS analysis

## See Also

- [infolead-latex-templates/README.md](../infolead-latex-templates/README.md) — template docs
- [infolead-latex-templates/theorems.tex](../infolead-latex-templates/theorems.tex) — env definitions
- [infolead-latex-templates/THEOREMS-MIGRATION.md](../infolead-latex-templates/THEOREMS-MIGRATION.md) — migration guide
- [.claude/latex-conventions.md](latex-conventions.md) — LaTeX formatting
- [.claude/preamble-setup.md](preamble-setup.md) — preamble loading order
