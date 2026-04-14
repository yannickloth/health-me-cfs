# Proposal: Pedagogical and Instructional Environments for LaTeX Template

**Target**: `infolead-latex-templates/theorems.tex`

## Motivation

Template has scientific-claim environments (hypothesis, observation, etc.) but no pedagogical/instructional ones → ad-hoc `tcolorbox` usage → inconsistent styling, code duplication, no semantic markup, maintenance burden.

## Proposed Environments

### Category 1: Instructional Content

| Environment | Purpose | Use cases | Visual style |
|---|---|---|---|
| `protocol` | Step-by-step procedures, systematic methods, experimental protocols | Medical protocols, experimental procedures, config steps, algorithms | Blue, solid border, numbered |
| `clinicalfinding` | Documented clinical/experimental findings (not literature claims) | Patient observations, experimental results, diagnostic summaries, lab findings | Gray, simple border, professional |

**`protocol` example:**
```latex
\begin{protocol}[Iron Supplementation for RLS]
\label{prot:iron-rls}
\textbf{Target}: Ferritin $>$100~$\mu$g/L

\textbf{Dosing}:
\begin{enumerate}
  \item Ferrous bisglycinate 25mg elemental iron
  \item Take with vitamin C (100mg) on empty stomach
  \item Monitor ferritin every 3 months
\end{enumerate}
\end{protocol}
```

**`clinicalfinding` example:**
```latex
\begin{clinicalfinding}[Polysomnography Results]
\label{cf:sleep-study}
\textbf{Dyssomnia} characterized by:
\begin{itemize}
  \item Sleep efficiency: 72\% (abnormal)
  \item REM latency: 145 minutes (prolonged)
  \item Frequent arousals: 28 per hour
\end{itemize}
\end{clinicalfinding}
```

### Category 2: Pedagogical Emphasis

| Environment | Purpose | Use cases | Visual style |
|---|---|---|---|
| `keypoint` | Critical insights, key takeaways, essential concepts | Crucial distinctions, important principles, counter-intuitive findings, "aha moments" | Yellow/gold, left bar |
| `practicalwarning` | Real-world caveats, practical limitations, clinical warnings | Theory-practice gap, common pitfalls, practical constraints, clinical safety | Orange/red, triangle icon, left bar |

**`keypoint` example:**
```latex
\begin{keypoint}[Unwilling vs. Unable]
\label{kp:unwilling-unable}
ME/CFS patients choose low-effort tasks not due to lack of motivation, but because their body \emph{cannot physically complete} high-effort tasks without triggering post-exertional malaise. Pacing is a \textbf{biological requirement}, not a preference.
\end{keypoint}
```

**`practicalwarning` example:**
```latex
\begin{practicalwarning}[Stimulant Medication Caution]
\label{pw:stimulant}
When taking methylphenidate or modafinil, subjective energy perception is unreliable. These medications mask the body's warning signals. \textbf{Heart rate monitoring is essential}---trust objective measurements over how you feel.
\end{practicalwarning}
```

### Category 3: Document Navigation

| Environment | Purpose | Use cases | Visual style |
|---|---|---|---|
| `continuation` | Cross-references to related content in other sections | Pointing to appendices, supplementary material, multi-part content | Light blue, simple box, small font |

**`continuation` example:**
```latex
\begin{continuation}
For detailed information on:
\begin{itemize}
  \item Treatment protocols, see Appendix~\ref{app:treatment}
  \item Diagnostic criteria, see Appendix~\ref{app:diagnosis}
  \item Case studies, see Appendix~\ref{app:cases}
\end{itemize}
\end{continuation}
```

## Implementation Sketch

