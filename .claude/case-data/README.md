# Case Data Directory

**IMPORTANT: This directory contains personal health information and should NOT be committed to git.**

## Directory Structure

```
case-data/
├── symptoms/               # Daily symptom logs (YAML files)
│   ├── 2026-01-23.yaml
│   ├── 2026-01-24.yaml
│   └── ...
│
├── medications/            # Medication regimen and history
│   ├── current-regimen.yaml
│   └── history.yaml
│
├── patterns/               # Analysis summaries
│   └── analysis-summary.md
│
├── research-alerts/        # Research monitoring outputs
│   ├── weekly/
│   │   ├── 2026-01-20.md
│   │   └── ...
│   ├── monthly/
│   │   ├── 2026-01.md
│   │   └── ...
│   └── breakthrough-alerts/
│       └── ...
│
└── validation-reports/     # Data quality reports
    └── weekly/
        ├── 2026-01-20.md
        └── ...
```

## Privacy and Security

### DO:
- ✓ Add this directory to `.gitignore`
- ✓ Encrypt backups containing this data
- ✓ Keep repository private
- ✓ Regularly backup to secure location
- ✓ Use strong access controls

### DON'T:
- ✗ Commit this directory to version control
- ✗ Share raw data files without anonymization
- ✗ Store unencrypted backups in cloud services
- ✗ Include identifying information in shared documents

## Managed By Agents

- **case-documenter**: Creates and updates symptom, medication, and activity logs
- **research-monitor**: Generates research alert reports
- **data-validator**: Creates validation reports
- **treatment-analyst**: References data for statistical analyses
- **All agents**: Read case data to inform their outputs

## File Formats

### Symptom Logs (YAML)
See `case-documenter` agent documentation for format specification.

### Medication Regimen (YAML)
Current medications, doses, frequencies, start dates.

### Research Alerts (Markdown)
Weekly and monthly summaries of new ME/CFS research.

### Validation Reports (Markdown)
Data quality assessments with action items.

## Data Retention

- Keep all historical logs indefinitely (medical record)
- Archive research alerts after 1 year (reference if needed)
- Keep validation reports for 3 months (troubleshooting)

## Anonymization for Sharing

If sharing data for research or discussion:
1. Remove all names, dates of birth, addresses
2. Offset dates (use "Day 0" for onset, relative days thereafter)
3. Remove location-specific information
4. Use only initials or "Patient"
5. Aggregate data where possible
6. Consider consulting privacy attorney for research participation

## Backup Strategy

Recommended:
```bash
# Weekly encrypted backup
tar czf case-data-backup-$(date +%Y-%m-%d).tar.gz .claude/case-data/
gpg --encrypt --recipient [your-key] case-data-backup-*.tar.gz
# Move encrypted backup to secure location
```

## Initial Setup

When first using the medical agent system:

1. Create initial medication regimen file
2. Start logging daily symptoms
3. Allow 2-4 weeks to establish baseline
4. Run initial analyses after sufficient data collected

See `.claude/systems/medical-agent-system.md` for complete setup instructions.