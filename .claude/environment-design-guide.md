# Environment Design Guide: Colors and Visual Patterns

Color/visual design system for LaTeX theorem-like environments in `infolead-latex-templates`.

## Design Philosophy

Two independent visual dimensions:

| Dimension | Purpose | Print-safe? |
|-----------|---------|-------------|
| **Color scheme** | Epistemic status / purpose category | ✓ (with B&W fallback) |
| **Border pattern** | Semantic role independent of color | ✓ (always) |

## Color Palette System

### Scientific Claim Environments (Part 3 of theorems.tex)

Truth-claims about reality → muted, subtle palette. Saturation ∝ certainty.

| Epistemic Status | Color | Frame | Background | Environments |
|-----------------|-------|-------|------------|--------------|
| Validated/Verified | Green | `#2E7D32` | `#F6FFF4` | `achievement` |
| Predictive | Blue | `#2D708E` | `#F4F8FA` | `prediction` |
| Verified (past) | Muted slate | `#48616D` | `#F6F7F8` | `postdiction`, `consistency_check` (teal) |
| Tentative/Uncertain | Gold | `#A58200` | `#FFFDF2` | `hypothesis` |
| Foundational | Deep purple | `#440154` | `#FAF6FF` | `axiom` |
| Conditional | Cool gray | `#5D6D7E` | `#F8F9FA` | `assumption` |
| Warning/Caution | Orange | `#D45B12` | `#FFF8F4` | `warning` (scientific limitations) |
| Requirement | Dark red | `#900C3F` | `#F9F2F5` | `requirement` |
| Open Problem | Purple | `#7A1F7A` | `#FAF4FA` | `open_question` |

Certainty gradient: high (green, bright/saturated) → medium (blue, gold) → low (purple, desaturated)

### Pedagogical Environments (Part 6 of theorems.tex)

Reader guidance, not truth-claims → brighter, more saturated than scientific palette.

| Purpose | Color | Frame | Background | Environments |
|---------|-------|-------|------------|--------------|
| Instructional | Blue | `#1976D2` | `#E3F2FD` | `protocol` |
| Factual (case-specific) | Gray | `#616161` | `#F5F5F5` | `clinicalfinding` |
| Emphasis | Gold | `#F57F17` | `#FFFDE7` | `keypoint` |
| Practical Warning | Orange | `#E65100` | `#FFF3E0` | `practicalwarning` |
| Navigation | Light blue | `#0288D1` | `#E1F5FE` | `continuation` |

## Border Pattern System

### Scientific Environments

| Pattern | Meaning | Environments | LaTeX |
|---------|---------|--------------|-------|
| Double border | Novel/foundational | `achievement`, `axiom` | `borderline={2pt}{-4pt}` |
| Dashed | Future/predictive | `prediction` | `dash` |
| Dash-dot | Tentative | `hypothesis` | `dash dot` |
| Solid | Verified/known | `postdiction`, `consistency_check`, `requirement` | `boxrule=1pt` |
| Dotted | Incomplete/open | `open_question` | `dotted` |
| Left bar only | Warning/caveat | `warning` | `borderline west={3pt}` |
| Left + right bars | Bracketed/conditional | `assumption` | `borderline west` + `borderline east` |
| Corner brackets | Mandatory | `requirement` | Custom TikZ overlay |

### Pedagogical Environments

| Pattern | Meaning | Environments | LaTeX |
|---------|---------|--------------|-------|
| Solid | Standard content | `protocol`, `clinicalfinding` | `boxrule=1pt` |
| Left bar | Emphasis | `keypoint`, `practicalwarning` | `borderline west={3pt}` |
| Simple | Lightweight | `continuation` | `boxrule=0.5pt` |

## Icons

### Scientific Icons

| Icon | LaTeX | Meaning | Environments |
|------|-------|---------|--------------|
| ★ | `\bigstar` | Achievement | `achievement` |
| → | `\rightarrow` | Future direction | `prediction` |
| ✓ | `\checkmark` | Verified | `postdiction` |
| △ | `\triangle` | Caution | `warning` |
| ? | `\textbf{?}` | Unknown | `open_question` |
| • | `\bullet` | Requirement | `requirement` |
| ~ | `\sim` | Approximate/tentative | `hypothesis` |
| ■ | `\blacksquare` | Foundation | `axiom` |
| [ ] | `[\,]` | Bracketed | `assumption` |
| ≡ | `\equiv` | Equivalence | `consistency_check` |

