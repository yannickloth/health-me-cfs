# Intervention-Target Analysis — ME/CFS Causal Model

**Date:** 2026-10-10
**Purpose:** Convert the repo's formal causal models (YAML DAG + EPC) and the Part V modeling prose into a prioritized intervention-target report: which model nodes already have interventions, which nodes carry the most downstream symptom leverage, and which are research gaps.

**Method (5 lines):**
1. Parse every `models/**/*.yaml` (n=2) with PyYAML → node/edge inventory.
2. Build the directed graph, compute downstream-reachable terminal-symptom counts and chain-min certainty (Low/Medium/High bands; MIN along chain).
3. Supplement node inventory with prose-only nodes from `part5-modeling/ch55` and `part2-pathophysiology/ch19`.
4. Map every node to Part III interventions via `ch22-mechanism-treatment-map`, `ch24`, `ch25`, `ch30`, `ch31`, `ch33` + keyword search.
5. Cross-reference `ch55/sec-08/09/10` (coverage) and `ch47-proposed-studies` (gaps); patient cross-check from `patients/*/` summaries.
**Rule:** certainty bands Low 0.2–0.4 / Medium 0.5–0.7 / High 0.8–1.0; propagated by MINIMUM. Never averaged.

---

## 0. Existing coverage (ch55 sec-08/09/10)

Source: `part5-modeling/ch55-predictive-applications/`.

### sec-08 — Global sensitivity analysis and drug-target ranking
`subsec-01-sobol-index-framework` ranks parameters by total Sobol index $S_T$ for overall symptom burden:

| Rank | Parameter (node) | $S_T$ | Source |
|------|------------------|-------|--------|
| 1 | $\alpha_{CI}$ (Complex I activity) | 0.22 | ch55 sec-08 subsec-01 |
| 2 | $P_0$ (BBB permeability) | 0.14 | ch55 sec-08 subsec-01 |
| 3 | $k_{exh}$ (immune exhaustion rate) | 0.12 | ch55 sec-08 subsec-01 |
| 4 | $n_F$ (HPA feedback sensitivity) | 0.10 | ch55 sec-08 subsec-01 |
| 5 | $K_{MC}$ (mast cell activation threshold) | 0.08 | ch55 sec-08 subsec-01 |
| 6 | $\beta_{epoxy}$ (microclot formation rate) | 0.07 | ch55 sec-08 subsec-01 |
| 7 | $k_{BH4syn}$ (BH4 synthesis rate) | 0.05 | ch55 sec-08 subsec-01 |
| 8 | $\mathcal{G}_{set}$ (gut motility setpoint) | 0.04 | ch55 sec-08 subsec-01 |

`subsec-02-subtype-stratified-sensitivity` gives subtype-specific targets: metabolic-dominant → $\alpha_{CI}$ ($S_T\approx0.35$); immune-dominant → $k_{exh}$; autonomic-dominant → $G_{baro}$, $V_{blood}$, $\mathcal{G}_{set}$; severe/locked → epigenetic rate ($S_T\approx0.20$).

### sec-09 — Network controllability / minimum intervention sets
- Minimum driver nodes for full controllability: **4–6**.
- 5-node set: $\{\alpha_{CI}, C_{pro}, \text{CRH}, G_{baro}, \text{BH4}\}$.
- 4-node set (BBB co-treated): $\{\alpha_{CI}, C_{pro}, P_0, G_{baro}\}$.
- 6-node set (severe/locked): adds epigenetic state $M$ and mast cell threshold $K_{MC}$.
- $\alpha_{CI}$ requires least control energy across attractors (sec-09 subsec-02).
- **No monotherapy can fully control the system** (sec-09 subsec-01 model-insight).

### sec-10 — Model-predicted treatment candidates
Table `tab:treatment-predictions` already ranks these target→agent pairs:

| Target | Agent(s) | $S_T$ |
|--------|----------|-------|
| $\alpha_{CI}$ | CoQ10/ubiquinol; methylene blue; NR/NMN | 0.22 |
| $P_0$ (BBB) | palmitoylethanolamide; luteolin | 0.14 |
| $k_{exh}$ | LDN; daratumumab | 0.12 |
| $n_F$ (HPA) | low-dose hydrocortisone | 0.10 |
| $K_{MC}$ | cromolyn sodium; ketotifen | 0.08 |
| $\beta_{epoxy}$ | nattokinase; triple anticoagulation | 0.07 |
| BH4 synthesis | sapropterin; folinic acid | 0.05 |
| $\mathcal{G}_{set}$ | prucalopride; rifaximin | 0.04 |

Predicted strong synergies: CoQ10+nattokinase (0.45), LDN+hydrocortisone (0.38), sapropterin+LDN (0.35). Antagonisms: high-dose antioxidants+exercise (−0.25), immunosuppressants+checkpoint activators (−0.40). (ch55 sec-10 subsec-01.)

**Consequence for this report:** every entry below is tagged **OVERLAP** (already in ch55 sec-08/09/10) or **NEW**. Note that ch55 operates on the 64-variable ODE model (ch53), not on the two YAML artifacts.

---

## 1. Model inventory

