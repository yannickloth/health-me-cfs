# Template Environments Quick Reference

Quick guide to theorem-like environments available in [infolead-latex-templates](../infolead-latex-templates/).

## When to Use This Guide

- Before creating a new custom environment
- When choosing between similar environments
- To understand available visual styles
- To maintain consistency with template conventions

## Environment Categories

### 1. Standard Mathematical Environments

Defined with `\newtheorem`, simple styling, chapter-numbered.

| Environment | Purpose | Style | Counter |
|-------------|---------|-------|---------|
| `theorem` | Mathematical theorems | Plain (italic) | `chapter.X` |
| `lemma` | Supporting results | Plain (italic) | Shares with theorem |
| `corollary` | Direct consequences | Plain (italic) | Shares with theorem |
| `proposition` | Propositions | Plain (italic) | Shares with theorem |
| `definition` | Formal definitions | Definition (upright) | `chapter.X` |
| `example` | Examples | Definition (upright) | `chapter.X` |
| `remark` | Remarks and notes | Remark | Unnumbered |

**Usage:**
```latex
\begin{theorem}[Optional Name]
\label{thm:mytheorem}
Statement of the theorem.
\end{theorem}

\begin{proof}
Proof content.
\end{proof}
```

### 2. Design and Methodological Environments

For theoretical frameworks, architectural decisions, and methodological structures.

| Environment | Purpose | Global Numbering |
|-------------|---------|------------------|
| `principle` | Fundamental principles or axioms | Yes |
| `directive` | Guidelines or directives | Yes |
| `problem` | Problem statements | Yes |
| `pattern` | Patterns or recurring structures | Yes |
| `design-decision` | Explicit design decisions | Yes |
| `fallacy` | Common misconceptions | Yes |
| `observation` | Empirical observations | Yes |
| `instantiation` | Concrete examples of abstract concepts | Yes |
| `construction` | Algorithms, processes, systematic methods | Yes |
| `speculation` | Speculative hypotheses | Yes |

**Usage:**
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

### 3. Scientific Claim Environments (Enhanced tcolorbox)

Visually distinctive boxes for different epistemic statuses. All have chapter-based numbering.

#### Research Results

| Environment | Visual Style | Purpose | When to Use |
|-------------|-------------|---------|-------------|
| `achievement` | Double border, star icon | Novel breakthroughs | Original findings unique to your work |
| `prediction` | Dashed border, arrow | Testable predictions | Future-oriented, falsifiable claims |
| `postdiction` | Solid border, checkmark | Matches known data | Results that fit existing experimental data |

#### Foundational Claims

| Environment | Visual Style | Purpose | When to Use |
|-------------|-------------|---------|-------------|
| `axiom` | Thick double border | Foundational statements | Basic assumptions taken as given |
| `hypothesis` | Dash-dot border | Unproven assumptions | Working hypotheses requiring validation |
| `assumption` | Left+right bars | Working assumptions | Conditional premises |

#### Verification and Requirements

| Environment | Visual Style | Purpose | When to Use |
|-------------|-------------|---------|-------------|
| `requirement` | Corner brackets | Necessary conditions | Mandatory criteria or constraints |
| `consistency_check` | Simple box | Verification | Confirms theory reproduces known physics |

#### Questions and Caveats

| Environment | Visual Style | Purpose | When to Use |
|-------------|-------------|---------|-------------|
| `open_question` | Dotted border | Unresolved problems | Future research directions |
| `warning` | Left bar, triangle | Limitations | Caveats, scope boundaries, known issues |

**Usage with optional title:**
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

**Unnumbered variants:** Add `*` after environment name:
```latex
\begin{achievement*}[Optional Title]
Content for unnumbered box (useful in appendices).
\end{achievement*}
```

### 4. Derivation and Calculation Environments

| Environment | Purpose | Numbering |
|-------------|---------|-----------|
| `derivation` | Mathematical derivations | `chapter.X` |
| `calculation` | Numerical calculations | `chapter.X` |
| `step` | Individual proof/derivation steps | Sequential |

**Usage:**
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

### 5. Document Structure Environments

| Environment | Purpose |
|-------------|---------|
| `chapterabstract` | Chapter-level summaries (not document abstract) |
| `roadmap` | Chapter structure outline (tcolorbox) |
| `conclusion` | Chapter/section conclusions |
| `\qa{question}` | Q&A sections (use `\setcounter{qacounter}{0}` per chapter) |

**Usage:**
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

## Visual Styling Guide

