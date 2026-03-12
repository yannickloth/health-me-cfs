# Research Integration Plan
**Created:** 2026-03-12
**Status:** PHASE 2 COMPLETE — chapter integration done 2026-03-12

---

## Goal

For each source below:
1. Fetch and assess relevance to ME/CFS pathophysiology, treatment, or related conditions
2. If relevant: add BibTeX entry, create annotated bibliography entry (Appendix H), create integration guide in `.claude/content-staging/`
3. Run `chapter-integrator` to edit target chapter files
4. Run `scientific-insight-generator` for creative brainstorm (novel connections, treatment/research implications)
5. Build verify with `test-runner` every ~5 integrations
6. Update this plan file as items are completed

---

## Pipeline

```
literature-integrator  →  chapter-integrator  →  test-runner
       ↓
scientific-insight-generator  (creative brainstorm per paper or batch)
```

**Agents used:**
- `literature-integrator` — fetch, assess, BibTeX, Appendix H, integration guide
- `chapter-integrator` — edit `.tex` chapter files using integration guide
- `scientific-insight-generator` — novel connections, treatment/research implications
- `test-runner` — `nix build` verification after batches
- `hypothesis-registry-updater` — if new `hypothesis`/`speculation`/`open_question` environments are added
- `meta-analysis-coordinator` — if multiple papers converge on the same mechanism (e.g., NETs, coagulation)

---

## Sources

### A — Direct URLs (individual papers)

