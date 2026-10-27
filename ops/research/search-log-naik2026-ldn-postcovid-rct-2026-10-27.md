# Search Log — Naik 2026 LDN Post-COVID Fatigue RCT (naik2026-ldn-postcovid-rct)

**Date:** 2026-10-27
**Driving paper:** Naik H, Boulter T, Cooke E, et al. "Low Dose Naltrexone for Post-COVID Fatigue Syndrome: A Randomized Controlled Trial." medRxiv 2026.10.22.26363582 (DOI 10.64898/2026.10.22.26363582). Trial NCT05430152.
**Driving source URL:** https://www.medrxiv.org/content/10.64898/2026.10.22.26363582v1.supplementary-material

---

## Rival Framings — Per-Framing Paper Counts (MANDATORY)

Framings were generated BEFORE searching. Each was searched independently. Counts are PubMed E-utilities `esearch` hit counts (raw, before dedup/screen).

| # | Framing | Search terms (title/abstract) | PubMed count |
|---|---------|-------------------------------|--------------|
| **F1 — Supportive** | LDN is effective for post-viral fatigue / Long COVID / ME/CFS | `low dose naltrexone AND long COVID`; `low dose naltrexone AND post-COVID`; `low dose naltrexone AND fatigue`; `naltrexone AND chronic fatigue syndrome`; `low dose naltrexone AND myalgic encephalomyelitis` | 15 / 8 / 45 / 13 / 6 |
| **F2 — Null/negative (CONTRADICTS consensus)** | LDN is no better than placebo for post-viral fatigue | `low dose naltrexone AND fibromyalgia AND randomized`; `naltrexone AND fatigue AND no significant`; `low dose naltrexone AND meta-analysis`; `low dose naltrexone AND systematic review`; `low dose naltrexone AND placebo` | 26 / 8 / 9 / 19 / 61 |
| **F3 — Responder-subtype** | LDN helps only a responder subtype (TRPM3-impaired, high baseline inflammation) | `naltrexone AND responder AND fibromyalgia`; `naltrexone AND TRPM3`; `low dose naltrexone AND erythrocyte sedimentation` | 2 / 6 / 2 |
| **F4 — Mechanistic/indirect** | LDN mechanism (TLR4 antagonism, microglial/opioid modulation) is plausible but clinical efficacy in post-viral fatigue is unproven | `naltrexone AND TLR4`; `naltrexone AND microglia`; `toll-like receptor 4 AND myalgic encephalomyelitis`; `microglia AND chronic fatigue`; `opioid receptor AND naltrexone AND fatigue` | 51 / 28 / 3 / 54 / 10 |

**Harm/adverse-effects search (mandatory):** `low dose naltrexone AND adverse effects` (27); `low dose naltrexone AND safety` (50). Key harm anchor already in corpus: `@Bolton2019NaltrexoneSAE` (PMID 30642329, serious adverse events in placebo RCTs of oral naltrexone).

---

## Inclusion Criteria
- Peer-reviewed OR recent/relevant preprint.
- Directly about LDN in ME/CFS, Long COVID / post-COVID fatigue, fibromyalgia, or post-viral fatigue.
- OR a null/negative result bearing on the F2 framing.
- OR a mechanistic (TLR4 / microglia / opioid) paper intersecting ME/CFS/fatigue pathophysiology.
- OR a safety/adverse-effects paper.
- Published 2020–2026 (older only if foundational and not already in corpus).

## Exclusion Criteria
- Already present in the corpus bib files (dedup by PMID/title — reused, not re-added).
- Wrong drug (naltrexone at full 50 mg dose for AUD/opioid-use-disorder, not LDN).
- Non-human or in-vitro-only without a fatigue/post-viral link (unless foundational mechanism).
- Duplicate of an existing corpus entry (e.g. Byambasuren 2026 LDN long-COVID meta, DueBruun 2024/2025, Nielsen 2026, Rodriguez-Freire 2026, Polo 2019, Younger 2013, Cabanas TRPM3 series, Bolton 2019 SAE, Gouda 2026).

## Flow

