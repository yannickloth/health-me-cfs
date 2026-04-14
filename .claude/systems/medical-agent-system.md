# Medical Agent System

ME/CFS case management system: specialized AI agents for documentation, analysis, medical decision support.

**IMPORTANT:** All recommendations preliminary — require physician review before implementation. System is documentation/decision-support tool, NOT replacement for medical care.

## System Overview

10 specialized agents in 3 tiers.

### Tier 1: Core Documentation and Safety (Essential)

| # | Agent | Model | Role |
|---|-------|-------|------|
| 1 | case-documenter | sonnet | Daily symptom/medication/activity logging |
| 2 | medical-advisor | opus | Evidence-based treatment recommendations |
| 3 | data-validator | haiku | Data quality assurance |

### Tier 2: Analysis and Planning (Enhanced functionality)

| # | Agent | Model | Role |
|---|-------|-------|------|
| 4 | treatment-analyst | opus | Statistical analysis of treatment effectiveness |
| 5 | crisis-manager | sonnet | Severe crash detection + emergency protocols |
| 6 | pacing-coach | haiku | Real-time activity guidance + PEM prevention |

### Tier 3: Support and Insights (Advanced features)

| # | Agent | Model | Role |
|---|-------|-------|------|
| 7 | hypothesis-generator | opus | Subtype analysis + mechanistic insights |
| 8 | research-monitor | sonnet | Track new ME/CFS research publications |
| 9 | benefit-navigator | sonnet | Disability + accommodation documentation |
| 10 | caregiver-coordinator | sonnet | Family/caregiver education + support |

## Agent Interaction Map

**Research monitoring:**

- research-monitor → (new papers) → medical-advisor
- research-monitor → (new papers) → hypothesis-generator

**Core documentation flow:**

- User → case-documenter ← data-validator (validates)
- case-documenter → treatment-analyst → hypothesis-generator
- case-documenter → medical-advisor → hypothesis-generator
- case-documenter → pacing-coach
- case-documenter → crisis-manager → medical-advisor, pacing-coach, caregiver-coordinator → benefit-navigator

**Output:** All agents → User (via LaTeX documents + markdown reports)

## Data Flow

User Daily Input → case-documenter (logs) → data-validator (checks) → {pacing-coach (guidance), crisis-manager (monitors), treatment-analyst (analyzes), hypothesis-generator (patterns), medical-advisor (recommendations)} → User (Appendix J, reports)

## When to Use Each Agent

### Daily Operations

| Trigger | Frequency | Purpose | Output |
|---------|-----------|---------|--------|
| `"case-documenter: log today's symptoms: energy 3/10, pain 5/10"` | Daily | Medical record | `.claude/case-data/symptoms/YYYY-MM-DD.yaml` |
| `"pacing-coach: help me plan today's activities"` | Daily / pre-activity | Stay within energy envelope | Activity plans, real-time guidance |

### Weekly Monitoring

| Trigger | Frequency | Purpose | Output |
|---------|-----------|---------|--------|
| `"data-validator: weekly report"` | Weekly (auto) | Ensure data quality | Quality report + action items |
| `"research-monitor: what's new this week?"` | Weekly (auto) | Stay current | Weekly research alert |

### As-Needed Analysis

| Trigger | Use When | Purpose | Output |
|---------|----------|---------|--------|
| `"medical-advisor: I'm having worse [symptom], what should we try?"` | Symptoms change / need treatment guidance | Evidence-based recommendations | Appendix J recommendation sections |
| `"treatment-analyst: analyze my [treatment] trial"` | After trial complete (typically 8–12 weeks) | Determine effectiveness | Statistical analysis + continue/stop recommendation |
| `"hypothesis-generator: what's my ME/CFS subtype?"` | Every 3–6 months / pattern changes | Identify underlying mechanisms | Subtype analysis + testing recommendations |
| `"crisis-manager: I'm crashing, what do I do?"` | Severe exacerbations | Emergency protocols + recovery guidance | Crisis management plan, ER documentation if needed |

### Administrative Needs

| Trigger | Use When | Purpose | Output |
|---------|----------|---------|--------|
| `"benefit-navigator: generate disability application documentation"` | Applying for benefits/accommodations | Professional medical evidence summaries | Functional assessments, application support |
| `"caregiver-coordinator: create guide for my new caregiver"` | Onboarding caregivers / educating family | Clear instructions + education | Caregiver guides, specialist summaries |

## File System Organization

