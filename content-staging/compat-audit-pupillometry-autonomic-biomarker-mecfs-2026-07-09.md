# Hypothesis Compatibility Audit: Pupillometry as Autonomic Biomarker

**Date:** 2026-07-09
**Topic slug:** pupillometry-autonomic-biomarker-mecfs

## INTERNAL SEARCH

**New hypotheses audited:** 4
1. H1: `spec:pupillometry-biomarker` — PLR as ME/CFS autonomic biomarker (cert 0.30)
2. H2: `oq:pupillometry-pem` — PLR during PEM provocation (cert n/a, OQ)
3. H3: `oq:plr-gpcr-bioassay` — PLR as GPCR autoantibody functional bioassay (cert n/a, OQ)
4. H4: `spec:pupillometry-lc-readout` — Pupillometry as noninvasive LC readout (cert 0.25)

**Registry size examined:** ~400 entries; overlapped via mechanism term index

**Terms searched:** GPCR, autoantibody, M3 muscarinic, α1-adrenergic, pupil, locus coeruleus, LC, noradrenergic, autonomic biomarker, baroreflex, parasympathetic, PEM, end-organ, muscarinic acetylcholine receptor

**Matches examined:** ~60 candidate pairs (≥1 shared mechanism term), narrowed to 18 classified after reading context.

## PAIRWISE RELATIONSHIPS

### H1: Pupillometry as ME/CFS Autonomic Biomarker

| vs existing | Relation | Cert | Rationale |
|---|---|---|---|
| GPCR Autoantibody Cascade (root cause, ch07, registry) | **Reinforcement** | 0.55 | H1 provides noninvasive end-organ readout of the same GPCR autoantibody receptors documented in ME/CFS. If M3/α1 autoantibodies impair autonomic signaling, pupillometry should detect it. Both converge on "GPCR autoantibodies → autonomic dysfunction." Medium cert: GPCR literature has contradictory signals (Germain 2025 null), weakening the shared premise. |
| M3/β2 Autoantibody Subtypes predict autonomic phenotype (ch07, cert 0.40) | **Reinforcement** | 0.50 | H1's M3 vs α1 double dissociation (idea 1.4, brainstom) directly predicts that AAb subtype predicts PLR profile — same mechanism, orthogonal measurement. Both propose subtype-specific endotypes. |
| G28 Anti-ANT1 Autoantibodies (ch06, cert speculative) | **Independent** | — | Different autoantibody target (mitochondrial ANT vs extracellular GPCR). No shared mechanism pathway. |
| HRV/Baroreflex as Autonomic Biomarker (ch29, existing) | **Reinforcement** | 0.40 | Both measure autonomic function noninvasively. HRV measures cardiac-level output; PLR measures end-organ receptor function. Complementary — H1 adds receptor-level specificity HRV lacks. Low cert because no direct PLR-vs-HRV comparison in ME/CFS. |
| GPCR Autoantibodies → Mast Cell Activation (ch07, cert 0.30) | **Feed-into** | 0.25 | If GPCR autoantibodies chronically engage M3/α1 receptors on pupil muscles, the same antibodies could engage M3/β2 receptors on mast cells → degranulation. Pupillometry could serve as a proxy for generalized autoantibody-mediated receptor engagement. Highly speculative — receptor specificity of autoantibodies by tissue type unknown. |

### H2: Pupillometry During PEM Provocation

| vs existing | Relation | Cert | Rationale |
|---|---|---|---|
| CPET-2 as Objective PEM Biomarker (ch29, ch14d) | **Reinforcement** | 0.50 | Both seek objective PEM biomarkers. CPET-2 measures cardiopulmonary; PLR measures autonomic receptor function. PLR could capture autonomic component of PEM CPET misses. |
| LC-NE Circadian Oscillation Collapse (ch08, cert 0.30) | **Reinforcement** | 0.35 | H2's post-exertion PLR measurement maps onto the temporal dynamics of NE oscillation collapse during PEM. PLR changes post-CPET could reflect LC-NE oscillation recovery failure. |
| Vesicular NE Deficiency as PEM Mechanism (ch08, cert 0.35) | **Independent** | — | Different measurement target: H2 measures pupil (autonomic end-organ); vesicular hypothesis concerns intracellular NE synthesis. Could be connected if PLR reflects NE availability, but pathway too indirect. |

### H3: PLR as GPCR Autoantibody Functional Bioassay

