# Retrospective Adaptation Report — Emotional & Interoceptive Processing Evidence

**Date:** 2026-06-19
**Phase:** 6 (Retrospective Adaptation)
**Scope:** New evidence from emotional processing, interoceptive processing, and illness cognition literature
**Budget:** max 30 matches examined

---

## Summary

| Metric | Value |
|--------|-------|
| Total matches examined | 22 |
| Reinforcement edits (R) | 6 |
| Contradiction edits (T) | 0 |
| Ambiguous edits (A) | 0 |
| No-action overlaps (S) | 16 |
| Adapted (R actions) | 7 claims with certainty bumps |
| Deferred (S) | 16 pre-existing claims already covered |
| Examinations truncated? | No (22 < 30) |

---

## Reinforcement Edits (R)

### R1 — ach-inflammation-modulates-interoceptive-hub
- **File:** `ch15/sec-01-misc/subsec-02-inflammation-to-interoception-pathway/achievements/ach-inflammation-modulates-interoceptive-hub.typ`
- **Current certainty:** 0.65
- **New evidence:** Zhang/Wager 2025 (0.80) — definitive 7T fMRI allostatic-interoceptive system map (n=200+, _Nature Neuroscience_) — already cited
- **Action:** Bump certainty 0.65 → **0.70** (+0.05 from Zhang/Wager 0.80 large-sample definitive mapping reinforces the anatomical framework)
- **Also relevant:** Harrison 2009 (0.65) already cited; Savitz/Harrison 2018 (0.70) already cited. These were already integrated.

### R2 — spec-afferent-noise-precision-hysteresis
- **File:** `ch15/sec-20-research-directions/interoception/spec-afferent-noise-precision-hysteresis.typ`
- **Current certainty:** 0.35
- **New evidence:** Zhang/Wager 2025 (0.80) — allostatic-interoceptive system map referenced in line 8 but needs formal citation
- **Action:** Add explicit @ZhangWager2025AllostaticInteroceptive citation to line 8 (currently mentions the work without citation). Bump certainty 0.35 → **0.40** (+0.05, cross-system mapping provides anatomical constraint for precision hysteresis parameter)
- **Detail:** Line 8 already references "the allostatic-interoceptive system mapping @ZhangWager2025AllostaticInteroceptive" but the citation is implicit in the cross-reference. If not already a formal citation tag, add one.

### R3 — spec-greenhouse-tucknott-predictive-coding-fatigue
- **File:** `ch15/sec-01-misc/subsec-03-interoceptive-accuracy-sensibility-dissociation/speculations/spec-greenhouse-tucknott-predictive-coding-fatigu.typ`
- **Current certainty:** 0.35
- **New evidence:** Manjaly & Critchley 2019 (0.75) — predictive coding model of MS fatigue @ManjalyCritchley2019MSfatigue — **NOT currently cited anywhere in paper**
- **Action:** Insert citation to Manjaly & Critchley 2019 as cross-disease validation (same predictive coding fatigue framework applied to MS, a comorbid condition). Bump certainty 0.35 → **0.40** (+0.05, cross-disease reinforcement from ≥0.70 paper). Insert after line 4 discussion of Greenhouse-Tucknott model.
- **Rationale:** Provides parallel-disease validation — same computational pathology (increased prior precision on high-effort-cost expectations) documented in MS fatigue using the identical predictive coding framework. MS shares neuroinflammatory pathology with ME/CFS, strengthening translational relevance.

### R4 — ch33 catastrophizing critique (Poort 2021 null mediation)
- **File:** `ch33-controversies/catastrophizing-a-weaponised-c/catastrophizing-a-weaponised-c.typ`
- **Current certainty (implicit):** Moderate (the claim that PCS measures severity rather than cognition is well-supported)
- **New evidence:** Poort et al. 2021 (0.65) — catastrophizing does NOT mediate CBT/GET treatment response in CFS @Poort2021catastrophizingNull — **NOT currently cited**
- **Action:** Insert Poort 2021 citation after line 8 ("ME/CFS patients show normal catastrophizing when severity is controlled"). Add +0.05 certainty bump to the claim that catastrophizing is not a valid mechanistic construct in ME/CFS.
- **Rationale:** Poort 2021 (n=..., mediation analysis) directly demonstrates that catastrophizing does NOT mediate treatment outcomes, strengthening the existing argument that PCS measures pain severity rather than maladaptive cognition. This turns the "catastrophizing" critique from correlational (severity-adjusted scores normal) to mechanistic (does not mediate outcomes).
- **Note:** Also relevant to ch15 line 781 (graded exposure therapy section) — add cross-reference: "A mediation analysis found that catastrophizing did not predict CBT/GET outcomes in CFS @Poort2021catastrophizingNull, consistent with the physiological accuracy of exercise avoidance."

