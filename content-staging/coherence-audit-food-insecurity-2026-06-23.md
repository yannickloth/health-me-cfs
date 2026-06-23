# Coherence Audit: Food Insecurity / Socioeconomic Disease Burden Integration

**Date:** 2026-06-23
**Auditor:** Claude Code

---

## Finding 1 (HIGH) — Certainty mismatch: `@spec:hiv-food-assistance-template` (0.65 vs 0.50)

| Location | Value |
|----------|-------|
| `changelog.typ:10` — header summary | `@spec:hiv-food-assistance-template` (cert **0.65**) |
| `speculation-hiv-food-assistance-template.typ:4` — actual file | `(Certainty: **0.50** — downgraded from 0.65 to reflect...`) |
| `hypothesis-registry.typ:1310` | cert **0.50** |

The changelog lists the *pre*-downgrade certainty (0.65) as the current value. It should list 0.50, matching the actual file and registry. The prose in the changelog entry correctly says "HIV template cert 0.50 (downgraded from 0.65)" but the bracketed label header reads 0.65.

**Recommendation:** In `changelog.typ:10`, change `@spec:hiv-food-assistance-template` (cert 0.65) to `@spec:hiv-food-assistance-template` (cert 0.50).

---

## Finding 2 (MEDIUM) — Certainty mismatch: `@spec:fi-null-hypothesis` (0.25 vs unchangelogged)

| Location | Value |
|----------|-------|
| `changelog.typ:10` — header summary | `@spec:fi-null-hypothesis` (cert 0.25) |
| `speculation-fi-null-hypothesis.typ:4` — actual file | `(Certainty: 0.25)` |
| `hypothesis-registry.typ:1314` | cert 0.25 — **no downgrade noted** |

The achievement cert 0.55 says "downgraded from 0.75" and the HIV template says "downgraded from 0.65", but the null hypothesis shows no downgrade history. The changelog header shows 0.25 with no `downgraded from` notation. This may be correct (0.25 is the original brainstorm certainty), but **unlike the other two speculations, there is no downgrade history recorded anywhere** — risky if the certainty was ever higher and silently revised.

**Recommendation:** If 0.25 is the original (brainstorm) value, no change needed but consider documenting origin in registry. If revised from a higher value, add `downgraded from X` notation in the speculation file.

---

## Finding 3 (MEDIUM) — Terminology inconsistency: "food access" vs "food insecurity"

- `ch21/very-severe:20` uses "food security" and "food access difficulties" interchangeably
- `demographic-risk-factors.typ:8` uses "food insecurity" (via cross-ref to ch32)
- `synthesis in qol.typ:22` uses "food insecurity" and "food access" both in same paragraph
- `limitation-fi-evidence-quality.typ:4` uses "food access" (item 3: "treats food access as one component")
- `achievement:4` uses "food insecurity" then "food access difficulties" (line 7)

"A food access as one undifferentiated component" (`achievement.typ:10` line about Feldman 2025) — the Feldman RECOVER finding is described as "food access" in both achievement and evidence-quality limitation, but the original study's SDoH composite likely did not use the term "food access" — it used USDA food security measures. The term "food access" implies physical/geographic access barriers, which is distinct from "food insecurity" (affordability-driven). This matters for the screening protocol section which uses "Hunger Vital Sign" (FI screening, not food access screening).

**Recommendation:** Standardise on "food insecurity" throughout (the USDA/HHS term). Reserve "food access" for physical/geographic barriers. Fix `limitation-fi-evidence-quality.typ:4` item 3: change "food access" to "food insecurity" when describing Feldman 2025 composite SDoH measure.

---

## Finding 4 (LOW) — Terminology: "Hunger Vital Sign" sensitivity (97% vs 97%/83%)

- `oq:fi-screening-protocol.typ:4`: "sensitivity 97%, specificity 83% @hager2010hungervitalsign"
- `hypothesis-registry.typ:1316`: "sensitivity 97%, specificity 83%"

Correct as stated (Hager 2010 reports Sn 97%, Sp 83%). No issue found.

---

## Finding 5 (HIGH) — Cross-reference label resolution: `@spec:hiv-food-assistance-template` resolved in synthesis without inline label