All scientific claim environments use:
- **Subtle semantic colors** (defined in `colors.tex`)
- **Distinct border patterns** (visible in B&W printing)
- **Icons** for quick visual identification
- **Breakable boxes** (can span pages if needed)
- **Boxed titles** (attached to top-left)

Color schemes are defined in `infolead-latex-templates/colors.tex`:
- Viridis-inspired palette (perceptually uniform)
- Inferno/magma colors for warnings/requirements
- All have light backgrounds with darker frames
- Designed for both screen and print

## Decision Tree

```
Do you need a boxed environment?
├─ NO → Use standard environments (theorem, definition, remark)
│
└─ YES → Is it a scientific claim with epistemic status?
    ├─ NO → Is it methodological/theoretical?
    │   ├─ YES → Use design environments (principle, pattern, construction, etc.)
    │   └─ NO → Create project-specific or use roadmap/chapterabstract
    │
    └─ YES → Choose by epistemic status:
        ├─ Novel result? → achievement
        ├─ Future test? → prediction
        ├─ Fits existing data? → postdiction
        ├─ Unproven claim? → hypothesis
        ├─ Foundational? → axiom
        ├─ Working assumption? → assumption
        ├─ Necessary condition? → requirement
        ├─ Verification? → consistency_check
        ├─ Unsolved problem? → open_question
        └─ Caveat/limitation? → warning
```

## Medical Writing Recommendations

### For ME/CFS Documentation

| Content Type | Recommended Environment | Example |
|--------------|------------------------|---------|
| Diagnostic criteria | `definition` or `requirement` | ICC-2011 criteria |
| Biomarker findings | `achievement` or `observation` | Novel metabolite discoveries |
| Pathophysiology hypotheses | `hypothesis` | Mitochondrial dysfunction theory |
| Treatment protocols | Project-specific | Pacing strategies |
| Research gaps | `open_question` | Mechanism of PEM |
| Study limitations | `warning` | Sample size constraints |
| Clinical observations | `observation` | Symptom patterns |
| Known results | `postdiction` | Reproducing published cytokine data |

### Project-Specific Environments

These ME/CFS-specific structures should remain in project files, NOT in template:
- Custom symptom severity scales
- Patient case study formats
- Diagnostic flowcharts
- Treatment decision trees
- ME/CFS-specific abbreviation lists

## Template Modification Guidelines

### When to Add to Template

Add to `infolead-latex-templates/theorems.tex` when:
- Environment is reusable across multiple academic documents
- It represents a general scientific/academic need
- Multiple people would benefit from it
- It's not domain-specific

**Process:**
1. Edit `infolead-latex-templates/theorems.tex`
2. Add environment in appropriate section
3. If tcolorbox: define colors in `colors.tex`
4. Document in template README
5. Commit to template repository

### When to Keep Project-Specific

Keep in project files when:
- Unique to ME/CFS documentation
- One-off custom structure
- References project-specific content
- Experimental or temporary

**Location:** Create in project-specific preamble file or inline in document.

## Color Customization

All environment colors are defined in `infolead-latex-templates/colors.tex`:

```latex
% Achievement (green theme)
\definecolor{viridis_yellowgreen_frame}{HTML}{2E7D32}
\definecolor{viridis_yellowgreen_bg}{HTML}{F6FFF4}
\colorlet{achievementframe}{viridis_yellowgreen_frame}
\colorlet{achievementbg}{viridis_yellowgreen_bg}
```

To override colors for a specific document:
```latex
\input{\preamble/theorems.tex}

% Document-specific override
\colorlet{achievementframe}{red}
\colorlet{achievementbg}{yellow!10}
```

## Common Patterns

### Multiple Related Claims
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

### Q&A Sections
```latex
\section{Frequently Asked Questions}
\setcounter{qacounter}{0}

\qa{What causes post-exertional malaise?}
The mechanism remains unclear, though several hypotheses...

\qa{How is ME/CFS diagnosed?}
No single test exists. Diagnosis requires...
```

### Chapter Roadmaps
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

## Pedagogical and Instructional Environments

### Purpose
These environments guide the reader and provide instructional content. They do NOT make truth-claims about reality (use scientific environments for that).

| Environment | Numbering | Purpose | When to Use |
|-------------|-----------|---------|-------------|
| `protocol` | `chapter.X` | Step-by-step procedures | Treatment protocols, experimental methods, systematic procedures |
| `clinicalfinding` | `chapter.X` | Case-specific observations | Patient case observations, diagnostic summaries (NOT literature claims) |
| `keypoint` | Unnumbered | Critical insights | Pedagogical emphasis, key distinctions, takeaways |
| `practicalwarning` | Unnumbered | Real-world caveats | Safety warnings, practical constraints, clinical warnings |
| `continuation` | Unnumbered | Cross-references | Pointing to appendices, continued topics |

