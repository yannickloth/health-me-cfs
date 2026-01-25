# Environment Selection Workflow

Systematic process for choosing the right LaTeX environment from infolead-latex-templates.

## When to Use This Workflow

- Creating new structured content (theorems, hypotheses, warnings, etc.)
- Converting Markdown callouts to LaTeX
- Unsure which environment fits your needs
- Need to decide template vs. project-specific

## Step 1: Identify Content Type

**What are you documenting?**

- [ ] Mathematical theorem or proof → Go to Step 2A
- [ ] Scientific claim with epistemic status → Go to Step 2B
- [ ] Methodological framework → Go to Step 2C
- [ ] Document structure (roadmap, abstract) → Go to Step 2D
- [ ] ME/CFS-specific custom structure → Go to Step 3

## Step 2A: Mathematical Content

Use standard mathematical environments from template:

| If your content is... | Use this environment |
|----------------------|---------------------|
| A theorem to be proven | `theorem` |
| A supporting lemma | `lemma` |
| A direct consequence | `corollary` |
| A proposition | `proposition` |
| A formal definition | `definition` |
| An illustrative example | `example` |
| A remark or note | `remark` |
| A step-by-step derivation | `derivation` |
| A numerical calculation | `calculation` |

**Example:**
```latex
\begin{definition}[Post-Exertional Malaise]
\label{def:pem}
Post-exertional malaise (PEM) is a worsening of symptoms following physical or cognitive exertion...
\end{definition}
```

## Step 2B: Scientific Claims

Choose based on epistemic status:

| Epistemic Status | Environment | Visual Style |
|------------------|-------------|-------------|
| **Novel finding from your work** | `achievement` | Double border, star |
| **Testable future prediction** | `prediction` | Dashed border, arrow |
| **Matches existing data** | `postdiction` | Solid border, checkmark |
| **Unproven working assumption** | `hypothesis` | Dash-dot border |
| **Foundational axiom** | `axiom` | Thick double border |
| **Conditional assumption** | `assumption` | Left+right bars |
| **Necessary condition/criterion** | `requirement` | Corner brackets |
| **Verification of known physics** | `consistency_check` | Simple box |
| **Unresolved problem** | `open_question` | Dotted border |
| **Caveat or limitation** | `warning` | Left bar, triangle |

**Examples:**
```latex
% Novel finding
\begin{achievement}[Cytokine Signature]
\label{ach:cytokines}
We identified a distinct 8-cytokine signature present in 94\% of severe ME/CFS patients.
\end{achievement}

% Working hypothesis
\begin{hypothesis}[Autoimmune Trigger]
\label{hyp:autoimmune}
Viral infection may trigger autoantibody production against autonomic receptors.
\end{hypothesis}

% Study limitation
\begin{warning}[Small Sample]
This study included only 42 participants from a single medical center.
\end{warning}

% Future research question
\begin{open_question}[Biomarker Validation]
\label{oq:biomarker}
Can the 8-cytokine signature be validated in independent cohorts?
\end{open_question}
```

## Step 2C: Methodological Frameworks

For theoretical principles and patterns:

| Content Type | Environment |
|-------------|-------------|
| Fundamental principle | `principle` |
| Guideline or directive | `directive` |
| Problem statement | `problem` |
| Recurring pattern | `pattern` |
| Design decision | `design-decision` |
| Common misconception | `fallacy` |
| Empirical observation | `observation` |
| Concrete instantiation | `instantiation` |
| Algorithm or process | `construction` |
| Speculative idea | `speculation` |

**Examples:**
```latex
\begin{principle}[Pacing]
\label{prin:pacing}
Activity management must remain within the patient's energy envelope to prevent PEM.
\end{principle}

\begin{pattern}[Symptom Clustering]
\label{pat:cluster}
ME/CFS symptoms cluster into phenotypic subgroups with distinct severity profiles.
\end{pattern}

\begin{fallacy}[Exercise as Treatment]
\label{fal:exercise}
The misconception that graded exercise therapy benefits all ME/CFS patients has been refuted.
\end{fallacy}
```

## Step 2D: Document Structure

For organizing chapters and sections:

| Purpose | Environment | Usage |
|---------|-------------|-------|
| Chapter summary | `chapterabstract` | Start of chapter |
| Chapter outline | `roadmap` | After chapter abstract |
| Section conclusion | `conclusion` | End of major sections |
| Q&A section | `\qa{Question?}` | Use `\setcounter{qacounter}{0}` per chapter |