```
health-me-cfs/
├── .claude/
│   ├── agents/                          # Agent definitions
│   │   ├── case-documenter.md
│   │   ├── medical-advisor.md
│   │   ├── treatment-analyst.md
│   │   ├── crisis-manager.md
│   │   ├── pacing-coach.md
│   │   ├── data-validator.md
│   │   ├── hypothesis-generator.md
│   │   ├── research-monitor.md
│   │   ├── benefit-navigator.md
│   │   └── caregiver-coordinator.md
│   │
│   ├── systems/
│   │   └── medical-agent-system.md      # This file
│   │
│   └── case-data/                       # Patient data (not committed to git)
│       ├── symptoms/
│       │   ├── 2026-01-23.yaml
│       │   ├── 2026-01-24.yaml
│       │   └── ...
│       ├── medications/
│       │   ├── current-regimen.yaml
│       │   └── history.yaml
│       ├── patterns/
│       │   └── analysis-summary.md
│       ├── research-alerts/
│       │   ├── weekly/
│       │   ├── monthly/
│       │   └── breakthrough-alerts/
│       └── validation-reports/
│           └── weekly/
│
├── contents/
│   └── appendices/
│       ├── appendix-i-personal-symptoms.tex       # case-documenter updates
│       ├── appendix-i-a-medical-management.tex    # case-documenter updates
│       ├── appendix-i-b-clinical-findings.tex     # case-documenter updates
│       ├── appendix-i-c-case-analysis.tex         # hypothesis-generator writes
│       └── appendix-j-recommendations.tex          # medical-advisor writes
│
└── references.bib                                  # All agents add citations
```

## Typical Workflow Examples

### Example 1: Daily Routine

```
Morning:
User: "case-documenter: log morning - energy 3/10, pain 4/10, brain fog 6/10,
       took LDN 4.5mg and CoQ10 200mg"

Mid-day:
User: "pacing-coach: I want to cook lunch, is that safe?"
Coach: "Your energy is 3/10. Cooking should take ~15min. That's within your
        envelope but plan to rest 30min after. Use sitting techniques."

Evening:
User: "case-documenter: cooked lunch 15min, rested 3 hours, energy dropped to
       2/10 by evening"

Automated:
data-validator: Daily check (runs automatically)
```

### Example 2: New Symptom Management

```
User: "medical-advisor: My orthostatic intolerance is getting much worse over
       the past 2 weeks, what should we try?"

medical-advisor:
1. Reviews case-documenter logs for 2-week pattern
2. Searches literature for orthostatic intolerance treatments in ME/CFS
3. Generates recommendation document with:
   - Increased salt/fluid intake (immediate, low-risk)
   - Compression garments (immediate, low-risk)
   - Fludrocortisone (discuss with doctor, moderate evidence)
   - Tilt table testing (diagnostic, high priority)
4. Writes to appendix-j-recommendations.tex
5. Adds citations to references.bib
6. Generates "questions for your doctor" list

User: Takes recommendation document to doctor appointment
```

### Example 3: Treatment Trial

```
Week 0:
User: "I'm starting fludrocortisone 0.1mg today based on doctor's prescription"
case-documenter: Logs treatment start date

Weeks 1-8:
case-documenter: Logs daily symptoms + medication adherence
data-validator: Weekly quality checks

Week 8:
User: "treatment-analyst: analyze my fludrocortisone trial"

treatment-analyst:
1. Reads baseline data (4 weeks pre-treatment)
2. Reads treatment period data (8 weeks)
3. Calculates effect sizes for each symptom
4. Runs statistical significance tests
5. Generates graphs
6. Writes analysis to appendix-j
7. Recommendation: "Continue - moderate improvement in orthostatic symptoms
   (d=+0.62, p=0.02), no significant adverse effects"

User: Discusses with doctor, decides to continue treatment
```

### Example 4: Crash Management

```
User: "I walked to the mailbox yesterday and now I'm crashing badly - energy 1/10,
       can barely move"

crisis-manager:
1. Assesses severity (critical: energy ≤1/10)
2. Generates immediate crash protocol:
   - Complete bed rest
   - Dark, quiet environment
   - Minimal stimulation
   - Caregiver assistance for all tasks
3. Provides recovery timeline prediction (based on historical pattern: 7-10 days)
4. Monitors for red flags requiring medical attention
5. Alerts pacing-coach to adjust energy envelope when recovered

Day 3 of crash:
crisis-manager: "Symptoms stabilizing. Continue rest protocol. Typical recovery:
                 4-7 more days based on your pattern."

Day 10:
User: "Energy back to 4/10 baseline"
case-documenter: Logs recovery
pacing-coach: "Your envelope is now more limited. Reduce baseline activity by 20%
               to prevent recurrence."
```

### Example 5: Subtype Analysis

```
User: "hypothesis-generator: analyze my case and propose my subtype"

hypothesis-generator:
1. Reviews 3 months of case-documenter data
2. Identifies dominant symptom clusters
3. Searches literature for subtype classifications
4. Compares patient pattern to published subtypes
5. Generates hypothesis:
   - Primary: Autonomic-predominant subtype
   - Evidence: Severe orthostatic intolerance, HR patterns, symptom timing
   - Predictions: Abnormal tilt table, low HRV, reduced cerebral perfusion
   - Recommended tests: Tilt table, Holter monitor, autonomic workup
   - Expected treatment response: Better to autonomic drugs than mitochondrial support
6. Writes detailed analysis to appendix-i-c

User: "medical-advisor: based on this subtype analysis, what should I try?"

medical-advisor:
1. Reviews hypothesis-generator analysis
2. Searches for autonomic-targeted treatments
3. Generates recommendations prioritized by subtype:
   - High priority: Compression garments, salt/fluid, fludrocortisone
   - Medium priority: Midodrine, beta-blockers
   - Lower priority (already tried with poor response): CoQ10, other mitochondrial
4. Includes "Questions for doctor" about autonomic specialist referral
```

