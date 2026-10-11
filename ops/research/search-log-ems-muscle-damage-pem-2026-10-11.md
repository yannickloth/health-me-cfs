# Search Log: EMS Micro-Tears and PEM Pathway (2026-10-11)

**Topic slug:** `ems-muscle-damage-pem`
**Phase:** 1 (Literature Research)

## Rival Framings (Step 0)
| # | Framing | Claim | Papers |
|---|---------|-------|--------|
| F1 | Damage-parity | EMS induces muscle micro-tears (CK/DOMS/histology) comparable to eccentric exercise → same PEM pathway | Nosaka2011, Vanderthommen2015, Pfeifer2024 |
| F2 | Intensity-dependent | EMS damage only above a threshold; low-intensity NMES is non-damaging | Fessard2025 |
| F3 | Training-adaptation | Repeated bouts confer protection (repeated-bout effect), so damage is a first-exposure phenomenon | Vanderthommen2015, Nosaka2011 |

## Queries

| # | Database | Query | Hits | Included |
|---|----------|-------|------|----------|
| 1 | PubMed | neuromuscular electrical stimulation muscle damage creatine kinase delayed onset muscle soreness | 2 | 1 (Vanderthommen2015) |
| 2 | PubMed | muscle damage induced by electrical stimulation | 544 | 3 (Nosaka2011, Pfeifer2024, Fessard2025) |

## Inclusion / Exclusion
- In: peer-reviewed, addresses electrical-stimulation-induced muscle damage (histology, CK, DOMS, myofiber injury) or its intensity-dependence.
- Out: cardiac/multi-organ electrical conditioning, TENS-recovery trials (Shahnavazi2026), in-silico 3D-bioengineered-muscle platforms (Myo-MOVES).

## Coverage Declaration
- Opened: PubMed (2 queries). Not opened: trial registries, non-EN literature, gray literature.

## Flow
- Hits: 546 → screened 8 → included 4 (Nosaka2011, Vanderthommen2015, Fessard2025, Pfeifer2024). Deduped against corpus DOMS stream (Armstrong1984/Clarkson2002/Cheung2003/Hotfiel2018 already present).

## Per-paper certainty (raw / pop. weight / discounted)
| Key | Raw | Tier (cap) | Weight | Discounted |
|-----|-----|-----------|--------|-----------|
| Nosaka2011ESmuscleDamage | 0.50 | narrative (0.50) | 0.75 | 0.38 |
| Vanderthommen2015NMESrepeatedBout | 0.50 | rct (0.85) | 0.75 | 0.38 |
| Fessard2025NMESnoDamage | 0.40 | animal (0.40) | 0.40 | 0.16 |
| Pfeifer2024ESmyofiberDamage | 0.50 | rct (0.85) | 0.75 | 0.38 |

## Re-open recheck — 2026-10-11 (run as-if-fresh; stop where data says)
- Opened prior blind spots: ClinicalTrials.gov API v2, preprints.
- Trial registries: no EMS/NMES muscle-damage study in ME/CFS.
- New candidates screened, none included: 42757634 (NMES dialysis), 42551185 (central fatigability — not damage), 42561257/42851292/42543542 (healthy/general NMES physiology).
- Decision: unchanged — PARTIAL (100% papers <0.40 discounted; general/animal). See `tmp/synthesis-ems-muscle-damage-pem-recheck-2026-10-11.md`.