### 1a. YAML-formalized nodes

Source: `models/dag/ne-deficit-axis/ne-deficit-axis.yaml`, `models/epc/pem-cascade/pem-cascade.yaml`.

| node id | label | compartment | certainty | source | formalized |
|---------|-------|-------------|-----------|--------|------------|
| (DAG) NE_deficit | Central NE deficit (CSF NE+DHPG+MHPG low; DA normal) | CNS | 0.50 | ne-deficit-axis.yaml, node NE_deficit | YAML |
| (DAG) ATP | Low neuronal ATP | CNS | 0.35 | ne-deficit-axis.yaml | YAML |
| (DAG) Cu | Low bioavailable copper | systemic | 0.40 | ne-deficit-axis.yaml | YAML |
| (DAG) BH4 | BH4 depletion | CNS/systemic | 0.28 | ne-deficit-axis.yaml | YAML |
| (DAG) NET | NET (SLC6A2) loss-of-function variant | CNS | 0.33 | ne-deficit-axis.yaml | YAML |
| (DAG) AAB | Adrenergic-receptor autoantibody | systemic | 0.30 | ne-deficit-axis.yaml | YAML |
| (DAG) LC | Locus coeruleus neuroinflammation | CNS | 0.25 | ne-deficit-axis.yaml | YAML |
| (DAG) fatigue | Fatigue / reduced effort-motor sustain | clinical | 0.50 | ne-deficit-axis.yaml | YAML |
| (DAG) PEM | Post-exertional malaise | clinical | 0.40 | ne-deficit-axis.yaml | YAML |
| (DAG) sleep | Unrefreshing sleep / arousal instability | clinical | 0.35 | ne-deficit-axis.yaml | YAML |
| (DAG) glymph | Impaired glymphatic clearance | clinical | 0.35 | ne-deficit-axis.yaml | YAML |
| (DAG) pain | Pain amplification | clinical | 0.30 | ne-deficit-axis.yaml | YAML |
| (DAG) cognition | Prefrontal cognitive deficit | clinical | 0.30 | ne-deficit-axis.yaml | YAML |
| (EPC) E1 | Activity Exceeds Threshold (trigger) | — | prob 1.0 | pem-cascade.yaml, event E1 | YAML |
| (EPC) E2 | Metabolic Shift to Anaerobic | — | prob 0.95 | pem-cascade.yaml, event E2 | YAML |
| (EPC) E3 | Immune Activation | — | prob 0.87 | pem-cascade.yaml, event E3 | YAML |
| (EPC) E4 | Symptom Peak (outcome) | — | prob 1.0 | pem-cascade.yaml, event E4 | YAML |
| (EPC) E5a | Recovery (resolution) | — | prob 0.40 | pem-cascade.yaml, event E5a | YAML |
| (EPC) E5b | Chronic Activation (resolution) | — | prob 0.60 | pem-cascade.yaml, event E5b | YAML |

**DAG edges (12):** ATP→NE_deficit (0.35), Cu→NE_deficit (0.40), BH4→NE_deficit (0.28), NET→NE_deficit (0.33), AAB→NE_deficit (0.30), LC→NE_deficit (0.25), NE_deficit→{fatigue (0.50), PEM (0.40), sleep (0.35), glymph (0.35), pain (0.30), cognition (0.30)}. Source: ne-deficit-axis.yaml, `edges`.
**DAG excluded edges:** NE_deficit→autonomic_cardiovascular, →mood_anxiety, →muscle_lactate, →muscle_soreness (Aregawi2026 null correlations).
**EPC edges (via activities):** E1→E2 (A1), E2→E3 (A2), E3→E4 (A3), E4→E5a (A4a, p=0.40), E4→E5b (A4b, p=0.60), E5b→E2 feedback (FL1). Source: pem-cascade.yaml, `activities`, `feedback_loops`.

### 1b. Prose-only nodes (not yet formalized in YAML)

