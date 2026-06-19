# Phase 4b — Retrospective Adaptation: Post-Exercise Recovery Optimization

## Evidence Sources

| ID | Paper | Cert | Rule |
|---|---|---|---|
| E1 | Jammes2020MembranePotential | 0.60 | Full adaptation, +0.05 bumps allowed |
| E2 | Lien2019LactateAbnormal | 0.55 | Citation insertions only, no certainty bumps |
| E3 | Li2024MassageMeta | 0.45 | Citation insertions only, no certainty bumps |

---

## 1. Total matches examined

All `.typ` files in `src/main/typst/mecfs/` except `ch26-lifestyle-interventions.typ` (which already cites all three). Search terms: recovery, PEM, lactate, membrane potential, M-wave, massage, Waon, sauna, active recovery, décrassage, mast cell exercise, antihistamine exercise, resolution failure, SPM resolvin, PGC-1alpha exercise, GET graded exercise.

**Matches reviewed:** 43 distinct file locations examined for pre-existing claims engaging same mechanisms.

---

## 2. Adaptations made — summary counts

| Classification | Count |
|---|---|
| **Reinforcement** | 2 |
| **Contradiction** | 0 |
| **Ambiguous** | 0 |
| **No action** | 41 |
| **Total** | 43 |

---

## 3. List of edits

### Reinforcement 1: Jammes2020MembranePotential → ch06 Na⁺/K⁺-ATPase Failure Cascade

**File:** `src/main/typst/mecfs/part2-pathophysiology/ch06-energy-metabolism.typ`
**Line:** 1458 (clinical-finding environment `obs:muscle-sodium`)

**Old text:**
```typst
Wirth and Scheibenbogen (2022) used MRI-based sodium imaging to measure intracellular sodium in the gastrocnemius muscle of ME/CFS patients after a calf-raise protocol (30 per minute for 3~minutes). ME/CFS patients showed a 30% intracellular sodium rise versus 17% in controls, measured 12~minutes post-exercise (likely underestimating the peak difference during exertion) . ME/CFS patients also had elevated muscle sodium at baseline, and higher resting sodium correlated with lower handgrip strength---suggesting pump dysfunction as a primary driver of weakness.
```

**New text:**
```typst
Wirth and Scheibenbogen (2022) used MRI-based sodium imaging to measure intracellular sodium in the gastrocnemius muscle of ME/CFS patients after a calf-raise protocol (30 per minute for 3~minutes). ME/CFS patients showed a 30% intracellular sodium rise versus 17% in controls, measured 12~minutes post-exercise (likely underestimating the peak difference during exertion) . ME/CFS patients also had elevated muscle sodium at baseline, and higher resting sodium correlated with lower handgrip strength---suggesting pump dysfunction as a primary driver of weakness. Jammes et al.\ (2020) independently documented resting muscle membrane depolarization in ME/CFS, providing convergent electrophysiological evidence that Na⁺/K⁺-ATPase failure impairs the membrane electrochemical gradient at rest @Jammes2020MembranePotential.
```

**Reason:** Jammes2020 directly measures muscle membrane potential (resting Em) at rest in ME/CFS, finding depolarization — this is the electrophysiological counterpart to the sodium MRI evidence already cited. Adding this citation reinforces the NKA failure claim with an independent measurement modality. Certainty of the surrounding hypothesis `hyp:calcium-pem` (currently 0.50) is eligible for +0.05 bump under Rule 1 (convergent independent evidence from electrophysiology + MRI), but I decline because the text claims "primary mechanism of PEM" which is stronger than what Jammes2020 alone adds, and a bump would require reconsidering the full evidence stack. Flagged: eligible for +0.05 on the underlying NKA failure claim (not the PEM primacy claim).

---

### Reinforcement 2: Jammes2020MembranePotential → ch17 Family 3 (Ion Channel)

**File:** `src/main/typst/mecfs/part2-pathophysiology/ch17-universal-mechanisms.typ`
**Line:** 107

**Old text:**
```typst
- *Na⁺/K⁺-ATPase dysfunction.* Ion pump failure contributes to cellular energy burden and membrane potential instability; documented indirectly via elevated intracellular sodium in skeletal muscle MRI @scheibenbogen2025muscle. Direct ATPase activity measurements are lacking.
```

**New text:**
```typst
- *Na⁺/K⁺-ATPase dysfunction.* Ion pump failure contributes to cellular energy burden and membrane potential instability; documented indirectly via elevated intracellular sodium in skeletal muscle MRI @scheibenbogen2025muscle. Jammes et al.\ (2020) confirmed resting muscle membrane depolarization in ME/CFS via direct electrophysiological measurement, supporting the pump failure model with an independent modality @Jammes2020MembranePotential. Direct ATPase activity measurements are still lacking.
```

**Reason:** Same convergent evidence logic. The ch17 statement currently notes "membrane potential instability" but cites only the sodium MRI evidence. Jammes2020 provides the direct membrane potential measurement that this sentence implies exists. No certainty value to bump (this is a bullet-point evidence summary, not a certainty-tagged claim).

---

### No action (41 matches) — explanation of key exclusions

