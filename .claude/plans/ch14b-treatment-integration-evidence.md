# Ch14b Treatment Integration: Evidence Synthesis

**Date:** 2026-01-31
**Target:** `/home/nicky/code/health-me-cfs/contents/part3-treatment/ch14b-action-mild-moderate.tex`
**Status:** Literature research COMPLETE, ready for integration

---

## Executive Summary

Six treatments identified for integration into ch14b with varying evidence levels:

| Treatment | Evidence Level | Papers | Target Section |
|-----------|---------------|--------|----------------|
| Daridorexant/DORAs | HIGH | 8 | Sleep (after L437) |
| PEA | HIGH/MEDIUM | 5 | Pain (after L458) |
| NAC | HIGH/MEDIUM | 3 | Mitochondrial (after L815) |
| Citrulline-malate | MEDIUM | 3 | Mitochondrial + PEM (L46-56) |
| D-ribose | LOW-MEDIUM | 5 | Mitochondrial + PEM (L46-56) |
| tVNS | HIGH (POTS) | 4 | POTS (after L508) |

---

## 1. Daridorexant/DORAs (Sleep Section)

### Evidence Summary

**Existing in bibliography (Jan 29 work):**
- StOnge2022daridorexant - Phase 3 efficacy review
- LopezAmador2025orexin - Orexin dysfunction in ME/CFS (27 studies)
- Nie2023daridorexant - Comprehensive clinical profile
- Kunz2022daridorexant - 52-week long-term safety

**NEW papers discovered:**
- Xue2022dora - Network meta-analysis (13 RCTs) - class-wide DORA efficacy
- Rocha2023dora - Network meta-analysis (10 RCTs, 7,806 patients) - dose-response
- DiMarco2023wakebouts - Wake bout analysis vs zolpidem (n=1,111) - mechanistic superiority
- Dutta2023daridorexant - GRADE systematic review - HIGH-confidence safety

### Key Findings
- **Efficacy:** Converging evidence from multiple independent meta-analyses
- **Safety:** 52-week extension + GRADE assessment = HIGH confidence
- **Mechanism:** Orexin dysfunction documented in ME/CFS; DORAs consolidate sleep by reducing long wake bouts
- **Comparative:** Superior to Z-drugs for chronic use (no hangover, no tolerance)

### Integration Target
**Line:** After 437 (after current prescription sleep options)
**Environment:** `achievement` for RCT evidence
**Content highlights:**
- Dose: 25mg, escalate to 50mg if needed
- No tolerance/withdrawal with intermittent use
- Patient currently uses 25mg as needed

### BibTeX Status
- 4 existing entries: MISSING from references.bib (need to add)
- 4 new entries: Need to create

---

## 2. Palmitoylethanolamide (PEA) (Pain Section)

### Evidence Summary

**Meta-analyses:**
- Artukoglu2017 - 10 studies, n=1298, WMD=2.03 (p<0.001)
- LangIlievich2023 - 11 RCTs, n=774, SMD=1.68 (p<0.00001)
- Vina2025 - 18 RCTs, n=1196 - **MOST COMPREHENSIVE**
  - Nociceptive: SMD=-0.74
  - Neuropathic: SMD=-0.97
  - **Nociplastic: SMD=-0.59** (key for ME/CFS central sensitization)

**Mechanistic:**
- Petrosino2019 - Mast cell stabilization via DAGL/2-AG/CB2 pathway
- Varrassi2025 - PPAR-α agonism, 20+ years clinical use

### Key Findings
- **Pain types:** Effective for ALL pain types in ME/CFS (nociceptive, neuropathic, nociplastic)
- **Mast cells:** Novel mechanism directly relevant to MCAS subset
- **Safety:** NO major adverse events, NO drug interactions, 20+ years use
- **Better evidence than curcumin** (currently in ch14b)

