# Search Log: 2026 LDN + EBV-HLA References

**Date:** 2026-09-09
**Researcher:** opencode (governor-governed integrate-topic cycle)
**Scope:** Three 2026 citations flagged as absent from the paper by the Ruiz-Pablos LDN/Long-COVID article assessment.
**Mode:** Gap-fill with already-cited literature (citations specified in the driving source). No open-ended discovery search required.

---

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | PubMed E-utilities (esummary) | PMID 42060160 (Gouda 2026 LDN review) | 1 | 1 | 1 | 2026-09-09 |
| 2 | PubMed E-utilities (esummary) | PMID 42463201 (Byambasuren 2026 BMJ Open LDN meta) | 1 | 1 | 1 | 2026-09-09 |
| 3 | PubMed E-utilities (esummary) | PMID 41534530 (Wang 2026 Cell EBV-HLA-DR15) | 1 | 1 | 1 | 2026-09-09 |
| 4 | PubMed E-utilities (efetch abstract) | PMIDs 42060160, 42463201, 41534530 | 3 | 3 | 3 | 2026-09-09 |

## Metadata verification

All three PMIDs verified against PubMed E-utilities (esummary + efetch). DOIs, authors, journal, volume/issue/pages, and abstracts confirmed from the authoritative NCBI record — NOT transcribed from the secondary article.

| Citation | Verdict |
|----------|---------|
| Gouda et al. 2026 Adv Ther (PMID 42060160) | Verified. 105 studies, 15 RCTs; uncontrolled positives rarely replicate in placebo-controlled trials. |
| Byambasuren et al. 2026 BMJ Open (PMID 42463201) | Verified. 4 pre-post studies, n=155, no RCTs; low certainty. |
| Wang et al. 2026 Cell (PMID 41534530) | Verified. EBV alters presentation on HLA-DR15 incl. myelin self-antigens. In vitro. |

## Inclusion Criteria
- Not already present in `bib/*.bib` (checked via rg for PMID/key — all three absent before this cycle)
- Primary peer-reviewed 2026 source flagged in the driving assessment
- Directly reinforces existing paper content (LDN evidence in ch28; EBV→HLA→autoimmunity in ch08/ch13)

## Exclusion Criteria
- NCT05430152 (LDN RCT): trial-registration record, completed but NO results posted. Excluded from bib (cannot cite unpublished results as evidence); tracked as a MONITOR item in the plan.
- Gouda 2026 erratum (PMID 42412315): correction to primary — noted in bib `note`, no separate entry.

## Flow
- Total candidates specified: 3 (+ 1 monitor item NCT05430152, + 1 erratum)
- Verified present via PubMed: 3
- Added to bib: 3 (Gouda2026LDNevidence → treatments.bib; Byambasuren2026LDNlongcovid → long-covid.bib; Wang2026EBVHLADR15MS → immune.bib)
- Search log + annotated bib entries written

## Search Terms by Database
- PubMed: PMID-targeted (esummary/efetch) — deterministic single-record verification.

---

## Phase 1 Report (recorded)
Gap-fill scope with already-cited literature: citations were specified by the driving source; Phase 1 verified each against the authoritative PubMed record rather than re-running discovery search (recorded WHY per skill Phase-1 note). Bib keys produced (VERIFIED against bib, not transcribed): `Gouda2026LDNevidence`, `Byambasuren2026LDNlongcovid`, `Wang2026EBVHLADR15MS`.
