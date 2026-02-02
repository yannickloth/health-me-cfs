# Cycle Dynamics Research Directions: Execution Plan

**Purpose**: Cost-optimized agent assignment for implementing the 12 research directions into the ME/CFS documentation.

**Principle**: Use the cheapest agent capable of the task. Haiku for mechanical work, Sonnet for judgment calls, Opus only for complex reasoning.

---

## Agent Cost Tiers

| Tier | Agent | Cost | Use When |
|------|-------|------|----------|
| 1 | `haiku-general` | Lowest | Pattern matching, simple transforms, explicit instructions |
| 2 | `sonnet-general` | Medium | Reasoning, analysis, judgment calls, writing |
| 3 | `opus-general` | Highest | Complex proofs, detecting subtle flaws, high-stakes decisions |

**Rule**: Default to lowest tier that can handle the task reliably.

---

## Phase 1: Tier 1 Priorities (Immediate Clinical Utility)

### Direction 3: Cycle Interference Strategies

| Task | Agent | Rationale |
|------|-------|-----------|
| Literature search for combination treatment studies | `literature-integrator` | Specialized for paper search |
| Draft multi-target protocol section | `sonnet-general` | Requires clinical judgment |
| Create cycle interaction TikZ diagram | `tikz-illustrator` | Specialized |
| Safety considerations section | `medical-advisor` | Clinical safety review |
| Add to Ch18 (emerging therapies) | `chapter-integrator` | Specialized |

**Estimated tasks**: 5 | **Opus needed**: 0

---

### Direction 4: Personalized Cycle Mapping

| Task | Agent | Rationale |
|------|-------|-----------|
| Create diagnostic battery table | `haiku-general` | Mechanical table formatting |
| Design cycle status dashboard figure | `tikz-illustrator` | Specialized |
| Write clinical decision algorithm | `sonnet-general` | Clinical reasoning |
| Add to diagnostic chapter (Ch4/Ch5) | `chapter-integrator` | Specialized |
| Estimate diagnostic costs | `haiku-general` | Simple calculation/lookup |

**Estimated tasks**: 5 | **Opus needed**: 0

---

### Direction 5: Crash Dose-Response Relationship

| Task | Agent | Rationale |
|------|-------|-----------|
| Literature search for crash severity studies | `literature-integrator` | Specialized |
| Create crash severity classification table | `sonnet-general` | Clinical judgment needed |
| Draft emergency crash management protocol | `medical-advisor` | Clinical safety |
| Create dose-response curve figure | `tikz-illustrator` | Specialized |
| Add to pacing chapter (Ch14b) | `chapter-integrator` | Specialized |
| Patient education summary | `haiku-general` | Simple extraction/reformatting |

**Estimated tasks**: 6 | **Opus needed**: 0

---

### Direction 8: Reversibility Windows

| Task | Agent | Rationale |
|------|-------|-----------|
| Create reversibility mechanism table | `sonnet-general` | Requires synthesis |
| Literature search for recovery case series | `literature-integrator` | Specialized |
| Write realistic expectations section | `sonnet-general` | Nuanced clinical writing |
| Add to treatment principles (Ch14/Ch15) | `chapter-integrator` | Specialized |
| Patient education materials | `haiku-general` | Simple reformatting |

**Estimated tasks**: 5 | **Opus needed**: 0

---

## Phase 2: Tier 2 Priorities (High Impact, Medium Timeline)

### Direction 1: Quantitative Cycle Gain Measurement

| Task | Agent | Rationale |
|------|-------|-----------|
| Literature search for recovery kinetics data | `literature-integrator` | Specialized |
| Draft diagnostic protocol section | `sonnet-general` | Clinical protocol design |
| Create decision tree figure | `tikz-illustrator` | Specialized |
| Validate mathematical formulas | `math-verifier` | Specialized |
| Add to treatment planning chapter | `chapter-integrator` | Specialized |

**Estimated tasks**: 5 | **Opus needed**: 0 (math-verifier handles proofs)

---

### Direction 11: Long COVID Comparison

| Task | Agent | Rationale |
|------|-------|-----------|
| Literature search comparing LC and ME/CFS | `literature-integrator` | Specialized |
| Create stage comparison table | `sonnet-general` | Clinical synthesis |
| Discuss diagnostic criteria overlap | `sonnet-general` | Analysis |
| Add to pathophysiology chapter (Ch13) | `chapter-integrator` | Specialized |

**Estimated tasks**: 4 | **Opus needed**: 0

---

### Direction 7: Temporal Dynamics of Cycle Recruitment

| Task | Agent | Rationale |
|------|-------|-----------|
| Literature search for natural history studies | `literature-integrator` | Specialized |
| Draft prospective cohort study protocol | `sonnet-general` | Study design |
| Create longitudinal tracking figure | `tikz-illustrator` | Specialized |
| Add to integrative models (Ch13) | `chapter-integrator` | Specialized |

**Estimated tasks**: 4 | **Opus needed**: 0

---

### Direction 9: Pediatric Protection Mechanisms

| Task | Agent | Rationale |
|------|-------|-----------|
| Literature search pediatric vs adult ME/CFS | `literature-integrator` | Specialized |
| Create age-related comparison table | `sonnet-general` | Synthesis |
| Design adult intervention protocol | `medical-advisor` | Clinical judgment |
| Add to pathophysiology chapter | `chapter-integrator` | Specialized |

**Estimated tasks**: 4 | **Opus needed**: 0