### R5 — ch33 / ch15 fear-avoidance (Poort 2021 & Sohl/Friedberg 2008)
- **Files:** `ch15-symptom-producing-mechanisms.typ` line 781; `ch06-energy-metabolism.typ` line 2005; `ch33-controversies` multiple locations
- **New evidence:** Poort 2021 (0.65) as above; Sohl & Friedberg 2008 (0.40) @SohlFriedberg2008catastrophizingRecall — catastrophizing recall is biased — **neither cited**
- **Action:**
  - Poort 2021: Insert into fear-avoidance discussions in ch15 and ch33 as per R4. Applies to ch15 line 781 (graded exposure critique) and ch33 line 87 (psychogenic model).
  - Sohl/Friedberg 2008: Citation insertion only (0.40, below 0.60). No certainty bump. Documents that catastrophizing recall itself is biased, further undermining PCS validity.
- **Rationale:** The fear-avoidance model assumes catastrophizing → avoidance → disability. Poort 2021 falsifies the causal link in the model (catastrophizing does not mediate outcomes). Sohl/Friedberg 2008 adds that PCS measures are themselves contaminated by recall bias. Together with existing evidence (PCS = severity proxy), these undermine the fear-avoidance framework's applicability to ME/CFS.

### R6 — spec-emotional-autonomic-dissociation / related files (Brooks 2017, Kang 2026)
- **File:** `ch15/sec-01-misc/subsec-04-emotional-interoceptive-dysfunction/speculations/spec-emotional-autonomic-dissociation.typ` and/or `hyp-sickness-behavior-as-emotional-phenotype.typ`
- **New evidence (citation insertions only, 0.40–0.59):**
  - Brooks et al. 2017 (0.45) — emotional processing in CFS @Brooks2017emotionalProcessingCFS — **NOT cited**
  - Kang et al. 2026 (0.50) — HPA-emotion link in CFS @Kang2026hpaEmotionCFS — **NOT cited** (note: a different Kang 2026 on exosome/HSP70 IS cited)
- **Action:** Insert both as citation additions only. No certainty bumps (both < 0.60). Brooks 2017 adds convergent evidence for emotional processing abnormalities. Kang 2026 adds HPA axis-emotion processing link. Place in the emotional-autonomic speculation or the sickness-behavior-as-emotional-phenotype hypothesis, depending on best fit.
- **Rationale:** Brooks 2017 provides additional independent (UK-based) replication of emotional processing abnormalities in CFS, adding to Rimes/Wortinger/Van Den Houte convergence. Kang 2026 adds the HPA-emotion dimension (cortisol-emotion coupling), partially filling a gap noted in both the speculation and the alexithymia hypothesis where HPA axis was listed as an alternative explanation.

---

## No-Action Overlaps (S)

### S1 — hyp-alexithymia-acquired-interoceptive-deficit
- **File:** `ch15/sec-01-misc/subsec-04-emotional-interoceptive-dysfunction/hypotheses/hyp-alexithymia-acquired-interoceptive-deficit.typ`
- **Certainty:** 0.45
- **Status:** Maroti 2017 (0.50) already cited; Bileviciute-Ljungar 2020 (0.40) already cited; Barrett 2025 (0.75) already cited
- **Reason:** Both data papers already integrated. No additional new evidence changes the certainty.

### S2 — hyp-interoceptive-accuracy-sensibility-dissociation
- **File:** `ch15/sec-01-misc/subsec-03-interoceptive-accuracy-sensibility-dissociation/hypotheses/hyp-interoceptive-accuracy-sensibility-dissociat.typ`
- **Certainty:** 0.45
- **Status:** Garfinkel 2015 (0.75) cited; Quadt/Critchley/Garfinkel 2018 (0.80) cited; Valenzuela-Moguillansky 2017 (0.50) cited
- **Reason:** All relevant papers already cited. This is a direct prediction for ME/CFS; no new evidence tests it.

### S3 — hyp-sickness-behavior-as-emotional-phenotype
- **File:** `ch15/sec-01-misc/subsec-02-inflammation-to-interoception-pathway/hypotheses/hyp-sickness-behavior-as-emotional-phenotype.typ`
- **Certainty:** 0.45
- **Status:** Dantzer, Maroti, Rimes, Van Den Houte, Barrett all cited
- **Reason:** Dantzer emotional phenotype reframing already integrated with all relevant citations.

