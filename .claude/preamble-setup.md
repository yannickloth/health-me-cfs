# Preamble Setup

This file contains detailed information about the preamble system architecture. Reference this when setting up new LaTeX documents or modifying preamble configuration.

**CRITICAL:** All preamble modules come from [infolead-latex-templates](../infolead-latex-templates/). Never create duplicate preamble files in the project.

## Shared Preamble System

The [infolead-latex-templates](infolead-latex-templates/) submodule provides a modular preamble following the **Independent Variation Principle (IVP)**: each concern (tables, diagrams, algorithms, etc.) is self-contained with its own package imports and configuration.

## Critical Load Order

Package dependencies matter in LaTeX. Modules must be loaded in this order:

1. `koma-config.tex` - KOMA-Script settings (requires KOMA document class)
2. `typography.tex` - Font configuration (Kepler fonts by default)
3. `packages.tex` - Core packages (amsmath, xcolor, babel, etc.)
4. `math.tex` - Mathematical operators
5. `theorems.tex` - Theorem environments (standard + IVP-specific)
6. Feature modules (as needed): `bibliography.tex`, `tables.tex`, `diagrams.tex`, `algorithms.tex`, `listings.tex`
7. `spacing.tex` - Spacing adjustments
8. `koma-headers.tex` - Page headers/footers
9. `hyperref.tex` - **MUST BE LAST** (hyperlinks and cross-references)

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

Only load these if needed for your document:

- `diagrams.tex` - TikZ diagrams (warning: increases compile time significantly)
- `algorithms.tex` - Algorithm pseudocode
- `listings.tex` - Code syntax highlighting with JSON support
- `tables.tex` - Professional table formatting (booktabs)
- `bibliography.tex` - Citation support

## Theorem Environments

All theorem-like environments are defined in `theorems.tex`:
- Requires `\usepackage[most]{tcolorbox}` to be loaded BEFORE `theorems.tex`
- Automatically loads `colors.tex` for environment styling
- See [template-environments.md](template-environments.md) for complete reference

## Adding Project-Specific Customizations

After loading all template modules:

```latex
% Load all template modules
\input{\preamble/theorems.tex}
\input{\preamble/hyperref.tex}  % Always last from template

% Now add project-specific customizations
\newenvironment{mecfs-severity-scale}{...}{...}  % ME/CFS-specific
\newcommand{\PEM}{\textsc{pem}\xspace}           % Project abbreviations
```

**Golden Rule:** If it's reusable across multiple academic documents, add it to the template. If it's ME/CFS-specific, keep it in the project.
