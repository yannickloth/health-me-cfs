# Hypothesis Subtree: Systemic Sclerosis (SSc)

**Origin:** `/integrate-topic` — autoimmune diseases plan, Tier 2 item #25
**Brainstorm file:** `content-staging/brainstorm-autoimmune-ssc-2026-05-03.md`
**Plan file:** `ops/plans/hypotheses-trees/autoimmune-diseases.md` (group root)
**Date:** 2026-05-03
**Parent topic:** autoimmune-diseases
**Child subtrees:** (none yet)

## Integration Context

**Priority:** 🟡 Medium
**Tier:** 2

**ME/CFS links:**
- Endothelial injury; TGF-β fibrosis
- Raynaud's phenomenon → vasospasm shared with ME/CFS cold sensitivity
- Anti-mitochondrial antibodies (subset) — overlap with PBC angle
- Fatigue as dominant SSc symptom independent of organ involvement
- IFN-I signature overlap — see @spec:ssc-ifn-fatigue-model in ch14d (already integrated)
- Complex III (CyB) mitochondrial deficit in SSc meeting ME/CFS criteria
- NOS3/eNOS endothelial dysfunction — direct connection to ME/CFS endothelial biology
- ADRA2A (α2A-adrenoreceptor) as Raynaud's genetic risk locus
- SSc cardiac autonomic neuropathy (50%) correlated with microvascular damage

**Target chapters:** ch14d-cross-disease (primary), ch04/ch08 differential diagnosis, ch06 energy, ch10 cardiovascular, ch20 biomarkers

**Note:** Partial integration already completed — `spec:ssc-ifn-fatigue-model` added to ch14d (commit 4a631f4). Full integration pass 2026-05-03.

**Status:** ✅ done

## Phase Tracking

| Phase | Status | Notes |
|-------|--------|-------|
| Phase 0 | ✅ | Plan: autoimmune-diseases.md; subtree updated |
| Phase 1 | ✅ | 7 papers: vanEeden2023SScMECFS, vanEeden2022fatigue, Kwakkenbos2025SScFatigue, Basta2018SScFatigueSysRev, Hartmann2023ADRA2A, Tervi2024RaynaudGWAS, Masini2021SScAutonomic |
| Phase 2 | ✅ | 6 environments in ch14d + 2 open questions; registry updated; bib + appendix-h updated |
| Phase 3 | ✅ | 41 ideas: brainstorm-autoimmune-ssc-2026-05-03.md |
| Phase 3a | ✅ | This file updated |
| Phase 4 | ✅ | H1/H2/H3/H5/R2/Bk1 integrated; Tier 3 treatment nodes (D1-D5, S1-S5, N1-N5, C1-C3, M1-M3, B1-B3, Bk2-Bk6) parked ↩️ — require separate integrate-topic cycles |
| Phase 5 | ✅ | Build: pre-existing SSL/network infrastructure failure (not caused by SSc changes; confirmed via git stash test) |
| Phase 6 | ✅ | 6a CONVERGED (review-convergence); 6b CONVERGED (adversarial, 5 rounds); 6c CONVERGED (review-typst, 3 rounds) |
| Phase 7 | ✅ | Changelog entry added to shared/changelog.typ |
| Phase 8 | ⬜ | Commit pending |

