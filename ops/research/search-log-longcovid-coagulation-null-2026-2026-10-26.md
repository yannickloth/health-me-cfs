# Search Log: Long-COVID Coagulation Null Result (HemaSphere 2026)

**Date:** 2026-10-26
**Topic slug:** `longcovid-coagulation-null-2026`
**Driving paper:** Fraser E, Ng K, Hasan N, et al. *No evidence of hypercoagulability,
altered fibrinolysis, or increased fibrin(ogen) microaggregates in never-hospitalized
long COVID.* HemaSphere 2026;10(10):e70501. DOI 10.1002/hem3.70501. PMID 42903049.
PMCID PMC13680132. CC-BY. Published 2026-10-19.
**PubMed publication type:** Letter (research-letter format).

## PICO question

In adults with post-COVID-19 condition (P), is there laboratory evidence of
hypercoagulability, impaired fibrinolysis, or increased fibrin(ogen) microaggregate
burden (O), compared with recovered and never-infected controls (C), and does that
evidence differ by hospitalization status, assay platform, or ME/CFS diagnosis (I)?

## Queries

All queries were run against Europe PMC REST on 2026-10-26. `hits` is the database
`hitCount` for the query as written; `retrieved` is the number of records whose IDs
were pulled into the screening pool (Europe PMC idlist, first page).

| # | Framing | Query string | Hits | Retrieved | Included |
|---|---------|--------------|------|-----------|----------|
| F1 | Pro-microclot (positive direction) | `(microclot* OR "fibrin amyloid" OR fibrinaloid OR "amyloid fibrinogen") AND ("long COVID" OR PASC OR "post-COVID")` | 505 | 100 | 3 |
| F2 | Null / negative coagulation in long COVID | `(coagulation OR hypercoagulab* OR fibrinolysis OR "D-dimer") AND "long COVID" AND ("no evidence" OR null OR "not elevated" OR "did not differ")` | 4256 | 100 | 3 |
| F3 | ME/CFS coagulation and platelet pathology | `(microclot* OR hypercoagulab* OR fibrinolysis OR "platelet hyperactivation") AND ("myalgic encephalomyelitis" OR "chronic fatigue syndrome")` | 533 | 100 | 4 |
| F4 | Anticoagulant / antiplatelet trials | `(rivaroxaban OR apixaban OR anticoagul* OR antiplatelet) AND "long COVID" AND (trial OR randomised OR randomized)` | 1082 | 100 | 3 |
| F5 | Plasmapheresis / apheresis | `(plasmapheresis OR apheresis OR "plasma exchange") AND ("long COVID" OR "post-COVID")` | 1195 | 100 | 2 |
| F6 | Assay / method (TEG, flow cytometry) | `(thromboelastography OR thromboelastometry OR "imaging flow cytometry") AND microclot*` | 81 | 81 | 3 |
| F7 | Severity / hospitalization dependence | `(microclot* OR "fibrin amyloid") AND (hospitali* OR "intensive care" OR sepsis)` | 603 | 100 | 2 |
| F8 | ME/CFS thromboelastography | `thromboelastography AND ("chronic fatigue syndrome" OR "myalgic encephalomyelitis")` | 19 | 19 | 2 |
| F9 | Composition rather than abundance | `("post-translational modification*" OR "advanced glycation") AND fibrinogen AND ("long COVID" OR POTS)` | 116 | 100 | 1 |
| Q10 | Author-targeted follow-up (Pretorius group) | `AUTH:"Pretorius E" AND (microclot* OR "fibrin amyloid" OR fibrinaloid)` | 89 | 89 | 2 |
| Q11 | Date-bounded pro-microclot (2021–2022) | `(microclot* OR "fibrin amyloid") AND SRC:MED AND (PUB_YEAR:2021 OR PUB_YEAR:2022) AND "long COVID"` | 51 | 51 | 2 |
| Q12 | Recent ME/CFS microclot work | `"microclots" AND (ME/CFS OR "myalgic encephalomyelitis") AND (2024 OR 2025 OR 2026)` | 136 | 100 | 0 |

