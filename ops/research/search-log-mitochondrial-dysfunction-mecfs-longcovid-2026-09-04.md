# Search Log — Mitochondrial Dysfunction in ME/CFS and Long COVID

**Date:** 2026-09-04
**Mode:** gap-fill / reinforcement over already-extensive existing coverage (ch34 sec-02 six mitochondrial cascade subsections already integrated; ch07 energy-metabolism; ch50 models).
**Databases:** NCBI PubMed E-utilities API (esearch/esummary/efetch). No PubMed Central OA scrape session (used publisher/EUPMC direct PDF links instead).
**Scope note:** Existing bib `src/main/typst/mecfs/bib/energy-metabolism.bib` (194 `research_stream` tags across all bibs; 2994 unique corpus DOIs) already integrates the WASF3/supercomplex, PDH/PDK, AIM–ischemic (mito Ca²⁺/mPTP), NAD⁺/metabolic-trap, IDO–kynurenine, and iron-redox cascades. This cycle targets genuinely NEW 2025–2026 findings beyond that coverage and mandates null/negative + competing searches.

---

## Queries run (by axis)

| # | Axis | PubMed query | Result set | Screen outcome |
|---|------|--------------|-----------|----------------|
| 1 | Direct: ME/CFS × mitochondria 2025–2026 | `(myalgic encephalomyelitis OR chronic fatigue syndrome OR "ME/CFS") AND (mitochondri*) AND ("2025"[dp] OR "2026"[dp])` | 112 | Screened top ~60 by title; selected mechanistic/primary + mandatory null |
| 2 | Direct: Long COVID × mitochondria/bioenergetic 2025–2026 | `(long COVID OR post-acute sequelae OR PASC OR "post-COVID-19 condition") AND (mitochondri* OR bioenergetic OR oxidative phosphorylation OR "metabolic dysfunction") AND ("2025"[dp] OR "2026"[dp])` | 256 | Screened top ~60 titles; selected OXPHOS/energy/brain-energy primaries |
| 3 | NULL/NEGATIVE | `(mitochondrial OR bioenergetic) AND (myalgic encephalomyelitis OR chronic fatigue OR long COVID) AND (negative OR "no difference" OR null OR failed OR indistinguishable OR replication)` | 197 | Identified Ryback 2026 preregistered failed replication of Fluge 2016 myoblast serum model (included) |
| 4 | COMPETING: deconditioning vs substrate-delivery/ischemic | `(mitochondrial OR bioenergetic) AND (myalgic encephalomyelitis OR chronic fatigue OR long COVID) AND (deconditioning OR "disuse atrophy" OR substrate delivery OR ischemia OR microvascular)` | 58 | Bed-rest comparison (Charlton 2026 Nat Commun) ALREADY in corpus → not re-added; Germain 2025 controls sedentary deconditioning (included) |
| 5 | INDIRECT: NAD⁺/sirtuin/PARP/CD38 | `(long COVID OR myalgic encephalomyelitis OR "chronic fatigue" OR post-exertional malaise) AND (NAD+ OR NAD OR nicotinamide OR sirtuin OR PARP OR CD38) AND ("2025"[dp] OR "2026"[dp])` | 30 | Reviewed; no new primary of cascade value beyond existing NAD⁺ corpus → none added |
| 6 | INDIRECT: PDH/PDK/lactate | `(long COVID OR myalgic encephalomyelitis OR "chronic fatigue" OR post-exertional malaise) AND (pyruvate dehydrogenase OR PDH OR PDK OR lactate OR acyl-carnitine) AND ("2025"[dp] OR "2026"[dp])` | 59 | Reviewed; PDH axis already deeply anchored (Fluge/Mella, pdc-postviral) → none added |
| 7 | INDIRECT: mitophagy/mitochondrial dynamics | `(long COVID OR myalgic encephalomyelitis OR "chronic fatigue") AND (mitophagy OR "mitochondrial dynamics" OR DRP1 OR fission OR fusion OR PINK1 OR Parkin) AND ("2025"[dp] OR "2026"[dp])` | 101 | Identified Groysman 2026 fragile-mitophagy PEM endotype hypothesis (included); DRP1/HHV-6 line already in corpus |
| 8 | INDIRECT: iron/aconitase/Fe–S/ferroptosis | `(long COVID OR myalgic encephalomyelitis OR "chronic fatigue") AND (iron OR ferritin OR aconitase OR "Fe-S" OR ferroptosis OR hepcidin) AND ("2025"[dp] OR "2026"[dp])` | 93 | Reviewed; iron-redox already in corpus (iron-redox-polarity stream) → none added |
| 9 | INDIRECT: ROS/redox/glutathione | `(long COVID OR myalgic encephalomyelitis OR "chronic fatigue" OR post-exertional malaise) AND (oxidative stress OR ROS OR redox OR glutathione) AND ("2025"[dp] OR "2026"[dp])` | 235 | Reviewed; no new primary of cascade value → none added |