| # | URL | Topic (guessed) | Status | BibKey | Chapter |
|---|-----|----------------|--------|--------|---------|
| A1 | https://pmc.ncbi.nlm.nih.gov/articles/PMC9065667/ | NETs / NETosis | ✅ already in bib | `Romano2022` | ch07 |
| A2 | https://www.jthjournal.org/article/S1538-7836(23)00274-X/fulltext | NETosis in COVID-19 severity and Long COVID | ✅ added | `Krinsky2023` | ch07 |
| A3 | https://link.springer.com/article/10.1007/s10654-025-01334-6 | COVID vaccination & short-term mortality Netherlands | ❌ not relevant | — | — |
| A4 | https://www.nature.com/articles/s41598-026-40142-0 | TBD | ⚠️ URL did not resolve | — | — |
| A5 | https://medicalxpress.com/news/2026-03-hidden-blood-mutations-severe-inflammatory.html | CHIP somatic mutations / IBD | ❌ not relevant | — | — |
| A6 | https://polybio.org/projects/5272/ | PolyBio neuroinflammation PET-MRI project | ✅ added | `VanElzakker2024NeuroinflammationProject` | ch08 |
| A7 | https://pubmed.ncbi.nlm.nih.gov/36137590/ | Anti-nuclear autoantibodies predict Long COVID | ✅ added | `Son2023` | ch07 |
| A8 | https://pubmed.ncbi.nlm.nih.gov/27698656/ | NETs Go Viral (foundational review) | ✅ added | `Schonrich2016` | ch07 |
| A9 | https://pmc.ncbi.nlm.nih.gov/articles/PMC11834749/ | Organ damage from COVID and Long COVID | ✅ already in bib | `Ewing2024` | ch07/ch10 |
| A10 | https://pubmed.ncbi.nlm.nih.gov/40071133/ | NETosis in autoimmunity/COVID/Long COVID | ✅ added | `Monsalve2025` | ch07 |
| A11 | https://www.hss.edu/health-library/conditions-and-treatments/lupus-how-it-affects-multiple-organs | Lupus overview (non-academic patient page) | ❌ not relevant | — | — |
| A12 | https://onlinecjc.ca/action/showPdf?pii=S0828-282X%2824%2900281-2 | Cardiovascular / Long COVID autonomic (CJC 2024) | ⚠️ 403 access denied — likely relevant; retry with institutional access | — | ch10 |
| A13 | https://link.springer.com/article/10.1186/s12931-023-02336-2 | Targeting NETs reduces organ injury — COVID mouse model | ✅ added | `Veras2023` | ch07 |
| A14 | https://pmc.ncbi.nlm.nih.gov/articles/PMC10919029/ | NET formation/DNase imbalance in COVID-19 | ✅ already in bib | `GarciaLabroucheColomer2024` | ch07 |
| A15 | [scienceopen.com/…/28cd6ccd….pdf](https://www.scienceopen.com/document_file/28cd6ccd-89f8-42cf-a1ce-f41c9b487314/PubMedCentral/28cd6ccd-89f8-42cf-a1ce-f41c9b487314.pdf) | TBD (PDF) | ⚠️ inaccessible (404) | — | — |
| A16 | https://pubmed.ncbi.nlm.nih.gov/36016155/ | NETs and calprotectin after ChAdOx1 vaccination | ✅ added | `Hetland2022` | ch07 |
| A17 | https://volition.com/nu-q-nets/ | NU-Q NETs assay (commercial product) | ❌ not relevant | — | — |
| A18 | https://pmc.ncbi.nlm.nih.gov/articles/PMC6363424/ | Midkine drives cardiac NETosis in myocarditis | ✅ added | `Weckbach2019` | ch10 |
| A19 | https://medicalxpress.com/news/2026-03-cellular-linked-depression-fatigue.html | ATP bioenergetics and fatigue (depression) | ✅ added | `Cullen2026ATP` | ch06 |
| A20 | https://medicalxpress.com/news/2026-03-flu-virus-hamper-immune-response.html | B cell imprinting by flu in children | ❌ not relevant | — | — |
| A21 | https://www.preprints.org/manuscript/202602.1993 | Preprint TBD | ⚠️ could not load preprints.org content | — | — |

### B — Hub sites (follow all linked papers)

| # | URL | Action | Status |
|---|-----|--------|--------|
| B1 | <https://polybio.org/publications/> | Fetch page → follow each paper link → integrate relevant ones | ✅ page reviewed; 3 new papers added (`Gao2025LongCovidBiomarkers`, `GuedesDeSa2024`, `Peluso2024ViralPersistence`); 5 more identified for future processing (see integration guide) |
| B2 | <https://santersus.com/> | Fetch → assess technology relevance to ME/CFS | ❌ not relevant — commercial NucleoCapture apheresis device; no ME/CFS clinical programme |
| B3 | <https://santersus.com/our-technology/> | Fetch → assess tech; check for publications | ❌ not relevant — same company; no ME/CFS-specific work |
| B4 | <https://www.preprints.org/> | Search "ME/CFS" or "myalgic encephalomyelitis" → integrate relevant preprints | ⚠️ could not load site content; A21 (preprints.org/202602.1993) also inaccessible — retry separately |

### C — LinkedIn article (inline text already in original file)

| # | Title | Assessment | Status |
|---|-------|------------|--------|
| C1 | "Beyond the Myocarditis Headlines" — Kevin Kavanagh, Nov 2025 | **NOT ME/CFS relevant** — purely about COVID vaccine myocarditis risk in children. References within it (Long COVID in children: Wu et al. 2024 BNT162b2 / EClinicalMedicine) may be relevant if they address Long COVID as an ME/CFS precursor. | ⬜ assess Wu et al. 2024 only |

---

## Also: Review References Within Each Paper

For every paper assessed as relevant, `literature-integrator` should:
- Scan its reference list
- Flag any cited paper that appears relevant and is not yet in `references.bib`
- Integrate those secondary references if they add substantive new content

---

## Per-Paper Actions Checklist

For each relevant paper:

- [ ] `literature-integrator`: fetch, assess relevance
- [ ] `literature-integrator`: save to `Literature/[category]/[Author]_[Year]_[ShortTitle]/`
- [ ] `literature-integrator`: add BibTeX entry to `references.bib`
- [ ] `literature-integrator`: update `contents/appendices/appendix-h-annotated-bibliography.tex`
- [ ] `literature-integrator`: create `.claude/content-staging/INTEGRATION_GUIDE_[TOPIC].md`
- [ ] `chapter-integrator`: edit target chapter `.tex` file(s) using guide
- [ ] `scientific-insight-generator`: creative brainstorm → `Literature/.../scientific-insights.md`
- [ ] `hypothesis-registry-updater`: if any new hypothesis/speculation/open_question was added
- [ ] `test-runner`: `nix build` after every ~5 integrations
- [ ] Update status in this plan file

---

## Build Checkpoints

| Checkpoint | Papers processed | Build result | Date |
|------------|-----------------|--------------|------|
| 1 | after first 5 | ⬜ | — |
| 2 | after next 5 | ⬜ | — |
| 3 | after next 5 | ⬜ | — |
| Final | all done | ⬜ | — |

---

## Completed Items

*(updated as work progresses)*

| Paper | BibKey | Chapter(s) edited | Insights generated | Build verified |
|-------|--------|------------------|--------------------|----------------|
| Krinsky et al. 2023 — NETosis in Long COVID | `Krinsky2023` | ch07 (achievement) | ✅ | ⬜ |
| Son et al. 2023 — Anti-nuclear autoantibodies predict Long COVID | `Son2023` | ch07 (observation) | ✅ | ⬜ |
| Schönrich & Raftery 2016 — NETs Go Viral | `Schonrich2016` | ch07 (inline) | ✅ | ⬜ |
| Monsalve et al. 2025 — NETosis and autoimmunity | `Monsalve2025` | ch07 (hypothesis) | ✅ | ⬜ |
| Veras et al. 2023 — Targeting NETs reduces organ injury | `Veras2023` | ch07 (inline) | ✅ | ⬜ |
| Hetland et al. 2022 — NETs and calprotectin | `Hetland2022` | ch07 (inline) | ✅ | ⬜ |
| Weckbach et al. 2019 — Midkine drives cardiac NETosis | `Weckbach2019` | ch10 (inline) | ✅ | ⬜ |
| Gao et al. 2025 — Long COVID biomarkers | `Gao2025LongCovidBiomarkers` | ch07 (achievement) | ✅ | ⬜ |
| Guedes de Sá et al. 2024 — Autoantibodies and neurological dysfunction | `GuedesDeSa2024` | ch08 (hypothesis) | ✅ | ⬜ |
| Peluso et al. 2024 — Viral RNA persistence | `Peluso2024ViralPersistence` | ch07 (achievement) | ✅ | ⬜ |
| Cullen et al. 2026 — ATP and mitochondrial stress-responsive failure | `Cullen2026ATP` | ch06 (speculation) | ✅ | ⬜ |
| VanElzakker et al. — Neuroinflammation PET-MRI project | `VanElzakker2024NeuroinflammationProject` | ch08 (context reference) | ✅ | ⬜ |

---

## Notes

- The myocarditis LinkedIn article (C1) is **not ME/CFS relevant** — do not integrate
- For hub sites (B1–B4), each linked paper is treated as its own source item
- Preprints (A21, B4) get certainty ≤ 0.40 unless strong replication evidence
- If multiple papers converge on the same mechanism (e.g., NETs, microclots, coagulation), run `meta-analysis-coordinator` to synthesize across them before chapter integration
- After all integrations: run `evidence-mapper` to update citation↔model index in Part V
