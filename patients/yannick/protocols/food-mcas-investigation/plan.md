# Food-Triggered MCAS Investigation — Full Protocol

## Background

Standard allergy testing (skin prick, specific IgE) cannot detect non-IgE mast
cell activation from food. Mast cells can degranulate via MRGPRX2 receptors,
complement activation, lectins, and low-grade IgE sensitization — none of which
produce classic allergic symptoms (hives, swelling, anaphylaxis). Instead,
mediator release causes systemic symptoms: fatigue, brain fog, pain, autonomic
dysfunction — all of which overlap with ME/CFS.

The only reliable way to detect this is empirical: observe, eliminate, rechallenge.

---

## Phase 1: Food Diary (Weeks 1-4, Mar 17 - Apr 13)

### Goal
Collect baseline data. **Change nothing about diet.**

### What to do
- Add a `nutrition:` section to daily symptom YAML (see `nutrition-template.yaml`)
- Log all meals and snacks with approximate times
- List main ingredients (no need for exact quantities)
- Note leftovers and their age
- Note drinks (coffee, juice, alcohol)

### Symptom tracking enhancement
- When possible, note the **time** symptoms appear or worsen
- This allows correlation with meals eaten 1-4 hours earlier

### Rules
- Do NOT change your diet during this phase
- Do NOT avoid foods you suspect — the point is to see your normal pattern
- On bad days, make extra effort to log food (most informative data points)
- ~2 minutes per meal, or once in the evening from memory

### Duration
- Minimum 3 weeks of data (21 days)
- Target 4 weeks (28 days)
- Missing days are fine — aim for at least 5 days/week

---

## Phase 2: Pattern Analysis (Week 5, Apr 14-20)

### Goal
Analyze 4 weeks of food + symptom data for correlations.

### Method
- Correlate food items/categories with same-day and next-day symptom severity
- Flag high-histamine food frequency vs symptom days
- Look for temporal patterns (symptoms 1-6 hours after specific foods)
- Control for known confounders (exertion, sleep, medication changes, stress)

### Food categories checked
- High-histamine foods
- Histamine liberators
- Dairy
- Gluten/wheat
- Nightshades
- Salicylates
- Individual items with high frequency on bad days

### Outcome
- **Patterns found:** Proceed to Phase 3 with specific suspect categories
- **No patterns found:** Food-triggered MCAS unlikely to be a major symptom driver. Protocol ends.

---

## Phase 3: Targeted Elimination-Rechallenge (Weeks 6-9+)

### Goal
Confirm or exclude specific food categories as mast cell triggers.

### Structure: 10 days per category

| Days | Action |
|------|--------|
| 1-7 | Eliminate the category completely |
| 8 | Rechallenge: eat the category at 2 meals |
| 9 | Rechallenge: eat the category at 2 meals |
| 10 | Rechallenge: eat the category at 1 meal, observe |

### Interpretation
- **Clear improvement days 1-7 + clear worsening days 8-10** = Confirmed trigger
- **No change during elimination or rechallenge** = Category cleared
- **Ambiguous** = Note and revisit; may need a second cycle later

### Testing order (default, adjusted by Phase 2 results)

| Cycle | Category | Dates |
|-------|----------|-------|
| 1 | A — High histamine | Apr 21 - Apr 30 |
| 2 | B — Dairy | May 1 - May 10 |
| 3 | C — Gluten/wheat | May 11 - May 20 |
| 4 | D — Nightshades | May 21 - May 30 |
| 5 | E — Histamine liberators | May 31 - Jun 9 |

**Stop early if a clear trigger is found.** Remaining categories become optional.

### Rules
- One category at a time — never overlap eliminations
- Replace eliminated foods with alternatives (see `food-categories.md`) — do not under-eat
- Snacks count — a handful of peanuts during nut elimination invalidates the cycle
- Log food and symptoms every day
- If a crash occurs from a clear non-food cause (overexertion, bad sleep), note it — that day may be excluded from analysis
- Eat food within 12 hours of cooking during the high-histamine cycle

### Washout
- 2 rest days between cycles (eat normally) to clear any carryover effects

---

## Phase 4: Medical Confirmation (Weeks 8-10, optional)

### Goal
Objective biochemical proof of food-triggered mast cell degranulation.

### Prerequisites
- At least one confirmed trigger from Phase 3

### Method
1. Ask doctor to order 24h urine collection for:
   - N-methylhistamine
   - Prostaglandin D2 metabolites (11-beta-prostaglandin F2-alpha)
   - Leukotriene E4 (optional, adds specificity)
2. **Collection A (baseline):** 24h urine on a day with no trigger foods for previous 3 days
3. **Collection B (trigger):** 24h urine on a day where confirmed trigger foods are eaten at 2+ meals
4. **Compare values:** Significant rise in Collection B vs A = objective evidence

### What to bring to the doctor
- This protocol document
- Phase 2 analysis showing correlations
- Phase 3 results showing elimination/rechallenge outcomes
- Request for paired urine mediator testing

---

## Decision Tree Summary

```
Phase 1 (food diary, 4 weeks)
  │
  ▼
Phase 2 (analysis)
  │
  ├── No patterns found → STOP (food-triggered MCAS unlikely as major driver)
  │
  ├── Patterns found → Phase 3
  │     │
  │     ├── Elimination: no improvement → Category cleared
  │     │
  │     ├── Elimination: improvement + rechallenge: worsening → CONFIRMED TRIGGER
  │     │     │
  │     │     ▼
  │     │   Phase 4 (urine testing) → Medical evidence for physician
  │     │
  │     └── Ambiguous → Repeat cycle or move to next category
  │
  └── Weak/unclear patterns → Do Phase 3 for top 2 suspects only
```
