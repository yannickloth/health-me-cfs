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
```latex
\begin{theorem}[Name]
\label{thm:name}
Statement.
\end{theorem}

\begin{proof}
Content.
\end{proof}
```

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
