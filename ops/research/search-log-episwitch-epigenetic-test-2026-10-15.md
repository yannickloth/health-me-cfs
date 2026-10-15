# Search Log: EpiSwitch 3D-Genomic ME/CFS Diagnostic — UPDATE CYCLE

**Date:** 2026-10-15
**Compiled by:** literature-integrator (Phase 1, /integrate-topic UPDATE cycle)
**Research stream:** `episwitch-epigenetic-test`
**Seed paper (already integrated, NOT re-added):** Hunter et al. 2025, _J Transl Med_ 23:1048, PMID 41057909, DOI 10.1186/s12967-025-07203-w → bib key `Hunter2025`
**Prior search log (cycle 1):** `ops/research/search-log-episwitch-2026-08-15.md`
**Window:** evidence published **after 2026-08-15**, plus earlier critical/competing literature the prior cycle missed.

---

## Step 0 — Rival Framings (per-framing counts at top, MANDATORY)

| # | Framing | Claim | New papers found under this framing |
|---|---------|-------|-------------------------------------|
| F1 | Vendor/consensus | "EpiSwitch is a valid, ME/CFS-specific diagnostic (92% sens / 98% spec)" | **0** (Hunter 2025/2026 already integrated; cross-disease platform papers already covered cycle 1) |
| F2 | Null / replication-gap | "EpiSwitch ME/CFS is unreplicated; no independent cohort has confirmed it" | **0** (null re-confirmed — see Key Null Findings) |
| F3 | Competing mechanism | "Alternative blood epigenetic biomarkers (DNA methylation, HERV) independently capture ME/CFS biology" | **2** — Polli 2026 (DNA-methylation axes), Sharma 2026 (DNA-methylation framework) |
| F4 | Contradicting / vendor-artifact | "The EpiSwitch signature is a vendor artifact / general illness-severity marker, not ME/CFS-specific" | **2** — Tirelli 2026 (post-publication critique), Polli 2026 (PC6 shared symptom-burden axis) |

**Total NEW papers added this cycle: 3** (Tirelli2026WheatAndChaff, Polli2026MethylationAxes, Sharma2026MethylationUnifying).

---

## Objective

Find post-publication critique, replication, competing-mechanism, and null/contradicting evidence around the EpiSwitch 3D-genomic blood diagnostic for ME/CFS (Hunter 2025) published after 2026-08-15, plus any earlier critical/competing literature cycle 1 missed. Mandatory inclusion of null/negative and competing evidence.

## Inclusion Criteria

- Peer-reviewed papers (or Letters/Reviews) bearing on:
  1. EpiSwitch / chromosome-conformation-signature platform × ME/CFS, fatigue, post-viral (replication, critique, cross-disease use).
  2. Post-publication critique / contradiction of Hunter 2025.
  3. Competing blood epigenetic biomarkers in ME/CFS (DNA methylation EWAS, HERV) that overlap or contend with EpiSwitch claims.
  4. The rituximab therapeutic-comparator null result (to cross-check the critique).
  5. Null / negative / replication-gap findings.

## Exclusion Criteria

- Hunter 2025 (already in bib) and Hunter 2026 cross-condition (already in bib as `Hunter2026EpiSwitchCrossCondition`).
- Papers already in any split bib file (checked via grep before adding) — this excluded: Fluge 2019 rituximab Phase III (`Fluge2019RituximabPhase3` / `Fluge2019` / `Fluge2020rituximab`), Giménez-Orenga 2025 HERV segregation (`GimenezOrenga2025HERVsegregation`), Perera 2026 HERV review (`Perera2026HERVreview`), Nepotchatykh miRNA, Cheema miRNA, Peppercorn methylation, Helliwell RRBS, Przybylowicz re-analysis, Chalder 2026 PTPRN2.
- Purely basic chromatin-biology papers with no immune/IL-2/JAK-STAT/disease relevance (Arabidopsis FLC/VEL, CHROMOMETHYLASE3, bacterial chromosome segregation, rice genome, Cas12a, PARP2).
- Cross-disease EpiSwitch platform papers in non-fatiguing indications (CRC NST, prostate PSE, CiRT) — vendor-lineage only, already flagged cycle 1, no new ME/CFS relevance.

