# Brainstorm: Microglial Mitochondrial Dysregulation from Direct Borrelia/Bartonella Infection

**Topic:** Does Borrelia burgdorferi and/or Bartonella species infection of microglia cause mitochondrial dysfunction that establishes a self-sustaining feed-forward neuroinflammatory loop relevant to ME/CFS?

**Date:** 2026-07-17

**Evidence base (16 papers):** Myers2009Microglia (0.70), Kuhlow2005MicrogliaPhag (0.65), Parthasarathy2015MicrogliaTLR (0.70), CassianiIngoni2006MicrogliaTLR (0.65), Parthasarathy2023FGFRmicroglia (0.65), Xu2023BmpAmicroglia (0.45), Akinlusi2025MicrogliaPolarization (0.45), Munana2001BartonellaMicroglia (0.55), Coughlin2018PTLDSglialPET (0.60), Parthasarathy2022NonviableBb (0.65), Peacock2015LymeOxidativeStress (0.50), Wawrzeniak2020BbOMVOxidative (0.50), Bransfield2024BorreliaMicroglia (0.35), Tsilioni2022ExosomemtDNAmicroglia (0.55), ChavesFilho2019MicrogliaCFSdepression (0.50), Hirsch2025GWASPTLDSMECFS (0.40).

**Key fact:** The Borrelia→microglial activation axis is well-established (cert 0.70). The mitochondrial dysregulation step in microglia specifically has zero direct studies (cert 0.00). The proposed hypothesis chain is entirely deductive: Bb→TLR1/2→NF-κB→iNOS→NO→mitochondrial complex inhibition→mtDNA release→NLRP3/cGAS-STING→sustained IL-1β→feed-forward neuroinflammation.

**Existing paper anchors (do NOT duplicate):**
- `@sec:viral-microglial-activation` (ch08) — extensive viral coverage
- `@spec:trained-immunity-microglial` (ch08) — trained-immunity reprogramming
- `@hyp:tickborne-glycolytic-reprogramming` (ch07) — tick-borne pathogen glycolysis
- `@hyp:kindling-microglial-priming` (ch08) — kindling hypothesis
- `@sec:astrocyte-energy-gate` (ch08) — ANLS dysfunction
- `@sec:mitochondrial-dysfunction` (ch17) — mito dysfunction
- `@spec:hypoperfusion-cbf` (ch08) — 90% patients have reduced CBF

---

## Category 1: Novel Hypotheses

### Idea 1.1 — NO→Mitochondrial Complex Inhibition Feed-Forward Loop in Microglia (rank: 1)
- **Certainty:** 0.25
- **Mechanistic rationale:** The sequence: Bb→TLR1/2→MyD88→NF-κB→iNOS transcription (iNOS is NF-κB target, Akinlusi2025 confirms M1 polarization with iNOS upregulation in microglia). iNOS produces NO at high (μM) concentrations. NO reversibly inhibits mitochondrial complex IV (cytochrome c oxidase) by competing with O₂ at the binuclear center, and irreversibly damages complex I via S-nitrosylation and peroxynitrite-mediated tyrosine nitration. The resulting electron leak at complex I/III produces superoxide → reacts with NO → peroxynitrite → more complex damage. This creates a feed-forward amplification loop: more NO → more complex damage → more ROS → more peroxynitrite — sustained beyond the initial Bb stimulus. mtDNA escapes from damaged mitochondria through Bax/Bak pores or MPTP opening → activates NLRP3 (established pathway in macrophages, speculative in microglia after Bb) → IL-1β → further iNOS upregulation (IL-1β signals via NF-κB). The feed-forward loop becomes self-sustaining, independent of live pathogen.
- **Evidence link:** Akinlusi2025MicrogliaPolarization (iNOS↑), Parthasarathy2015MicrogliaTLR (MyD88/NF-κB pathway in microglia), Peacock2015LymeOxidativeStress (oxidative stress in Lyme), Tsilioni2022ExosomemtDNAmicroglia (mtDNA→microglia activation in ME/CFS — provides terminal step). No study has measured microglial mitochondrial function after Bb exposure.
- **Falsifiable prediction:** Primary human microglia exposed to live Bb will show: (1) decreased OCR (Seahorse) by ≥30% at 24h, (2) decreased complex IV activity by ≥25%, (3) increased mtDNA in supernatant by ≥2-fold, (4) all effects partially rescued by iNOS inhibitor 1400W (confirming NO-mediated mechanism). Effects absent in TLR2-knockout microglia. Refuted if OCR does not decrease or decrease is iNOS-independent.
- **Non-specialist consequence:** Lyme bacteria may trigger a vicious cycle in brain immune cells: activation turns on a chemical (NO) that damages the cell's own power plants, causing them to leak their DNA fragments, which further inflames the cells — a self-sustaining energy crisis that persists long after the bacteria are gone.
- **origin:** brainstorm

### Idea 1.2 — mtDNA Release as Mechanistic Bridge from Infection to Chronicity (rank: 2)
- **Certainty:** 0.28
- **Mechanistic rationale:** Two well-established observations currently disconnected: (A) Parthasarathy2022 shows non-viable Bb debris continues to activate microglia — explaining post-antibiotic persistence. (B) Tsilioni2022 shows ME/CFS mtDNA activates microglia to release IL-1β. The bridge: Bb infection → microglial mitochondrial damage (Idea 1.1) → mtDNA release → IL-1β. This mtDNA release would provide a self-renewing inflammatory stimulus that persists even after Bb debris is cleared, because the damaged microglial mitochondria continue to release mtDNA. The cycle becomes "epigenetically autonomous": mtDNA → IL-1β → iNOS → NO → more mitochondrial damage → more mtDNA release. This transforms the kindling hypothesis (@hyp:kindling-microglial-priming) from a phenomenological description into a specific molecular mechanism: mtDNA release is the "spark" that sustains the fire.
- **Evidence link:** Parthasarathy2022NonviableBb (debris → sustained activation), Tsilioni2022ExosomemtDNAmicroglia (mtDNA→microglia→IL-1β in ME/CFS), @hyp:kindling-microglial-priming (kindling hypothesis). No study has measured mtDNA release from Bb-exposed microglia.
- **Falsifiable prediction:** Conditioned medium from Bb-exposed microglia will contain elevated cell-free mtDNA (measured by qPCR for ND1, ND6) and will activate naïve microglia to produce IL-1β — an effect blocked by DNase pretreatment (exactly the Tsilioni2022 experiment, but using Bb-exposed microglial supernatant instead of ME/CFS serum). Refuted if DNase does not block IL-1β in naïve microglia.
- **Non-specialist consequence:** The brain's immune cells, once damaged by an infection, may begin leaking their own DNA fragments — and these fragments act like an internal alarm that keeps the inflammation going even after the infection has been treated.
- **origin:** brainstorm

### Idea 1.3 — Two-Hit Microglial Priming: Borrelia Then mtDNA as Sequential Triggers (rank: 3)
- **Certainty:** 0.30
- **Mechanistic rationale:** Bb exposure upregulates TLR1/TLR2 expression in microglia (CassianiIngoni2006), sensitizing them. However, microglial IL-1β release requires a second signal for NLRP3 activation (canonical NLRP3 requires priming + activation). The Bb→TLR signal provides priming (NF-κB → pro-IL-1β, NLRP3 upregulation). The second signal — mtDNA from cell-free sources (Tsilioni2022 exercise-induced mtDNA), ATP from damaged tissue, or ROS from the initial NO burst — activates NLRP3 inflammasome → caspase-1 → IL-1β maturation. In this model, Bb infection alone does not cause sustained IL-1β; it creates a primed state (primed microglia). The second hit (mtDNA from exercise-induced mitochondrial damage, another infection, or metabolic stress) triggers the exaggerated IL-1β response. This maps precisely to PEM: exercise → mtDNA release (Tsilioni2022) → second hit on primed microglia → IL-1β spike → neuroinflammatory symptom exacerbation.
- **Evidence link:** CassianiIngoni2006MicrogliaTLR (TLR upregulation after Bb — priming), Tsilioni2022ExosomemtDNAmicroglia (exercise→mtDNA→microglia→IL-1β), @hyp:kindling-microglial-priming (priming substrate). NLRP2/3 inflammasome in microglia (established neuroimmunology, not ME/CFS-specific).
- **Falsifiable prediction:** Microglia exposed to Bb alone (24h) will upregulate NLRP3 and pro-IL-1β mRNA but NOT secrete mature IL-1β. Microglia exposed to Bb (24h) + mtDNA (added at 24h, pulse) will secrete 5–10× more IL-1β than mtDNA alone or Bb alone. Microglia exposed to Bb + DNase (to digest experimental mtDNA) will show markedly reduced IL-1β. This would establish the two-hit model in vitro.
- **Non-specialist consequence:** Lyme bacteria may set the brain's immune cells on "hair trigger" — they don't cause inflammation by themselves, but once primed, even normal exercise-induced cellular debris could trigger a massive inflammatory response that causes the severe post-exertional crash characteristic of ME/CFS.
- **origin:** brainstorm