### Integration Target
**Line:** After 458 (add to "Neuropathic pain component")
**Environment:** `observation` for meta-analytic evidence; `hypothesis` for ME/CFS-specific mechanisms
**Content highlights:**
- Formulation: Micronized/ultramicronized (NOT naïve PEA)
- Dose: 600 mg BID
- Time to benefit: 4-6 weeks initial, peak at 24-26 weeks
- Position: "Add if insufficient" tier alongside LDN

### BibTeX Status
- LangIlievich2023: May already exist (verify)
- Petrosino2019: May already exist (verify)
- NEW: Artukoglu2017, Vina2025, Varrassi2025

---

## 3. NAC (N-Acetylcysteine) (Mitochondrial Section)

### Evidence Summary

**Brain glutathione deficiency (HIGH certainty):**
- Shungu2012glutathione (ALREADY IN BIB) - 36% reduction in cortical GSH, correlates with energy/function
- Godlewska2021glutathione (NEW) - 7T MRS replication, also reduced creatine/myo-inositol

**NAC treatment (MEDIUM certainty):**
- Shungu2016NACtrial (NEW - conference) - 1800 mg/day × 4 weeks, p=0.006 symptom improvement
- NIH RCT ongoing: NCT04542161 (n=60, 0/900/3600 mg/day), completion April 2026

### Key Findings
- **Documented deficiency:** 36% brain GSH reduction (replicated with 7T MRS)
- **Clinical correlates:** GSH correlates with physical function (ρ=0.506) and energy (ρ=0.606)
- **BBB penetration:** First proof oral NAC crosses BBB and elevates brain GSH
- **Treatment response:** Pilot positive, rigorous NIH RCT ongoing

### Integration Target
**Line:** After 815 (after mitochondrial clinical decision statement)
**Environment:** `achievement` for deficiency; `hypothesis` for treatment efficacy
**Content highlights:**
- Dose: 1800-3600 mg/day divided
- Mechanism: Cysteine → glutathione synthesis
- Bioavailability: 4-11% (higher with higher doses)
- Safety: >30 years use, up to 3000 mg/day

### BibTeX Status
- Shungu2012glutathione: Already exists
- NEW: Godlewska2021glutathione, Shungu2016NACtrial

---

## 4. Citrulline-Malate (Mitochondrial + PEM Sections)

### Evidence Summary

**Metabolomics (HIGH certainty):**
- Yamano2016tca_urea (ALREADY IN BIB) - Ornithine/citrulline ratio elevated, TCA intermediates reduced (n=133)

**Exercise performance (HIGH certainty for mechanism):**
- Bendahan2002 (NEW) - 6g/day × 15 days: 34% ↑ oxidative ATP, 20% ↑ PCr recovery (31P MRS)
- PerezGuisado2010 (NEW) - 8g single dose: 52.92% more repetitions, 40% ↓ muscle soreness (RCT, n=41)

### Key Findings
- **Documented deficiency:** TCA cycle intermediates (citrate, isocitrate, malate) reduced in ME/CFS
- **Mechanism:** Malate = TCA cycle intermediate; citrulline = urea cycle/ammonia detoxification
- **ATP enhancement:** Objective 31P MRS evidence for increased oxidative ATP production
- **NO ME/CFS intervention trials** - evidence extrapolated

### Integration Target
**Lines:** After 815 (mitochondrial section) AND expand 46-56 (Emergency PEM keypoint)
**Environment:** `hypothesis` (mechanistic rationale, no ME/CFS trials)
**Content highlights:**
- Dose: Start 3g/day, target 6g/day divided
- Duration: Minimum 2-4 weeks for metabolic adaptation
- Safety: Well-tolerated up to 15g/day; main side effect: mild GI discomfort

### BibTeX Status
- Yamano2016tca_urea: Already exists
- NEW: Bendahan2002, PerezGuisado2010

---

## 5. D-Ribose (Mitochondrial + PEM Sections)

### Evidence Summary