| node | type | certainty | source | formalized |
|------|------|-----------|--------|------------|
| $\alpha_{CI}$ (Complex I activity) | ODE parameter | — | ch55 sec-08 subsec-01; ch53 sec-10 subsec-04 | prose |
| $P_0$ (BBB permeability) | ODE parameter | — | ch55 sec-08/09/10 | prose |
| $k_{exh}$ (immune exhaustion rate) | ODE parameter | — | ch55 sec-08/10 | prose |
| $n_F$ (HPA feedback sensitivity) | ODE parameter | — | ch55 sec-08/10 | prose |
| $K_{MC}$ (mast cell activation threshold) | ODE parameter | — | ch55 sec-08/09/10 | prose |
| $\beta_{epoxy}$ (microclot formation rate) | ODE parameter | — | ch55 sec-08/10 | prose |
| $k_{BH4syn}$ (BH4 synthesis rate) | ODE parameter | — | ch55 sec-08/10 | prose |
| $\mathcal{G}_{set}$ (gut motility setpoint) | ODE parameter | — | ch55 sec-08/10 | prose |
| $C_{pro}$ (aggregate pro-inflammatory cytokine) | state composite | — | ch55 sec-09; ch53 sec-07 `eq:symptom-mapping` | prose |
| CRH | state variable | — | ch55 sec-09 | prose |
| $G_{baro}$ (baroreflex gain) | ODE parameter | — | ch55 sec-08/09 | prose |
| $V_{blood}$ (blood volume) | state variable | — | ch55 sec-08 | prose |
| $M$ (epigenetic state) | ODE parameter | — | ch55 sec-09; ch53 sec-08 subsec-04 | prose |
| CNS energy crisis | mechanism node | 0.55 | ch19 sec-01 `tab:mechanism-classification` | prose |
| Metabolic safe mode lock | mechanism node | 0.45 | ch19 sec-01 | prose |
| GPCR autoantibody cascade | mechanism node | 0.45 | ch19 sec-01 | prose |
| TRPM3 channelopathy | mechanism node | 0.35 | ch19 sec-01 | prose |
| NAD⁺ depletion spiral | mechanism node | — | ch19 sec-01 | prose |
| Oxidative stress cycle | mechanism node | — | ch19 sec-01 | prose |
| Mast cell–energy loop | mechanism node | — | ch19 sec-01 | prose |
| Viral reactivation ↔ immune exhaustion | mechanism node | — | ch19 sec-01 | prose |
| Endothelial activation / microclotting | mechanism node | — | ch19 sec-01 | prose |
| Epigenetic consolidation | mechanism node | — | ch19 sec-01 | prose |
| Sleep fragmentation | mechanism node | — | ch19 sec-01 | prose |
| Catecholamine synthesis failure | mechanism node | — | ch19 sec-01 | prose |
| Ferroptosis susceptibility | mechanism node | — | ch19 sec-01 | prose |
| Deferred-cost PEM architecture | mechanism node | — | ch19 sec-01 | prose |

**Total: 19 YAML nodes (13 DAG + 6 EPC) + 27 prose-only nodes = 46 inventoried.**

---

## 2. Intervention map

Method: node → biological keywords → search `part3-treatment/`. Classification per prompt: EXISTS-SAFE / EXISTS-RISKY / EXISTS-UNTESTED / NONE. PEM-hazard = intervention raises exertion tolerance without fixing upstream metabolism (per ch24/sec-16 and ch22 warnings).