---

## Phase 3: Tier 3 Priorities (Specialized/Advanced)

### Direction 2: Critical Transition Theory (Mathematical)

| Task | Agent | Rationale |
|------|-------|-----------|
| Literature search for critical transitions in disease | `literature-integrator` | Specialized |
| Draft mathematical appendix | `opus-general` | **Complex math derivation** |
| Verify bifurcation model | `math-verifier` | Specialized proof checking |
| Generate phase space diagrams | `tikz-illustrator` | Specialized |
| Write clinical interpretation | `sonnet-general` | Translation for clinicians |
| Add to appendix | `chapter-integrator` | Specialized |

**Estimated tasks**: 6 | **Opus needed**: 1 (mathematical derivation)

---

### Direction 10: Computational Model (Simulation)

| Task | Agent | Rationale |
|------|-------|-----------|
| Design model architecture | `opus-general` | **Complex system design** |
| Write equations and parameter definitions | `opus-general` | **Mathematical modeling** |
| Literature search for validation data | `literature-integrator` | Specialized |
| Create model diagram | `tikz-illustrator` | Specialized |
| Validate model logic | `math-verifier` | Specialized |

**Estimated tasks**: 5 | **Opus needed**: 2

---

### Direction 6: Genetic Cycle Gain Modifiers

| Task | Agent | Rationale |
|------|-------|-----------|
| Literature search ME/CFS genetics | `literature-integrator` | Specialized |
| Create genetic risk table | `haiku-general` | Mechanical table |
| Write limitations section | `sonnet-general` | Nuanced writing |
| Ethical considerations | `sonnet-general` | Requires judgment |
| Add to genetics chapter (Ch12) | `chapter-integrator` | Specialized |

**Estimated tasks**: 5 | **Opus needed**: 0

---

### Direction 12: Epigenetic Reversal Strategies

| Task | Agent | Rationale |
|------|-------|-----------|
| Literature search epigenetic therapies | `literature-integrator` | Specialized |
| Discuss HDAC inhibitor mechanisms | `sonnet-general` | Scientific writing |
| Create risk-benefit table | `medical-advisor` | Clinical safety |
| Safety review | `medical-advisor` | Critical safety |
| Add to Ch18 with strong cautions | `chapter-integrator` | Specialized |

**Estimated tasks**: 5 | **Opus needed**: 0

---

## Summary: Agent Usage by Phase

| Phase | Total Tasks | Haiku | Sonnet | Opus | Specialized |
|-------|-------------|-------|--------|------|-------------|
| Phase 1 | 21 | 4 | 5 | 0 | 12 |
| Phase 2 | 17 | 0 | 6 | 0 | 11 |
| Phase 3 | 21 | 1 | 5 | 3 | 12 |
| **Total** | **59** | **5** | **16** | **3** | **35** |

**Cost Distribution**:
- Specialized agents: 59% (purpose-built, efficient)
- Sonnet: 27% (default reasoning tier)
- Haiku: 8% (mechanical tasks)
- Opus: 5% (only where essential)

---

## Execution Protocol

### Per-Direction Workflow

1. **Start**: Load direction from research-directions.md
2. **Literature**: Run `literature-integrator` for all searches
3. **Content**: Draft with appropriate tier agent
4. **Figures**: Create with `tikz-illustrator`
5. **Safety**: Review with `medical-advisor` if clinical
6. **Math**: Verify with `math-verifier` if equations
7. **Integrate**: Add to chapters with `chapter-integrator`
8. **Review**: Final pass with `content-reviewer`

### Parallelization Opportunities

Within each phase, these can run in parallel:
- All literature searches (different topics)
- Independent figure creation
- Independent section drafting

Sequential dependencies:
- Literature search → content drafting
- Content drafting → chapter integration
- All tasks → content review

---

## Quality Gates

Before marking a direction complete:

1. [ ] All literature searches returned relevant citations
2. [ ] Content passes scientific rigor check
3. [ ] Figures compile without TikZ errors
4. [ ] Medical content reviewed by `medical-advisor`
5. [ ] Mathematical content verified by `math-verifier`
6. [ ] Chapter integration successful (nix build passes)
7. [ ] Content reviewer approves consistency

---

## Risk Mitigation

| Risk | Mitigation |
|------|------------|
| Haiku produces poor quality | Review output; escalate to Sonnet if needed |
| Literature search returns nothing | Broaden search terms; try web search fallback |
| TikZ diagrams fail | Use `syntax-fixer` then `tikz-validator` |
| Math errors | `math-verifier` catches; escalate to Opus if needed |
| Clinical inaccuracies | `medical-advisor` mandatory for all clinical content |

---

## Recommended Execution Order

**Batch 1** (can run in parallel):
- Direction 3: Cycle Interference (literature search)
- Direction 4: Personalized Mapping (diagnostic table)
- Direction 5: Crash Dose-Response (literature search)
- Direction 8: Reversibility (literature search)

**Batch 2** (after literature returns):
- All content drafting for Tier 1 directions
- All figure creation

**Batch 3** (after content):
- Chapter integration for Tier 1
- Content review

**Repeat for Phase 2, then Phase 3**

---

## Notes

- The research-directions.md document (v2.0) already contains full scientific development
- This plan is for **implementing those directions into the manuscript**
- Estimated total: 59 agent invocations across 12 directions
- Opus usage minimized to 3 essential tasks (mathematical derivations and complex modeling)
