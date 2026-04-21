# Continuation Prompt: Energy Failure Differential Integration

**Session date:** 2026-04-21
**Context:** Integrating energy-failure differential conditions into ME/CFS paper + writing LinkedIn article series

---

## What Was Completed

### Articles Written (10/34, in `published/`)
1. `20260612_linkedin-four-flavors-of-fatigue` (.article.md + .article.post.md)
2. `20260615_linkedin-normal-blood-tests` (.article.md + .article.post.md)
3. `20260618_linkedin-cell-power-plant` (.article.md + .article.post.md)
4. `20260621_linkedin-depression-mecfs-burnout` (.article.md + .article.post.md)
5. `20260624_linkedin-cross-pathogen-convergence` (.article.md + .article.post.md)
6. `20260627_linkedin-sibo-bacteria-stealing-breakfast` (.article.md + .article.post.md)
7. `20260630_linkedin-thyroid-tsh-lies` (.article.md + .article.post.md)
8. `20260703_linkedin-hypermobility-energy-cost` (.article.md + .article.post.md)
9. `20260706_linkedin-hydrogen-sulfide-gut-poison` (.article.md + .article.post.md)
10. `20260709_linkedin-energy-failure-convergence` (.article.md + .article.post.md)

### Plans Written (in `content-staging/`)
- `plan-energy-failure-differential-integration.md` — ~90 `/integrate-topic` tasks for paper
- `plan-linkedin-energy-failure-articles.md` — 34 articles, 10 arcs, review pipeline defined

### Literature Research (3 agents completed, outputs in `content-staging/`)
- `literature-sibo-mecfs-2026-04-21.md` + `bib-entries-sibo.bib` + `annotated-bib-sibo.typ` (9 papers)
- `literature-h2s-mitochondria-2026-04-21.md` + `bib-entries-h2s.bib` + `annotated-bib-h2s.typ` (11 papers)
- `literature-reference-range-problem-2026-04-21.md` + `bib-entries-reference-range.bib` + `annotated-bib-reference-range.typ` (9 papers)

### Paper Integration Completed
- `references.bib` — ~45 new entries added (12 manual + ~33 from research agents)
- `ch11-gut-microbiome.typ` — New H₂S-mitochondria hypothesis section (@sec:h2s-mitochondrial-toxin) with 8 citations, hypothesis-box, warning-box
- `ch06-energy-metabolism.typ` — Cross-reference to H₂S section at Complex IV discussion
- `hypothesis-registry.typ` — 2 new entries (H₂S hypothesis + SQOR-CoQ10 speculation)

### Build Status
- `nix build` failed due to network error (OpenSSL/cetz package download failure in Nix sandbox) — NOT a code error. Retry should work.

---

## What Remains

### Paper Integration (Phase 2-4)
1. **SIBO enrichment in ch11** — Key finding from SIBO research: small bowel MMC is enteric-autonomous, NOT vagally controlled (Deloose 2012). Current ch11 text overstates vagal→MMC link. Also add: Pimentel2000 CFS data, Kashyap2024 SIBO critique, prokinetic prevention data.
2. **Reference-range findings into ch04-08 differential** — Vaucher2012 + Krayenbuehl2011 iron data, Yokoi2017 meta-analysis, Al-Naseem2021 IDWA review. Also: DIO2 polymorphism (Panicker2009), euthyroid sick syndrome, Hashimoto with normal TSH.
3. **Remaining article topics** — Depression/fatigue taxonomy, cell power plant, cross-pathogen convergence, thyroid, hypermobility, convergence synthesis — most are already well-covered in paper; check and enrich if needed.

### Annotated Bibliography
- Append content from `annotated-bib-sibo.typ`, `annotated-bib-h2s.typ`, `annotated-bib-reference-range.typ` to `appendix-h-annotated-bibliography.typ`

### Build + Review (Phases 5-8)
- Retry `nix build` (network issue should be transient)
- Run `/review-convergence` on changed .typ files
- Run `/review-adversarial` on changed .typ files  
- Run `/review-typst` on changed .typ files
- Update `changelog.typ`
- `/commit`

### Article Review Pipeline (separate from paper integration)
- All 10 articles need: `/review-convergence`, `/review-adversarial`, style naturalization
- Per plan in `plan-linkedin-energy-failure-articles.md` "Deliverables Per Article" section

### Remaining 24 Articles
- See `plan-linkedin-energy-failure-articles.md` for full list
