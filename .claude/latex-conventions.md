# LaTeX Conventions

Rules for consistent LaTeX formatting in this project.

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
- One sentence per line (for better diffs)
- Blank line between paragraphs
- No trailing whitespace
- Consistent indentation (2 spaces) inside environments

### Math
- Display math for important equations: `\begin{equation}...\end{equation}`
- Inline math for brief expressions: `$...$`
- Use `\label{eq:name}` for referenced equations
- Consistent notation throughout document

### References
- `\ref{sec:name}` for sections
- `\eqref{eq:name}` for equations (includes parentheses)
- `\cite{key}` for citations
- Non-breaking space before: `Section~\ref{sec:foo}`

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

1. **Check template first:** Before creating custom environments, consult [template-environments.md](template-environments.md)
2. **Use template-advisor:** Run `template-advisor` agent when unsure
3. **Standard math:** Use `theorem`, `lemma`, `definition`, `example`
4. **Scientific claims:** Use `hypothesis`, `achievement`, `prediction`, `warning`, etc.
5. **Project-specific only when necessary:** ME/CFS-specific diagnostic criteria, custom scales

### Available Template Categories

- **Standard Math:** theorem, lemma, corollary, proposition, definition, example, remark
- **IVP/Design:** principle, directive, pattern, construction, observation
- **Scientific Claims:** achievement, prediction, hypothesis, axiom, warning, requirement, open_question
- **Structure:** chapterabstract, roadmap, conclusion, derivation

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

- Document must build with zero errors
- Warnings should be addressed or explicitly accepted
- Overfull boxes should be fixed
- No undefined references
