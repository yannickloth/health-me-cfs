# Literature Summary: MCAS Stack — Drug Mechanisms, Workstream 1 (Receptor Gaps & Cross-Arm Interactions)

**Topic slug:** `mcas-stack-drug-mechanisms`
**Workstream:** 1 of 3
**Date:** 2026-09-29
**Scope:** Whether the standard MCAS "stack" (H1 + H2 + CysLT1 blockade) leaves receptor/mediator gaps, and how the arms cross-talk.

---

## Per-Idea Verdicts

### A1 — Histamine H4 receptor and H4 antagonists
**Verdict: SUPPORTED (strong, but preclinical/general-population).**

H4R is expressed on mast cells, basophils, eosinophils, and Th2 cells and mediates chemotaxis, itch, and Th2 inflammation — functions H1 blockade does not reach. Combined H1+H4 antagonism was as effective as prednisolone in one model; a phase II H4R antagonist (JNJ39758979) was markedly anti-pruritic. No H4R antagonist is approved; izuforant is in phase I. The H4R gap is real and mechanistically well-documented, but entirely general-population/preclinical — no MCAS or ME/CFS-specific data.

| Paper | Raw cert | Population | Discounted |
|-------|---------|-----------|-----------|
| Gibbs2012H4MastBasophil | 0.60 | general | 0.45 |
| Cowden2010H4Pruritus | 0.65 | animal | 0.33 |
| Ohsawa2014H1H4AtopicDerm | 0.60 | general | 0.45 |
| Walter2011H4Inflammation | 0.55 | general | 0.41 |
| Jin2024IzuforantH4R | 0.55 | general | 0.41 |
| Mehta2020H4Enigmatic | 0.55 | general | 0.41 |

### A2 — "Mediator escape": tryptase and PGD2 not blocked by H1/H2/CysLT1
**Verdict: SUPPORTED.**

Tryptase signals via PAR-2 to microglia/neuroinflammation (rat models), independent of histamine receptors; PGD2 acts via DP1/CRTH2/TP receptors, none of which antihistamines or CysLT1 antagonists block. This is the core mechanism behind the "stack leaves mediators unblocked" premise. All evidence animal or review — no human MCAS/ME/CFS data for tryptase/PGD2 blockade specifically (though PGD2 elevation in POTS is already in bib: Kohno2021potsmast).

| Paper | Raw cert | Population | Discounted |
|-------|---------|-----------|-----------|
| Ocak2020TryptasePAR2Neuroinflammation | 0.55 | animal | 0.28 |
| Qin2021TryptaseMicrogliaPAR2 | 0.55 | animal | 0.28 |
| Lakatos2025MicrogliaMast | 0.55 | general | 0.41 |
| Kupczyk2017PGD2CRTH2 | 0.60 | general | 0.45 |

### A3 — DAO / HNMT clearance vs receptor blockade
**Verdict: SUPPORTED (clearance side well-established; HNMT-specific HIT link thin).**

DAO is the main enzyme for ingested/extracellular histamine; HNMT is cytosolic (intracellular only). DAO deficiency produces allergy-mimicking symptoms responsive to low-histamine diet. Serum DAO is an unreliable diagnostic (Rentzos 2024). HNMT Thr105Ile is a recognised reduced-activity variant, but its literature is dominated by CNS disorders (Parkinson/ADHD), not histamine intolerance — an honest gap.

| Paper | Raw cert | Population | Discounted |
|-------|---------|-----------|-----------|
| Maintz2007HistamineIntolerance | 0.65 | general | 0.49 |
| Rentzos2024DAOMeasurement | 0.55 | general | 0.41 |
| Zybul2026DAOGastro | 0.55 | general | 0.41 |
| ProtasioNetto2026HITFibromyalgia | 0.45 | FM | 0.36 |
| Kadiyska2025AOC1HNMT | 0.45 | general | 0.34 |

### B1 — Copper → DAO → histamine
**Verdict: PARTIAL / MORE COMPLEX THAN HYPOTHESIZED.**

DAO is a copper-dependent amine oxidase (structural confirmation 2025). But the copper→histamine link in the literature is NOT the simple "copper deficiency → DAO loss → histamine accumulation" path. Instead: (a) copper regulates mast-cell *tryptase* via MITF, not histamine storage or degranulation (Hu Frisk 2017); (b) rat copper deficiency increases mast-cell *number*, not per-cell histamine. Direct human "copper deficiency → histamine intolerance" evidence is absent. Copper does intersect mast-cell biology, but via tryptase and mast-cell density, not via DAO-dependent histamine clearance as hypothesised.

| Paper | Raw cert | Population | Discounted |
|-------|---------|-----------|-----------|
| HuFrisk2017CopperTryptase | 0.60 | in vitro | 0.24 |
| Schuschke1994CopperMastCell | 0.50 | animal | 0.25 |
| Murakawa2025CopperAmineOxidase | 0.55 | in vitro | 0.22 |

### B2 — Histamine redistribution: H1 blockade shifts histamine to H2; Th1/Th2 balance
**Verdict: SUPPORTED (classic, replicated at the receptor level).**

