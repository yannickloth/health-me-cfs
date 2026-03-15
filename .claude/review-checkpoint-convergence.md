# Review-Fix-Build Convergence Checkpoint

## Scope
- CNS Stimulants section in ch15-medications-systems.tex (lines ~893-1325)
- Cross-reference in ch14-symptom-management.tex (lines ~374-376)
- Bibliography entries after `% ===== Stimulant medications and ME/CFS =====` in references.bib

## Round Summary

### R1: 4 findings, 2 fixed, build PASS
- **Fixed**: Removed duplicate `NICE2021mecfs` bib entry (kept the more complete @misc version)
- **Fixed**: Corrected `Farquhar2022twodayCPET` journal name from "Translational Medicine" to "Journal of Translational Medicine"
- **Flagged (FIXME)**: `Volkow2009modafinil` -- title is about sleep deprivation/D2 receptors but note describes modafinil DAT occupancy PET data (likely wrong paper)
- **Flagged (FIXME)**: `Randall2005modafinil` -- title says "healthy young volunteers" but note describes CFS study

### R2: 7 findings, 7 fixed/flagged, build PASS
- **Fixed**: Added missing `\cite{Vernon2025PNAS}` for melatonin 43.3% claim in harm reduction protocol
- **Flagged (FIXME in .tex)**: 6 uncited quantitative claims needing citations:
  - Case series of 3 CFS patients with modafinil+CBT
  - 7% REE increase from methylphenidate
  - KPAX002 trial
  - +24% DAT upregulation after 12 months
  - Lisdexamfetamine trial (n=26, 2013)
  - CDC quote on overexertion

### R3: 3 findings, 3 fixed/flagged, build PASS
- **Fixed**: Added missing `\cite{Vernon2025PNAS}` for pyridostigmine 41% and LDN 49.4% claims
- **Flagged (FIXME in .bib)**: `Lehert2011oxaloacetate` key is misleading (author is An, year is 2024)

## Cumulative Status
- Total findings: 14
- Directly fixed: 5 (duplicate bib removed, journal name corrected, 3 missing citations added)
- Flagged for human review: 9 (2 wrong paper titles, 6 uncited claims, 1 misleading key)
- Builds: 3/3 PASS
- Consecutive clean rounds: 0

## Items Requiring Human Verification
1. `Volkow2009modafinil`: Correct paper likely "Effects of modafinil on dopamine and dopamine transporters in the male human brain" JAMA 301(11):1148-1154
2. `Randall2005modafinil`: Correct CFS paper may be "Chronic treatment with modafinil may not be beneficial in patients with chronic fatigue syndrome" J Psychopharmacol 19(6):647-660
3. `Lehert2011oxaloacetate`: Should be renamed to An2024oxaloacetate
4. 6 uncited quantitative claims in stimulant section (marked with FIXME comments)
