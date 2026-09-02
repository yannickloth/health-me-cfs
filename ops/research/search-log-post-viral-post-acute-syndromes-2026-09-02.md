# Search Log: Post-Viral Post-Acute Syndromes (feature-gap integration)

**Date:** 2026-09-02
**Topic slug:** post-viral-post-acute-syndromes
**Agent:** literature-integrator (Phase 1, /integrate-topic)
**Scope:** Verify ONE genuinely-new primary paper (Pridgen & Putrino, Front Immunol 16:1698271) cited by the Nature news feature Makin 2026 (doi 10.1038/d41586-026-02683-2). Confirm the other 8 feature-cited papers are already integrated (do NOT duplicate). Run mandatory harm search for the antiviral/NSAID drug combination.
**Source feature:** Simon Makin, "When do infections lead to long COVID? Scientists close in on triggers and treatments for post-viral syndromes", Nature 657, 26-28 (2026).

---

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed (esearch) | `Pridgen[Author] AND (long COVID OR fibromyalgia OR antiviral OR famciclovir)` | 4 | 4 | 1 new | 2026-09-02 |
| 2 | PubMed (efetch) | PMID 41562079 abstract | — | 1 | 1 | 2026-09-02 |
| 3 | PubMed Central OA (REST BioC) | PMC12812670 full text (JSON + text extraction) | — | 1 | 1 | 2026-09-02 |
| 4 | Crossref / DOI resolver | 10.3389/fimmu.2026.1698271 (guessed) | 0 | 0 | 0 | 2026-09-02 |
| 5 | Drugs.com (consumer monograph) | Celebrex (celecoxib) safety/label | — | 1 | 1 (harm) | 2026-09-02 |
| 6 | Drugs.com (consumer monograph) | Valtrex (valacyclovir) safety/label | — | 1 | 1 (harm) | 2026-09-02 |
| 7 | Drugs.com (consumer monograph) | Famciclovir (Famvir) safety/label | — | 1 | 1 (harm) | 2026-09-02 |
| 8 | Repo content scan (grep) | daratumumab / ResetME / immunoadsorption / paxlovid / STOP-PASC across `src/main/typst/mecfs/` | — | many | confirmed present | 2026-09-02 |

**Note on database availability:** No dedicated WebSearch tool is available in this agent's toolset; harm-search used `webfetch` of authoritative FDA-aligned consumer monographs (Drugs.com, medically reviewed, data sourced Micromedex/Cerner Multum/ASHP). The eight feature-cited papers were NOT re-downloaded — presence verified by bib-file grep only (Phase-0 governor recon + this agent's novelty scan). See Inclusion/Exclusion.

---

## Inclusion Criteria
- Primary peer-reviewed paper cited by the Makin 2026 Nature feature that is NOT already in the corpus (the single genuinely-new item: Pridgen & Putrino).
- Open-access full text obtainable for design/harms verification.
- For harm search: authoritative prescription-drug safety labels (FDA-aligned).

## Exclusion Criteria
- The other 8 feature-cited primary papers (Al-Aly, Proal, Maguire, Peluso, Santos Guedes de Sá, Stein, Fluge, Swank) — ALREADY integrated; verified present via bib grep, deliberately not duplicated.
- The feature article itself (secondary journalism; the integration target is the underlying primary evidence).
- Pre-existing corpus entries for the drug combination (Montoya2013 valganciclovir, Lerner 2002/2007 valacyclovir, Durstenfeld2024 paxlovid) — already integrated; used only as comparison context.

---

## Flow
- Total candidate new primary papers from feature: 1 (Pridgen & Putrino)
- After download attempt: 1 (obtained full text via PMC OA, PMID 41562079 / PMCID PMC12812670)
- After full-text review: 1 (Pridgen & Putrino 2026)
- Final included (new): **1** → bib entry added
- Papers verified present (not duplicated): **8**

---

## Search Terms by Database
- **PubMed (E-utilities):** `Pridgen[Author] AND (long COVID OR fibromyalgia OR antiviral OR famciclovir)` → PMIDs 41562079, 35445970, 28260944, 1647078. Relevant: 41562079 (Pridgen & Putrino, Front Immunol), 28260944 (Pridgen 2017 fibromyalgia famciclovir+celecoxib), 35445970 (Duffy/Pridgen HSV-1 functional GI disorders). Irrelevant: 1647078 (Gorman/Pridgen 1991 virology, unrelated author).
- **PubMed Central OA:** PMCID PMC12812670 full text.
- **Drug labels (Drugs.com):** Celebrex/celecoxib, Valtrex/valacyclovir, Famvir/famciclovir.

