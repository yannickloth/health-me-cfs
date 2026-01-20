# latex-template
Template for LaTeX projects with Nix-based reproducible builds and modular preamble system.

## Quick Start

1. **Clone and initialize**
   ```bash
   git clone <your-project>
   cd <your-project>
   git submodule update --init --recursive
   ```

2. **Build the document**
   ```bash
   nix build              # Output: result/ms.pdf
   ```

3. **Edit** `ms.tex` and rebuild as needed

## Building

### With Nix (recommended)
- `nix build` - Build ms.tex to PDF (output in `result/ms.pdf`)
- `nix develop` - Enter development shell with all dependencies
- `nix run .#clean` - Remove build artifacts

### Without Nix
- `latexmk -pdf ms.tex` - Automated build with dependency tracking
- `latexmk -pdf -pvc ms.tex` - Continuous preview mode

## Project Structure

- `ms.tex` - Main document (rename as needed for your project)
- [infolead-latex-templates/](infolead-latex-templates/) - Git submodule with reusable LaTeX preambles
- `flake.nix` - Nix build configuration for reproducible builds
- `.gitignore` - Pre-configured for LaTeX build artifacts

## Updating the Preamble

The project uses a git submodule for shared LaTeX preambles. To update to the latest version:

```bash
git submodule update --remote infolead-latex-templates
```

## Customizing for Your Project

When creating a new project from this template:

1. **Rename the main document** - Change `ms.tex` to match your project (e.g., `thesis.tex`, `report.tex`)
2. **Update flake.nix** - If you rename the main document, update the `mainFile` variable in [flake.nix](flake.nix)
3. **Customize the preamble** - Edit `ms.tex` to load only the preamble modules you need (see below)
4. **Update this README** - Replace template content with your project-specific information

## Preamble Modules

The [infolead-latex-templates/](infolead-latex-templates/) submodule provides modular LaTeX preambles. Load only what you need:

**Required (in order):**
1. `koma-config.tex` - KOMA-Script settings
2. `typography.tex` - Font configuration
3. `packages.tex` - Core packages
4. `math.tex` - Mathematical operators
5. `theorems.tex` - Theorem environments

**Optional (as needed):**
- `bibliography.tex` - Citations
- `tables.tex` - Professional tables
- `algorithms.tex` - Algorithm pseudocode
- `listings.tex` - Code syntax highlighting
- `diagrams.tex` - TikZ diagrams (warning: slow compilation)

**Always load last:**
- `spacing.tex`
- `koma-headers.tex`
- `hyperref.tex` - Must be the final module

See [.claude/preamble-setup.md](.claude/preamble-setup.md) for details on the module system and load order requirements.

## Development Environment

- **With Nix**: Run `nix develop` to enter a shell with all LaTeX packages
- **direnv**: If you have direnv installed, it will automatically load the environment when entering the directory
- **Editor config**: [.editorconfig](.editorconfig) is provided for consistent formatting

## More Information

See the [.claude/](.claude/) directory for detailed documentation:
- [preamble-setup.md](.claude/preamble-setup.md) - Preamble system architecture and module details
- [build-system.md](.claude/build-system.md) - Build commands and artifact management
- [writing-style.md](.claude/writing-style.md) - Writing guidelines for LaTeX content
- [CLAUDE.md](.claude/CLAUDE.md) - Instructions for Claude Code when working with this repository