---

## Query Flow (BioMCP `biomcp search article` + `biomcp get article`; PubMed E-utilities efetch for author verification)

| # | Query (keyword/disease/date filters) | Hits | Screened | Included | Result |
|---|--------------------------------------|------|----------|----------|--------|
| 1 | `keyword=EpiSwitch` (all fields) | 25 | 25 | 0 new | Hunter 2025 (41057909), Hunter 2026 cross-condition (42693463), cross-disease platform papers (CRC NST 39941889, PSE 40647492, CiRT 40940997, prostate 40961313) — all already-integrated or vendor-lineage. No new ME/CFS EpiSwitch paper. |
| 2 | `keyword=chromosome conformation, chronic fatigue` | 17 | 17 | 1 | Tirelli 2026 critique (41491817) surfaced. Rest = chronic myeloid leukaemia noise. |
| 3 | `keyword=topologically associating domain, chronic fatigue` | 20 | 20 | 0 | Noise (MS heart-rate-variability, IBD microbiome, cryotherapy, cancer). No ME/CFS TAD study. **Null.** |
| 4 | `keyword=CTCF, chronic fatigue` | 15 | 15 | 0 | Noise (EBV IgG, FM/CFS methylation, cohesin/leukaemia). No ME/CFS CTCF/cohesin study. **Null.** |
| 5 | `keyword=enhancer-promoter, chronic fatigue` | 15 | 15 | 0 | Noise (cancer epigenetics, cardiovascular HDAC). No ME/CFS enhancer-promoter-loop study. **Null.** |
| 6 | `keyword=chromosome conformation signature` (broad) | 20 | 20 | 0 | OBD lineage only (29941342 2018 initial CCS, 36765779 circulating CCS, 36059613 monocyte-prostate CCS) + psoriatic arthritis. No independent ME/CFS 3D-genome work. |
| 7 | `keyword=EpiSwitch, replication` | 15 | 15 | 0 | DNA-replication/basic chromatin biology noise; only OBD Hunter 2026 cross-condition. No replication cohort. **Null.** |
| 8 | `author=Hunter, keyword=Wheat chaff EpiSwitch` | 0 | 0 | 0 | **No author response to the Tirelli critique located.** Null. |
| 9 | `keyword=interleukin-2, chronic fatigue syndrome` | 15 | 15 | 0 new | TRPM3/IL-2 (Cabanas/Marshall-Gradisnik 34831634, 34266470, 31796045) — already in corpus (TRPM3 stream). |
| 10 | `keyword=JAK-STAT, chronic fatigue` | 15 | 15 | 0 new | Hunter 2025 + JAK-inhibitor reviews (not ME/CFS-specific). Garnier 2026 (42699167, JAK/STAT chronic viral) screened but EXCLUDED — not ME/CFS-specific, no EpiSwitch relevance. |
| 11 | `keyword=HERV, chronic fatigue` | 15 | 15 | 0 new | Giménez-Orenga 2025 (40338225), Perera 2026 (42196290), Rodrigues 2019 (32257068) — already in corpus. |
| 12 | `keyword=chronic fatigue syndrome, biomarker` + `date_from=2026-08-15` | 25 | 25 | 0 | Post-cutoff biomarker sweep: no new EpiSwitch/chromosome-conformation paper; qualitative recovery-narrative paper (41762695) not epigenetic. |
| 13 | `keyword=myalgic encephalomyelitis, epigenetic` + `date_from=2026-08-15` | 6 | 6 | **2** | **Polli 2026 (42811334)** methylation axes + **Sharma 2026 (42786072)** methylation framework. (Also Hunter 2026 cross-condition 42693463 = already integrated.) |
| 14 | `get article 30934066` (Fluge 2019 rituximab Phase III) | 1 | 1 | 0 new | Confirmed already in bib (`Fluge2019RituximabPhase3`). Used to cross-check Tirelli objection (5). |
| 15 | `get article 39941889` (CRC EpiSwitch NST, Feb 2025) | 1 | 1 | 0 | Vendor-lineage cross-disease platform paper (Hunter E et al., CRC). No ME/CFS relevance; supports F4 "oncology-validated ≠ ME/CFS-validated" category-error point. |