**Examples:**
```latex
\chapter{Pathophysiology}

\begin{chapterabstract}
This chapter examines the biological mechanisms underlying ME/CFS symptoms...
\end{chapterabstract}

\begin{roadmap}
We first review energy metabolism (\S\ref{sec:energy}), then immune dysfunction...
\end{roadmap}

\section{Energy Metabolism}
\label{sec:energy}
...

% Later in chapter
\section{Frequently Asked Questions}
\setcounter{qacounter}{0}

\qa{What causes the energy deficit?}
Multiple mechanisms contribute, including...

\qa{Is mitochondrial dysfunction universal?}
Evidence suggests heterogeneity across patients...
```

## Step 3: Project-Specific Environments

**Create custom environment when:**
- Content is unique to ME/CFS documentation
- Structure is one-off or experimental
- Format references project-specific data
- Not reusable in other academic contexts

**Examples of project-specific needs:**
- Custom diagnostic flowcharts
- ME/CFS severity scale formatting
- Patient case study templates
- Treatment protocol layouts
- Symptom tracking tables

**Where to define:**
```latex
% In ms.tex after loading template modules
\input{\preamble/hyperref.tex}  % Last template module

% Project-specific environments
\newenvironment{case-study}[1]{%
  \begin{tcolorbox}[title=Case Study: #1, colback=blue!5]
}{%
  \end{tcolorbox}
}

\newcommand{\SeverityScale}[5]{%
  \begin{tabular}{|c|c|c|c|c|}
    \hline
    Mild & Moderate & Severe & Very Severe & Extremely Severe \\
    \hline
    #1 & #2 & #3 & #4 & #5 \\
    \hline
  \end{tabular}
}
```

## Step 4: Verify Template Availability

Before creating custom environment, check:

1. **Read template-environments.md**: Is there an existing environment?
2. **Consult template-advisor**: Spawn agent to verify
3. **Check theorems.tex**: Browse available definitions

```bash
# Quick search in template
grep -r "newtheorem\|newtcolorbox" infolead-latex-templates/theorems.tex
```

## Step 5: Consider Template Addition

**Add to infolead-latex-templates when:**
- Environment is general-purpose for academic writing
- Multiple documents would benefit
- It's not domain-specific (not ME/CFS-only)
- Represents a common academic pattern

**Process to add:**
1. Edit `infolead-latex-templates/theorems.tex`
2. Add in appropriate section (Part 1/2/3)
3. If tcolorbox: define colors in `colors.tex`
4. Update template README
5. Commit to template repository

**Keep in project when:**
- ME/CFS-specific
- One-off experimental format
- Temporary or evolving structure

## Quick Decision Matrix

| Question | YES → | NO → |
|----------|-------|------|
| Is it a standard math structure? | Use `theorem`, `definition`, etc. | Continue |
| Does it have epistemic status? | Use `achievement`, `hypothesis`, `warning`, etc. | Continue |
| Is it a theoretical principle? | Use `principle`, `pattern`, `construction`, etc. | Continue |
| Is it document structure? | Use `roadmap`, `chapterabstract`, `\qa{}` | Continue |
| Is it ME/CFS-specific? | Create project-specific | Continue |
| Could other academic docs use it? | **Consider adding to template** | Keep project-specific |

## Common Mistakes to Avoid

❌ **Don't create custom when template exists**
```latex
% BAD: Creating custom when template has it
\newenvironment{mywarning}{...}{...}

% GOOD: Use template
\begin{warning}[Title]
Content...
\end{warning}
```

❌ **Don't use wrong environment for epistemic status**
```latex
% BAD: Using theorem for a hypothesis
\begin{theorem}[Mitochondrial Dysfunction]
We hypothesize that...  % This is not proven!
\end{theorem}

% GOOD: Use appropriate epistemic environment
\begin{hypothesis}[Mitochondrial Dysfunction]
We hypothesize that...
\end{hypothesis}
```

❌ **Don't add ME/CFS-specific to template**
```latex
% BAD: Adding to infolead-latex-templates
\newtcolorbox{mecfs-severity}{...}  % Too specific!

% GOOD: Keep in project ms.tex
```

## Output Format

After completing workflow, use:

```latex
\begin{[chosen-environment]}[Optional Title]
\label{[prefix]:[label]}
Content here...
\end{[chosen-environment]}
```

**Label prefixes:**
- `thm:` - theorems
- `def:` - definitions
- `ach:` - achievements
- `hyp:` - hypotheses
- `pred:` - predictions
- `war:` - warnings
- `oq:` - open questions
- `prin:` - principles
- `pat:` - patterns
- `obs:` - observations

## See Also

- [template-environments.md](../template-environments.md) - Complete environment reference
- [latex-conventions.md](../latex-conventions.md) - LaTeX formatting standards
- [infolead-latex-templates/theorems.tex](../../infolead-latex-templates/theorems.tex) - Source code