---

## Key metadata reconciliation (important)
The governor/task brief cited this paper as **"Front Immunol 16, 1698271 (2026)"** with DOI **10.3389/fimmu.2026.1698271**. Verified record:
- PubMed citation line: *Front Immunol.* 2026 Jan 5; **16**:1698271 (eCollection 2025). Copyright © 2026.
- **Actual DOI: 10.3389/fimmu.2025.1698271** (note: **2025** in DOI, not 2026).
- PMID 41562079 · PMCID PMC12812670.
- **Citation year used in this work: 2026** (matches the journal issue date 2026-01-05, volume 16, and copyright year), consistent with the feature and task brief. The DOI carries an internal "2025" (Frontiers assigns submission-year to article IDs; the paper's PubMed esummary also lists pubdate 2025). Documented here so a later audit does not flag a year mismatch.

---

## Drug-combo harm-search results (mandatory, treatment topic)
Full detail in `ops/research/literature-post-viral-post-acute-syndromes-2026-09-02.md`. Summary of sources used and principal safety findings:
- Valacyclovir + celecoxib (IMC-2), ± 15-day Paxlovid. Sources: Drugs.com labels (celecoxib, valacyclovir, famciclovir) + established pharmacology for ME/CFS co-prescription interaction analysis.
- The three ME/CFS co-prescription interaction classes of concern identified: (1) NSAID-NSAID GI-bleed/renal additive, (2) celecoxib antihypertensive attenuation / fluid retention (fludrocortisone, beta-blockers), (3) Paxlovid ritonavir CYP3A4/P-gp inhibition (trazodone, amitriptyline, some beta-blockers/antihistamines, gabapentin; valacyclovir reduced during Paxlovid window). See literature summary Table.

---

## Verification of pre-integrated status (novelty scan)
Confirmed PRESENT in corpus (NOT gaps) by grep across `src/main/typst/mecfs/`:
- **Viral persistence → antivirals rationale:** Proal2025Reservoir (long-covid.bib), Maguire2026ViralReactivation (viral-infection.bib), Peluso2024ViralPersistence (immune.bib); ch08 sec-06 viral-reactivation-and-persistence.
- **Paxlovid / RECOVER / STOP-PASC null result:** ch37 `antiviral-trials.typ` (STOP-PASC negative, Paxlovid insufficient), ch08 `subsec-06-other-implicated-viruses.typ` (nirmatrelvir/ritonavir RCT reinterpretation), `Durstenfeld2024paxlovid` (long-covid.bib), RECOVER epidemiology.bib + endocrine-reproductive.bib.
- **Daratumumab / anti-CD38:** deeply integrated across ch08, ch14 (ch17-speculative tree), ch19, ch34, appendix-i (Fluge2025daratumumab, autoimmunity.bib:306).
- **ResetME trial timing:** appendix-i-research-registry.typ `=== ResetME Trial (Daratumumab)` — opened June 2025, Phase II, n=66, estimated completion ~2027. Not in part-content but registry-covered.
- **Immunoadsorption:** ch34 sec-10 subsec-13 subsubsec-03 `immunoadsorption-and-the-negative-control-boundary.typ`, appendix-i Charité IA, Stein2025ImmunoadsorptionPostCOVIDMECFS (vascular.bib).
- **Combination valacyclovir+celecoxib CONCEPT:** partially present — Bateman Horne Center combination trial noted in appendix-h under Montoya 2013 entry (lines ~3330), separate from Pridgen.

GENUINELY MISSING (the single new item): **Pridgen & Putrino 2026** case series (IMC-2 ± Paxlovid). 0 references pre-run. ch37 states combination antiviral strategies "have not been tested" — the Pridgen data is direct pilot evidence answering that open statement.

---

## Outputs produced (this run)
- `ops/research/search-log-post-viral-post-acute-syndromes-2026-09-02.md` (this file)
- `ops/research/literature-post-viral-post-acute-syndromes-2026-09-02.md`
- bib entry: `Pridgen2026HerpesAntiviralLongCOVID` added to `src/main/typst/mecfs/bib/viral-infection.bib`
- appendix-h annotated entry: `=== Pridgen & Putrino 2026 — Herpes-antiviral combination therapy for Long COVID`