**ME/CFS clinical studies (LOW-MEDIUM certainty - open-label):**
- Teitelbaum2006ribose (ALREADY IN BIB) - n=41, 45% energy ↑, 30% well-being ↑
- Teitelbaum2012ribose (NEW) - n=257, 53 clinics, 61.3% energy ↑ (p<0.0001)

**Mechanistic:**
- Dodd2004ribose (NEW) - Skeletal muscle metabolism review
- Paterson1989ribose (NEW) - Canine model: 85% ATP recovery at 24hr vs 0% controls
- Sinatra2009metabolic (NEW) - Combination therapy rationale

### Key Findings
- **Large effect sizes:** 45-61% energy improvement
- **Replication:** Pilot → multicenter (n=257)
- **Mechanism:** Ribose = nucleotide synthesis substrate; bypasses rate-limiting step
- **CRITICAL CONTRAINDICATION:** Diabetes, hypoglycemia (paradoxical blood sugar drop)

### Integration Target
**Lines:** After 815 (mitochondrial section) AND expand 46-56 (Emergency PEM keypoint)
**Environment:** `achievement` with strong caveats about open-label design
**Content highlights:**
- Dose: 5g TID (15g/day) with meals
- Effects begin: Within 1 week
- **BOLD WARNING:** Contraindicated in diabetes/hypoglycemia
- Consider combination with CoQ10, L-carnitine, magnesium

### BibTeX Status
- Teitelbaum2006ribose: Already exists
- NEW: Teitelbaum2012ribose, Dodd2004ribose, Paterson1989ribose, Sinatra2009metabolic

---

## 6. tVNS (Transcutaneous Vagus Nerve Stimulation) (POTS Section)

### Evidence Summary

**RCT evidence (HIGH certainty for POTS):**
- Teixeira2024POTS (NEW) - **FIRST SHAM-CONTROLLED RCT**
  - n=26 (12 active, 14 sham), 2 months
  - HR increase during tilt: 26.4 → 17.6 bpm (p<0.05)
  - ↓ β1AR/α1AR autoantibodies, ↓ inflammatory cytokines, ↑ HRV

**Safety:**
- Farmer2022taVNS (NEW) - Meta-analysis: well-tolerated, skin irritation most common, no cardiac concerns

**ME/CFS-specific:**
- Lugg2024MECFS (NEW) - Survey n=116: 56% favorable; **CRASH WARNING in severe ME/CFS**
- NatelsonTVNS2022 (already exists) - Long COVID/ME/CFS pilot: 57% response

### Key Findings
- **HIGH certainty for POTS:** First sham-controlled RCT shows significant benefit
- **Mechanism:** Cholinergic anti-inflammatory pathway, autonomic rebalancing
- **SAFETY SIGNAL:** "Normal" settings can cause crashes in severe ME/CFS
- **Home-based:** Suitable for bedbound patients with proper titration

### Integration Target
**Line:** After 508 (after Ivabradine)
**Environment:** `achievement` for POTS RCT; `warning` for severe ME/CFS safety
**Content highlights:**
- Device: Auricular (tragus/cymba concha), 20-25 Hz
- Protocol: Start 0.5-1 mA, 5-10 min; titrate over weeks
- Target: 1 hour daily × 2 months
- Severe ME/CFS: Extra caution, slower titration

### BibTeX Status
- NatelsonTVNS2022: Already exists
- NEW: Teixeira2024POTS, Farmer2022taVNS, Lugg2024MECFS

---

## Integration Execution Order

To avoid line number shifts, edit from highest line number to lowest:

1. **Line 815+**: Mitochondrial section (NAC, citrulline-malate, D-ribose)
2. **Line 508+**: POTS section (tVNS)
3. **Line 458+**: Pain section (PEA)
4. **Line 437+**: Sleep section (Daridorexant)
5. **Lines 46-56**: Emergency PEM keypoint (expand with metabolic stack)

---

## BibTeX Entries Summary

### Already in references.bib (verify):
- Shungu2012glutathione
- Yamano2016tca_urea
- Teitelbaum2006ribose
- NatelsonTVNS2022
- (Check: LangIlievich2023, Petrosino2019)

