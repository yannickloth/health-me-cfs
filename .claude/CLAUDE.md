> **Style rule:** All `.claude/` config files must use schematic, telegraphic style — tables/lists/symbols > prose, short phrases, filler words dropped. Goal: minimize context window consumption.

# CLAUDE.md

ME/CFS documentation (Typst-based) with automatic subagent delegation for quality assurance.

---

## Build

```bash
nix build              # → result/ms.pdf
nix run .#clean        # Clean artifacts
```

## Context and Cost Management

MUST proactively monitor token usage and optimize session costs.

### Monitoring Requirements

CRITICAL: Check EVERY `<system_warning>Token usage: X/200000` tag and calculate percentage.

MANDATORY: Start EVERY response with context status (before any other content):

```text
📊 Context: X.X% (XXX,XXX / 200,000 tokens)
```

- Extract from: `<system_warning>Token usage: 152000/200000; 48000 remaining</system_warning>`
- Calculate: `percentage = (tokens_used / 200000) * 100`
- Check every response with tool use, and periodically
- >35% → IMMEDIATELY evaluate cost trade-offs (compaction at ~100k tokens; 35% of 200k = 70% of effective limit)

| Cost type | Formula |
|-----------|---------|
| Compaction | `~current_tokens * 0.000015` (input) + summary generation |
| Fresh start | `~10000 tokens * 0.000003` (cached) + `~5000 continuation * 0.000015` |

### Decision Logic

| Condition | Action |
|-----------|--------|
| Fresh start cheaper (typically >35% unique history) | Auto-generate continuation prompt; present to user; instruct: `/rename 'session-name'` → `/clear` → paste |
| Continuing cheaper (typically <35% or much cached) | Continue; mention "continuing is more cost-effective"; auto-compact triggers ~50% (100k) |

Continuation prompt must include: current project/task, active files + state, decisions + rationale, next steps, critical context (NOT full conversation).

### Continuation Prompt Template

```text
Continue [project/task]. State: [1-2 sentence summary].
Files: [key files with brief status].
Decisions: [critical choices made].
Next: [specific next steps].
Context: [essential info only].
```

Goal: continuation prompt <5% of current context size.

### Triggering Behavior

Thresholds halved: compaction at ~100k tokens (not 200k). 70% of actual limit (100k) = 70k tokens = 35% of displayed 200k max.

| Context % | Tokens | Action |
|-----------|--------|--------|
| 35–39% | ~70–78k | Mention monitoring; continue normally |
| 40–44% | ~80–88k | Evaluate costs; inform user; generate prompt if switching cheaper |
| ≥45% | ~90k+ | ALWAYS generate continuation prompt; switching almost always cheaper |

### Hook Integration

`PostToolUse` hook: `.claude/hooks/context-cost-monitor.sh` → automated threshold warnings. Acknowledge and act on hook warnings.

## Project-Specific Agents (Lazy-Load)

Full details: [`.claude/agents/README.md`](.claude/agents/README.md) — agent index and specifications.

## Multi-Step Operations

All pipelines are skills or agents.

| Skill | Trigger |
|-------|---------|
| `/formalization-pipeline` | "formalize [process/chapter]" · "build causal model" |
| `/integrate-topic` | "integrate [topic] into paper" |
| `/tikz-illustration-pipeline` | "create a TikZ diagram showing [description]" |
| `/pre-commit` | "run pre-commit checks" |
| `/section-review` | "review section [X]" |
| `/full-document-review` | "full document review" |

Agent: `environment-selection` — "help me choose an environment"

## Formalization System (Lazy-Load)

Builds formal causal and quantitative models of ME/CFS pathophysiology with explicit uncertainty quantification.

**Triggers:** "Formalize [process/chapter]" · "Build causal model for [mechanism]" · "Create EPC for [biological process]" · "Model [phenomenon] mathematically"

| Agent | Role |
|-------|------|
| `formalization-advisor` | Assess first |
| `causal-model-builder` | Build DAG |
| `epc-model-builder` | Build EPC |
| `quantitative-model-builder` | Build ODE/math model |
| `model-integrator` | Insert into chapters |
| `model-auditor` | Cross-validate DAG↔EPC↔ODE |
| `uncertainty-analyst` | Certainty propagation |

- Full workflow: `.claude/workflows/formalization-pipeline.md`
- Methodology + decision matrices: `.claude/FORMALIZATION_METHODOLOGY.md`
- Output structure + LaTeX environments: `.claude/template-proposal-formalization-environments.md`

## Lazy-Loading Principle

Inline documentation cost > lazy search + read on demand.

- Base CLAUDE.md: focused, minimal
- Full details: dedicated files
- Load on demand when task requires