| node id | class | intervention name(s) | source (chapter/section) | PEM-hazard |
|---------|-------|----------------------|--------------------------|------------|
| NE_deficit | EXISTS-RISKY | atomoxetine (NRI probe); droxidopa (NE prodrug); methylphenidate/stimulants; LDA | ch25 sec-09 subsec-02; ch24 sec-20 subsec-droxidopa; ch24 sec-16 | yes (stimulants mask PEM: +77.1% brain-fog, −1.5% net PEM) |
| ATP | EXISTS-SAFE | CoQ10/ubiquinol; NADH; NR/NMN; riboflavin | ch30 sec-03; ch22 sec-03 subsec-01 | no |
| ATP | EXISTS-UNTESTED | MDC002 (Mitodicure) | ch22 sec-02 subsec-03 (Phase I only) | no |
| Cu | EXISTS-UNTESTED | copper bisglycinate (DAO cofactor; if Zn:Cu>10:1) | ch31 spec:dao-cofactor-hit | no |
| BH4 | EXISTS-UNTESTED | sapropterin; folinic acid + vit C + iron (recycling) | ch31 `subsec:sapropterin-bh4`; ch31 `subsubsec:bh4-recycling-support` | no |
| NET | EXISTS-RISKY | atomoxetine (NET inhibitor, diagnostic probe) | ch25 sec-09 subsec-02 | yes |
| AAB | EXISTS-RISKY | immunoadsorption; daratumumab; BC007; rituximab; efgartigimod; IVIG; TPE | ch22 sec-02 subsec-01 `tab:map-gpcr` | yes (Category C procedures; negative RCTs) |
| LC | EXISTS-SAFE | LDN (TLR4); PEA (PPAR-α); memantine | ch22 sec-02 subsec-03; ch22 sec-03 | no |
| fatigue | EXISTS-RISKY | stimulants (modafinil, methylphenidate, solriamfetol, pitolisant) | ch24 sec-16 | yes |
| PEM | EXISTS-SAFE | pacing / energy-envelope management | ch22 sec-04 `tab:map-cross-tier` (Category A) | no (it *is* PEM avoidance) |
| sleep | EXISTS-SAFE | melatonin (0.5 mg); sleep optimization; trazodone/suvorexant | ch22 sec-04; ch19 sec-06 | no |
| glymph | EXISTS-UNTESTED | brain-clearance supplements (CoQ10, curcumin, Mg-threonate, quercetin, resveratrol, vit C); tVNS | ch31 brain-clearance-supplements (proposals) | no |
| pain | EXISTS-SAFE | duloxetine (neuropathic); LDN; amitriptyline (low-dose) | ch23 sec-04 subsec-02; ch22 sec-03 subsec-03 | no |
| cognition | EXISTS-RISKY | stimulants; LDA (low-dose aripiprazole) | ch24 sec-16; ch24 sec-14 subsec-LDA | yes (stimulants) |
| E1 | EXISTS-SAFE | pacing (prevent threshold breach) | ch22 sec-04 | no |
| E2 | EXISTS-SAFE | mitochondrial support (CoQ10, NADH, riboflavin, ALA) | ch30 sec-03; ch22 sec-03 subsec-01/02 | no |
| E2 | EXISTS-UNTESTED | MDC002 | ch22 sec-02 subsec-03/04 | no |
| E3 | EXISTS-SAFE | LDN; PEA; H1/H2 antihistamines | ch22 sec-03 subsec-03; ch30 sec-01 | no |
| E3 | EXISTS-RISKY | rapamycin (pilot ~34% ITT); immunomodulators | ch22 sec-03 subsec-08; ch30 sec-01 | no |
| E4 | EXISTS-SAFE | pacing; sleep optimization; symptom management | ch22 sec-04 | no |
| E5b | EXISTS-UNTESTED | early aggressive multimodal intervention; methyl-donor support | ch47 aggressive-early-intervention; ch22 spec:map-epigenetic | no |
| $\alpha_{CI}$ | EXISTS-SAFE / UNTESTED | CoQ10/ubiquinol, NR/NMN, methylene blue | ch55 sec-10 (OVERLAP) | no |
| $P_0$ (BBB) | EXISTS-SAFE / UNTESTED | palmitoylethanolamide, luteolin | ch55 sec-10; ch31 (OVERLAP) | no |
| $k_{exh}$ | EXISTS-RISKY | LDN; daratumumab | ch55 sec-10; ch22 sec-02 subsec-01 (OVERLAP) | daratumumab yes |
| $n_F$ | EXISTS-RISKY | low-dose hydrocortisone | ch55 sec-10 (OVERLAP) | no |
| $K_{MC}$ | EXISTS-SAFE | cromolyn sodium; ketotifen | ch55 sec-10; ch22 sec-03 subsec-03 (OVERLAP) | no |
| $\beta_{epoxy}$ | EXISTS-RISKY | nattokinase; triple anticoagulation | ch55 sec-10; ch22 sec-03 subsec-05 (OVERLAP; bleeding risk) | no |
| $k_{BH4syn}$ | EXISTS-UNTESTED | sapropterin; folinic acid | ch55 sec-10; ch31 (OVERLAP) | no |
| $\mathcal{G}_{set}$ | EXISTS-SAFE | prucalopride; rifaximin | ch55 sec-10; ch22 sec-03 subsec-07 (OVERLAP) | no |
| CNS energy crisis (prose) | EXISTS-UNTESTED | tVNS; rTMS; HBOT; PBM; nicotine; far-infrared sauna | ch22 sec-02 subsec-03 | rTMS/HBOT no; sauna yes (POTS caution) |
| Metabolic safe mode lock (prose) | EXISTS-UNTESTED | ketogenic diet; 5-HTP; thiamine (TTFD); metformin | ch22 sec-02 subsec-04 | no |
| GPCR autoantibody cascade (prose) | EXISTS-RISKY | immunoadsorption; daratumumab; BC007; efgartigimod | ch22 sec-02 subsec-01 | yes |
| TRPM3 channelopathy (prose) | EXISTS-UNTESTED | LDN; pregnenolone sulfate | ch22 sec-02 subsec-02 | no |
| NAD⁺ depletion spiral (prose) | EXISTS-SAFE | NR; NMN; NADH; CoQ10; spermidine; urolithin A | ch22 sec-03 subsec-01 | no |
| Oxidative stress cycle (prose) | EXISTS-SAFE | CoQ10; NAC; ALA; omega-3; quercetin; curcumin | ch22 sec-03 subsec-02 | no |
| Mast cell–energy loop (prose) | EXISTS-SAFE | H1/H2 antihistamines; cromolyn; ketotifen; PEA; low-histamine diet | ch22 sec-03 subsec-03 | no |
| Viral reactivation (prose) | EXISTS-RISKY | valacyclovir; valganciclovir (high toxicity) | ch22 sec-03 subsec-04; ch30 sec-02 | yes (valganciclovir highest crash risk) |
| Endothelial/microclotting (prose) | EXISTS-RISKY | nattokinase; sulodexide; triple anticoagulation | ch22 sec-03 subsec-05; ch55 sec-10 | no (but bleeding risk) |
| Epigenetic consolidation (prose) | EXISTS-UNTESTED | rapamycin; spermidine; SAMe; methyl-folate+B12; betaine | ch22 sec-03 subsec-08 | no |
| Sleep fragmentation (prose) | EXISTS-SAFE | sleep optimization; trazodone; suvorexant | ch19 sec-06; ch22 sec-04 | no |
| Catecholamine synthesis failure (prose) | EXISTS-RISKY | droxidopa; P5P (DBH cofactor) | ch24 sec-20; ch31 P5P | yes |
| Ferroptosis susceptibility (prose) | NONE | NOT FOUND (no Part III intervention) | — | — |
| Deferred-cost PEM architecture (prose) | NONE | NOT FOUND (no direct intervention; managed by pacing) | ch19 sec-01 (`tab:mechanism-classification`) | — |