| vs existing | Relation | Cert | Rationale |
|---|---|---|---|
| GPCR Autoantibody Methodological Conflict (ch07, ch14d) | **Reinforcement** | 0.70 | H3 directly addresses the central question of the existing GPCR conflict: does binding = functional impairment? PLR provides the in vivo functional readout neither ELISA (binding only) nor REAP (binding only) can. If ELISA-positive patients show normal PLR, autoantibodies are non-pathogenic — resolving a core controversy. Highest-relationship-cert pair in this audit. |
| Immunoadsorption for Autoantibody-Mediated ME/CFS (ch07, registry) | **Reinforcement** | 0.50 | H3 proposes PLR as bioassay for treatment response prediction. If PLR improves post-immunoadsorption in responders but not non-responders, PLR becomes a theranostic biomarker for autoantibody-directed therapy. |
| Autoantibodies → Monocyte Activation → Cytokine → Fatigue (Hackel 2025, ch07, cert 0.40) | **Independent** | — | Different pathway: Hackel → inflammatory cytokines; H3 → receptor-level autonomic impairment. Both could be true simultaneously but operate through different mechanisms. |

### H4: Pupillometry as Noninvasive LC Readout

| vs existing | Relation | Cert | Rationale |
|---|---|---|---|
| LC Dysfunction in ME/CFS (ch08, cert 0.40) | **Reinforcement** | 0.55 | H4 proposes noninvasive readout of the exact pathway LC dysfunction hypothesis implicates. CSF NE deficiency → predicted pupil dilation impairment. Provides validation path for LC hypothesis without repeat lumbar puncture. |
| Central-Peripheral Sympathetic Mismatch (ch08, cert 0.50) | **Reinforcement** | 0.40 | H4's pupil baseline diameter (tonic LC output) and dilation velocity (phasic LC bursts) could distinguish central (LC, pupil abnormal) from peripheral (LC normal, pupil normal) sympathetic dysfunction — directly testing the two-compartment model. |
| NE Circadian Oscillation Collapse (ch08, cert 0.30) | **Feed-into** | 0.35 | NE oscillation drives pupil diameter variation. If LC-NE oscillation is flattened in ME/CFS, pupil diameter oscillation amplitude should be reduced — PLR provides a noninvasive observable for the NE oscillation hypothesis. |
| LC-NE-to-Spleen Immune Axis (ch08, cert 0.20) | **Independent** | — | H4 measures LC output via pupil; splenic axis concerns downstream LC projections. Different measurement targets. Could connect if pupil dilation predicts splenic NE tone, but pathway unknown. |
| Orexin-Vasomotion Triad (ch15, cert 0.30, references "infraslow pupil oscillations") | **Reinforcement** | 0.30 | Existing hypothesis already identifies pupil oscillations as LC NE proxy. H4 provides the mechanistic framework and measurement methodology. Existing text cross-reference already added (Phase 6). |
| CCI → SCG Compression → Sympathetic Overactivity (ch08, cert 0.40) | **Conflict** | 0.25 | CCI hypothesis predicts increased sympathetic pupil output (SCG compression); H4's LC deficiency predicts decreased pupil output (low NE). If both are true, they could partially cancel. Low conflict cert: CCI affects peripheral SCG; H4 concerns central LC — they operate at different levels of the neuroaxis. Different patient subsets likely. |

## SUMMARY

- **Reinforcement pairs:** 10 (H1: 3, H2: 2, H3: 2, H4: 3)
- **Feed-into pairs:** 2 (H1→MCAS: 1, H4→NE circadian: 1)
- **Conflict pairs:** 1 (H4 vs CCI-SCG, cert 0.25 — likely different patient subsets)
- **Independent pairs:** 5
- **Independents reclassified:** 0 (all shared-mechanism-term pairs with context reading confirmed independence)

### Key reinforcement clusters

**Cluster A: GPCR Autoantibody Cascade** (H1, H3)
- H1 (pupillometry biomarker) + H3 (functional bioassay) + existing GPCR autoantibody framework
- Theme: GPCR autoantibodies impair autonomic receptors → measurable at end-organ (pupil) → provides in vivo functional readout
- Cluster certainty (mean of pairwise): 0.58

**Cluster B: LC-Noradrenergic Function** (H4)
- H4 + LC dysfunction hypothesis + central-peripheral mismatch hypothesis + NE circadian hypothesis
- Theme: Central noradrenergic deficiency → measurable as pupil dynamics → noninvasive LC readout
- Cluster certainty: 0.40

**Cluster C: Autonomic Biomarker Complementarity** (H1, H2)
- H1 + H2 + existing HRV/baroreflex biomarker + CPET-2 PEM biomarker
- Theme: Multiple complementary objective autonomic/PEM measures — PLR adds receptor-level specificity
- Cluster certainty: 0.42