## LaTeX Template Integration (Lazy-Load)

`infolead-latex-templates/` (git submodule) — all preamble config and theorem environments.

- Always check template before creating custom environments
- **Triggers:** "help me choose an environment" · "should I use template or project-specific?"
- **Agent:** `template-advisor` — deciding template vs. project-specific, creating environments, finding fitting environment
- **Refs:** `infolead-latex-templates/README.md`, `infolead-latex-templates/theorems.tex`

## Literature Management System (Lazy-Load)

Auto-trigger when finding research papers, PDFs, or online references.

**Triggers:** "Find and integrate papers on [topic]" · "Add citations for [claim]" · "Search for research on [mechanism]"

| Agent | Role |
|-------|------|
| `literature-integrator` | Search + download |
| `chapter-integrator` | Insert into chapters |
| `scientific-insight-generator` | Extract insights |
| `meta-analysis-coordinator` | Synthesize across papers |
| `evidence-mapper` | Citation↔model index |

Full pipeline: `/integrate-topic` skill (`.claude/skills/integrate-topic/SKILL.md`)

## Scrape Registry (MANDATORY)

**Location:** `registry/scrape-registry.md`

MUST use whenever scraping websites or accessing URLs for content integration. Prevents re-processing already-integrated content across sessions.

**Before scraping any URL:**
- Check `registry/scrape-registry.md` — URL already listed with `Integrated` date → skip, unless source shows newer publication date than `Scraped` date

**After integrating content from a URL:**
1. Add URL to registry if absent
2. Set `Integrated` → today's date
3. Set `Target` → chapter(s) where integrated

**After scraping a new source:**
1. Add source to Sources table with `Last Scraped` date
2. Add all discovered article URLs to Articles table

**Columns:** `URL | Source | Scraped | Integrated | Target`
- `Integrated = —` → pending
- Re-scrape + source newer than `Scraped` → update `Scraped`, reset `Integrated` to `—`

Per-source catalog files (e.g. `content-staging/mecfsscience-org-catalog.md`) are temporary — delete after all entries transferred to registry.

## Medical Case Management System (Lazy-Load)

Medical agent system for personal ME/CFS case management, documentation, and decision support.

**Triggers:** "Log today's symptoms..." · "Help me plan my activities" · "Analyze my treatment trial" · "I'm crashing, what do I do?" · "What's new in ME/CFS research?"

**Agents:** `case-documenter`, `medical-advisor`, `treatment-analyst`, `crisis-manager`, `pacing-coach`, `data-validator`, `hypothesis-generator`, `research-monitor`, `benefit-navigator`, `caregiver-coordinator`

- System docs: `.claude/systems/medical-agent-system.md` (architecture, agent tiers, safety protocols, privacy)
- Case data: `.claude/case-data/`
- Recommendations: `appendix-j-recommendations.tex`
- Personal case data: `appendix-i-*.tex`

**IMPORTANT:** All recommendations preliminary — require physician review before implementation.

## Medical Documentation Guidelines (Lazy-Load)

| Rule | Detail |
|------|--------|
| Medical terminology | Use `dictionary-manager` |
| Clinical claims | Require citations via `literature-integrator` |
| Patient data | Clearly distinguish from clinical findings |
| Diagnostic criteria | Use theorem-like environments (consult `template-advisor`) |
| Tone | Neutral, evidence-based throughout |
| Research citations | Always include certainty assessment |

Full guidelines: `.claude/writing-style.md`

## Document Quality and Publication (Lazy-Load)

| Trigger | Agent |
|---------|-------|
| "Check terminology consistency for [term]" | `terminology-harmonizer` |
| "Prepare for publication / check submission readiness" | `publication-preparer` |
| "Find empty sections or stubs" | `document-health-monitor` |
| "Synthesize research gaps into agenda" | `research-gap-synthesizer` |
| "Synthesize evidence across papers on [topic]" | `meta-analysis-coordinator` |

## Biomedical Review System (Lazy-Load)

20-category review: scientific accuracy, medical safety, biological precision, patient-facing content safety.

**Trigger:** `/review-biomedical <scope>` → runs all 20 categories sequentially on target files

| Category | Agents |
|----------|--------|
| Domain auditors | `pathway-auditor`, `immunology-auditor`, `biochemistry-auditor`, `neuro-auditor`, `microbiome-auditor`, `biomarker-auditor`, `epidemiology-auditor`, `comorbidity-auditor` |
| Safety auditors | `safety-auditor`, `pharmacology-auditor`, `patient-safety-auditor` |
| Rigor auditors | `falsifiability-auditor`, `bibliography-auditor` |

Full phase breakdown + execution protocol: `.claude/skills/review-biomedical/SKILL.md`
