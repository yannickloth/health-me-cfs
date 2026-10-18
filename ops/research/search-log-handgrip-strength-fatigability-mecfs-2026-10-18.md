# Search Log — Handgrip Strength (HGS) Dynamometry as an Objective Muscle-Fatigability / Functional-Impairment Measure in ME/CFS

- **Topic slug:** `handgrip-strength-fatigability-mecfs`
- **Pipeline phase:** Phase 1 (Literature Research) of `/integrate-topic`
- **Date:** 2026-10-18
- **Operator:** literature-integrator subagent
- **Tooling:** BioMCP (`search article` / `get article` via PubMed + Europe PMC + PubTator3), Europe PMC REST, PubMed E-utilities, web search

---

## Step 0 — Rival framings (generated BEFORE searching)

| # | Framing | Claim | Papers tagged (key) | Count |
|---|---------|-------|---------------------|-------|
| A | **Consensus / dominant** | HGS dynamometry is a valid, objective, low-burden measure of muscle fatigability + functional impairment; lower Fmean, higher fatigue ratio, impaired recovery are ME/CFS-specific and track severity | Mihatsch2026HandgripCYP, Wallraven2026HandgripPCS, Jakel2021HGS (+ corpus reuse: Paffrath2024HandGrip, Kedor2022PostCOVIDfatigue, Miller2015NIRS) | 3 new |
| B | **Deconditioning / disuse / dynapenia** | HGS deficit reflects low muscle mass/sarcopenia/dynapenia, NOT ME/CFS-specific pathology | RamirezVelez2023ALMI, FernandezPola2026architecture, DazaArana2026ML | 3 |
| C | **Effort-dependence / central motor control** | HGS is volitional/effort-dependent and unreliable where effort intolerance IS the disease; low values = submaximal effort / central activation failure, not peripheral muscle failure | Popkirov2025CV, KentBraun1993central, Steinkirchner2026comment | 3 |
| D | **Null / non-discriminative** | HGS does NOT discriminate ME/CFS from other fatiguing conditions (noME/CFS) or deconditioned controls — fails as a diagnostic biomarker | Mihatsch2026HandgripCYP (honest conclusion), Wallraven2026HandgripPCS (AUC 0.61–0.63), DazaArana2026ML (grip ranked 5th) | 3 |
| E | **Harm / provocation** | Repeated maximal grip testing (two sessions 60-min apart) may itself provoke PEM / harm patients | No dedicated paper found — **GAP**. Counter-evidence in Mihatsch2026 (96.6–99.3% completion, "low exercise burden"). | 0 |

**Note:** Framing A is the framing advanced by the driving papers (Mihatsch, Wallraven) and the foundational Jäkel 2021. Framing C is the strongest *contradicting* framing. Framing D is the honest null conclusion that Mihatsch and Wallraven themselves reach for *diagnostic* use (distinguishing it from *severity-tracking* use). Framing E is a documented gap.

---

## Inclusion / exclusion criteria

**Included:**
- Primary HGS/grip-strength dynamometry data in ME/CFS, PCS/Long COVID (≥ partial ME/CFS subset), or fibromyalgia
- Directly bears on the construct validity of HGS (peripheral fatigability vs central/effort vs muscle mass)
- Two-session / fatigability / recovery-ratio methodology, or normative reference relevant to the Jäkel protocol
- Methodological exchange on HGS interpretation (letter/comment on-topic)
- Peer-reviewed; resolvable PMID or DOI; 1993–2026

**Excluded:**
- Already in corpus (deduped): `Paffrath2024HandGrip`, `Kedor2022PostCOVIDfatigue`, `Miller2015NIRS`, pyridostigmine HGS trial (mast-cell.bib), muscle-sodium HGS correlation (exercise-pem.bib), creatine HGS trials (energy-metabolism.bib), immunoadsorption HGS (autoimmunity.bib)
- Pure geriatric/fall-risk or non-fatiguing-condition HGS studies (e.g. Kapan 2025 older-adult fall risk; Hoekstra 2023 geriatric CPV) — tangential, no ME/CFS
- Generic normative-value papers with no disease application (grip-strength reference tables for athletes/children) — retained only if directly cited by the driving protocol
- Non-peer-reviewed/preprint without registry metadata
- Retracted (auto-excluded via `--exclude-retracted`)

---

## Queries table

Database = BioMCP `search article` (PubMed + Europe PMC + PubTator3) unless noted.

