# Phase 1: Daily Guide — Weeks 1-4 (Mar 17 - Apr 13)

## Purpose
Collect 4 weeks of food + symptom data without changing anything about your diet.
This is passive observation only.

---

## Daily Routine

### At each meal (or once in the evening from memory)

1. Open today's YAML file (or a note on your phone)
2. Write down:
   - **Time** (approximate: "8h", "13h", "20h" is fine)
   - **What you ate** (ingredients, not recipe name)
     - BAD: "quiche" → GOOD: "quiche (eggs, cream, ham, cheese, wheat crust)"
     - BAD: "salad" → GOOD: "lettuce, tomato, cucumber, olive oil, vinegar, feta"
   - **Drinks** with the meal (coffee with milk, water, juice, wine, etc.)
   - **Leftovers?** Note if the food was cooked today or is from yesterday/earlier

3. Log snacks the same way — even small ones:
   - "16h: handful of cashews, black coffee"
   - "22h: 2 squares dark chocolate"
   - "11h: apple"

### Symptom logging enhancement

Your existing symptom fields stay the same. When possible, add **timing**:
- "Brain fog started around 15h"
- "Joint pain noticed after getting up from lunch (~14h)"
- "Fatigue worsened late afternoon ~17h"
- "Heart racing at 16h while sitting"

This timing is what lets us match symptoms to meals.

---

## What counts as a "food item" to log

### Always log
- Every ingredient in a home-cooked meal (main ones — no need to list salt/pepper)
- Restaurant meals: describe what you ordered + visible ingredients
- All drinks: coffee, tea, juice, milk, alcohol, sodas
- Supplements taken with food
- Condiments: ketchup, mustard, soy sauce, hot sauce, mayo
- Cooking fat: butter, olive oil, sunflower oil

### Don't worry about
- Exact quantities (unless you ate an unusually large amount)
- Herbs and basic seasonings (unless you use a lot of a specific spice)
- Water (unless it's flavored or mineral vs tap matters to you)

---

## Weekly Check-in Template

At the end of each week, write a brief note in the last day's YAML `notes:` field:

```yaml
notes: >
  Week 1 summary: Logged X/7 days. Diet was [typical/unusual].
  Notable: [any days that stood out as particularly good or bad].
  [Anything unusual: restaurant meals, travel, illness, stress, poor sleep].
```

---

## Week-by-week targets

### Week 1 (Mar 17-23): Getting the habit
- **Goal:** Log at least 5 out of 7 days
- **Expect:** It feels annoying the first few days. It gets easier.
- **Tip:** If logging at each meal is too much, do it once before bed. Think through what you ate today.
- **Tip:** Take a photo of your plate as a memory aid, fill in the YAML later

### Week 2 (Mar 24-30): Building consistency
- **Goal:** Log at least 6 out of 7 days
- **Focus:** Get better at noting ingredient details (not just "pasta" but "pasta with tomato sauce, parmesan, olive oil")
- **Focus:** Start noting symptom timing if you aren't yet

### Week 3 (Mar 31 - Apr 6): Refining
- **Goal:** Log all 7 days
- **Focus:** Note leftover age ("chicken from yesterday", "sauce made 2 days ago")
- **Focus:** Note snacking more precisely

### Week 4 (Apr 7-13): Final data collection
- **Goal:** Log all 7 days
- **Focus:** Make sure bad days are well-documented (food AND symptoms)
- **End of week:** Do a brief overall reflection in notes

---

## Common pitfalls

| Pitfall | Why it matters | Fix |
|---------|---------------|-----|
| Forgetting snacks | Snacks can be high-histamine (chocolate, nuts, cheese) | Keep a running note on your phone |
| Logging "pizza" instead of ingredients | Can't identify which component is the trigger | List: wheat crust, tomato sauce, mozzarella, ham, mushrooms |
| Skipping bad days | Bad days are the MOST valuable data | Even a rough list from memory is better than nothing |
| Changing diet because you "suspect" something | Removes the baseline signal | Change NOTHING until Phase 3 |
| Not noting what your wife cooked | Missing ingredient info | Ask her: "what's in this?" |
| Forgetting drinks | Coffee, alcohol, juice can be triggers | Log every drink |

---

## Minimum viable log

If you're having a terrible day and can barely function, this is the absolute minimum:

```yaml
nutrition:
  meals:
    - time: "morning"
      items: ["bread, cheese, coffee"]
    - time: "evening"
      items: ["rice, chicken, vegetables"]
  snacks:
    - time: "afternoon"
      items: ["chocolate"]
  notes: "bad day, minimal logging"
```

Even this rough data is useful. Don't skip a day just because you can't be detailed.

---

## What NOT to do during Phase 1

- Do NOT start a low-histamine diet
- Do NOT remove foods you suspect
- Do NOT take new antihistamines or mast cell stabilizers (if you start one for other reasons, note it clearly)
- Do NOT stress about logging perfectly — imperfect data > no data
