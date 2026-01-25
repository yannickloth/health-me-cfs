# Proposal: Pedagogical and Instructional Environments for LaTeX Template

**Target**: `infolead-latex-templates/theorems.tex`

## Motivation

Currently, the template provides excellent environments for scientific claims (hypothesis, observation, etc.) but lacks structured environments for pedagogical and instructional content. This forces authors to use ad-hoc `tcolorbox` definitions, leading to:

1. **Inconsistent styling** across documents
2. **Code duplication** when multiple documents need similar pedagogical boxes
3. **Lack of semantic markup** (ad-hoc boxes don't convey *what* the content is)
4. **Maintenance burden** when styling needs to change

## Proposed Environments

### Category 1: Instructional Content

#### `protocol` Environment
**Purpose**: Step-by-step procedures, systematic methods, experimental protocols

**Use cases**:
- Medical treatment protocols
- Experimental procedures
- Configuration steps
- Algorithmic procedures

**Visual style**: Blue theme, solid border, numbered steps encouraged

**Example**:
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

#### `clinicalfinding` Environment
**Purpose**: Documented clinical or experimental findings (not literature claims)

**Use cases**:
- Patient case observations
- Experimental results
- Diagnostic summaries
- Laboratory findings

**Visual style**: Gray theme, simple border, professional tone

**Example**:
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

#### `keypoint` Environment
**Purpose**: Critical insights, key takeaways, essential concepts

**Use cases**:
- Highlighting crucial distinctions
- Summarizing important principles
- Emphasizing counter-intuitive findings
- Educational "aha moments"

**Visual style**: Yellow/gold theme, left bar, attention-grabbing

**Example**:
```latex
\begin{keypoint}[Unwilling vs. Unable]
\label{kp:unwilling-unable}
ME/CFS patients choose low-effort tasks not due to lack of motivation, but because their body \emph{cannot physically complete} high-effort tasks without triggering post-exertional malaise. Pacing is a \textbf{biological requirement}, not a preference.
\end{keypoint}
```

#### `practicalwarning` Environment
**Purpose**: Real-world caveats, practical limitations, clinical warnings

**Use cases**:
- Bridging theory-practice gap
- Warning about common pitfalls
- Highlighting practical constraints
- Clinical safety warnings

**Visual style**: Orange/red theme, triangle icon, left bar

**Example**:
```latex
\begin{practicalwarning}[Stimulant Medication Caution]
\label{pw:stimulant}
When taking methylphenidate or modafinil, subjective energy perception is unreliable. These medications mask the body's warning signals. \textbf{Heart rate monitoring is essential}---trust objective measurements over how you feel.
\end{practicalwarning}
```

### Category 3: Document Navigation

#### `continuation` Environment
**Purpose**: Cross-references to related content in other sections

**Use cases**:
- Pointing to appendices
- Directing to supplementary material
- Indicating where topics continue
- Managing multi-part content

**Visual style**: Light blue theme, simple box, small font

**Example**:
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

1. **Semantic clarity**: `\begin{protocol}` is more meaningful than `\begin{tcolorbox}[colback=blue!5!white,...]`
2. **Consistency**: All documents using the template get the same styling
3. **Maintainability**: Change colors/styling in one place
4. **Numbering**: Automatic chapter-based numbering for protocols and findings
5. **Accessibility**: Distinct visual styles aid comprehension
6. **Reusability**: Useful across medical, technical, and educational documents

## Compatibility

- Does not interfere with existing scientific claim environments
- Uses same tcolorbox infrastructure
- Follows same naming/styling conventions
- Compatible with starred (unnumbered) variants
- Works with existing color system

## Distinction from Scientific Environments

| Type | Purpose | Examples | Epistemic Status |
|------|---------|----------|------------------|
| **Scientific** | Claims about reality | hypothesis, observation, prediction | Has epistemic status (true/false/uncertain) |
| **Pedagogical** | Instructional content | protocol, keypoint, practicalwarning | No epistemic status (instructional, not truth-claims) |

**Key difference**: Scientific environments make claims about the world; pedagogical environments guide the reader.

## Migration Path

For this ME/CFS document:
1. Convert "Novel Therapeutic Proposal" boxes → `speculation` (scientific claim)
2. Convert "Iron Protocol" boxes → `protocol` (instructional)
3. Convert "Key Distinction" boxes → `keypoint` (pedagogical)
4. Convert "Stimulant Warning" boxes → `practicalwarning` (practical caveat)
5. Convert "Continued in Appendices" → `continuation` (navigation)

## Open Questions

1. Should `keypoint` and `practicalwarning` be numbered or unnumbered by default?
2. Should `continuation` have an icon or just be a simple box?
3. Color palette: Should we align with viridis/inferno used for scientific claims, or use a distinct pedagogical palette?

## Next Steps

1. Review proposal with template maintainer
2. Finalize color schemes and visual styling
3. Implement in `theorems.tex`
4. Document in template README
5. Add to `template-environments.md` reference guide
6. Test with multiple document types (not just ME/CFS)