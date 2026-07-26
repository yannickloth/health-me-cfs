#import "../../../../shared/environments.typ": *

==== Step F0: Capillary basement membrane thickening — structural diffusion barrier upstream of hypoperfusion

*Mechanism:* Before any functional microvascular defect (endothelial dysfunction, microclots, RBC stiffness), there is a structural anatomical barrier: capillary basement membrane (BM) thickening. Charlton, Slaghekke et al.\ (2025) @Charlton2025muscleMicrovasc documented near-complete separation of ME/CFS patients from healthy controls by percentage BM coverage in vastus lateralis biopsies (max HC 62.7% vs min patient 63.2%), independently replicated in Berlin @Aschman2023postcovidCapillary and Aarhus @Agergaard2023LongCOVIDmyopathy. This is a structural lesion: thickened BM increases the O₂ diffusion distance from capillary lumen to myocyte, creating a *delivery-complete but diffusion-incomplete* state — capillaries are perfused, RBCs are oxygenated, but O₂ physically cannot cross the thickened BM fast enough to sustain aerobic ATP production. Unlike functional perfusion deficits (Steps F1a--d), this is not a flow problem — it is a physical diffusion barrier.

Additional ultrastructural features amplify the diffusion impairment: (a) decreased capillary tortuosity reduces total endothelial surface area for gas exchange; (b) decreased capillary contact length reduces the fraction of the myocyte surface in direct apposition to a capillary; (c) endothelial hypertrophy narrows capillary lumens from the inside, potentially creating heterogeneous perfusion where some capillaries are functionally excluded even though total inflow is normal (@spec:endothelial-hypertrophy-heterogeneous-perfusion, cert 0.40). These three features compound the BM thickness effect: less surface area × narrower contact × thicker barrier = multiply impaired O₂ diffusion.

The bed rest comparator is critical: healthy volunteers after strict 60-day bed rest showed muscle atrophy + reduced OXPHOS (the expected detraining phenotype), while patients showed no atrophy but BM thickening + glycolytic fiber shift — a structurally distinct phenotype that excludes deconditioning as the sole explanation @Charlton2025muscleMicrovasc.

*Functional signature:* Impaired peripheral O₂ extraction despite normal cardiac output and pulmonary gas exchange — the gold-standard finding from invasive CPET @Joseph2022neurovascularDysreg (O₂ extraction 0.69 vs 0.77 in controls, $p < 0.001$). The mitochondrial defect in ME/CFS is functional (not quantitative) — Complex II+III activity correlates with O₂ extraction ($ρ = -0.33$, $p = 0.028$) while mitochondrial biomass (CS activity, mtDNA) does not @Squires2026OxygenExtraction — consistent with mitochondria that are O₂-starved, not intrinsically broken.

*Cascade (structural → functional):*
```
Capillary BM thickening (Charlton 2025, Aschman 2023, Agergaard 2023)
  → O₂ diffusion distance ↑ (physical barrier independent of flow rate)
  → + decreased tortuosity → reduced exchange surface area
  → + decreased contact length → reduced myocyte-capillary apposition
  → + endothelial hypertrophy → heterogeneous perfusion → functional capillary dropout
  → Impaired peripheral O₂ extraction (Joseph 2022, Squires 2026)
  → Chronic tissue-level O₂ insufficiency
  → Functional mitochondrial impairment (O₂-starved, not broken)
  → Anaerobic metabolism → lactate accumulation → proton accumulation
  → NHE1 activation → intracellular Na⁺ overload (→ Step F2)
  → NCX1 reverse mode → mitochondrial Ca²⁺ overload (→ Step F3)
  → Mitochondrial structural damage → mitophagy impairment (→ Step F4)
  → ROS → further endothelial damage → more BM thickening → (loop closes)
```

