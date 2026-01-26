# CLAUDE.md

LaTeX-based ME/CFS documentation with automatic subagent delegation for quality assurance.

---

## ⚠️ MANDATORY: Active Agent Delegation

**Claude MUST interpret every user request and immediately delegate to the appropriate specialized agent.**

- **DO NOT** attempt tasks yourself when agents exist for them
- **DO NOT** "try first then delegate if it fails"
- **DO** actively parse user intent and map to agent capabilities
- **DO** spawn agents immediately when their expertise matches the request

This is not a suggestion - it is a core architectural requirement. The agent system provides specialized models, restricted toolsets, verification protocols, and context minimization. Bypassing agents reduces reliability and performance.

See [Active Request Interpretation](#critical-active-request-interpretation) below for detailed examples.

---

## Build

```bash
nix build              # → result/ms.pdf
nix run .#clean        # Clean artifacts
```

## Subagent System

This project uses custom subagents in `.claude/agents/`. Claude automatically delegates tasks to the appropriate agent based on matching your request to agent descriptions.

### Available Subagents

#### Document Quality Agents

| Agent | Model | Use When |
|-------|-------|----------|
| `syntax-fixer` | haiku | Build errors, warnings, overfull boxes |
| `formatting-fixer` | haiku | Markdown in .tex, formatting issues |
| `dictionary-manager` | haiku | LTeX warnings, medical terminology false positives |
| `template-advisor` | haiku | Choosing LaTeX environments, deciding template vs. project-specific |
| `chapter-integrator` | haiku | Editing chapter files to add citations from integrated papers |
| `content-reviewer` | sonnet | Checking consistency, completeness, section coherence |
| `style-naturalizer` | sonnet | AI-sounding text needs humanizing |
| `literature-researcher` | sonnet | Finding citations, verifying claims against research |
| `literature-manager` | sonnet | Downloading papers, organizing Literature folder, updating bibliography |
| `scientific-insight-generator` | opus | Creative analysis of papers for novel connections and treatment ideas |
| `math-verifier` | opus | Verifying statistical analyses, calculations |
| `logic-auditor` | opus | Circular reasoning, argument gaps, claim verification |

#### Medical Case Management Agents

| Agent | Model | Use When |
|-------|-------|----------|
| `case-documenter` | sonnet | Daily symptom/medication/activity logging, updating Appendix I |
| `medical-advisor` | opus | Evidence-based treatment recommendations, medical decisions |
| `treatment-analyst` | opus | Statistical analysis of treatment effectiveness |
| `crisis-manager` | sonnet | Severe crashes, emergency protocols, recovery tracking |
| `pacing-coach` | haiku | Real-time activity guidance, PEM prevention, energy envelope |
| `data-validator` | haiku | Data quality checks, validation reports |
| `hypothesis-generator` | opus | Subtype analysis, mechanistic insights, testing protocols |
| `research-monitor` | sonnet | Track new ME/CFS research, clinical trials, literature updates |
| `benefit-navigator` | sonnet | Disability applications, workplace accommodations |
| `caregiver-coordinator` | sonnet | Family/caregiver education, medical team communication |

### How It Works

1. You make a request (e.g., "fix the build errors")
2. Claude matches request to agent `description` fields
3. Claude spawns the matching subagent with appropriate model
4. Subagent executes with its restricted toolset
5. Results return to main conversation

### CRITICAL: Active Request Interpretation

**Claude MUST actively interpret and reformulate user requests to ensure proper agent delegation.**

This is not optional - it is a core requirement of the system:

1. **Parse user intent**: Understand what the user is actually asking for, not just the literal words
2. **Map to agent capabilities**: Identify which agent(s) can accomplish this task
3. **Delegate immediately**: Spawn the appropriate agent(s) WITHOUT attempting the task yourself first
4. **Never skip delegation**: Even if the task seems simple, if an agent exists for it, USE that agent

#### Examples of Required Interpretation

**User says:** "The build is broken"
**Claude interprets:** This requires fixing build errors → delegate to `syntax-fixer` agent immediately

**User says:** "Add some citations for this claim about NK cells"
**Claude interprets:** This requires finding research papers → delegate to `literature-researcher` agent immediately

**User says:** "This paragraph sounds robotic"
**Claude interprets:** This requires naturalizing AI-like text → delegate to `style-naturalizer` agent immediately

**User says:** "Should I use a theorem or definition here?"
**Claude interprets:** This requires choosing LaTeX environments → delegate to `template-advisor` agent immediately

**User says:** "Find papers on mitochondrial dysfunction"
**Claude interprets:** This requires the full literature pipeline → load and execute `literature-integration-coordinator` workflow immediately

#### Anti-Patterns (NEVER DO THIS)

❌ **User:** "Fix the build errors"
❌ **Claude:** "Let me try to fix this myself first..." *(attempts manual fixes)*

✅ **User:** "Fix the build errors"
✅ **Claude:** "I'll delegate this to the syntax-fixer agent." *(spawns syntax-fixer)*

---

❌ **User:** "This text needs better flow"
❌ **Claude:** "Let me edit it..." *(makes edits directly)*

✅ **User:** "This text needs better flow"
✅ **Claude:** "I'll use the style-naturalizer agent for this." *(spawns style-naturalizer)*

---

❌ **User:** "Find research on biomarkers"
❌ **Claude:** "Let me search..." *(uses Grep/WebSearch directly)*

✅ **User:** "Find research on biomarkers"
✅ **Claude:** "I'll execute the literature-integration-coordinator workflow." *(loads workflow and coordinates agents)*

#### Certainty Requirement

**You MUST delegate to agents when:**
- An agent exists that matches the task
- The task falls within an agent's described capabilities
- The task would benefit from the agent's specialized toolset or model

**Do NOT second-guess or attempt tasks yourself when agents are available.**

The agent system exists to provide:
- Specialized models (Haiku for speed, Opus for reasoning)
- Restricted toolsets (preventing scope creep)
- Verification protocols (ensuring work is complete)
- Context minimization (improving performance)

By attempting tasks yourself, you bypass these benefits and reduce reliability.

### Context Minimization

Subagents have restricted `tools:` to enforce focus:
- Read-only agents cannot modify files
- Each agent receives only relevant context
- Never pass entire document for single-section tasks

## Workflows

For multi-step operations, see `.claude/workflows/`:
- `literature-integration-coordinator.md` - **Complete pipeline: search → download → bibliography → chapters → creative analysis** (recommended)
- `literature-integration.md` - Finding, downloading, and integrating research papers (legacy, use coordinator instead)
- `formalization-pipeline.md` - **Build formal causal models and Event-Driven Process Chains** (for pathophysiology)
- `environment-selection.md` - Choosing the right LaTeX environment from template
- `pre-commit.md` - Quick validation before commit
- `section-review.md` - Full review pipeline for one section
- `full-document-review.md` - Comprehensive document review

Trigger with: "find and integrate papers on [topic]" or "formalize [process/chapter]" or "help me choose an environment" or "run the pre-commit workflow"

### Literature Integration Architecture

The literature integration system uses **hierarchical agent coordination** with strict verification:

```
literature-integration-coordinator (workflow)
├── Phase 1: literature-researcher (search)
├── Phase 2: literature-manager (download, organize, bibliography, appendix)
├── Phase 3: chapter-integrator (edit chapter .tex files) ⭐ NEW
├── Phase 4: scientific-insight-generator (creative analysis with Opus) ⭐ NEW
└── Phase 5: syntax-fixer (verify build)

Each phase includes mandatory verification before proceeding to next phase.
```

**Key principle:** Each agent has a single responsibility with clear verification criteria.

## Formalization System

For building formal causal and quantitative models of ME/CFS pathophysiology with explicit uncertainty quantification.

### When to Use

- "Formalize [process/chapter]" - build formal models for a specific process
- "Build causal model for [mechanism]" - create causal DAG with certainty weights
- "Create EPC for [biological process]" - event-driven temporal model
- "Model [phenomenon] mathematically" - quantitative ODE model (if data sufficient)

### Workflow

1. **Assess first:** Use `formalization-advisor` to check data availability
   - Recommends: Level (1/2/3), Model type (DAG/EPC/ODE), Priority (1/2/3)
   - Prevents premature formalization (wasted effort on data-poor processes)

2. **Build incrementally:**
   - **Level 1:** Causal DAG (all processes, structural relationships with certainty weights)
   - **Level 2:** Event-Driven Process Chains (high-priority, temporal dynamics)
   - **Level 3:** Differential equations (data-rich, full quantitative models)

3. **Event-first thinking** (for biological processes):
   - Identify events (observable state changes with detection criteria)
   - Every activity has trigger event + generated event
   - Document: detection criteria, latency, duration, probability
   - Example: `[Viral Infection Event] → [Immune Activation Activity] → [Cytokine Elevated Event]`

### Key Agents

| Agent | Use When |
|-------|----------|
| `formalization-advisor` | Deciding whether/how to formalize a process (run this FIRST) |
| `causal-model-builder` | Building DAG structure with certainty weights |
| `epc-model-builder` | Building event-driven temporal models (NEW - biology-focused) |
| `quantitative-model-builder` | Building differential equations (if data sufficient) |

### Architecture

```
formalization-pipeline (workflow)
├── Phase 1: Literature survey (extract causal claims, quantitative data)
├── Phase 2: causal-model-builder (DAG with certainty weights)
├── Phase 2.5: epc-model-builder (Event-Driven Process Chains) ⭐ NEW
├── Phase 3: quantitative-model-builder (ODE models, EPC-constrained)
├── Phase 4: Cross-validation (DAG ↔ EPC ↔ ODE consistency)
└── Phase 5: Integration (add to chapters with certainty annotations)
```

**Key innovation:** Event-Driven Process Chains (EPC) are superior to BPMN for biological systems:
- Events are first-class entities (not just sequence markers)
- Observable detection criteria for validation (e.g., "IL-6 > 2.0 pg/mL")
- Temporal precision (latency, duration, probabilities from cohort data)
- Natural representation of feedback loops (common in ME/CFS pathophysiology)

### Methodology

See `.claude/FORMALIZATION_METHODOLOGY.md` for:
- **Decision matrix** (Data × Impact × Maturity → Level/Model type)
- Process-by-process analysis of ME/CFS chapters (PEM, cytokines, mitochondria, etc.)
- EPC vs BPMN rationale (why event-driven is better for biology)
- Formalization rules (event-first, temporal precision, no orphan activities)

### Output Structure

```
models/
├── causal-dag/          # Structural causal graphs
│   ├── mecfs-full-dag.yaml
│   ├── mecfs-full-dag.tikz
│   └── evidence-inventory.yaml
├── epc/                 # Event-Driven Process Chains
│   ├── pem-cascade/
│   │   ├── epc-model.yaml
│   │   ├── epc-diagram.tikz
│   │   ├── validation-report.md
│   │   └── narrative-summary.md
│   └── cytokine-cascade/
└── quantitative/        # ODE models
    ├── atp-dynamics/
    │   ├── model.tex
    │   ├── parameters.yaml
    │   └── predictions.md
    └── ...
```

### Example Use Cases

**High-Priority Processes (Data-Rich, High Clinical Impact):**
- PEM cascade (Level 3: EPC + ODE)
- 2-day CPET response (Level 3: EPC + ODE)
- Cytokine signaling (Level 3: EPC + ODE)
- Autonomic dysfunction (Level 3: EPC + ODE)

**Medium-Priority (Moderate Data, Emerging Evidence):**
- Mitochondrial Complex I dysfunction (Level 2: EPC)
- Viral reactivation timeline (Level 2: EPC)
- HPA axis feedback (Level 2: EPC)

**Lower-Priority (Speculative or Low Data):**
- Metabolic trap hypothesis (Level 1: DAG, marked speculative)
- Microclot theory (Level 1: DAG, emerging evidence)

### LaTeX Environments (Proposed)

For integrating formal models into document:

- `\begin{epcprocess}[Process Name]` - Event-Driven Process Chain diagrams
- `\begin{model}[Model Name]` - Mathematical models (ODEs with parameters)
- `\begin{causalclaim}[certainty=high|medium|low]` - Causal relationships with explicit certainty
- `\begin{dag}[Title]` - Causal DAG figures with legend

See `.claude/template-proposal-formalization-environments.md` for full specification.

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

## Medical Case Management System

This project includes a comprehensive **medical agent system** for personal ME/CFS case management, documentation, and decision support.

### System Overview

The medical agents work together to:
- **Document** symptoms, medications, and activities daily
- **Analyze** treatment effectiveness with statistical rigor
- **Recommend** evidence-based interventions from literature
- **Monitor** for severe crashes and provide emergency protocols
- **Guide** pacing to prevent post-exertional malaise
- **Generate** disability documentation and caregiver materials
- **Track** new research relevant to your case

See [`.claude/systems/medical-agent-system.md`](.claude/systems/medical-agent-system.md) for complete documentation.

### Quick Start

**Daily logging:**
```
"case-documenter: log today's symptoms: energy 3/10, brain fog 7/10, pain 4/10"
"case-documenter: took LDN 4.5mg, CoQ10 200mg, vitamin D 5000IU"
```

**Activity planning:**
```
"pacing-coach: help me plan today's activities"
"pacing-coach: I want to cook dinner, is that safe?"
```

**Treatment recommendations:**
```
"medical-advisor: I'm having worse orthostatic intolerance, what should we try?"
"treatment-analyst: analyze my LDN trial, it's been 8 weeks"
```

**Crisis management:**
```
"crisis-manager: I'm crashing badly, what do I do?"
```

**Research monitoring:**
```
"research-monitor: what's new in ME/CFS research this week?"
```

### Medical Agent Tiers

**Tier 1 - Core (Essential):**
- `case-documenter` - Daily logging foundation
- `medical-advisor` - Treatment recommendations
- `data-validator` - Quality assurance

**Tier 2 - Analysis (Enhanced):**
- `treatment-analyst` - Statistical effectiveness analysis
- `crisis-manager` - Crash detection and protocols
- `pacing-coach` - Real-time activity guidance

**Tier 3 - Support (Advanced):**
- `hypothesis-generator` - Subtype analysis
- `research-monitor` - Literature tracking
- `benefit-navigator` - Disability documentation
- `caregiver-coordinator` - Family/medical team support

### Key Files

- **Case data:** `.claude/case-data/` (local only, not committed)
- **Recommendations:** `contents/appendices/appendix-j-recommendations.tex`
- **Personal case:** `contents/appendices/appendix-i-*.tex`
- **System docs:** `.claude/systems/medical-agent-system.md`

### Important Notes

- **All recommendations are preliminary** - require physician review
- **Privacy protected** - case data stored locally, not in git
- **Evidence-based** - all recommendations cite peer-reviewed research
- **Statistical rigor** - treatment analysis uses proper effect sizes and significance testing
- **Safety-focused** - crisis detection, emergency protocols, contraindication checking

## Medical Documentation Guidelines

When working with ME/CFS content:
- Medical terminology should be added to LTeX dictionary (use `dictionary-manager`)
- **All clinical claims require citations** - use `literature-researcher` + `literature-manager`
- Patient-reported data should be clearly distinguished from clinical findings
- Use appropriate theorem-like environments from infolead-latex-templates for diagnostic criteria
- Maintain neutral, evidence-based tone throughout
- Consult `template-advisor` when choosing environments
- **Always include certainty assessment** when citing research
