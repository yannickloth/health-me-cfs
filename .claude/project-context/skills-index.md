> **Style rule:** Telegraphic — tables/lists/symbols > prose.

# Skills and Multi-Step Operations

All pipelines are skills or agents. Invoke via `/skill-name`.

## Skills

| Skill | Trigger |
|-------|---------|
| `/formalization-pipeline` | "formalize [process/chapter]" · "build causal model" |
| `/integrate-topic` | "integrate [topic] into paper" |
| `/tikz-illustration-pipeline` | "create a TikZ diagram showing [description]" |
| `/fix-ci` | "fix github action errors" · "nix build failed" · "ci failed" |
| `/pre-commit` | "run pre-commit checks" |
| `/section-review` | "review section [X]" |
| `/full-document-review` | "full document review" |
| `/review-biomedical <scope>` | biomedical 20-category review |
| `/medication-differential-analysis` | "what does LDN response tell us" · "differential analysis for all meds" · "retroactive differential" |

## Agents (Direct Invocation)

| Agent | Trigger |
|-------|---------|
| `environment-selection` | "help me choose an environment" |
| `template-advisor` | "should I use template or project-specific?" |