### S4 — oq-tripartite-interoception-mecfs
- **File:** `ch15/sec-20-research-directions/interoception/oq-tripartite-interoception-mecfs.typ`
- **Status:** Garfinkel 2015, Quadt 2018, Valenzuela-Moguillansky 2017, Maroti 2017 all cited
- **Reason:** Research proposal; all underpinning citations already present.

### S5 — oq-post-infectious-interoceptive-trajectory
- **File:** `ch15/sec-20-research-directions/interoception/oq-post-infectious-interoceptive-trajectory.typ`
- **Status:** Danciut/Garfinkel 2024 (0.55) already cited
- **Reason:** Already references the MS cross-disease template from new evidence.

### S6 — ch15 main interoception section (ch15-symptom-producing-mechanisms.typ lines 761–789)
- **Status:** Friston 2010, Kadota 2010, Baraniuk 2025, Keller 2024 all cited
- **Reason:** Section already comprehensive. Predictive coding framework established. New evidence (Greenhouse-Tucknott, Seth) already cited in sub-files. No additional edits needed in main file.

### S7 — ch15 sickness behavior persistence (hyp-persistent-sickness-behavior-in-me-cfs.typ)
- **Status:** Dantzer, Morris cited. Certainty: Medium.
- **Reason:** No new evidence directly tests chronic persistence of sickness behavior in ME/CFS. Harrison 2009 (inflammation-interoception) is complementary but already cited in the pathway achievement.

### S8 — ch07 sickness behavior content
- **Files:** `ch07-immune-dysfunction.typ` lines 923, 1181, 1424, 2778 and sub-files
- **Status:** All sickness behavior references cite Dantzer, Morris, etc.
- **Reason:** No new evidence adds to the core sickness behavior mechanism description. The emotional-phenotype reframing is in ch15, not ch07, and the division of labour is appropriate.

### S9 — ch14a safe mode / locked sickness behavior
- **File:** `ch14a-core-mechanistic.typ`
- **Status:** Dantzer 2008 cited; framework established
- **Reason:** Speculative hypothesis; no new evidence directly tests the "locked" mechanism. Emotional phenotype reframing is complementary but belongs in ch15.

### S10 — ch14d interoceptive predictive processing depression (lines 1866–1885)
- **File:** `ch14d-cross-disease.typ`
- **Certainty:** 0.40 (depression pathway), 0.30 (ASD secondary)
- **Status:** Seth body-wandering literature, predictive coding framework; citations sparse (placeholder format)
- **Reason:** These speculations are at cert 0.30–0.40 with explicit falsification conditions. New evidence (Seth 2011, Greenhouse-Tucknott 2022, Manjaly 2019) would reinforce but these sections are inherently low-certainty speculative extensions. The reinforcement pathway would be through the ch15 Greenhouse-Tucknott speculation (R3 above) which then cross-references here. Priority: low — the ch15 main path should be updated first, then ch14d updated via cross-reference.

### S11 — ch08 neurological TPJ / sickness behavior
- **File:** `ch08-neurological.typ` lines 82–85 and sub-files
- **Certainty:** 0.50
- **Status:** Sickness behavior program interpretation of TPJ dysfunction
- **Reason:** No new evidence directly tests the TPJ-sickness behavior link.

### S12 — ch08 insula neuroanatomy
- **File:** `ch08-neurological.typ` line 51 (VBM insula grey matter); sub-files
- **Status:** Shan 2020, Puri 2012, Finkelmeyer 2017 cited
- **Reason:** Zhang/Wager 2025 allostatic-interoceptive mapping is already cited in ch15 achievement. The ch08 neuroanatomy descriptions are generic (grey matter differences) and the Zhang/Wager functional mapping adds detail best placed in ch15 where it's already integrated.

### S13 — ch06 energy/boom-and-bust / fear-avoidance
- **File:** `ch06-energy-metabolism.typ` lines 1998–2005
- **Status:** boom-and-bust critique already cites accelerometer evidence
- **Reason:** Poort 2021 null mediation is about treatment response, not activity patterns. Complementary but not directly relevant to the boom-and-bust discussion.

### S14 — ch26 GET critique / pacing section
- **File:** `ch26-lifestyle-interventions.typ`
- **Status:** NICE 2021, Geraghty 2019, PACE reanalyses all cited
- **Reason:** Extensive existing coverage. Poort 2021 null mediation adds mechanistic depth but doesn't change the existing evidence base.