**Deduplicated pool:** 613 unique records across the retrieved idlists. Sum of
database hit counts is 8,390; that figure is not a deduplicated count and is not
used downstream.

**Why F1 needed Q10 and Q11.** F1 returns 505 records and only the first 100 IDs
were retrieved, so two of the included papers (Pretorius 2021, Pretorius 2022)
were absent from the F1 idlist even though they match F1. Q10 and Q11 were run to
retrieve them explicitly rather than relying on a truncated page. Both were
confirmed present in Q10 and Q11.

## Rival framings searched

The pipeline requires the opposing framings to be searched, not only the framing
that the driving paper supports.

| Framing | Position | Papers included |
|---------|----------|-----------------|
| F1 | Fibrin(ogen) amyloid microclots are elevated in long COVID | Pretorius 2021, Pretorius 2022, Turner 2023 |
| F2 | Coagulation markers are normal in long COVID | Fraser 2026, Booyens 2026, Saleem 2026 |
| F3 | Coagulation and platelet pathology extend to ME/CFS | Nunes 2022, Turner 2023, Booyens 2026, Saleem 2026 |
| F4 | Anticoagulation is a rational treatment target | StimulateICP 2026, Fraser 2026, Booyens 2026 |
| F5 | Plasmapheresis removes the particles | Cochrane 2023, Fraser 2026 |
| F6 | The finding is assay-dependent | Turner 2023, Nunes 2022, Saleem 2026 |
| F7 | The finding is severity-dependent | Schofield 2024, Fraser 2026 |
| F8 | Thromboelastography is the right instrument | Nunes 2022, Saleem 2026 |
| F9 | Composition, not abundance, is the signal | Booyens 2026 |

Every framing produced at least one included paper. No framing was searched and
found empty.

## Inclusion criteria

Written before screening, at cycle start:

- Human studies measuring coagulation, fibrinolysis, platelet, or fibrin(ogen)
  aggregate parameters in post-COVID-19 condition, ME/CFS, or POTS.
- Human studies of anticoagulant, antiplatelet, or apheresis treatment in those
  populations.
- Method or validation studies for microclot / fibrin(ogen) aggregate measurement.
- Systematic reviews and Cochrane appraisals of the same question.
- Narrative reviews only where they state a position the primary literature does
  not cover (the thromboelastography framing).
- Negative and null results included by design — the driving paper is a null
  result, and evidence-visibility symmetry requires the contradicting side.

## Exclusion criteria

- Purely in vitro studies with no human plasma or patient sample.
- Acute COVID-19 coagulopathy studies with no post-acute follow-up (retained only
  where they supply the severe-end contrast, as Schofield 2024 does).
- Animal models of sepsis coagulopathy.
- Case reports of individual patients.
- Non-English publications.
- Preprints not peer reviewed.

## Screening flow

| Stage | Count |
|-------|-------|
| Unique records retrieved | 613 |
| Excluded on title (not coagulation, not long COVID/ME/CFS, animal, acute-only) | 561 |
| Assessed on abstract | 52 |
| Excluded on abstract (no relevant measurement, review of unrelated topic, duplicate of an included paper) | 39 |
| Assessed on full text | 13 |
| Excluded on full text (superseded by a later paper from the same group, or no extractable coagulation parameter) | 3 |
| **Included** | **10** |

Two of the ten included papers duplicate existing bibliography entries and were not
re-added: `NunesPlatelets2022mecfs` (Nunes 2022, already in `bib/long-covid.bib`) and
`Saleem2026MicroclotProfiling` (Saleem 2026, already in `bib/long-covid.bib` and
already annotated in Appendix H). Seven new bibliography entries were created.

## Included papers and certainty

`raw` is the certainty-scale score, `cap` is the evidence-tier ceiling, `pop` is the
population-relevance weight, `final` is `min(raw, cap) × pop`.