**Usage:**
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

**Unnumbered variants:** Add `*` after environment name for `protocol` and `clinicalfinding`:
```latex
\begin{protocol*}[Quick Protocol]
Content for unnumbered protocol (useful in appendices).
\end{protocol*}
```

**Note:** `keypoint`, `practicalwarning`, and `continuation` are always unnumbered by design.

## Formalization Environments (Proposed for Template)

These environments support formal modeling of scientific processes with explicit uncertainty quantification. Currently project-specific pending template inclusion decision.

| Environment | Numbering | Purpose | When to Use |
|-------------|-----------|---------|-------------|
| `model` | `chapter.X` | Mathematical models (ODEs, equations) | Quantitative models with fitted parameters, validation, predictions |
| `epcprocess` | `chapter.X` | Event-Driven Process Chains | Biological processes with temporal dynamics, event triggers, probabilities |
| `causalclaim` | Unnumbered | Causal relationships with certainty | Explicit cause-effect claims with evidence quality (high/medium/low) |
| `dag` | Standard figure | Causal DAG figures | Directed acyclic graphs showing causal structure with certainty weights |

### Why Event-Driven Process Chains (EPC)?

For biological/medical processes, EPC is superior to pure BPMN because:
- **Events are first-class entities** (not just sequence markers)
- **Observable detection criteria** for validation (e.g., "IL-6 > 2.0 pg/mL")
- **Temporal precision** (latency, duration, probabilities from cohort data)
- **Natural feedback loops** (common in pathophysiology)

**Structure:** Event → Activity → Event
- **Events:** Observable state changes with detection criteria
- **Activities:** Biological responses with durations and mechanisms
- **Connectors:** Branching probabilities (Recovery 40% vs. Chronic 60%)

### Usage Examples

**EPC Process (Event-Driven Temporal Model):**
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

### When to Use Each Environment

**For biological processes with temporal dynamics:**
- Use `epcprocess` (events, activities, branching probabilities)
- Example: PEM cascade, viral reactivation timeline, 2-day CPET response

**For quantitative mechanistic models:**
- Use `model` (differential equations, fitted parameters)
- Only when data is sufficient (≥2 studies, n≥20, temporal data)
- Example: ATP dynamics, cytokine kinetics, autonomic response

**For causal claims requiring uncertainty qualification:**
- Use `causalclaim` with certainty level (high/medium/low)
- Visual distinction by certainty (frame thickness, color intensity)
- Example: Annotating pathophysiology chapters with evidence quality

**For showing overall causal structure:**
- Use `dag` (directed acyclic graph with legend)
- Chapter-level or section-level causal overviews
- Example: Chapter 13 (Integrative Models), per-system summaries

### Relationship to Existing Environments

| Existing | Formalization | Distinction |
|----------|---------------|-------------|
| `hypothesis` | `model` | Hypothesis = qualitative claim; Model = quantitative with equations |
| `prediction` | `model` | Prediction = single testable claim; Model = complete system with multiple predictions |
| `derivation` | `model` | Derivation = mathematical proof; Model = empirical model with fitted parameters |
| `construction` | `epcprocess` | Construction = algorithmic; EPC = empirical workflow with timing data |
| `observation` | `causalclaim` | Observation = empirical data; Causal claim = inferred causation with certainty |

### Full Specification

See `.claude/template-proposal-formalization-environments.md` for:
- Complete LaTeX code (colors, tcolorbox definitions)
- Decision criteria (when to propose to template vs. keep project-specific)
- Implementation notes (icon choices, parameter syntax)

### Methodology

See `.claude/FORMALIZATION_METHODOLOGY.md` for:
- Decision matrix (Data × Impact × Maturity → Level/Model type)
- Evidence quality tiers (High/Medium/Low certainty 0-1 scale)
- EPC vs. BPMN rationale for biological systems
- Process-by-process analysis of ME/CFS pathophysiology

## See Also

- [infolead-latex-templates/README.md](../infolead-latex-templates/README.md) - Comprehensive template documentation
- [infolead-latex-templates/theorems.tex](../infolead-latex-templates/theorems.tex) - Full environment definitions
- [infolead-latex-templates/THEOREMS-MIGRATION.md](../infolead-latex-templates/THEOREMS-MIGRATION.md) - Migration guide
- [.claude/latex-conventions.md](latex-conventions.md) - LaTeX formatting standards
- [.claude/preamble-setup.md](preamble-setup.md) - Preamble loading order