## Nodes

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
| prior | SSc IFN signature ME/CFS fatigue model | speculation | 0.30 | 4 | 2 | 3 | 2 | 2 | ✅ | — |
| H1 | Complex III convergent bottleneck | speculation | 0.35 | 5 | 3 | 4 | 4 | 2 | ✅ | — |
| H2 | ADRA2A vasospasm in ME/CFS OI | speculation | 0.30 | 4 | 3 | 3 | 3 | 3 | ✅ | — |
| H3 | eNOS/NOS3 shared endothelial substrate | speculation | 0.40 | 5 | 4 | 4 | 3 | 4 | ✅ | — |
| H4 | AMA subset bridges SSc/PBC/ME/CFS | speculation | 0.25 | 3 | 2 | 3 | 1 | 4 | ↩️ | no direct ME/CFS AMA data; park for PBC topic |
| H5 | CAN as hidden ME/CFS phenotype | speculation | 0.45 | 3 | 2 | 4 | 2 | 4 | ✅ | — |
| H6 | Nailfold capillaroscopy ME/CFS biomarker | speculation | 0.30 | 2 | 1 | 2 | 1 | 4 | ↩️ | no ME/CFS capillaroscopy data; park for biomarker topic |
| R1 | SSc-ME/CFS as tractable overlap cohort | open-question | n/a | 3 | 1 | 2 | 2 | 3 | ↩️ | subsumed in oq:pem-in-ssc |
| R2 | PEM testing in SSc cohorts | open-question | n/a | 2 | 1 | 3 | 1 | 2 | ✅ | — |
| R3 | MR: Raynaud loci → ME/CFS | open-question | n/a | 3 | 1 | 2 | 3 | 3 | ↩️ | mentioned in spec:adra2a prose; no standalone OQ added |
| R4 | sc-mito phenotyping across fatigue diseases | open-question | n/a | 4 | 1 | 3 | 3 | 3 | ↩️ | mentioned in spec:complex-iii limitations; no standalone OQ added |
| R5 | Cold provocation protocol in ME/CFS | open-question | n/a | 2 | 1 | 2 | 1 | 3 | ↩️ | lower priority; park for cold-phenotype future topic |
| D1 | α2A-antagonist for Raynaud ME/CFS | speculation | 0.15 | 2 | 2 | 1 | 1 | 1 | ↩️ | no ME/CFS α2A-antagonist data; park for vasospasm-treatment topic |
| D2 | Sapropterin (BH4) for eNOS uncoupling | speculation | 0.25 | 3 | 3 | 2 | 2 | 2 | ↩️ | BH4 already covered in Architecture C; cross-reference sufficient |
| D3 | LDN in SSc-ME/CFS targeted trial | speculation | 0.20 | 2 | 2 | 2 | 1 | 2 | ↩️ | LDN section in ch18 already exists; park as subgroup enrichment note |
| D4 | Riociguat sGC stimulator high-risk | speculation | 0.10 | 2 | 1 | 1 | 1 | 1 | 🚫 | cert 0.10 + safety risk too high; skip |
| D5 | CoQ10+riboflavin+idebenone Complex III | speculation | 0.30 | 3 | 3 | 2 | 2 | 2 | ↩️ | CoQ10/riboflavin in ch16; CyB-specific framing park for future pass |
| S1 | L-citrulline for endothelial phenotype | speculation | 0.35 | 3 | 3 | 2 | 2 | 2 | ↩️ | mentioned in spec:nos3 limitations; park for endothelial-treatment topic |
| S2 | Ubiquinol CoQ10 for CyB-deficit subgroup | speculation | 0.30 | 3 | 3 | 2 | 2 | 2 | ↩️ | CoQ10 in ch16; subgroup framing park for future pass |
| S3 | GlyNAC for mtROS/GSH restoration | speculation | 0.25 | 3 | 2 | 2 | 2 | 2 | ↩️ | GlyNAC in ch16; park for Complex III-subgroup framing |
| S4 | NMN/NR for NAD+ at Complex III | speculation | 0.20 | 3 | 2 | 2 | 2 | 1 | ↩️ | NAD+ in ch16/HSAT2; park for Complex III-subgroup framing |
| S5 | Riboflavin at migraine doses | speculation | 0.20 | 2 | 2 | 1 | 1 | 1 | ↩️ | low tx score; park |
| N1 | Heat therapy for cold-phenotype ME/CFS | speculation | 0.20 | 1 | 2 | 1 | 1 | 1 | ↩️ | heat in ch17 already; park |
| N2 | Slow diaphragmatic breathing for CAN | speculation | 0.40 | 2 | 3 | 2 | 2 | 2 | ↩️ | HRV biofeedback/breathing in ch17; CAN-specific framing park |
| N3 | Compression garments at calibrated pressures | speculation | 0.45 | 2 | 3 | 2 | 1 | 2 | ↩️ | compression in POTS section; park for vasospasm topic |
| N4 | Capillaroscopy-guided pacing | speculation | 0.15 | 1 | 1 | 1 | 1 | 2 | ↩️ | no ME/CFS capillaroscopy data; park |
| N5 | Cold-avoidance heated microenvironment | speculation | 0.30 | 1 | 3 | 1 | 1 | 1 | ↩️ | practical; park for patient self-management topic |
| C1 | Endothelial rescue stack | speculation | 0.25 | 2 | 3 | 2 | 2 | 1 | ↩️ | combination stack; park for endothelial-treatment future topic |
| C2 | Severity-tiered SSc-ME/CFS protocol | speculation | 0.30 | 1 | 3 | 1 | 1 | 1 | ↩️ | would require SSc-ME/CFS cohort; park for SSc clinical trial topic |
| C3 | IFN-I stratified treatment allocation | speculation | 0.20 | 2 | 2 | 2 | 2 | 3 | ↩️ | subsumed in oq:ifn-cyb-two-axis-stratifier; park |
| M1 | Microvascular perfusion ODE compartment | proposal | n/a | 4 | 2 | 3 | 5 | 2 | ↩️ | formalization topic; park for ODE extension cycle |
| M2 | Complex III saturation term in ETC model | proposal | n/a | 4 | 2 | 3 | 5 | 2 | ↩️ | formalization topic; park for ODE extension cycle |
| M3 | DAG: ADRA2A + NOS3 upstream genetic nodes | proposal | n/a | 3 | 1 | 2 | 4 | 3 | ↩️ | DAG topic; park for DAG extension cycle |
| B1 | PBC fatigue as ME/CFS translational source | open-question | n/a | 3 | 2 | 3 | 1 | 2 | ↩️ | park as topic for autoimmune-pbc integrate-topic |
| B2 | POTS-Raynaud co-occurrence autonomic bridge | speculation | 0.35 | 3 | 2 | 3 | 2 | 2 | ↩️ | autonomic bridge already in ch14d autonomic section; park |
| B3 | SSc microvascular trajectory as ME/CFS template | speculation | 0.20 | 2 | 1 | 2 | 2 | 3 | ↩️ | subsumed in sec:ssc-mecfs prose; park |
| Bk1 | IFN-I + CyB two-axis stratifier | proposal | n/a | 4 | 3 | 4 | 3 | 4 | ✅ | — |
| Bk2 | Plasma ADMA/SDMA arginine ratio | proposal | n/a | 3 | 2 | 2 | 2 | 4 | ↩️ | mentioned in spec:nos3 prediction; no standalone OQ; park |
| Bk3 | Composite autonomic score (Ewing+COMPASS+HRV) | proposal | n/a | 3 | 2 | 3 | 2 | 5 | ↩️ | mentioned in spec:can limitations; park for autonomic-biomarker topic |
| Bk4 | Nailfold capillaroscopy density index | proposal | n/a | 2 | 1 | 2 | 1 | 3 | ↩️ | no ME/CFS capillaroscopy data; park |
| Bk5 | AMA panel add-on to ME/CFS workup | proposal | n/a | 2 | 2 | 2 | 1 | 3 | ↩️ | subsumed in H4 (AMA subset); park |
| Bk6 | 2-day CPET + genetic risk score composite | proposal | n/a | 2 | 1 | 2 | 2 | 3 | ↩️ | CPET already in standard workup; park |
