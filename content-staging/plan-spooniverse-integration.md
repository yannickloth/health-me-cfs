# Plan: Integrate The Spooniverse Content into the ME/CFS Paper

## Source

**The Spooniverse** — Independent patient-focused educational platform for complex chronic illness.
URL: <https://www.thespooniverse.org/>

Maintained by volunteers; covers Long COVID, ME/CFS, EDS, dysautonomia, MCAS, and fibromyalgia.
Global reach (20+ countries). Accepts donations; not affiliated with any research institution.

---

## What The Spooniverse Offers

Five interactive databases, all publicly accessible without login:

| Resource | URL | Size |
|---|---|---|
| Treatment Database | `/treatments` | 75 treatments across 5 categories |
| Biomarker Explorer | `/biomarkers` | 91 biomarkers |
| Medical Glossary | `/glossary` | Hundreds of terms |
| Resource Directory | `/directory` | 1,000+ resources (clinics, trials, support groups) |
| Knowledge Quiz | `/quiz` | Case-based learning tool |

---

## Integration Targets

### 1. Treatment Database → Part III (Treatment chapters)

The treatment database classifies 75 interventions by evidence level:

- **Evidence-Based**: ivabradine, pyridostigmine, pregabalin, duloxetine, milnacipran, cyclobenzaprine, beta-blockers, trazodone, pacing, salt/fluid loading, compression garments
- **Emerging**: aripiprazole, LDN, metformin, modafinil, midodrine, ketotifen, antivirals (valacyclovir, valganciclovir), sulodexide, antihistamines, IVIG, rintatolimod, HBOT, lymphatic drainage, CoQ10, NAD+/NR, oxaloacetate, thiamine
- **Experimental**: apheresis, plasma exchange, stellate ganglion block, baricitinib, sildenafil, nicotine patch, nattokinase/lumbrokinase, LDN+NAD+, guanfacine+NAC
- **Inconclusive**: rituximab, BC 007 aptamer, efgartigimod, nirmatrelvir/ritonavir

**Integration value:** Cross-check our treatment chapter coverage against their taxonomy. Use their evidence classifications as a secondary reference to support or flag discrepancies in our own ratings. Particularly useful for:
- Novel/experimental treatments we may not have covered (stellate ganglion block, apheresis, sildenafil for microcirculation)
- Combination protocols (LDN+NAD+, guanfacine+NAC, maraviroc+pravastatin)

**Target chapters:** Part III treatment chapters (ch14–ch24 or equivalent), particularly:
- Dysautonomia/POTS management
- Immunomodulation
- Antiviral strategies
- Mitochondrial support supplements

**Caution:** The Spooniverse is a patient education resource, not a peer-reviewed database. Do NOT cite it directly as primary evidence. Use it as a discovery tool → then trace citations back to primary literature (PubMed IDs are provided in their entries).

---

### 2. Biomarker Explorer → Chapter on Diagnosis / Biomarkers (ch20 or equivalent)

91 biomarkers organized across 12 categories:

- Inflammatory (CRP, IL-6, TNF-α, IFN-γ, TGF-β1, neopterin, sCD14…)
- Viral Reactivation (EBV, HHV-6, CMV, VZV, enterovirus, SARS-CoV-2…)
- Immune Function (NK cells, T-cell subsets, immunoglobulins, complement)
- Autoimmunity (ANA, anti-cardiolipin, GPCR autoantibodies)
- Coagulation (D-dimer, fibrinogen, von Willebrand, thrombin-antithrombin)
- Mitochondrial (lactate/pyruvate ratio, CoQ10, carnitine, ATP production)
- Mast Cell (tryptase, histamine, prostaglandins, leukotrienes)
- Autonomic (catecholamines, renin/aldosterone, BNP)
- Oxidative Stress (glutathione, isoprostanes, SOD, catalase)
- Nutrients (vitamin D, B12, ferritin, zinc, magnesium, selenium)
- Tick-Borne (Lyme, Babesia, Bartonella, Anaplasma/Ehrlichia)
- Thyroid (TSH, Free T3/T4, Reverse T3)

**Integration value:** Cross-check our biomarker chapter's coverage and reference ranges. Could inform the diagnostic workup tables in appendix or ch20. Particularly useful for identifying biomarkers we may have missed (e.g., thrombin-antithrombin complex, prostaglandins, Reverse T3).

**Target:** ch20 (biomarker chapter), Appendix diagnostic tables.

---

### 3. Resource Directory → Appendix (Resources/Support)

1,000+ resources including:
- Specialist clinics
- Clinical trials
- Patient support groups
- Providers

**Integration value:** If the paper has or plans an appendix for patient resources, this directory is a reference. Do NOT reproduce the list; instead, cite the directory itself as a curated, regularly updated resource.

**Target:** Appendix or ch25 (patient resources section, if exists).

---

## Integration Steps

1. **Scrape treatment database** (`/treatments`) — extract all 75 entries with mechanism, evidence level, and their cited PMIDs. Cross-reference against our Part III coverage. Flag gaps.

2. **Scrape biomarker database** (`/biomarkers`) — extract all 91 biomarkers with reference ranges and condition mappings. Cross-reference against ch20 and appendix diagnostic tables. Flag any biomarkers missing from our coverage.

3. **For each gap identified:** Use the PMIDs cited by The Spooniverse to locate the primary literature. Run those papers through the standard `literature-integrator` → `chapter-integrator` pipeline.

4. **Register all scraped URLs** in `registry/scrape-registry.md` per project convention.

5. **Do NOT cite thespooniverse.org directly** in the paper. It is a secondary synthesis resource. All citations must trace to peer-reviewed primary literature.

---

## Priority

**Medium.** The Spooniverse is most useful as a coverage audit tool — it helps identify treatments or biomarkers we may have missed — rather than as a primary content source. The treatment database is more immediately actionable than the biomarker explorer, since Part III is more likely to have gaps.

Start with the treatment database scrape; do the biomarker explorer only if ch20 coverage audit reveals gaps.

---

## Notes

- The Spooniverse was created/maintained by Nita Jain (nitajain.com); check her publication list for any peer-reviewed work that could be cited directly.
- The quiz (`/quiz`) and glossary (`/glossary`) are not directly relevant to the paper but may be useful for patient-facing appendix content.
- The site is volunteer-run and may not be updated frequently; check "last updated" timestamps when scraping.
