# Search Log: Pramipexole × ME/CFS Topic Integration (Phase 1)

**Topic slug:** `pramipexole-mecfs`
**Date:** 2026-11-21
**Type:** Topic-integration cycle (`/integrate-topic`), Phase 1 literature artifacts only
**Databases queried:** PubMed (E-utilities esearch/esummary/efetch, 43 queries), Europe PMC (REST search + core lookups), Crossref API (title/DOI probes)
**Scope rule:** No date restriction — classic literature (1990s bromocriptine-CFS era) through 2026. Cross-disease populations (RLS, Parkinson's disease, depression/TRD, fibromyalgia, post-polio) admitted as analogy evidence; **no ME/CFS-specific dopamine-agonist trial exists** (see Nulls).

---

## Window rationale

The paper's dopamine line (ch09/ch25/ch30; RLS + pramipexole patient context) already carries aripiprazole content: Naik 2026 LDN RCT context, Cui 2026 low-dose aripiprazole long-COVID (PMID 43032818, prime inclusion, found in `search-log-recent-mecfs-sweep-2026-11-21.md`). This cycle answers the patient-driven question: **can pramipexole (full D2/D3-preferring agonist) treat ME/CFS fatigue/motivation deficit, and how does it compare with low-dose aripiprazole (partial agonist) in a putatively D2-super-sensitive ME/CFS population?** Queries therefore cover: efficacy analogies (fatigue in PD/RLS/FM/depression), pharmacokinetics (caffeine interaction claim, ER formulations, renal clearance), safety (ICD, augmentation, DAWS, somnolence, orthostatic hypotension), the combo question (pramipexole + aripiprazole), and the classic bromocriptine-CFS trials.

---

## Queries (PubMed, 2026-11-21)

| # | Query (abbreviated; full text in `/tmp/opencode/prami/queries*.tsv`) | Hits |
|---|----------|------|
| Q1 | pramipexole/Mirapex/Sifrol AND CFS/ME/CFS/ME | **1** |
| Q2 | dopamine agonist* (bromo/pergo/pram/roti/ropini/caberg) AND CFS/ME/CFS/PEM | 2 |
| Q3 | pramipexole AND RLS/Willis-Ekbom AND (efficacy/augmentation/withdrawal/long-term/trial) | 154 |
| Q4 | pramipexole AND (PK/bioequivalence/ER/once-daily/plasma/AUC/Cmax/steady-state) | 162 |
| Q5 | aripiprazole AND dopamine agonist* AND Parkinson* AND (impulse/halluc/augment/dyskinesia/combination) | 4 |
| Q6 | aripiprazole AND low-dose/microdose AND (fatigue/CFS/ME/CFS/long COVID/PEM) | 7 |
| Q7 | pramipexole AND (sudden sleep onset/somnolence/orthostatic hypotension/ICD/nausea/safety/augmentation/DAWS) | 568 |
| Q8 | pramipexole AND (caffeine/CYP1A2/drug interaction/cimetidine/renal clearance/DDI) | 35 |
| Q9 | RLS/PLMS AND CFS/ME/CFS/ME | 36 |
| Q10 | aripiprazole AND (partial agonist/functional selectivity/intrinsic activity/receptor occupancy/D2) | 641 |
| Q11 | dopamine agonist* AND (orthostatic hypotension/syncope/blood pressure) | 499 |
| Q12 | dopamine D3/DRD3 AND (apathy/motivation/anhedonia/fatigue/reward/mesolimbic/nucleus accumbens) | 586 |
| Q13 | pramipexole AND fibromyalgia/widespread pain | 17 |
| Q14 | bromocriptine AND (CFS MeSH/chronic fatigue/fatigue syndrome/immune) | 103 |
| Q15 | Cui AND aripiprazole (prime-inclusion check) | 18 |
| Q16 | pramipexole AND aripiprazole (combo check) | 31 |
| Q17 | pramipexole AND (Sifrol/Mirapexin/Mirapex PR/pramipexole dihydrochloride/ER) | 117 |
| Q18 | aripiprazole AND long COVID/post-COVID/SARS-CoV-2/PASC | 12 |
| Q19 | pramipexole[MeSH] AND (fatigue/apathy/cognitive dysfunction/brain fog) | 21 |
| Q20 | aripiprazole AND (akathisia/dose response/inverted U/titration) AND (fatigue/augmentation/depression) | 115 |
| Q21 | bromocriptine AND CFS[MeSH] | **0** |
| Q22 | bromocriptine AND fatigue+syndrome/chronic AND (trial types) | 5 |
| Q23–Q26 | author probes: "Richardson S", "Nijens H", "McKendrick", "Cloer" | **0 each** |
| Q27 | pramipexole AND long COVID/post-COVID/PASC/SARS-CoV-2 | 2 |
| Q28 | pramipexole AND apathy/anhedonia/motivation | 51 |
| Q29 | pramipexole AND (midodrine/fludrocortisone/propranolol/atenolol/beta-blocker*) | 4 |
| Q30 | pramipexole AND gabapentin/pregabalin/α2δ/gabapentinoid* | 84 |
| Q31 | pramipexole AND (naltrexone/modafinil/trazodone/amitriptyline/antihistamin*/NSAID*) | 50 |
| Q32 | pramipexole AND (immunoglobulins MeSH/IVIG/rituximab) | 4 |
| Q33 | aripiprazole AND (midodrine/fludrocortisone/propranolol/beta-blocker*/pyridostigmine/naltrexone) | 59 |
| Q34 | pramipexole AND extended-release/once-daily AND RLS | 14 |
| Q35 | RLS AND augmentation AND (rate/incidence/prevalence/risk) | 114 |
| Q36 | dopamine agonist*/pramipexole AND (sleep attack*/sudden sleep onset/daytime sleep/somnolence) | 281 |
| Q37 | "dopamine agonist withdrawal syndrome"/DAWS | 80 |
| Q38 | pramipexole AND caffeine (exact) | 9 |
| Q39 | aripiprazole AND akathisia AND (incidence/dose/meta-analysis) | 157 |
| Q40 | dopamine agonist* AND fatigue AND (FM/MS/HIV/cancer/myasthenia/TBI/stroke/depression) | 44 |
| Q41 | author format probe (McKendrick RJ/Nijens H/Cloer L/Richardson SE/Goldmuntz E/Shell L) | 415 |
| Q42 | bromocriptine AND chronic fatigue/CFS/fatigue syndrome/immune dysfunction | 3 |
| Q43 | "chronic fatigue"[Title] (broad recall control) | 5900 |

Screened: Q1–Q20 result summaries (esummary) reviewed in full; Q21–Q43 targeted probes for the classic-trial history, combo, co-prescription, and caffeine claims. 43 candidate abstracts efetch'd → 21 selected.

---

## Explicit nulls

1. **No ME/CFS pramipexole study exists.** Q1 = 1 hit (an advocacy/newsletter item, not a study); Q2 = 2 hits (general DA discussion, no ME/CFS cohort); Q19 = 21 hits (PD/RLS fatigue only). No clinical trial, cohort, case series, or trial registry entry of pramipexole in ME/CFS/CFS was found in PubMed, Europe PMC, or (by title search) Crossref.
2. **No pramipexole + aripiprazole combination cohort in any fatigue/ME/CFS/long-COVID population.** Q16 = 31 hits — all are PD, TRD/augmentation (Tundo 2024), RLS, or pharmacovigilance signal reports; zero in fatigue syndromes.
3. **Classic 1990s bromocriptine-CFS trials are not resolvable as citable PubMed records.** Q21 = 0; author probes Q23–Q26 = 0 (Nijens, Cloer, McKendrick, Richardson-bromocriptine). Europe PMC + Crossref probes returned no DOI-resolvable primary articles for the bromocriptine-CFS trials circulating in the ME/CFS lore (Nijens/Richardson, Cloer, McKendrick). **Consequence:** the best PubMed-citable R2 (bromocriptine-fatigue) anchor is Bruno 1996 post-polio pilot (n=5, PMID 8873700). The 1990s bromocriptine-CFS claims should be cited, if at all, only via secondary reviews — do not cite them as primary trials.
4. **No pramipexole long-COVID study** (Q27 = 2 hits: general DA/PASC mentions, no pramipexole cohort).

---

## Selected papers (21) — cohort collation

All metadata verified against PubMed docsum XML (`/tmp/opencode/prami/final21.full.xml`) + abstracts (`final21.abstracts.txt`). Population column notes human/animal/in-vitro and diagnostic-era where relevant.

| Bib key | PMID | Population / cohort (design, year, setting) | Type |
|---------|------|---------------------------------------------|------|
| Cui2026LDAlongcovid | 43032818 | Long-COVID, n=50, retrospective EHR, Stanford, median 1 mg LDA (2022–2025 records) | Human, cross-disease |
| GarciaMalo2026AripiprazoleRLSAugmentation | 42775462 | Severe RLS + augmentation, n=18, open-label aripiprazole, sleep center (ES) | Human, cross-disease |
| MartinGarcia2026DAWSRLS | 42673880 | RLS + DAWS, prospective real-world cohort, specialized sleep center (ES) | Human, cross-disease |
| Holman2005PramipexoleFibromyalgia | 16052595 | Fibromyalgia, n=60 RCT 2:1, 4.5 mg pramipexole, comorbidities allowed (pre-2010 FM criteria era: 1990 ACR criteria) | Human, cross-disease |
| Winkelman2025RLSguideline | 39324694 | RLS/PLMD guideline (AASM), systematic evidence review + GRADE recommendations | Guideline |
| Allen2014PregabalinPramipexole | 24521108 | RLS, 52-week randomized double-blind, pregabalin vs pramipexole, multicenter (US/EU) | Human, cross-disease |
| Takahashi2017RLSaugmentation | 28264052 | Idiopathic RLS, n=231 consecutive on pramipexole, retrospective (JP), MPI augmentation criteria | Human, cross-disease |
| Ventorp2026PramipexoleAnhedonia | 42286321 | Mood-disorder anhedonia, n=85 randomized, double-blind, single-center RCT + 6-month OLE; PET target engagement | Human, cross-disease |
| Morita2011PramipexoleFatigue | 21963735 | PD, multicenter cross-sectional (JP), fatigue vs pramipexole exposure | Human, cross-disease |
| Oved2006DAAgonistFatigueSomnolence | 16685690 | PD, n≈50 quantitative fatigue measurement, DA-agonist vs non-DA | Human, cross-disease |
| Bruno1996BromocriptinePostPolio | 8873700 | Post-polio fatigue, n=5 pilot, placebo-controlled, bromocriptine | Human, cross-disease |
| Tundo2024PramAripTRD | 39335577 | Unipolar TRD, n=81 pramipexole vs 51 aripiprazole augmentation, retrospective (IT) | Human, cross-disease |
| Jenner2009PramipexoleERpk | 20110012 | Healthy male volunteers (3 PK studies) + PD extrapolation, ER (Mirapex PR/ER) formulation | Human |
| Wright1997Pramipexolepk | 9208359 | Healthy volunteers, steady-state PK, renal excretion emphasis | Human |
| Knop2015PramipexoleRenal | 26360835 | Renal tubular secretion of pramipexole (in-vitro cell models + human renal clearance synthesis) | In-vitro + human |
| Wills2013CaffeineDyskinesia | 23339054 | CALM-PD + CALM Cohort, caffeine consumption vs dyskinesia risk (Cox PH) | Human (cohort) |
| Etminan2017ICDPharmacoepi | 27930495 | FDA adverse-event pharmacovigilance: gambling disorder/ICD, aripiprazole vs DA agonists | Human (FAERS) |
| Tadori2011D2D3FunctionalPotency | 21658377 | In-vitro recombinant human D2/D3 functional potency (agonists + antagonists incl. aripiprazole, pramipexole) | In-vitro |
| Dorfman2013DAWSRLS | 22749683 | RLS, single patient DAWS case (IL) | Human (case) |
| Montastruc2001ModafinilPramipexole | 11481716 | French pharmacovigilance, modafinil+pramipexole-associated somnolence (few cases) | Human (cases) |
| Samuels2006PramipexoleModafinil | 16401653 | Healthy volunteers, pramipexole vs modafinil, arousal/autonomic/endocrine | Human |

**Severity stratification note:** none of the 21 cohorts stratifies by ME/CFS severity (no ME/CFS cohort exists). The RLS augmentation cohorts (Takahashi n=231; GarciaMalo n=18 severe-RLS) are the closest severity-graded analogues.
**Diagnostic-era note:** no cohort uses Fukuda 1991 / CCC 1994 / ICC 2011 / IOM 2015 ME/CFS criteria — the null is structural (no ME/CFS data), so era-comparability is recorded as N/A. Cui 2026 uses ICD-10-coded long-COVID (no ME/CFS criteria applied). Holman 2005 uses 1990 ACR FM criteria.

---

## Key findings per query (incl. nulls)

- **Q1/Q2/Q19 → null for ME/CFS efficacy** (see Nulls 1). Efficacy evidence is analogy-only.
- **Q3/Q34/Q35 → RLS is the pramipexole efficacy/safety proving ground.** Winkelman 2025 guideline = evidence-graded standard of care; Allen 2014 = pregabalin ≥ pramipexole (first-line shift, fewer augmentation/mood/impulse-control liabilities with pregabalin); Takahashi 2017 = augmentation rate substantial on chronic pramipexole (long-term liability); GarciaMalo 2026 = aripiprazole can *rescue* RLS augmentation (partial agonist as DA-agonist counterweight); MartinGarcia 2026/Dorfman 2013 = DAWS is real, clinically severe, requires structured taper.
- **Q4/Q17 → ER formulation exists** (Jenner 2009): once-daily ER pramipexole, Cmax-late, same steady-state exposure — relevant to blunt-peak dosing strategies.
- **Q8/Q38 → the "caffeine reduces pramipexole exposure" claim is REFUTED.** Pramipexole is ~80–90% renally excreted unchanged, CYP-independent (Wright 1997; Knop 2015: OCT2/MATE-mediated tubular secretion). No PK interaction with caffeine is documented. The only pramipexole×caffeine signal is pharmacodynamic: Wills 2013 — higher caffeine intake associated with LOWER dyskinesia risk on pramipexole (HR ≈ 0.71, CI crosses 1.0 in main model; secondary ADL endpoint supportive). Adenosine A2A–D1 antagonism mechanism, not exposure.
- **Q5/Q16/Q20/Q39 → combo question.** No fatigue-population combo exists (null). Tundo 2024 TRD: pramipexole ≥ aripiprazole augmentation short- and long-term (remission, response, tolerability favor pramipexole). Etminan 2017: aripiprazole carries gambling-disorder/ICD reporting risk comparable to DA agonists — aripiprazole is NOT ICD-sparing.
- **Q10 → partial-agonist pharmacology.** Tadori 2011: aripiprazole functional potency at D2 is high-efficacy partial agonism (~25–30% Emax), pramipexole full agonist; at D3 and in systems with low receptor density, aripiprazole's "buffering" (response suppression to high agonist challenge) is **lost when receptor density is high** — direct complication for the "partial agonist is safer in D2-super-sensitive ME/CFS" hypothesis.
- **Q11/Q36/Q29 → autonomic/safety.** DA agonists lower BP and can worsen orthostatic intolerance (Q11 corpus, 499 hits; guideline-documented for pramipexole); somnolence/sleep attacks documented (Oved 2006: DA agonists worsen daytime sleepiness in PD, not fatigue; Montastruc 2001: modafinil+pramipexole somnolence interaction; Samuels 2006: pramipexole reduces alertness in healthy volunteers vs modafinil — directly opposes a "pramipexole for ME/CFS energy" framing).
- **Q12/Q28 → D3/motivation rationale is real.** Ventorp 2026 (Nat Med): pramipexole improves anhedonia/motivation in mood disorders (SHAPS −4.04 vs placebo, p=0.006) with PET-verified striatal target engagement — strongest positive control for a dopaminergic ME/CFS motivation-deficit hypothesis, in a non-ME/CFS population.
- **Q13/Q40 → fatigue-syndrome analogues.** Holman 2005 FM RCT: pramipexole improved pain/fatigue subscales in a responder subset (n=60, comorbidity-rich); Morita 2011: pramipexole exposure associated with LOWER fatigue prevalence in early-stage PD (OR 5.23 non-exposure); Oved 2006: DA agonists do NOT improve measured PD fatigue. Fatigue direction across analogues is **inconsistent** (improves FM subset and some PD; no effect or worse somnolence elsewhere).
- **Q14/Q21/Q22/Q42/Q43 → bromocriptine history** unresolvable as primary records (Null 3); Bruno 1996 post-polio pilot (n=5, fatigue benefit signal, authors call for placebo-controlled multicenter confirmation) stands as the citable anchor.
- **Q6/Q15/Q18/Q20 → aripiprazole side.** Cui 2026 LDA long-COVID (FSS 3.78→3.28, p=0.001) is the only fatigue-syndrome LDA outcome data; no long-COVID/ME/CFS aripiprazole trials beyond it; akathisia dose-dependence corpus (Q20/Q39) supports the low-dose ceiling.

## Findings that change the paper's pramipexole stance

1. **Ventorp 2026** — full-agonist pramipexole DOES engage targets and improve motivated-reward behavior in humans (RCT, PET). The paper's dopaminergic ME/CFS hypotheses gain a positive pharmacological control; pramipexole can no longer be discussed as "no human efficacy evidence at all".
2. **Tadori 2011** — partial-agonist buffering is receptor-density-dependent: in putative D2 supersensitivity (high effective receptor density), aripiprazole behaves closer to full agonist / loses stabilization. The paper's "partial agonist is the safer choice in supersensitive ME/CFS" argument needs this qualifier.
3. **Tundo 2024** — where both drugs have been compared head-to-head (TRD augmentation), the **full agonist won** — the opposite of the "partial beats full in supersensitivity" prediction.
4. **Etminan 2017** — aripiprazole is not ICD-sparing relative to pramipexole; the paper's risk asymmetry between the two drugs should be corrected.
5. **Morita 2011 vs Oved 2006** — pramipexole-and-fatigue data in PD conflict; any ME/CFS recommendation must present both.
6. **Samuels 2006 / Montastruc 2001 / Oved 2006** — pramipexole acutely lowers alertness in healthy humans; a pramipexole "fatigue treatment" story in ME/CFS must grapple with somnolence, and add orthostatic-intolerance risk (Q11 corpus).

## Unexpected items

- The caffeine claim is a **pharmacodynamic** story (A2A/D1), not the assumed pharmacokinetic exposure story (Q8/Q38) — refuted as claimed.
- Aripiprazole used as an **augmentation-rescue agent in RLS** (GarciaMalo 2026) — the DA-system direction is the reverse of the ME/CFS proposal (using DA agonists to treat a DA-agonist-caused problem).
- The 1990s bromocriptine-CFS "trials" cannot be resolved to primary records in any registry (Q21–Q26, Q41–Q43, Europe PMC, Crossref) — flag as citation-hygiene issue for the paper.

## PDF availability (filed under `Literature/treatments/<BibKey>/`)

- **PDF filed (4):** Cui2026LDAlongcovid (PMC OA), Ventorp2026PramipexoleAnhedonia (publisher OA/Nat Med), Takahashi2017RLSaugmentation (PMC OA, PLOS), Tundo2024PramAripTRD (MDPI OA).
- **Abstract-only (17), reason recorded per-paper in the `.abstract.txt`:** paywalled / not open access (Elsevier, NEJM, Taylor & Francis, SAGE, Lippincott, Front Sci, Oxford); Europe PMC `isOpenAccess=N`; EPMC `ptpmcrender` returned HTML landing pages for Wills 2013, Winkelman 2025, Morita 2011 (downloaded files deleted — HTML is not a PDF).

---

## Artifact status (Phase 1)

| Artifact | Status |
|----------|--------|
| Bib entries (21) appended | ✓ `src/main/typst/mecfs/bib/treatments.bib` (lines 6612–7018, `research_stream = {pramipexole-mecfs}`) |
| Appendix-h annotated entries (21) | ✓ `src/main/typst/mecfs/appendices/appendix-h-annotated-bibliography.typ`, block label `<sec:bib-pramipexole-mecfs>` (inserted before the Ivabradine/pyridostigmine autonomic section, adjacent to the aripiprazole/LDA material); isolated `typst` compile clean (0.14.2, EXIT=0) |
| Literature folders (21) | ✓ 4 PDFs + 17 abstracts, folder==stem==bib key |
| Search log | ✓ this file |
| Scrape registry rows | ✓ appended (PubMed E-utilities, Europe PMC, PMC OA, Crossref) |
| Chapter `.typ` edits | ✗ deliberately NOT done — Phase 1 scope; integration guides for main session |

---

## Addendum (2026-11-23, Phase 11b verification queue) — selection-gap closure

Phase 11b (pass 1) adjudication flagged a selection gap in the Phase 1 search: the log's own in-scope rule (TRD = motivation-adjacent fatigue population) covers treatment-resistant depression, but Q16's pramipexole-augmentation query named only Tundo 2024, and the PAX-D trial was absent from the corpus. Two records were verified and added during the fix-time verification queue:

| Key | Record | Verified via |
|-----|--------|--------------|
| `Browning2025PAXDPramipexoleTRD` | PAX-D: Lancet Psychiatry 2025;12(8):579-589, PMID 40602411, DOI 10.1016/S2215-0366(25)00194-4. Multicentre double-blind RCT, n=151 (75/arm), pramipexole to 2.5 mg target (mean wk-12 2.3 mg), 48 weeks, nine NHS trusts. Primary QIDS-SR16 wk-12: −3.91 (95% CI −5.37 to −2.45, p<0.0001). AE treatment termination 20% (15) vs 5% (4). **Endpoint is the depression axis (QIDS-SR16); the abstract reports no apathy/anhedonia/fatigue endpoint.** Erratum: Lancet Psychiatry 2025;12(9):e17. | NCBI efetch abstract, fetched 2026-11-23 |
| `Tundo2025PramipexoleAAfailure` | J Clin Psychopharmacol 2025;45(3):236-242, PMID 40163774, DOI 10.1097/JCP.0000000000001986. Observational, n=81 TRD unipolar, ALL receiving pramipexole augmentation: FAA n=23 (28.4%, previously failed aripiprazole augmentation) vs UAA n=58 (71.6%, aripiprazole-naïve). 24-wk response 69.6% vs 77.6%; remission 60.9% vs 74.1%; sustained 24-mo 72.7% vs 84.2% (all NS); no safety difference; authors: preliminary. **Not a head-to-head, not a sequence study** (key was initially drafted as `…PramAripSequence` and renamed on design verification). | NCBI efetch abstract, fetched 2026-11-23 |

Both are abstract-only (no PDF filed; paywalled Elsevier/Wolters Kluwer). Bib + appx-h entries added; corpus count for the cycle is now 23 keys / 23 appx-h entries.
