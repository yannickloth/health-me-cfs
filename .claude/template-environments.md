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

## See Also

- [infolead-latex-templates/README.md](../infolead-latex-templates/README.md) - Comprehensive template documentation
- [infolead-latex-templates/theorems.tex](../infolead-latex-templates/theorems.tex) - Full environment definitions
- [infolead-latex-templates/THEOREMS-MIGRATION.md](../infolead-latex-templates/THEOREMS-MIGRATION.md) - Migration guide
- [.claude/latex-conventions.md](latex-conventions.md) - LaTeX formatting standards
- [.claude/preamble-setup.md](preamble-setup.md) - Preamble loading order
