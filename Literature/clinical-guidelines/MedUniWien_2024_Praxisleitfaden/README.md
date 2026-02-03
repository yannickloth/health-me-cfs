# MedUni Wien ME/CFS Resources

**Institution:** Medical University of Vienna (MedUni Wien) + Austrian Society for ME/CFS (ÖG ME/CFS)
**Type:** Institutional Clinical Guidelines
**Region:** D-A-CH (Germany, Austria, Switzerland)
**Date Added:** 2026-02-03

---

## Files in This Folder

### Primary Documents (PDFs)
1. **MedUni_OEGMECFS_MECFS-Praxisleitfaden_2024.pdf** (595 KB)
   - Full title: "Care for ME/CFS – Praxisleitfaden für die Versorgung von ME/CFS-Betroffenen"
   - Authors: Hainzl A., Rohrhofer J., Schweighardt J., et al.
   - Published: June 2024
   - DOI: 10.5281/zenodo.12091631
   - Language: German
   - 24 pages covering epidemiology, diagnostics, disease management, care structures, nursing

2. **PAIS_MECFS_Medikas_IND_off-label_Version_21.02.2025.pdf** (126 KB)
   - Full title: "Indikations-Medikamentenliste für PAIS und ME/CFS in Österreich"
   - Version: 2025-02-21
   - Language: German
   - 1 page listing medications covered by Austrian health insurance for ME/CFS off-label use

### Extracted/Structured Data
3. **medication-list-structured.md**
   - English translation and structured extraction of medication list
   - Organized by symptom category
   - Includes dosing, mechanisms, and acronym verification

4. **gap-analysis.md**
   - Comparison of MedUni Wien medications vs. existing ch15 coverage
   - Identifies missing medications (ketotifen, cromolyn, midodrine, fludrocortisone, fluvoxamine, guanfacin+NAC)
   - Prioritizes integration needs (Tier 1/2/3)

5. **integration-guide.md**
   - Detailed instructions for chapter-integrator agent
   - LaTeX code examples for new sections
   - Citation formatting
   - Integration priorities

---

## Key Content Summary

### Praxisleitfaden (Practice Guide)

**Methodology:** PPIE (Patient & Public Involvement and Engagement)
- CCCFS questionnaire: n=687 ME/CFS patients
- Qualitative survey: n=221 (79% patients, 14% caregivers, 4% healthcare workers)
- Expert interviews: n=8

**Demographics (D-A-CH region):**
- 84% female, 15.6% male
- 70% onset before age 40
- Average diagnostic delay: 5 years
- 65% moderate severity, 18% severe/very severe
- 65% not working (vs. 86% employed pre-illness)

**Treatment Efficacy Findings:**
- **Most effective:** Medications targeting comorbidities (MCAS 48%, PoTS 27-68%, immunoglobulins 43%)
- **Least effective:** Analgesics (60-71% no improvement), antidepressants (67-77% no improvement)
- **Key principle:** Individual titration essential; no standard dosing

**Care Delivery Recommendations:**
- Specialized interdisciplinary clinics (none in Austria/Switzerland)
- Telemedicine essential for moderate/severe patients
- Home visits for severe/very severe
- Case management across systems
- Infection control (FFP2, air filters)

### Medication List (Indikations-Medikamentenliste)

**Coverage:** Austrian health insurance (ÖGK, BVAEB, SVS) as of 2025-02-21

**7 Categories:**
1. Sleep disturbances (melatonin)
2. MCAS tachycardia (H1/H2 blockers, ketotifen, cromolyn)
3. PoTS tachycardia (beta-blockers, ivabradine)
4. Orthostatic intolerance (pyridostigmine, midodrine, fludrocortisone)
5. Endothelial dysfunction/PEM prevention (statins, magnesium, diosmin)
6. Microthrombi/circulation (aspirin, sulodexide, clopidogrel, ginkgo)
7. Cognitive dysfunction (LDN, LDA, fluvoxamine, guanfacin+NAC)

