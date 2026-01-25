# CLAUDE.md

LaTeX-based ME/CFS documentation with automatic subagent delegation for quality assurance.

## Build

```bash
nix build              # → result/ms.pdf
nix run .#clean        # Clean artifacts
```

## Subagent System

This project uses custom subagents in `.claude/agents/`. Claude automatically delegates tasks to the appropriate agent based on matching your request to agent descriptions.

### Available Subagents

| Agent | Model | Use When |
|-------|-------|----------|
| `syntax-fixer` | haiku | Build errors, warnings, overfull boxes |
| `formatting-fixer` | haiku | Markdown in .tex, formatting issues |
| `dictionary-manager` | haiku | LTeX warnings, medical terminology false positives |
| `template-advisor` | haiku | Choosing LaTeX environments, deciding template vs. project-specific |
| `content-reviewer` | sonnet | Checking consistency, completeness, section coherence |
| `style-naturalizer` | sonnet | AI-sounding text needs humanizing |
| `literature-researcher` | sonnet | Finding citations, verifying claims against research |
| `literature-manager` | sonnet | Downloading papers, organizing Literature folder, integrating into document |
| `math-verifier` | opus | Verifying statistical analyses, calculations |
| `logic-auditor` | opus | Circular reasoning, argument gaps, claim verification |

### How It Works

1. You make a request (e.g., "fix the build errors")
2. Claude matches request to agent `description` fields
3. Claude spawns the matching subagent with appropriate model
4. Subagent executes with its restricted toolset
5. Results return to main conversation

### Context Minimization

Subagents have restricted `tools:` to enforce focus:
- Read-only agents cannot modify files
- Each agent receives only relevant context
- Never pass entire document for single-section tasks

## Workflows

For multi-step operations, see `.claude/workflows/`:
- `literature-integration.md` - **Finding, downloading, and integrating research papers**
- `environment-selection.md` - Choosing the right LaTeX environment from template
- `pre-commit.md` - Quick validation before commit
- `section-review.md` - Full review pipeline for one section
- `full-document-review.md` - Comprehensive document review

Trigger with: "find papers on [topic]" or "help me choose an environment" or "run the pre-commit workflow"

## Reference Files (load on demand)

| File | Load When |
|------|-----------|
| `workflows/literature-integration.md` | **Finding and integrating research papers** |
| `template-environments.md` | **Choosing LaTeX environments, creating new structures** |
| `writing-style.md` | Editing prose, naturalizing text, medical writing |
| `build-system.md` | Build issues, deployment |
| `preamble-setup.md` | Preamble configuration, load order |
| `latex-conventions.md` | Formatting questions, LaTeX standards |
| `systems/mcp-integration.md` | MCP/LSP setup |
| `infolead-latex-templates/README.md` | Template system documentation |
| `infolead-latex-templates/theorems.tex` | Full environment source code |

## LaTeX Template Integration

This project uses [infolead-latex-templates](infolead-latex-templates/) as a git submodule for all preamble configuration and theorem environments.

### Core Principle

**Always check if an appropriate environment exists in the template before creating custom ones.**

Use `template-advisor` agent when:
- Creating new boxed environments or theorems
- Unsure which existing environment fits your need
- Deciding whether to add to template vs. keep project-specific

### Template vs. Project-Specific Decision

**Use template environments for:**
- Standard academic structures (theorem, definition, example)
- General scientific claims (hypothesis, achievement, prediction)
- Methodological frameworks (principle, pattern, construction)
- Reusable across multiple documents

**Keep project-specific for:**
- ME/CFS-specific diagnostic criteria formatting
- Custom symptom severity scales
- Patient case study layouts
- Domain-specific medical structures

### Quick Reference

Available template environments are documented in:
- `infolead-latex-templates/theorems.tex` - All theorem-like environments
- `infolead-latex-templates/README.md` - Complete preamble documentation
- `.claude/template-environments.md` - Quick reference guide

Common environments for medical writing:
- `\begin{hypothesis}[Title]` - Unproven medical hypotheses
- `\begin{achievement}[Title]` - Novel research findings
- `\begin{warning}[Title]` - Clinical caveats and limitations
- `\begin{requirement}[Title]` - Diagnostic requirements
- `\begin{observation}[Title]` - Clinical observations

## Literature Management System

**IMPORTANT:** When finding research papers, PDFs, or online references, automatically trigger literature management:

### Automated Literature Pipeline

1. **Search:** `literature-researcher` finds relevant papers
2. **Download:** `literature-manager` fetches PDFs/abstracts
3. **Organize:** Save to `Literature/[category]/[Author]_[Year]_[Title]/`
4. **Document:** Create notes.md, key-findings.md, README.md
5. **Integrate:** Add to references.bib and appendix
6. **Incorporate:** Add findings to main document with certainty notes

### Literature Folder Structure

```
Literature/
├── biomarkers/
├── pathophysiology/
│   ├── energy-metabolism/
│   ├── immune-dysfunction/
│   └── neurological/
├── clinical-studies/
├── treatments/
├── severity-prognosis/    # Existing - preserve structure
├── mechanisms/
│   └── 2day-CPET/         # Existing - preserve structure
└── reviews/
```

### When to Download and Integrate

**Automatically download when:**
- Paper is cited or referenced
- Relevant to current section being written
- Fills a research gap
- Provides evidence for claims
- Contradicts or supports existing content

**Create full integration when:**
- Finding is significant for understanding ME/CFS
- Evidence quality is high (peer-reviewed, adequate sample)
- Directly supports or refutes document claims
- Provides novel biomarkers or mechanisms
- Systematic review or meta-analysis

### Integration Requirements

Every integrated paper must include:
1. **Certainty assessment** (High/Medium/Low)
2. **Study quality** (sample size, peer review status)
3. **Replication status** (single study vs. replicated)
4. **Appropriate environment** (achievement, hypothesis, warning, etc.)
5. **BibTeX entry** in references.bib
6. **Appendix entry** in annotated bibliography

### Certainty Levels

**High Certainty:**
- Large sample (n>100)
- Peer-reviewed in reputable journal
- Replicated independently
- No major conflicts of interest
→ Use directly with `achievement` or standard citation

**Medium Certainty:**
- Moderate sample (n=20-100)
- Peer-reviewed but single study
- Awaiting replication
→ Note limitations, use `hypothesis` or qualified statement

**Low Certainty:**
- Small sample (n<20)
- Preprint or conference abstract
- Methodological concerns
→ Use cautiously with `hypothesis`, note "preliminary"

### Example Integration

```latex
% Paper found and downloaded to Literature/biomarkers/Hornig_2015_Cytokines/
% Added to references.bib as @article{Hornig2015,...}
% Appendix updated with detailed summary

\begin{achievement}[Cytokine Signature Biomarkers]
\label{ach:cytokines}
Hornig et al.~\cite{Hornig2015} identified a distinct 8-cytokine signature
present in 94\% of early-stage ME/CFS patients (n=298), providing the first
validated immune-based biomarker panel.
\end{achievement}

% Certainty: High (n=298, Science Advances, replicated)
```

## Medical Documentation Guidelines

When working with ME/CFS content:
- Medical terminology should be added to LTeX dictionary (use `dictionary-manager`)
- **All clinical claims require citations** - use `literature-researcher` + `literature-manager`
- Patient-reported data should be clearly distinguished from clinical findings
- Use appropriate theorem-like environments from infolead-latex-templates for diagnostic criteria
- Maintain neutral, evidence-based tone throughout
- Consult `template-advisor` when choosing environments
- **Always include certainty assessment** when citing research
