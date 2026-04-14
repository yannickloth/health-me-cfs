# LaTeX Conventions

## File Organization

```
project/
├── ms.tex                    # Main document
├── chapters/                 # Chapter files (if multi-file)
│   ├── intro.tex
│   ├── background.tex
│   └── ...
├── figures/                  # Graphics
├── tables/                   # Standalone tables
├── infolead-latex-templates/ # Preamble submodule
└── refs.bib                  # Bibliography
```

## Formatting Standards

### Spacing
- One sentence per line (better diffs)
- Blank line between paragraphs
- No trailing whitespace
- 2-space indentation inside environments

### Math

| Use case | Syntax |
| --- | --- |
| Important equations | `\begin{equation}...\end{equation}` |
| Brief inline expressions | `$...$` |
| Referenced equations | `\label{eq:name}` |

Consistent notation throughout.

### References

| Target | Syntax |
| --- | --- |
| Sections | `\ref{sec:name}` |
| Equations | `\eqref{eq:name}` (includes parentheses) |
| Citations | `\cite{key}` |
| Non-breaking space | `Section~\ref{sec:foo}` |

### Environments

**IMPORTANT:** Always use environments from [infolead-latex-templates](../infolead-latex-templates/) when available.

See [template-environments.md](template-environments.md) for complete reference.

### Common Patterns

```latex
% Standard mathematical theorem
\begin{theorem}[Optional Name]
\label{thm:name}
Statement of the theorem.
\end{theorem}

\begin{proof}
Proof content.
\end{proof}

% Scientific claim with tcolorbox styling
\begin{hypothesis}[Energy Dysfunction]
\label{hyp:energy}
Mitochondrial ATP production is impaired in ME/CFS patients.
\end{hypothesis}

% Research finding
\begin{achievement}[Biomarker Discovery]
\label{ach:il8}
We identified IL-8 elevation as a consistent marker across all patient cohorts.
\end{achievement}

% Warning or limitation
\begin{warning}[Study Limitation]
Sample size limited to 42 participants from a single center.
\end{warning}
```

### Environment Selection Guidelines

1. Check template first → [template-environments.md](template-environments.md)
2. Unsure? → run `template-advisor` agent
3. Standard math → `theorem`, `lemma`, `definition`, `example`
4. Scientific claims → `hypothesis`, `achievement`, `prediction`, `warning`, etc.
5. Project-specific only when necessary (ME/CFS diagnostic criteria, custom scales)

### Available Template Categories

| Category | Environments |
| --- | --- |
| Standard Math | theorem, lemma, corollary, proposition, definition, example, remark |
| IVP/Design | principle, directive, pattern, construction, observation |
| Scientific Claims | achievement, prediction, hypothesis, axiom, warning, requirement, open_question |
| Structure | chapterabstract, roadmap, conclusion, derivation |

## Anti-Patterns

### Avoid
```latex
% Manual spacing - use proper environments
\\[10pt]
\vspace{1cm}

% Hardcoded references - will break
as shown on page 42
in Figure 3

% Inline formatting for structure - use environments
\textbf{Theorem 1.} Statement...
```

### Prefer
```latex
% Proper theorem environment
\begin{theorem}
\label{thm:main}
Statement...
\end{theorem}

% Symbolic references
as shown in Figure~\ref{fig:example}
```

## Build Hygiene

- Zero errors required
- Address warnings or explicitly accept them
- Fix overfull boxes
- No undefined references
