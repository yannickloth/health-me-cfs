# Pathway-to-Drug Trace: T-Cell Mitochondrial Exhaustion

**Topic slug:** `tcell-mitochondrial-exhaustion`
**Date:** 2026-07-26
**Phase:** 5d — Pathway-to-drug tracing

## Cascade Branch: DRP1-Mediated Mitochondrial Fragmentation → T-Cell Exhaustion

```
Post-infectious trigger (viral reactivation, ER stress)
  → DRP1 activation (Schreiner 2020, PBMCs)
    → Mitochondrial fragmentation
      → ETC disruption → ROS (Shankar 2025, memory lymphocytes)
        → pERK → DRP1(Ser616) phosphorylation (untested in ME/CFS)
          → Sustained fission ("DRP1-ROS-pERK loop")
      → Failed metabolic reprogramming upon activation (Mandarano 2020)
      → Epigenetic exhaustion: TOX/EOMES/TCF7 (Iu 2024)
        → Impaired CD8+ effector function (Gil 2024)
          → Impaired immune surveillance and viral clearance (hypothesis)
```

## Drug → Node Pairs

| Drug | Node | Mechanism | Evidence | Certainty |
|------|------|-----------|----------|-----------|
| **Metformin** | AMPK → MFF → DRP1 antagonism | AMPK phosphorylates MFF at Ser155/Ser172, blocking DRP1 recruitment → mitochondrial fusion promotion. Also: AMPK → PGC-1α → TFAM → mitochondrial biogenesis. | Shankar 2025 (attenuates T-cell hyperproliferation in vitro, cert 0.75). AMPK → MFF → anti-DRP1 established (Toyama 2016, Science). PGC-1α → mito biogenesis in T cells (Pearce 2013, Science). | 0.25 (mechanism plausible; clinical T-cell endpoint data in ME/CFS: none) |
| **Mdivi-1** | DRP1 GTPase | Direct DRP1 inhibitor — blocks DRP1 GTPase activity and prevents DRP1 translocation to mitochondria. | Preclinical: >300 publications in ischemia-reperfusion, neurodegeneration, sepsis. No ME/CFS data, no human dosing data. Ex vivo proof-of-concept feasible (weeks). | 0.20 (mechanistic probe only; no ME/CFS or human data) |
| **NAC (N-acetylcysteine)** | ROS → glutathione | Glutathione precursor — reduces ROS, breaks DRP1-ROS-pERK loop at ROS node. | Gil 2024 (nebulized antioxidant case series, n=8, cert 0.40). HIV precedent: NAC trials partially restored CD4+/CD8+ counts (Breitkreuz 2000, De Rosa 2000). | 0.25 (ROS is documented in ME/CFS lymphocytes; NAC clinical precedent exists but low-quality) |
| **CoQ10** | Complex I/III bypass | Electron transport chain bypass — reduces electron leak at Complex I/III, reduces ROS production. | Pre-existing in paper (ch14b). No T-cell-specific ME/CFS data. | 0.15 (T-cell-specific: no data) |

## Discriminating Probes

| Probe | What it discriminates | Prediction if fission is rate-limiting |
|-------|----------------------|----------------------------------------|
| **Ex vivo mdivi-1** (10-25 µM, 24h) on CD8+ TEM | DRP1-dependent vs DRP1-independent exhaustion | Mitochondrial network restoration (MiNA mean branch length ↑ ≥25%), TOX expression ↓ ≥20%, IFNγ production ↑ ≥30% |
| **Metformin ex vivo** (1 mM, 24h) with p-AMPK measurement | AMPK-dependent vs AMPK-independent pathway | p-AMPK(T172) ↑, MFF(Ser172) phosphorylation ↑, mitochondrial fusion → if p-AMPK normal but fragmentation persists → lesion is downstream of AMPK (DRP1 constitutively active) |
| **NAC ex vivo** (5 mM, 24h) on CD8+ TEM | ROS-dependent vs ROS-independent fission | If ROS quenched but mito still fragmented → fission is maintained by non-ROS mechanism (calcium, DRP1 mutations, or irreversible cristae damage) |

## Cross-Cascade Integration

This trace intersects with:
- sec-02 mitochondrial hypotheses (aimm-Na-Ca cascade, NAD depletion, iron redox) — shared upstream triggers (ER stress, oxidative stress, mitochondrial dysfunction)
- sec-03 autoimmune hypotheses (if CD8+ dysfunction permits autoantibody production through impaired regulatory clearance)
- sec-06 autonomic hypotheses (CNS-primary model: sympathetic overactivity → β2AR → cAMP → suppresses T-cell mitochondria)

## Ch30 Modifications

- Existing metformin sec-12 entry (line 1415) augmented with T-cell-specific differential diagnostic signal.
- No new cascade subsection created (data insufficient — DRP1 in primary CD8+ TEM cells never measured; drug signals are preclinical).