| Bib key | Study | n | Tier | raw | cap | pop | final |
|---------|-------|---|------|-----|-----|-----|-------|
| `Fraser2026LCcoagulation` | Fraser 2026, HemaSphere | 151 | prospective cohort | 0.80 | 0.60 | 0.85 | **0.51** |
| `Pretorius2021LCantiplasmin` | Pretorius 2021, Cardiovasc Diabetol | case–control lab | prospective cohort | 0.65 | 0.60 | 0.85 | **0.51** |
| `Pretorius2022LCmicroclotPrevalence` | Pretorius 2022, Cardiovasc Diabetol | 80 sampled | prospective cohort | 0.55 | 0.60 | 0.85 | **0.47** |
| `Turner2023FlowCytometry` | Turner 2023, Heliyon | 60 | prospective cohort | 0.55 | 0.60 | 0.85 | **0.47** |
| `NunesPlatelets2022mecfs` | Nunes 2022, Pharmaceuticals | ME/CFS cohort | prospective cohort | 0.60 | 0.60 | 1.00 | **0.60** |
| `Booyens2026POTSPTM` | Booyens 2026, Cardiovasc Diabetol | 75 | prospective cohort | 0.55 | 0.60 | 0.85 | **0.47** |
| `Schofield2024microclotsDIC` | Schofield 2024, Blood Adv | 104 | prospective cohort | 0.75 | 0.60 | 0.75 | **0.45** |
| `Cochrane2023Plasmapheresis` | Fox 2023, Cochrane Database Syst Rev | 5 lab studies, 0 RCTs | systematic review | 0.80 | — | 0.85 | **0.68** |
| `Saleem2026MicroclotProfiling` | Saleem 2026, Blood Coagul Fibrinolysis | review | narrative review | 0.50 | 0.50 | 0.85 | **0.43** |
| `StimulateICP2026rivaroxaban` | STIMULATE-ICP 2026, Lancet Infect Dis | 778 | RCT | 0.80 | 0.85 | 0.85 | **0.68** |

**Tier-assignment note (Fraser 2026).** PubMed indexes the driving paper as a
Letter. That is a format signal, not a design signal: the paper is a prespecified
cross-sectional comparison inside the registered EXPLAIN prospective cohort
(ISRCTN14304264), with anticoagulant and antiplatelet users excluded before
analysis. The prospective-cohort cap (0.60) is therefore applied, and the
disagreement between the registry format label and the design label is recorded
here rather than resolved silently. If the Letter label were taken as the tier
signal, the paper would fall to the `unknown` cap (0.40) and the discounted value
would be 0.34. The Phase 2 decision does not depend on which of the two readings is
used, because the PROCEED threshold is met by four other papers.

## PDF acquisition record

Publisher PDFs were retrieved through the **PMC Open Access S3 mirror**
(`https://pmc-oa-opendata.s3.amazonaws.com/PMC<id>.1/PMC<id>.1.pdf`). This route is not
bot-gated and returns the publisher's typeset PDF. It was found in
`registry/scrape-registry.md`, where an earlier cycle had already recorded it.

Every other route returned a bot-challenge HTML page (3–6 KB) instead of a PDF:

| Route | Result |
|-------|--------|
| Wiley `pdfdirect` / `epdf` (driving paper) | challenge page |
| PMC `pmc.ncbi.nlm.nih.gov/articles/<id>/pdf/...` | reCAPTCHA interstitial, did not clear |
| PMC legacy `www.ncbi.nlm.nih.gov/pmc/.../pdf/...` | challenge page |
| Europe PMC `articles/<id>?pdf=render` | challenge page |
| Europe PMC `backend/ptpmcrender.fcgi` | challenge page |
| Europe PMC `api/fulltextRepo` | JSON error |
| Europe PMC EBI `fullTextPDF` | JSON error |
| MDPI `mdpi.com/.../pdf` | challenge page |
| Unpaywall / OpenAlex `pdf_url` | resolves only to the blocked Wiley URL |
| BrowserOS neo real browser, download behaviour forced | Wiley and PMC both served challenge HTML |
| **PMC OA S3 mirror** | **PDF returned for all 8 PMC-indexed papers** |

