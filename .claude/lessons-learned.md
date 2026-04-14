# Lessons Learned: Token Efficiency & Value Delivery

## Issue: Intermediate Documentation Wastes Tokens

**Date:** 2026-01-24 | **Task:** Integrating Hacker News ME/CFS insights into document

### Token Breakdown

| Step | Tokens | Status |
| --- | --- | --- |
| HN comment extraction | ~8,000 | necessary |
| Creating markdown summary (`HN_INSIGHTS_COMPREHENSIVE.md`) | ~10,000 | WASTED |
| Integrating into chapters | ~3,000 | necessary |

### Correct Workflow

Extract → **integrate directly into chapters** (ch14a, ch14b, ch19). No intermediate files.

### Pattern to Avoid

| ✗ Don't | ✓ Do |
| --- | --- |
| Extract → Summarize → Document → Eventually integrate | Extract → Integrate directly |
| Create "integration guides" for yourself | Just do the integration |
| Write markdown files about what you'll add to LaTeX | Add it to LaTeX |

### Exception: When Documentation IS the Deliverable

Documentation files appropriate when:

- User explicitly requests documentation
- Creating reference material for future sessions
- Agent handoff requires integration guides (per updated literature-manager spec)

For **active task completion**: integrate directly, no intermediate steps.

### Corrective Actions Taken

1. Added LDN observation → `ch14a-urgent-action-severe.tex` (with citation)
2. Added GET warning → `ch14b-action-mild-moderate.tex` (with patient evidence)
3. Added EDS/MCAS/sleep apnea observations → `ch19-integrative-approaches.tex`
4. Added nicotine/methylene blue speculation → `ch19`
5. Added Rituximab failure warning → `ch19` (with citations)

All integrated with proper LaTeX environments, citations, and labels.

---

**Takeaway:** Direct integration delivers value. Documentation about work is not work.