Supplementary esearch/esummary/efetch batches for metadata and dedup on PMIDs: 42253978, 41632778, 41525818, 41237904, 41752134, 42177403, 42484498, 42656694, 42053855, 41226047, 42450188, 41705124, 42051540, 41975732, 42174604, 42454043, 42649155, 42664469, 42656834, 42346057, 42342534.

---

## Reproducible flow

```
PubMed esearch (retmode=json) → PMID lists → screen titles vs existing corpus claims
   ↓
efetch/esummary → abstracts + full metadata (PMID/DOI/authors/journal/vol/pages)
   ↓
Dedup vs corpus (grep 2994 DOIs from all src/main/typst/mecfs/bib/*.bib) → confirmed all 7 selected are NEW (DOI absent)
   ↓
Verify suspected ALREADY-INTEGRATED anchors (bed-rest Charlton 2026 Nat Commun PMID 42649155; Liu 2026 BBI-Health PMID 41704659) → present in corpus → NOT re-added
   ↓
PDF download (6 OA full texts to Literature/pathophysiology/energy-metabolism/; Biol Psychiatry paywalled → abstract only)
```

---

## Inclusion / exclusion criteria

**Included (7):** 2025–2026 primary data or targeted reviews that (a) are absent from the corpus DOI list, and (b) reinforce, contradict, or materially extend a specific ch34 sec-02 cascade claim or the bioenergetic energy-crisis claim. Mandatory null (Ryback) and competing/deconditioning-controlled (Germain) evidence included.

**Excluded / screened-out (representative):**
- Already-integrated anchors (not re-added): Charlton 2026 Nat Commun bed-rest muscle comparison (PMID 42649155 = corpus `Charlton2026MuscleBedrest`/`Charlton2025muscleMicrovasc`); Liu 2026 BBI-Health IgG-energetics (PMID 41704659 = corpus pathophysiology-general, doi 10.1016/j.bbih.2026.101187).
- Same-lab near-duplicates not separately added: TRPM3-NK Long-COVID companion (PMID 42484498, Eur J Immunol 2026, same Griffith/Marshall-Gradisnik lab) — 42177403 (ME/CFS) retained as representative.
- Low-tier or off-topic (liver fibrosis, oncology, sepsis reviews, MASH, β-cell etc.) — excluded.
- PDH/NAD⁺/iron/redox axes surfaced no new primary of cascade value (already deeply anchored) — none added.
- Metabolomic-classification papers (PMID 42450188, 41226047) overlap existing metabolomic-classification coverage (Xiong2025) — excluded.
- Mito-related GWAS-MR (PMID 42053855) and multi-tissue supportive entries weighed but dropped to limit dilution of a high-certainty set.

---

## Scraped web sources

- PubMed E-utilities API (esearch/esummary/efetch) — read-only bibliographic queries.
- Publisher/EUPMC direct PDF links: frontiersin.org (×2), journals.plos.org, mdpi-res.com, europepmc.org (×2). No landing pages parsed beyond PDF retrieval.
- No content scraped that is already registry-tracked; no new hypothesis-level web content ingested. Registry note appended (see `registry/scrape-registry.md`).

---

## Search terms by database

Single database (PubMed). Combined term structure above. All 2025–2026 date-limited; supplementary non-date-limited only for anchor verification (bed-rest, IgG-energetics).