| Database | Query | Hits | Screened | Included | Date |
|----------|-------|------|----------|----------|------|
| BioMCP | "handgrip strength myalgic encephalomyelitis chronic fatigue syndrome" | 20 | 8 | 2 (Jäkel, Popkirov) | 2026-10-18 |
| BioMCP | "hand grip strength chronic fatigue syndrome" | ~15 | 4 | 0 (dupes) | 2026-10-18 |
| BioMCP | "grip strength myalgic encephalomyelitis" | ~12 | 3 | 0 (dupes) | 2026-10-18 |
| BioMCP | "handgrip dynamometry post-COVID fatigue" | ~12 | 4 | 0 (dupes) | 2026-10-18 |
| BioMCP | "muscle fatigability myalgic encephalomyelitis" | ~10 | 3 | 1 (Popkirov dup) | 2026-10-18 |
| BioMCP | "dynapenia sarcopenia chronic fatigue syndrome" | ~10 | 3 | 0 | 2026-10-18 |
| BioMCP | "grip strength fibromyalgia fatigability" | 9 | 2 | 1 (Fernández-Pola) | 2026-10-18 |
| BioMCP | "grip strength post-COVID long COVID" | 12 | 5 | 3 (Ramírez-Vélez, Daza-Arana, Silva) | 2026-10-18 |
| BioMCP | "muscle fatigability maximal voluntary contraction chronic fatigue syndrome" | 10 | 4 | 2 (Kent-Braun, Tankisi) | 2026-10-18 |
| BioMCP | "repeated grip testing recovery ratio fatigability" | 12 | 4 | 0 (Kapan excluded; dupes) | 2026-10-18 |
| BioMCP | "handgrip strength no difference failed to discriminate chronic fatigue" | 12 | 3 | 0 | 2026-10-18 |
| BioMCP | "post-exertional malaise handgrip testing trigger" | 12 | 2 | 0 (harm axis = GAP) | 2026-10-18 |
| BioMCP | "grip strength normative reference values children adolescents" | 12 | 2 | 0 (generic normative) | 2026-10-18 |
| BioMCP | "Jäkel handgrip fatigability recovery ratio ME/CFS" | 5 | 3 | 1 (Jäkel confirm) | 2026-10-18 |
| Europe PMC REST | PMID/PMCID lookups (Jäkel, Kent-Braun, Tankisi, Ramírez-Vélez, Daza-Arana, Fernández-Pola) | — | — | metadata confirm | 2026-10-18 |
| Web search | "Jäkel 2021 hand grip strength CCC"; "Kent-Braun 1993 central basis muscle fatigue" | — | — | criteria/n confirm | 2026-10-18 |

---

## Flow counts

- Queries run: **14** BioMCP + **6** EPMC lookups + **2** web searches
- Unique papers surfaced (post-dedup): **~40**
- Screened (title/abstract): **~35**
- **Included: 10** (2 driving + 8 new)
- Excluded: **~25** (corpus dupes, geriatric/normative off-topic, non-ME/CFS tangents)
- PDFs filed: **6 of 8 new** (Ramírez-Vélez = HTML-only; Kent-Braun = paywalled abstract-only)

---

## Coverage declaration

| Paper (key) | Opened? | How / reason |
|-------------|---------|--------------|
| Mihatsch2026HandgripCYP | ✅ full text | `pdftotext -layout`, all sections + Table 1/2 |
| Wallraven2026HandgripPCS | ✅ full text | `pdftotext -layout`, all sections + Tables 1–3 |
| Jakel2021HGS | ✅ full text (results + Table 3) | PDF (Europe PMC) |
| Popkirov2025CV | ✅ full text | PDF (Europe PMC), abstract + methods + Table 1 |
| Steinkirchner2026comment | ✅ full text | PDF (Europe PMC), letter body |
| KentBraun1993central | ⚠️ abstract only | Neurology 1993 paywalled, no OA PDF; PubMed + Europe PMC abstract |
| RamirezVelez2023ALMI | ⚠️ abstract only | HTML full text free (Europe PMC) but **no PDF file**; full abstract read |
| Tankisi2023neurophysiology | ⚠️ abstract only | PDF downloaded (12 pp) but not line-read; abstract sufficient (review) |
| DazaArana2026ML | ✅ full text (abstract + results) | PDF (Europe PMC) |
| FernandezPola2026architecture | ✅ full text (methods + results) | PDF (Europe PMC) |

**Not opened (searched but excluded):** Kapan 2025 (older-adult fall risk, same protocol — off-topic), Hoekstra 2023 (geriatric CPV), Silva 2026 (post-COVID dissociation; paywalled, off-topic peripheral-vs-exercise), Billones 2021 (generic fatigue scoping review), 39647778 international HGS norms (generic), 40445551 youth HGS normalization (generic), 39847575 post-COVID persistent symptoms (broad, no HGS focus), plus ~17 more title-level off-topic.
