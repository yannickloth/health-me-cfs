> **Style rule:** Telegraphic — tables/lists/symbols > prose.

# Systems Index

Lazy-load reference for all major subsystems. Load details on demand.

---

## Agents

Full index + specs: `.claude/agents/README.md`

---

## Formalization System

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
- Output structure + environments: `.claude/template-proposal-formalization-environments.md`

---

## LaTeX Template Integration

`infolead-latex-templates/` (git submodule) — all preamble config and theorem environments.

- Always check template before creating custom environments
- **Triggers:** "help me choose an environment" · "should I use template or project-specific?"
- **Agent:** `template-advisor`
- **Refs:** `infolead-latex-templates/README.md`, `infolead-latex-templates/theorems.tex`

---

## Literature Management System

**Triggers:** "Find and integrate papers on [topic]" · "Add citations for [claim]" · "Search for research on [mechanism]"

| Agent | Role |
|-------|------|
| `literature-integrator` | Search + download |
| `chapter-integrator` | Insert into chapters |
| `scientific-insight-generator` | Extract insights |
| `meta-analysis-coordinator` | Synthesize across papers |
| `evidence-mapper` | Citation↔model index |

Full pipeline: `/integrate-topic` skill (`.claude/skills/integrate-topic/SKILL.md`)

---

## Medical Case Management System

**Triggers:** "Log today's symptoms..." · "Help me plan my activities" · "Analyze my treatment trial" · "I'm crashing, what do I do?" · "What's new in ME/CFS research?"

**Agents:** `case-documenter`, `medical-advisor`, `treatment-analyst`, `crisis-manager`, `pacing-coach`, `data-validator`, `hypothesis-generator`, `research-monitor`, `benefit-navigator`, `caregiver-coordinator`

- System docs: `.claude/systems/medical-agent-system.md`
- Case data: `.claude/case-data/`
- Recommendations: `appendix-j-recommendations.tex`
- Personal case data: `appendix-i-*.tex`

**IMPORTANT:** All recommendations preliminary — require physician review before implementation.

---

## Medical Documentation Guidelines

| Rule | Detail |
|------|--------|
| Medical terminology | Use `dictionary-manager` |
| Clinical claims | Require citations via `literature-integrator` |
| Patient data | Clearly distinguish from clinical findings |
| Diagnostic criteria | Use theorem-like environments (consult `template-advisor`) |
| Tone | Neutral, evidence-based throughout |
| Research citations | Always include certainty assessment |

Full guidelines: `.claude/writing-style.md`

---

## Document Quality and Publication

| Trigger | Agent |
|---------|-------|
| "Check terminology consistency for [term]" | `terminology-harmonizer` |
| "Prepare for publication / check submission readiness" | `publication-preparer` |
| "Find empty sections or stubs" | `document-health-monitor` |
| "Synthesize research gaps into agenda" | `research-gap-synthesizer` |
| "Synthesize evidence across papers on [topic]" | `meta-analysis-coordinator` |

---

## Biomedical Review System

20-category review: scientific accuracy, medical safety, biological precision, patient-facing content safety.

**Trigger:** `/review-biomedical <scope>` → runs all 20 categories sequentially on target files

| Category | Agents |
|----------|--------|
| Domain auditors | `pathway-auditor`, `immunology-auditor`, `biochemistry-auditor`, `neuro-auditor`, `microbiome-auditor`, `biomarker-auditor`, `epidemiology-auditor`, `comorbidity-auditor` |
| Safety auditors | `safety-auditor`, `pharmacology-auditor`, `patient-safety-auditor` |
| Rigor auditors | `falsifiability-auditor`, `bibliography-auditor` |

Full phase breakdown + execution protocol: `.claude/skills/review-biomedical/SKILL.md`