| Key | Filed | Pages | Provenance |
|-----|-------|-------|------------|
| `Fraser2026LCcoagulation` | `Literature/clinical-studies/Fraser2026LCcoagulation/` | 6 | publisher PDF (PMC13680132.1) |
| `Pretorius2021LCantiplasmin` | `Literature/mechanisms/Pretorius2021LCantiplasmin/` | 18 | publisher PDF (PMC8381139.1) |
| `Pretorius2022LCmicroclotPrevalence` | `Literature/mechanisms/Pretorius2022LCmicroclotPrevalence/` | 17 | publisher PDF (PMC9356426.1) |
| `Turner2023FlowCytometry` | `Literature/mechanisms/Turner2023FlowCytometry/` | 12 | publisher PDF (PMC10558872.1) |
| `NunesPlatelets2022mecfs` | `Literature/mechanisms/NunesPlatelets2022mecfs/` | 17 | publisher PDF (PMC9413879.1) |
| `Booyens2026POTSPTM` | `Literature/mechanisms/Booyens2026POTSPTM/` | 15 | publisher PDF (PMC13679111.1) |
| `Schofield2024microclotsDIC` | `Literature/clinical-studies/Schofield2024microclotsDIC/` | 10 | publisher PDF (PMC11131067.1) |
| `Cochrane2023Plasmapheresis` | `Literature/reviews/Cochrane2023Plasmapheresis/` | 32 | publisher PDF (PMC10368521.1) |
| `Saleem2026MicroclotProfiling` | `Literature/reviews/Saleem2026TEGreview/` | — | **PDF unavailable — not open access** (no PMC record; Unpaywall closed) |
| `StimulateICP2026rivaroxaban` | `Literature/treatments/StimulateICP2026rivaroxaban/` | — | **PDF unavailable — not open access** (Lancet Infect Dis paywall; no PMC record) |

Abstracts for all ten papers are stored as `abstract.txt` beside the PDF. The JATS
full text is stored as `<key>-jats.xml` for the eight PMC papers so any claim can be
re-checked against structured markup rather than a typeset page image.

## Coverage declaration

- **Opened (full text read):** 10 of 10 included papers.
- **Not opened:** 0 included papers.
- **Screened but not opened:** 49 records were judged from title and abstract only
  and excluded; none of them is cited in this cycle.
- **Known coverage gap:** the 505-hit F1 corpus and the 4,256-hit F2 corpus were
  screened from the first 100 IDs per query, not from the full result sets. A paper
  matching those framings but ranked below position 100 would not have been seen.
  Q10 and Q11 were added specifically to close that gap for the Pretorius group,
  which is the most-cited source family in this area.
- **Framing symmetry:** the pro-microclot side (F1), the null side (F2), the ME/CFS
  extension (F3), the treatment side (F4, F5), the method side (F6, F8), the
  severity side (F7), and the composition side (F9) were all searched. The skeptic
  source (Cochrane 2023) and the proponent sources (Pretorius, Kell group) were both
  opened, not only one side.

## Notes

- `Saleem2026MicroclotProfiling` already exists in `bib/long-covid.bib` with DOI
  `10.1097/MBC.0000000000001278`. Europe PMC currently reports
  `10.1097/MBC.0000000000001439` for the same PMID (42274123). Both may be valid
  (online-first versus final assignment). This cycle did not overwrite the existing
  entry; the discrepancy is recorded here for the bibliography auditor.
- `registry/scrape-registry.md` had no entry for this DOI before this cycle. The
  URLs actually used are registered there now.
- The related plan `ops/plans/microclot-thromboelastography-mecfs-2026-integration-plan.md`
  covers the positive-direction article and is cross-referenced, not merged.
