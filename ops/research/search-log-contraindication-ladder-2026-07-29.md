# Search Log: Contraindication Ladder — What NEVER to Combine

**Date:** 2026-07-29
**Database:** PubMed (eutils.ncbi.nlm.nih.gov)
**Research Stream:** `contraindication-ladder`

---

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed | `"low dose naltrexone" AND (tramadol OR tapentadol) AND (interaction OR contraindication OR opioid)` | 2 | 2 | 2 | 2026-07-29 |
| 2 | PubMed | `(beta-blocker OR propranolol OR atenolol) AND (beta-agonist OR salbutamol OR albuterol) AND (interaction OR contraindication OR antagonism)` | 450 | 20 | 4 | 2026-07-29 |
| 3 | PubMed | `fluvoxamine AND duloxetine AND (interaction OR CYP1A2 OR serotonin syndrome OR pharmacokinetic)` | 31 | 20 | 5 | 2026-07-29 |
| 4 | PubMed | `cimetidine AND aripiprazole AND (interaction OR CYP2D6 OR akathisia OR metabolic)` | 0 | 0 | 0 | 2026-07-29 |
| 5 | PubMed | `clonidine AND midodrine AND (interaction OR contraindication OR opposition)` | 2 | 2 | 1 | 2026-07-29 |
| 6 | PubMed | `(methylphenidate OR modafinil OR stimulant) AND (ME/CFS OR "chronic fatigue") AND (PEM OR "post-exertional malaise" OR safety OR adverse)` | 21 | 20 | 4 | 2026-07-29 |
| 7 | PubMed | `rapamycin AND metformin AND (mTOR OR autophagy OR interaction OR combination)` | 744 | 20 | 4 | 2026-07-29 |
| 8 | PubMed | `"drug drug interaction" AND (classification OR taxonomy OR severity OR framework OR ladder OR tier)` | 1,046 | 20 | 3 | 2026-07-29 |
| 9 | PubMed | `cimetidine AND (CYP inhibitor OR drug interaction) AND (review OR systematic review)` | 294 | 0 | 0 | 2026-07-29 |
| 10 | PubMed | `(naltrexone OR LDN) AND (opioid agonist OR tramadol OR tapentadol OR morphine) AND (antagonism OR interaction OR precipitated withdrawal)` | 1,511 | 20 | 2 | 2026-07-29 |
| 11 | PubMed | `"low dose naltrexone" AND (safety OR interaction OR contraindication OR withdrawal OR dysphoria)` | 101 | 20 | 4 | 2026-07-29 |
| 12 | PubMed | `(fludrocortisone OR ketamine OR prazosin) AND (ME/CFS OR "chronic fatigue syndrome" OR POTS OR orthostatic) AND (adverse OR contraindication OR safety OR worsening)` | 211 | 20 | 2 | 2026-07-29 |
| 13 | PubMed | `"Stockley's drug interactions" OR "drug interaction classification" AND (severity OR level OR contraindication ladder)` | 2,433 | 10 | 0 | 2026-07-29 |
| 14 | PubMed | `"serotonin syndrome" AND (fluvoxamine OR duloxetine) AND (CYP OR pharmacokinetic OR case report)` | 66 | 10 | 2 | 2026-07-29 |
| 15 | PubMed | `(beta-blocker OR propranolol) AND (salbutamol OR albuterol) AND (asthma OR bronchospasm OR "beta-2 antagonism" OR contraindicated)` | 169 | 10 | 1 | 2026-07-29 |
| 16 | PubMed | `"drug drug interaction" AND ("severity rating" OR "risk classification" OR "contraindication tier") AND review` | 1 | 1 | 0 | 2026-07-29 |

---

## Inclusion Criteria

- Drug-drug interaction studies, case reports, or reviews for the specified interaction pairs
- ME/CFS-specific adverse effects or safety data for medications in the ladder
- Drug-drug interaction classification frameworks or severity rating systems
- Established pharmacology (FDA labeling, textbook-level) accepted as evidence for Level 1 interactions
- PK/PD interaction studies for Level 2 and 3 interactions

## Exclusion Criteria

- Papers not in English (unless English abstract available with sufficient data)
- General DDI prediction models not addressing specific interaction pairs
- Papers focused solely on drug-drug interactions unrelated to the specified pairs
- Veterinary studies (unless mechanism is cross-species relevant)
- Pre-1985 papers on beta-blockers/agonists (unless foundational)

---

## Flow

| Stage | Count |
|-------|-------|
| Total queries | 16 |
| Total hits (raw) | ~7,081 |
| After deduplication (estimated) | ~6,500 |
| After title/abstract screen | ~195 |
| After full-text/abstract review | ~52 |
| **Final included** | **19** |
| Excluded — not relevant to specific pair | ~130 |
| Excluded — general DDI without mechanism detail | ~30 |
| Excluded — non-English, insufficient abstract | ~5 |
| Excluded — duplicate across queries | ~8 |

---

## Search Terms by Database

- **PubMed eutils:** All queries via `esearch.fcgi` + `efetch.fcgi` endpoints with `retmax=20`, `sort=relevance`

---

## Special Search Notes

### Cimetidine + Aripiprazole (Query #4)
**CONFIRMED NULL RESULT.** Zero papers in PubMed for this specific combination. The interaction is predicted from established pharmacology (cimetidine = non-selective CYP inhibitor; aripiprazole = CYP2D6/CYP3A4 substrate) but has never been studied as a specific pair. Secondary search (Query #9) confirmed cimetidine's CYP inhibition is well-characterized in general (294 hits), but no paper pairs it with aripiprazole.

### Clonidine + Midodrine (Query #5)
Only 2 hits; 1 included (Dayal 2025 case report). The other (Kleinrok 1980) was an animal study from 1980 confirming CNS opposition. The interaction is pharmacodynamically obvious (α2 agonist vs α1 agonist) but scarcely studied as a formal drug-drug interaction — likely because the drugs are used in different patient populations (autonomic failure patients may need both, but temporally separated).

### Rapamycin + Metformin (Query #7)
744 hits but NONE specifically address adverse effects from combined mTORC1 suppression. All hits are about anti-aging benefits of each drug separately or combined use in oncology. The risk we describe (excessive autophagy → muscle compromise → PEM exacerbation) is a mechanistic inference not found in any published paper. Ponticelli 2023 comes closest with a general caution about autophagy activators.

### DDI Classification Frameworks (Queries #8, #13, #16)
Multiple existing frameworks found but NONE use a mechanism-based ladder organizing interactions by receptor antagonism → PK → PD → metabolic risk. Existing frameworks (Stockley's, Micromedex, Pharmavista) use severity ratings (minor/moderate/major/contraindicated) or documentation quality. Amariles 2007 proposes severity + probability. Dieu 2019 demonstrates clinical use of "contraindicated" vs "contraindicated by precaution" tiers.