### Missing from references.bib (need to add from Jan 29 work):
- StOnge2022daridorexant
- LopezAmador2025orexin
- Nie2023daridorexant
- Kunz2022daridorexant

### NEW entries to create:
1. Xue2022dora
2. Rocha2023dora
3. DiMarco2023wakebouts
4. Dutta2023daridorexant
5. Artukoglu2017
6. Vina2025
7. Varrassi2025
8. Godlewska2021glutathione
9. Shungu2016NACtrial
10. Bendahan2002
11. PerezGuisado2010
12. Teitelbaum2012ribose
13. Dodd2004ribose
14. Paterson1989ribose
15. Sinatra2009metabolic
16. Teixeira2024POTS
17. Farmer2022taVNS
18. Lugg2024MECFS

**Total: ~22 BibTeX entries to add/verify**

---

## Model Assignment for Execution

### Sonnet Tasks (Judgment Required):
- Evaluate recursive research candidates
- Select appropriate LaTeX environments
- Write clinical content with proper certainty framing
- Scientific rigor audit

### Haiku Tasks (Mechanical):
- Format BibTeX entries
- Execute chapter edits (with explicit line numbers)
- Verify grep after edits
- Build verification

---

## Verification Checklist

### Pre-integration:
- [ ] All BibTeX entries added to references.bib
- [ ] BibTeX syntax validates
- [ ] No duplicate keys

### Post-integration:
- [ ] `nix build` succeeds
- [ ] All `\cite{}` keys resolve
- [ ] All `\ref{}` targets exist
- [ ] Contraindications prominently displayed (D-ribose diabetes)
- [ ] Evidence limitations stated for each treatment
- [ ] Certainty assessments included

### Cross-chapter:
- [ ] Ch14a parallel updates (if needed for severe cases)
- [ ] Ch18 emergency protocol cross-references valid
- [ ] No conflicts with ch15/ch16

---

## Sources

### Daridorexant/DORAs:
- https://pubmed.ncbi.nlm.nih.gov/34902823/ (Xue 2022)
- https://pubmed.ncbi.nlm.nih.gov/37257468/ (Rocha 2023)
- https://pubmed.ncbi.nlm.nih.gov/37477771/ (Di Marco 2023)
- https://pubmed.ncbi.nlm.nih.gov/37526060/ (Dutta 2023)

### PEA:
- https://pubmed.ncbi.nlm.nih.gov/28727699/ (Artukoglu 2017)
- https://pubmed.ncbi.nlm.nih.gov/36986081/ (Lang-Ilievich 2023)
- https://pubmed.ncbi.nlm.nih.gov/39798151/ (Viña 2025)
- https://pubmed.ncbi.nlm.nih.gov/31878942/ (Petrosino 2019)
- https://pubmed.ncbi.nlm.nih.gov/39630391/ (Varrassi 2025)

### NAC:
- https://pubmed.ncbi.nlm.nih.gov/34609538/ (Godlewska 2021)
- https://clinicaltrials.gov/study/NCT04542161 (NIH RCT)

### Citrulline-Malate:
- https://pubmed.ncbi.nlm.nih.gov/12145119/ (Bendahan 2002)
- https://pubmed.ncbi.nlm.nih.gov/20386132/ (Pérez-Guisado 2010)

### D-Ribose:
- https://pubmed.ncbi.nlm.nih.gov/17109576/ (Teitelbaum 2006)
- https://www.researchgate.net/publication/273482824 (Teitelbaum 2012)
- https://pubmed.ncbi.nlm.nih.gov/15082114/ (Dodd 2004)

### tVNS:
- https://pubmed.ncbi.nlm.nih.gov/37999672/ (Teixeira 2024)
- https://www.nature.com/articles/s41598-022-25864-1 (Farmer 2022)
- https://www.tandfonline.com/doi/full/10.1080/21641846.2023.2286029 (Lugg 2024)