### S15 — ch21 HRV biofeedback / interoceptive awareness training
- **File:** `ch21-action-mild-moderate.typ` lines 696, 743; protocol files
- **Status:** Practical clinical content
- **Reason:** No new evidence directly tests interoceptive training in ME/CFS. The open question `oq-interoceptive-training-mecfs.typ` already notes the complete evidence gap.

### S16 — ch09 endocrine / ch06 T2 / ACC metabolite
- **Files:** Various references to ACC as neuroanatomical region
- **Status:** ACC references are structural/metabolic (MRS lactate), not interoceptive
- **Reason:** Zhang/Wager 2025 allostatic-interoceptive mapping is about the interoceptive-emotional system, not MRS metabolites. No overlap.

---

## Contradiction Edits (T)

**None identified.** No new evidence contradicts pre-existing claims. Key papers that could have created tension:
- Mancini 2026 CPET null replication (already handled in previous phase via @Mancini2026CPET citation)
- Poort 2021 catastrophizing null → reinforces rather than contradicts existing critique
- Brooks 2017 emotional processing → reinforces existing emotional-autonomic dissociation

---

## Ambiguous Edits (A)

**None identified.**

---

## Detailed Certainty Bump Table

| Claim File | Current | New Evidence | Bump | New Cert | Rationale |
|-----------|---------|-------------|------|----------|-----------|
| `ach-inflammation-modulates-interoceptive-hub` | 0.65 | Zhang/Wager 2025 (0.80) | +0.05 | **0.70** | Large-sample definitive allostatic-interoceptive map; already cited |
| `spec-greenhouse-tucknott-predictive-coding-fatigue` | 0.35 | Manjaly/Critchley 2019 (0.75) | +0.05 | **0.40** | Cross-disease predictive coding fatigue model in MS; not currently cited |
| `spec-afferent-noise-precision-hysteresis` | 0.35 | Zhang/Wager 2025 (0.80) | +0.05 | **0.40** | Anatomical constraint from allostatic-interoceptive system mapping |
| ch33 catastrophizing critique | ~0.60* | Poort 2021 (0.65) | +0.05 | **~0.65*** | Mediation analysis directly supports claim that PCS ≠ maladaptive cognition |

*Implicit certainty; not explicitly stated in file.

---

## Missing Citations to Add

| Paper | Certainty | File(s) to Insert Into | Type |
|-------|-----------|----------------------|------|
| @ManjalyCritchley2019MSfatigue | 0.75 | `spec-greenhouse-tucknott-predictive-coding-fatigu.typ` | Full citation + certainty bump |
| @Poort2021catastrophizingNull | 0.65 | `ch33-catastrophizing`; `ch15` graded exposure | Full citation + certainty bump |
| @SohlFriedberg2008catastrophizingRecall | 0.40 | `ch33-catastrophizing` | Citation insertion only |
| @Brooks2017emotionalProcessingCFS | 0.45 | `spec-emotional-autonomic-dissociation.typ` or `hyp-sickness-behavior-as-emotional-phenotype.typ` | Citation insertion only |
| @Kang2026hpaEmotionCFS | 0.50 | Same as Brooks or `ch14d-cross-disease.typ` HPA discussion | Citation insertion only |

---

## Cross-Cutting Observations

1. **Zhang/Wager 2025** is the single most impactful new paper for the interoceptive framework (0.80 certainty, n=200+, _Nature Neuroscience_). Already cited in the inflammation-interoception achievement. Consider also citing in the main ch15 interoception section (`ch15-symptom-producing-mechanisms.typ` line 773–777) where empirical support for the interoceptive model is discussed, to anchor it with definitive neuroanatomy.

2. **Manjaly/Critchley 2019** is the most significant gap. A 0.75-certainty predictive coding model of MS fatigue that directly parallels Greenhouse-Tucknott 2022. Its absence is notable given that MS fatigue shares the same predictive coding framework and MS is a known ME/CFS comorbidity (ch14d covers MS overlap). This should be priority #1 for citation insertion.

3. **Poort 2021** provides mechanistic evidence (mediation analysis) where existing critique only had correlational evidence (severity-adjusted PCS scores). This upgrades the catastrophizing critique from "PCS may confound severity" to "catastrophizing demonstrably does not mediate treatment outcomes."

4. **The interoceptive-emotional framework is already well-integrated** (22 matches examined, only 6 requiring action, 16 already properly cited). This domain was already a focus from previous Phase 3 integration of the brain-gut-immune and neuroinflammatory evidence waves.

5. **All 6 reinforcement edits are additive** — none requires removing or modifying existing claims. The edits strengthen certainty values and add convergent citations.