**Counts:** EXISTS-SAFE 15; EXISTS-RISKY 12; EXISTS-UNTESTED 12; NONE 2 (ferroptosis, deferred-cost PEM).

---

## 3. Leverage ranking

Method: directed graph from YAML edges; downstream-reachable terminal symptoms = {PEM, cognition, orthostatic intolerance, pain, sleep, fatigue}; leverage = count of distinct reachable symptom terminals; tie-break by node certainty (high first), then upstream position (fewer ancestors first); chain-min certainty per rule 4. Script: `/tmp/it_analysis.py` (output reproduced verbatim).

**Terminal symptom nodes matched by label:** fatigue=['fatigue'], PEM=['PEM'], sleep=['sleep'], pain=['pain'], cognition=['cognition']. **No orthostatic-intolerance node exists in the DAG** (edge explicitly excluded, Aregawi2026 null).

### 3a. DAG leverage ranking

| rank | node | reachable symptoms (n + names) | node certainty | min path certainty | confidence flag |
|------|------|-------------------------------|----------------|--------------------|-----------------|
| 1 | NE_deficit | 5 — PEM,cognition,fatigue,pain,sleep | 0.50 | 0.30 | LOW-CONFIDENCE PATH |
| 2 | Cu | 5 — PEM,cognition,fatigue,pain,sleep | 0.40 | 0.30 | LOW-CONFIDENCE PATH |
| 3 | ATP | 5 — PEM,cognition,fatigue,pain,sleep | 0.35 | 0.30 | LOW-CONFIDENCE PATH |
| 4 | NET | 5 — PEM,cognition,fatigue,pain,sleep | 0.33 | 0.30 | LOW-CONFIDENCE PATH |
| 5 | AAB | 5 — PEM,cognition,fatigue,pain,sleep | 0.30 | 0.30 | LOW-CONFIDENCE PATH |
| 6 | BH4 | 5 — PEM,cognition,fatigue,pain,sleep | 0.28 | 0.28 | LOW-CONFIDENCE PATH |
| 7 | LC | 5 — PEM,cognition,fatigue,pain,sleep | 0.25 | 0.25 | LOW-CONFIDENCE PATH |
| 8 | fatigue | 1 — fatigue | 0.50 | 1.00 | — |
| 9 | PEM | 1 — PEM | 0.40 | 1.00 | — |
| 10 | sleep | 1 — sleep | 0.35 | 1.00 | — |
| 11 | pain | 1 — pain | 0.30 | 1.00 | — |
| 12 | cognition | 1 — cognition | 0.30 | 1.00 | — |
| 13 | glymph | 0 — (no symptom-terminal edge) | 0.35 | NA | — |

**Every upstream node to a symptom terminal is flagged LOW-CONFIDENCE PATH**: the whole DAG rests on the single NE_deficit→symptom edges (chain-min 0.25–0.30). The strongest chain is Cu→NE_deficit→fatigue (min 0.40) but even that is Low–Medium band.

### 3b. EPC leverage ranking (within-model terminals)

The EPC has no edges to the named symptom terminals; ranked against its own terminal events (E5a/E5b).

| rank | event | reachable resolution events (n) | branch prob | note |
|------|-------|--------------------------------|-------------|------|
| 1 | E1 | 2 — E5a,E5b | 1.0 | trigger |
| 2 | E2 | 2 — E5a,E5b | 0.95 | metabolic shift |
| 3 | E3 | 2 — E5a,E5b | 0.87 | immune activation |
| 4 | E4 | 2 — E5a,E5b | 1.0 | symptom peak (the symptom node) |
| 5 | E5a | 1 — E5a | 0.40 | recovery |
| 6 | E5b | 1 — E5b | 0.60 | chronic (self-sustaining via FL1→E2) |

Note: the EPC carries *probabilities*, not ordinal certainty bands; chain-min of certainty is not applicable (see Limitations §6).

---

## 4. Action lists

Join Phase 2 and Phase 3 on node id.

### List A — Trial candidates (top leverage, class EXISTS-SAFE or EXISTS-UNTESTED)