## Key Null Findings

- **No independent replication cohort** for the EpiSwitch ME/CFS diagnostic exists in PubMed/Europe PMC as of 2026-10-15. Queries 1, 2, 6, 7 return only Oxford BioDynamics (OBD) vendor-lineage papers; the only EpiSwitch×ME/CFS items are Hunter 2025 (original) and Hunter 2026 (cross-condition, same vendor). Query 7 (`EpiSwitch, replication`) returned **zero** replication studies.
- **No Hi-C / TAD / CTCF / cohesin / enhancer-promoter study in ME/CFS** exists (queries 3, 4, 5 all returned zero ME/CFS-relevant hits). The 3D-genomic field has still not independently profiled ME/CFS chromatin topology outside the commercial EpiSwitch pipeline.
- **No published negative replication** of the EpiSwitch ME/CFS test — the test is unreplicated, not refuted. The post-publication critique (Tirelli 2026) is methodological, not an independent empirical refutation.
- **No author response** from Hunter/OBD to the Tirelli critique (query 8 = 0).

## Cohort-Overlap / Same-Cohort-Slicing Flags

- **Polli 2026 (n=188 women) is from the Brussels "Pain in Motion" group** — same authors (Polli, Hendrix, Wyns, Van Campenhout, Nijs, Ben Amar) as the OPRM1 methylation work (Wyns 2026) flagged in cycle 1. Potential cohort overlap between Polli 2026 (71 ME/CFS, 44 FM) and Wyns 2026 OPRM1 (n=28 Belgium) is **not ruled out**; both recruit from the same Brussels clinic network. Flagged.
- **Tirelli 2026 author group overlaps with OOT literature**: Franzini/Chirumbolo/Tirelli are the same authors as the oxygen-ozone autohemotherapy papers the letter advocates (refs 5–7). Self-citation / advocacy COI, not cohort overlap.
- **No cohort overlap** between Polli 2026 (Belgium) and Hunter 2025 (UK, 47 severe + 61 controls) — independent cohorts, different technology (methylation array vs chromosome conformation).
- **Otago lineage**: Sharma 2026 (Tate) shares the lab of Helliwell 2020 and Peppercorn 2025 — same group, review-tier, no new cohort.

---

## Coverage Declaration

| Database / source | Opened? | Notes |
|-------------------|---------|-------|
| PubMed (via BioMCP `source=pubmed` + E-utilities efetch) | ✅ Yes | Primary registry for verification; abstracts + author lists confirmed |
| Europe PMC (via BioMCP `source=europepmc`) | ✅ Yes | Secondary agreement-mapper; metadata + OA confirmation |
| PubTator3 (via BioMCP enrichment) | ✅ Yes | Author normalization / entity annotation |
| PMC full text (Tirelli 2026, PMC12772095) | ✅ Yes | Full letter text fetched; 10 objections + counter-COI extracted |
| Semantic Scholar (via BioMCP `source=semanticscholar`) | ⚠️ Partial | Frequently "unavailable/degraded" during this session; citation counts noted where returned |
| Crossref API | ❌ Not opened | DOI/metadata already verified via PubMed/Europe PMC for all 3 new papers; no ambiguous DOIs required Crossref |
| bioRxiv / medRxiv (preprint servers) | ❌ Not opened | No preprint-specific signal in scope; both new empirical items are peer-reviewed (J Transl Med / Trends Genet); preprints deliberately de-prioritised per peer-reviewed-preferred constraint |
| clinicaltrials.gov | ❌ Not opened | Non-treatment topic; no trial-registry search required |
| scite / Consensus (LLM agreement-mappers) | ❌ Not opened | Not needed — null/replication-gap established directly from registry metadata (PubMed/Europe PMC) |

## Scrape Registry

- Tirelli 2026 (PMC12772095) already in `registry/scrape-registry.md` (pre-added by parent session).
- **NEW rows added this cycle**: Polli 2026 (PubMed 42811334) and Sharma 2026 (PubMed 42786072). See registry EpiSwitch UPDATE block.
