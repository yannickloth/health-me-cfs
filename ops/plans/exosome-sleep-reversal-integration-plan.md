# Exosome-Mediated Sleep Deprivation Reversal Integration Plan

**Purpose:** Integrate Kang et al. 2026 finding that RVG-targeted engineered exosomes carrying HSP70 mRNA can cross BBB and reverse sleep-deprivation-induced neuroinflammation/cognitive deficits into the ME/CFS paper.

**Target chapters:** ch08-neurological.typ, ch18-emerging-therapies.typ, ch25-translational-findings.typ, ch25b-proposed-studies.typ, ch11-gut-microbiome.typ, ch16-supplements-nutraceuticals.typ, ch30-integrated-systems.typ

**Parent topic:** root

## Phase 1 papers (3)
| # | Paper | Certainty |
|---|-------|-----------|
| 1 | Kang 2026 - HSP70 mRNA exosomes reverse SD damage | 0.55 |
| 2 | Ramos-Zaldívar 2022 - EV BBB crossing review | 0.70 |
| 3 | Sanadgol 2025 - Exosomes for brain-targeted NA delivery | 0.70 |

## Phase 2 environments added (7)
- `spec:engineered-exosome-bbb-mrna` (cert 0.55) in ch08
- `spec:exosome-biogenesis-impairment` (cert 0.25) in ch07
- `spec:engineered-exosome-cns-therapy` (cert 0.30) in ch18
- `spec:hsp70-inducers` (cert 0.45) in ch18
- `spec:pparg-exosome-uptake` (cert 0.20) in ch18
- `spec:exosome-biomarker-panel` (cert 0.35) in ch20
- `spec:exosomal-hsp70-biomarker` (cert 0.35) in ch20

## Phase 4b retrospective adaptation (7)
- BBB vulnerability bumped 0.35→0.40
- Endothelial ApoExos bumped 0.35→0.40
- Engineered exosome cert bumped 0.50→0.55
- HSP70 inducers cert bumped 0.40→0.45
- 3 citation insertions (Ramos-Zaldívar, Sanadgol)

## Phase 4c cross-hypothesis compatibility (16 pairs, 4 adjustments)
- R1 (ApoExos): 0.35→0.40
- N1 (exosome BBB mRNA): 0.50→0.55
- R6 (BBB vulnerability): 0.35→0.40
- N6 (HSP70 inducers): 0.40→0.45
- 1 tension flagged: HSAT2-exosome vs biogenesis impairment

## Phase 5 build: PASS

## Phase 6 review: PASS (0 findings, build passes)

## Tracking table