**Important:** All off-label; requires informed consent; compounding pharmacy for LDN/LDA

---

## Citation Information

### BibTeX Keys
- `MedUniWien2024Praxisleitfaden` — Practice guide
- `MedUniWien2025OffLabel` — Medication list

### Full BibTeX Entries (in references.bib)

```bibtex
@misc{MedUniWien2024Praxisleitfaden,
  author = {{OG ME/CFS} and {MedUni Wien}},
  title = {Care for {ME/CFS}: Praxisleitfaden},
  year = {2024},
  doi = {10.5281/zenodo.12091631}
}

@misc{MedUniWien2025OffLabel,
  author = {{Referenzzentrum Postvirale Syndrome}},
  title = {Indikations-Medikamentenliste {PAIS} und {ME/CFS}},
  year = {2025},
  howpublished = {MedUni Wien Clinical Guideline},
  url = {https://www.meduniwien.ac.at/web/referenzzentrum-postvirale-syndrome/}
}
```

---

## Appendix H Entries

Both resources have been added to Appendix H (Annotated Bibliography) in:
- **Section:** Institutional Clinical Guidelines
- **Location:** After Diagnostic Criteria section, before Systematic Reviews
- **Content:** Full annotations with key findings, relevance, and certainty assessments

---

## Integration Status

### Completed
- ✅ PDFs downloaded and archived
- ✅ Medication list extracted and structured
- ✅ Gap analysis vs. ch15 completed
- ✅ BibTeX entries added to references.bib
- ✅ Appendix H entries added with certainty assessments
- ✅ Integration guide created for chapter-integrator

### Pending (for chapter-integrator agent)
- ⏳ Create new §15.X (MCAS medications section)
- ⏳ Expand §15.6 (add midodrine, fludrocortisone)
- ⏳ Expand §15.7 (add fluvoxamine, guanfacin+NAC)
- ⏳ Create new §15.Z (endothelial dysfunction/microthrombi section)
- ⏳ Add diagnostic toolbox cross-reference to ch04

---

## Certainty Assessment

### Praxisleitfaden
- **Quality:** High (institutional, PPIE methodology, academic center)
- **Sample:** n=687 + n=221 + n=8 (large patient cohort)
- **Currency:** Very current (2024)
- **Limitations:** Austria-specific context; diagnosed patients only; self-reported outcomes

### Medication List
- **Quality:** High (institutional, insurance-endorsed)
- **Currency:** Very current (2025-02)
- **Evidence:** Mix of literature + clinical experience
- **Limitations:** Off-label use; regional insurance coverage; compounding pharmacy needed

**Recommendation:** Cite as institutional clinical guideline with regional context.

---

## URLs and Access

- **Zenodo (Praxisleitfaden):** https://zenodo.org/records/12091631
- **MedUni Wien Reference Center:** https://www.meduniwien.ac.at/web/referenzzentrum-postvirale-syndrome/fuer-aerztinnen-gesundheitsberufe/
- **Austrian ME/CFS Society:** https://mecfs.at/

---

## Notes

**Language:** Both documents are in German. Translations provided in structured files are for integration purposes; original German terms retained where medically precise.

**Insurance Coverage:** Medication list specifies Austrian health insurance (ÖGK, BVAEB, SVS). Medications are available internationally but coverage varies by country/insurer.

**Compounding Pharmacy:** LDN (0.5-5mg) and LDA (0.25-2mg) require compounding pharmacy; standard formulations are too high-dose.

**Diagnostic Requirements:** PoTS medications require Schellong test or tilt-table confirmation. MCAS medications ideally require MCAS diagnostic workup.

---

## Contact for Questions

- **MedUni Wien Reference Center:** Contact via website link above
- **ÖG ME/CFS:** https://mecfs.at/aerztinnen/ (physician resources)

---

**Last Updated:** 2026-02-03
**Processed By:** literature-integrator agent
**Integration Plan:** luc-biland-integration-plan.md (Step 1.3)