```latex
% ============================================================================
% PART 5: PEDAGOGICAL AND INSTRUCTIONAL ENVIRONMENTS
% ============================================================================
% Environments for instructional content, pedagogical emphasis, and reader
% navigation in academic and technical documents.

% ----------------------------------------------------------------------------
% COLOR DEFINITIONS (pedagogical palette)
% ----------------------------------------------------------------------------
\definecolor{protocol_blue_frame}{HTML}{1976D2}
\definecolor{protocol_blue_bg}{HTML}{E3F2FD}

\definecolor{clinicalfinding_gray_frame}{HTML}{616161}
\definecolor{clinicalfinding_gray_bg}{HTML}{F5F5F5}

\definecolor{keypoint_gold_frame}{HTML}{F57F17}
\definecolor{keypoint_gold_bg}{HTML}{FFFDE7}

\definecolor{practicalwarning_orange_frame}{HTML}{E65100}
\definecolor{practicalwarning_orange_bg}{HTML}{FFF3E0}

\definecolor{continuation_blue_frame}{HTML}{0288D1}
\definecolor{continuation_blue_bg}{HTML}{E1F5FE}

% ----------------------------------------------------------------------------
% COUNTER SETUP
% ----------------------------------------------------------------------------
\newcounter{protocolcounter}[chapter]
\renewcommand{\theprotocolcounter}{\thechapter.\arabic{protocolcounter}}

\newcounter{clinicalfindingcounter}[chapter]
\renewcommand{\theclinicalfindingcounter}{\thechapter.\arabic{clinicalfindingcounter}}

% keypoint and practicalwarning could be unnumbered or numbered based on preference

% ----------------------------------------------------------------------------
% PROTOCOL ENVIRONMENT
% ----------------------------------------------------------------------------
\newtcolorbox[use counter=protocolcounter]{protocol}[1][]{%
  enhanced,
  breakable,
  break at=-\baselineskip,
  colback=protocol_blue_bg,
  colframe=protocol_blue_frame,
  boxrule=1pt,
  arc=2pt,
  left=8pt,
  right=8pt,
  top=6pt,
  bottom=6pt,
  fonttitle=\bfseries\sffamily,
  title={\ensuremath{\triangleright}~Protocol~\theprotocolcounter\ifstrempty{#1}{}{: #1}},
  before upper={\parindent=1.5em},
  coltitle=black,
  attach boxed title to top left={yshift=-2mm, xshift=4mm},
  boxed title style={
    colback=protocol_blue_bg,
    colframe=protocol_blue_frame,
    boxrule=0.5pt,
    arc=1pt
  }
}

% Starred (unnumbered) variant
\newtcolorbox{protocol*}[1][]{%
  enhanced,
  breakable,
  break at=-\baselineskip,
  colback=protocol_blue_bg,
  colframe=protocol_blue_frame,
  boxrule=1pt,
  arc=2pt,
  left=8pt,
  right=8pt,
  top=6pt,
  bottom=6pt,
  fonttitle=\bfseries\sffamily,
  title={\ensuremath{\triangleright}~Protocol\ifstrempty{#1}{}{: #1}},
  before upper={\parindent=1.5em},
  coltitle=black,
  attach boxed title to top left={yshift=-2mm, xshift=4mm},
  boxed title style={
    colback=protocol_blue_bg,
    colframe=protocol_blue_frame,
    boxrule=0.5pt,
    arc=1pt
  }
}

% Similar definitions for clinicalfinding, keypoint, practicalwarning, continuation...
```

## Benefits

| Benefit | Detail |
|---|---|
| Semantic clarity | `\begin{protocol}` > `\begin{tcolorbox}[colback=blue!5!white,...]` |
| Consistency | All template documents → same styling |
| Maintainability | Colors/styling changed in one place |
| Numbering | Automatic chapter-based numbering for `protocol`, `clinicalfinding` |
| Accessibility | Distinct visual styles aid comprehension |
| Reusability | Applicable across medical, technical, educational documents |

## Compatibility

- ✓ No interference with existing scientific claim environments
- ✓ Same tcolorbox infrastructure
- ✓ Same naming/styling conventions
- ✓ Starred (unnumbered) variants supported
- ✓ Compatible with existing color system

## Distinction from Scientific Environments

| Type | Purpose | Examples | Epistemic status |
|---|---|---|---|
| **Scientific** | Claims about reality | hypothesis, observation, prediction | Has epistemic status (true/false/uncertain) |
| **Pedagogical** | Instructional content | protocol, keypoint, practicalwarning | No epistemic status — instructional, not truth-claims |

Scientific environments → claims about the world; pedagogical environments → guide the reader.

## Migration Path

For this ME/CFS document:

| Old box | → | New environment | Type |
|---|---|---|---|
| "Novel Therapeutic Proposal" | → | `speculation` | scientific claim |
| "Iron Protocol" | → | `protocol` | instructional |
| "Key Distinction" | → | `keypoint` | pedagogical |
| "Stimulant Warning" | → | `practicalwarning` | practical caveat |
| "Continued in Appendices" | → | `continuation` | navigation |

## Open Questions

1. `keypoint` / `practicalwarning`: numbered or unnumbered by default?
2. `continuation`: icon or plain box?
3. Color palette: align with viridis/inferno (scientific claims) or use distinct pedagogical palette?

## Next Steps

1. Review with template maintainer
2. Finalize color schemes and visual styling
3. Implement in `theorems.tex`
4. Document in template README
5. Add to `template-environments.md` reference guide
6. Test with multiple document types (not just ME/CFS)