| Stage | Count |
|-------|-------|
| PubMed hits across 25 queries (dedup within framing) | 400+ |
| Unique candidates screened (title/abstract) | ~40 |
| Full-text assessed | 8 |
| **Included (new bib entries)** | **5** |
| Reused from existing corpus (not re-added) | 11 (Byambasuren2026LDNlongcovid, Gouda2026LDNevidence, DueBruun2024LDNFibromyalgia, DueBruun2025LDNCPM, DueBruun2026LDNFMReanalysis, Nielsen2026LDNFMResponder, RodriguezFreire2026LDNFMINNOVA, Ologunowa2025LDNFMMeta, Yang2023LDNSystematicReview, Polo2019, Younger2013, Cabanas2019trpm3ldnFront, Bolton2019NaltrexoneSAE) |
| Deferred to a dedicated plan | 1 (Pucci 2026 "expanding potential of LDN" review — belongs to `ldn-expanding-2026` plan) |
| Rejected (metadata unreliable / tangential) | 1 (van de Pol 2026 Crohn's terminated RCT — PMID→PMC mapping inconsistent in this environment; dropped) |

## Search Terms by Database

### PubMed (E-utilities esearch/esummary/efetch) — 25 queries
Framing F1 (supportive): 5 queries (listed above). F2 (null): 5. F3 (responder): 3. F4 (mechanistic): 5. Harm: 2. Plus 5 metadata-verification queries (PMID efetch for 38740499, 38267326, 35814187, 38352659, 42701992).

### medRxiv (direct fetch)
Driving paper abstract + full PDF + 4 supplementary .docx (Supplement 1 eligibility tables, Supplement 2 figure legends/response rates, Supplement 3 Statistical Analysis Plan, Supplement 4 adherence/per-protocol notes).

### Google Scholar / web (via search)
Used to locate the trial registration (NCT05430152) and confirm the driving paper's existence, protocol (BMJ Open e085272), and the LDN-Research-Trust / ME-Association secondary coverage.

### Europe PMC (full text)
Full-text XML retrieved for OA papers (PMC11097836, PMC9250701, PMC10862402). Publisher PDFs not downloadable via automation (bot challenge + browser download dialog); full text archived as XML/text.

---

## Coverage Declaration (databases opened vs not opened)

| Database | Opened? | Notes |
|----------|---------|-------|
| PubMed / E-utilities | ✅ opened | 25 queries, counts + metadata above |
| medRxiv | ✅ opened | driving paper full text + 4 supplements |
| Europe PMC | ✅ opened | full-text XML for 3 OA papers |
| PMC (pmc.ncbi.nlm.nih.gov) | ✅ opened | POW challenge blocked automated PDF; HTML accessible |
| Crossref | ⚠️ not queried this cycle | driving DOI resolved directly via medRxiv (unusual 10.64898 prefix, served verbatim by source) |
| Google Scholar (full API) | ⚠️ not opened | no API; approximated via web search |
| Cochrane Library | ❌ not opened | LDN post-viral-fatigue not a Cochrane-covered question; meta-analyses covered via PubMed |
| clinicaltrials.gov | ⚠️ not opened | trial NCT05430152 verified via medRxiv + web search |
| SciFinder / Embase | ❌ not opened | not required for this scope |
| Web of Science / Scopus | ❌ not opened | PubMed + Europe PMC sufficient for coverage |

---

## Included Papers (5 new bib entries)

| # | Bib key | PMID | DOI | Population | Certainty |
|---|---------|------|-----|------------|-----------|
| 1 | Naik2026LDNPostCOVIDRCT | — (preprint) | 10.64898/2026.10.22.26363582 | Long COVID / post-COVID fatigue (0.85) | 0.65 |
| 2 | Naik2024LDNprotocol | 38740499 | 10.1136/bmjopen-2024-085272 | Long COVID / post-COVID fatigue (0.85) | 0.65 |
| 3 | Tamariz2024LDNpostcovid | 38267326 | 10.1016/j.clinthera.2023.12.009 | post-COVID-19 condition (0.85) | 0.45 |
| 4 | OKelly2022LDNlongcovid | 35814187 | 10.1016/j.bbih.2022.100485 | Long COVID (0.85) | 0.35 |
| 5 | Isman2024LDNNAD | 38352659 | 10.1016/j.bbih.2024.100733 | post-COVID fatigue (0.85) | 0.30 |

## PDF / Full-Text Availability (per paper)

| Bib key | PDF status | Reason if unavailable |
|---------|-----------|-----------------------|
| Naik2026LDNPostCOVIDRCT | ✅ PDF (30 pages, medRxiv) | — |
| Naik2024LDNprotocol | ⚠️ full text (Europe PMC XML) | publisher PDF (BMJ) blocked by Cloudflare bot challenge; browser download dialog unhandled |
| Tamariz2024LDNpostcovid | ❌ abstract only | Elsevier _Clinical Therapeutics_ paywalled (isOpenAccess=N, no PMC), no OA full text |
| OKelly2022LDNlongcovid | ⚠️ full text (Europe PMC XML) | PMC PDF behind proof-of-work interstitial; full text retrieved via Europe PMC |
| Isman2024LDNNAD | ⚠️ full text (Europe PMC XML) | PMC PDF behind proof-of-work interstitial; full text retrieved via Europe PMC |

Full text for the 3 OA papers is archived as `*_fulltext.txt` in the Literature folder (converted from Europe PMC fullTextXML); abstracts are in `abstract.txt`.