| # | intervention | target node | expected downstream symptoms | certainty chain (min) | OVERLAP/NEW | Falsifiable prediction (measurement / timeframe / kill criterion) |
|---|--------------|-------------|------------------------------|----------------------|-------------|-------------------------------------------------------------------|
| 1 | CoQ10/ubiquinol (± NADH) | ATP, $\alpha_{CI}$ | fatigue, PEM, cognition | ATP→NE→sx = 0.30 (Low) | OVERLAP (ch55 sec-10) | Plasma CoQ10 rises ≥2× and fatigue (Chalder) improves ≥4 pts / 12 wk / kill if no biomarker or symptom change |
| 2 | NR/NMN (NAD⁺ precursors) | ATP, NAD⁺ spiral | fatigue, cognition | 0.30 (Low) | OVERLAP (ch55 sec-10) | Whole-blood NAD⁺ rises ≥30% and PROMIS Fatigue improves ≥3 pts / 8–12 wk / kill if NAD⁺ rises but no symptom or PEM-endpoint change |
| 3 | Sapropterin (± folinic acid+vit C+iron) | BH4 | fatigue, PEM, cognition, pain, sleep | BH4→NE→sx = 0.28 (Low) | OVERLAP (ch55 sec-10) | Urinary neopterin:biopterin normalizes and ≥1 symptom domain improves / 8–12 wk / kill if biomarker normalizes without symptom change (per ch31 `subsubsec:bh4-recycling-support`) |
| 4 | Copper bisglycinate (if Zn:Cu>10:1) | Cu | fatigue, PEM, cognition, pain, sleep | Cu→NE→sx = 0.30 (Low) | NEW (source: ch31 spec:dao-cofactor-hit) | Serum Cu/ceruloplasmin corrects and plasma NE-metabolite (MHPG) rises / 12 wk / kill if Cu corrects but MHPG and symptoms unchanged |
| 5 | LDN / PEA | LC, E3, $k_{exh}$ | fatigue, PEM, pain, sleep | LC→NE→sx = 0.25 (Low) | OVERLAP (ch55 sec-10 LDN) | TLR4-dependent cytokines (IL-6/TNF-α) fall ≥20% and PEM frequency falls / 12 wk / kill if cytokines fall without PEM change |
| 6 | tVNS / taVNS | CNS energy crisis, $G_{baro}$ | fatigue, cognition, sleep | prose node; no chain-min | OVERLAP (ch55 sec-09) | HRV (RMSSD) rises ≥15% and fatigue improves / 8 wk / kill if HRV rises without symptom benefit |
| 7 | Cromolyn sodium / ketotifen | $K_{MC}$, mast cell loop | fatigue, pain, sleep | prose; $S_T$=0.08 | OVERLAP (ch55 sec-10) | Tryptase/histamine metabolite falls and HIT symptom score falls / 8 wk / kill if mast-cell markers fall without symptom change (ch22 notes monotherapy futility prediction) |
| 8 | Pacing / energy-envelope management | PEM, E1, E4 | PEM (primary) | E1 terminal; not a chain | NEW (source: ch22 sec-04 `tab:map-cross-tier`; not in ch55 sec-10) | PEM episode count/severity falls ≥25% / 12 wk / kill if pacing adherence documented but PEM unchanged (would refute deferred-cost-PEM architecture) |
| 9 | Mitochondrial support stack (CoQ10+NADH+riboflavin+ALA) | E2, ATP | fatigue, PEM | E2→…; OVERLAP with #1 | OVERLAP (ch30 sec-03) | Day-2 CPET decline attenuates ≥30% / 12 wk / kill if 2-day CPET decline unchanged |
| 10 | Melatonin (0.5 mg) + sleep optimization | sleep | sleep (primary) | sleep terminal | NEW (source: ch22 sec-04; ch19 sec-06) | Actigraphy sleep efficiency rises ≥10% and unrefreshing-sleep score falls / 8 wk / kill if objective sleep improves without symptom change |

### List B — Research gaps (top leverage, class NONE or EXISTS-RISKY only)

