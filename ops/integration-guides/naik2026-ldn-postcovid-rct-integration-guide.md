# Integration Guide: Naik 2026 — LDN for Post-COVID Fatigue Syndrome (RCT)

**Topic slug:** `naik2026-ldn-postcovid-rct`
**Driving paper bib key:** `Naik2026LDNPostCOVIDRCT` (certainty 0.65)

## Headline result

The **first double-blind, placebo-controlled RCT of low-dose naltrexone (LDN) in a post-viral-fatigue population is NULL.** LDN (1.0→4.5 mg/day ×16 weeks) did not improve fatigue (FSS) vs placebo in n=160 people with post-COVID fatigue syndrome, with a consistent null across every secondary outcome (pain VAS, PQSymp-12, step count, EQ-5D-5L). Well-tolerated (grade ≥3 AE 6.2% vs 3.8%).

This directly resolves two open claims already in the paper:
- ch24 sec-14 LDN entry, line 56: *"no ME/CFS-specific placebo-controlled RCT exists"*
- ch24 sec-14 LDN entry, line 62: *"LDN may simply not work better than placebo in ME/CFS. No large RCT exists. If LDN = placebo, every inference above collapses."*

A large RCT now exists (in the closest proxy population, post-COVID fatigue), and it is null.

---

## Recommended Chapters for Integration

### Primary Target: ch30 — LDN "Evidence in ME/CFS" subsection (currently a STUB)

**File:** `src/main/typst/mecfs/part3-treatment/ch30-medications-systems/sec-01-immune-modulating-medications/subsec-low-dose-naltrexone-ldn/subsubsec-evidence-in-mecfs/subsubsec-evidence-in-mecfs.typ`
**Current state:** The file contains only the heading `==== Evidence in ME/CFS` (empty).
**Environment type:** `clinical-finding` (established null RCT result)
**Rationale:** This stub is the designated home for LDN evidence. The null RCT is the single most important evidence datapoint now available — it must be stated first and prominently.

**Suggested Typst:**
```typst
==== Evidence in ME/CFS

#clinical-finding(title: [First Placebo-Controlled LDN RCT Is Null (Post-COVID Fatigue)])[
The first double-blind, placebo-controlled RCT of low-dose naltrexone in a post-viral-fatigue population reported a null result. Naik et al.\ (2026) randomized 160 adults with post-COVID fatigue syndrome (PCFS — new ME/CFS-like symptoms ≥3 months after SARS-CoV-2) 1:1 to LDN (1.0→4.5 mg/day) or placebo for 16 weeks (decentralized, BC + Ontario, Canada; NCT05430152). At 16 weeks the primary outcome (Fatigue Severity Scale) did not differ between arms (adjusted mean difference −0.76, 95% CI −4.18 to 2.67), and no secondary outcome differed (pain VAS, PQSymp-12, daily step count, EQ-5D-5L). Grade ≥3 adverse events were 6.2% (LDN) vs 3.8% (placebo). @Naik2026LDNPostCOVIDRCT (preprint, not yet peer-reviewed) @Naik2024LDNprotocol

*Population caveat:* This is post-COVID fatigue, not classic ME/CFS — the result weakens but does not by itself falsify the ME/CFS-specific case (no ME/CFS-specific LDN RCT has yet reported; the LIFT factorial trial is still recruiting). Together with the fibromyalgia LDN null RCTs (@DueBruun2024LDNFibromyalgia, @Nielsen2026LDNFMResponder, @RodriguezFreire2026LDNFMINNOVA), however, LDN has now failed placebo-controlled testing in *two* chronic-fatigue-adjacent populations while its positive evidence remains entirely uncontrolled (@Polo2019, @Tamariz2024LDNpostcovid, @OKelly2022LDNlongcovid). @Gouda2026LDNevidence
]
```

### Secondary Target: ch24 — LDN pharmacodiagnostic entry (correct the "no RCT exists" claims)

**File:** `src/main/typst/mecfs/part3-treatment/ch24-medication-response-reference/sec-14-immune-neuroimmune/subsec-low-dose-naltrexone-ldn/subsec-low-dose-naltrexone-ldn.typ`
**Environment type:** inline caveat (edit existing prose), not a new environment
**Rationale:** Lines 56 and 62 state "no RCT exists / no large RCT exists." Both are now outdated. Amend to cite the null RCT rather than leave a now-false "no RCT" claim.

