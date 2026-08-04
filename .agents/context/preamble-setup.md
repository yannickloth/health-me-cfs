# Preamble Setup

**CRITICAL:** All preamble modules from [infolead-latex-templates](../infolead-latex-templates/). Never create duplicate preamble files in the project.

## Shared Preamble System

[infolead-latex-templates](infolead-latex-templates/) submodule — modular preamble following IVP: each concern (tables, diagrams, algorithms, etc.) self-contained with own package imports and configuration.

## Critical Load Order

| # | Module | Notes |
| --- | --- | --- |
| 1 | `koma-config.tex` | KOMA-Script settings; requires KOMA document class |
| 2 | `typography.tex` | Font config (Kepler fonts by default) |
| 3 | `packages.tex` | Core packages (amsmath, xcolor, babel, etc.) |
| 4 | `math.tex` | Mathematical operators |
| 5 | `theorems.tex` | Theorem environments (standard + IVP-specific) |
| 6 | Feature modules (as needed) | `bibliography.tex`, `tables.tex`, `diagrams.tex`, `algorithms.tex`, `listings.tex` |
| 7 | `spacing.tex` | Spacing adjustments |
| 8 | `koma-headers.tex` | Page headers/footers |
| 9 | `hyperref.tex` | **MUST BE LAST** — hyperlinks and cross-references |

## Using the Preamble in Your Document

```latex
\newcommand{\preamble}{infolead-latex-templates}
\input{\preamble/koma-config.tex}
\input{\preamble/typography.tex}
\input{\preamble/packages.tex}
% ... other modules as needed
\input{\preamble/hyperref.tex}  % Always load last
```

## Optional Modules

Load only when needed:

| Module | Purpose | Note |
| --- | --- | --- |
| `diagrams.tex` | TikZ diagrams | Increases compile time significantly |
| `algorithms.tex` | Algorithm pseudocode | |
| `listings.tex` | Code syntax highlighting | JSON support included |
| `tables.tex` | Professional table formatting | booktabs |
| `bibliography.tex` | Citation support | |

## Theorem Environments

All theorem-like environments in `theorems.tex`:

- `\usepackage[most]{tcolorbox}` must load BEFORE `theorems.tex`
- Auto-loads `colors.tex` for environment styling
- Full reference: [template-environments.md](template-environments.md)

## Adding Project-Specific Customizations

```latex
% Load all template modules
\input{\preamble/theorems.tex}
\input{\preamble/hyperref.tex}  % Always last from template

% Now add project-specific customizations
\newenvironment{mecfs-severity-scale}{...}{...}  % ME/CFS-specific
\newcommand{\PEM}{\textsc{pem}\xspace}           % Project abbreviations
```

**Golden Rule:** Reusable across documents → add to template. ME/CFS-specific → keep in project.