| # | node | why no safe intervention exists (per text) | needed molecule/therapy | OVERLAP/NEW vs ch47 | Falsifiable prediction (measurement / timeframe / kill criterion) |
|---|------|-------------------------------------------|--------------------------|---------------------|------------------------------------------------------------------|
| 1 | NE_deficit | Only NRI/NET probes (atomoxetine) and BP-active prodrug (droxidopa); stimulants mask PEM (+77.1% brain-fog, −1.5% net PEM) | NE-restoring agent with no exertion-masking; or upstream (BH4/Cu) repair | NEW (no NE trial in ch47; ch25 sec-09 diagnostic only) | CSF NE Pathway index rises and fatigue+PEM improve without PEM-masking / 8 wk / kill if NE rises but cognition unchanged — refutes NE→cognition edge (Aregawi2026 cross_disease_only) |
| 2 | AAB (adrenergic-receptor autoantibody) | All interventions Category C/invasive; RCTs (rituximab, efgartigimod, TPE) negative; ~70% IA response uncontrolled | Autoantibody-selected trial (IA + BAFF block / efgartigimod) | OVERLAP (ch22 sec-02 subsec-01) but NEW as trial in ch47 | GPCR AAb functional activity falls ≥60% and PROMIS Fatigue improves ≥10 pts / 12 wk / kill if AAb falls without symptom change (per ch22 spec:efgartigimod) |
| 3 | NET (SLC6A2 variant) | No variant-specific therapy; only atomoxetine (probe) | Genotype-stratified NET-modulator; or NET-independent NE restoration | NEW (source: ch25 sec-09 subsec-02) | SLC6A2 LoF carriers respond to atomoxetine vs non-carriers / 8 wk / kill if genotype does not predict response |
| 4 | fatigue (terminal) | Only stimulants (PEM hazard) | Non-masking effort/motor-sustain therapy | OVERLAP (ch24 sec-16) but no trial in ch47 | Sustained fatigue improvement without PEM worsening / 12 wk / kill if benefit tracks arousal only (Kay2025 → arousal/reward, not capacity) |
| 5 | cognition (terminal) | Only stimulants/LDA (PEM hazard) | Cognitive-restoring agent targeting CBF/glutamate (not arousal) | OVERLAP (ch24 sec-16) | Objective cognitive score improves and baseline attention-network deficit present / 8 wk / kill if benefit on arousal scales only, not cognitive-control (ch24 `oq:stimulant-arousal-vs-cognitive-control`) |
| 6 | E5b (chronic activation) | No mechanism-specific therapy; early multimodal only | Anti-consolidation / lock-reversal (methyl-donor or epigenetic-safe) | OVERLAP (ch22 sec-03 subsec-08) but NEW as trial (ch47 has no epigenetic trial) | Methylation signature regresses and function improves / 18–24 mo / kill if signature stable or only symptomatic (ch47 aggressive-early-intervention is the closest trial) |
| 7 | TRPM3 channelopathy (prose) | Only LDN + pregnenolone sulfate; no approved TRPM3 modulator | TRPM3 agonist with tissue coverage (per ch22 gap) | NEW (ch22 dir: TRPM3 agonist trial proposed; not in ch47) | NK-cell TRPM3 patch-clamp normalizes and fatigue falls / 12 wk / kill if channel function normalizes without symptom change |
| 8 | Metabolic safe mode lock (prose) | MDC002 only, Phase I, not prescribable; itaconate/IDO shunt has no approved antagonist | Hypothalamic-setpoint reset / IDO-inhibitor | OVERLAP (ch22 sec-02 subsec-04) but NEW as trial | MDC002 Phase II improves function in AIMM-dominant subtype / 12 wk / kill if no AIMM-subtype enrichment signal |
| 9 | Epigenetic consolidation (prose) | No approved therapy tested in ME/CFS; rapamycin/spermidine untested here | Safe HDAC modulator / locus-specific methylation tool | NEW (ch22 `oq:epigenetic-gap`) | Consolidation-signature-high patients fail Tier-1 treatments that low-signature patients pass / prospective / kill if signature does not stratify response |
| 10 | Ferroptosis susceptibility (prose) | NONE found in Part III (source: ch19 sec-01 `tab:mechanism-classification`, tractability Low) | Ferroptosis inhibitor / iron chelation (research; source: ch19 sec-09 prop:hmgb1-ferroptosis-ode) | NEW | 4-HNE/MDA lipid-peroxidation markers fall and PEM severity falls / 12 wk / kill if markers fall without PEM change |

**List A entries: 10. List B entries: 10.**
**OVERLAP vs NEW — List A:** 6 OVERLAP, 4 NEW. **List B:** 3 OVERLAP, 7 NEW.

---

## 5. Patient applicability

Method: skim `patients/<name>/` summaries (index/README/known-features). No file-by-file inference; "case data not assessable" where no usable summary.

| intervention (List A) | patient | supporting evidence in case file | contraindication flags |
|-----------------------|---------|----------------------------------|------------------------|
| CoQ10/NADH; mitochondrial stack | yannick | severe ME/CFS, presumed mitochondrial dysfunction; current regimen includes CoQ10, riboflavin; methylphenidate + modafinil for energy | stimulant masking risk; autonomic dysregulation event Feb 2026 |
| CoQ10/NADH; mitochondrial stack | ursula | severe ME/CFS, multi-hit trajectory; current regimen includes mitochondrial support | paradoxical reactor — start at 1/4–1/10 dose |
| CoQ10/NADH; mitochondrial stack | amy-cordy | severe ME/CFS, gastroparesis (liquid-only), PEM-avoidance priority | Mestinon intolerant; prokinetic reluctance |
| CoQ10/NADH; mitochondrial stack | marie | intense fatigue, peripheral neuropathy, cold intolerance; iron-deficiency hypothesis flagged | hypothyroidism/iron deficiency must be excluded first (differential, not ME/CFS) |
| CoQ10/NADH; mitochondrial stack | aeiuno | narcolepsy-pattern sleep; segmental hypermobility | case data not assessable for fatigue phenotype (index dossier is health-summary, no ME/CFS staging) |
| CoQ10/NADH; mitochondrial stack | sven | pediatric ADHD+ASD profile, attention/processing-speed deficit | case data not assessable for ME/CFS pathway (documented as TDA/H+TSA, not staged ME/CFS) |
| Sapropterin (BH4) | marie | suspected adrenergic/muscarinic autoantibodies + small-fiber neuropathy; NE-relevant phenotype | no BH4 biomarker in case file; confirm before trial |
| Sapropterin (BH4) | ursula | POTS, SFN, elevated EBV; autonomic phenotype | paradoxical reactor |
| Copper bisglycinate | amy-cordy | gastroparesis/malabsorption (potential Zn:Cu imbalance) | check ratio first; Mestinon intolerant |
| Copper bisglycinate | marie | peripheral neuropathy, possible malabsorption | confirm Zn:Cu>10:1 |
| LDN / PEA | ursula | MCAS, SFN, immune phenotype; current LDN use caused **psychiatric adverse reaction** | LDN contraindicated in this patient (documented adverse reaction); PEA alternative unverified |
| LDN / PEA | yannick | neuroinflammation/immune modulation component; LDN in regimen per index | confirm current LDN dose context |
| LDN / PEA | amy-cordy | MCAS-type features | case data not assessable for LDN trial |
| tVNS / taVNS | ursula | POTS mitigated by ivabradine → autonomic target active | paradoxical reactor; device tolerance unknown |
| tVNS / taVNS | yannick | orthostatic intolerance, autonomic dysregulation → autonomic target active | recent critical autonomic event; monitor |
| Cromolyn / ketotifen | ursula | MCAS (tryptase-negative), histamine intolerance; Cimetidine EXCELLENT responder | aspirin contraindicated (HIT); paradoxical reactor |
| Cromolyn / ketotifen | amy-cordy | MCAS-type features; Mestinon intolerant | prokinetic caution |
| Pacing (energy envelope) | amy-cordy | refuses ER to avoid PEM crash; PEM central | none (core intervention) |
| Pacing (energy envelope) | yannick | activity-triggered PEM; swimming trial worsened cognitive PEM | none |
| Pacing (energy envelope) | ursula | multi-hit trajectory, bedbound periods | none |
| Melatonin + sleep optimization | aeiuno | narcolepsy-pattern sleep documented | none |
| Melatonin + sleep optimization | yannick | autonomic dysregulation during sleep-wake transition; sleep medicine referral | high melatonin doses may worsen sleep (ch22 cross-tier) |
| Melatonin + sleep optimization | sven | sleep/attention profile (ADHD+ASD) | not an ME/CFS indication as staged |