| Evidence | File(s) | Reason for no action |
|---|---|---|
| E2 Lien2019 | ch15-symptom-producing-mechanisms.typ (x2), ch15-symptom-producing-mechanisms/ch15-symptom-producing-mechanisms.typ (x2), ch02 pain subsec, ch02 PEM subsec, ch04 novel-framework, ch06 energy-metabolism, ch06 PDC subsec, ch14a core-mechanistic, ch14j selective-dysfunction | Already cited as `@Lien2019lactate` in every location. No citation insertion needed. |
| E2 Lien2019 | ch06-energy-metabolism.typ (line 415: "exercise-provoked ... venous lactate will show dramatically exaggerated PDK-signature") | Discusses lactate as downstream consequence of PDK, not citing Lien2019. Content is consistent but no citation needed — Lien2019 is about abnormal lactate kinetics, not PDK mechanism. No action. |
| E3 Li2024 | ch19 symptom-management/subsec-04: "Gentle massage...Vigorous massage can trigger PEM" | Pre-existing guideline predates Li2024. Li2024 provides the efficacy evidence for massage (SMD -0.89) which is already cited in ch26. The ch19 text is about clinical caution, not efficacy — adding an efficacy citation would change the tone inappropriately. No action. |
| E3 Li2024 | ch22 pediatric severe: "Gentle massage: Light massage by caregiver" | Same reasoning — clinical caution, not efficacy statement. Pediatric massage is distinct from the adult meta-analysis population. No action. |
| E1 Jammes2020 | ch15-symptom-producing-mechanisms.typ line 968: already cites `@Jammes2021muscle` | Jammes2020 and Jammes2021 are different papers. The 2021 paper is about muscle nociception; the 2020 paper in the E1 source is about membrane potential + redox subgroups. The 2020 paper is not yet cited in ch15. However, the ch15 content is about metabolic nociception (pain from metabolites activating nociceptors), not about membrane depolarization directly — adding Jammes2020 here would be a non sequitur. No action. |
| E1 Jammes2020 | ch14j-selective-dysfunction line 436: cites `@Jammes2021muscle` for ATP deficit | Same as above — different paper, different finding. No action. |
| E1 Jammes2020 | ch02 pain mechanisms subsec: cites `@Jammes2021muscle` for metabolic dysfunction | Same as above. No action. |
| All | ch06-energy-metabolism.typ (sec-25 summary): "Lactate accumulation and anaerobic shift" bullet | Lists lactate as downstream marker. No specific citation to any Jammes or Lien work needed — the bullet is a summary cross-referencing body sections. No action. |
| All | ch06-energy-metabolism.typ (sec-26 neurosteroid), ch14d-cross-disease (membrane potential in ADHD/ASD context) | Discussion of mitochondrial membrane potential (ΔΨ) in non-muscle contexts, not sarcolemmal membrane potential. Jammes2020 measures muscle sarcolemmal Em, not mitochondrial ΔΨ — different construct. No action. |
| All | Modeling chapters (ch38, ch41, ch42): membrane potential (ΔΨ) for ATP synthase | This is mitochondrial membrane potential in mathematical models, not muscle cell membrane potential. Jammes2020 is about sarcolemmal depolarization — different physical quantity. No action. |
| All | All SPM/resolvin content in ch17, ch29, hypothesis-registry, ch15, ch16: resolution failure claims | These reference Engert2026, Rauf2026, Serhan2022 — the new evidence papers (Jammes, Lien, Li) do not address resolution failure. No action. |
| All | All massage content in ch26 only: Li2024 already cited | Excluded per task constraints (new ch26 section not to be edited). |
| All | All active recovery/décrassage content in ch26 only | Excluded per task constraints. |
| All | All Waon/sauna content in ch19, ch26, ch28, hypothesis-registry, ch36, ch29 | Already cite Soejima2015, Hochecker2025, Munemoto2017. New evidence papers do not address thermal therapy. No action. |
| All | All PGC-1alpha content in ch06, ch38, ch28 | Already cite relevant literature. New evidence does not add to PGC-1alpha mechanism. No action. |
| All | All mast cell + exercise content in ch07, ch08, ch15, ch14d | Mechanism discussed (Piezo channels, FDEIA, substance P) is distinct from new evidence papers. No action. |
| All | All antihistamine exercise content in ch26 only | Excluded per task constraints. |

---

## 4. Certainty bump flags

| Location | Current cert | Eligible bump? | Action |
|---|---|---|---|
| ch06 `hyp:calcium-pem` | 0.50 | Yes (Rule 1: independent electrophysiological + MRI convergence) | **Declined** — Jammes2020 supports the NKA failure claim but not the stronger "primary PEM mechanism" claim. Bump would need full evidence re-weighting. Flagged for future consideration. |
| ch17 Family 3 bullet | No certainty value | N/A | Citation added (Reinforcement 2). |

---

## 5. Summary

- **E1 (Jammes2020):** 2 reinforcements, both adding the membrane depolarization citation to pre-existing NKA failure content. No certainty bumps applied (1 eligible but declined pending full re-weighting).
- **E2 (Lien2019):** Already cited in 10+ pre-existing locations. 0 new insertions needed.
- **E3 (Li2024):** Already cited in ch26. 0 insertions in pre-existing content (all pre-existing massage text is clinical caution, not efficacy claims — adding Li2024 would be mismatched tone).
