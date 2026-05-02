# HSAT2 Brainstorm — Integration Plan

**Source:** `content-staging/brainstorm-hsat2-hypotheses-2026-05-01.md`  
**Purpose:** Systematically integrate the 41 ideas generated during the 2026-05-01 HSAT2/MDSC/Cluster A–D brainstorm into the paper via `/integrate-topic`.  
**Integration target:** Each item → `/integrate-topic` pipeline  
**MANDATORY:** Update the tracking table below after every integration run — mark status, add integration guide path, list chapters updated, add commit hash.

---

## Origin and scope

The 41 ideas span four source clusters integrated on 2026-05-01:
- **Cluster A** — MDSC / NK / T-cell exhaustion
- **Cluster B** — HSAT2 derepression, inflammaging, repeat elements
- **Cluster C** — HSF1 / heat shock / NAC / SIRT1 / CTCF
- **Cluster D** — CENPA, biomarkers, EuroFlow MDSC standardisation

Items marked **[HSAT2]** have HSAT2 as the originating or necessary mechanism. Items without this tag are primarily MDSC/NK-driven or cross-mechanism bridges.

---

## Scientific constraint (mandatory for every run)

- Research-first: find what the literature says, do not confirm the brainstorm
- Brainstorm certainty values are conservative starting points, not fixed conclusions
- If literature contradicts the brainstorm idea, report it faithfully and downgrade or drop
- Mechanism claims require citations; plausible ≠ documented
- Any run may conclude "insufficient literature — park as open-question only"

---

## Item list and tracking