*Probes for the structural BM barrier (Step F0 vs functional perfusion deficits Step F1):*
- *Pyridostigmine (30--60 mg):* Improves cardiac preload and cholinergic vasodilation @Joseph2022pyridostigmine. If pyridostigmine improves VO₂peak → the deficit is partly perfusion-mediated (preload or autonomic). If pyridostigmine does NOT improve VO₂peak → the deficit is structural — BM thickening is the rate-limiting barrier, and increasing flow through a thickened BM doesn't accelerate diffusion through it. The +0.9 mL/kg/min improvement in Joseph 2022 suggests ~10% of the O₂ extraction deficit is perfusion-mediated; the remaining ~90% may be structural.
- *Pentoxifylline (400 mg TID):* Improves RBC deformability — stiff RBCs can now transit narrower capillaries. If pentoxifylline improves NIRS-measured O₂ extraction → endothelial hypertrophy is creating luminal occlusion that flexible RBCs can now pass. If pentoxifylline does NOT improve O₂ extraction → the bottleneck is not luminal occlusion but BM diffusion distance — making RBCs more flexible doesn't help if the BM itself is the barrier. Pentoxifylline thus discriminates Step F0 (BM thickness) from Step F0c (endothelial hypertrophy).
- *If neither pyridostigmine nor pentoxifylline improve VO₂peak / O₂ extraction:* The primary lesion is the BM itself — a structural barrier that no currently available drug directly targets. Interventions would need to address BM thinning (hyaluronidase — theoretical, cert 0.25 @Wirth2026LaxityConsequences), BM collagen degradation reversal (ARB-mediated TGF-β suppression @WirthScheibenbogen2021muscle), or downstream mitochondrial protection rather than upstream O₂ delivery.

*Discriminating probe between structural (F0) vs perfusion (F1) vs mitochondrial (F2--F4):*
- *Combined pyridostigmine + pentoxifylline + midodrine + compression:* Maximizes perfusion through all functional pathways (preload, RBC deformability, perfusion pressure, venous return). If this combination normalizes VO₂peak → the deficit was functional (Step F1), not structural (Step F0). If this combination produces minimal or no improvement → the deficit is structural BM thickening — no amount of improved blood flow can accelerate O₂ diffusion through a pathologically thickened capillary wall.
- *No clean discriminator exists between structural BM thickening and mitochondrial primary dysfunction:* both predict failure of perfusion-enhancing interventions. The discriminating probe is EM-measured BM thickness itself — if BM thickness correlates with O₂ extraction impairment (r > 0.7) in a cohort where both are measured simultaneously, structural BM thickening is the rate-limiting step. If mitochondrial content out-predicts BM thickness → mitochondrial dysfunction is primary. This test has not been performed.

*Certainty: 0.55.* The BM thickening finding is replicated in 3 countries. The cascade from BM thickening → impaired O₂ diffusion is structurally plausible. The link to downstream mitochondrial functional impairment is supported by Squires 2026 (functional, not quantitative, mitochondrial defect). The full cascade from BM thickening through the ionic cascade (Steps F1–F4) to PEM is inferential — no study has traced all steps in the same patients. (Evidence source: limb skeletal muscle EM + invasive CPET — Inference target: O₂ cascade through AIMM. Link is indirect — the structural lesion and functional consequence are each independently demonstrated, but the causal chain connecting them through the Na⁺-Ca²⁺ cascade is theoretical.)

(Origin: brainstorm 1.1 — Phase 5d cascade trace.)

*Falsifiable predictions:*
    + EM-measured %BM coverage correlates with invasive CPET-measured O₂ extraction (arterial-venous O₂ difference at VO₂max) with r > 0.7 in a single cohort
    + BM thickness is a stronger predictor of O₂ extraction than capillary density, mitochondrial content (CS activity), or RBC deformability in multivariate regression in the same cohort
    + Combined pyridostigmine + pentoxifylline + midodrine + compression (maximal perfusion intervention) produces < 20% improvement in VO₂peak in patients with BM coverage > 65% — the improvement plateaus because the structural barrier cannot be overcome by improving flow
    + Falsified if: BM thickness does not independently predict O₂ extraction in a cohort where both are measured simultaneously — then BM thickening is not rate-limiting for O₂ delivery. Falsified if: maximal perfusion intervention normalizes VO₂peak — then the deficit is entirely functional, not structural.

*Consequence:* If the primary barrier to oxygen delivery in ME/CFS muscle is a structurally thickened capillary wall — not low blood flow, not stiff blood cells, not mitochondrial failure — then drugs that improve flow (pyridostigmine, midodrine) can only partially help, and the most important treatment target is the capillary wall itself. This is currently untreatable with approved drugs. The finding shifts the research agenda from "improving mitochondrial function" to "restoring capillary structure" — a fundamentally different therapeutic direction.