Jutel 2001 (Nature) established histamine enhances Th1 via H1R and suppresses Th1/Th2 via H2R; Elenkov 1998 showed H2-mediated IL-12 suppression/IL-10 induction. This is the mechanistic substrate for "H1 blockade leaves histamine free to act on H2 (and H4), shifting immune polarisation." Well-established in mouse + human in vitro; no MCAS/ME/CFS-specific data on the redistribution consequence.

| Paper | Raw cert | Population | Discounted |
|-------|---------|-----------|-----------|
| Jutel2001H1H2Tcell | 0.70 | animal + in vitro | 0.35 |
| Elenkov1998HistamineIL12IL10 | 0.55 | in vitro | 0.22 |
| Jutel2009HistamineImmune | 0.60 | general | 0.45 |
| Packard2003HistamineTh1Th2 | 0.50 | general | 0.38 |

### B3 — H2 autocrine negative feedback on mast cells
**Verdict: SUPPORTED BUT THIN / DATED.**

Bissonnette 1996 shows histamine inhibits mast-cell TNF-α release via H2/H3 (partly PGE2-mediated). Alstadhaug 2014 reviews a postulated H3 negative feedback on mast-cell histamine release. One primary study + one review; note the stronger evidence implicates H3, not H2. The "H2 blockade removes a brake on mast-cell degranulation" idea is plausible but rests on thin, old, largely in-vitro/animal evidence.

| Paper | Raw cert | Population | Discounted |
|-------|---------|-----------|-----------|
| Bissonnette1996H2H3TNFalpha | 0.45 | animal (in vitro) | 0.23 |
| Alstadhaug2014HistamineMigraine | 0.45 | general | 0.34 |

### B4 — Cholinergic–mast-cell interaction (α7-nAChR / M3; pyridostigmine)
**Verdict: SUPPORTED (bidirectional); pyridostigmine-specific data NOT FOUND.**

ACh activates resting mast cells via M3 and suppresses stimulated mast-cell degranulation via α7-nAChR (dual, receptor-dependent). Enhancing cholinergic tone (neostigmine) augments meningeal mast-cell degranulation; vagotomy prevents mesenteric mast-cell activation. Nicotine via α7 selectively suppresses leukotrienes/cytokines — but Wang 2017 shows α7 activation on mast cells is also pro-atherogenic (HARM signal). **Pyridostigmine + mast cell: no direct literature exists** (only a non-indexed 1966 paper).

| Paper | Raw cert | Population | Discounted |
|-------|---------|-----------|-----------|
| Kutukova2025DualAChMastCell | 0.50 | in vitro | 0.20 |
| Kilinc2024MeningealMastCholinergic | 0.55 | animal | 0.28 |
| Mishra2010NicotineAlpha7LT | 0.50 | in vitro | 0.20 |
| Woestemeier2026VagalMastCell | 0.50 | animal | 0.25 |
| Wang2017NicotineAlpha7Athero | 0.55 | animal | 0.28 |

---

## Cross-Idea Synthesis (Workstream-1 scope)

1. **The stack genuinely leaves gaps.** H4R (A1), tryptase/PAR-2 (A2), PGD2/CRTH2 (A2), and the clearance enzymes DAO/HNMT (A3) are all distinct from the H1/H2/CysLT1 targets. The receptor-gap premise is well-supported mechanistically.

2. **Cross-arm interaction is real and bidirectional.** H1 blockade does not just fail to reach H2/H4 — it redistributes histamine onto them, with immune-polarisation consequences (B2), and may remove H2/H3 autocrine feedback (B3). Cholinergic tone (relevant because pyridostigmine/mestinon is a common ME/CFS prescription) modulates mast-cell degranulation in both directions (B4).

3. **Evidence quality caveat.** Almost all evidence is general-population, animal, or in vitro — no ME/CFS- or MCAS-specific studies of H4R blockade, tryptase/PGD2 blockade, or cholinergic–mast-cell interaction. Highest discounted certainty is Maintz 2007 (0.49) and the reviews (0.45). Nothing exceeds the PROCEED-quality threshold for the target population on its own; relevance rests on mechanistic plausibility.

## Harm Signals (flagged)

- **Wang2017NicotineAlpha7Athero:** α7-nAChR agonism on mast cells is pro-atherogenic (nicotine). Caution against cholinergic strategies that would activate mast-cell α7.
- **H4 antagonists:** no approved agent; phase I (izuforant) safety data only; earlier H4R programs discontinued. Long-term safety unknown — flag as research-stage.
- **Kilinc2024:** cholinesterase inhibition (neostigmine) *increases* mast-cell degranulation — a mechanistic caution relevant to pyridostigmine/mestinon in mast-cell-active patients, though no direct pyridostigmine/mast-cell study exists.

## Zero-Hit Honesty

- B1 "copper deficiency → histamine intolerance" (human): not found.
- B3 "H2 as the dominant autocrine brake": thin (H3 better-supported).
- B4 "pyridostigmine + mast cell": not found.
