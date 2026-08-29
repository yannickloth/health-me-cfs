# Search Log: Management of Severe and Very Severe ME/CFS (S4ME 2026 Factsheet)

**Topic:** `severe-mecfs-management`
**Date:** 2026-08-29
**Type:** Clinical-management factsheet. Integration source: Science for ME, "Management of severe and very severe ME/CFS" (Prof. Jonathan Edwards + S4ME members, 2026). PDF: `Literature/severe-care/S4ME2026ManagementSevereVerySevereMECFS.pdf` (read fully in prior session).
**Mandate:** Clinical-management factsheet → full verification of factsheet bibliography + MANDATORY harm/safety search (enteral/parenteral feeding; off-label drugs). Most supporting evidence already in corpus bib.

## Queries

### Verification of factsheet bibliography (5 referenced papers)

| # | Method | Target | PMID | DOI | Result |
|---|--------|--------|------|-----|--------|
| V1 | Crossref DOI | Gaunt 2024, Eur J Pediatr 183(5):2343–2351 | 38429546 | 10.1007/s00431-024-05458-x | Verified |
| V2 | Crossref DOI | Wearden 2006 FINE protocol, BMC Med 4:9 | 16603058 | 10.1186/1741-7015-4-9 | Verified |
| V3 | Crossref DOI | Wearden 2010 FINE results, BMJ 340:c1777 | 20418251 | 10.1136/bmj.c1777 | Verified |
| V4 | Crossref DOI | Devasahayam 2012, JRSM Short Rep 3(1):4 | 22299071 | 10.1258/shorts.2011.011127 | Verified |
| V5 | Crossref DOI | Page 2019, Arch Dis Child 104(12):1174–1180 | 31201158 | 10.1136/archdischild-2019-317090 | Verified |
| V6 | Crossref DOI | McPhee 2019, J Health Psychol 26(7):975–984 | 31234662 | 10.1177/1359105319854532 | Verified |

Metadata (author/title/journal/volume/page/DOI) via Crossref; PMID verified via PubMed esummary/efetch.

### Harm / safety search — MANDATORY (treatment-adjacent)

| # | Database | Query string | Hits | Screened | Included | Result |
|---|----------|-------------|------|----------|----------|--------|
| H1 | PubMed | enteral feeding myalgic encephalomyelitis | low | all | 0 | No ME/CFS-specific enteral-feeding safety paper beyond Baxter2021 (already in corpus) |
| H2 | PubMed | parenteral nutrition chronic fatigue syndrome safety | low | all | 0 | No new ME/CFS-specific parenteral safety signal; refeeding-risk covered by Baxter2021 |
| H3 | PubMed | antihistamine mast cell myalgic encephalomyelitis adverse | low | all | 0 | Mast-cell antihistamine coverage already in corpus; no new ME/CFS safety signal |
| H4 | PubMed | naltrexone adverse effects myalgic encephalomyelitis | low | all | 0 | Bolton2019NaltrexoneSAE + extensive LDN coverage already in corpus; no new signal |
| H5 | PubMed | fludrocortisone adverse effects myalgic encephalomyelitis | low | all | 0 | Rowe2001FludrocortisoneNMH already in corpus; no new signal |
| H6 | PubMed | ivabradine adverse effects chronic fatigue / POTS | low | all | 0 | Marchetta2025ivabradine + POTS oral-meds review already in corpus; no new signal |

## Inclusion Criteria

- Peer-reviewed journal article with confirmed PMID/DOI (Crossref + PubMed esummary/efetch verified).
- Directly cited by the S4ME 2026 factsheet bibliography (Gaunt, Wearden ×2, Devasahayam, Page, McPhee).
- S4ME factsheet itself recorded as source `@misc` (S4ME2026ManagementSevereVerySevere).
- Harm/safety: enteral/parenteral feeding, and off-label drugs (antihistamines, naltrexone, fludrocortisone, ivabradine) — only if a genuinely new ME/CFS-relevant safety signal.

## Exclusion Criteria

