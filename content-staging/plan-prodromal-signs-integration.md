# Plan: Retrospective Prodromal Signs of ME/CFS Integration

**Execution method:** `/integrate-topic` skill — full pipeline (research → develop → brainstorm → integrate all ideas → review to convergence → changelog → commit).

**Status:** Phase 1 (literature research) COMPLETE. Resume from Phase 2.

---

## Context

The document has a gap: it doesn't discuss how ME/CFS symptoms present *before* diagnosis — symptoms in children AND adults that are dismissed, misattributed, or only make sense retrospectively after ME/CFS is identified. These are the *clinical face* of subclinical energy production insufficiency.

---

## Clinical Vignettes to Integrate (ALL MUST appear in the final content)

### Vignette 1: The Overtrained-But-Unfit Athlete
- Child or young adult trains 15-20+ hours/week in multiple sports (holidays included)
- Despite massive training volume, never achieves fitness proportional to effort
- Peers with less training are fitter, faster, more resilient
- Always tired, naps all the time — dismissed as "not trying hard enough" or "growing pains"
- Actually: mitochondrial ATP ceiling is lower; training hits metabolic wall others don't reach
- Adult version: the person who exercises religiously but never improves, always exhausted after

### Vignette 2: The Late-Game Fader
- Child starts sport/game well — good early performance
- As game progresses, loses concentration, makes mistakes, seems to "not care"
- Parents/coaches attribute to inattention, lack of motivation, poor competitive spirit
- Actually: cognitive energy depletion + delayed recovery from exertion; the brain can't sustain both motor AND cognitive demands simultaneously when ATP is marginal
- Looks like ADHD inattentive type to observers
- The "deconcentration" is energy-driven, not motivation-driven

### Vignette 3: The Always-Tired High Performer
- Kid who is good at school, does sports, has extracurricular activities — appears healthy
- But is ALWAYS tired, every single morning, no matter how much sleep
- Makes naps at every opportunity (car rides, between activities, weekends)
- Functions well because they're smart/driven enough to compensate — burning through reserves
- Nobody investigates because "he's doing fine" — the performance masks the energy deficit
- Adult version: the high-achiever who needs 10+ hours sleep, can't do social events after work, "has no energy for hobbies"

### Vignette 4: Shaky Hands
- Young person (child, teen, young adult) with fine hand tremor
- "Shaky hands like old ladies" — no identified neurological cause
- Worse when tired, after exertion, or holding positions
- Dismissed as "nervous" or "anxious" or "just how they are"
- Actually: energy insufficiency in motor control circuits (basal ganglia, cerebellum) + possible subclinical small fiber neuropathy (Moak 2024: 53% of pediatric POTS/OI patients have SFN)

### Vignette 5: Other Retrospective Signs (catalogue)
- **Cold extremities**: always cold hands/feet, dismissed as "poor circulation" — actually sympathetic dysregulation (Wyller 2007)
- **Orthostatic symptoms**: dizziness on standing, dismissed as "growing too fast" or "low blood pressure runs in the family" — actually subclinical OI/POTS
- **Unrefreshing sleep**: sleeps "enough" hours but never wakes refreshed — prospectively documented 4-7 years before ME/CFS (Collin 2018)
- **Post-exertional cognitive fog**: brain fog after sport/exams mistaken for ADHD, laziness, or "just needs more sleep"
- **Exercise intolerance masked by persistence**: the person who pushes through, participates in everything, but pays a price nobody sees (crashing at home, weekend zombie)
- **Easy bruising / slow wound healing**: subtle signs of microvascular or nutritional insufficiency
- **Frequent minor infections**: "catches everything" — immune system running below threshold
- **Excessive thirst / salt craving**: early autonomic compensation

---

## Literature Base (Phase 1 — COMPLETE)

Location: `content-staging/literature-prodromal-signs-children-2026-04-20.md`

8 papers integrated into `references.bib` + `appendix-h-annotated-bibliography.typ`:

| Paper | N | Key finding | Certainty |
|-------|---|-------------|-----------|
| Wirth 2026 | 36,332 | ICD codes (fatigue, pain, cognitive, somatoform) elevated 5 years before ME/CFS Dx in children | 0.70 |
| Collin 2018 | 13,978 | Sleep disruption 4-7 years before CDF onset (prospective ALSPAC) | 0.65 |
| Kato 2006 | 19,192 | Premorbid stress predicts chronic fatigue 25 years later (twin study, adults) | 0.55 |
| Moak 2024 | 109 | SFN in 53% pediatric POTS/OI; 3× autoimmune markers | 0.50 |
| Wyller 2007 | 72 | Thermoregulatory/sympathetic dysfunction in adolescent ME/CFS | 0.50 |
| Chu 2019 | 150 | 38% had multi-month prodromal window; 79% pre-illness problems | 0.45 |
| Evans & Jason 2018 | 195 | "Unnoticed progression" onset subtype validated | 0.40 |
| Jason 2015 (NULL) | 285 | ~50% true sudden onset — prodromal model applies to gradual-onset subtype ONLY | 0.55 |
| Geraghty 2019 | — | 40% diagnostic error rate in pediatric referrals; overdiagnosis risk | 0.40 |

