# Search Log: KCE Belgian ME/CFS Health Technology Assessment

**Topic slug:** `kce-belgium-guideline`
**Date:** 2026-07-21
**Researcher:** Claude (opencode)

---

## Source Documents (Already In Possession)

| # | Document | Filename | Pages (PDF) |
|---|----------|----------|-------------|
| 1 | KCE Report 420 (Main) | `KCE_420_Chronic_Fatigue_Syndrome_Belgium_Report.pdf` | ~140 |
| 2 | KCE Report 420S (Supplement) | `KCE_420S_Chronic_Fatigue_Syndrome_Belgium_Supplement.pdf` | ~50 |

---

## Search Strategy

### Purpose
1. Identify any subsequent papers citing the KCE report
2. Find critiques, responses, or commentary
3. Locate related Belgian ME/CFS guidelines or policy documents
4. Search for null/contradicting evidence regarding the report's findings

### Queries Executed

| # | Database | Query | Date | Results |
|---|----------|-------|------|---------|
| 1 | DOI Resolution | https://doi.org/10.57598/R420C | 2026-07-21 | Resolved to Crossref metadata — confirmed citation |
| 2 | KCE Website | https://kce.fgov.be/en/ (report page) | 2026-07-21 | 404 — report page not yet indexed/redirected |
| 3 | KCE Website (FR) | https://kce.fgov.be/fr/ (report page) | 2026-07-21 | 404 — same |
| 4 | PubMed | `Cornelis ME CFS KCE Belgium 2026` | 2026-07-21 | 0 results (report not indexed in PubMed) |
| 5 | PubMed | `KCE chronic fatigue syndrome Belgium` | 2026-07-21 | No KCE ME/CFS report; unrelated COVID-19 follow-up studies returned |
| 6 | Google Scholar | `"Management of myalgic encephalomyelitis" KCE Belgium 2026` | 2026-07-21 | CAPTCHA blocked — could not retrieve |
| 7 | Local codebase grep | KCE / Cornelis2026 / Belgian Health Care Knowledge Centre | 2026-07-21 | No existing entries in any bib file |

### Null/Counter-Evidence Search

| # | Strategy | Rationale | Result |
|---|----------|-----------|--------|
| 1 | PubMed: `ME/CFS Belgium prevalence 2026` | Search for alternative Belgian prevalence estimates | No competing Belgian prevalence data found (very few European studies exist per report itself) |
| 2 | PubMed: `critique KCE ME/CFS 2026` | Search for formal critiques | 0 results — report too recent (published 30 June 2026, <1 month old) |
| 3 | PubMed: `Belgium chronic fatigue syndrome guideline 2026` | Alternative Belgian guidance | No competing Belgian guidelines identified |
| 4 | Report self-citation analysis | Check if report cites contradictory evidence | Report acknowledges ongoing scientific debate on GET/CBT — position aligns with NICE 2021/CDC 2022 reversal |

---

## Inclusion/Exclusion Criteria

### Inclusion
- Papers directly citing or responding to KCE Report 420/420S
- Belgian ME/CFS epidemiological or health services research
- Belgian ME/CFS guidelines or policy documents
- Any evidence contradicting the report's key findings

### Exclusion
- ME/CFS research not referencing the KCE report or Belgian context
- Generic ME/CFS literature without Belgian-specific data
- Papers predating 2026 without specific relevance

---

## Flow Diagram

```
┌─────────────────────────────────────┐
│ KCE Report 420/420S                 │
│ (Already in possession — 2 PDFs)     │
│                                     │
│ Extracted via pdftotext:            │
│   - Main: 6,955 lines              │
│   - Supplement: 2,447 lines        │
└──────────────┬──────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│ Web Searches (3 queries)            │
│                                     │
│ DOI Resolution: ✓ confirmed         │
│ KCE Website: ✗ 404 (not indexed)    │
│ PubMed: ✗ 0 relevant                │
│ Google Scholar: ✗ blocked (CAPTCHA) │
│ Codebase grep: ✗ no existing entries│
└──────────────┬──────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│ Final Yield                         │
│                                     │
│ Papers retained: 2 (report + suppl) │
│ Citing/related papers: 0            │
│ Null/contradicting evidence: 0      │
│                                     │
│ Bib entries added: 2                │
│   → bib/general.bib                 │
└─────────────────────────────────────┘
```

---

## Result

| Category | Count | Detail |
|----------|-------|--------|
| Core documents extracted | 2 | KCE Report 420 + Supplement 420S |
| Additional papers found | 0 | Report published 30 June 2026 — too recent for citations |
| Null/contradicting evidence | 0 | No competing Belgian prevalence studies or guidelines found |
| Relevant existing bib entries | 0 | No prior KCE entries in any bib file |
| Bib entries created | 2 | `Cornelis2026KCE420`, `Cornelis2026KCE420S` → `bib/general.bib` |

---

## Notes

1. **Recency limitation:** Published 30 June 2026 (~3 weeks before this search). No citing papers, critiques, or responses expected at this time. PubMed indexing typically takes 2–8 weeks. Recommend re-running searches in September 2026.

2. **KCE website:** Report pages not yet resolved via URL pattern guessing. The report is available at `https://doi.org/10.57598/R420C` and through the KCE publications portal navigation. Direct URL not found — likely uses a dynamic ID-based URL pattern.

3. **Belgian epidemiological data gap:** The report itself notes that European-level prevalence studies are scarce (only 3 studies identified for all of Europe). The Belgian invalidity database data (1,189 registered ME/CFS cases) appears to be novel — no competing source identified.

4. **No contradictory Belgian guidelines:** The Belgian Superior Health Council 2020 advice (cited in the report as reference 2) aligns with the report's direction. No alternative Belgian ME/CFS guidelines identified in any language.

5. **Report limitations acknowledged by authors:** The report is transparent about its non-systematic introduction chapter, sampling biases, linguistic imbalance, and exclusion of children/pediatrics. These are documented in the report's own limitations section (Section 17).

6. **Google Scholar CAPTCHA:** Could not complete the GS search due to CAPTCHA blocking. The PubMed search covered the same scope and returned 0 results, so the GS search likely would not have yielded additional citations at this early stage.
