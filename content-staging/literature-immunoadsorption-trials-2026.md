# Literature: Immunoadsorption/Plasmapheresis Trials in ME/CFS

Compiled 2026-04-20. Covers all known studies; supplements existing Stein2024immunoadsorption and Scheibenbogen2018immunoadsorption entries.

---

## Existing entries (NOT duplicated)

| BibTeX key | Study | n | Design |
|------------|-------|---|--------|
| Scheibenbogen2018immunoadsorption | Scheibenbogen et al. 2018, PLOS ONE | 10 | Open-label pilot |
| Stein2024immunoadsorption | Stein et al. 2025, Lancet Reg Health | 20 | Prospective cohort |
| Kiprov2021plasmapheresis | Kiprov et al. 2021 | — | Long COVID plasma exchange |

---

## New entries added 2026-04-20

### 1. Tölle et al. 2020 — Repeat IA pilot

- **BibTeX key:** `Tolle2020immunoadsorption`
- **Journal:** Journal of Clinical Medicine 9(8):2443
- **PMID:** 32751659
- **DOI:** 10.3390/jcm9082443
- **Design:** Follow-up pilot; n=5 previously-responsive ME/CFS patients retreated ~2 years after initial IA
- **Key finding:** Modified IA protocol achieved 80--90% IgG/beta2AR-AB reduction; 4/5 showed 6--12 month improvement
- **Certainty:** Low-Medium (n=5, open-label, selected for prior response)
- **Note:** Precedes Stein 2023 interim and Stein 2024 full cohort

### 2. Stein et al. 2023 — Interim report

- **BibTeX key:** `Stein2023immunoadsorptionInterim`
- **Journal:** Journal of Clinical Medicine 12(19):6428
- **PMID:** 37835071
- **DOI:** 10.3390/jcm12196428
- **Design:** Interim observational; n=10 (full cohort n=20 in Stein 2024)
- **Key finding:** 7/10 (70%) responders; ≥10-point SF-36 PF gain at week 4; fatigue, pain, cognitive symptoms improved
- **Certainty:** Low-Medium (interim, open-label, no sham)

### 3. Preßler et al. 2024 — IA-PACS-CFS protocol paper

- **BibTeX key:** `Pressler2024IAPACSCFSprotocol`
- **Journal:** Trials 25(1):172
- **PMID:** 38454468
- **DOI:** 10.1186/s13063-024-07982-5
- **ClinicalTrials:** NCT05710770
- **Design:** Published protocol; double-blind, sham-controlled RCT; 2:1 allocation; n=66; Charité Berlin
- **Sessions:** 5 IA every other day, 9--12 day inpatient stay
- **Primary endpoint:** Chalder Fatigue Scale at 3 months
- **Status:** Completed October 2025; results pending
- **Certainty:** Protocol only; trial quality: High

### 4. Anft et al. 2025 — Immune alterations, independent centre

- **BibTeX key:** `Anft2025immunoadsorption`
- **Journal:** Molecular Therapy 33(6):2886--2899
- **PMID:** 39797400
- **DOI:** 10.1016/j.ymthe.2025.01.007
- **Institution:** Marien Hospital Herne / Ruhr-University Bochum (NOT Charité)
- **Design:** Observational; n=12 post-COVID patients with elevated ANS receptor autoantibodies
- **Key finding:** Autoantibodies eliminated; cytokines (IL-4, IL-2, IL-1β, TNF, IL-17A) reduced; soluble spike reduced. Neuropsychological function improved + modest grip strength gain at 30 days. BUT: ME/CFS symptom questionnaire scores NOT significantly improved. Rebound within 1 month.
- **Certainty:** Low-Medium (n=12, observational, symptom scores non-significant, rebound)
- **Critical note:** Discordance between objective biomarker/grip improvements and subjective symptom scores is the most important finding — weakens causal autoantibody hypothesis or points to rebound as the problem.

### 5. EXTINCT trial — NCT05954325

- **BibTeX key:** `EXTINCTtrial2023`
- **Type:** `@misc` (trial registration, no published results yet)
- **Institution:** Hannover Medical School
- **Design:** Double-blind, sham-controlled RCT; n=63 (actual); 5 IA within 14 days; start 2023-08-15
- **Primary endpoint:** Chalder Fatigue Scale at 12 weeks
- **Status:** Completed (verified September 2025); results not yet published as of April 2026
- **Significance:** Independent of Charité; largest single-cohort RCT; will be pivotal

### 6. IMPACT trial — NCT07529197

- **BibTeX key:** `IMPACTtrial2026`
- **Type:** `@misc` (trial registration, recruiting)
- **Institution:** Charité Universitätsmedizin Berlin
- **Design:** Non-interventional prospective observational; n=50 estimated; 5 outpatient IA sessions days 1,2,4,6,8; start 2026-03-11
- **Primary endpoint:** SF-36 PF at 8 weeks
- **Novel secondary endpoints:** Memory B-cell changes (distinguishes from all prior studies)
- **Status:** Recruiting April 2026
- **Significance:** First to systematically measure memory B-cell dynamics; outpatient design (vs. prior inpatient); mechanistic focus

---

## Summary: complete German IA trial landscape

| Study | n | Design | Institution | Status | Key gap addressed |
|-------|---|--------|-------------|--------|-------------------|
| Scheibenbogen 2018 | 10 | Open pilot | Charité | Published | First in ME/CFS |
| Tölle 2020 | 5 | Repeat pilot | Charité | Published | Repeat treatment feasibility |
| Stein 2023 interim | 10 | Observational | Charité | Published | Response rate staging |
| Stein 2024 | 20 | Cohort | Charité | Published (Lancet) | Definitive observational |
| IA-PACS-CFS (Preßler 2024 protocol) | 66 | RCT sham | Charité | Completed Oct 2025 | First sham RCT |
| EXTINCT | 63 | RCT sham | Hannover | Completed Sep 2025 | Independent replication RCT |
| Anft 2025 | 12 | Observational | Herne/Bochum | Published | Independent centre; immune mechanisms |
| IMPACT 2026 | 50 | Observational | Charité | Recruiting | Memory B-cells; outpatient |

---

## Integration guide for chapter-integrator

**Primary targets:**
- `ch18` (treatments) or equivalent treatment chapter — immunoadsorption section
- `ch07` (immune mechanisms) — re: Anft 2025 cytokine findings
- `ch24` (controversies/research) — re: pending RCT results (EXTINCT, IA-PACS-CFS)

**Environment types:**
- Tölle 2020, Stein 2023 interim: `observation` (small pilot evidence)
- Anft 2025: `observation` with explicit caveat on symptom non-significance
- Preßler 2024 protocol, EXTINCT, IMPACT: `observation` or inline text (trial registrations, no efficacy data)

**Key narrative:** The field has moved from open-label pilots (Scheibenbogen 2018, Tölle 2020) through observational cohorts (Stein 2023/2024) to two completed sham-controlled RCTs (IA-PACS-CFS, EXTINCT) whose results are imminent. Anft 2025 from an independent centre adds immunological evidence but the symptom non-significance and one-month rebound introduce genuine uncertainty. The IMPACT trial will address the memory B-cell mechanism question that could explain why some patients relapse.

**Certainty of existing claims:** The Stein 2024 Lancet paper is the strongest observational evidence (Medium certainty). All efficacy claims must be qualified as "awaiting sham-controlled confirmation" — both RCTs are completed and results expected in 2025/2026.
