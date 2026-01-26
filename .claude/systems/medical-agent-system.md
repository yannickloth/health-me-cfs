# Medical Agent System

Comprehensive ME/CFS case management system using specialized AI agents for documentation, analysis, and medical decision support.

## System Overview

The medical agent system consists of 10 specialized agents organized into 3 tiers:

### Tier 1: Core Documentation and Safety (Essential)
1. **case-documenter** (sonnet) - Daily symptom/medication/activity logging
2. **medical-advisor** (opus) - Evidence-based treatment recommendations
3. **data-validator** (haiku) - Data quality assurance

### Tier 2: Analysis and Planning (Enhanced functionality)
4. **treatment-analyst** (opus) - Statistical analysis of treatment effectiveness
5. **crisis-manager** (sonnet) - Severe crash detection and emergency protocols
6. **pacing-coach** (haiku) - Real-time activity guidance and PEM prevention

### Tier 3: Support and Insights (Advanced features)
7. **hypothesis-generator** (opus) - Subtype analysis and mechanistic insights
8. **research-monitor** (sonnet) - Track new ME/CFS research publications
9. **benefit-navigator** (sonnet) - Disability and accommodation documentation
10. **caregiver-coordinator** (sonnet) - Family/caregiver education and support

## Agent Interaction Map

```
                    research-monitor
                         │
                         ├──(new papers)──> medical-advisor
                         └──(new papers)──> hypothesis-generator
                                                    │
User ──> case-documenter ←── data-validator        │
              │                     │               │
              ├──(validates)────────┘               │
              │                                     │
              ├──> treatment-analyst ───────────────┤
              │           │                         │
              ├──> medical-advisor ─────────────────┤
              │           │                         │
              ├──> hypothesis-generator ────────────┘
              │           │
              ├──> pacing-coach
              │           │
              └──> crisis-manager ──┬──> medical-advisor
                          │         │
                          ├──> pacing-coach
                          │
                          └──> caregiver-coordinator
                                      │
                                      └──> benefit-navigator

All agents ──> User (via LaTeX documents and markdown reports)
```

## Data Flow

### Input → Processing → Output

```
User Daily Input
    ↓
case-documenter (logs symptoms, medications, activities)
    ↓
data-validator (checks quality)
    ↓
├─> pacing-coach (real-time guidance)
├─> crisis-manager (monitors for crashes)
├─> treatment-analyst (analyzes effectiveness)
├─> hypothesis-generator (identifies patterns)
└─> medical-advisor (generates recommendations)
    ↓
└─> User (Appendix J recommendations, reports)
```

## When to Use Each Agent

### Daily Operations

**"case-documenter: log today's symptoms: energy 3/10, pain 5/10"**
- Use: Every day
- Purpose: Maintain medical record
- Outputs to: `.claude/case-data/symptoms/YYYY-MM-DD.yaml`

**"pacing-coach: help me plan today's activities"**
- Use: Daily or before activities
- Purpose: Stay within energy envelope
- Outputs: Activity plans, real-time guidance

### Weekly Monitoring

**"data-validator: weekly report"**
- Use: Weekly (automated)
- Purpose: Ensure data quality
- Outputs: Quality report with action items

**"research-monitor: what's new this week?"**
- Use: Weekly (automated)
- Purpose: Stay current on ME/CFS research
- Outputs: Weekly research alert

### As-Needed Analysis

**"medical-advisor: I'm having worse [symptom], what should we try?"**
- Use: When symptoms change or need treatment guidance
- Purpose: Evidence-based recommendations
- Outputs: Appendix J recommendation sections

**"treatment-analyst: analyze my [treatment] trial"**
- Use: After completing treatment trial (typically 8-12 weeks)
- Purpose: Determine if treatment is effective
- Outputs: Statistical analysis with continue/stop recommendation

**"hypothesis-generator: what's my ME/CFS subtype?"**
- Use: Periodically to understand case (every 3-6 months or when patterns change)
- Purpose: Identify underlying mechanisms
- Outputs: Subtype analysis with testing recommendations

**"crisis-manager: I'm crashing, what do I do?"**
- Use: During severe symptom exacerbations
- Purpose: Emergency protocols and recovery guidance
- Outputs: Crisis management plan, ER documentation if needed

### Administrative Needs