### Pedagogical Icons

| Icon | LaTeX | Meaning | Environments |
|------|-------|---------|--------------|
| ▶ | `\triangleright` | Process/procedure | `protocol` |
| ♦ | `\diamondsuit` | Observation | `clinicalfinding` |
| ★ | `\star` | Emphasis | `keypoint` |
| △ | `\triangle` | Warning | `practicalwarning` |
| → | `\rightarrow` | Continue/navigate | `continuation` |

## Design Decision Tree

### Choosing Colors

- Truth-claim about reality? → scientific palette (muted, subtle)
- Reader guidance? → pedagogical palette (brighter, more saturated)

Epistemic status → color:

| Status | Color |
|--------|-------|
| Verified/validated | Green |
| Future prediction | Blue |
| Past verification | Slate/teal |
| Tentative | Gold |
| Foundational | Deep purple |
| Conditional | Gray |
| Warning | Orange |
| Requirement | Dark red |
| Unknown | Purple |

### Choosing Border Patterns

Certainty level → border:

- Novel/foundational → double border
- Future → dashed
- Tentative → dash-dot
- Verified → solid
- Incomplete → dotted

Semantic role → border:

- Warning → left bar
- Conditional → left + right bars
- Mandatory → corner brackets
- Standard → solid

## Color Accessibility

| Principle | Detail |
|-----------|--------|
| Perceptually uniform | Based on Viridis/Inferno palettes |
| Print-safe | Works in color and B&W |
| High contrast | Frame/background ratio > 4.5:1 |
| Distinct patterns | Border patterns distinguishable without color |
| Semantic consistency | Same meaning = same color family across documents |

## Customization

```latex
\input{\preamble/theorems.tex}

% Document-specific override
\colorlet{achievementframe}{red}
\colorlet{achievementbg}{yellow!10}
```

Override only if absolutely necessary for branding. Default palette optimized for readability and semantic clarity.

## Comparison Chart

### Certainty Gradient (Scientific)

High → medium → low certainty:

- Green (`achievement`) → Blue (`prediction`) → Purple (`open_question`)
- Green (`achievement`) → Gold (`hypothesis`) → Purple (`axiom`)
- Teal (`consistency`) → Slate (`postdiction`) → Gray (`assumption`)

### Attention Gradient (Pedagogical)

High → medium → low attention:

- Orange (`warning`) → Gold (`keypoint`) → Light blue (`continuation`)
- Orange (`warning`) → Blue (`protocol`) → Gray (`finding`)

## Examples in Use

### Scientific Claim Progression

```latex
% Unknown → Hypothesis → Prediction → Postdiction → Achievement
\begin{open_question}[PEM Mechanism]
What causes the delayed symptom worsening after exertion?
\end{open_question}

\begin{hypothesis}[ATP Depletion]
Mitochondrial ATP depletion may trigger PEM.
\end{hypothesis}

\begin{prediction}[ATP Measurement]
If true, ATP levels should drop 24h post-exertion.
\end{prediction}

\begin{postdiction}[ATP Data Match]
This prediction matches existing CPET data~\cite{Keller2024}.
\end{postdiction}

\begin{achievement}[Novel Biomarker]
We discovered ATP-to-ADP ratio predicts PEM severity.
\end{achievement}
```

### Pedagogical Content Flow

```latex
% Protocol → Finding → Key Point → Warning
\begin{protocol}[Two-Day CPET]
Day 1: Baseline maximal exercise test
Day 2: Repeat test (exact same protocol)
\end{protocol}

\begin{clinicalfinding}[Day 2 Decline]
VO2max declined 20\% on Day 2 (patient-specific finding).
\end{clinicalfinding}

\begin{keypoint}[PEM Proof]
The Day 2 decline is objective proof of post-exertional malaise.
\end{keypoint}

\begin{practicalwarning}[Crash Risk]
Performing this test may trigger severe PEM lasting weeks.
\end{practicalwarning}
```

## See Also

- [colors.tex](../infolead-latex-templates/colors.tex) - Full color definitions
- [theorems.tex](../infolead-latex-templates/theorems.tex) - Environment implementations
- [template-environments.md](template-environments.md) - Environment reference guide