| # | Idea / hypothesis | Tier | Cert | Status | Notes |
|---|-------------------|------|------|--------|-------|
| 1.1 | RVG-HSP70 exosomes reverse ME/CFS neuroinflammation | 1 | 0.68 | ✅ done | Integrated as spec:engineered-exosome-bbb-mrna + spec:engineered-exosome-cns-therapy |
| 1.2 | Exosome-HSP70 restores glymphatic clearance | 1 | 0.62 | ✅ done | Integrated into ch25 glymphatic reversibility note |
| 1.3 | Exosomal HSP70 predicts sleep phenotype (biomarker) | 1 | 0.71 | ✅ done | Integrated as spec:exosomal-hsp70-biomarker in ch20 |
| 1.4 | Dose-response curve for exosome CNS penetration | 1 | 0.88 | ✅ done | Study E-1 in ch25b proposed studies (iPSC cargo screening) |
| 1.5 | HSP70-inducing drugs + exosome delivery synergy | 1 | 0.65 | ✅ done | Integrated as spec:hsp70-inducers in ch18 |
| 1.6 | Exosome cargo timing relative to sleep | 1 | 0.75 | ✅ done | Study E-4 in ch25b (circadian timing of administration) |
| 1.7 | Heat therapy enhances exosome HSP70 loading | 1 | 0.73 | ↩️ | Parked — overlaps existing heat/HSP70 content; not separately integrated |
| 1.8 | Impaired exosome release in ME/CFS | 1 | 0.58 | ✅ done | Integrated as spec:exosome-biogenesis-impairment in ch07 |
| 2.1 | Alzheimer's glymphatic-exosome synergy | 2 | 0.54 | ✅ done | Integrated as spec:alzheimers-glymphatic-exosome in ch08 |
| 2.2 | Exosome-mediated neuroimmune feedback loop (ODE) | 2 | 0.61 | ✅ done | Integrated as spec:exosome-ode-feedback-loop in ch30 |
| 2.3 | Selenium enhances exosome HSP70 stability | 2 | 0.51 | ✅ done | Integrated as spec:selenium-exosome-hsp70 in ch16 |
| 2.4 | Cell source optimization for exosome yield | 2 | 0.69 | ↩️ | Parked — research infrastructure; covered by ch25b study programme |
| 2.5 | PPARγ agonists enhance exosome uptake | 2 | 0.56 | ✅ done | Integrated as spec:pparg-exosome-uptake in ch18 |
| 2.6 | Vagus nerve stimulation + exosome timing | 2 | 0.52 | ✅ done | Integrated as open-question in ch18 |
| 2.7 | Multi-analyte exosome panel stratifies ME/CFS | 2 | 0.59 | ✅ done | Integrated as spec:exosome-biomarker-panel in ch20 |
| 2.8 | Exosome resistance in severe ME/CFS | 2 | 0.47 | ✅ done | Merged into spec:exosome-biogenesis-impairment in ch07 |
| 2.9 | Stochastic exosome crossing with BBB heterogeneity | 2 | 0.55 | ✅ done | Integrated as spec:stochastic-bbb-exosome in ch30 |
| 2.10 | Exosomes + sleep hygiene synergistic | 2 | 0.63 | ✅ done | Integrated in ch25 glymphatic reversibility note |
| 2.11 | Polyphenols enhance exosome loading | 2 | 0.49 | ✅ done | Integrated as spec:polyphenol-exosome-loading in ch16 |
| 2.12 | Exosome manufacturing scalability | 2 | 0.82 | ↩️ | Parked — research infrastructure; noted in ch18 limitations |
| 3.1 | Exosome-mediated BDNF gene therapy | 3 | 0.32 | ✅ done | Integrated as spec:exosome-bdnf-gene-therapy in ch18 |
| 3.2 | Exosome cross-talk with gut microbiome | 3 | 0.28 | ✅ done | Integrated as spec:exosome-gut-microbiome in ch11 |
| 3.3 | Long COVID exosome biomarker overlap | 3 | 0.41 | ✅ done | Integrated as spec:long-covid-exosome-overlap in ch08 |
| 3.4 | Ultrasound-targeted exosome delivery | 3 | 0.36 | ✅ done | Integrated as spec:ultrasound-exosome-delivery in ch18 |
| 3.5 | Exosomes + mitochondrial biogenesis agents | 3 | 0.44 | ✅ done | Integrated as spec:exosome-mitochondrial-combo in ch18 |
| 3.6 | Exosome engineering beyond RVG targeting | 3 | 0.39 | ✅ done | Integrated as spec:alternative-exosome-targeting in ch18 |
| 3.7 | Exosome surface proteome signature | 3 | 0.31 | ✅ done | Integrated as spec:exosome-surface-proteome in ch08 |
| 3.8 | Exosome-mediated viral clearance | 3 | 0.29 | ✅ done | Integrated as spec:exosome-antiviral-cns in ch18 |
| 3.9 | Exosome PK/PD coupling model | 3 | 0.46 | ✅ done | Integrated as spec:exosome-pkpd-model in ch30 |
| 3.10 | Omega-3 enhances exosome membrane fluidity | 3 | 0.38 | ✅ done | Integrated as spec:omega3-exosome-fluidity in ch16 |

## Summary

30/30 ideas integrated or parked:
- ✅ Integrated: 27
- ↩️ Parked: 3 (1.7 heat loading — overlaps existing content; 2.4 cell source — infrastructure; 2.12 manufacturing — infrastructure)
- 🚫 Skipped: 0