**NE-axis relevance summary:** yannick (lifelong stimulant, OI, autonomic dysregulation) and ursula (POTS, SFN, ivabradine) show the strongest evidence of an active noradrenergic/autonomic target; marie shows an adrenergic-autoantibody + small-fiber phenotype. aeiuno and sven have sleep/attention features but insufficient ME/CFS staging.

---

## 6. Limitations

1. **YAML artifacts are not the ch55 model.** ch55 sec-08/09/10 operate on the 64-variable ODE (ch53). The two YAML files (`ne-deficit-axis`, `pem-cascade`) are separate source artifacts; they do not participate in the ch55 ranking. The leverage analysis in §3 therefore runs on the DAG only and cannot be joined numerically to ch55's Sobol ranking.
2. **No orthostatic-intolerance node in any YAML.** The DAG explicitly excludes NE_deficit→autonomic_cardiovascular (Aregawi2026 null). Orthostatic intolerance — a cardinal ME/CFS symptom and a listed terminal — is unrepresented in the formal graph.
3. **EPC uses probabilities, not ordinal certainty bands.** Rule 4's chain-min rule is undefined for the EPC; §3b reports branch probabilities and flags the mismatch rather than fabricating bands.
4. **Entire DAG is LOW-CONFIDENCE.** Every upstream node's best path to any symptom is chain-min 0.25–0.30 (Low band) because it passes through the single NE_deficit→symptom edges, half of which are `cross_disease_only: true`.
5. **All downstream DAG edges except fatigue and PEM rest on animal or cross-disease evidence** (ne-deficit-axis.yaml, limitations).
6. **Prose-only nodes cannot be chain-min propagated** — no certainty values are attached to the 64-variable parameters in the readable prose; they exist only as $S_T$ rankings (a sensitivity index, not a certainty).
7. **Intervention classes derived by keyword search**, not by an authoritative treatment registry; absence of a keyword hit was treated as NONE only after checking ch22/ch30/ch31/ch33.
8. **No ME/CFS trial of sapropterin, copper, atomoxetine, or a NET/variant-stratified intervention exists** in the repo (NOT FOUND in ch47-proposed-studies).
9. **Patient data are heterogeneous**: aeiuno and sven lack ME/CFS staging; marie is a differential-diagnosis case (hypothyroidism/iron deficiency may explain the phenotype); ursula's paradoxical-reactor status invalidates several List A options.

---

## 7. Recommended next step for a human

**Highest-value List A entry — Sapropterin (± OTC BH4-recycling stack), target node BH4.**
It is the only List A target whose upstream node (BH4, chain-min 0.28) already carries a ready biomarker (urinary neopterin:biopterin) and a ch55-predicted synergy with LDN ($\mathcal{S}\approx0.35$), so a single small trial can test both the BH4→NE→symptom chain and a pre-registered combination.

**Highest-value List B entry — NE_deficit (norepinephrine-restoration trial), target node NE_deficit.**
It is the single highest-leverage node (5/5 symptoms) with the strongest evidence base (replicated CSF finding, Aregawi2026) yet has *no* dedicated ME/CFS trial — only diagnostic probes (atomoxetine/droxidopa) and PEM-masking stimulants.

---

### Provenance of analysis

- Parser: `/tmp/it_analysis.py` (PyYAML 6.0.3). Output reproduced verbatim in §3.
- Models parsed: `models/dag/ne-deficit-axis/ne-deficit-axis.yaml` (13 nodes, 12 edges), `models/epc/pem-cascade/pem-cascade.yaml` (6 events, 5 activities).
- Read-only on `src/`, `models/`, `patients/`, `contents/`. One new file created: this report.