- **No genuinely-new harm papers justified** for either mandated harm search — all ME/CFS-relevant safety evidence already present in corpus bib (Baxter2021malnutrition for enteral; Bolton2019NaltrexoneSAE + LDN set for naltrexone; Rowe2001FludrocortisoneNMH for fludrocortisone; Marchetta2025ivabradine + POTS review for ivabradine; mast-cell set for antihistamines). Adding padding papers would inflate the bib without evidence value — omitted per anti-padding rule.
- No non-ME/CFS (general enteral/parenteral, general drug-safety) papers added — the factsheet makes no ME/CFS-specific safety claim that such general papers would independently support or contradict beyond the existing corpus.

## Flow

- 6 verification lookups (Crossref DOI) + 6 harm/safety PubMed queries.
- **0 new papers** required beyond what the prior session already established; **7 bib entries** created from the verified factsheet bibliography (6 in `treatments.bib`, 1 in `diagnosis-assessment.bib`).
- No new harm papers added (anti-padding).

## Selected Papers (7, from factsheet bibliography verification)

| # | Bib key | PMID | Paper | File |
|---|---------|------|-------|------|
| 1 | Gaunt2024PediatricGET | 38429546 | Eur J Pediatr — GET vs activity management in paediatric CFS/ME (MAGENTA RCT) | treatments.bib |
| 2 | Wearden2006FINETrialProtocol | 16603058 | BMC Med — FINE trial protocol | treatments.bib |
| 3 | Wearden2010FINETrial | 20418251 | BMJ — FINE trial results (no sustained benefit) | treatments.bib |
| 4 | Devasahayam2012AlternativeDiagnoses | 22299071 | JRSM Short Rep — alternative diagnoses in CFS referrals | diagnosis-assessment.bib |
| 5 | Page2019PaediatricEnteral | 31201158 | Arch Dis Child — home enteral feeding patient safety | treatments.bib |
| 6 | McPhee2019TreatmentHarm | 31234662 | J Health Psychol — treatment harm monitoring (FOI study) | treatments.bib |
| 7 | S4ME2026ManagementSevereVerySevere | — | Science for ME 2026 fact sheet (@misc, source) | treatments.bib |

## Reused Existing Corpus Entries (not re-added)

| Bib key | File | Role in factsheet support |
|---------|------|--------------------------|
| Montoya2021SevereCare | treatments.bib | Severe-care literature anchor |
| Baxter2021malnutrition | treatments.bib | Malnutrition/enteral feeding — nutrition-harm anchor |
| Wilshire2018 | exercise-pem.bib | Rehabilitation/GET critique anchor |
| DecodeME2025 | diagnosis-assessment.bib | Epidemiology/severity anchor |
| Nacul2011/2020/2021 | general.bib / diagnosis-assessment.bib / modeling.bib | Epidemiology, case definition, severity prevalence |
| NaculLDN2025 | general.bib | Off-label drug (LDN) appraisal |
| Rowe2001FludrocortisoneNMH | autonomic-cardiovascular.bib | Fludrocortisone off-label harm |
| Marchetta2025ivabradine | autonomic-cardiovascular.bib | Ivabradine off-label / POTS |
| Bolton2019NaltrexoneSAE | treatments.bib | Naltrexone adverse-event harm |

## Research Gaps

- No ME/CFS-specific prospective study of enteral/parenteral feeding safety (relies on Baxter2021 + general paediatric enteral data Page2019).
- No ME/CFS-specific RCT safety data for antihistamines, naltrexone, fludrocortisone, or ivabradine as used in severe/very-severe care; off-label appraisal rests on indirect/general harm evidence.

## Notes

- MIXED working tree (prolactin/buspirone, osteoporosis, IHHT, quinine-sulfate cycles concurrent). Only bib (treatments.bib, diagnosis-assessment.bib), appendix-h (`sec:bib-severe-mecfs-care-guide` block), registry, and the two ops/research files touched for this topic. No chapter `.typ` files modified (Phase 3 scope).
