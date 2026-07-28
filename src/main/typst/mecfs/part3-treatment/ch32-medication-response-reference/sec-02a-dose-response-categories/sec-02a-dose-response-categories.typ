#import "../../../shared/environments.typ": *

== Dose-Response Curve Shape as Diagnostic Readout <sec:dose-response-categories>

Seventeen medications in ME/CFS share non-monotonic dose-response patterns distributed across at least four mechanistically distinct categories. The central clinical implication: *where* on the dose axis a drug produces benefit, loses benefit, or causes side effects is diagnostic — the response pattern at each dose range is an assay of whether that dose engages (or overshoots) a specific mechanism. @Calabrese2021Nrf2 @Calabrese2021UltraLow @Sun2020yinYangHormesis

=== Category 1: Nrf2-Mediated Hormesis

These drugs trigger compensatory anti-inflammatory and antioxidant gene expression via the Keap1-Nrf2-ARE pathway. Benefit is the cell's adaptive response, not the drug's direct action. The window is narrow because too little drug fails to activate Nrf2 while too much extinguishes the stress signal or overwhelms compensatory capacity.

*Drugs in this category:* LDN (TLR4/Nrf2 priming at 0.5--1.5 mg), low-dose lithium (0.3--5 mg), melatonin (0.3--5 mg), sulforaphane (10--60 mg), NAC (600--2,400 mg, dual category), quercetin (250--1,000 mg, dual category).

*How to read:* Benefit at low dose lost at higher dose → narrow Nrf2 reserve. Benefit persisting to higher doses → broad Nrf2 reserve. The inversion point at which benefit disappears measures Nrf2 transcriptional reserve. If all Nrf2-cluster drugs show narrow windows → Nrf2 reserve depleted; prioritize Nrf2-sparing interventions. If all show broad windows → Nrf2 is NOT the rate-limiting bottleneck.

*Cross-drug prediction:* Nrf2-cluster drugs' inversion points should correlate within patients but NOT with catecholamine-cluster inversion points. Falsified if the correlation is zero or if cluster inversion points correlate across clusters.

=== Category 2: Partial-Agonist Inverted-U

The inverted-U is a receptor-occupancy property — not biological adaptation. The drug activates the receptor with lower intrinsic activity than the natural ligand (dopamine). At low occupancy: net agonism. At high occupancy: displacement of dopamine produces net antagonism. This applies identically in any population with dopamine deficit.

*Drugs in this category:* LDA (aripiprazole 0.2--2 mg, D2/D3, ~25% intrinsic activity). Single member in ME/CFS.

*How to read:* Benefit at low dose (≤1 mg for microglial D2) → D2 receptors present and functional; microglial D2-mediated cytokine suppression is rate-limiting. Benefit at 1--2 mg → mesocorticolimbic D2 + 5-HT1A engaged — broad D2 reserve. Benefit lost above 2 mg or akathisia → inversion point crossed; occupancy exceeding 50% produces net D2 antagonism. The threshold dose at which benefit disappears maps the receptor reserve.

=== Category 3: Catecholamine Inverted-U at Prefrontal Cortex

The inverted-U is the native operating curve of prefrontal D1/α2A circuits. These drugs push the system along its existing curve. The inversion point reveals baseline catecholamine tone. Drugs that increase tone (modafinil, duloxetine) push from the left arm toward the peak; drugs that decrease tone (beta-blockers, guanfacine) push from the right arm toward the peak. A patient who benefits from BOTH a low-dose catecholamine elevator (modafinil) and a low-dose catecholamine reducer (beta-blocker) has a paradoxically broad inverted-U peak.

*Drugs in this category:* Modafinil/armodafinil, duloxetine, beta-blockers (propranolol), guanfacine, gabapentinoids (partial, mixed mechanism).

*How to read:* Low inversion point (benefit lost at low dose) → baseline catecholamine tone is close to the peak; narrow catecholamine-cluster windows predicted. High inversion point (benefit sustained to high doses) → baseline tone is very low; monotonic-increasing benefit may tolerate doses that invert for other patients. Cross-cluster coherence: if all catecholamine-cluster drugs show narrow windows → catecholamine dynamic range narrowed.

=== Category 4: Concentration-Dependent Target Selection and Biphasic Biochemistry

These drugs' non-monotonic patterns arise from mechanisms specific to each drug. No shared mechanism; no cross-drug predictive value.

*Subtype 4a — Two-target selectivity:* Opposing effects at therapeutic vs. spillover target. Rapamycin (mTORC1 therapeutic at 0.5--2 mg/week, mTORC2 harmful at higher cumulative exposure), corticosteroids (physiological GR replacement vs. HPA suppression), lithium at higher doses (IMPase inhibition counteracting GSK-3β/Nrf2 benefit).

*Subtype 4b — Pharmacokinetic threshold:* CNS penetration determines therapeutic range. DORAs (daridorexant 25--50 mg partial orexin blockade = therapeutic, 100 mg = narcolepsy-like), H1 antihistamines (cetirizine CNS sedation threshold vs. fexofenadine peripheral-only), ketotifen (mast-cell stabilization at low dose, CNS H1 sedation at higher dose).

*Subtype 4c — Biphasic biochemistry:* Two opposing biochemical effects at different concentrations. NAC (thiol-radical burst at low dose → transient glutathione depletion vs. net glutathione synthesis at higher dose), allopregnanolone (anxiogenic at low concentrations via high-affinity GABA-A site, anxiolytic at higher concentrations when both sites engaged), quercetin (Nrf2 activation at low dose vs. COMT inhibition + catechol auto-oxidation at high dose).

=== Reading the Pattern Across Categories

The diagnostic signal is not in any single drug's dose-response — it is in the *pattern across drugs.* All Nrf2-cluster drugs show narrow windows → Nrf2 reserve depleted. All catecholamine-cluster drugs show narrow windows → PFC catecholamine dynamic range narrowed. Nrf2 narrow + catecholamine broad → TLR4-dominant neuroinflammatory subtype. Nrf2 broad + catecholamine narrow → catecholamine-dominant subtype. Every cluster narrow → global adaptive compromise; "ultra-low, ultra-slow" strategy indicated.

The detailed per-drug dose-range interpretive reference (every drug's dose-response table) is at @sec:hormetic-dose-range-reference. The hormetic M1--M4 cascade for LDN specifically is at @ch:mechanistic-cascade-tracing (Chapter 33, sec-08). Falsifiable predictions and trial specifications are at @ch:mechanistic-cascade-tracing.
