# Comparative Energy Nosology — Roadmap

**Decision (2026-10-11):** Extend the paper's reach beyond ME/CFS *through* the
comparative/universal machinery — NOT by rebranding. The document stays ME/CFS;
the web site follows automatically (generated from the same `ch*.typ`).

**Thesis (the named frame):** Energy failure is the unifying abstraction. ME/CFS
is the cleanest exemplar; each related condition is a stress test of the same
principle.

## Framing layers (written 2026-10-11)

| Layer | File | Edit |
|-------|------|------|
| ch16 synthesis | `part2-pathophysiology/ch16-comparative-nosology/ch16-comparative-nosology.typ` | new `#synthesis` `@syn:energy-failure-unifying-substrate` |
| ch20 synthesis | `part2-pathophysiology/ch20-universal-mechanisms/sec-21-synthesis-mechanism-landscape/sec-21-synthesis-mechanism-landscape.typ` | energy-economy framing paragraph |
| Abstract | `shared/abstract.typ` | one sentence |
| Reader digest | `shared/reader-digest.typ` | one sentence |
| Reading guide | `shared/reading-guide.typ` | comparative-nosology clause rename |

Build: `typst compile` clean (EXIT=0, no warnings).

## Hub chapters

| Chapter | Role in the nosology |
|---------|----------------------|
| ch16 comparative nosology | cross-disease comparisons; each condition a stress test |
| ch20 universal mechanisms | the 20 mechanism families = the energy economy |
| ch19 causal hierarchy | trigger / amplifier / consequence classification |
| ch21 female axis | reproductive-lifespan energy interactions |

## Scope guard — do NOT re-propose

Already covered (from `related-diseases-candidates.md` "Already covered" +
completed plans): Long COVID, PTLDS, Q fever fatigue, post-meningitis fatigue,
post-EBV/influenza/dengue/Ebola, PANS/PANDAS, narcolepsy type 2, fibromyalgia,
IBS, hEDS/hypermobility/CCI, MCAS, POTS/dysautonomia, CRPS, Gulf War illness,
MS, fatigue list (RA/SLE/Sjögren's/PsA/axSpA/SSc/AAV/sarcoidosis/IIM/MG/MS/IBD/
coeliac/PBC/cancer), endometriosis, common-fatigue-biology (shared neuroimmune
programme), glycolytic-reprogramming-tickborne, ocular-sjögren overlap.

## Merged backlog (ordered)

Status legend: `⬜` pending · `🔵` in flight · `✅` done. Source: C = candidates
doc, Q = queued-topics, L = cross-disease-metabolic-links plan.

### Tier 1 — full `/integrate-topic` cycle each

| # | Topic | Tier | Source | ch20 family anchor | Status |
|---|-------|------|--------|--------------------|--------|
| 1 | Post-COVID vaccination syndrome | 1 | C | 4 immune / 5 autoimmunity | ⬜ |
| 2 | Small-fiber neuropathy (standalone) | 1 | C | 8 autonomic/SFN | ⬜ |
| 3 | Primary mitochondrial disease (positive control) | 1 | C | 1 energy | ⬜ |
| 4 | Cachexia / cancer-related fatigue | 1 | C | 1 energy / 4 immune | ⬜ |
| 5 | Chronic whiplash-associated disorder (WAD) | 1 | C | 10 neurological | ⬜ |

### Tier 2 — comparative paragraph or short cycle

| # | Topic | Tier | Source | ch20 family anchor | Status |
|---|-------|------|--------|--------------------|--------|
| 6 | Post-intensive care syndrome (PICS) | 2 | C | 1 energy / 4 immune | ⬜ |
| 7 | Multiple chemical sensitivity / IEI | 2 | C | 19 danger signalling | ⬜ |
| 8 | Autoimmune encephalitis (anti-NMDAR) | 2 | C | 5 autoimmunity | ⬜ |
| 9 | Functional neurological disorder | 2 | C | 10 neurological | ⬜ |
| 10 | Tethered cord / Chiari | 2 | C | 17 structural | ⬜ |
| 11 | Pediatric post-infectious syndromes | 2 | C | 4 immune / 16 viral | ⬜ |
| 12 | Histamine intolerance (distinct from MCAS) | 2 | C | 4 immune | ⬜ |
| 13 | Chronic Q fever + Ross River / chikungunya / Ebola | 2 | C | 16 viral persistence | ⬜ |

### Tier 3 — pedagogical comparator

| # | Topic | Tier | Source | ch20 family anchor | Status |
|---|-------|------|--------|--------------------|--------|
| 14 | Overtraining syndrome / RED-S | 3 | C | 1 energy | ⬜ |
| 15 | Post-stroke fatigue | 3 | C | 10 neurological | ⬜ |
| 16 | CKD / dialysis fatigue | 3 | C | 1 energy / 11 amino acid | ⬜ |

### Cross-disease items already in the queue (do not re-file here)

| Topic | Status | Note |
|-------|--------|------|
| cross-disease-metabolic-links (15 conditions) | see `ops/plans/cross-disease-metabolic-links-integration-plan.md` | own plan; routed to ch16/ch14d historically — re-route to ch16/ch20 |
| iron-redox-polarity | 🔵 | ME/CFS vs LC iron handling |
| pupillometry-autonomic-biomarker | 🔵 | objective autonomic biomarker |
| corneal-confocal-cross-disease-sfn | 🔵 | SFN biomarker method |

## Sequencing + cost

- One Tier-1 cycle at a time; review checkpoint between cycles.
- Each full cycle spends deepseek-v4-pro across Phases 1/4/5/5a/11a-c — expensive.
- Recommended order follows the candidates-doc recommendation: **post-vaccination
  syndrome → small-fiber neuropathy → primary mitochondrial disease → cachexia →
  WAD**, then Tier 2/3 as budget allows.
- Tier 2/3 may batch as paragraphs into ch16 (single review pass), not full cycles.

## Changelog

- 2026-10-11 — framing layers written (see table above); roadmap created.