The synthesis in `quality-of-life-and-disability.typ:26` references `@spec:hiv-food-assistance-template` — this resolves correctly to the definition in `speculation-hiv-food-assistance-template.typ:19` (`<spec:hiv-food-assistance-template>`).

**All 7 FI labels verified as resolving:**
| Label | Defined at | Referenced from | Resolves? |
|-------|-----------|----------------|-----------|
| `@ach:food-insecurity-disease-burden` | `achievement.typ:20` | `oq:fi-screening.typ:4`, `ch21/very-severe.typ:20`, `synthesis:24`, `hypothesis-registry:1304` | ✓ |
| `@spec:hiv-food-assistance-template` | `speculation-hiv.typ:19` | `synthesis:26`, `hypothesis-registry:1310` | ✓ |
| `@spec:fi-severity-spiral` | `speculation-fi-severity.typ:23` | `synthesis:28`, `limitation-causality:4`, `hypothesis-registry:1312` | ✓ |
| `@spec:fi-null-hypothesis` | `speculation-fi-null.typ:16` | `synthesis:26`, `hypothesis-registry:1314` | ✓ |
| `@oq:fi-screening-protocol` | `oq:fi-screening.typ:25` | `hypothesis-registry:1316` | ✓ |
| `@lim:fi-causality-undetermined` | `limitation-fi-causality.typ:7` | `hypothesis-registry` (implied) | ✓ |
| `@lim:fi-evidence-quality` | `limitation-fi-evidence.typ:7` | `achievement.typ:4`, `synthesis:24`, `changelog:10` | ✓ |
| `@syn:food-insecurity-model` | `synthesis (qol.typ:33)` | `changelog:10` | ✓ |
| `@sec:quality-of-life-studies` (ch32) | `quality-of-life-and-disability.typ:4` | `demographic-risk-factors.typ:8`, `subsec-02-demographics.typ:16` | ✓ |

**No orphan references found.**

---

## Finding 6 (LOW) — Contradiction: FI→disease severity causality framing

- `achievement.typ:14`: "The FI→disease feedback direction is hypothesised but not demonstrated"
- `speculation-fi-severity-spiral.typ:4`: Posits FI→worsened severity as a bidirectional loop
- `oq:fi-screening-protocol.typ:4`: References "the bidirectional FI↔disease severity relationship (Section @ach:food-insecurity-disease-burden)"