| # | ID | Title | Tag | Env | Cert | Suggested chapters | Status | Label | Chapters updated | Commit |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | 1.1 | CTCF eviction by HSF1 nSBs as second derepression route | **[HSAT2]** | speculation | 0.30 | ch13, ch14a | ✅ | `spec:ctcf-hsat2-route` | ch13 | 4a631f4 |
| 2 | 1.2 | SIRT1/NAD+ as HSAT2 master switch | **[HSAT2]** | speculation | 0.35 | ch14a, ch16 | ✅ | `spec:sirt1-hsat2-upstream` | ch13, ch16 | 4a631f4 |
| 3 | 1.3 | EV-HSAT2 as TLR3/RIG-I ligand in recipient stromal cells | **[HSAT2]** | speculation | 0.30 | ch07, ch14a | ✅ | `spec:hsat2-tlr3-rig-i` | ch13 | 4a631f4 |
| 4 | 1.4 | PD-L1 monocytes = M-MDSC bridge to CD8 exhaustion | — | speculation | 0.40 | ch07 | ✅ | `spec:hsat2-exosome-mdsc` | ch07 | f8e16f9 |
| 5 | 1.5 | CENPA mislocalization → p53-dependent senescence in fibroblasts | **[HSAT2]** | speculation | 0.32 | ch13, ch14a | ✅ | `spec:cenpa-senescence-stromal` | ch13, ch20 | 4a631f4 |
| 6 | 1.6 | Arginine depletion as MDSC→NK choke-point | — | hypothesis | 0.45 | ch07, ch16 | ✅ | `hyp:arginine-mdsc-nk`, `spec:citrulline-nk-mdsc` | ch07, ch16 | f8e16f9, 4a631f4 |
| 7 | 2.1 | EuroFlow + EV-HSAT2 dual-readout cross-sectional study design | **[HSAT2]** | proposal | n/a | ch20 | ✅ | `oq:hsat2-mdsc-cross-sectional` | ch20 | c6fee89 |
| 8 | 2.2 | Within-patient PEM EV HSAT2 timecourse study | **[HSAT2]** | proposal | n/a | ch14a, ch20 | ✅ | `oq:hsat2-longitudinal` | ch20 | c6fee89 |
| 9 | 2.3 | NAC + exercise human study to test HSF1→HSAT2 direction | **[HSAT2]** | proposal | n/a | ch16 | ✅ | `spec:nac-hsat2`, `oq:nac-hsat2-direct-test` | ch16 | 4a631f4 |
| 10 | 2.4 | CTCF ChIP-seq across PEM | **[HSAT2]** | proposal | n/a | ch14a | ✅ | (merged into `spec:ctcf-hsat2-route`) | ch13 | 4a631f4 |
| 11 | 2.5 | Skin biopsy CENPA/p53/senescence study | **[HSAT2]** | proposal | n/a | ch13 | ✅ | `oq:hsat2-skin-biopsy-protocol` | ch20 | c6fee89 |
| 12 | 3.1 | Lamivudine off-label (HERV-K + LINE-1 arm) | **[HSAT2]** | speculation | 0.30 | ch18 | ✅ | `oq:nrti-hsat2` | ch18 | c6fee89 |
| 13 | 3.2 | Low-dose IL-2 to rescue Treg/MDSC balance | — | speculation | 0.20 | ch18 | ✅ | `spec:ldil2-treg-mdsc` | ch18 | c6fee89 |
| 14 | 3.3 | Tadalafil (PDE5i) as MDSC arginase differentiator | — | speculation | 0.25 | ch18 | ✅ | `spec:tadalafil-mdsc-nk` | ch18 | c6fee89 |
| 15 | 3.4 | NR/NMN as SIRT1 substrate → HSAT2 re-silencing | **[HSAT2]** | speculation | 0.25 | ch16 | ✅ | `spec:nr-nmn-hsat2` | ch16 | 4a631f4 |
| 16 | 3.5 | Anti-PD-L1 blockade — HIGH RISK, research-only flag | — | open-question | 0.10 | ch18 | ✅ | `oq:checkpoint-blockade-mecfs` | ch18 | c6fee89 |
| 17 | 4.1 | L-arginine / L-citrulline to restore NK via MDSC arginase | — | speculation | 0.40 | ch16 | ✅ | `spec:citrulline-nk-mdsc` | ch16 | 4a631f4 |
| 18 | 4.2 | Methyl-donor stack stratified by MTHFR C677T genotype | **[HSAT2]** | speculation | 0.30 | ch16 | ✅ | `spec:methyl-donor-hsat2` | ch16 | c6fee89 |
| 19 | 4.3 | Sulforaphane via Nrf2 → oxidative-stress HSF1 trigger attenuation | **[HSAT2]** | speculation | 0.20 | ch16 | ✅ | `spec:sulforaphane-hsat2` | ch16 | 4a631f4 |
| 20 | 4.4 | Spermidine for heterochromatin maintenance upstream of HSAT2 | **[HSAT2]** | open-question | 0.18 | ch16 | ✅ | `oq:spermidine-hsat2` | ch16 | 4a631f4 |
| 21 | 4.5 | Zinc + Vitamin D as NK cytotoxic nutrient floor | — | speculation | 0.25 | ch16 | ✅ | `spec:zinc-vitd-nk-floor` | ch16 | c6fee89 |
| 22 | 5.1 | Strict pacing as epigenetic prophylaxis (HSAT2 amplification prevention) | **[HSAT2]** | speculation | 0.35 | ch17 | ✅ | `spec:pacing-hsat2-prophylaxis` | ch17 | c6fee89 |
| 23 | 5.2 | Heat avoidance for HSAT2-high subgroup | **[HSAT2]** | speculation | 0.30 | ch17 | ✅ | `spec:heat-hsat2-caution` | ch17 | c6fee89 |
| 24 | 5.3 | Brief cold exposure as HSF1-independent hormetic stress | — | open-question | 0.18 | ch17 | ✅ | `oq:cold-exposure-hsat2` | ch17 | c6fee89 |
| 25 | 5.4 | Sleep optimisation as SIRT1/NAD+ support → HSAT2 silencing | **[HSAT2]** | speculation | 0.25 | ch17 | ✅ | `spec:sleep-sirt1-hsat2` | ch17 | c6fee89 |
| 26 | 6.1 | Combination: NR + spermidine + pacing (SIRT1-axis) | **[HSAT2]** | speculation | 0.22 | ch16, ch17 | ✅ | `spec:hsat2-sirt1-combo` | ch16 | c6fee89 |
| 27 | 6.2 | Combination: tadalafil + L-citrulline (arginase bidirectional) | — | speculation | 0.28 | ch16, ch18 | ✅ | `spec:hsat2-arginase-combo` | ch16 | c6fee89 |
| 28 | 6.3 | Combination: SAMe + folate, MTHFR-TT stratum only | **[HSAT2]** | speculation | 0.30 | ch16 | ✅ | `spec:hsat2-mthfr-combo` | ch16 | c6fee89 |
| 29 | 6.4 | Combination: lamivudine + NR + pacing (inflammaging package) | **[HSAT2]** | open-question | 0.20 | ch18 | ✅ | `oq:hsat2-inflammaging-package` | ch18 | c6fee89 |
| 30 | 7.1 | Two-compartment ODE model: MDSC pool × EV cargo | — | speculation | 0.30 | ch13 | ✅ | `spec:hsat2-mdsc-ode-model` | ch13 | c6fee89 |
| 31 | 7.2 | Stochastic CENPA mislocalization → senescence threshold model | **[HSAT2]** | open-question | 0.25 | ch13 | ✅ | `oq:hsat2-stochastic-cenpa` | ch13 | c6fee89 |
| 32 | 7.3 | Hysteresis model of HSAT2 epigenetic bistability | **[HSAT2]** | speculation | 0.22 | ch13 | ✅ | `spec:hsat2-bistability-hysteresis` | ch13 | c6fee89 |
| 33 | 8.1 | Long COVID bridge strengthened by Cluster A | — | speculation | 0.30 | ch14d | ✅ | `spec:hsat2-long-covid-bridge` | ch14d | f8e16f9, 4a631f4 |
| 34 | 8.2 | Fibromyalgia — partial overlap via HSF1-oxidative axis only | — | speculation | 0.20 | ch14d | ✅ | `spec:fibromyalgia-hsat2-partial` | ch14d | c6fee89 |
| 35 | 8.3 | hEDS / dysautonomia — stromal CENPA/senescence link | — | open-question | 0.15 | ch14d | ✅ | `oq:heds-stromal-hsat2` | ch14d | c6fee89 |
| 36 | 8.4 | ME/CFS as accelerated inflammaging (HSAT2 as mechanism) | **[HSAT2]** | speculation | 0.35 | ch13, ch14d | ✅ | `spec:hsat2-inflammaging` | ch13 | c6fee89 |
| 37 | 8.5 | Cancer immune evasion as inverse mirror (MDSC without tumour) | — | speculation | 0.30 | ch14d | ✅ | `spec:mecfs-cancer-immune-mirror` | ch14d | c6fee89 |
| 38 | 9.1 | TRAP-ddPCR HSAT2 serum assay validation | **[HSAT2]** | hypothesis | 0.50 | ch20 | ✅ | `spec:hsat2-biomarker-panel` | ch20 | c6fee89 |
| 39 | 9.2 | EuroFlow CD33+HLA-DR− MDSC standardized panel | — | hypothesis | 0.55 | ch20 | ✅ | `spec:euroflow-mdsc-mecfs` | ch20 | c6fee89 |
| 40 | 9.3 | Two-marker plasma panel: EV HSAT2 + arginase-1 activity | **[HSAT2]** | speculation | 0.35 | ch20 | ✅ | `spec:hsat2-arginase-panel` | ch20 | c6fee89 |
| 41 | 9.4 | Skin biopsy senescence score (p16+/SA-β-gal+ fibroblasts) | **[HSAT2]** | speculation | 0.25 | ch20 | ✅ | (merged into `oq:hsat2-skin-biopsy-protocol`) | ch20 | c6fee89 |
| 42 | 9.5 | Post-PEM dynamic biomarker: fold-change EV HSAT2 post-CPET | **[HSAT2]** | speculation | 0.30 | ch20 | ✅ | `spec:hsat2-cpet-fold-change` | ch20 | c6fee89 |

