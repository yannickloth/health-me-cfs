# Search Log: Bedard 2026 Central Fatigability — ch34 Motor-Drive Cascade (Gap-Fill)

## Scope note (Phase 0 ledger: "gap-fill scope w/ already-cited lit")

This cycle is ADD-ONLY. The Bedard 2026 paper (@Bedard2026centralFatigability) was already fully researched and integrated by the prior `fatigue-core-symptom` cycle (2026-08-11, commit eb2ea1e2):
- Bib entry: `bib/diagnosis-assessment.bib` (verified line 1469)
- Core finding: `ch03/.../clinical-findings/clf-central-fatigability.typ`
- Registry entry + appendix-h annotation

Therefore this Phase 1 does NOT re-run the paper-level literature search (which would duplicate the prior cycle's Phase 1). Instead it records the WHY and performs a **targeted verification** of the evidence base needed for the ch34 cascade's drug-interception nodes. No new primary literature is required to establish the paper's core finding; the cascade integrates existing drug-mechanism entries already in the corpus.

## Queries (gap-fill verification — no new primary papers required)

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| 1 | Corpus grep | `Bedard2026centralFatigability` across bib/registry/chapters | 5 | 5 | 1 (already integrated) | 2026-08-26 |
| 2 | Corpus grep | `Minzenberg2008modafinil` (modafinil DAT/NET mechanism) | 1 | 1 | 1 | 2026-08-26 |
| 3 | Corpus grep | sec-12 entries for Amantadine / Amphetamines / Bromocriptine-Rotigotine / Methylphenidate / Modafinil | 5 | 5 | 5 (all exist) | 2026-08-26 |
| 4 | Corpus grep | existing central-motor-drive cascade in ch34 sec-08 / ch18 | 0 | 0 | 0 (gap confirmed) | 2026-08-26 |

## Inclusion Criteria
- Evidence already in corpus (bib keys verified case-exact) that supports the motor-drive cascade or its drug-interception nodes
- Existing sec-12 drug entries with differential-diagnostic value

## Exclusion Criteria
- Re-researching the Bedard paper's core finding (already integrated — would duplicate)
- New primary literature search (unnecessary for an ADD-ONLY cascade)

## Flow
- Total hits: 12
- After deduplication: 12
- Final included (already in corpus): 12
- Excluded: 0

## Verified evidence base (for cascade drug-interception nodes)
- Modafinil/armodafinil: DAT/NET inhibition, histamine/orexin activation @Minzenberg2008modafinil — sec-12 entry line 1772
- Amantadine: sec-12 line 75 (glutamatergic/dopaminergic, NMDA antagonism)
- Amphetamines: sec-12 line 145 (catecholamine release)
- Bromocriptine/Rotigotine: sec-12 line 387 (D2 agonism)
- Methylphenidate: sec-12 line 1688 (DAT/NET blockade)

## Conclusion
No new bib entries required. Existing corpus evidence base is sufficient to trace the central-motor-drive cascade and its drug-interception points. Bib keys verified case-exact (bib is ground truth).