### Idea 1.4 — Bartonella as Intracellular Microglial "Slow Burn" Pathogen (rank: 4)
- **Certainty:** 0.15
- **Mechanistic rationale:** Munana2001 shows B. henselae survives non-cytolytically in feline microglia for at least 7 days — no cell death, persistent intracellular bacteria. If this occurs in human microglia, Bartonella could provide continuous low-level TLR stimulation without killing the cell. This is a fundamentally different model from Borrelia (which activates strongly but may be cleared): Bartonella persists intracellularly, providing a sustained but lower-magnitude inflammatory signal. The prediction: steady-state low-grade NO production → chronic mild mitochondrial dysfunction (not the acute damage from Borrelia) → cumulative mtDNA damage over months/years → gradual IL-1β elevation. This is a "slow burn" that would be hard to detect in acute assays but could explain insidious symptom onset. Bartonella also triggers angiogenesis via VEGF (Kempf2005BartonellaHIF1) — if Bartonella infects perivascular microglia, VEGF release could contribute to BBB dysfunction (the two-hit: Bartonella → VEGF → BBB leak + microglial mito dysfunction).
- **Evidence link:** Munana2001BartonellaMicroglia (feline microglia, non-cytolytic persistence), Kempf2005BartonellaHIF1 (HIF-1α→VEGF in endothelium; not yet shown in microglia). @spec:tickborne-glial-reprogramming (ch08). No study has tested Bartonella in human microglia.
- **Falsifiable prediction:** (1) HMC3 human microglia infected with B. henselae will show persistent intracellular bacteria by FISH at 7 days post-infection without cell death (MTT assay). (2) Infected microglia will show 15–25% OCR reduction (mild, not severe) and elevated mtDNA in supernatant at 7 days (cumulative damage). (3) Conditioned medium from 7-day Bartonella-infected microglia will activate naïve microglia (IL-1β release), and this effect will be amplified by adding exercise-mimetic mtDNA (second hit). Refuted if Bartonella is cleared from human microglia within 24h.
- **Non-specialist consequence:** Cat-scratch bacteria may hide inside brain immune cells without killing them, creating a low-grade, smoldering energy crisis that gradually worsens over months or years — unlike Lyme bacteria, which cause an acute inflammation that then resolves (or doesn't).
- **origin:** brainstorm

### Idea 1.5 — Hypoperfusion-Microglial Synergy: CBF Reduction Amplifies Mito Dysfunction (rank: 5)
- **Certainty:** 0.20
- **Mechanistic rationale:** ME/CFS patients have 90% prevalence of reduced cerebral blood flow (CBF). Microglial mitochondria are oxygen-dependent — complex IV (cytochrome c oxidase) has a Km for O₂ of ~0.5–1 μM, near the physiological range. In hypoperfused brain regions, O₂ tension may already be borderline. NO-mediated complex IV inhibition (Idea 1.1) further increases the apparent Km for O₂ (competitive inhibition), meaning that at any given O₂ tension, complex IV activity is lower. The combination of reduced O₂ delivery (hypoperfusion) + increased apparent Km (NO inhibition) synergistically depresses mito function beyond what either would cause alone. This interaction means: patients with worst CBF will have the most severe microglial mtDNA release and IL-1β. Also, microglial activation itself can reduce blood flow (activated microglia release vasoconstrictive mediators, PGE2 → thromboxane, endothelin-1), creating a third feedback loop: activation → vasoconstriction → hypoxia → more mitochondrial damage → more activation.
- **Evidence link:** @spec:hypoperfusion-cbf (ch08, 90% CBF reduction). NO+hypoxia synergy (established biochemistry, not studied in ME/CFS). Parthasarathy2015MicrogliaTLR (activation → vasoactive mediator release — inferred). Tsilioni2022ExosomemtDNAmicroglia.
- **Falsifiable prediction:** In a combined in vitro model: microglia exposed to Bb + 2% O₂ (hypoxia) will show ≥50% greater mtDNA release and IL-1β production than Bb + 21% O₂ (normoxia), and the effect will be blocked by iNOS inhibition or by supplemental O₂. Clinical prediction: tick-borne-triggered ME/CFS patients with lowest CBF (by arterial spin labeling MRI) will have highest CSF mtDNA and IL-18.
- **Non-specialist consequence:** The already-reduced blood flow to the brain in ME/CFS may act like a force multiplier for the mitochondrial damage from Lyme bacteria — low oxygen supply combined with NO-related damage to oxygen-using machinery creates a severe energy crisis that neither factor alone would cause.
- **origin:** brainstorm

### Idea 1.6 — Microglial Glycolytic Shift + NO-Mediated Mito Damage: Concurrent Arms (rank: 6)
- **Certainty:** 0.18
- **Mechanistic rationale:** Akinlusi2025 demonstrates Bb drives M1 polarization: iNOS↑ (NO arm) and glycolysis↑ (Warburg arm). These are not alternative hypotheses — they are concurrent. M1 microglia normally shift to glycolysis (physiological, supporting phagocytosis and cytokine production). But in the Bb context, the NO arm simultaneously damages the mitochondria that are being suppressed by the glycolytic shift. This creates a "double-hit" on OXPHOS: (1) physiological metabolic reprogramming reduces OXPHOS gene expression (the trained-immunity switch), (2) NO-mediated damage further impairs the remaining complexes. The consequence: when the microglia need to switch back to OXPHOS (after infection clears), the NO-damaged complexes cannot support the metabolic demand — the cell is trapped in glycolysis. This bridges ch08 trained-immunity microglial reprogramming (transcriptional, reversible) with the NO→mito damage mechanism (biochemical, potentially irreversible). The glycolytic trap means the microglia continue producing lactate (affecting ANLS, Idea 1.1 of the tick-borne glycolysis brainstorm) while also releasing mtDNA.
- **Evidence link:** Akinlusi2025MicrogliaPolarization (iNOS↑ + M1 shift, glycolysis inferred), @spec:trained-immunity-microglial (ch08, viral reprogramming), Parthasarathy2015MicrogliaTLR (NF-κB activation), @sec:astrocyte-energy-gate (ANLS). No study has measured both glycolytic and mito function simultaneously in Bb-exposed microglia.
- **Falsifiable prediction:** Seahorse assay on Bb-exposed primary microglia will show: (1) increased ECAR (glycolysis) at 12–24h, (2) decreased OCR (OXPHOS) that persists >72h (after ECAR normalizes), (3) persistent OCR suppression that does NOT recover after washout of Bb + 24h rest — consistent with irreversible NO-mediated damage. iNOS inhibition (1400W) will normalize OCR but not ECAR. Refuted if OCR recovers fully after washout.
- **Non-specialist consequence:** Lyme bacteria hit microglial energy metabolism with a one-two punch: they command the cells to switch to a less efficient fuel (sugar) for immune functions, while simultaneously damaging the machinery that burns the more efficient fuel (fat), making it impossible to switch back even after the immune activation subsides.
- **origin:** brainstorm

---

## Category 2: Research Directions

### Idea 2.1 — Direct Measurement of Microglial Mitochondrial Function After Bb (rank: 1)
- **Certainty:** 0.45
- **Mechanistic rationale:** The central gap — zero studies on microglial mitochondrial function after Bb — is directly addressable with standard assays. Primary human microglia (or HMC3, then validated in primary) exposed to live Bb, heat-killed Bb, Bb OMVs, and purified BmpA at 0, 6, 24, 48, 72h. Readouts: (1) OCR by Seahorse (basal, ATP-linked, maximal respiration, spare respiratory capacity), (2) mitochondrial membrane potential (TMRM), (3) mtROS (MitoSOX), (4) mtDNA copy number (ND1/qPCR), (5) extracellular mtDNA (supernatant qPCR), (6) IL-1β, IL-18 (ELISA). iNOS inhibitor (1400W) and TLR2-blocking antibody as mechanistic controls. This single experiment would determine whether the entire hypothesis chain (0.00 cert) is correct, partially correct, or wrong. Cost: ~$20K, 4 months.
- **Evidence link:** Akinlusi2025MicrogliaPolarization (M1/iNOS — provides rationale), Parthasarathy2015MicrogliaTLR (TLR pathway), Tsilioni2022ExosomemtDNAmicroglia (mtDNA readout established). No prior data exists.
- **Falsifiable prediction:** Bb-exposed microglia will show ≥30% reduction in spare respiratory capacity at 24h, ≥2-fold increase in mtROS, ≥3-fold increase in supernatant mtDNA. Heat-killed Bb will cause 50–70% of live Bb effects (debris suffices per Parthasarathy2022). iNOS inhibitor will rescue OCR by ≥50% but not eliminate all mtDNA release. Refuted if no change in any mitochondrial parameter at any timepoint (would falsify the entire hypothesis).
- **Non-specialist consequence:** A single, straightforward lab experiment growing human brain immune cells in a dish with Lyme bacteria could settle, once and for all, whether these bacteria damage the cells' power plants — a question that has been asked zero times despite being the logical center of this hypothesis.
- **origin:** brainstorm

### Idea 2.2 — mtDNA Release Kinetics from Bb-Exposed Microglia (rank: 2)
- **Certainty:** 0.40
- **Mechanistic rationale:** Tsilioni2022 establishes that ME/CFS exosomal mtDNA activates microglia. What remains unknown: does Bb exposure cause microglia to release mtDNA? Time-course experiment: primary microglia + Bb, collect supernatant at 0, 1, 3, 6, 12, 24, 48, 72h. Measure: (1) cell-free mtDNA (ND1, ND6 by qPCR), (2) compartmentalize by size filtration (<0.22μm = exosomal; >0.22μm = free/necrotic), (3) IL-1β, IL-18, TNF-α by multiplex. Add DNase to 24h wells to determine if mtDNA drives subsequent cytokine release. This is the critical experiment linking the Bb literature to the Tsilioni2022 ME/CFS finding.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (mtDNA→microglia IL-1β — the terminal step; this experiment tests the upstream source), Parthasarathy2022NonviableBb (sustained activation — mtDNA could be the mechanism), Parthasarathy2015MicrogliaTLR.
- **Falsifiable prediction:** mtDNA appears in supernatant starting at 6h (early necrosis/apoptosis from initial activation), peaks at 24–48h (mitochondrial dysfunction peak), and remains elevated at 72h (feed-forward). DNase added at 24h will reduce IL-1β at 48h by ≥60% vs no-DNase control, confirming that mtDNA is the IL-1β trigger. Exosomal mtDNA will peak later (48–72h, consistent with Tsilioni2022's post-exercise time window in patients). Refuted if no mtDNA detected at any timepoint.
- **Non-specialist consequence:** Timing matters for treatment: if Lyme bacteria trigger microglia to release their own DNA fragments that then keep inflammation going, treatments that block DNA sensing might work even after the bacteria are gone — but only if given before the self-sustaining cycle becomes irreversible.
- **origin:** brainstorm

### Idea 2.3 — TSPO-PET in Tick-Borne vs Viral-Triggered ME/CFS (rank: 3)
- **Certainty:** 0.30
- **Mechanistic rationale:** Coughlin2018 demonstrates TSPO-PET glial activation in PTLDS. If tick-borne-triggered ME/CFS has a distinct microglial pathophysiology (Borrelia→mito damage→mtDNA feed-forward), we would predict: (1) greater TSPO binding in subcortical regions (thalamus, basal ganglia — known Lyme neuroborreliosis targets) in tick-borne ME/CFS vs viral-triggered, (2) correlation between TSPO binding and CSF mtDNA (if sampled). Design: TSPO-PET with [11C]DPA-713 in tick-borne-triggered ME/CFS (n=8), viral-triggered ME/CFS (n=8), healthy controls (n=8). Matched for age, sex, clinical severity. This extends Coughlin2018 by adding a trigger-stratified comparison.
- **Evidence link:** Coughlin2018PTLDSglialPET (TSPO-PET in PTLDS — establishes feasibility and baseline), @sec:viral-microglial-activation (ch08, viral trigger — provides the comparator), Hirsch2025GWASPTLDSMECFS (genetic overlap). No TSPO-PET comparison between tick-borne and viral-triggered ME/CFS exists.
- **Falsifiable prediction:** Tick-borne-triggered ME/CFS will show higher TSPO binding in thalamus and putamen (≥15% vs viral-triggered, ≥25% vs controls). TSPO binding will correlate with CSF mtDNA (r > 0.6) and IL-18 (r > 0.5) only in tick-borne group. Refuted if TSPO binding does not differ between tick-borne and viral-triggered groups, or does not correlate with mtDNA.
- **Non-specialist consequence:** A brain imaging technique that detects "hot spots" of inflammation could reveal whether tick-triggered ME/CFS has a distinct inflammatory signature in the brain compared to virus-triggered ME/CFS — visible evidence of a different underlying process.
- **origin:** brainstorm

### Idea 2.4 — iNOS Inhibitor Rescue of Bb-Induced Microglial Mito Dysfunction (rank: 4)
- **Certainty:** 0.35
- **Mechanistic rationale:** The predictive heart of the hypothesis: Bb→NF-κB→iNOS→NO→mito damage. If correct, iNOS inhibition should prevent/rescue the mitochondrial dysfunction. Experiment: primary microglia + Bb ± 1400W (selective iNOS inhibitor, 10μM) or L-NIL (100μM). Pre-treatment, co-treatment, and post-treatment (add at 24h after Bb) conditions. Readouts: OCR, mtROS, mtDNA release at 24h and 48h. Pre-treatment determines if NO is necessary; post-treatment determines if NO-mediated damage is reversible. This is the pivotal mechanistic experiment: if iNOS inhibition rescues mito function, the hypothesis chain is experimentally confirmed for the middle steps (iNOS→NO→mito damage). If not, the chain breaks at iNOS.
- **Evidence link:** Akinlusi2025MicrogliaPolarization (iNOS upregulation in Bb-exposed microglia), Parthasarathy2015MicrogliaTLR (NF-κB pathway — iNOS is NF-κB target). 1400W and L-NIL are established selective iNOS inhibitors (animal and cell studies).
- **Falsifiable prediction:** Pre-treatment with 1400W will prevent ≥70% of Bb-induced OCR reduction and mtROS increase at 24h. Post-treatment (add at 24h, measure at 48h) will partially rescue OCR (50% restoration) but not fully — consistent with some irreversible damage. Refuted if 1400W does not affect any mitochondrial parameter (iNOS→NO is not the mechanism) OR if 1400W rescues everything fully (the NO damage is entirely reversible — incompatible with chronic feed-forward).
- **Non-specialist consequence:** A chemical that blocks the specific cellular "exhaust" (NO) produced by activated immune cells could protect their power plants from damage — proving the mechanism is real and pointing toward a drug target for breaking the self-sustaining inflammation cycle.
- **origin:** brainstorm

### Idea 2.5 — CSF mtDNA and IL-18 in Tick-Borne ME/CFS (rank: 5)
- **Certainty:** 0.25
- **Mechanistic rationale:** Lumbar puncture study: measure CSF cell-free mtDNA (ND1, ND6 copies/mL), IL-18 (NLRP3-specific product, more stable than IL-1β), lactate, and quinolinic acid in tick-borne-triggered ME/CFS (n=15), viral-triggered ME/CFS (n=15), healthy controls (n=15). Primary: CSF mtDNA concentration. Secondary: IL-18 correlation with cognitive performance. If the mtDNA→NLRP3 axis is active in the CNS, CSF mtDNA and IL-18 will be elevated. This extends Tsilioni2022 (serum exosomal mtDNA) to the CNS compartment — mtDNA in ME/CFS has only been measured in serum, never CSF. Quinolinic acid is added because Bransfield2024 found it elevated in late borreliosis — another neurotoxic kynurenine pathway metabolite produced by activated microglia.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (serum mtDNA — this tests CSF compartment), Bransfield2024BorreliaMicroglia (quinolinic acid in human borreliosis brain), Coughlin2018PTLDSglialPET (CNS inflammation in PTLDS — biomarker target).
- **Falsifiable prediction:** Tick-borne-triggered ME/CFS will show CSF mtDNA ≥2× higher than viral-triggered ME/CFS and ≥3× higher than controls. CSF IL-18 will correlate with mtDNA (r > 0.5). CSF quinolinic acid will be elevated only in tick-borne group. Refuted if no elevation in any CSF marker in either patient group.
- **Non-specialist consequence:** A spinal tap measuring DNA fragments from damaged cell power plants could serve as a brain-specific biomarker for tick-triggered ME/CFS — providing objective evidence of the cellular damage driving cognitive symptoms that standard tests miss.
- **origin:** brainstorm

---

## Category 3: Drug/Medication Ideas

### Idea 3.1 — Minocycline: Microglial Stabilization + Mito Protection Dual Target (rank: 1)
- **Certainty:** 0.22
- **Mechanistic rationale:** Minocycline has three relevant actions: (1) inhibits microglial activation (TLR4/MAPK/NF-κB — reduces iNOS expression and M1 polarization), (2) directly protects mitochondria by inhibiting MPTP opening and reducing cytochrome c release (mitochondrial stabilization), (3) inhibits MMP-9 (BBB protection, relevant to hypoperfusion synergy). This targets multiple points in the Bb→microglia→mito damage chain simultaneously: upstream (reduced activation → less NO), midstream (mito stabilization → less mtDNA release), and downstream (BBB protection). Minocycline is generic, well-tolerated (200mg/day used for acne for months), brain-penetrant, and already used off-label for ME/CFS (no controlled trial). Side effects: dizziness, GI upset, photosensitivity, rare pseudotumor cerebri. Risk/benefit acceptable for a pilot RCT in tick-borne-triggered ME/CFS.
- **Evidence link:** Akinlusi2025MicrogliaPolarization (M1→iNOS — minocycline inhibits this), Parthasarathy2015MicrogliaTLR (NF-κB pathway), Tsilioni2022ExosomemtDNAmicroglia (mtDNA→IL-1β — minocycline's mito stabilization reduces mtDNA release). Minocycline's microglial effects are established in MS, stroke, ALS models.
- **Falsifiable prediction:** 8-week open-label pilot (n=15, tick-borne-triggered ME/CFS), minocycline 100mg BID: (1) reduced CSF mtDNA by ≥30%, (2) reduced CSF IL-18 by ≥25%, (3) improved cognitive domain of MFI-20 by ≥3 points. Refuted if no biomarker change. If positive biomarker signal, RCT warranted.
- **Non-specialist consequence:** An old, cheap antibiotic already used for acne could calm overactive brain immune cells and protect their power plants — potentially treating ME/CFS at the cellular level without needing to identify whether the original infection is still present.
- **origin:** brainstorm

### Idea 3.2 — NLRP3 Inflammasome Inhibitor (Dapansutrile) for mtDNA-Driven IL-1β (rank: 2)
- **Certainty:** 0.18
- **Mechanistic rationale:** If mtDNA release from damaged microglial mitochondria activates NLRP3 (the standard pathway in macrophages, extending to microglia), blocking NLRP3 would break the terminal step of the feed-forward loop: mtDNA → NLRP3 → caspase-1 → IL-1β → neuroinflammation. Dapansutrile (OLT1177) is an oral NLRP3 inhibitor that has completed Phase II trials for gout (safe, well-tolerated) and is being studied in COVID-19, heart failure, osteoarthritis. Brain penetration: moderate (not optimized for CNS). Alternative: MCC950/CRID3 (preclinical, high brain penetration). If NLRP3 inhibition reduces neuroinflammation in tick-borne ME/CFS, it would confirm that NLRP3 is the effector of mtDNA-mediated neuroinflammation in this population. This is more specific than minocycline — directly tests the terminal step rather than broadly suppressing microglia.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (mtDNA → IL-1β — NLRP3 is the inferred mechanism), @hyp:kindling-microglial-priming. NLRP3 in microglia (established: mtDNA, ATP, ROS, K+ efflux all activate microglial NLRP3).
- **Falsifiable prediction:** In Bb-exposed primary microglia, MCC950 (100nM) will reduce IL-1β release by ≥80% without affecting TNF-α or IL-6 (NLRP3 specificity). In a mouse model of Bb microglial activation (if developed), dapansutrile 200mg/kg/day will reduce brain IL-1β and mtDNA levels and improve behavioral performance (Y-maze). Refuted if IL-1β is not affected or if TNF-α is also reduced (off-target).
- **Non-specialist consequence:** A new class of anti-inflammatory drugs that block a specific immune alarm (the NLRP3 inflammasome) could target the precise pathway by which damaged cell components trigger brain inflammation — potentially more effective and safer than broad immune suppression.
- **origin:** brainstorm

### Idea 3.3 — cGAS-STING Inhibitor for mtDNA-Sensing Pathway (rank: 3)
- **Certainty:** 0.12
- **Mechanistic rationale:** mtDNA can activate cGAS-STING (cytosolic DNA sensor) in addition to NLRP3. In microglia, mtDNA→cGAS→STING→TBK1→IRF3→Type I IFN (IFN-β) → sustained interferon signaling. This would be a parallel pathway to NLRP3: mtDNA → cGAS-STING → IFN-β → microglial activation + IFN-stimulated gene expression. STING activation also triggers NF-κB (via TBK1-independent pathway), providing a second route to iNOS induction. If both NLRP3 and cGAS-STING are activated by mtDNA, blocking only NLRP3 may be insufficient (the IFN arm compensates). STING inhibitors are early-stage: H-151 (preclinical), C-176, and C-178 (mouse-specific). No human STING inhibitor is approved. Research-stage only for pathway validation.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (mtDNA → microglial activation — the sensor is unknown). cGAS-STING activated by mtDNA in macrophages and microglia (established in sterile inflammation literature, e.g., West2015Nature).
- **Falsifiable prediction:** Bb-exposed microglia treated with H-151 (10μM) will show: (1) reduced IFN-β by ≥70%, (2) reduced CXCL10 by ≥60% (IFN-responsive chemokine), (3) no change in IL-1β (NLRP3-independent). Combined H-151 + MCC950 will reduce IL-1β + IFN-β simultaneously and produce additive rescue of mitochondrial function. Refuted if H-151 does not reduce IFN-β (cGAS-STING not involved in Bb-exposed microglia).
- **Non-specialist consequence:** Cells have at least two different alarm systems for detecting leaking DNA from damaged power plants — blocking just one may not be enough, and drugs targeting both are still in early development, meaning this is a diagnostic tool for researchers, not an available treatment.
- **origin:** brainstorm

### Idea 3.4 — 1400W or L-NIL (iNOS Inhibitor) — Target Validation (rank: 4)
- **Certainty:** 0.15
- **Mechanistic rationale:** Selective iNOS inhibitor: 1400W is >5000-fold selective for iNOS over eNOS (important: eNOS is needed for vascular function and CBF). If the Bb→iNOS→NO→mito damage chain is correct, iNOS inhibition should be neuroprotective. Problem: no iNOS inhibitor is FDA-approved for chronic use. 1400W has a short half-life (preclinical only). L-NIL has been used in animal arthritis models. GW274150 (Glaxo) reached Phase II for migraine (failed for efficacy, safety OK). This idea is primarily for pathway validation (Idea 2.4), not immediate clinical translation. Value: confirming the mechanism would justify developing iNOS inhibitors for ME/CFS — a more specific target than broad microglial suppression.
- **Evidence link:** Akinlusi2025MicrogliaPolarization (iNOS upregulation), Parthasarathy2015MicrogliaTLR (NF-κB → iNOS). iNOS→NO→complex IV inhibition (established biochemistry in neurons, not yet in microglia after Bb).
- **Falsifiable prediction:** Same as Idea 2.4 — 1400W rescues OCR in Bb-exposed microglia. Additional: chronic L-NIL treatment in a Bb-infected mouse model will normalize brain ATP levels by 31P-MRS and improve cognitive performance. Refuted if no rescue.
- **Non-specialist consequence:** Blocking a single enzyme (iNOS) that produces the cellular exhaust chemical (NO) could protect brain immune cells without broadly suppressing the immune system — but no FDA-approved drug exists yet, so proving this mechanism would be the first step toward developing one.
- **origin:** brainstorm

---

## Category 4: Supplement/Nutraceutical Ideas

### Idea 4.1 — MitoQ for Microglial Mitochondrial Protection in Tick-Borne ME/CFS (rank: 1)
- **Certainty:** 0.18
- **Mechanistic rationale:** MitoQ (mitochondria-targeted ubiquinol conjugated to triphenylphosphonium cation) concentrates 100–500× in mitochondria vs untargeted CoQ10. It reduces mitochondrial oxidative damage by: (1) directly scavenging lipid peroxyl radicals in the inner membrane, (2) protecting complex I from NO/peroxynitrite damage, (3) reducing mtDNA release (by stabilizing the mitochondrial membrane). If the feed-forward loop involves ROS-mediated mtDNA leakage, MitoQ at the mitochondrial source could be more effective than systemic antioxidants. MitoQ has been tested in ME/CFS (small trials, mixed results) but never stratified by tick-borne trigger. If the mechanism is microglial NO→mito damage, MitoQ would be predicted to help specifically in tick-borne-triggered ME/CFS. Cost: ~$60/month (supplement, OTC). Safety: well-tolerated in trials up to 80mg/day for 12 months.
- **Evidence link:** Peacock2015LymeOxidativeStress (oxidative stress → mito damage), Wawrzeniak2020BbOMVOxidative (Bb OMVs → ROS in neurons), Tsilioni2022ExosomemtDNAmicroglia (mtDNA → IL-1β — MitoQ would reduce mtDNA release upstream). MitoQ in ME/CFS (Castro-Marrero2021 and others, not trigger-stratified).
- **Falsifiable prediction:** In Bb-exposed primary microglia, MitoQ (100nM) pretreatment will: (1) reduce mtROS by ≥50%, (2) reduce mtDNA release by ≥50%, (3) partially rescue OCR. In tick-borne-triggered ME/CFS (n=30), 12-week MitoQ 40mg/day will reduce serum exosomal mtDNA by ≥25% (post-exercise measurement per Tsilioni2022 design) vs placebo. Refuted if no effect on mtDNA release in vitro or in patients.
- **Non-specialist consequence:** A specially engineered form of CoQ10 that targets cell power plants directly could reduce the leak of DNA fragments that drive brain inflammation — but it would only help patients whose ME/CFS involves this specific mitochondrial damage pathway.
- **origin:** brainstorm

### Idea 4.2 — NAC for Scavenging Peroxynitrite and Reducing iNOS Expression (rank: 2)
- **Certainty:** 0.22
- **Mechanistic rationale:** NAC acts at two points in the hypothesized chain: (1) it replenishes glutathione, which directly scavenges peroxynitrite (the combination product of NO + superoxide that damages mitochondrial complexes), (2) it inhibits NF-κB activation (via reducing ROS that oxidize IKK), reducing iNOS transcription. This provides both antioxidant protection and reduced NO production — upstream of mitochondrial damage. NAC is cheap ($10/month), safe up to 2g/day, OTC, and brain-penetrant (dose-dependent). Already studied in ME/CFS (some positive but underpowered trials; Nijs2014 meta-analysis found limited evidence). The new value: specifically targeting the NO→peroxynitrite→mito damage arm in tick-borne ME/CFS, rather than general antioxidant use.
- **Evidence link:** Peacock2015LymeOxidativeStress (oxidative stress → peroxynitrite), Akinlusi2025MicrogliaPolarization (iNOS upregulation), Parthasarathy2015MicrogliaTLR (NF-κB). NAC→GSH→peroxynitrite scavenging (established biochemistry).
- **Falsifiable prediction:** In Bb-exposed microglia, NAC (5mM) will reduce peroxynitrite (measured by 3-nitrotyrosine ELISA) by ≥60%, reduce mtDNA release by ≥40%, and reduce IL-1β by ≥50%. In tick-borne ME/CFS (n=20), NAC 1200mg/day for 8 weeks will reduce CSF 3-nitrotyrosine by ≥30% and CSF mtDNA by ≥20% (open-label biomarker pilot). Refuted if no CSF biomarker change.
- **Non-specialist consequence:** A common, cheap antioxidant supplement (NAC) could reduce the specific type of cellular damage linking Lyme-triggered brain inflammation to energy failure — by neutralizing a toxic reaction between two normal cellular byproducts.
- **origin:** brainstorm

### Idea 4.3 — CoQ10 + NAC + Selenium: Triple Protection for Mito Function (rank: 3)
- **Certainty:** 0.15
- **Mechanistic rationale:** Combination targeting multiple points in the feed-forward loop: CoQ10 (restores ETC function → reduces electron leak → less superoxide), NAC (replenishes GSH → scavenges peroxynitrite → protects complexes I/IV), selenium (required for GPX → reduces H₂O₂ burden → spares GSH). No single agent would be sufficient if the feed-forward loop involves multiple amplifying mechanisms. The triple combination addresses: (1) the NO→peroxynitrite→complex damage arm (NAC + selenium), (2) the ETC→electron leak→ROS arm (CoQ10), (3) the mtDNA→IL-1β arm (reduced by lowering mtDNA release via mito protection). All three are OTC, safe, low-cost (~$30/month total). This is analogous to Idea 6.1 from the CoQ10 brainstorm but applied to the microglial mito damage context specifically.
- **Evidence link:** Peacock2015LymeOxidativeStress, Wawrzeniak2020BbOMVOxidative, Tsilioni2022ExosomemtDNAmicroglia. CoQ10+GSH reduction in ME/CFS (both documented in separate studies, combined never tested).
- **Falsifiable prediction:** Bb-exposed microglia treated with CoQ10 (10μM) + NAC (5mM) + selenium (100nM) will show ≥60% rescue of OCR, ≥70% reduction in mtDNA release, and ≥80% reduction in IL-1β — significantly better than any single agent. Refuted if combination is not superior to single agents.
- **Non-specialist consequence:** A smart combination of three common, cheap supplements could protect brain cell power plants from the specific type of damage that Lyme infection may trigger — but this is a test of the mechanism, not yet a proven treatment.
- **origin:** brainstorm

---

## Category 5: Non-Pharmacological Interventions

### Idea 5.1 — Pacing as "Second Hit" Reduction for Primed Microglia (rank: 1)
- **Certainty:** 0.20
- **Mechanistic rationale:** Under the two-hit model (Idea 1.3): Bb primes microglia → TLR upregulation, NLRP3/NFRP3 upregulation, pro-IL-1β accumulation. The second hit (mtDNA from exercise-induced mitochondrial damage, per Tsilioni2022) activates NLRP3 → mature IL-1β → PEM. Pacing reduces the frequency and magnitude of the second hit by preventing exercise-induced mtDNA release. This provides a specific molecular rationale for why pacing prevents PEM — not just "conserving energy" generally, but specifically preventing the mtDNA surge that triggers the primed microglial response. The intervention: stay below individual anaerobic threshold (measured by CPET or heart rate monitoring). The mechanism predicts that mtDNA elevation after exercise is the trigger, NOT lactate, NOT ATP depletion alone.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (exercise → mtDNA release in ME/CFS patients — this is the second hit), @hyp:kindling-microglial-priming (priming substrate), CassianiIngoni2006MicrogliaTLR (TLR upregulation after Bb — the primer). No study has measured whether pacing reduces serum exosomal mtDNA.
- **Falsifiable prediction:** In tick-borne-triggered ME/CFS (n=20), a 2-week pacing intervention (heart rate < 60% HRmax) will reduce serum exosomal mtDNA at the end of a standardized exercise challenge (per Tsilioni2022 protocol at day 1 vs day 14) by ≥40%, compared to no change in a non-paced control week. Refuted if pacing does not reduce exercise-induced mtDNA release.
- **Non-specialist consequence:** Pacing — the practice of staying within one's energy limits — may work at a molecular level by preventing the release of power-plant DNA fragments that trigger brain inflammation in patients whose immune cells are pre-sensitized by a prior Lyme infection. This is a concrete biochemical mechanism for "pacing prevents PEM."
- **origin:** brainstorm

### Idea 5.2 — Transcranial Photobiomodulation for Microglial Mito Protection (rank: 2)
- **Certainty:** 0.10
- **Mechanistic rationale:** Red/NIR light (600–850nm) is absorbed by cytochrome c oxidase (mitochondrial complex IV), increasing its activity. Complex IV is the same enzyme inhibited by NO (Idea 1.1). Photobiomodulation could potentially: (1) increase complex IV activity, partially overcoming NO-mediated inhibition, (2) reduce microglial activation (decrease TNF-α, IL-1β in light-treated microglia in stroke models), (3) increase mtDNA repair via PGC-1α upregulation. Evidence is thin: photobiomodulation has been studied in ME/CFS (small trials, generally positive for fatigue, cognitive function), but never with a microglial/mitochondrial mechanism frame. No study has measured mtDNA or CSF IL-1β after photobiomodulation in ME/CFS.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (terminal step), Peacock2015LymeOxidativeStress (oxidative stress context). Photobiomodulation effects on complex IV (established at the biochemical level).
- **Falsifiable prediction:** In tick-borne-triggered ME/CFS (n=12), 6 weeks of transcranial + cervical NIR (808nm, 5×/week) will: (1) reduce CSF mtDNA by ≥20%, (2) reduce CSF IL-18 by ≥15%, (3) improve processing speed (SDMT) by ≥10%. Refuted if no CSF biomarker change. This is a biomarker pilot (not efficacy trial), justified by low risk and plausible mechanism.
- **Non-specialist consequence:** Red light shined on the head may help brain cell power plants work better by stimulating the same enzyme that Lyme-related cell exhaust (NO) blocks — potentially a safe, non-drug approach to repairing the energy crisis.
- **origin:** brainstorm

### Idea 5.3 — Glymphatic Enhancement (Sleep Posture, Low-Frequency Stimulation) for mtDNA Clearance (rank: 3)
- **Certainty:** 0.08
- **Mechanistic rationale:** The glymphatic system clears interstitial waste (including cell-free mtDNA) from the brain during sleep, driven by CSF flow through perivascular spaces. If the feed-forward loop is sustained by mtDNA accumulation in the brain extracellular space (activating microglial NLRP3/cGAS-STING), enhancing glymphatic clearance could reduce the mtDA concentration below the threshold for sustained microglial activation. Interventions: (1) lateral sleep position (best glymphatic flow vs supine/prone — mouse data, human limited), (2) low-frequency (40Hz) visual/auditory stimulation (increases glymphatic flow in mouse models), (3) optimized sleep hygiene for deep sleep duration. This is highly speculative: glymphatic-mtDNA clearance has not been studied in any condition. However, it links the sleep disruption common in ME/CFS (ch08) to the mtDNA-microglial mechanism: poor sleep → impaired glymphatic clearance → mtDNA accumulates → microglial activation → neuroinflammation → worse sleep.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (mtDNA → microglial activation — predicts that clearing mtDNA would reduce activation). Glymphatic system (established neurophysiology, not studied in ME/CFS). Ch08 sleep coverage.
- **Falsifiable prediction:** In tick-borne-triggered ME/CFS (n=10), one week of optimized sleep (sleep hygiene + lateral position) will reduce waking CSF mtDNA by ≥20% vs one week of habitual sleep, and the reduction will correlate with improved processing speed (r > 0.5). Refuted if no reduction in CSF mtDNA with sleep optimization.
- **Non-specialist consequence:** The brain's nightly "washing" system (glymphatics) clears waste including the inflammatory DNA fragments. Improving sleep quality could help flush out these fragments — potentially reducing brain inflammation without any drug.
- **origin:** brainstorm

---

## Category 6: Combinations + Access

### Idea 6.1 — Minocycline + NAC: Two-Point Break of Feed-Forward Loop (rank: 1)
- **Certainty:** 0.18
- **Mechanistic rationale:** Minocycline blocks upstream (microglial activation → iNOS induction, NF-κB) and protects mitochondria directly. NAC acts midstream (peroxynitrite scavenging, additional NF-κB inhibition). Together they target the feed-forward loop at two independent points: (1) reducing NO production from its source (minocycline → iNOS downregulation), (2) neutralizing NO's toxic product peroxynitrite and enhancing antioxidant capacity (NAC → GSH). If one mechanism is insufficient (compensation through the other), dual targeting may achieve synergy. Both are generic, safe, brain-penetrant. Total cost: ~$40/month. A pragmatic 12-week open-label pilot (n=20, tick-borne ME/CFS) with CSF biomarkers (mtDNA, IL-18, 3-nitrotyrosine) as primary endpoints would test the mechanism at low cost (~$15K).
- **Evidence link:** Akinlusi2025MicrogliaPolarization (iNOS → NO), Tsilioni2022ExosomemtDNAmicroglia (mtDNA → IL-1β — both drugs target upstream of mtDNA release), Peacock2015LymeOxidativeStress (peroxynitrite — NAC target). @hyp:kindling-microglial-priming.
- **Falsifiable prediction:** The combination will reduce CSF mtDNA by ≥40%, CSF 3-nitrotyrosine by ≥50%, and CSF IL-18 by ≥35% at 12 weeks — significantly more than either agent alone (if single-agent data available). Refuted if no biomarker change or if combination not superior to either alone.
- **Non-specialist consequence:** Two old, cheap drugs that target different stages of the cellular damage cascade — one calming overactive brain immune cells, the other neutralizing their toxic byproducts — may work synergistically to break the self-sustaining cycle of inflammation and energy failure.
- **origin:** brainstorm

### Idea 6.2 — Tick-Borne Stratification for Existing ME/CFS Trial Re-Analysis (rank: 2)
- **Certainty:** 0.30
- **Mechanistic rationale:** Many ME/CFS trials (rituximab, antivirals, immunomodulators, mitochondrial supplements) have heterogeneous responses. If tick-borne-triggered ME/CFS has a distinct mechanism (Bb→microglial mito damage→mtDNA feed-forward), these patients may respond differently to treatments. A simple stratification — tick-borne exposure history (lived in endemic area + known tick bite + prior Lyme/Bartonella diagnosis + positive serology) — could be applied to existing trial datasets. The hypothesis: tick-borne ME/CFS may respond better to immunomodulators that target microglial activation (rituximab depletes B cells that may present tick antigens; cyclophosphamide suppresses macrophages; minocycline targets microglia) and worse to antiviral agents (no viral trigger). This is zero-cost analysis (data already collected), requires only adding a brief questionnaire in ongoing/future trials.
- **Evidence link:** Hirsch2025GWASPTLDSMECFS (genetic overlap between PTLDS and ME/CFS — supports shared biology), @hyp:tickborne-glycolytic-reprogramming (ch07 — tick-borne subtype), @hyp:kindling-microglial-priming (ch08 — priming mechanism).
- **Falsifiable prediction:** In re-analysis of the Rituximab-in-ME/CFS trial (Fluge2019): tick-exposed patients (n estimated ~15–20) will show a ≥5-point improvement in fatigue vs ≤2-point in non-tick-exposed. In re-analysis of antiviral trials (Rintala, Montoya): the opposite pattern — tick-exposed show less response. Refuted if no interaction.
- **Non-specialist consequence:** Past clinical trials that appeared to fail might have succeeded in a subgroup — patients whose ME/CFS was triggered by a tick infection — hidden within the larger group. A simple questionnaire about tick exposure could unlock this insight from existing data at no cost.
- **origin:** brainstorm

### Idea 6.3 — Add CSF mtDNA to Ongoing ME/CFS LP Studies (rank: 3)
- **Certainty:** 0.35
- **Mechanistic rationale:** Several research groups are performing lumbar punctures in ME/CFS (e.g., Scheibenbogen, VanElzakker, NINDS RAM). The marginal cost of adding CSF mtDNA (qPCR, $30/sample), IL-18 ($50/sample), and 3-nitrotyrosine ($40/sample) to existing panels is near zero. This would provide the first CNS-compartment assessment of the mtDNA→microglial activation axis in ME/CFS. If CSF mtDNA is elevated in ME/CFS (prediction), it would validate the Tsilioni2022 finding in the CNS and support the feed-forward hypothesis. If not elevated, it would limit the hypothesis to the peripheral compartment (or to specific subtypes captured by Tsilioni2022's post-exercise design). Either result is valuable.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (serum mtDNA — needs CNS confirmation), Coughlin2018PTLDSglialPET (CNS inflammation — mtDNA could be the driver), Bransfield2024BorreliaMicroglia (kynurenine pathway in borreliosis brain).
- **Falsifiable prediction:** CSF mtDNA will be ≥2× higher in ME/CFS vs healthy controls and correlate with TSPO-PET binding (if available). Refuted if no elevation. If elevated but does NOT correlate with tick exposure history, the mechanism may be general (not tick-specific) but still relevant.
- **Non-specialist consequence:** Adding a simple DNA test to existing spinal fluid studies could, for virtually no extra cost, determine whether damaged cell power plants are leaking their DNA into the brain fluid of ME/CFS patients — a foundational test of this hypothesis.
- **origin:** brainstorm

---

## Category 7: Mathematical Model Extensions

### Idea 7.1 — ODE Model of Microglial Mito Damage Feed-Forward Loop (rank: 1)
- **Certainty:** 0.28
- **Mechanistic rationale:** Four-variable ODE extending the paper's existing energy-metabolism framework (ch43/part5):
  - dA/dt = k_act × Bb − k_deact × A + k_IL1 × IL1 (microglial activation state A, 0–1)
  - dN/dt = k_iNOS × A − k_clear_NO × N (NO concentration)
  - dM/dt = k_synth − k_damage_NO × N × M − k_repair × M (mitochondrial function M, fraction of normal)
  - dD/dt = k_release × (1 − M) − k_clear_mtDNA × D (extracellular mtDNA, D)
  - IL-1β = f(NLRP3(D)) (Hill function for NLRP3 activation by mtDNA)
  - Positive feedback: IL-1β → increases k_act (feed-forward loop)
Key prediction: the system has two stable steady states. At low Bb (below threshold), the system returns to healthy after Bb clearance. At high Bb, the feed-forward loop traps the system in a pathological steady state (persistent microglial activation, depressed M, elevated mtDNA) even after Bb → 0. The threshold depends on: the iNOS induction coefficient (k_iNOS), the NO damage rate (k_damage_NO), the mtDNA clearance rate (k_clear), and the NLRP3 sensitivity to mtDNA. Parameter estimation from in vitro data (Idea 2.1) would determine whether the ME/CFS-relevant parameter range falls above or below the bifurcation threshold.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (mtDNA→IL-1β — provides f(NLRP3(D)) relationship), Parthasarathy2015MicrogliaTLR (activation kinetics — provides k_act, k_deact), Akinlusi2025MicrogliaPolarization (iNOS upregulation — provides k_iNOS). No existing model includes mtDNA-mediated microglial activation.
- **Falsifiable prediction:** Model predicts that if Bb exposure reduces M below 0.4 (40% of normal mito function) at any point, the system enters the pathological steady state (irreversible). This predicts: in vitro, if Bb reduces OCR >60%, microglia will not recover even after Bb washout + 72h recovery. If OCR reduction is <40%, recovery occurs. Refuted if microglia recover from >60% OCR reduction.
- **Non-specialist consequence:** A computer simulation suggests a "point of no return" exists: if Lyme bacteria damage brain immune cells' power plants past a certain threshold (~60% damage), the system may never reset — explaining why some tick-triggered patients develop chronic, irreversible ME/CFS while others recover.
- **origin:** brainstorm

### Idea 7.2 — Causal DAG: Borrelia vs Viral Microglial Activation Pathways — Convergence and Divergence (rank: 2)
- **Certainty:** 0.32
- **Mechanistic rationale:** Construct a causal DAG with two upstream infectious triggers and shared downstream node:
  - Borrelia pathway: Bb → TLR1/2 → MyD88 → NF-κB → iNOS → NO → complex I/IV inhibition → mtROS → mtDNA → NLRP3 → IL-1β + cGAS-STING → IFN-β
  - Viral pathway (EBV/HHV-6/enterovirus): virus → TLR3/7/IFNAR → STAT → IRF → viperin/IFITM → mito fusion/fission disruption → mtDNA → NLRP3 → IL-1β + IFN
  - Divergence: Bb pathway is NO-dependent → peroxynitrite → nitrotyrosine damage (3-NT biomarker). Viral pathway is fusion/fission-dependent → DRP1/MFN1 changes → mito morphology disruption (different biomarker: serum GDF15).
  - Convergence: both → mtDNA → IL-1β/IFN → neuroinflammation. The DAG predicts: tick-borne ME/CFS will have elevated CSF 3-NT but normal CSF GDF15; viral ME/CFS will have elevated GDF15 but normal CSF 3-NT. Both will have elevated CSF mtDNA and IL-18.
This DAG can be integrated into the paper's existing causal model framework (ch43/part5) to formalize the trigger-specific vs shared mechanisms.
- **Evidence link:** Akinlusi2025MicrogliaPolarization (iNOS → 3-NT), CassianiIngoni2006MicrogliaTLR (TLR1/2 in human microglia after Bb), Tsilioni2022ExosomemtDNAmicroglia (shared terminal step), @sec:viral-microglial-activation (ch08, viral pathways — provides the comparator).
- **Falsifiable prediction:** Bayesian model comparison on biomarker data from tick-borne vs viral ME/CFS will favor the DAG with separate upstream but shared downstream structure (WAIC ≥ 10 points better than unified-pathway DAG). Specifically: CSF 3-NT discriminates trigger types (AUC > 0.80); CSF mtDNA does not (shared).
- **Non-specialist consequence:** A causal diagram shows that tick and viral infections damage brain immune cells through different initial mechanisms — one via toxic exhaust gas (NO), the other via direct damage to mitochondrial shape — but both end up releasing the same inflammatory DNA fragments. Treatments could target either the trigger-specific first step or the shared final step.
- **origin:** brainstorm

### Idea 7.3 — Agent-Based Model: Microglial-MtDNA-Neuronal ATP Competition at the Tripartite Synapse (rank: 3)
- **Certainty:** 0.12
- **Mechanistic rationale:** Agent-based model of a microglial−neuronal−astrocytic tripartite synapse (~100 μm³). Agents: 1 microglia (with M(A) activation state and M(M) mitochondrial function), 1 astrocyte (glycogen/lactate), 1 neuron (ATP consumption). The microglial agent releases mtDNA when its mitochondrial function M(M) drops below threshold. Extracellular mtDNA diffuses and binds microglial NLRP3 (autocrine activation, feed-forward). Astrocyte produces lactate (ANLS) but can be impaired by microglial-derived IL-1β (which inhibits astrocyte glycogenolysis). The model predicts: (1) a critical microglial mito damage threshold (M(M) < 0.35) triggers sustained mtDNA release that activates neighboring microglia (bystander spread), (2) IL-1β-mediated astrocyte inhibition reduces neuronal ATP by ~25% (ANLS-dependent component), (3) once >30% of microglia in the local cluster are in the damaged state, the cluster cannot recover — the damage spreads regionally as a "microglial wave." This provides a spatial model for how a small initial infection focus (local Bb) could spread to global neuroinflammation.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (mtDNA→microglia), Parthasarathy2022NonviableBb (sustained activation — spatial spread), @sec:astrocyte-energy-gate (ANLS — IL-1β link), @hyp:kindling-microglial-priming (spreading priming).
- **Falsifiable prediction:** Model predicts that if >30% of microglia in a cluster have M(M) < 0.35, the entire cluster transitions to pathological state even after removing the initial Bb stimulus. This predicts: in a microglial culture assay, if ≥30% of cells are exposed to Bb-conditioned medium (from damaged microglia), all cells activate — a bystander effect. Refuted if bystander activation does not occur.
- **Non-specialist consequence:** A computer simulation of a tiny brain neighborhood shows how damaged microglia may "infect" their neighbors with inflammatory signals via leaking DNA fragments — potentially explaining how a small Lyme infection focus can spread inflammation across large brain regions over time.
- **origin:** brainstorm

---

## Category 8: Cross-Disease Bridges

### Idea 8.1 — PTLDS and ME/CFS: Shared mtDNA→Microglia Terminal Effector Mechanism (rank: 1)
- **Certainty:** 0.40
- **Mechanistic rationale:** The PTLDS–ME/CFS overlap is well-described symptomatically and genetically (Hirsch2025) but no unifying mechanism has been proposed. The two-hit mtDNA model provides one: (1) Bb→microglial activation (established in PTLDS: 6 studies, cert 0.70) primes microglia (TLR/NLRP3 upregulation). (2) mtDNA from Bb-damaged microglial mitochondria (the unconfirmed middle step) OR from systemic release (exercise-induced mtDNA per Tsilioni2022, or from other infections) provides the second hit → IL-1β. In PTLDS, the first hit dominates (Bb debris persists, Parthasarathy2022). In ME/CFS where the trigger is unclear, the first hit may have been Bb (or another pathogen) in a subset, while the sustaining mechanism (mtDNA→microglia→IL-1β) is the same. This predicts: PTLDS and tick-borne-triggered ME/CFS share the same CSF biomarker signature (elevated mtDNA, IL-18, 3-NT) and differ only in the presence of Bb antibodies (higher in PTLDS). The mechanism provides biological continuity between PTLDS and tick-borne ME/CFS — they differ in degree, not kind.
- **Evidence link:** Hirsch2025GWASPTLDSMECFS (genetic overlap), Coughlin2018PTLDSglialPET (glial activation in PTLDS), Tsilioni2022ExosomemtDNAmicroglia (mtDNA→microglia in ME/CFS), Parthasarathy2022NonviableBb (sustained activation in PTLDS model).
- **Falsifiable prediction:** CSF mtDNA, IL-18, and 3-NT will NOT differ between PTLDS (n=15) and tick-borne-triggered ME/CFS (n=15) — same biomarker profile. Both will differ from viral-triggered ME/CFS (n=15) and healthy controls (n=15). Refuted if PTLDS and ME/CFS show different CSF profiles.
- **Non-specialist consequence:** Treated Lyme disease with persistent symptoms (PTLDS) and tick-triggered ME/CFS may be the same biological process — differing only in time since diagnosis and whether the bacteria are still detectable. Both would involve the same final mechanism: damaged cell power plants leaking inflammatory DNA in the brain.
- **origin:** brainstorm

### Idea 8.2 — Alzheimer's Disease: Microglial mtDNA Release as Shared Feed-Forward Mechanism (rank: 2)
- **Certainty:** 0.22
- **Mechanistic rationale:** In Alzheimer's, microglial activation is driven by Aβ and tau — not infection. However, microglial mitochondrial dysfunction is well-documented in AD: reduced spare respiratory capacity, elevated mtROS, and mtDNA release into cytosol. The mtDNA→NLRP3→IL-1β axis has been demonstrated in AD microglia. The parallel: both AD and Bb-exposed microglia may share a common terminal mechanism (mtDNA→microglial NLRP3→IL-1β) despite different upstream triggers (Aβ/tau vs Bb). This predicts: (1) AD patients with a history of Lyme disease may have accelerated cognitive decline (two upstream triggers converging on the same downstream mechanism), (2) drugs targeting mtDNA recognition (cGAS-STING, NLRP3) could work across both conditions regardless of upstream trigger. The existing paper's microglial coverage (@sec:viral-microglial-activation, ch08) and the kindling hypothesis (@hyp:kindling-microglial-priming) already approach this convergence.
- **Evidence link:** AD microglial mito dysfunction + mtDNA release literature (e.g., Wilkins2023ActaNeuropath, Minter2021JNeurosci — established but not ME/CFS-specific). Tsilioni2022ExosomemtDNAmicroglia (mtDNA→microglia same mechanism). @hyp:kindling-microglial-priming.
- **Falsifiable prediction:** In AD patients with high tick-borne disease exposure (endemic area + seropositive), CSF mtDNA and IL-18 will be higher than in AD patients without tick exposure, after controlling for age, disease duration, and APOE4 status. Cognitive decline rate will be faster in dual-exposure AD. Refuted if no interaction.
- **Non-specialist consequence:** If brain immune cell inflammation driven by damaged power-plant DNA is a common final pathway, a past Lyme infection could accelerate Alzheimer's by adding an extra inflammatory trigger to a brain already under siege — and drugs blocking this DNA-sensing pathway could help both conditions.
- **origin:** brainstorm

### Idea 8.3 — Multiple Sclerosis: Borrelia Microglial Activation as Potential MS Trigger or Exacerbator (rank: 3)
- **Certainty:** 0.15
- **Mechanistic rationale:** The Borrelia-MS link has been debated for decades (epidemiological: higher MS incidence in Lyme-endemic areas; pathogenetic: molecular mimicry between Bb OspA and human MBP). Parthasarathy2023FGFRmicroglia adds a new angle: Bb upregulates FGF2/FGFR1 in microglia, a pathway also implicated in MS (FGFR activation promotes oligodendrocyte differentiation and remyelination — but also promotes astrogliosis). If Bb exposure primes microglia via FGF/FGFR signaling, it could alter the CNS response to subsequent demyelinating events (viral, autoimmune). This is a "priming model": Bb infection does not cause MS on its own, but microglial priming (TLR upregulation + mito dysfunction + mtDNA release capacity) means that when an MS-triggering event occurs, the microglial response is amplified — producing more severe demyelination and slower recovery.
- **Evidence link:** Parthasarathy2023FGFRmicroglia (FGF/FGFR in Bb-exposed microglia), Hirsch2025GWASPTLDSMECFS (shared genetics — may extend to MS), ChavesFilho2019MicrogliaCFSdepression (shared microglial mechanisms across neuroinflammatory conditions). @sec:viral-microglial-activation (ch08).
- **Falsifiable prediction:** In MS patients stratified by Lyme serology, those with positive Borrelia serology will show higher TSPO-PET binding (more microglial activation) and faster EDSS progression, independent of DMT use. Refuted if no difference.
- **Non-specialist consequence:** A past Lyme infection might amplify damage in other brain conditions by leaving the brain's immune cells in a "hyper-reactive" state — not causing MS on its own, but making it worse if MS develops through other triggers.
- **origin:** brainstorm

---

## Category 9: Diagnostic/Biomarker Ideas

### Idea 9.1 — CSF mtDNA as CNS-Specific Biomarker of Microglial Mito Damage (rank: 1)
- **Certainty:** 0.35
- **Mechanistic rationale:** If the Bb→microglial mito damage→mtDNA release hypothesis is correct, CSF cell-free mtDNA is the most direct CNS biomarker. It is: (1) compartment-specific (reflects brain, not systemic), (2) mechanism-specific (reflects mito damage, not general inflammation), (3) quantifiable by qPCR (ND1, ND6 — established method, $30/sample), (4) potentially exercise-responsive (post-PEM spike per Tsilioni2022 pattern extended to CSF). CSF mtDNA has been studied in Parkinson's (elevated) and Alzheimer's (mixed). Never measured in ME/CFS. A single LP study (n=20 ME/CFS, n=10 controls) would provide the first CNS evidence for the hypothesis. Cost: ~$5K for assay + standard LP costs in existing study infrastructure.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (serum mtDNA — extends to CSF), Coughlin2018PTLDSglialPET (CNS inflammation — biomarker target), @spec:hypoperfusion-cbf (hypoperfusion → mito damage → mtDNA release amplified).
- **Falsifiable prediction:** CSF mtDNA will be ≥2× higher in tick-borne-triggered ME/CFS vs healthy controls. Receiver-operating analysis: AUC ≥0.80 for discriminating tick-borne ME/CFS from controls. Post-exercise CSF mtDNA (if repeated LP feasible) will increase ≥3-fold in patients but not controls. Refuted if no elevation.
- **Non-specialist consequence:** A simple DNA test on spinal fluid — measuring fragments of damaged cell power plants — could serve as an objective brain-specific biomarker for tick-triggered ME/CFS, the first laboratory test that directly reflects the hypothesized cellular damage mechanism.
- **origin:** brainstorm

### Idea 9.2 — Serum Exosomal mtDNA + Tick Serology Subtyping Panel (rank: 2)
- **Certainty:** 0.40
- **Mechanistic rationale:** Combine Tsilioni2022's exosomal mtDNA protocol with comprehensive tick-borne serology (Borrelia IgG/IgM + C6 peptide, Bartonella IFA, Babesia IFA/PCR). Prediction: patients with positive tick serology AND elevated exercise-induced exosomal mtDNA represent the "mito damage feed-forward" subtype — defined by two orthogonal markers (infection history + ongoing mitochondrial damage). This panel (~$500 total) could identify the subtype most likely to benefit from microglial-targeted treatments (minocycline, NAC). The test is already available (serology exists, exosomal mtDNA by qPCR is standard) — just never combined. This is a "biomarker combination" rather than a new assay.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (exosomal mtDNA protocol — established), Hirsch2025GWASPTLDSMECFS (genetic overlap supports tick-borne subtype).
- **Falsifiable prediction:** In a cross-sectional cohort (n=100 ME/CFS), the combination of positive tick serology + elevated post-exercise exosomal mtDNA will define a cluster (estimated 20–30% of ME/CFS) with: (1) higher cognitive fatigue (≥5 points on MFI-20 mental fatigue domain), (2) longer PEM duration (≥48h vs <24h in other clusters), (3) lower CBF by ASL-MRI. Refuted if no distinct cluster emerges.
- **Non-specialist consequence:** A two-part blood test — one checking for past tick infection (serology), one measuring DNA fragments shed from damaged cell power plants (exosomal mtDNA) — could identify a specific ME/CFS subtype with a clear biological signature and potentially targeted treatment options.
- **origin:** brainstorm

### Idea 9.3 — CSF 3-Nitrotyrosine as Specific Biomarker of NO-Mediated Mito Damage (rank: 3)
- **Certainty:** 0.30
- **Mechanistic rationale:** 3-nitrotyrosine (3-NT) is a specific footprint of peroxynitrite (ONOO⁻, formed from NO + superoxide). Peroxynitrite nitrates tyrosine residues on mitochondrial complex I and IV subunits. CSF 3-NT is specific to the NO/peroxynitrite damage pathway (Idea 1.1) and would distinguish tick-borne microglial damage (NO-dependent) from viral microglial damage (IFN-dependent, less NO). 3-NT is stable in CSF, measurable by ELISA ($40/sample), and elevated in other NO-related neurological conditions (MS, ALS, Parkinson's). Never measured in ME/CFS. If elevated in tick-borne ME/CFS but not viral-triggered, it would provide trigger-specific diagnostic information.
- **Evidence link:** Akinlusi2025MicrogliaPolarization (iNOS → NO → peroxynitrite → 3-NT pathway), Peacock2015LymeOxidativeStress (Bb → NO/oxidative stress). 3-NT in neuroinflammatory conditions (established biomarker).
- **Falsifiable prediction:** CSF 3-NT will be ≥2× higher in tick-borne-triggered ME/CFS (n=15) vs viral-triggered ME/CFS (n=15) and healthy controls (n=15), and will correlate with CSF mtDNA (r > 0.5). AUC ≥0.75 for discriminating tick-borne from viral-triggered. Refuted if 3-NT does not differ between groups.
- **Non-specialist consequence:** A protein damage marker in spinal fluid could act as a "smoking gun" for the specific type of cellular damage (toxic exhaust gas damaging power plants) that this hypothesis predicts for tick-triggered ME/CFS — distinguishing it from virus-triggered cases at the molecular level.
- **origin:** brainstorm

### Idea 9.4 — Exercise-Challenge Exosomal mtDNA + CSF 3-NT: Paired Dynamic Biomarker (rank: 4)
- **Certainty:** 0.22
- **Mechanistic rationale:** Combine two dynamic biomarker approaches: (1) pre- vs post-exercise serum exosomal mtDNA (Tsilioni2022 protocol) and (2) pre- vs post-PEM CSF 3-NT (if repeated LP feasible, or paired with CSF mtDNA). The rationale: a single resting measurement may miss the mechanism. Exercise (pushing past the anaerobic threshold) likely amplifies the feed-forward loop, making the biomarker signal detectable. This "provocative biomarker" approach is analogous to OGTT for diabetes or CPET for metabolic function. The paired serum-mtDNA + CSF-3NT protocol would provide both peripheral (mtDNA release) and CNS (peroxynitrite damage) dynamic readouts of the same mechanism.
- **Evidence link:** Tsilioni2022ExosomemtDNAmicroglia (exercise → exosomal mtDNA — the dynamic protocol), @spec:hypoperfusion-cbf (exercise → CBF reduction → hypoxia → mito damage amplification).
- **Falsifiable prediction:** In tick-borne ME/CFS (n=15), post-exercise serum exosomal mtDNA will increase ≥3-fold AND post-PEM CSF 3-NT will increase ≥1.5-fold (if paired LP feasible, n=5). The ratio of (post-exercise mtDNA)/(pre-exercise mtDNA) will be ≥2× higher in tick-borne vs viral ME/CFS and controls. Refuted if no dynamic change in either biomarker.
- **Non-specialist consequence:** A "stress test" for cell power plant damage — measuring DNA fragments in blood before and after exercise — could reveal damage that's invisible at rest, like a cardiac stress test for cellular energy systems.
- **origin:** brainstorm

---

## Category 10: Reasons This Mechanism May NOT Be Relevant to ME/CFS

### Idea 10.1 — Microglial Activation Is Non-Specific — Present in Every Neuroinflammatory Condition (rank: 1)
- **Certainty:** 0.65
- **Mechanistic rationale:** Microglial activation is a generic response to ANY CNS insult — infection, trauma, neurodegeneration, autoimmune attack, metabolic stress. Finding activated microglia in ME/CFS (if replicated) would be expected and non-specific. It would not imply a unique Borrelia→mitochondrial damage mechanism — it could reflect: (1) feedback from peripheral immune activation (peripheral cytokines cross BBB and activate microglia), (2) response to neuronal distress from any cause (metabolic, vascular, autoimmune), (3) sleep deprivation (widespread in ME/CFS, activates microglia), (4) depression (comorbid, activates microglia). The "unique mechanism" claim (Bb→iNOS→NO→mito damage→mtDNA→feed-forward) requires MICROGLIA-SPECIFIC iNOS upregulation AND mito damage AND mtDNA release that persists after Bb clearance. This specific chain has never been demonstrated. More parsimonious: microglial activation in ME/CFS is a secondary response to the primary pathology (hypoperfusion, WASF3-driven metabolic failure, autoantibodies) — not the primary pathology itself.
- **What would disprove:** Demonstration that tick-borne-triggered ME/CFS has a DIFFERENT microglial biomarker signature (elevated CSF 3-NT, mtDNA, IL-18) than non-tick ME/CFS, and that this signature correlates with symptom severity independent of depression, sleep disturbance, and peripheral inflammation.
- **Alternative explanation:** Microglial activation in ME/CFS is the RESULT of metabolic crisis (neurons starving → ATP release → microglial P2X7 activation → IL-1β), not the cause. The primary defect is neuronal/astrocytic energy failure; microglia are innocent bystanders.
- **Non-specialist consequence:** Activated immune cells in the brain are found in virtually every brain disorder — they could be causing the symptoms in ME/CFS, or they could just be reacting to the underlying problem. This mechanism doesn't distinguish between cause and consequence.
- **origin:** brainstorm

### Idea 10.2 — The Mitochondrial Step Is Entirely Speculative — Zero Direct Evidence (rank: 2)
- **Certainty:** 0.80
- **Mechanistic rationale:** The hypothesis chain has zero studies bridging Bb exposure to microglial mitochondrial dysfunction. Every claim about NO→complex inhibition→mtDNA release in microglia after Bb is inferred from: (1) iNOS upregulation in microglia after Bb (Akinlusi2025, proven), (2) NO→complex IV inhibition in other cell types (established, but never shown in microglia after Bb), (3) mtDNA→NLRP3→IL-1β in other cell types (established, never shown as a result of Bb exposure). The gap between "iNOS mRNA is upregulated" and "mitochondrial respiration is depressed, mtDNA is released, and IL-1β is driven by mtDNA" is vast. It is entirely possible that microglial NOS upregulation is regulated such that NO production is limited (by arginine availability, by cofactor tetrahydrobiopterin, by simultaneous NOS uncoupling) — and NO may never reach concentrations sufficient to inhibit complex IV. The "feed-forward loop" may self-limit before it begins because anti-inflammatory pathways (IL-10, TGF-β, CD200-CD200R) are simultaneously activated by Bb and dominate the long-term response.
- **What would disprove:** The in vitro experiments in Category 2 produce the predicted results (OCR reduction, mtDNA release, IL-1β — all iNOS-dependent).
- **Alternative explanation:** Bb activates microglia (established), and microglial iNOS is induced (established), but NO is rapidly consumed by local ROS (forming peroxynitrite that damages bacteria, not host mitochondria) — the NO is an antimicrobial weapon, not a self-damaging exhaust. Microglial mitochondria are protected by high constitutive levels of MnSOD, TRX, and GSH that buffer the NO/ROS stress. The iNOS induction is part of a sterile antimicrobial program that resolves without host damage.
- **Non-specialist consequence:** The centerpiece of this hypothesis — that Lyme infection damages brain immune cells' power plants — is a complete guess. There is zero data showing this actually happens. The brain's immune cells may have built-in protective systems that prevent the very damage this hypothesis predicts.
- **origin:** brainstorm

### Idea 10.3 — Microglial NO Production May Be Antimicrobial, Not Pathological (rank: 3)
- **Certainty:** 0.55
- **Mechanistic rationale:** iNOS and NO production are evolutionarily conserved antimicrobial mechanisms. In macrophages, iNOS generates NO to kill intracellular bacteria (Borrelia is NO-sensitive in vitro). In microglia, NO may similarly function to control Borrelia — it is a HOST DEFENSE, not a pathological mediator. The NO concentrations achieved in vivo may be sufficient for antimicrobial activity but below the threshold for mitochondrial damage (K_m for complex IV inhibition is ~0.1 μM NO, achievable; but cells maintain high GSH that buffers peroxynitrite and alternative oxidase pathways in microglia). The claim that NO→complex inhibition becomes a pathological feed-forward loop assumes the NO production rate exceeds the CNS antioxidant capacity — an assumption that has never been tested. In healthy microglia, NO production is tightly regulated: iNOS translation requires multiple signals (IFN-γ + TLR signal), NO negative-feedback inhibits iNOS via NF-κB (S-nitrosation of IKKβ), and IL-10/TGF-β downregulate iNOS. For the feed-forward loop to establish, NO production must escape these controls.
- **What would disprove:** Direct measurement showing that in Bb-exposed microglia, NO reaches concentrations > 1 μM PERSISTENTLY (>72h) despite the presence of anti-inflammatory cytokines, and that these concentrations cause complex IV inhibition.
- **Alternative explanation:** Bb-induced microglial iNOS is a self-limited acute antimicrobial response. NO production peaks at 6–24h, declines by 48–72h (iNOS mRNA has short half-life, protein is degraded), and never reaches the sustained level needed for chronic mitochondrial damage. The iNOS response is a FEATURE of normal microglial function, not a BUG.
- **Non-specialist consequence:** The immune chemical (NO) that this hypothesis blames for damaging brain cells is actually a standard weapon the body uses to kill bacteria — it may work as intended (fighting the infection) and then shut off, never reaching levels high enough to damage the cell's own machinery.
- **origin:** brainstorm

### Idea 10.4 — Bartonella Microglial Infection Evidence Is Vanishingly Thin (rank: 4)
- **Certainty:** 0.70
- **Mechanistic rationale:** The Bartonella component of this hypothesis rests on a single 2001 feline study (Munana2001, cert 0.55) showing B. henselae infects fetal feline microglia in vitro. This has: (1) never been replicated for Bartonella in any species, (2) never been shown in human microglia, (3) never been shown for Bartonella species other than henselae (e.g., B. quintana, B. bacilliformis), (4) never included functional readouts (cytokines, NO, mitochondrial function), (5) used fetal feline cells (species difference in TLR/iNOS pathways). The human relevance is unknown. Bartonella is known to invade erythrocytes and endothelial cells, but CNS invasion in humans is debated (cat-scratch encephalopathy is well-described clinically but mechanism is unclear — may be immune-mediated, not direct infection). It is entirely possible that Bartonella does NOT infect human microglia in vivo, making the entire Bartonella→microglial mito damage chain a non-starter.
- **What would disprove:** A single study showing B. henselae infection of primary human microglia with intracellular persistence >72h and cytokine/NO production.
- **Alternative explanation:** Bartonella causes CNS symptoms through systemic effects (endothelial dysfunction→BBB impairment, immune complex deposition, or bystander T-cell activation) rather than direct glial infection. The 2001 feline study may represent a feline-specific phenomenon.
- **Non-specialist consequence:** The claim that cat-scratch bacteria directly infect brain immune cells comes from a single 2001 experiment using cat cells — not human cells. It may simply not happen in humans, removing Bartonella entirely from this proposed mechanism.
- **origin:** brainstorm

---

## Category 11: Null Hypothesis Assessment

### Idea 11.1 — Null: Bb Does Not Cause Sustained Microglial Mitochondrial Dysfunction (rank: 1)
- **Certainty:** 0.60 (probability null is true given current evidence)
- **Mechanistic rationale:** Under the null: Bb activates microglia transiently via TLR1/2 (established), microglial iNOS is induced as an acute antimicrobial response (established), but the response resolves normally via anti-inflammatory feedback (IL-10, TGF-β, CD200, fractalkine). Microglial mitochondrial function returns to baseline and the proposed feed-forward loop (NO→mito damage→mtDNA→IL-1β→more NO) does NOT establish. The Tsilioni2022 finding (exosomal mtDNA activates microglia) is real but reflects a DIFFERENT upstream source — perhaps exercise-induced muscle mitochondrial damage or systemic immune cell death — NOT microglial autocrine mtDNA release. The mtDNA is arriving from the periphery, not generated by CNS microglia. The Bb→microglia link is a transient immune response with no chronic sequelae. PTLDS symptoms are driven by peripheral inflammation (persistent immune activation, autoantibodies, or other mechanisms) that secondarily affects the brain.
- **What paper claims would need revision if null is true:**
  - `@hyp:kindling-microglial-priming` (ch08, cert 0.35) — the kindling substrate would not be microglial NO→mito damage; would need alternative mechanism or downgrade
  - `@spec:tickborne-glial-reprogramming` (ch08, cert 0.30) — would be significantly weakened if microglial mito damage does not occur
  - Any spec linking Bb directly to microglial mitochondrial dysfunction → need to downgrade to ≤0.05
  - The feed-forward mtDNA→microglia model would need revision to a peripheral-to-central model (mtDNA arrives from periphery via circulation)
- **Non-specialist consequence:** If the null is true, the entire idea that Lyme bacteria damage brain immune cell power plants is wrong. The Lyme→microglia connection is a short-lived, self-limited immune response that resolves without lasting damage — leaving the question of what causes persistent symptoms in tick-triggered ME/CFS completely open.
- **origin:** brainstorm

### Idea 11.2 — Null: mtDNA Release Is a Peripheral Phenomenon — Microglial mtDNA Is Not Involved (rank: 2)
- **Certainty:** 0.55 (probability null is true)
- **Mechanistic rationale:** Tsilioni2022 shows ME/CFS serum exosomes contain mtDNA that activates microglia in vitro. The site of mtDNA ORIGIN is unknown — it could be from: (1) skeletal muscle mitochondria damaged by exertion, (2) PBMCs undergoing activation-induced cell death or NETosis, (3) platelet/megakaryocyte mitochondria, (4) endothelial cells damaged by shear stress or autoantibodies. It does NOT have to be from microglial mitochondria. The observation that Bb activates microglia (established) does not mean Bb-damaged microglial mitochondria are the mtDNA source. In fact, Tsilioni2022 found mtDNA elevation specifically AFTER EXERCISE — a systemic challenge that would primarily stress muscle and immune cells, not CNS microglia (the BBB is intact at rest). The mtDNA in circulation probably originates from peripheral tissues. This would mean the microglial mitochondrial dysfunction component of the hypothesis (the central gap) is irrelevant — the mtDNA comes from elsewhere and activates microglia as a secondary responder, not as a primary source.
- **What paper claims would need revision if null is true:**
  - The entire "Bb→microglial mito damage→mtDNA release→sustained microglial activation" chain would collapse — the mtDNA that drives microglial activation comes from outside the CNS
  - The feed-forward loop would need to be revised to: peripheral mtDNA release (exercise-induced) → BBB leakage or exosomal transport → microglial activation → IL-1β → neuroinflammation — still involving microglia as effectors but not as primary mito damage sites
  - `@spec:tickborne-glial-reprogramming` may still be valid (reprogramming without mito damage) but needs separation from the mito damage claim
- **Non-specialist consequence:** The DNA fragments that activate brain immune cells may come from damaged muscles or blood cells after exertion, not from brain cells at all. The Lyme infection damages peripheral cells, and those damaged cells' DNA fragments float to the brain and set off alarms there — the brain's immune cells are victims, not perpetrators.
- **origin:** brainstorm

### Idea 11.3 — Null: Bb and Bartonella Do Not Differ from Other Triggers in Microglial Mechanism (rank: 3)
- **Certainty:** 0.50 (probability null is true)
- **Mechanistic rationale:** Under the null, all infectious triggers of ME/CFS (EBV, SARS-CoV-2, Borrelia, Bartonella, enterovirus, influenza) converge on the SAME microglial activation program: TLR/IFNAR activation → NF-κB/IRF → inflammatory cytokines + M1 polarization. The Borrelia-specific iNOS→NO pathway is not unique — viral triggers also induce iNOS (via IFN-γ from T cells and type I IFN). The NO concentration achieved after viral triggers may be comparable to Bb. The mitochondrial dysfunction seen in ME/CFS (ch17) is a COMMON downstream consequence of any sustained microglial activation — not specific to Borrelia's iNOS pathway. The "Borrelia → NO → mito damage" emphasis is a distinction without a difference. All activated microglia produce NO, all activated microglia undergo metabolic reprogramming, and all activated microglia can release mtDNA (if their mitochondria are damaged). There is no Borrelia-specific mechanism. The tick-specific claims add complexity without explanatory power.
- **What paper claims would need revision if null is true:**
  - `@hyp:tickborne-glycolytic-reprogramming` (ch07) — claims tick-borne pathogens impose distinct metabolic reprogramming; would need downgrade if mechanism is common
  - `@spec:tickborne-glial-reprogramming` (ch08) — same: no distinct tick-borne glial signature
  - The three-pathogen framing (Borrelia + Bartonella + Babesia) would be misleading if their effects are indistinguishable from viral triggers
  - The paper's unique mechanism claims for tick-borne pathogens would need softening to "additional examples of a common mechanism"
- **Non-specialist consequence:** The attention given to tick infections having a unique mechanism for damaging brain cell power plants may be misplaced — all infections that trigger ME/CFS may damage these cells through the SAME general immune response, making the specific tick focus unnecessary for explaining the biology.
- **origin:** brainstorm

---

## Category 12: Evidence Quality Concerns

### Idea 12.1 — Myers2009: Key Claim Rests on Rhesus Microglia + SH-SY5Y Cell Line (rank: 1)
- **Certainty:** 0.70
- **Specific concerns:**
  1. **Non-human microglia.** The study uses rhesus macaque primary microglia, not human. Primate microglia are closer to human than rodent, but species-specific differences in TLR expression, iNOS regulation, and cytokine responses exist (rhesus TLR4 is more responsive than human).
  2. **Neuroblastoma cell line, not primary neurons.** SH-SY5Y is a cancer cell line with abnormal metabolism and stress responses. The central claim — "microglia are necessary for Bb-induced neuronal apoptosis" — needs replication using primary human neurons or iPSC-derived neurons.
  3. **Single Bb strain.** Bb strain B31 was used. Different strains (B. afzelii, B. garinii, different B. burgdorferi sensu stricto isolates) may have different microglial activation profiles.
  4. **Needs direct replication.** This paper (2009, PLoS Pathogens) is foundational but has not been independently replicated by another laboratory. The Parthasarathy group (same institution, Tulane) has extended the work but with different designs.
- **Impact:** If this core finding does not replicate in human primary microglia + human iPSC-neurons, the entire "microglia are necessary intermediary" claim rests on rhesus + cancer cell data. This would weaken the hypothesis's foundation.
- **What would strengthen the case:** Replication in human iPSC-derived microglia + iPSC-derived cortical neurons, with Bb B31 + B. afzelii + B. garinii.
- **Non-specialist consequence:** The most important experiment showing Lyme bacteria need brain immune cells to kill brain cells was done using monkey cells and cancer cells — never confirmed with actual human brain cells in the 17 years since publication.
- **origin:** brainstorm

### Idea 12.2 — Akinlusi2025: Immortalized HMC3 Cell Line Only (rank: 2)
- **Certainty:** 0.50
- **Specific concerns:**
  1. **HMC3 is an SV40-immortalized human microglial cell line.** HMC3 cells have known differences from primary human microglia: different baseline TLR expression, altered cytokine responses (lower TNF-α, higher IL-6), abnormal p53 function (SV40 large T antigen), and potentially different iNOS regulation.
  2. **Limited polarization marker panel.** The study used iNOS (M1), TNF-α (M1), IL-1β (M1), Arg-1 (M2), and CD206 (M2) — a minimal panel. Comprehensive polarization assessment requires: IL-12/23, CXCL10, CCL22, CD86, CD163, CD200R, and ideally transcriptomic profiling.
  3. **Polarization is a continuum, not binary.** M1/M2 polarization is an oversimplification; microglia exist in multiple activation states simultaneously. Reporting M1/M2 shift without addressing the complexity is a method limitation.
  4. **No metabolic confirmation.** The study reports iNOS upregulation (→ NO expected) but does not measure NO (Griess assay) or any metabolic readout (Seahorse, lactate). The metabolic consequences of M1 polarization are inferred, not measured.
- **Impact:** If confirmed in primary human microglia, the iNOS upregulation claim is likely robust (iNOS is a canonical M1 marker). However, the quantitative magnitude and duration of iNOS upregulation may differ — primary cells may show smaller and shorter-lived responses, reducing the NO→mito damage potential.
- **What would strengthen the case:** Replication in primary human microglia with comprehensive metabolic phenotyping (NO quantification by Griess, OCR/ECAR by Seahorse, mtROS by MitoSOX).
- **Non-specialist consequence:** The study that found Lyme bacteria push brain immune cells into an inflammatory state used an artificial lab cell line — the response in real human brain cells could be weaker, shorter-lived, or different in important ways.
- **origin:** brainstorm

### Idea 12.3 — Coughlin2018: Small Sample, TSPO Cannot Distinguish Microglia from Astrocytes (rank: 3)
- **Certainty:** 0.65
- **Specific concerns:**
  1. **n=12 PTLDS patients.** Very small sample for a correlation analysis between TSPO binding and symptom severity. Possible that 2–3 outliers drive the correlation.
  2. **TSPO is expressed on both microglia AND astrocytes.** [11C]DPA-713 binds TSPO on the outer mitochondrial membrane of both cell types. The signal may reflect astrocyte activation (which responds to neuronal metabolic stress) rather than microglial activation (which would be the primary inflammatory driver). The two cell types have different functional implications.
  3. **rs6971 polymorphism confound.** TSPO binding affinity varies by the Ala147Thr polymorphism. Not all participants were genotyped, and the binding affinity effect can cause 2-fold differences in apparent TSPO density.
  4. **No pre-treatment baseline.** Patients were scanned after antibiotic treatment. The correlation between TSPO binding and current symptoms could reflect ongoing peripheral inflammation (activated peripheral immune cells express TSPO and cross the BBB) rather than CNS-resident glial activation.
  5. **Single timepoint, no longitudinal data.** Cannot determine if glial activation resolves, persists, or fluctuates over time.
- **Impact:** This is the only in vivo human evidence for glial activation in PTLDS. If the TSPO signal is primarily astrocytic (responding to neuronal metabolic distress) rather than microglial (driving inflammation), the interpretation shifts from "microglia are causing neuroinflammation" to "astrocytes are responding to energy failure."
- **What would strengthen the case:** Replication with larger sample (n≥30/group), rs6971 genotyping, second-generation TSPO-PET ligand with better signal-to-noise (e.g., [11C]PBR28), and ideally a cell-type-specific tracer (none currently available for human PET).
- **Non-specialist consequence:** The brain PET scan study that found inflammation in treated Lyme patients can't tell whether the signal comes from "aggressor" immune cells (microglia) or "support" cells (astrocytes) — these have very different implications for what's causing symptoms.
- **origin:** brainstorm

### Idea 12.4 — Tsilioni2022: HMC3 Cell Line, Small Sample, Post-Exercise Only (rank: 4)
- **Certainty:** 0.55
- **Specific concerns:**
  1. **HMC3 immortalized line (same as Akinlusi2025).** HMC3 responses to mtDNA may differ from primary microglia. TLR9 (the primary mtDNA sensor) expression may differ between HMC3 and primary cells.
  2. **Small sample size.** ME/CFS n=20, controls n=10. Underpowered for subgroup analysis (could not determine if mtDNA elevation is specific to a subtype).
  3. **Post-exercise measurement only.** No resting mtDNA measurement in this study (though other work shows no difference). The post-exercise elevation could be driven by muscle injury (exertion-induced myofiber damage → muscle mtDNA release → circulation) rather than CNS or immune cell mtDNA.
  4. **HMC3 mtDNA response may differ from in vivo.** HMC3 exposed to patient exosomes at 24h released IL-1β. In vivo, the response may be modulated by other serum factors (sCD14, sTLR2, natural antibodies) that buffer the mtDNA signal.
  5. **No donor matching.** ME/CFS and control samples were not age/sex/BMI-matched (though statistical correction was applied).
- **Impact:** Tsilioni2022 is the critical bridge paper. If the mtDNA→microglia IL-1β effect is confirmed in primary human microglia with larger sample sizes and pre/post-exercise design (within-patient), its cert would increase significantly. If not, the terminal step of the hypothesis is an HMC3 artifact.
- **What would strengthen the case:** Replication in primary human microglia + iPSC-derived microglia, with pre- and post-exercise samples from a larger well-characterized ME/CFS cohort (n≥50), and patient-to-patient validation (does microglia from patient A's mtDNA activate their own microglia?).
- **Non-specialist consequence:** The experiment showing that ME/CFS patients' blood contains DNA fragments that activate brain immune cells used an artificial lab cell line and only 20 patients — strong for a pilot but needs confirmation in real human brain cells and a larger group before we can rely on it.
- **origin:** brainstorm

### Idea 12.5 — Munana2001: Single Study, Feline Cells, 24 Years Old, No Follow-Up (rank: 5)
- **Certainty:** 0.35
- **Specific concerns:**
  1. **Fetal feline cells, not human.** Species differences in Bartonella-microglia interaction are likely. Bartonella host tropism is species-specific (B. henselae evolved in cats). Human microglia may express different receptors and may not support Bartonella invasion.
  2. **Single study, never replicated.** Published 2001 in Infection and Immunity. No independent replication. The same group may not have pursued this line.
  3. **No functional readouts.** The study reported bacterial internalization and survival — no cytokine measurement, no NO measurement, no microglial activation markers. Whether Bartonella-infected microglia become activated is unknown.
  4. **Fetal vs adult microglia.** Fetal microglia have different properties (M2-biased, developmental programming). Adult microglia may respond differently to Bartonella.
  5. **Low clinical prevalence.** Even if Bartonella infects human microglia, how common is this? Bartonella CNS infection in immunocompetent humans is rare (cat-scratch encephalopathy is ~2–4% of seropositive patients). The fraction of ME/CFS patients with CNS Bartonella infection may be vanishingly small.
- **Impact:** The Bartonella→microglia chain is the weakest link in the three-pathogen narrative. If Munana2001 is not replicable in human microglia, the Bartonella component of the hypothesis should be removed entirely or downgraded to a speculative note.
- **What would strengthen the case:** A single study showing B. henselae internalization and/or TLR activation in primary human microglia or HMC3 cells, with cytokine readouts.
- **Non-specialist consequence:** The evidence that cat-scratch bacteria infect brain immune cells comes from a single 2001 study using cat cells that has never been confirmed in humans — nearly a quarter-century without follow-up speaks volumes about the scientific community's confidence in this finding.
- **origin:** brainstorm

---

## Summary

### Count by Category
| Category | Ideas |
|----------|-------|
| 1. Novel hypotheses | 6 |
| 2. Research directions | 5 |
| 3. Drug/medication | 4 |
| 4. Supplement/nutraceutical | 3 |
| 5. Non-pharmacological | 3 |
| 6. Combinations + access | 3 |
| 7. Mathematical model extensions | 3 |
| 8. Cross-disease bridges | 3 |
| 9. Diagnostic/biomarker | 4 |
| 10. Reasons NOT relevant | 4 |
| 11. Null hypothesis assessment | 3 |
| 12. Evidence quality concerns | 5 |
| **Total** | **46** |

### Top 3 Highest-Value Ideas

1. **Idea 2.1 — Direct Measurement of Microglial Mitochondrial Function After Bb** (Category 2, cert 0.45). The single experiment that determines whether the entire hypothesis chain (currently cert 0.00) is correct. Measures OCR, mtDNA release, and IL-1β in Bb-exposed microglia ± iNOS inhibitor. Feasible ($20K, 4 months, standard assays). If positive, raises the middle-step certainty from 0.00 to ≥0.60.

2. **Idea 1.3 — Two-Hit Microglial Priming: Borrelia Then mtDNA as Sequential Triggers** (Category 1, cert 0.30). Best novel hypothesis: bridges the Bb→microglial activation literature with the ME/CFS-specific Tsilioni2022 mtDNA finding into a unified model. Explains PEM (exercise provides the second hit), non-viable debris persistence (first hit lasts), and post-antibiotic symptoms (priming persists). Makes specific falsifiable prediction about IL-1β requiring two signals.

3. **Idea 6.1 — Minocycline + NAC: Two-Point Break of Feed-Forward Loop** (Category 6, cert 0.18). Most actionable therapeutic idea: targets both upstream (microglial activation via minocycline) and midstream (peroxynitrite scavenging via NAC). Both generic, safe, available. Pragmatic open-label pilot with CSF biomarker endpoints would test the mechanism and potentially provide a treatment at low cost.