**[HSAT2] count: 24 of 42 items**

---

## Execution phases

### Phase 1 — Mechanistic core (HSAT2-primary, high certainty)
Items with `[HSAT2]` tag and certainty ≥ 0.30, or hypothesis-grade. Run these first to lay groundwork in target chapters before downstream/combination items.

Priority order: 1.2, 1.3, 1.1, 1.5, 5.2, 8.4, 9.1, 9.5, 2.2

### Phase 2 — MDSC/NK core
Non-HSAT2 items with certainty ≥ 0.25. These anchor the MDSC arm independently.

Priority order: 1.6, 1.4, 9.2, 3.3, 4.1, 6.2, 8.1

### Phase 3 — Treatment and intervention targets
All Cat 3 (drugs), Cat 4 (supplements), Cat 5 (non-pharm), Cat 6 (combinations).
Run after Phase 1+2 so chapter context exists for the mechanistic rationale.

Priority order within phase: 3.1, 3.4, 4.2, 4.3, 5.1, 5.4, 6.1, 6.3, 3.2, 4.5, 6.4, 3.5 (last — high risk flag)

### Phase 4 — Research proposals and mathematical models
Cat 2 (study designs) and Cat 7 (models). These depend on Phase 1+2 content being integrated.

Priority order: 2.2, 2.1, 2.4, 2.5, 7.3, 7.1, 2.3, 7.2

### Phase 5 — Cross-disease bridges and diagnostics
Cat 8 (cross-disease) and remaining Cat 9 (diagnostics).

Priority order: 8.1, 8.4, 9.2, 9.3, 9.4, 8.2, 8.5, 8.3, 5.3 (caution flag), 3.5 (if not done in Phase 3)

---

## Integration guide naming convention

```
content-staging/integration-guide-{slug}-{YYYY-MM-DD}.md
```

Examples:
- `integration-guide-sirt1-hsat2-master-switch-2026-05-XX.md`
- `integration-guide-ctcf-hsat2-derepression-2026-05-XX.md`
- `integration-guide-mdsc-arginase-nk-2026-05-XX.md`

---

## Notes

- Items 3.5 (anti-PD-L1) and 6.4 (lamivudine+NR+pacing) require explicit safety/access caveats in integration — see brainstorm for wording
- Item 8.1 (Long COVID bridge) may partially overlap with `beyond-autoimmune-integration-plan.md` item 1 (Long COVID/PASC) — coordinate to avoid duplicate sections
- Items 7.1–7.3 (mathematical models) may warrant the `formalization-pipeline` skill rather than plain `/integrate-topic`
- Belgian/EU access notes in brainstorm Cat 6 should be preserved in ch16/ch18 integration targets
- Items 9.1 and 9.5 share the TRAP-ddPCR assay (`Kishikawa2016`) — integrate together or cross-reference
