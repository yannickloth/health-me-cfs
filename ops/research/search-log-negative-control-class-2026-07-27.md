# Search Log — Pharmacodiagnostic Negative-Control Class
**Date:** 2026-07-27
**Agent:** literature-integrator
**Topic:** Formal class of negative-control medications in pharmacodiagnostics

## Search Sources
- PubMed (E-utilities API + web)
- Google Scholar (blocked by CAPTCHA — abandoned)

## Search Queries Executed

| # | Query | Source | Results |
|---|-------|--------|---------|
| 1 | `rituximab ME/CFS RCT` | PubMed web | 147 refs (review article dominant) |
| 2 | `BC007 ME/CFS autoantibody` | PubMed web | 0 relevant |
| 3 | `diagnosis ex juvantibus pharmacodiagnostic` | PubMed web | 20 results, mostly ex juvantibus literature |
| 4 | `Fluge 2011 rituximab ME/CFS` | PubMed web | Fluge 2011 identified |
| 5 | `Fluge O Mella O rituximab CFS 2011` | E-utilities | PMID 22039471 |
| 6 | `BC007 chronic fatigue` | E-utilities | 0 results |
| 7 | `"treatment failure" "diagnostic evidence"` | E-utilities | 0 results |
| 8 | `"negative therapeutic test" diagnostic` | E-utilities | 44718 (broad false matches) |
| 9 | `"precision medicine" "negative control" drug` | E-utilities | 11 results |
| 10 | `"falsification" "medicine" "diagnosis" "Popper"` | E-utilities | PMID 34702804 |
| 11 | `"diagnosis ex juvantibus"` | E-utilities | 79 results |
| 12 | `"daratumumab" "plasma cell" diagnostic` | E-utilities | 196 results |
| 13 | `immunoadsorption chronic fatigue Freitag` | E-utilities | PMIDs: 39759581, 37835071, 32751659, 29543914 |
| 14 | `"drug non-response" diagnostic "ME/CFS"` | E-utilities | 0 results |
| 15 | `"B-cell depletion" "ME/CFS" implications` | E-utilities | PMID 30502905 |
| 16 | `"ex adjuvantibus" diagnosis` | E-utilities | PMID 15490687 (excluded - irrelevant) |
| 17 | `rituximab "chronic fatigue" "negative phase" implications autoimmunity` | E-utilities | 0 results |
| 18 | `"pharmacodiagnostic"` | E-utilities | 25 results (most irrelevant) |
| 19 | `"counterfactual" diagnostic reasoning pharmacology` | E-utilities | PMID 30335125 |
| 20 | `"therapeutic trial" "diagnostic inference" pharmacology` | E-utilities | 0 results |
| 21 | `"drug response" "rule out" diagnosis "negative control"` | E-utilities | 0 results |
| 22 | `Fluge O Risa K rituximab open-label maintenance` | E-utilities | PMID 26132314 |
| 23 | `"GPCR autoantibod" ME/CFS failure` | E-utilities | 0 results |
| 24 | `"n-of-1" "negative result" drug response` | E-utilities | 0 results |
| 25 | `"exclusion diagnosis" "ME CFS"` | E-utilities | 1 (irrelevant) |
| 26 | `"constraint satisfaction" diagnostic elimination` | E-utilities | PMID 25281952 (radiation physics — irrelevant) |
| 27 | `"diagnosis by exclusion" "treatment response" methodology` | E-utilities | 0 results |
| 28 | `"drug non-response" diagnostic "ME/CFS"` | E-utilities | 0 results |
| 29 | `"computational phenotyping" "drug response" negative` | E-utilities | 0 results |

## Search Term Coverage Table

| Instruction term | Searched? | Hits? | Notes |
|-----------------|-----------|-------|-------|
| "diagnosis ex juvantibus" | Yes | Yes | 79 hits, Laragh 1988 already in bib |
| "therapeutic test" | Implicitly | Yes | Via ex juvantibus literature |
| "n-of-1 trial negative result" | Yes | No | 0 results for specific query |
| "negative control" pharmacological + diagnostic | Yes | Partial | 11 hits, mostly biomarker methodology |
| "treatment failure as diagnostic evidence" | Yes | No | 0 results — novel concept area |
| "lack of response diagnostic significance" | Yes | No | 0 results |
| "pharmacodiagnostic negation" | Yes | No | 0 results — term does not exist in literature |
| "drug response rules out" | Yes | No | 0 results |
| rituximab ME/CFS RCT null | Yes | Yes | Fluge 2019 (PMID 30934066) |
| rituximab negative trial ME/CFS | Yes | Yes | Rowe editorial (PMID 30934063) |
| daratumumab vs rituximab plasma cell diagnostic | Yes | No | 196 hits but none on diagnostic comparison |
| immunoadsorption ME/CFS response | Yes | Yes | 4 papers (Scheibenbogen 2018, Tölle 2020, Stein 2023, Stein 2025) |
| BC007 ME/CFS autoantibody | Yes | No | 0 hits on PubMed |
| GPCR autoantibodies ME/CFS failed trial | Yes | No | 0 hits |
| B-cell depletion failed ME/CFS trial implications | Yes | Yes | Rekeland 2019 (PMID 30502905) |
| "precision medicine negative controls" | Yes | Partial | 11 results, mostly methods papers |
| "counterfactual diagnostic reasoning pharmacology" | Yes | Yes | Hobbs 2018 (PMID 30335125) |
| Null/negative search terms | Yes | Mixed | Most null/negative drug response diagnostic queries returned 0 |
| "computational phenotyping negative response" | Yes | No | 0 results |
| "constraint satisfaction diagnostic elimination" | Yes | No | Ghost marker RT paper — irrelevant |
| "diagnosis by treatment failure methodology" | Yes | No | 0 results |
| "exclusion diagnosis ME/CFS" | Yes | Yes | 1 hit, irrelevant |
| "falsification medicinal drug" | Yes | No | 0 results |
| "Karl Popper falsification medicine diagnosis" | Yes | Yes | Ceyhan 2021 (PMID 34702804), ophthalmology |
| "negative therapeutic test diagnostic" | Yes | No | 0 results (broad false positives from "negative" + "therapeutic" + "test") |

## Key Finding
**No literature was found that explicitly defines a "negative-control medication" class in pharmacodiagnostics.** The concept of using drug *failure* as diagnostic *exclusion* evidence (as opposed to using drug *response* as diagnostic *confirmation*) does not appear to have been formalized in the literature. This represents a genuine conceptual gap — and therefore a novel contribution opportunity.

The closest published concepts found:
1. **Diagnosis ex juvantibus** (Laragh 1988) — but this is about POSITIVE response confirming mechanism, not negative response falsifying it
2. **Counterfactual reasoning in uncontrolled trials** (Hobbs 2018) — recognizes the problem but in trial design, not diagnostic reasoning
3. **Popperian falsification in medicine** (Ceyhan 2021) — acknowledges falsification as demarcation criterion but does not operationalize for drug response
4. **Computational phenotyping** (Friston 2023, Schwartenbeck 2016, Schaaf 2024) — mathematical framework for diagnostic classification from behavioral/pharmacological data, but not specifically about negative controls

The ME/CFS empirics that motivate the class exist (rituximab RCT failure, immunoadsorption heterogeneity), but the formal class is absent from the literature.