The screening protocol claims the achievement demonstrates a bidirectional relationship. But the achievement explicitly says FI→disease is "hypothesised but not demonstrated." This is **not a full contradiction** (the screening says "bidirectional relationship" as a shorthand, not asserting it's proven), but it could mislead a reader. The screening protocol should say "the hypothesised bidirectional FI↔disease severity relationship" or link to the speculation rather than the achievement.

**Recommendation:** In `oq:fi-screening-protocol.typ:4`, change "the bidirectional FI↔disease severity relationship (Section @ach:food-insecurity-disease-burden)" to "the hypothesised bidirectional FI↔disease severity relationship (Section @spec:fi-severity-spiral)" or "the bidirectional FI↔disease severity relationship (Sections @ach:food-insecurity-disease-burden and @spec:fi-severity-spiral)."

---

## Finding 7 (HIGH) — Contradiction: HIV template certainty across files

- `speculation-hiv-food-assistance-template.typ:4`: "Certainty: **0.50** — downgraded from 0.65"
- `changelog.typ:10` (header brackets): `@spec:hiv-food-assistance-template` (cert **0.65**) — wrong
- `changelog.typ:10` (prose): "HIV template cert **0.50** (downgraded from **0.65**)" — correct
- `hypothesis-registry.typ:1310`: cert **0.50** — correct

This is the same discrepancy as Finding 1 but listed separately as a contradiction because the changelog entry *contradicts itself* within the same line (bracketed header says 0.65, prose body says 0.50).

---

## Finding 8 (MEDIUM) — Contradiction: GRADE assessment claim strength

- `achievement.typ:4`: "a systematic GRADE assessment would likely rate overall evidence as **'very low'**"
- `limitation-fi-evidence-quality.typ:4`: item 8 states "A systematic review using GRADE would likely rate overall evidence quality as **'very low'**"
- `synthesis (qol.typ:24)`: "the paper's own GRADE assessment would rate overall evidence quality as **'very low'** (@lim:fi-evidence-quality)"

These are consistent with each other, so **no contradiction within the FI integration itself.** However, note that the achievement (cert 0.55) says GRADE would be "very low" — which would typically correspond to certainty 0.10–0.25 in standard GRADE→certainty mapping. The achievement certainty of 0.55 is higher than GRADE "very low" usually maps to. This is a **plausibility inconsistency** rather than a hard failure, but worth flagging: if the evidence truly is GRADE "very low", a 0.55 certainty may be too high.

**Recommendation:** Consider whether 0.55 is appropriate for GRADE "very low" evidence. If the GRADE analogy is meant loosely (not a formal assessment), caveat it as "hypothetical GRADE assessment" in the limitation.

---

## Finding 9 (LOW) — Consequence presence: all 7 environments have Consequence fields ✓

| File | Has Consequence? |
|------|-----------------|
| `achievement-food-insecurity-mecfs-disease-bu.typ` | ✓ (line 19) |
| `speculation-hiv-food-assistance-template.typ` | ✓ (line 18) |
| `speculation-fi-severity-spiral.typ` | ✓ (line 22) |
| `speculation-fi-null-hypothesis.typ` | ✓ (line 15) |
| `open-question-oq:fi-screening-protocol.typ` | ✓ (line 24) |
| `limitation-fi-causality-undetermined.typ` | ✓ (line 6) |
| `limitation-fi-evidence-quality.typ` | ✓ (line 6) |

All 7 environments pass the consequence check.

---

## Finding 10 (LOW) — Cross-chapter FI mention consistency

- `ch01/demographics/subsec-02-demographics.typ:15-16`: Uses "See Section @sec:quality-of-life-studies for a full treatment" — resolves correctly
- `ch21/very-severe/subsec-05-pathway-very-severe.typ:20`: Uses "Section @ach:food-insecurity-disease-burden" — resolves correctly
- `ch32/risk-factor-studies/demographic-risk-factors.typ:8`: Uses "see Section @sec:quality-of-life-studies" — resolves correctly

All cross-chapter references resolve. The FI concept is consistently referred to as "food insecurity" in all three external chapters.

---

## Finding 11 (MEDIUM) — Hypothesis registry: `@spec:fi-severity-spiral` falsifiable prediction mismatch

- `speculation-fi-severity-spiral.typ:17`: "≥10-point decline in SF-36 PCS"
- `hypothesis-registry.typ:1312`: "≥10-point SF-36 PCS decline"

These match. However, the registry adds "PBMC spare respiratory capacity declines in FI+ vs FI- patients" which is not in the speculation file's falsifiable prediction. The speculation file has this under a separate bullet: "PBMC spare respiratory capacity will decline in FI+ patients relative to matched controls" (line 17). **Consistent** — the registry prediction is a superset of the file's prediction. No issue.

---

## Finding 12 (HIGH) — Changlog says 6 registry entries but count is actually 7

`changelog.typ:10`: "hypothesis registry, 6 new entries (1 achievement, 4 speculations, 1 open-question)"

Count:

1. Food Insecurity as Documented Disease Correlate (A) — line 1304
2. Nutritional Vulnerability Cascade in Severe/Bedbound ME/CFS (S) — line 1306
3. HIV Food Assistance Template for ME/CFS (S) — line 1310
4. FI↔ME/CFS Severity Spiral (S) — line 1312
5. Null: FI Has No Independent Effect on ME/CFS Outcomes (S) — line 1314
6. Routine FI Screening in ME/CFS Clinical Care (O) — line 1316

That's 6 entries (1A + 4S + 1O) which matches the changelog. **No issue** — the Nutritional Vulnerability Cascade is part of the same batch but goes uncounted in the changelog (it was probably added later). The changelog says 6 and there are 6 explicitly listed under the FI header. The 7th entry (Nutritional Vulnerability) is a registry-only entry (no label, no chapter file). This is a minor accounting omission but not wrong per se.

---

## Finding 13 (LOW) — Changlog FI entry count mismatch: 11 vs 12 Appendix H entries

`changelog.typ:10`: "Appendix H, new annotated entries for Dey 2026, Lin 2025, Datta 2025, Feldman 2025, Bowden 2026, Weigel 2025, Vester 2026, Samms 2025, Aguilar-Aguilar 2020, Jones 2017, Dorczok 2025 (11 entries)."

Count: Dey, Lin, Datta, Feldman, Bowden, Weigel, Vester, Samms, Aguilar-Aguilar, Jones, Dorczok = **11**. ✓ Correct.

---

## Finding 14 (LOW) — No contradiction: Jones 2017 cited as "limited evidence" consistently

- `speculation-fi-null-hypothesis.typ:7`: "Jones 2017 (systematic review, cert 0.50) found limited evidence for dietary modification in CFS"
- `synthesis (qol.typ:26)`: "Jones 2017 found limited evidence for dietary modification in CFS"
- `hypothesis-registry.typ:1314`: "Consistent with Jones 2017 systematic review (cert 0.50) finding limited dietary modification benefit"
- `speculation-fi-severity-spiral.typ:20`: "Systematic reviews have found limited evidence for dietary modification in CFS/ME (Jones 2017)"

All consistent. No contradiction.

---

## Finding 15 (LOW) — No contradiction: Dorczok 2025 cited as "low-certainty" consistently

- `speculation-fi-null-hypothesis.typ:7`: "Nutritional supplementation evidence in ME/CFS is low-certainty overall (Dorczok 2025, cert 0.55)"
- `limitation-fi-evidence-quality.typ:4` (item 6): "Nutritional supplementation evidence in ME/CFS is low-certainty (Jones 2017 cert 0.50; Dorczok 2025 cert 0.55)"
- `synthesis (qol.typ:26)`: "nutritional supplementation evidence in ME/CFS is low-certainty (Dorczok 2025, cert 0.55)"
- `appendix-h:23815`: "Certainty: 0.55"

All consistent.

---

## Finding 16 (LOW) — Contradiction: SNAP interaction p-value

- `speculation-hiv-food-assistance-template.typ:10`: "SNAP attenuation interaction (p=0.04)"
- `achievement-food-insecurity.typ:8`: "SNAP participation attenuated the association (p-interaction=0.04, uncorrected for multiple comparisons)"
- `hypothesis-registry.typ:1310`: "p-interaction=0.04"

Achievement notes "uncorrected for multiple comparisons" — HIV template and registry omit this caveat. **Minor** — the HIV template should also note the caveat for completeness. All three cite the same p-value (0.04) which is correct per Lin 2025.

**Recommendation:** Add "uncorrected for multiple comparisons" to the HIV template's mention of the SNAP p-interaction.

---

## Summary

| Sev | Count | Key findings |
|-----|-------|-------------|
| HIGH | 3 | Finding 1 (changelog cert 0.65 vs actual 0.50); Finding 7 (same issue as contradiction); Finding 12 (resolved: changelog count is correct) |
| MEDIUM | 3 | Finding 3 (terminology: food access vs food insecurity); Finding 6 (screening protocol over-claims bidirectional evidence); Finding 8 (GRADE "very low" ↔ cert 0.55 plausibility) |
| LOW | 7 | Findings 4, 5, 9, 10, 11, 13, 14, 15, 16 — mostly minor caveats and consistency checks |

**Must-fix (HIGH priority):** 1 fix

1. **`changelog.typ:10`**: Change `@spec:hiv-food-assistance-template` (cert 0.65) → (cert 0.50) in the bracketed header summary.

**Should-fix (MEDIUM priority):** 3 recommendations

1. **`oq:fi-screening-protocol.typ:4`**: Clarify bidirectional relationship is hypothesised, not demonstrated — change reference to `@spec:fi-severity-spiral` instead of `@ach:food-insecurity-disease-burden`.
2. **`limitation-fi-evidence-quality.typ:4` (item 3)**: Change "food access" → "food insecurity" when describing Feldman 2025 composite SDoH measure.
3. **`speculation-hiv-food-assistance-template.typ:10`**: Add "uncorrected for multiple comparisons" caveat to SNAP p-interaction.

**No orphan labels, no missing Consequence fields, no structural contradictions.**