## Agent Communication Patterns

### Sequential Processing
```
case-documenter → data-validator → treatment-analyst → medical-advisor
(Each step depends on previous)
```

### Parallel Processing
```
case-documenter → data-validator
                       ↓
              ┌────────┼────────┬────────────┐
              ↓        ↓        ↓            ↓
       pacing-coach  crisis  treatment  hypothesis
                    manager  analyst   generator
```

### Request-Response
```
User → medical-advisor → (spawns) → literature-researcher
                      ← (returns)
     ← recommendation
```

## Privacy and Security

### Data Storage

- All case data stored locally in `.claude/case-data/`
- Add `.claude/case-data/` to `.gitignore` (personal health data)
- Appendix I sections can be redacted before sharing document
- No cloud storage or external transmission

### Anonymization

- Use "Patient" or initials in generated documents
- Dates can be offset (e.g., "Day 0" instead of actual dates)
- Remove identifying information before sharing with researchers

### Access Control

- Keep repository private
- Encrypt backups
- Consider using encrypted filesystem for `.claude/case-data/`

## Quality Assurance

### Built-in Safeguards

| # | Safeguard |
|---|-----------|
| 1 | **data-validator** runs before any analysis |
| 2 | **medical-advisor** always includes: evidence quality ratings · contraindications · "Preliminary - requires physician review" warnings · questions for doctor |
| 3 | **treatment-analyst** uses rigorous statistical methods |
| 4 | **hypothesis-generator** explicitly states confidence levels |
| 5 | All recommendations include citations |

### Human Oversight

- **All medical decisions** require physician approval
- Agents provide analysis for informed patient-doctor discussion
- User maintains authority over all choices
- Generated documents are preliminary evidence summaries

## Maintenance and Updates

### Regular Tasks

| Cadence | Tasks |
|---------|-------|
| Daily | case-documenter logging · data-validator quick check (auto) |
| Weekly | data-validator comprehensive report (auto) · research-monitor search (auto) · review + address data quality issues |
| Monthly | research-monitor comprehensive summary · review treatment-analyst trends · update medical-advisor with new evidence |
| Quarterly | hypothesis-generator reassessment · comprehensive case review · update benefit documentation if needed |

### System Evolution

As case data accumulates:

- treatment-analyst predictions → more accurate
- hypothesis-generator → identifies patterns more reliably
- pacing-coach → learns individual trigger thresholds
- crisis-manager → predicts recovery times better

## Getting Started

### Initial Setup

1. **Start with case-documenter**

   ```
   "case-documenter: initialize my case with current medications and baseline symptoms"
   ```

2. **Establish baseline** (2–4 weeks daily logging): symptoms · medications · activities · PEM episodes

3. **Run initial analyses**

   ```
   "hypothesis-generator: analyze my initial data and propose subtype"
   "pacing-coach: calculate my energy envelope from baseline data"
   ```

4. **Set up weekly automation:** data-validator weekly reports · research-monitor weekly alerts

### First Treatment Recommendation

After 4 weeks baseline:

```
"medical-advisor: review my baseline data and suggest initial treatment priorities"
```

### Ongoing Use

| Cadence | Agents |
|---------|--------|
| Daily | case-documenter + pacing-coach |
| Weekly | Review data-validator + research-monitor |
| As needed | medical-advisor, treatment-analyst, others |
| Crisis | crisis-manager |

## Troubleshooting

| Issue | Resolution |
|-------|-----------|
| "Data quality insufficient for analysis" | Run data-validator → identify missing/incorrect · fill gaps or document reasons · ensure ≥4 weeks consistent logging |
| "Agent recommendation seems wrong" | Verify latest case data access · verify case-documenter logs accurate · consider model update (haiku/sonnet/opus) · remember: all recommendations preliminary, for doctor review |
| "Agents providing conflicting recommendations" | Normal — different perspectives: hypothesis-generator (theoretical) · medical-advisor (evidence-based) · pacing-coach (activity) → discuss all with physician |

## Model Selection Rationale

| Model | Use | Agents |
|-------|-----|--------|
| haiku | Fast, frequent | pacing-coach, data-validator |
| sonnet | Balanced reasoning | case-documenter, crisis-manager, monitors, coordinators |
| opus | Complex analysis | medical-advisor, treatment-analyst, hypothesis-generator |

Can override in specific cases.

## Future Enhancements

- Heart rate integration (real-time pacing alerts)
- Automated voice logging for low-energy days
- Visualization dashboard
- Research study matching
- Multi-patient pattern analysis (if privacy-preserving)
- Wearables integration (sleep, HRV, etc.)

## Support and Feedback

| Issue type | Action |
|------------|--------|
| Agent functionality | Check agent .md for detailed instructions |
| Medical questions | Consult qualified healthcare provider |
| System bugs | Document + report |
| Feature requests | Consider alignment with system goals |

---

**Remember: This system is a tool for documentation and decision support, NOT a replacement for medical care. All significant medical decisions should be made in consultation with qualified healthcare providers.**