---

## Integration Targets

### Primary: New section in ch05-onset-patterns.typ

**Location:** After "Gradual Onset → Diagnostic Challenges" (line ~100), before "Two-Phase Onset Pattern" (line 101).

**New section:** `==== Retrospective Prodromal Recognition` `<sec:prodromal-recognition>`

**Structure:**
1. Opening paragraph: concept + scope (children AND adults, gradual-onset subtype)
2. All 5 clinical vignettes above as narrative subsections with mechanistic explanations
3. Evidence synthesis paragraph citing all Phase 1 papers
4. Environments:
   - `#clinical-finding`: 5-year pre-diagnostic window documented (Wirth 2026, Collin 2018)
   - `#speculation` (certainty ~0.40): "Retrospective Prodromal Syndrome" — subclinical metabolic reserve depletion as unified explanation, linking to Architecture C
   - `#limitation`: recall bias, overdiagnosis risk (Jason 2015 null result, Geraghty 2019 error rates), sudden-onset subtype excluded
   - `#open-question`: need for prospective validation (pre-illness CPET, biomarkers in at-risk youth)

### Secondary: Cross-reference in ch14d-cross-disease.typ

Under Architecture C hypothesis (~line 1043), add paragraph: "The clinical manifestation of reduced metabolic reserve before formal ME/CFS diagnosis is described in @sec:prodromal-recognition — these retrospective prodromal signs represent the observable face of the lower $R_"headroom"$ predicted by Architecture C."

### Hypothesis registry

New entries in `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` for:
- Retrospective prodromal syndrome speculation
- Any additional hypotheses/open-questions generated in Phase 3-4

---

## Execution: `/integrate-topic`

**ALL remaining phases (2-8) must be executed via `/integrate-topic`** with the following topic description:

```
Retrospective prodromal signs of ME/CFS in children and adults — subclinical energy 
deficit presenting as seemingly benign or unexplained symptoms years before diagnosis. 
Clinical vignettes: (1) overtrained-but-unfit athlete (15-20+ hrs/week, never fit like 
peers, always tired, naps); (2) late-game fader (starts well, loses late due to cognitive 
energy depletion mimicking inattention); (3) always-tired high performer (appears healthy, 
excels at school/sports, but exhausted every morning, naps constantly); (4) shaky hands 
(fine tremor in young people, no identified cause); (5) other signs: cold extremities, 
orthostatic symptoms dismissed as growth, unrefreshing sleep, post-exertional fog → 
ADHD/laziness, exercise intolerance masked by persistence, frequent infections, excessive 
thirst/salt craving. Frame through subclinical mitochondrial/energy production insufficiency 
recognizable only in retrospect. Applies to gradual-onset subtype (not sudden-onset ME). 
Adults AND children. Integrate into ch05 (onset patterns) as new section "Retrospective 
Prodromal Recognition." Cross-reference Architecture C in ch14d-cross-disease.typ. 
Literature Phase 1 already complete — 8 papers in references.bib, summary in 
content-staging/literature-prodromal-signs-children-2026-04-20.md. SKIP Phase 1, 
resume from Phase 2.
```

---

## Files to modify

| File | Change |
|------|--------|
| `src/main/typst/mecfs/part1-clinical/ch05-onset-patterns.typ` | New section: Retrospective Prodromal Recognition (all 5 vignettes + environments) |
| `src/main/typst/mecfs/part2-pathophysiology/ch14/ch14d-cross-disease.typ` | Cross-reference paragraph under Architecture C |
| `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` | New entries for prodromal speculation + brainstorm ideas |
| `src/main/typst/mecfs/shared/changelog.typ` | Entry documenting the addition |

---

## Verification

- `nix build` passes
- All `@CitationKey` references resolve (Wirth2026prodromalICD, Collin2018sleepCFS, Wyller2007thermoregCFS, Chu2019onsetPatterns, Moak2024SFNpediatric, Kato2006premorbid, Jason2015CFSvsME, Geraghty2019diagnosticAccuracy)
- Cross-reference `@sec:prodromal-recognition` resolves
- Hypothesis registry entries consistent with new content
- Review convergence: zero findings across all three review types