**"benefit-navigator: generate disability application documentation"**
- Use: When applying for benefits or accommodations
- Purpose: Professional medical evidence summaries
- Outputs: Functional assessments, application support

**"caregiver-coordinator: create guide for my new caregiver"**
- Use: When onboarding caregivers or educating family
- Purpose: Clear instructions and education
- Outputs: Caregiver guides, specialist summaries

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

1. **data-validator** runs before any analysis
2. **medical-advisor** always includes:
   - Evidence quality ratings
   - Contraindications
   - "Preliminary - requires physician review" warnings
   - Questions for doctor
3. **treatment-analyst** uses rigorous statistical methods
4. **hypothesis-generator** explicitly states confidence levels
5. All recommendations include citations

### Human Oversight

- **All medical decisions** require physician approval
- Agents provide analysis for informed patient-doctor discussion
- User maintains authority over all choices
- Generated documents are preliminary evidence summaries

## Maintenance and Updates

### Regular Tasks

**Daily:**
- case-documenter logging
- data-validator quick check (automated)

**Weekly:**
- data-validator comprehensive report (automated)
- research-monitor search (automated)
- Review and address data quality issues

**Monthly:**
- research-monitor comprehensive summary
- Review treatment-analyst trends
- Update medical-advisor with new evidence

**Quarterly:**
- hypothesis-generator reassessment
- Comprehensive case review
- Update benefit documentation if needed

### System Evolution

As case data accumulates:
- treatment-analyst predictions become more accurate
- hypothesis-generator identifies patterns more reliably
- pacing-coach learns individual trigger thresholds
- crisis-manager predicts recovery times better

## Getting Started

### Initial Setup

1. **Start with case-documenter**
   ```
   "case-documenter: initialize my case with current medications and baseline symptoms"
   ```

2. **Establish baseline** (2-4 weeks of daily logging)
   - Symptoms
   - Medications
   - Activities
   - PEM episodes

3. **Run initial analyses**
   ```
   "hypothesis-generator: analyze my initial data and propose subtype"
   "pacing-coach: calculate my energy envelope from baseline data"
   ```

4. **Set up weekly automation**
   - data-validator weekly reports
   - research-monitor weekly alerts

### First Treatment Recommendation

After 4 weeks of baseline data:
```
"medical-advisor: review my baseline data and suggest initial treatment priorities"
```

### Ongoing Use

- Daily: case-documenter + pacing-coach
- Weekly: Review data-validator and research-monitor
- As needed: medical-advisor, treatment-analyst, others
- Crisis: crisis-manager

## Troubleshooting

### "Data quality insufficient for analysis"
- Run data-validator to identify missing/incorrect entries
- Fill gaps or document reasons for missing data
- Ensure at least 4 weeks of consistent logging

### "Agent recommendation seems wrong"
- Check if agent has access to latest case data
- Verify case-documenter logs are accurate
- Consider if agent model needs update (haiku vs sonnet vs opus)
- Remember: all recommendations are preliminary, for doctor review

### "Agents providing conflicting recommendations"
- This is normal - different agents have different perspectives
- hypothesis-generator: theoretical framework
- medical-advisor: evidence-based treatments
- pacing-coach: activity management
- Discuss all perspectives with physician to integrate

## Model Selection Rationale

- **haiku**: Fast, frequent interactions (pacing-coach, data-validator)
- **sonnet**: Balanced reasoning (case-documenter, crisis-manager, monitors, coordinators)
- **opus**: Complex analysis (medical-advisor, treatment-analyst, hypothesis-generator)

Can override in specific cases if needed.

## Future Enhancements

Potential additions:
- Heart rate integration (real-time pacing alerts)
- Automated voice logging for low-energy days
- Visualization dashboard
- Research study matching
- Multi-patient pattern analysis (if privacy-preserving)
- Integration with wearables (sleep tracking, HRV, etc.)

## Support and Feedback

For issues with:
- **Agent functionality**: Check agent .md file for detailed instructions
- **Medical questions**: Consult qualified healthcare provider
- **System bugs**: Document and report
- **Feature requests**: Consider if aligns with system goals

---

**Remember: This system is a tool for documentation and decision support, not a replacement for medical care. All significant medical decisions should be made in consultation with qualified healthcare providers.**