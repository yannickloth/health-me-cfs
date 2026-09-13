# Pathway-to-Drug Trace: common-fatigue-biology

# Hypothesis: A convergent neuroimmune programme underlies fatigue across immune-inflammatory diseases (ch16 @hyp:shared-neuroimmune-fatigue-programme, cert 0.55); plus the immunometabolic energy-redistribution speculation (@spec:immune-metabolic-energy-redistribution, cert 0.33).
# Cascades certainty: 0.55 (shared-neuroimmune-fatigue-programme)
# ch30 Category: sec-04 (neuroinflammatory hypotheses) — existing cascade family
# Date: 2026-09-13

## Phase 5d status: OVERLAP — no new cascade file

**Step-1 category:** sec-04-neuroinflammatory-hypotheses (per the Phase 3 Category Router: neuroinflammatory / microglia → sec-04).

**Step-2 Overlap Check result: IDENTICAL/PARTIAL OVERLAP.** The existing cascade
`sec-04-neuroinflammatory-hypotheses/subsec-01-microglial-priming-cascade/subsubsec-01-cascade-microglial-priming-four-region-neuroinflammatory-consequences.typ`
("Cascade: Microglial priming → four-region neuroinflammatory consequences") already
contains the exact cytokine-to-brain → fatigue cascade this cycle's hypothesis describes:

| New-env cascade step | Existing cascade node | Drug intercepts already documented |
|----------------------|-----------------------|-------------------------------------|
| Immune activation → circulating cytokines → brain | Step K1 microglial TLR4/P2X7/C5aR priming → IL-1β/TNF-α | LDN, minocycline, PEA, luteolin+quercetin, ibudilast |
| Cytokine → reduced activity/motivation → fatigue | Step K2a hypothalamic → orexin suppression → **fatigue** | OX2R agonists, pitolisant, modafinil, solriamfetol |
| (motivational deficit) | Step K2b basal ganglia → DA synthesis/VMAT2 → anhedonia/effort deficit | aripiprazole, methylphenidate, bupropion, amantadine, pramipexole, rasagiline |
| (autonomic axis) | Step K2c brainstem → autonomic instability | pyridostigmine, midodrine (brainstem specificity via minocycline) |
| (cognitive axis) | Step K2d PFC → cognitive dysfunction | guanfacine, memantine, donepezil |

**Action (per Step-2 "identical/partial overlap" rule):**
- Do **NOT** create a new subsec-* directory or cascade file (would duplicate the existing cascade).
- Write this ops/ trace (this file).
- Add a cross-reference from the existing cascade to the new ch16 environment.
- Do **NOT** rewrite existing sec-12 `+/−` inferences (the new hypothesis does not change any drug's diagnostic inference; it adds cross-disease prevalence/kinetic context).

**Non-deletion guard:** no existing ch30 content modified except the added cross-reference line.

## Cascade Branches (for the record — already covered by existing file)

### Branch 1: Immune activation → neuroinflammation → fatigue/motivation
Full step-by-step already in the existing cascade (Steps K1, K2a, K2b, K2c, K2d). The new
hypothesis contributes the *cross-disease* framing (same programme across ≥15
immune-inflammatory diseases) and the *kinetic* refinement (@spec:fatigue-tracks-immune-kinetics),
neither of which changes the molecular steps or their drug interception points.

### Branch 2: Immunometabolic energy redistribution (cert 0.33)
Trigger: immune activation → increased T-cell glycolytic demand → substrate competition →
reduced brain/muscle substrate → fatigue. This is *not* the same as the sec-04
neuroinflammatory cascade (it is a metabolic-allocation account, not a cytokine-signalling
one). Candidate intercepts: none specific to the allocation conflict itself; metformin
(AMPK/immune-metabolism) and glucose/ketone substrate probes exist but are not sec-12
drugs for this node, and the branch is speculative (0.33, mouse + delirium only).

**Pruning:** Branch 2 is **not** written to the chapter as a cascade — its mechanism is not
localized to a drug-interceptable biochemical node in the sec-12 compendium, so it fails the
"≥1 drug that plausibly intercepts" gate. Recorded here only; tagged **speculative — below
chapter cascade-integration threshold**, consistent with its `#speculation` chapter treatment.
(Cumulative cert for any drug probe here would be ≤0.33 × low specificity < 0.05 → pruned per
the pruning rule.)

## Discriminating Probes

- Already documented in the existing cascade (LDN onset-latency vs TRPM3; aripiprazole vs
  methylphenidate for postsynaptic vs presynaptic DA; minocycline vs LDN for brainstem vs cortical).
- **New cross-disease probe (not a chapter cascade edit):** the ICI-fatigue cohort
  @Li2025ICIfatigue supplies an *external* immune-activation probe — if the same
  effector-CD8/Th1 signature appears in ME/CFS fatigue, it would support the shared-programme
  node upstream of the four-region cascade. This is a research prediction, not a drug intercept.

## Pruned Branches

- Branch 2 (immunometabolic allocation): cumulative drug-probe cert < 0.05 and no specific
  sec-12 interception node — pruned from chapter content; retained as `#speculation` only.

## Quality Gates

- [x] ch30 category assigned (sec-04) with rationale
- [x] Overlap check completed — **identical/partial overlap**; no duplicate file created
- [x] Cascade trace has ≥4 biochemical steps per branch (existing cascade has K1 + K2a–d)
- [x] At least one drug identified per branch node (existing cascade documents them)
- [x] Cascade has discriminating value — existing cascade's discriminations retained
- [x] Cross-reference to new Phase 3 environment added (see chapter edit)
- [x] No new ch30 file, no sec-12 rewrite, no sec-09/13 change required (no new drug/mechanism)