**Suggested edits:**
- Line 56 (~"no ME/CFS-specific placebo-controlled RCT exists"): append "and the first placebo-controlled RCT in a post-viral-fatigue population (post-COVID fatigue, n=160) was null @Naik2026LDNPostCOVIDRCT."
- Line 62 ("No large RCT exists. If LDN = placebo, every inference above collapses."): replace with "A large RCT now exists — the Naik 2026 post-COVID-fatigue trial (n=160) — and it was null @Naik2026LDNPostCOVIDRCT. If that result generalizes to classic ME/CFS, the placebo-vs-pharmacological question for LDN is answered in the negative, and every dose-response inference above that rests on open-label response collapses."

### Tertiary Target: appendix-g (downgrade the LDN evidence rating)

**File:** `src/main/typst/mecfs/appendices/appendix-g-research-synthesis.typ`
**Lines:** ~121 (`[Low-Dose Naltrexone (LDN)]`, rated "MODERATE (large observational; no RCT)") and ~356 (`[LDN], [3.0–4.5mg/day], [MODERATE (n=218 observational)]`)
**Environment type:** evidence-grade edit (table cell)
**Rationale:** The rating "no RCT" is now outdated — an RCT exists and is null. Downgrade to reflect that the observational signal did not replicate under placebo control.
**Suggested:** change "MODERATE (large observational; no RCT)" → "LOW–MODERATE (observational signal; first RCT null in post-COVID fatigue @Naik2026LDNPostCOVIDRCT)".

### Cross-disease note (plan said "ch14d"; actual home is ch16/ch20)

The plan referenced "ch14d (cross-disease)." No `ch14d` directory exists; cross-disease comparison lives in `part2-pathophysiology/ch16-comparative-nosology` and `ch20-universal-mechanisms`. Optional one-line addition there: post-COVID fatigue and ME/CFS may not share treatment-response equivalence — a treatment failing in PCFS does not resolve the ME/CFS question, but it removes the nearest proxy.

---

## Key Points to Convey

1. **Null primary + null secondary + null subgroups.** This is a *consistent* null, not a single-endpoint miss. The objective step-count endpoint was also null — the failure is not an artifact of subjective reporting.
2. **Safety confirmed, efficacy refuted (in this population).** LDN is well tolerated; tolerability is not the question.
3. **Observational → placebo-controlled inversion.** The entire prior LDN post-viral-fatigue case was uncontrolled (Polo 2019, Tamariz 2024, O'Kelly 2022, Isman 2024, Byambasuren 2026 meta finding *zero* RCTs). The first RCT is negative. This mirrors Gouda 2026's warning that early positive uncontrolled LDN results "rarely survive placebo-controlled testing."
4. **Population discount is load-bearing.** Do NOT write "LDN doesn't work for ME/CFS." Write "LDN failed its first placebo-controlled test in post-COVID fatigue (a 0.85-weighted proxy), and the ME/CFS-specific question remains formally open pending LIFT."
5. **Responder subtype not excluded.** Prespecified subgroups found no effect modifier, but the trial was not enriched for a TRPM3/inflammatory subtype; the Younger 2013 ESR hypothesis and the Cabanas TRPM3 in-vitro restoration remain untested as response predictors.

## Certainty Assessment for Integration

- **Quality:** High design (double-blind, n=160, prespecified SAP) but **preprint — not peer-reviewed**
- **Sample:** n=160
- **Replication:** First RCT in post-COVID fatigue; directionally consistent with the fibromyalgia LDN null RCTs
- **Limitations:** preprint; wide CI on primary (−4.18 to 2.67); PCFS ≠ classic ME/CFS; modest adherence asymmetry (77.9% vs 86.8%)
- **Certainty to cite:** 0.65 (raw 0.75 × population 0.85)

## Bib keys produced this cycle (verify against treatments.bib)

```
Naik2026LDNPostCOVIDRCT
Naik2024LDNprotocol
Tamariz2024LDNpostcovid
OKelly2022LDNlongcovid
Isman2024LDNNAD
```
