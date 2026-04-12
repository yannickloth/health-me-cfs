# Integration Guide: Wound Healing in ME/CFS — Challenge to "Preserved Autonomous Function" Claim

**Created:** 2026-04-12
**For agent:** chapter-integrator
**Primary target:** `src/main/typst/mecfs/part2-pathophysiology/ch06-energy-metabolism.typ`

---

## Problem Statement

Chapter 6 currently uses "basic wound healing" as an example of a preserved autonomous function in ME/CFS,
employed as supporting evidence for the **selective energy dysfunction** hypothesis. The argument is:
- ME/CFS impairs CNS-dependent, demand-responsive metabolic processes
- Autonomous steady-state functions (like wound healing) are spared
- This selective pattern supports a specific dysfunction of demand-responsive energy allocation

**This claim is scientifically unsupported and likely wrong.** The literature search found:

1. No direct evidence that wound healing is preserved in ME/CFS (zero studies)
2. Multiple mechanistic pathways by which ME/CFS pathophysiology would impair wound healing
3. The premise is biologically incorrect: wound healing is NOT a steady-state autonomous process

---

## What the Literature Shows

### Direct ME/CFS evidence
**None found.** PubMed search for "wound healing" AND ("chronic fatigue syndrome" OR "myalgic
encephalomyelitis" OR "ME/CFS") returned 4 results, none of which measured wound healing in
ME/CFS patients. The search for "chronic fatigue" AND "wound" AND "impaired" returned zero results.
No null results exist either — the question has simply not been studied.

**The claim in ch06 is an unsupported assumption, not an established finding.**

### Mechanism 1: NK Cell Dysfunction Impairs Wound Healing
- ME/CFS NK cell cytotoxicity is reduced to ~50% of healthy controls (Baraniuk et al. 2024, meta-analysis
  of 28 studies, Hedges' g = 0.96, Frontiers in Immunology — certainty: 0.90)
- NK cells are mechanistically required for wound healing — not passive bystanders. Their IFN-γ and
  GM-CSF output directly controls the rate and quality of tissue closure (Sobecki et al. 2021,
  Nature Communications — certainty: 0.75)
- TGF-β and IL-6 lock NK cells into a regulatory non-cytotoxic state, which then provides pro-angiogenic
  wound repair support — but only transiently. Chronic TGF-β elevation (documented in ME/CFS) may
  constitutively activate this suppressive circuit, disrupting temporal NK cell cycling required for
  normal healing (Petri et al. 2017, Stem Cell Reports — certainty: 0.60)

### Mechanism 2: Autonomic Dysfunction Impairs Wound Healing
- Sympathetic nervous system activation inhibits reepithelialization and increases pro-inflammatory
  neutrophil influx. Parasympathetic activation promotes repair (Xue et al. 2018, Mucosal Immunology —
  certainty: 0.70)
- ME/CFS is characterised by sympathetic overactivation and reduced heart rate variability (documented
  in POTS, dysautonomia). By Xue et al.'s mechanism, ME/CFS autonomic dysfunction would systematically
  bias wound healing toward the impaired/delayed-repair phenotype
- This directly contradicts the chapter's assumption: the very autonomic dysfunction used to explain
  ME/CFS symptoms is the same mechanism that impairs wound healing

### Mechanism 3: Immune Exhaustion Phenotype Predicts Impaired Wound Healing
- In burn patients with immune exhaustion phenotype, blunted early immune response produces impaired
  wound healing and elevated sepsis/mortality despite smaller injuries (Stanojcic et al. 2016,
  Annals of Surgery, n=130 — certainty: 0.70)
- Post-infectious epigenetic immune suppression impairs both the cytotoxic and the wound repair arms
  of immunity (Abhimanyu et al. 2021, Frontiers in Immunology — certainty: 0.60)

### Mechanism 4: Wound Healing Requires What ME/CFS Lacks
Wound healing is a complex, energy-intensive, demand-responsive, multi-phase cascade requiring:
- Phase 1 (haemostasis): platelet activation, coagulation cascade
- Phase 2 (inflammation): neutrophil recruitment, NK cell activation, macrophage polarisation
- Phase 3 (proliferation): fibroblast migration, angiogenesis, collagen synthesis, epithelial migration
- Phase 4 (remodelling): matrix metalloproteinase activity, scar maturation

Each phase requires: immune cell mobilisation, significant ATP production, cytokine signalling coordination,
autonomic vascular regulation, and mitochondrial oxidative phosphorylation. These are precisely the systems
documented to be dysfunctional in ME/CFS.

Furthermore, when natural SIV hosts (African green monkeys) maintain intact tissue repair mechanisms, they
avoid immune exhaustion. When tissue repair fails, immune exhaustion worsens (Barrenas et al. 2019,
Nature Communications). Wound healing is thus bidirectionally linked to immune function — not independent of it.

---

## Recommended Chapter Modification

### Locate and revise the "wound healing" claim

Search for the wound healing reference in ch06:
```
grep -n "wound" src/main/typst/mecfs/part2-pathophysiology/ch06-energy-metabolism.typ
```

### Option A: Remove the specific example (safest)
Remove "basic wound healing" as an example of preserved function. Replace with better examples
of genuinely autonomous steady-state processes (e.g., basal cardiac automaticity, renal filtration
at rest, enterocyte turnover at baseline — though even these have caveats).

### Option B: Add a correction/limitation note
If the selective energy dysfunction hypothesis is important enough to keep, add a `limitation` or
`warning` environment immediately after the wound healing claim:

**Suggested text for `limitation` environment:**

```typst
#warning[Wound Healing Is Not a Preserved Autonomous Function][
  The characterisation of wound healing as a preserved autonomous function requires revision.
  Wound healing is a complex, demand-responsive, multi-phase cascade requiring NK cell
  mobilisation, autonomic vascular regulation, fibroblast activation, and significant
  oxidative energy production — precisely the systems dysfunctional in ME/CFS.

  No study has directly assessed wound healing in ME/CFS patients. Mechanistic evidence
  suggests impairment is likely through at least three independent pathways: (1) NK cell
  cytotoxicity at ~50% of normal capacity @Baraniuk2024NKMeta; (2) sympathetic overactivation
  impairs reepithelialization @Xue2018ANSWoundHealing; and (3) post-infectious immune
  exhaustion patterns associated with delayed wound repair @Stanojcic2016ImmuneExhaustionBurns.

  The selective energy dysfunction hypothesis remains plausible, but wound healing should be
  removed from the list of preserved functions until direct evidence is available. Better
  candidate preserved functions include: basal cardiac automaticity, resting renal clearance,
  and hepatic phase I detoxification at rest.
]
```

### Option C: Reframe the hypothesis more carefully
Restate the selective dysfunction hypothesis without claiming wound healing is preserved. The
hypothesis is about CNS-dependent demand-responsive processes (cognitive load, exercise response,
orthostatic challenge) — not about all autonomous processes. Wound healing never fit this category
in the first place.

---

## BibTeX Citation Keys

All entries added to `src/main/typst/mecfs/references.bib`:

| Key | Paper | Certainty |
|-----|-------|-----------|
| `Baraniuk2024NKMeta` | NK cytotoxicity meta-analysis in ME/CFS | 0.90 |
| `Sobecki2021NKWoundHypoxia` | NK cells required for wound healing | 0.75 |
| `Xue2018ANSWoundHealing` | SNS activation impairs wound healing | 0.70 |
| `Barrenas2019SIVWoundHealing` | Tissue repair prevents immune exhaustion | 0.70 |
| `Stanojcic2016ImmuneExhaustionBurns` | Immune exhaustion predicts delayed repair | 0.70 |
| `Petri2017MSCNKTGFb` | TGF-β locks NK cells into repair circuit | 0.60 |
| `Abhimanyu2021PostInfectiousEpigenetics` | Post-infectious epigenetics impairs wound repair | 0.60 |

---

## Overall Certainty Assessment

**Certainty that wound healing is NOT preserved in ME/CFS:** 0.75 (indirect, convergent, mechanistic)

- Direct ME/CFS wound healing data: absent (no studies)
- Mechanistic prediction from NK dysfunction: high confidence
- Mechanistic prediction from autonomic dysfunction: high confidence
- Analogical evidence from immune exhaustion models: moderate confidence
- Null results showing preservation: none found

**Certainty that the chapter claim is unsupported:** 0.95
The claim "wound healing is preserved" has no evidentiary basis. It should be treated as an
untested assumption, not an established finding.

---

## Files Created

- `Literature/pathophysiology/wound-healing/abstract_Baraniuk2024_NK_meta.txt`
- `Literature/pathophysiology/wound-healing/abstract_Sobecki2021_NK_wound_hypoxia.txt`
- `Literature/pathophysiology/wound-healing/abstract_Xue2018_ANS_wound.txt`
- `Literature/pathophysiology/wound-healing/abstract_Barrenas2019_SIV_woundhealing.txt`
- `Literature/pathophysiology/wound-healing/abstract_Stanojcic2016_immune_exhaustion_burns.txt`
- `Literature/pathophysiology/wound-healing/abstract_Petri2017_MSC_NK_TGFb.txt`
- `Literature/pathophysiology/wound-healing/abstract_Abhimanyu2021_epigenetic_immune_suppression.txt`

---

## Next Steps for chapter-integrator

1. `grep -n "wound" src/main/typst/mecfs/part2-pathophysiology/ch06-energy-metabolism.typ`
   to find the exact location of the claim
2. Decide between Option A (remove example), Option B (add warning), or Option C (reframe hypothesis)
3. If adding citations, use keys from the table above
4. The `Baraniuk2024NKMeta` entry already exists in references.bib with PMID verification
5. Run `nix build` to verify compilation after changes
