#import "environments.typ": *

= Changelog

This changelog records which chapters and sections were substantially revised
in each version of the document. Minor corrections (typos, formatting) are not
listed.

Each entry follows the format: *What* changed, _why_ it changed
(new evidence, error correction, reviewer feedback, etc.), and which
*key sources* motivated the change where applicable.

== Version 6 (2026-03-08 – 2026-04-12)

=== New Content

  - *G32 creatine RCT literature integration with muscle-vs-brain dissociation* (Chapter 6, Step 8 creatine section expanded with converging evidence from three conditions; gap table G32 entry refined; gap commentary rewritten; Appendix H, 3 new annotated entries; references.bib, 4 new entries with `research_stream = creatine-shuttle`): Tenth `/integrate-topic` harvest for the ch06 10-step pipeline. G32 landscape transformed: (1) Ostojic 2016 ($n = 21$, double-blind crossover) — GAA (creatine precursor) in CFS successfully loaded muscle creatine (+36.3%) but had *no effect on fatigue*; (2) Alves 2013 (double-blind RCT) — creatine in fibromyalgia increased muscle PCr +80.3% and improved strength but had *no effect on fatigue, pain, cognition, or QoL*; (3) Dos Santos 2026 ($n = 58$ completers, single-blind) — 6 g/day creatine in Long COVID reduced fatigue ($p = 0.005$); (4) Slankamenac 2023 ($n = 12$, double-blind) — 6-month creatine in post-COVID increased tissue creatine and reduced fatigue at 3 months. *Key insight:* muscle creatine loading does not resolve fatigue in either CFS or FM — the Godlewska brain-specific MRS signal is the mechanistically relevant target. Future RCT should use brain MRS as primary outcome. _Motivated by:_ @Ostojic2016GAA — informative CFS-specific null on fatigue despite successful muscle loading; @Alves2013creatineFM — cautionary FM precedent; @DosSantos2026creatineCovid — largest post-viral creatine RCT with fatigue benefit.

  - *G34 NRF2 pathway literature integration* (Chapter 6, Step 9 NRF2 bullet expanded with evidence landscape, gap commentary updated; Appendix H, 2 new annotated entries; references.bib, 2 new entries with `research_stream = nrf2-pathway`): Eighth `/integrate-topic` harvest for the ch06 10-step pipeline. G34 confirmed fully open — no published study has directly measured NRF2 protein, NRF2 nuclear translocation, or NRF2 target gene expression panels in ME/CFS patient samples. A MERUK-funded study (Khan, Dundee, 2014) was designed to do exactly this but never published results. Davis et al.\ 2025 explicitly name NRF2 inhibition as a contributor to ME/CFS symptom persistence. Shankar 2025 (already cited) measured multiple NRF2 target products (MnSOD, GPX4, glutathione) without measuring NRF2 itself — the upstream regulator is unmeasured while downstream consequences are documented. Long COVID bridge: Morris et al.\ 2023 showed SARS-CoV-2 directly suppresses NRF2 protein and NRF2-dependent gene expression in airway epithelial cells and mice, with NRF2-knockout mice showing worse outcomes. _Motivated by:_ @Davis2025nrf2lipid — first review to explicitly name NRF2 inhibition in ME/CFS; @Morris2023nrf2covid — mechanistic bridge from viral infection to NRF2 suppression.

  - *G39 PGC-1α literature integration with four-way convergent indirect evidence and hypothesis refinement* (Chapter 6, Step 10 PGC-1α hypothesis substantially rewritten; gap description and table entry refined; gap commentary expanded; Appendix H, 3 new annotated entries; references.bib, 3 new entries with `research_stream = pgc1a-biogenesis`): Ninth `/integrate-topic` harvest for the ch06 10-step pipeline. G39 narrowed from "entirely unstudied" to "partially characterised with contradictory signals requiring resolution." Four-way indirect evidence: (1) Castro-Marrero 2013 ($n approx 23$ CFS) — PGC-1$alpha$ protein *normal* in CFS PBMCs (reduced in FM); (2) Wawrzyniak 2016 ($n = 48$) — PGC-1$alpha$ reduced 37.4% in idiopathic chronic fatigue muscle (not ME/CFS); (3) Wang/WASF3 2023 ($n = 14$ ME/CFS biopsies) — PGC-1$alpha$ *mRNA paradoxically upregulated* as failed compensatory response; (4) Brown 2018 — AMPK activation impaired in ME/CFS muscle cells but rescued by pharmacological activators (metformin, compound 991). *Hypothesis refined:* the failure mode is likely post-translational (PGC-1$alpha$ hyperacetylation due to dual brake: impaired AMPK/SIRT1 activation + active SIRT4 suppression) rather than transcriptional. The critical measurement is PGC-1$alpha$ acetylation ratio in muscle, not total protein. _Motivated by:_ @CastroMarrero2013mito — informative PBMC null result constraining tissue specificity; @Wawrzyniak2016biogenesis — closest muscle evidence for biogenesis deficit in chronic fatigue; @Brown2018AMPK — impaired upstream AMPK activation with pharmacological rescue demonstrating therapeutic potential.

  - *G16 aconitase literature integration with three-way convergent evidence* (Chapter 6, Step 5 aconitase paragraph expanded with Yamano 2016 metabolomics and Ciregia 2016 proteomics; gap table G16 entry updated; Appendix H, 1 new annotated entry (Ciregia 2016); references.bib, 1 new entry with `research_stream = krebs-cycle`): Seventh `/integrate-topic` harvest for the ch06 10-step pipeline. G16 confirmed open — no study has directly measured aconitase enzymatic activity in ME/CFS. Three-way convergent indirect evidence now documented: (1) metabolomic — Yamano 2016 ($n = 67$) found reduced isocitrate and explicitly proposed aconitase inactivation via chronic oxidative stress; (2) proteomic — Ciregia 2016 ($n = 45 + 45$) found ACON protein _upregulated_ 1.9-fold ($p = 0.02$), paradoxically consistent with compensatory overexpression of an enzyme being oxidatively destroyed; (3) mechanistic — Shankar 2025 (already cited) documented the superoxide that would inactivate aconitase's [4Fe-4S] cluster. The predicted resolution: high protein + low activity = oxidative aconitase inactivation. _Motivated by:_ @Ciregia2016proteomics — compensatory aconitase protein upregulation amid documented oxidative stress.

  - *G17 KGDHC literature integration with convergent metabolomic and mechanistic evidence* (Chapter 6, Step 5 KGDHC paragraph rewritten and expanded; gap table G17 entry updated; Appendix H, new "Krebs Cycle Enzyme Evidence" section with 2 annotated entries; references.bib, 2 new entries with `research_stream = krebs-cycle`): Sixth `/integrate-topic` harvest for the ch06 10-step pipeline. G17 confirmed open — no study has directly measured KGDHC activity in ME/CFS. However, convergent indirect evidence is now documented: (1) metabolomic — Che et al.\ 2022 ($n = 106$) found both $α$-KG and succinate elevated (substrate + product accumulation consistent with KGDHC block); Germain et al.\ 2022 ($n = 60$) showed inverse exercise-provoked $α$-KG trajectory (controls increase, ME/CFS decrease); (2) mechanistic — Tretter & Adam-Vizi 2005 documented 40--50% KGDHC inhibition at physiological H#sub[2]O#sub[2] concentrations, HNE irreversible E2 modification, and NADH-driven E3 ROS feedback loop — all conditions documented in ME/CFS; (3) regulatory — SIRT4 upregulation (Fluge 2016, already cited) acts on KGDHC E2 via lipoamidase activity, not just PDC, but this KGDHC implication was never tested. _Motivated by:_ @Che2022peroxisomal — metabolomic fingerprint of KGDHC block ($α$-KG + succinate elevation); @TretterAdamVizi2005 — mechanistic basis for ROS-mediated KGDHC inhibition at ME/CFS-relevant oxidative stress levels.

  - *G7 PDK muscle-biopsy replication literature integration* (Chapter 6, Step 3 PDC section expanded with tissue-level evidence; warning box rewritten with Tomas 2020, Appelman 2024, Bizjak 2024, Finnigan 2024; inflammation→PDK4 mechanism added (Park 2016); gap table G7 entry updated; Appendix H, new "PDK/PDC Muscle Evidence" section with 4 annotated entries; references.bib, 4 new entries with `research_stream = pdk-muscle`): Fifth `/integrate-topic` harvest for the ch06 10-step pipeline. G7 confirmed open — no study has directly measured PDK1/PDK2/PDK4 expression or PDC phosphorylation state in ME/CFS skeletal muscle. However, substantial indirect tissue evidence now exists: Tomas et al.\ 2020 ($n = 9$ CFS biopsy-derived cultured muscle cells) found selective glucose oxidation failure with preserved galactose/fatty acid oxidation, localising the defect upstream of the TCA cycle at the pyruvate→acetyl-CoA link step — the authors explicitly name PDK as a candidate. Bizjak et al.\ 2024 ($n = 14$ ME/CFS muscle biopsies) demonstrated preferential subsarcolemmal mitochondrial damage by electron microscopy, distinct from the post-COVID pattern. Finnigan et al.\ 2024 ($n = 41$ post-COVID, 31P MRS) showed phosphocreatine recovery nearly doubled ($τ_"PCr"$ 92.5 vs 51.9 s, $p ≤ 0.001$). Park & Jeoung 2016 provided the mechanistic bridge: LPS→JNK→PDK4 upregulation specifically in skeletal muscle C2C12 cells, linking chronic inflammation to muscle-level PDK4 without requiring PBMC generalisation. _Motivated by:_ @Tomas2020substrate — closest tissue-level evidence for PDC/PDK defect in CFS muscle cells; @ParkJeoung2016PDK4 — mechanistic bridge from inflammation to muscle PDK4; @Bizjak2024muscleMito — ME/CFS-specific mitochondrial ultrastructural damage; @Finnigan2024MRS — in vivo quantification of muscle OXPHOS impairment.

  - *G9 combined cofactor measurement literature integration* (Chapter 6, Step 3 research gaps paragraph expanded with cofactor-panel evidence; gap table G9 entry updated; Appendix H, new "Cofactor Panel Evidence and Systematic Reviews" section with 2 annotated entries; references.bib, 2 new entries with `research_stream = cofactor-panel`): Fourth `/integrate-topic` harvest for the ch06 10-step pipeline. G9 confirmed as a fully open gap: no published study has simultaneously measured all four PDC cofactors (thiamine, lipoic acid, riboflavin/FAD, NAD#super[+]) in the same ME/CFS cohort. Lipoic acid and iron-sulfur cluster status have never been measured in any ME/CFS study. The closest approaches are documented: Heap 1999 (3 B vitamins, $n = 12$), Myhill 2012 clinical audit (NAD+CoQ10+carnitine, $n ≈ 34$, no controls), Castro-Marrero 2015 (CoQ10+NAD, $n = 73$ RCT). A systematic review of 45 studies on vitamins/minerals in CFS (Joustra 2017) found little evidence for individual deficiencies but critically excluded CoQ10 and NAD#super[+] from primary analysis. A 2025 supplementation review (Dorczok, $n = 809$ across 14 studies) identified CoQ10+NADH as the strongest signal but noted no study measured all cofactors at baseline. _Motivated by:_ @Joustra2017micronutrients — systematic review demonstrating that classical micronutrient assessments exclude the most mechanistically relevant energy cofactors; @Dorczok2025supplements — supplementation review confirming that cofactor measurement at baseline is absent across all 14 trials.

  - *G23 EGRAC riboflavin literature integration and converging-evidence synthesis* (Chapter 6, Step 6 riboflavin paragraph rewritten and expanded; gap table G23 entry updated with converging evidence; gap description refined; Appendix H, new "Riboflavin, FAD, and EGRAC" section with 3 annotated entries; references.bib, 3 new entries with `research_stream = riboflavin-metabolism`): Third `/integrate-topic` harvest for the ch06 10-step pipeline. The single-sentence riboflavin paragraph is expanded to two paragraphs synthesising three independent lines of converging evidence: (1) plasma FAD decreased in both sexes (Naviaux 2016, already cited); (2) CSF riboflavin and FMN lower in ME/CFS, with Riboflavin Metabolism pathway enriched (Baraniuk 2025, new); (3) erythrocyte GTR basal activity reduced in CFS ($p < 0.04$, Heap 1999, new) — critically, Heap measured basal activity only, not the EGRAC activation coefficient, so this is a near-miss for gap closure. G23 confirmed fully open: no study has computed the EGRAC ratio in ME/CFS. New therapeutic context added: riboflavin-responsive MADD (fatigue-dominant phenotype reported in ETFDH carriers), riboflavin 400 mg/day migraine prophylaxis (NNT = 2.3, Schoenen 1998, new), and the migraine–ME/CFS comorbidity link with shared mitochondrial mechanism. _Motivated by:_ @Baraniuk2025CSFmetabolomics — CSF riboflavin/FMN deficit extending the plasma finding to the CNS; @Heap1999vitaminB — the closest existing measurement to EGRAC in CFS; @Schoenen1998riboflavinmigraine — riboflavin 400 mg/day RCT evidence for a common ME/CFS comorbidity with identical mitochondrial mechanism.

  - *G22 NAD#super[+] metabolism literature integration and narrative correction* (Chapter 6, Step 6 NAD#super[+]/NADH paragraph rewritten and expanded; gap table G22 entry updated; gap description refined; Appendix H, 7 new annotated entries; references.bib, 6 new entries with `research_stream = nad-metabolism`): Second `/integrate-topic` harvest for the ch06 10-step pipeline. *Critical narrative correction:* the claim "direct NAD#super[+] measurement in ME/CFS tissue has not been performed" was inaccurate — Heng et al.\ 2025 ($n = 61$, already cited) measured NAD#super[+] directly in ME/CFS PBMCs and found it _elevated_ (300.3 vs 257.7 nM), while ATP/ADP was simultaneously _reduced_. This substrate-backup pattern is consistent with Complex I dysfunction (NAD#super[+] present but cannot be reduced to NADH), not simple precursor depletion. The two-sentence paragraph is now expanded to four paragraphs covering: (1) precursor pathway disruption — nicotinate/nicotinamide metabolism disrupted at baseline in female ME/CFS plasma ($p = 0.0006$, Germain 2022) and CFS-specific kynurenine profiles distinct from fibromyalgia (Groven 2021); (2) the Heng 2025 PBMC finding with compartment-specific interpretation (PBMC backup vs potential tissue depletion; no muscle biopsy NAD#super[+] data exist); Mikirova 2012 serum NAD(P)H reduction (low certainty); (3) sirtuin dysregulation — SIRT3/SIRT6 downregulated in ME/CFS lymphoblasts (Missailidis 2021); (4) therapeutic evidence — NAM 1000 mg/day reduced post-COVID symptoms at 6 months ($n = 900$ RCT, Schreiber 2025); NR 2000 mg/day raised NAD#super[+] 2.6--3.1-fold but missed primary cognitive endpoint in Long COVID ($n = 58$, Wu 2025); Chini 2025 mechanism bridging chronic NAD depletion to Type I interferon response via VDAC1→cGAS-STING mtDNA leakage. G22 gap narrowed from "no direct measurement" to "no muscle/tissue measurement; no direct PARP activity or CD38 expression assay in ME/CFS." _Motivated by:_ @heng2025mecfs — direct PBMC NAD#super[+] measurement invalidating the simple-depletion claim; @Germain2022exercise — baseline NAD#super[+] precursor pathway disruption ($p = 0.0006$); @Groven2021kynurenine — CFS-specific kynurenine profiles; @Missailidis2021substrates — SIRT3/SIRT6 downregulation; @Schreiber2025Nicotinamide — largest NAD#super[+] precursor RCT with Long COVID follow-up; @Chini2025NADInterferon — mechanistic bridge from NAD depletion to persistent innate immune activation.

  - *G28 ANT autoantibody literature integration and AMA-M4 nomenclature correction* (Chapter 6, Step 7 rewritten `sec:step7-ant`; Appendix H, 12 new annotated entries; references.bib, 12 new entries with `research_stream = ant-autoantibodies`; hypothesis registry, 2 entries updated/added: `hyp:invisible-bottleneck` H 0.45, `spec:ant-autoantibody-atp-trapping` Spec 0.30): First `/integrate-topic` harvest for the ch06 10-step pipeline. Step 7 (ANT export) rewritten with evidence from cardiac autoimmune disease: Schulze et al. 1999 demonstrated that anti-ANT antibodies reduce cytosolic ATP/ADP by 56% while elevating mitochondrial ATP/ADP fourfold in a Coxsackie B3 myocarditis model, directly proving the ATP-trapping mechanism. *Critical correction:* AMA-M4 targets sulfite oxidase, not ANT; anti-ANT autoantibodies are a separate cardiac-specific class requiring dedicated human ANT1-specific ELISA with C-terminal/M2-M3 loop epitopes. Existing ME/CFS autoantibody studies (Nilsson 2020, Germain 2025) used methods incapable of detecting anti-ANT antibodies — G28 remains fully open. New content includes: mechanistic precedent from three independent cardiac groups, assay specificity constraints, autoantibody access caveat, Sengers syndrome phenocopy parallel, therapeutic framework via immunoadsorption, "Invisible Bottleneck" hypothesis (ANT blockade explains normal respirometry with abnormal cytosolic ATP), and ANT bypass rationale for creatine supplementation (Step 8 cross-reference). Six adversarial review passes converged. _Motivated by:_ @SchulzeEtAl1999 — definitive animal-model proof of anti-ANT-mediated ATP trapping; @SchultheissBolte1985 — original clinical discovery of anti-ANT autoantibodies in DCM; @NilssonEtAl2020 and @GermainEtAl2025 — clarifying that existing null results do not close G28 due to assay limitations.

  - *Chapter 6 exhaustive per-step literature harvest initiated* (planned for subsequent sessions following the 10-step refactor below). For each of the ten steps of the cellular energy chain (substrate delivery, glycolysis, PDC, carnitine/β-oxidation, Krebs cycle, cofactors, ANT export, creatine shuttle, ROS scavenging, dynamics/biogenesis) and for each documented success, finding, observation, research gap, and failure mode at that step, a `/integrate-topic` pipeline run will be performed to mine the online literature (PubMed, Google Scholar, preprint servers, recent systematic reviews) for evidence the chapter has not yet incorporated. The goal is to exhaust the state of published knowledge about normal energy metabolism and its ME/CFS-specific disruptions, converting the 10-step scaffold into a comprehensive reference. Each harvest will update the appropriate step's `#achievement`, `#observation`, `#hypothesis`, `#speculation`, or `#open-question` environment, add new citations to `references.bib` and the annotated bibliography, and register any new hypotheses/speculations in the cross-document registry. Progress will be recorded as individual changelog entries per step. _Motivated by:_ the 10-step refactor (previous entry) established a parallel structure that makes each step's evidence base explicitly auditable, revealing where the chapter currently relies on single studies or mechanistic inference rather than replicated evidence; the harvest aims to close those gaps systematically rather than opportunistically.

  - *Research-gap prioritisation framework and per-step gap tables (G1--G43)* (Chapter 6, new `==== Prioritisation Framework` subsection at Step 1 with four criteria --- essentiality, worst-case impact, tractability, therapeutic leverage --- plus sole-route catastrophic exception clause and intervention-gap axis; new `=== Research Gaps at Step N` subsections for all 10 steps with `#figure` tables totalling 43 enumerated gaps G1--G43; new `==== Essentiality Note` and `==== Prioritisation Summary` at Step 1; overall-essentiality summaries added to Steps 5 and 6): Systematic classification of every uninvestigated failure mode identified in the 10-step energy chain. Each gap is rated on four axes and assigned a priority tier (1/2/3). *Headline result:* G28 (ANT autoantibodies, Step 7) is the single highest-leverage gap in the chapter --- sole-route, ~93% gated yield, yet entirely unstudied in ME/CFS (tractability subsequently revised from Easy to Moderate after the G28 literature integration above corrected the AMA-M4 misidentification --- a dedicated human ANT1-specific ELISA is needed rather than existing PBC assays). Step 6 (Cofactors) has the highest density of Priority-1 gaps (G22--G24, G27) due to cross-cutting cofactor leverage where a single measurement resolves multiple downstream steps. Steps 3 and 7 are the only individually essential sole-route bottlenecks; Steps 4, 10 conditionally essential; Steps 1, 2, 8 have parallel redundancy; Step 9 is amplificatory (non-stoichiometric). Review convergence: `/review-typst` converged in 4 rounds (11 + 2 findings fixed: heading-hierarchy corrections across 16 lines, LaTeX arrow remnant, markdown bold, implementation-detail rename, changelog accuracy, hypothesis-registry caption); `/review-convergence` converged in 6 rounds (14 findings fixed: framework consistency --- sole-route exception clause, intervention-gap axis, Step 5/6 essentiality notes, 9 blank-line corrections, stale xref update). Final build: zero errors, zero warnings. _Motivated by:_ the 10-step refactor revealed that each step's research gaps had no explicit prioritisation or impact assessment, making it impossible to determine which of the 43+ uninvestigated mechanisms should be studied first; the framework provides a transparent, repeatable basis for prioritising `/integrate-topic` literature harvests.

  - *Chapter 6 restructured as 10-step business process; Chapter 6b merged into Chapter 6* (rewrite of `ch06-energy-metabolism.typ`; deletion of `ch06b-energy-failure-cartography.typ`; hypothesis-registry location column updated for 13 cartography entries from "Ch.6b" to "Ch.6"; `loth2026-mecfs.typ` include list updated; external `@sec:mito-damage`, `@sec:mitochondrial-dysfunction`, `@sec:krebs-failure`, `@sec:cofactor-failures`, `@sec:ant-failure`, `@sec:energy-overview` callers updated to new step labels; `@sec:microcirculation-oxygen` preserved as an alias in the new Step 1 Microcirculation subsection). Chapter 6 is reorganised from a thematic layout (glycolysis, TCA, ETC, ROS, dynamics, calcium, IgG-mitophagy, thyroid) into a parallel ten-step walk through cellular energy metabolism (substrate delivery $arrow$ glycolysis $arrow$ PDC $arrow$ carnitine/β-ox $arrow$ Krebs $arrow$ cofactors $arrow$ ANT export $arrow$ creatine shuttle $arrow$ ROS scavenging $arrow$ dynamics/biogenesis). Each step has parallel sub-sections: normal function, ATP accounting with per-step justification (direct yield, gated yield, % of ~30 ATP/glucose basis), documented ME/CFS findings, documented failure modes, and research gaps. A new overview section introduces the ATP accounting framework with a summary table. Content that spans multiple steps (thyroid--mito axis, IgG immune complexes, calcium dysregulation, WASF3, sodium-calcium cascade, immune-metabolic crosstalk, multi-level vicious cycle) is collected in a new "Cross-Cutting Mechanisms" section. The four integrative speculations from the former Chapter 6b (PDK-as-protective, riboflavin master rate-limiter, PEM-as-ISR-kinetics, cardiolipin peroxidation convergence) move to a dedicated "Cross-Cutting Hypotheses" section. Zero content loss: every paragraph, environment, citation, and label from both source chapters is preserved; environment labels (`ach:fluge2016-pdk`, `ach:godlewska2024-creatine`, `ach:shankar2025-mnsod`, `ach:heng-multiomics`, `obs:muscle-sodium`, `hyp:calcium-pem`, `hyp:t3-mito-amplifier`, `hyp:pgc1alpha-suppression`, `spec:pdc-cofactors`, `spec:pdk-protective`, `spec:pem-isr`, `spec:riboflavin-master`, `spec:cardiolipin-peroxidation`, `spec:cullen2026-atp-fatigue`, `hyp:impaired-mitophagy-longcovid`, `hyp:vicious-cycle-integrated`, etc.) are unchanged. Section labels renamed from thematic to step-based (`sec:step1-substrate-delivery` through `sec:step10-dynamics-biogenesis`, plus `sec:energy-chain-overview`, `sec:cross-cutting-mechanisms`, `sec:cross-cutting-hypotheses`). _Motivated by:_ reader feedback that the thematic organisation obscured the functional-chain logic of the cartography; the 10-step business-process framing makes it immediately visible at each step where ME/CFS biology attaches to normal energy metabolism, what is documented, and what is a research gap, which in turn enables systematic online-knowledge harvesting (via `/integrate-topic`) of each step's successes, findings, observations, gaps, and failures in subsequent sessions.

  - *Systematic failure cartography of cellular energy metabolism* (new Chapter 6b `ch:energy-failure-cartography`; Chapter 6 forward-reference Section `sec:energy-cartography`; hypothesis registry, 13 new entries (1 hypothesis + 5 speculations + 7 open questions); references.bib, 9 new entries): New dedicated chapter reversing the direction of Chapter 6: rather than reviewing documented mitochondrial findings, the cartography walks ten steps of the functional energy chain (substrate delivery, glycolysis, PDC, carnitine shuttle/beta-oxidation, Krebs cycle, cofactors, ANT export, creatine shuttle, ROS scavenging, dynamics/biogenesis) and asks at each step what can fail, what has been studied in ME/CFS, and what remains uninvestigated. *Achievements integrated:* Fluge 2016 PDK1/2/4 upregulation and SIRT4 @Fluge2016 with replication caveat (PBMCs only); Godlewska 2024 creatine MRS @Godlewska2024creatineMRS with placebo and creatinine-monitoring warnings; Shankar 2025 MnSOD/GPX4 deficit @Shankar2025oxidativestress (certainty 0.55 reflecting lymphocyte-only measurement and no independent replication). *Integrative speculations:* PDK-as-protective reinterpretation with MnSOD-stratified DCA trial reconciliation criterion (certainty 0.45); riboflavin/FAD master rate-limiter gating eight energy-chain steps (certainty 0.42, EGRAC as quantitative falsifier); PEM-as-ISR-kinetics (certainty 0.40, GDF15/FGF21 as falsifier); cardiolipin peroxidation convergence (certainty reduced to 0.30 reflecting negative MMPOWER-3 Phase 3 elamipretide result in primary mitochondrial myopathy as discouraging prior). *Hypothesis:* PGC-1α suppression as dual biogenesis/antioxidant block (certainty 0.40). *Open questions:* ISCU iron-sulfur cluster assembly, ANT autoantibodies, KGDHC cofactor failure, CPT1/malonyl-CoA regulation, NRF2 pathway, PRDX3/thioredoxin, UCP2/UCP3 upregulation. Competing-explanations note added to Cross-Cutting section acknowledging that the four integrative speculations predict overlapping metabolomic signatures and should be discriminated by joint EGRAC + MnSOD/GPX4 + plasma CLox + PBMC PDK measurement in the same individuals. L-carnitine and DCA evidence both hedged with parallel placebo-effect warning boxes. _Motivated by:_ @Fluge2016 (PDK/SIRT4 transcriptomic finding, foundation for PDC bottleneck hypothesis); @Shankar2025oxidativestress (MnSOD/GPX4 lymphocyte deficit, first direct protein-level measurement); @Godlewska2024creatineMRS (first pharmacological correction of brain creatine deficit in ME/CFS); @Naviaux2016metabolomics (metabolomic signature motivating the multi-step failure map); @Germain2020metabolic (acylcarnitine signature corroborating beta-oxidation impairment); @Holden2020mitosysrev (systematic review of mitochondrial findings framing replicated vs contested claims); @Molnar2024LCmitochondria (elamipretide candidacy rationale for Long COVID/ME/CFS overlap); @MorrisMaes2014mitochondria (general mitochondrial-dysfunction review framing); @Maksoud2021nutraceuticals (riboflavin/thiamine therapeutic precedents from adjacent mitochondrial disorders); @Comhaire2018DCA @Comhaire2018DCAresponders (DCA responder heterogeneity motivating PDK-as-protective reinterpretation).

  - *Perioperative management in ME/CFS* (Chapter 14a, new Section `sec:perioperative-management`; Appendix H, new Section `sec:bib-perioperative`; hypothesis registry, 1 new open question; references.bib, 1 new entry): First known empirical data on anesthetic outcomes in ME/CFS integrated from Steinkirchner et al.\ 2026 @Steinkirchner2026anesthesia (preprint — not yet peer reviewed; $n = 15$ matched pairs; single center, University Hospital Regensburg). *Clinical findings* (all $p$-values uncorrected for multiple comparisons; $n = 15$ is underpowered to detect rare serious events — interpret accordingly): ME/CFS patients reached lower intraoperative nadir systolic BP (90 vs 100~mmHg, $p$=0.044) and nadir heart rate (50 vs 60~bpm, $p$=0.012); the authors attribute these differences to underlying autonomic dysfunction, though this mechanism was not directly tested in the study, and the same methodological limitations that apply to the pain findings apply here equally. No clinically significant hemodynamic instability, excess vasopressor use, or intraoperative adverse events were observed — a reassuring directional signal, but one that cannot exclude rare serious events at this sample size. Postoperative pain was substantially elevated (maximum NRS 5.0 vs 1.0, $p$=0.008; opioid rescue required in 80% vs 33% of controls, $p$=0.039); the authors propose central sensitization as the mechanism, though the retrospective design cannot distinguish this from baseline hyperalgesia or other confounds — the same epistemic caution applies as to the hemodynamic findings. *Content added:* `#clinical-finding` environment with quantitative data; pre-operative planning checklist (disclosure, pre-emptive multimodal analgesia, BP threshold calibration); post-operative guidance (extended recovery, aggressive pain monitoring, orthostatic mobilization precautions); `#warning-env` flagging the unstudied PEM risk; `#open-question` on whether surgery triggers clinically significant PEM and whether protocols can mitigate it; annotated bibliography entry with certainty assessments (0.45 hemodynamic safety; 0.55 elevated pain burden). *Critical gap noted:* Post-exertional malaise --- the cardinal feature of ME/CFS --- was not captured by this study; prospective studies using DSQ-2 at 24~h, 72~h, 1~wk, and 4~wk are urgently needed. _Motivated by:_ Steinkirchner et al.\ 2026 @Steinkirchner2026anesthesia — the first study to report empirical perioperative outcome data in ME/CFS; no prior peer-reviewed evidence on this question was identified.

  - *Digital physiological biomarkers for crash/symptom prediction* (Chapter 2, new `==== Digital Biomarkers for Crash Prediction` subsection; Chapter 10, new `==== Within-Person HRV Fluctuations as Symptom Predictors` subsection with limitation; Chapter 20, new Section `sec:digital-biomarkers` with limitation; references.bib, 1 new entry): Integration of Aitken et al.\ 2026 @Aitken2026digitalHRV ($n = 4{,}244$ Visible app users with Long COVID, ME/CFS, or other energy-limiting conditions). Morning 60-second PPG-derived HR, HRV, and respiratory rate predict same-day evening crashes (AUC 0.82), fatigue (AUC 0.74), and brain fog (AUC 0.85) via multilevel models with walk-forward cross-validation. Within-person fluctuations (daily deviations from individual baselines) were stronger predictors than between-person averages; 7-day coefficient of variation in HR/HRV provided additional predictive value. Chapter 2 frames this as proof-of-concept for pacing-supportive early warning systems. Chapter 10 extends the HRV section with temporal dynamics and practical monitoring implications. Chapter 20 establishes a new digital biomarker subsection discussing the mHealth paradigm shift from single-timepoint to longitudinal within-person designs. Limitations noted across all three chapters: self-identified cohort, commercial app data, modest AUC improvement over symptom history alone, no prospective crash-prevention outcome validation. Motivated by: Aitken et al.\ 2026 (_npj Digital Medicine_) @Aitken2026digitalHRV.


  - *mecfsmed.de integration: 10 topics across 6 chapters + 14 new bibliography entries* (Chapter 8, serotonergic dysfunction section; Chapter 7, EBV section; Chapter 10, HRV section; Chapter 18, new Sections `sec:amifampridin`, `sec:paxlovid-longcovid`, `sec:hdl-statin-arb`; Chapter 20, new Section `sec:ebv-ml-diagnosis`; Chapter 24, new Sections `sec:medical-gaslighting`, `sec:international-guidelines`; references.bib, 14 new entries; hypothesis registry, 1 new entry): Systematic integration of mecfsmed.de content. *Tier 1 (new knowledge):* (1) Amifampridin (3,4-DAP) for post-COVID fatigue---voltage-gated K+ channel blocker, $n = 5$ case series with double-blind discontinuation @Boehmeke2024amifampridin. (2) Medical gaslighting as systemic clinical phenomenon---definition, contributing factors, psychological consequences, MS historical parallel. (3) German DEGAM 2022 + G-BA LongCOV-RL 2023 guidelines---first statutory care framework for ME/CFS-spectrum conditions @DEGAM2022fatigue @Nacul2021EUROMENE @GBA2023LongCOVRL. (4) Serotonin 5-HT1A autoreceptor dysfunction mouse model producing ME/CFS-like symptoms via hyperserotonergia @Lee2024serotonin, with new `spec:bidirectional-serotonin` (certainty 0.25). *Tier 2 (enhancing coverage):* (5) Pricoco et al.\ 2024 EBV youth study---45% adolescent vs 0% young adult recovery at 12 months @Pricoco2024EBVyouth. (6) Fonseca et al.\ 2024 EBV IgG ML classifier---26-antibody panel, 100%/90% accuracy for infection-triggered ME/CFS only @Fonseca2024EBVclassifier. (7) Paxlovid does not prevent Long COVID ($n = 4{,}684$) @Durstenfeld2024paxlovid. (8) HDL proteome statin/ARB combination ($n = 16$) @Grote2024HDLproteome. *Tier 3 (citation-only):* (9) van Rhijn-Brouwer 2024 GET harm in _Nat Rev Cardiol_ @vanRhijnBrouwer2024GETharm. (10) Ryabkova 2024 HRV differential---normalises with slow breathing in PCS but not ME/CFS @Ryabkova2024dysautonomia. Plus Berkis 2023 @Berkis2023biomarkers, Yin 2024 @Yin2024longcovidimmune, Seton 2024 @Seton2024clinicaltrials. Motivated by: systematic scrape of mecfsmed.de (22 URLs catalogued in scrape registry).

  - *Circulating cell-free mitochondrial DNA (ccf-mtDNA): Long COVID vs ME/CFS divergence hypothesis* (Chapter 14d, new ccf-mtDNA subsection with `spec:cfmtdna-distinguish` and limitation; Chapter 6, new Section `sec:cfmtdna-mitophagy` with `hyp:impaired-mitophagy-longcovid`; Chapter 8, new ccf-mtDNA--cognition paragraph; Chapter 20, new Section `sec:ccfmtdna-biomarker` with limitation; Appendix H, new Section `sec:bib-cfmtdna-longcovid` with 2 annotated entries; references.bib, 2 new entries; hypothesis registry, 2 new entries): Integration of Matits et al.\ 2026 @Matits2026cfmtDNA (EPILOC cohort, $n = 228$) finding reduced ccf-mtDNA in Long COVID compared to recovered controls (partial $eta^2 = 0.01$--$0.02$; borderline significance). *Chapter 14d:* New cross-disease comparison section developing the hypothesis that ccf-mtDNA dynamics could distinguish Long COVID (low at rest, impaired mitophagy) from ME/CFS (elevated post-exercise exosomal mtDNA @Tsilioni2022exosome), with detailed limitation environment noting methodological incomparability across studies. *Chapter 6:* New subsection on ccf-mtDNA as a mitophagy signal, with hypothesis that impaired mitophagy traps damaged mitochondria intracellularly in Long COVID (certainty 0.35), linking to the ERR$alpha$/ULK1/DRP1 pathway. *Chapter 8:* ccf-mtDNA--cognition correlation (CRP not independently associated after ccf-mtDNA control) as evidence for mitochondrial rather than inflammatory substrate of brain fog. *Chapter 20:* ccf-mtDNA as candidate biomarker with critical confounds (deconditioning, anxiety disorder overlap, very small effect size). Motivated by: Matits et al.\ 2026 @Matits2026cfmtDNA; Szögi et al.\ 2025 @Szogi2024cfmtDNA; Tsilioni et al.\ 2022 @Tsilioni2022exosome.



  - *Thyroid hormone--mitochondrial axis: dual-pathway regulation, supercomplex convergence with WASF3, T2 diiodothyronine, and SELENOP autoantibody mechanism* (Chapter 6, new Section `sec:thyroid-mito-regulation` with `hyp:t3-mito-amplifier`; Chapter 9, upgraded `obs:selenium-antibodies` to `ach:selenop-autoantibodies` with full Sun 2023 data, new Sections `sec:t2-diiodothyronine` with `oq:t2-mecfs`, new thyroid-mitochondria master-regulator cross-reference section, new `warn:t3-supplementation-risks`, expanded T3 supplementation evidence with Lowe 1997 RCT; Appendix H, new Section `sec:bib-thyroid-mito` with 9 annotated entries; references.bib, 10 new entries; hypothesis registry, 3 new entries): Comprehensive integration of the thyroid hormone--mitochondrial axis as a mechanistically coherent upstream driver of ME/CFS energy dysfunction. *Chapter 6 additions:* New subsection within Mechanisms of Mitochondrial Damage developing T3's dual regulation of mitochondria: (1) nuclear/genomic pathway (T3 $arrow.r$ PGC-1$alpha$ $arrow.r$ NRF-1/NRF-2 $arrow.r$ TFAM $arrow.r$ biogenesis); (2) direct mitochondrial pathway via p43 receptor acting as mtDNA transcription factor @WrutniakCabello2018p43; (3) supercomplex assembly via cardiolipin synthesis---convergent with WASF3-mediated supercomplex disruption (dual hit on same target) @Singh2022bioenergetic @Liao2024thyroidMito; (4) ERR$alpha$-coordinated mitophagy quality-control cycle @Singh2017thyroidERR; (5) T2 (3,5-diiodothyronine) rapid non-genomic Complex IV activation @Lombardi2015T2skeletal. Formal hypothesis: low tissue T3 amplifies every documented mitochondrial damage mechanism through a self-reinforcing cycle (certainty 0.45) with three testable predictions (supercomplex content, intramuscular T3, respirometry). *Chapter 9 additions:* (1) SELENOP observation upgraded to achievement environment with full quantitative data from Sun et al.\ 2023 @Sun2023selenop — SPINA-GD, FT3/FT4 ratio, urinary iodine, with replication status warning. (2) T2 diiodothyronine section: rapid mitochondrial effects via Complex IV Va subunit, SIRT1/AMPK fatty acid oxidation, open question on T2 levels in ME/CFS. (3) Thyroid-mitochondria master-regulator section linking endocrine findings to ch06 energy metabolism via bidirectional cross-references. (4) T3 supplementation evidence expanded: Lowe 1997 RCT in fibromyalgia @Lowe1997T3fibro, comprehensive risk warning (cardiac, bone, axis suppression), selenium as safer alternative for SELENOP-aAb+ subgroup. Motivated by: Sun et al.\ 2023 @Sun2023selenop; Singh & Yen 2022 @Singh2022bioenergetic; Liao et al.\ 2024 @Liao2024thyroidMito; Wrutniak-Cabello et al.\ 2018 @WrutniakCabello2018p43; Singh et al.\ 2017 @Singh2017thyroidERR; Lombardi et al.\ 2015 @Lombardi2015T2skeletal; Saito et al.\ 2025 @Saito2025mitoCFS; Lowe et al.\ 1997 @Lowe1997T3fibro; Frontiers 2025 @Frontiers2025mtDNAcopyThyroid.

  - *Ussher book integration: 11 novel topics across 7 chapters + 3 brainstormed hypotheses* (Chapter 6, Sections: `sec:calcium-dysregulation` expanded, new `spec:exercise-calcium-threshold`; Chapter 9, new `sec:adrenal-atrophy` with `ach:adrenal-shrinkage`; Chapter 10, new `hyp:bradykinin-raas`, `sec:hypovolemic-thirst`, `obs:vasopressin-deficiency`, `sec:co2-bradykinin`; Chapter 14d, new `spec:pump-mcas`; Chapter 16, new `sec:ors` with ORS clinical data; Chapter 17, new sections: `sec:breathing-co2`, `sec:klimas-program`, `sec:compression-stockings`, `sec:perrin-technique`; Chapter 18, new `sec:help-apheresis`, `sec:triple-anticoagulant`; references.bib, 21 new entries; hypothesis registry, 6 new entries): Systematic integration of Patrick Ussher's _Understanding ME/CFS & Strategies for Healing_ (2025). *Pathophysiology additions:* (1) Wirth-Scheibenbogen bradykinin spillover model explaining the RAAS paradox---$beta_2$-AR dysfunction $arrow.r$ compensatory vasoactive substance production $arrow.r$ systemic spillover $arrow.r$ KKS opposition to RAAS $arrow.r$ hypovolemia (certainty 0.50). (2) Na#super[+]/K#super[+]-ATPase $arrow.r$ NCX reversal $arrow.r$ calcium toxicity cascade as primary PEM mechanism, supported by Wirth-Scheibenbogen (2022) sodium MRI data (30% vs.\ 17% rise) and Appelman et al.\ (2024) necrotic fibre finding (certainty 0.50). (3) Scott and Dinan (1999) adrenal gland shrinkage (~50% volume reduction, $n = 8$, unreplicated). (4) Hypovolemic thirst mechanism with Huhmar et al.\ (2024) vasopressin data (82% below detection in 111 patients). (5) CO#sub[2]--Bohr--bradykinin feedback triangle. *Treatment additions:* (1) Buteyko breathing adapted for ME/CFS (CO#sub[2] as _consequence_ not cause; Wood et al.\ 2022: 74% ETCO#sub[2] $lt$ 35 mmHg despite normal respiratory rate). (2) Klimas structured reconditioning program (chunked exercise with supine rests). (3) Compression stockings RCT data (Visser et al.\ 2022: cerebral blood flow decline 30% $arrow.r$ 14%). (4) Perrin Technique lymphatic drainage (BMJ Open 2017: 86% diagnostic accuracy; 2022: 42--60% improvement in Long COVID). (5) HELP apheresis protocol and evidence. (6) Triple anticoagulant therapy (Pretorius 2023: 80% improvement, $n = 91$). (7) ORS clinical equivalence to IV saline (Medow 2019). *Brainstormed hypotheses:* (1) Exercise chunking works by staying below the calcium toxicity threshold (spec, 0.40). (2) Na#super[+]/K#super[+]-ATPase failure links PEM and MCAS flares via shared calcium mechanism (spec, 0.30). (3) CO#sub[2]--Bohr--bradykinin triangle as previously unrecognised feedback loop. Motivated by: Ussher 2025 @Ussher2025; Wirth & Scheibenbogen 2020 @Wirth2020unifying; Wirth & Scheibenbogen 2022 @Wirth2022muscleSodium; Appelman et al.\ 2024 @Appelman2024muscle; Scott & Dinan 1999 @ScottDinan1999adrenal; Huhmar et al.\ 2024 @Huhmar2024vasopressin; Wood et al.\ 2022 @Wood2022etco2; Visser et al.\ 2022 @VisserVanCampenRowe2022compression; Medow et al.\ 2019 @Medow2019ors; Perrin et al.\ 2017 @Perrin2017diagnosis; Pretorius et al.\ 2023 @Pretorius2023triple.

  - *ADHD, autism spectrum, and depression as secondary manifestations of ME/CFS* (Chapter 14d, new Section `sec:neurodevelopmental-secondary`; references.bib, 14 new entries; hypothesis registry, 6 new entries): Comprehensive new section developing the hypothesis that ADHD-like, ASD-like, and depressive phenotypes can arise _secondarily_ from ME/CFS pathophysiology rather than as independent comorbidities. Two competing causal architectures formally distinguished (shared vulnerability vs.\ secondary cascade). Three mechanistic pillars developed: (1) neuroinflammatory cascade generating all three phenotypes via IDO pathway, dopaminergic depletion, and thalamocortical disruption; (2) dopaminergic tonic depletion producing effort-computation failure distinguishable from primary ADHD (formal effort-cost equation: $A = bb(E)[R] - k dot C_("effort")$, with $k$ regulated by dopaminergic tone); (3) interoceptive hierarchy failure producing ASD-like sensory rigidity and depression as "learned allostatic self-inefficacy" (Stephan et al.\ 2016 framework). Integrates the body-wandering finding of Banellis et al.\ @Banellis2025bodywandering (PNAS 2025, $N = 536$, CCA loadings reported): paradoxical protective effect of body-wandering for ADHD and depression in healthy subjects, reframed as failed/corrupted body-wandering in ME/CFS where interoceptive hypervigilance replaces adaptive monitoring. Proposed DAG with explicit confounders. Clinical implications include treating inflammatory substrate rather than layering psychiatric medications, interpreting stimulant response patterns, and interoceptive rehabilitation with PEM-aware pacing constraints. Four speculations/hypotheses (certainty 0.30–0.45) with falsification conditions; two open questions; two limitations. Motivated by: Banellis et al.\ 2025 body-wandering finding @Banellis2025bodywandering; convergent evidence from predictive processing literature @Seth2016interoceptive @Barrett2015interoceptive @Pellicano2012autism @Stephan2015depressionallostasis; dopaminergic effort-computation literature @Salamone2012dopamine @Treadway2012effortbaseddecisionmaking; long COVID parallels @Rukmangadachar2024longocovidneurotransmitter; ME/CFS epidemiological data @Norris2017adhdfatigue @Colby2024autism @Casanova2021autism.

  - *Neuroplasticity agents: pharmacological anti-kindling and brain rewiring* (Chapter 8, PEM Kindling section; Chapter 9, Thyroid section; Chapter 14i, Clinical Brainstorm; Chapter 15, Pyridostigmine section; Chapter 30, Integrated Systems; references.bib, 20 new entries; hypothesis registry, 7 new entries): Comprehensive integration of neuroplasticity-modifying agents (lithium, valproate/Depakine, lamotrigine, levetiracetam, gabapentinoids, T3/T4) into the ME/CFS framework. Major additions: (1) Pharmacological anti-kindling agents mapped to PEM kindling hypothesis --- levetiracetam (SV2A, disease-modifying anti-kindling persisting post-discontinuation @Lynch2004levetiracetam), lithium (GSK-3$beta$ inhibition, grey matter +2.56% @Lyoo2010lithium), valproate (HDAC inhibition, critical period reopening @Gervain2013VPA), lamotrigine (cognitive-sparing neuroprotection @Khan2023lamotrigine). (2) T3-BDNF-microglial vicious cycle hypothesis: self-perpetuating loop where low T3 depletes BDNF, enabling M1 microglial polarization, whose cytokines further suppress DIO2 @Ge2024hypothyroidismMicroglia @Chamas2024brainHypothyroidismAD. (3) Astrocyte dual-failure hypothesis: astrocytes as both energy gate (lactate shuttle) AND brain T3 factory (DIO2 expressed 50$times$ higher in astrocytes) --- single cell type failure produces convergent energy + plasticity deficit @Bianco2018DIO2. (4) Selenium autoantibody-neuroplasticity connection: autoimmune impairment of selenoprotein-dependent deiodinases creating brain-specific T3 deficit in 9.6--15.6% of patients. (5) Pharmacological critical period reopening hypothesis: HDAC/GSK-3$beta$ inhibition creates transient plasticity windows for circuit reorganization. (6) Low-dose lithium neuroprotection hypothesis: 40--45 mg/day based on Long COVID RCT @Guttuso2024lithiumLongCOVID; Nature 2025 brain lithium depletion finding @Bhatt2025lithiumBrain. (7) Pyridostigmine as anti-kindling by proxy: autonomic stabilization reduces daily kindling trigger load. (8) Multi-loop attractor dynamics ODE model (Ch30): 4-variable coupled system ($K$, $T$, $M$, $E$) with fixed-point analysis, "combination cliff" prediction, PEM threshold recovery model with anti-kindling term, T3-neuroplasticity phase space. (9) Layer cake staged protocol and pyridostigmine + T3 + lithium triple-target autonomic hypothesis. Motivated by: systematic literature research across lithium neuroprotection, valproate critical periods, levetiracetam anti-neuroinflammation, thyroid-brain neuroplasticity, T3 remyelination trials, and Long COVID lithium trial data.

  - *Pain research synthesis: patient-reported descriptions, phenotype classification, quantitative assessment, registries, and hypotheses* (Chapter 2, new Sections `subsec:pain-descriptions`, `subsec:pain-phenotypes`, `subsubsec:pain-quantitative`, `subsubsec:fm-overlap` expanded, `oq:pain-instrument-gap`, `hyp:ch02-pem-pain-amplification`; Chapter 15, expanded nociplastic framework with IASP criteria mapping, new `hyp:ch15-nociplastic-neuropathic-hybrid`; Chapter 8, SFN prevalence updated 30--80%; Chapter 20, new Section `sec:pain-registries` with `oq:registry-harmonisation-pain`; Appendix H, new Section `sec:bib-pain-research` with 4 annotated entries; references.bib, 4 new entries; hypothesis registry, 5 new entries): Comprehensive integration of ME/CFS pain research. *Chapter 2 additions:* (1) Patient-reported pain descriptions from Marshall 2010 McGill Pain Questionnaire study --- sensory descriptors (throbbing, aching, tender, gnawing, burning), body mapping (cervical spine 66%, thighs 44--46%), VAS and PASS-20 data. (2) Six pain phenotype classification with prevalence data from MCAM ($n = 595$): widespread musculoskeletal (68--94%), headache-predominant (48--56%), neuropathic (30--80%), post-exertional pain flare, allodynia/hyperalgesia, visceral/other. (3) Quantitative pain assessment across instruments (MPQ, VAS, BPI, dolorimetry, QST) with cross-condition comparison showing pain interference comparable to spinal cord injury. (4) NINDS CDE instrument gap --- no ME/CFS-specific pain instrument exists. (5) FM overlap section expanded: exercise response as critical discriminator, substance P distinction, PEM-pain amplification hypothesis (certainty 0.45; reduced from 0.60 after adversarial review). *Chapter 15:* IASP nociplastic criteria mapped point-by-point to ME/CFS evidence; nociplastic-neuropathic hybrid hypothesis (certainty 0.40; reduced from 0.50 after adversarial review). *Chapter 8:* SFN prevalence updated from 30--60% to 30--80%. *Chapter 20:* Pain registries section (MCAM, You+ME, UK ME/CFS Biobank, UK Biobank) as biomarker data sources. Motivated by: Fall et al.\ 2024 @Fall2024COPCsMECFS; Marshall et al.\ 2010 @Marshall2010PainCharacteristics; Lu et al.\ 2025 @Lu2025AssessmentScalesMECFS; Ramiller et al.\ 2022 @Ramiller2022YouMERegistry; Baraniuk 2025 @Baraniuk2025NociplasticMECFS.

  - *Type 1 narcolepsy autoimmune mechanism cross-disease connection* (Chapter 14d, Autoimmune Disease Spectrum section; references.bib, 1 new entry): Added narcolepsy as autoimmune CNS comparator — CD4+ T-cell destruction of orexin neurons confirmed @Shan2026narcolepsy. Links to ME/CFS orexin dysfunction @LopezAmador2025orexin, cytokine-mediated orexin suppression, comorbid ME/CFS+narcolepsy case @Liao2021, and early immunotherapy implications. Motivated by: Shan et al.\ 2026 (_Annals of Neurology_) confirming autoimmune pathogenesis in type 1 narcolepsy, relevant to ME/CFS orexin system dysfunction and post-infectious autoimmune overlap.

  - *mecfsscience.org catalog integration: 10 high-relevance topic areas*
    (Chapter 12, Sections: sec:snp-heritability (new), sec:decodeme-loci (new),
    sec:decodeme-genes (new), sec:genetic-correlations (expanded);
    Chapter 6, Sections: sec:deconditioning-refutation (new), sec:boom-bust-myth (new),
    new limitation on two-day CPET biomarker utility;
    Chapter 14d, new limitation boxes on POTS diagnostic validity and hEDS diagnostic validity;
    Chapter 24, Sections: sec:blinding-failures (new), sec:fitnet-failure (new),
    sec:bmj-review-critique (new), sec:nice-shift (new), sec:catastrophizing-critique (new),
    sec:psychosomatic-parallels (new), sec:scientific-integrity (new),
    sec:funding-disparities (updated with 2024-2025 data);
    Appendix H, new DecodeME annotated bibliography section;
    references.bib, 20 new entries;
    hypothesis registry updated with mitophagy vulnerability hypothesis):
    Systematic integration of mecfsscience.org article catalog (scraped 2026-03-21,
    ~65 articles assessed, 10 topic areas integrated). Major additions:
    (1) DecodeME GWAS: 8 genome-wide significant loci, 9.5% SNP heritability,
    brain-focused gene expression (CA10, SHISA6, SOX6, LRRC7, DCC, UNC13C),
    genetic correlations (IBS $r_g$=0.75, depression $r_g$=0.60), autophagy genes
    (FBXL4, CCPG1), convergence with Stanford rare-variant study, no autoimmune
    genetic correlation. New "Genetic Mitophagy Vulnerability" hypothesis (0.35).
    (2) Exercise physiology: NASA bed rest comparison refuting deconditioning,
    Keller 2024 CPET biomarker limitations (Bell scale $rho$=-0.009, group overlap),
    2-day CPET discrepancies (data conflicts, circular reasoning), boom-and-bust
    myth debunked by accelerometry.
    (3) Comorbidity skepticism: POTS 30bpm threshold specificity problems (10-15%
    healthy controls meet it, 2% symptom variance, poor reproducibility); hEDS
    has no identified connective tissue defect, autonomic profile resembles
    fibromyalgia not other EDS types.
    (4) Treatment evidence: FITNET-NHS replication failure (n=314, 25% deterioration),
    BMJ Long COVID review critique, NICE guideline shift with GRADE ceiling analysis.
    (5) Methodology: systematic blinding failure pattern in ME/CFS trials,
    Cochrane exercise review critique.
    (6) Catastrophizing: PCS measures pain not distortion, term weaponised to deny care.
    (7) Psychosomatic history: 10-disease historical parallel (MS, asthma, epilepsy,
    diabetes, autism, schizophrenia, cancer, heart disease, RA, peptic ulcer).
    (8) NIH funding: 2024 \$10.1M (25 projects), 2025 \$7.4M (18 projects, 7% decline);
    European investment growing while US declines.
    (9) Scientific integrity: ~14% fabrication estimate, ME/CFS problems are design
    flaws not fraud.
    Motivated by: mecfsscience.org critical research analysis blog providing
    rigorous statistical and methodological perspectives on ME/CFS evidence base;
    need to integrate critical/sceptical perspectives alongside positive findings.
    @DecodeME2025 @MECFSScience2025decodeme @MECFSScience2025decodeme2
    @MECFSScience2024exercise @MECFSScience2024deconditioning @MECFSScience2024boombust
    @MECFSScience2024discrepancies @MECFSScience2024heds @MECFSScience2024pots
    @MECFSScience2024fitnet @MECFSScience2024bmj @MECFSScience2023consensus
    @MECFSScience2019blinding @MECFSScience2019cochrane @MECFSScience2024catastrophizing
    @MECFSScience2021psychosomatic @MECFSScience2025funding @MECFSScience2024funding
    @MECFSScience2025fakescience @King2024gwas_drugs.
    Additional items integrated: GET/CBT long-term follow-up convergence data
    (PACE reanalysis section); NICE GRADE methodology analysis and Flottorp
    rebuttal; MetaBLIND study critique; NIH funding structural analysis and
    per-disease comparative data; Cortene CT38 CRH2R trial (ch21 new
    neuroendocrine section); Qure study for Q-fever fatigue syndrome;
    2024--2025 annual research landscape summaries; placebo-controlled
    surgery historical context for blinding debates.
    @MECFSScience2021getset @MECFSScience2020fundingcomparison
    @MECFSScience2020fundingwhy @MECFSScience2025yearreview
    @MECFSScience2024yearreview @MECFSScience2021ct38
    @MECFSScience2022flottorp @MECFSScience2021metablind
    @MECFSScience2021grade @MECFSScience2020qure @MECFSScience2021surgery.

  - *Creative brainstorm: cross-system synthesis from mecfsscience.org integration*
    (Chapter 13, Section sec:critical-evidence-synthesis (new);
    hypothesis registry updated with 5 new entries):
    Four novel hypotheses/speculations and one open question generated by
    synthesising DecodeME genetics, exercise physiology critique, comorbidity
    validity concerns, and psychosomatic history parallels: (1) Glutamatergic--
    Autonomic Bridge hypothesis (0.30): DecodeME synapse genes as constitutional
    vulnerability in brainstem autonomic circuits; predicts memantine efficacy
    with genotype stratification. (2) Diagnostic Mirage speculation (0.25):
    ME/CFS--POTS--hEDS--MCAS as single autonomic syndrome, not four comorbid
    diseases; predicts unified treatment approach superior to stacked diagnoses.
    (3) Amitriptyline Signal hypothesis (0.40): DecodeME $r_g = 0.61$ with
    amitriptyline use suggests mechanistic match via NMDA antagonism at
    glutamatergic circuits; predicts pharmacogenomic trial utility.
    (4) Peptic Ulcer Parallel speculation (0.20): ME/CFS following identical
    psychosomatic-to-biological trajectory as peptic ulcer; candidates for
    the "H. pylori moment" include TRPM3, epigenetic lock, autophagy gene
    bottleneck. (5) Open question on genetic architecture resolving subtype
    problem via PRS stratification.
    Motivated by: cross-referencing DecodeME genetic correlations (IBS 0.75,
    depression 0.60, no autoimmune correlation) with POTS/hEDS diagnostic
    validity concerns, exercise physiology null findings, and historical
    psychosomatic pattern analysis.
    Full development of all five ideas: cross-references wired to ch08
    (glutamatergic--kynurenine convergence), ch10 (POTS diagnostic validity
    limitation), ch14b (amitriptyline genetic signal), ch18 (new sections:
    glutamatergic modulation with memantine trial design, mitophagy-enhancing
    compounds with pharmacogenomic stratification, unified autonomic treatment
    protocol with trial design), ch24 (peptic ulcer parallel expansion with
    molecular switch candidates), ch12 (genetic subtypes back-reference),
    ch25b (DecodeME-Stratified Pharmacogenomic Trial Platform), ch16
    (genetic architecture as causal hierarchy validator).

  - *Immune null findings integration and creative hypothesis generation*
    (Chapter 7, Sections: sec:nk-cells, sec:tgf-beta, sec:ighv3-30 (new),
    sec:immune-summary; Chapter 8, microglial PET warning box;
    Chapter 14b, evidence assessment table and methodological controversy;
    Chapter 13, new open\_question; references.bib, 11 new entries;
    hypothesis registry updated with 7+ new entries):
    Systematic integration of findings from mecfsscience.org critical immune
    review (2026-03-21) with six independent literature research streams.
    Major null findings added: Germain et al.\ 2025 REAP/Luminex autoantibody
    screen (7,542 interactions, complete null @Germain2025autoantibody),
    MCAM/CDC NK cytotoxicity study (n=174, $p=0.79$ @Querec2023MCAM),
    and Baraniuk 2024 NK meta-analysis (Hedges' g=0.96 @Baraniuk2024NKmeta).
    New IGHV3-30 B cell receptor repertoire skewing section added with
    three-group replication (Sato 2021, Lipkin 2020, Ryback 2025) and the
    paradox of skewing without adaptive immune signatures.
    TGF-$beta$ section substantially expanded with Blundell systematic review,
    Roerink 2018 centrifugation artifact concern @Roerink2018TGFartifact,
    and novel "Rosetta Stone" hypothesis linking TGF-$beta$ to NK dysfunction.
    TSPO-PET warning box expanded with Raijmakers null result and Nutma 2023
    specificity criticism @Nutma2023TSPO. Ch14b evidence table downgraded
    for autoantibody detection (Moderate $arrow$ Low-Moderate); overall
    assessment rewritten around RESETME trial as decisive test.
    Six novel hypotheses/speculations formalized: TGF-$beta$ Rosetta Stone
    (certainty 0.40), TGF-$beta$ Lock epigenetic hit-and-run (0.30),
    Cellular Fog/normal army broken soldiers (0.35), Abortive B Cell
    Activation (0.25), Anellovirus hyperimmune paradox (0.20), Immune
    Diaspora/displaced tissue-resident cells (0.20). Two major open\_questions
    added: Paradox of Invisible Immunity (ch07), Immune as Canary (ch13).
    Motivated by: mecfsscience.org comprehensive immune review highlighting
    pattern of well-powered null results challenging systemic immune
    activation hypothesis; need to reconcile these with positive functional
    findings and treatment evidence.
    @Germain2025autoantibody @Querec2023MCAM @Baraniuk2024NKmeta @Roerink2018TGFartifact @Blundell2015cytokines @Sato2021BCR @Milivojevic2020plasma @Ryback2025BCR @Dibble2024TCR @Nutma2023TSPO @Corbitt2019.

  - *Mechanism–Treatment Map: navigational chapter linking all ME/CFS mechanisms to available interventions*
    (New chapter in Part III, `ch:mechanism-treatment-map`; `#direction` environment added to `environments.typ`):
    New navigational entry point to Part III answering: for each known ME/CFS mechanism, what treatment options
    exist? Organised by causal tier (Tier 1: trigger-capable root causes; Tier 2: amplifiers), cross-referenced
    to Chapter @ch:causal-hierarchy. Content includes: (1) mechanism overview table mapping 12 mechanisms to
    treatment counts, therapeutic priority ratings, and section links; (2) per-mechanism treatment lists for all
    four Tier 1 mechanisms (GPCR autoantibody cascade, metabolic safe mode lock, CNS energy crisis, TRPM3
    channelopathy) and all eight Tier 2 mechanisms (NAD+ depletion, oxidative stress, mast cell–energy loop,
    viral reactivation/immune exhaustion, endothelial activation/microclotting, dysautonomia/ANS dysfunction,
    gut dysbiosis, epigenetic consolidation); (3) cross-tier and mechanism-agnostic interventions; (4) coverage
    gaps and research priorities section identifying three critical gaps (epigenetic consolidation, metabolic safe
    mode lock, TRPM3 channelopathy) and six highest-priority research directions.
    Motivated by: the causal hierarchy (Chapter @ch:causal-hierarchy) established a tiered classification of
    mechanisms but no chapter translated this into a treatment lookup by mechanism; patients and clinicians
    needed a single cross-reference view before navigating the full treatment chapters.
    @Scheibenbogen2018immunoadsorption @Cabanas2021 @Trivedi2018methylation @keller2024cpet @Loebel2016 @Maes2009CoQ10.

  - *Causal hierarchy analysis: root causes, amplifiers, and consequences*
    (New Chapter 16 in Part II; new Chapter 33 in Part V; hypothesis registry
    updated with 6 new entries):
    Two sister chapters synthesizing all pathophysiology mechanisms from Chapters 6–15
    and all formal models from Chapters 27–32 into a causal hierarchy. Chapter 16
    introduces a three-tier classification framework (trigger-capable root causes,
    amplifiers, downstream consequences) with four discriminating criteria, identifies
    four trigger-capable mechanisms (CNS energy crisis, metabolic safe mode lock,
    GPCR autoantibody cascade, TRPM3 channelopathy), six amplifiers, and five
    downstream consequences. Proposes a “multiple entry points, single final common
    pathway” hypothesis and distinguishes load-bearing from secondary locks.
    Critically argues that root cause $eq.not$ treatment priority due to tractability
    constraints. Chapter 33 formalizes the hierarchy using the 64-variable ODE model,
    introduces three new model modules (GPCR autoantibody dynamics, TRPM3/calcium
    signaling, bistable metabolic safe mode switch) extending the model to 67
    variables, and performs trigger sufficiency analysis, parameter sensitivity
    analysis, lock removal analysis, and minimum intervention set enumeration.
    Derives a formal “Minimum Lock Release Theorem” predicting that recovery from
    the severe/locked attractor requires simultaneous restoration of 3–4 parameters.
    Motivated by: the observation that the document catalogues 24+ mechanisms without
    distinguishing which are causally sufficient to generate ME/CFS versus which are
    downstream consequences; the need to connect qualitative pathophysiology reasoning
    to quantitative model predictions for research prioritization.
    @Walitt2024NIH @Nakatomi2014neuroinflammation @Loebel2016 @Sotzny2021 @Stein2024immunoadsorption @Fluge2025daratumumab @Sasso2026trpm3.

  - *Transcranial magnetic stimulation (TMS) for ME/CFS: expanded evidence review*
    (Chapter 18, Section @subsubsec:tms-mecfs; Appendix H, new annotated
    bibliography subsection; hypothesis registry updated with 1 new entry):
    Expanded the TMS stub into a comprehensive section covering neurophysiological
    rationale (motor cortex hypoexcitability demonstrated by diagnostic TMS studies),
    all four ME/CFS therapeutic studies (Kakuda 2016, Yang 2020, Miwa 2023, Miwa 2025;
    total $n approx 72$, all open-label), indirect sham-controlled evidence from
    fibromyalgia meta-analyses (11–18 RCTs, $n = 303$–643), and practical safety
    considerations.
    Motivated by: Telegraph article on TMS for ME/CFS (March 2026) and MEA response
    noting absence of research evidence; literature review revealed more evidence than
    initially apparent, warranting balanced coverage rather than dismissal.
    @Kakuda2016rTMS @Yang2020rTMS @Miwa2023rTMS @Miwa2025rTMS @Samii1996TMS @Starr2000TMS @Davey2003TMS @Lefaucheur2020NIBS @Toh2022fibrorTMS @Su2021fibrorTMS.

  - *Meningitis–ME/CFS intersection: infection susceptibility, neuroinflammatory overlap, and vaccination*
    (Chapter 7, new Sections 7: “Infection Susceptibility in ME/CFS,”
    “Vaccination in ME/CFS: Efficacy and Safety,” expanded complement
    section with exercise-induced C4a/PEM data;
    Chapter 8, new Section 8: “Meningitis as a Model for Acute
    BBB-Neuroinflammatory Injury” with glymphatic system and dural mast cell
    content, “Double Vulnerability” speculation;
    Chapter 14d, new paragraphs on post-meningitis fatigue syndrome and
    Q fever as bacterial trigger paradigm;
    Appendix H, 7 new annotated bibliography entries;
    hypothesis registry updated with 2 new entries):
    Comprehensive integration of meningitis–ME/CFS research across five
    convergent mechanistic domains: (1) microglial priming/second-hit hypothesis,
    (2) oxidative/nitrosative stress overlap (peroxynitrite pathway),
    (3) non-ischaemic mitochondrial dysfunction, (4) kynurenine pathway
    activation, (5) endothelial dysfunction and microclots. New content on
    exercise-induced complement activation (C4a) as PEM biomarker with
    4-study replication chain (Sorensen 2003, Nijs 2010, Polli 2019,
    Glass/Hanson 2025). Vaccination safety section establishes that infection,
    not antigen exposure, triggers CFS/ME (Magnus 2015: HR 2.04 for infection
    vs.\ HR 0.97 for vaccine). Glymphatic section introduces the 2025 Cell
    paper on dural mast cells regulating CSF dynamics at ACE points—a novel
    mechanistic bridge between MCAS and glymphatic waste clearance.
    Motivated by: 2026 UK meningitis outbreak prompting analysis of ME/CFS
    patients' infection vulnerability; identification of meningitis as an
    underexplored post-infectious ME/CFS trigger with unique CNS-direct
    inflammatory insult.
    @Hotopf1996meningitis @Schwitter2024meningitis @Ungureanu2021meningitis @Magnus2009meningococcal @Magnus2015influenza @Prinsen2012vaccine @Sorensen2003complement @Nijs2010pem @Polli2019complement @Glass2025ev @iu2024tcell_exhaustion @Spronk2023qfever @Pinas2022glymphatic @Christodoulides2024meningitis @Caligiuri1987nk @Scheld1999oxidative @Schwerk2015meningitis @VanderLinden2023microclots @Perrin2025glymphatic @Midtbo2014meningitis @Gil2023cd8 @Klein2024longcovid @Bested2001bbb

  - *Food-triggered mast cell activation in ME/CFS*
    (Chapter 14d, new Section 14d.5 “Food-Triggered Mast Cell Activation: The
    Silent Pathway”; Chapter 19, expanded Section 19.2.2 “Mast Cell Activation
    Syndrome”; Chapter 20, new Section 20.5.4 “Mast Cell Mediator Biomarkers”;
    hypothesis registry updated): Comprehensive new content on non-IgE pathways
    by which food triggers mast cell degranulation without positive allergy tests
    (MRGPRX2, complement C3a/C5a, lectin–IgE glycan cross-linking, food additive
    oxidative pathways). Mediator-to-symptom mapping for fatigue, brain fog, POTS,
    and GI distress. Practical elimination-rechallenge protocol adapted for
    energy-limited patients. Urinary paired mediator testing (NMH, LTE4,
    PGD#sub[2] metabolite) as diagnostic approach. Two new hypothesis/speculation
    environments with falsifiable predictions. MCAS overdiagnosis warning with
    strict diagnostic criteria.
    Motivated by: clinical question whether silent (non-IgE) food-triggered mast
    cell degranulation contributes to ME/CFS symptoms in patients with negative
    allergy testing.
    @Rohrhofer2025mecfsmast @Kohno2021potsmast @Roy2021mrgprx2 @Thapaliya2022mrgprx2neuro @EliehAliKomi2020complement @ComasBaste2020histamine @Folkerts2018fiber @Voelker2025biomarkersmast @Voelker2024urinemast @Castells2024mcasreview @Gulen2024mcascriteria @Maeda2017pgdm @Rohrhofer2024stratification @Tsilioni2022exosome @Hatziagelaki2018hypothalamus @Pepper2020additives @Weinstock2023MCASneuro

  - *Cognitive dysfunction quantification and post-COVID parallels*
    (Chapter 8, new Section 8.7.2 “Quantifying Cognitive Impairment:
    Population-Scale Evidence”): Expanded the cognitive dysfunction section with
    quantitative meta-analytic data (effect sizes $g = -0.55$ to $-0.82$ across
    domains), multi-site objective assessment results (MCAM speed–accuracy
    dissociation), and a comprehensive subsection on post-COVID cognitive decline
    including population-scale IQ-equivalent losses ($tilde$3/6/9 points by
    severity), objective cognitive slowing (3 SD), structural neuroimaging
    correlates (grey matter loss), and direct ME/CFS vs.\ Long COVID comparison
    (sustained attention 83% vs.\ 56% impaired). Cross-disease cognitive
    comparison added to Chapter 14d (Long COVID paragraph expanded with
    quantitative evidence). Post-COVID cognitive population impact added to
    Chapter 23 (Post-COVID Surge subsection expanded).
    _Motivated by:_ Cognitive impairment descriptions lacked quantitative
    data despite available meta-analytic evidence; post-COVID cognitive research
    provides convergent evidence and population-scale
    context @Hampshire2024cognition @Sebaiti2022cognitive @Lange2024cognitive @Zhao2024cognitive @Douaud2022brain @Azcue2022brainfog.

  - *Stimulation intolerance integrated model* (Chapter 15, new
    Section 15.19): Unified explanation of why ME/CFS patients cannot tolerate
    physical, sensory, cognitive, and emotional stimulation. Synthesizes energy
    bottleneck, central sensitization, microglial amplification, inhibitory brake
    failure, cross-modality convergence, interoceptive amplification, and clinical
    implications into a single coherent model.
    _Motivated by:_ Mechanistic explanations were present but scattered
    across ch02, ch03, ch08, ch14h, and ch15; no unified narrative existed linking
    energy depletion to sensory
    amplification @RenzPolster2022 @Nijs2017neuroinflammation @Baraniuk2025NociplasticMECFS.

  - *Nerve sheath pain mechanisms* (Chapter 15,
    Section 15.11 subsection): New subsection explaining why nerve sheaths become
    painful via four converging mechanisms: Schwann cell TRPA1 activation by
    ROS/CGRP, endoneurial hypoxia from vasa nervorum dysfunction, autoimmune
    targeting of nerve sheath antigens, and perineurial mast cell degranulation.
    Includes convergent vulnerability
    hypothesis @heng2025mecfs @Oaklander2016autoimmuneSFN @Oaklander2022SFN.
    _Motivated by:_ Patients report nerve trunk pain distinct from SFN or
    central sensitization; no existing section explained the mechanism.

  - *Periarticular and muscular pain mechanisms* (Chapter 15,
    Section 15.11 subsection): New subsection explaining why pain localizes around
    joints and in muscles despite absence of inflammatory arthritis or
    exercise-induced injury. Covers periarticular mast cell density, muscle
    metabolic nociception (ASIC3 combinatorial gating, P2X3, TRPV1), fascial
    innervation, microvascular ischemia–reperfusion, and interaction with central
    sensitization @Lien2019lactate @Jammes2021muscle @Nijs2012painCFS.
    _Motivated by:_ Common patient complaint without a unified mechanistic
    explanation in the document.

  - *Four-compartment nociceptive model* (Chapter 29, new
    subsections): Mathematical models for nerve sheath inflammation dynamics
    ($cal(N)_s$), periarticular nociceptive input ($P_{"peri"}$),
    muscular metabolic nociception ($P_{"musc"}$ with ASIC3 upregulation
    kinetics), and a unified four-compartment total nociceptive input equation
    replacing the prior single $P_{"noci"}$. Each compartment has distinct
    temporal dynamics and therapeutic targets. Full Model Application Guide entry
    with worked example, measurements, and falsification criteria.
    _Motivated by:_ Existing central sensitization model could not predict
    pain distribution or temporal profile; tissue-specific generators required
    compartmental decomposition.

  - *Healthy exercise response baseline model* (Chapter 27, new
    Section 27.3; Chapter 31, expanded Section 31.4.1): Formal model of the
    healthy exertion–recovery–adaptation cycle using the same ODE framework as
    the ME/CFS models, providing face validation of the model and identifying the
    precise branch point where physiology becomes pathology. Introduces metabolic
    headroom ratio $R_{"headroom"}$ (Eq. 27.8), supercompensation integral
    $Delta M_h^("net")$ (Eq. 27.9), iterated training adaptation
    (Eq. 27.10), DOMS inflammatory timeline model (Eq. 27.11), and critical
    branch-point condition (Eq. 27.12). New hypothesis: Supercompensation Failure
    as Mechanistic Basis of Exercise Intolerance (certainty 0.50) with four
    testable predictions. Full Model Application Guide entry with healthy vs.\
    ME/CFS worked example. Hypothesis registry updated.
    _Motivated by:_ The model's equations were only validated against
    ME/CFS data; reproducing well-characterized healthy exercise physiology
    (DOMS timing, supercompensation window, training adaptation) with the same
    equations at healthy parameters constitutes a first face validation and
    clarifies why GET harms
    patients @Hood2009biogenesis @Clarkson2002DOMS @Peake2017muscle @Geraghty2019GET.

  - *BC007 (rovunaptabin) section expanded* (Chapter 18,
    Section 18.2.1): Expanded from a single paragraph to a full subsubsection
    covering mechanism of action (selective aptamer-based GPCR autoantibody
    neutralisation vs.\ non-selective immunoadsorption), clinical evidence
    (Hohberger 2021 case report, Phase IIa $n$=29, Phase II RCT $n$=114
    NCT05911009), comparison table with immunoadsorption across seven
    dimensions, limitations and open questions (post-COVID-only cohorts,
    unknown duration of effect, upstream production not addressed), energy
    profile (Category A–B), and cross-reference to the GPCR-endothelial
    cascade hypothesis.
    _Motivated by:_ BC007 evidence was documented only in appendices
    (Appendix H annotated bibliography, Appendix I research registry) but
    absent from the main treatment chapter; immunoadsorption and daratumumab
    had substantially more developed coverage in
    ch18 @Hohberger2021bc007.

  - *Evolutionary deferred-cost hypothesis for PEM timing*
    (Chapter 14e, new Section 14e.8 “The Evolutionary Deferred-Cost Hypothesis
    for PEM Timing”, label `spec:evolutionary-deferred-cost`):
    New speculation integrating evolutionary medicine, sickness behaviour biology,
    and ME/CFS adrenergic physiology into a unified account of why PEM has a
    characteristic 12–72 hour delay. Central claim: the deferred-cost
    architecture (act now, pay later) was selected for over evolutionary time
    because organisms that could override fatigue and pain during acute threats
    survived; in ME/CFS the emergency override mechanism is intact but the
    restoration phase is broken. Includes: evolutionary rationale with references
    to endurance running evolution and stress-induced analgesia; evidence for
    preserved adrenergic override (meta-analysis of adrenergic dysfunction in
    ME/CFS); evidence for broken restoration (post-exertional cytokine cascade);
    relationship to the “stuck sickness behaviour” hypothesis in ch14a;
    the “you seemed fine” social misunderstanding; severity gradient prediction;
    and four testable predictions. Registry updated with new Domain 10
    (Evolutionary Medicine). Six new citations added
    (`Hart1988SickBehavior`, `Dantzer2007SicknessBehavior`,
    `Bramble2004EnduranceRunning`, `Marino2022FatigueEvolution`,
    `Parikh2011StressAnalgesia`, `Hendrix2025AdrenergicDysfunction`);
    post-exertional cytokine evidence uses pre-existing `Moneghetti2018`.
    _Motivated by:_ Author observation that the PEM delay is unexplained
    by current mechanistic accounts; evolutionary framing provides a principled
    reason why the delay is normal biology rather than a disease
    anomaly @Hart1988SickBehavior @Dantzer2007SicknessBehavior @Bramble2004EnduranceRunning @Marino2022FatigueEvolution @Parikh2011StressAnalgesia @Che2025 @Moneghetti2018 @Hendrix2025AdrenergicDysfunction.

  - *MCAS antihistamine up-dosing section*
    (Chapter 15, new Section “Antihistamine Up-Dosing in MCAS”): Added
    comprehensive guidance on higher-than-standard antihistamine dosing for MCAS,
    covering four H1 antihistamines (cetirizine, fexofenadine, loratadine,
    rupatadine) and two H2 antihistamines (famotidine, cimetidine). Includes
    drug-specific dosing tables with standard vs.\ MCAS ranges, evidence grades
    and responder rates, rupatadine-specific escalation protocol, H2 dose
    escalation guidance, and a practical 4-step up-dosing protocol with
    ME/CFS-specific cautions. Cross-references added in Chapter 19 MCAS
    treatment section. Six annotated bibliography entries added to Appendix H.
    Nine new references added to bibliography.

    _Motivated by:_ Document gap identified during clinical dosing review
    — existing MCAS treatment sections used standard allergy doses without
    reflecting the fourfold up-dosing recommendation from the
    EAACI/GA#super[2]LEN urticaria guideline or MCAS specialist
    protocols @Zuberbier2022urticaria @Afrin2013MCAS @Molderings2016pharmacological @Podder2023updosing @VandenElzen2017updosing @Salvucci2023antihistamineLongCOVID @Nurmatov2015H1systematic @Magerl2015rupatadine @Izquierdo2024rupatadine.

  - *IgG immune complex–mediated endothelial and mitochondrial injury*
    (Chapter 6, new Section @sec:igg-mito-disruption; Chapter 7, expanded
    immunoadsorption paragraph; Chapter 10, new
    Section @sec:igg-endothelial; hypothesis registry updated with 1 new
    entry):
    Integration of Liu et al.\ (2026) demonstrating that IgG immune complexes
    purified from post-infectious ME/CFS patient sera ($n = 39$–40) enter
    endothelial cells, induce mitochondrial fragmentation, and trigger
    IL-1$beta$ secretion. Mass spectrometry proteomics revealed
    subtype-specific signatures: classic ME/CFS IgG enriched in ECM
    reorganisation pathways, post-COVID ME/CFS IgG enriched in hemostasis and
    clot formation pathways. Chapter 6 covers the mitochondrial effects
    (fragmentation without bioenergetic collapse, glycolytic compensation,
    female-predominant effect). Chapter 7 links the finding to immunoadsorption
    efficacy, providing a mechanistic rationale for IgG removal. Chapter 10
    positions immune complex deposition as a candidate mechanism for the
    endothelial dysfunction documented by FMD, proteomic, and capillary
    remodelling evidence. New speculation on immune complex–endothelial injury
    as a central vascular mechanism (certainty: 0.35) with three falsifiable
    predictions (immunoadsorption improving FMD, biopsy IgG deposition, in
    vitro fragmentation correlating with EndoPAT scores).
    _Motivated by:_ The document documented autoantibodies and
    immunoadsorption efficacy but lacked a direct mechanistic link between
    circulating IgG and end-organ (endothelial, mitochondrial)
    injury @Liu2026IgGcomplexes.

  - *Causal hierarchy extensions: threat miscalibration, TRPM3 sensitization, subthreshold reservoir, gut reanalysis, and epigenetic reversal strategy*
    (Chapter 16, five new sections/subsections; Chapter 33, full chapter replacing
    TODO stub; Appendix H, 73 new annotated bibliography entries;
    references.bib, 40+ new entries; hypothesis registry updated with 12 new
    entries):
    Major extension of the causal hierarchy sister chapters. Chapter 16 gains
    five new content blocks: (1) Safe mode threat signal miscalibration
    (Section @sec:threat-miscalibration) — SOD2 Ala16Val and Nrf2 promoter
    polymorphisms as genetic predisposition factors that increase $w_"ROS"$
    in the threat signal, lowering the safe mode activation threshold
    (speculation, certainty 0.25). (2) Pregnenolone sulfate as TRPM3
    sensitizer — direct agonism via PregS as a "sensitizer" in combination
    protocols, exploiting $gamma_("TRPM3","CI") approx 0.45$ synergy with
    Complex I interventions (speculation, certainty 0.20).
    (3) Subthreshold reservoir population (Section @sec:subthreshold-reservoir)
    — prediction of a large population sitting just below the disease separatrix,
    identifiable through subclinical biomarker screening and targetable for
    preventive intervention during acute infections (speculation, certainty 0.30).
    (4) Gut dysbiosis trigger reanalysis (Section @sec:amp-gut-reanalysis) —
    challenges the amplifier classification for post-gastroenteritis and
    antibiotic-associated onset subgroups, proposes patient-specific $w_"LPS"$
    adjustment (open question). (5) Timed passive epigenetic reversal strategy
    (Section @sec:timed-epigenetic-reversal) — 18–24 month anti-inflammatory +
    metabolic support protocol to permit passive TET-mediated demethylation of
    the consolidation variable $cal(M)$ without toxic epigenetic drugs
    (speculation, certainty 0.30).
    Chapter 33 replaces the TODO stub with a full formal chapter: disease state
    ODE system with timescale hierarchy, minimum intervention set analysis,
    separatrix nudging framework with synergistic coefficients, epigenetic clock
    hypothesis, critical slowing down (CSD) detection for early warning,
    and attractor migration model. Twelve new hypothesis registry entries
    covering epigenetic clock, reverse cascade recovery, treatment order
    dependence, separatrix nudging, CSD detection, attractor migration,
    antiviral response prediction, and others.
    Motivated by: the initial causal hierarchy chapters established the framework
    but left several extensions as implicit consequences; formalizing these
    extensions strengthens the predictive power of the hierarchy and identifies
    new therapeutic and preventive strategies.
    @Shimoda2004SOD2 @Sweetman2020Nrf2 @Houghton2024sulforaphane @Vriens2011pregnenolone @Wagner2008pregnenolone @Cabanas2018trpm3 @Su2022longcovid @Cervia2022longcovid @Hickie2006postinfectious @Bolton2020passivedemethylation @Younger2014LDN @Giloteaux2016gut @Guo2023butyrate @Martin2023permeability @Maes2008leakygut @Wallis2023FMT.

  - *BBC News ME/CFS Wales coverage*
    (Appendix D, new subsection "Notable Media Coverage"):
    Added BBC News report (March 2026) by Meleri Williams profiling three
    Welsh ME/CFS patients — Tomos Sleep (severe, completely bedbound,
    communicates only through eye gaze), Fflur Evans (moderate, former teacher),
    Alwen Davies (moderate, uses pacing). Includes campaigner Rob Messenger's
    description of Welsh ME services as "a postcode lottery" and Dr Binita Kane's
    observation that "doctors aren't taught about this condition." Welsh government
    response on proposals for an all-Wales specialist and national standards.
    Motivated by: significant media coverage of severe ME/CFS cases and systemic
    healthcare gaps in Wales, relevant to the document's advocacy and resource
    sections.

  - *Adversarial review: scientific rigor and language tempering across mecfsscience.org integration*
    (Chapters 6, 12, 13, 16, 18, 24, 25b; ch10, ch14d cross-reference fixes):
    Systematic adversarial review (cynic, reductionist, sophist) of all content
    added during mecfsscience.org integration session, yielding 28 de-duplicated
    findings across 15 categories. Key changes: (1) Overclaiming language tempered
    throughout ch12 ("unprecedented" $arrow$ "large", "striking" $arrow$ "notable",
    "positions" $arrow$ "suggests", "reveals" $arrow$ "identifies") and ch13
    ("undeniable" $arrow$ "strongly supported by multiple independent lines of
    evidence"). (2) HMGCR therapeutic analogy balanced with >90% GWAS drug target
    failure base rate (ch12). (3) Ch13 hypotheses strengthened: glutamatergic bridge
    anatomical specificity stripped (DecodeME does not localize effect); diagnostic
    mirage given equal space to simpler shared-risk-factors alternative;
    amitriptyline signal confounding pathway made explicit; peptic ulcer parallel
    relabeled as historical analogy not speculation. (4) Ch24 self-sealing
    prediction removed from psychosomatic trajectory claim; "(it does)"
    parenthetical removed; FITNET non sequitur reframed with alternative
    explanations. (5) Preclinical validation qualifiers added to ch18 trial designs
    and ch25b study limitation box. (6) Power analysis and multiple comparison
    correction notes added to ch25b. (7) mecfsscience.org explicitly acknowledged
    as non-peer-reviewed source (ch12 footnote, ch06 cross-reference).
    (8) Deconditioning VO#sub[2]max overlap with sedentary controls acknowledged
    (ch06). (9) Boom-bust adapted-behavior alternative interpretation added (ch06).
    (10) IBS added to psychosomatic list as example of "functional" with validated
    biological subsets (ch24). (11) ch16 "validates" $arrow$ "is consistent with"
    for post-hoc genetic mapping. (12) ch06 "directly validate" $arrow$ "are
    consistent with" for CPET-mitochondrial framework. (13) Three broken
    cross-references fixed (ch12 em-dash label parsing, ch10 ch:cross-disease,
    ch14d sec:sickness-behaviour). (14) LaTeX remnant fixed (ch12 backslash-lt).
    Motivated by: adversarial review identifying overclaiming, circular reasoning,
    insufficient engagement with alternative explanations, and self-sealing
    predictions in newly integrated content.

  - *Pain integration adversarial review fixes: 11 critical findings addressed* (Chapter 2, Chapter 15, hypothesis registry, references.bib): Post-integration adversarial review (6 passes: cynic, sophist, strawman, reductionist, clinician, devil's advocate) identified 11 critical issues. Corrections: (1) ch15 hybrid hypothesis corrected to acknowledge FM also has ~49% SFN (Grayston 2019, Oaklander 2013)---hybrid not unique to ME/CFS. (2) "unique to ME/CFS" replaced with "prominent in ME/CFS" throughout ch02/ch15 with explicit note that head-to-head FM comparison is lacking. (3) Certainty reduced: PEM-pain 0.60$arrow$0.45, hybrid 0.50$arrow$0.40 (Barhorst meta-analysis pools ME/CFS+FM cohorts). (4) Pendergrast2016 citation replaced with correct source (Ramirez-Morales 2022 meta-analysis) for 47.3% FM overlap figure. (5) Parsimonious "FM + PEM" alternative explicitly engaged via new #limitation environment. (6) Five uncited treatment bullets given citations; IVIG caveat added (specialist-only, \$10k--30k/yr, biopsy-confirmed SFN required). (7) Uncited patient pain quotes reframed as clinical descriptions with MPQ citations. (8) Pain neuroscience education guardrail added against psychosomatic misappropriation. (9) Nociplastic "dominant mechanism" claim qualified with 30--38% SFN parenthetical. (10) Registry "Pain Phenotype Predicts Treatment Response" marked registry-only (no standalone #speculation in chapter). (11) Exercise language in ch15 ECS section given severity caveat for moderate-to-severe patients.
    Motivated by: adversarial review of pain integration identifying FM-SFN literature gap, overclaiming uniqueness, inflated certainty, citation error, and missing guardrails @Grayston2019sfn @Oaklander2013sfn @RamirezMorales2022FMoverlap.

  - *Dysergopoiesis naming proposal: convergent phenotype, subtype taxonomy, and adversarial review fixes* (Chapter 1, Section `subsec:proposed-name-dysergopoiesis`; line 71 pre-existing corruption fix): Major expansion and subsequent adversarial review (12 agents: cynic, sophist, strawman, reductionist, clinician, devil's advocate, logic, scientific rigor, content, xref, citation, production readiness) with comprehensive fixes. *New content:* (1) "Common denominator" paragraph developing the convergent-endpoint argument with anemia analogy, now including critical biomarker-gap caveat (haemoglobin vs.\ no unified ME/CFS biomarker; candidates: 2-day CPET, metabolomics @Naviaux2016metabolic). (2) "Natural subtype taxonomy" advantage bullet with explicit acknowledgment that no validated diagnostic criteria exist for subtype assignment. (3) Extended SEID comparison with falsifiability condition (what evidence would weaken the case). (4) `#limitation` environment "Risk of Premature Mechanistic Naming" engaging the strongest counter-argument: naming after an unvalidated mechanism repeats the encephalomyelitis problem; IOM's symptom-based approach has legitimate epistemological merit @IOM2015. *Adversarial review fixes:* (5) Reconciled production-vs-coordination contradiction with ch06: added paragraph acknowledging the open question of energy _production_ vs _coordination/allocation_ failure, reframing dysergopoiesis broadly to encompass the entire energy supply system including demand-responsive mobilisation. (6) Resolved PEM circularity: reordered convergent-endpoint paragraph before PEM; rewrote PEM paragraph from "explains" to "is consistent with"; acknowledged 12--48-hour delay and immune-activation component. (7) Fixed equivocation: clarified that "energy production" encompasses production, delivery, and mobilisation throughout. (8) Replaced factually incorrect diabetes mellitus analogy (diabetes is named after a symptom, not a mechanism) with dyserythropoiesis and congestive heart failure analogies. (9) Fixed SEID critique: added @IOM2015 citation, acknowledged multiple reasons for SEID failure (stigmatising "intolerance" language, not only symptom-centering), credited IOM's deliberate methodological caution. (10) Deduplicated anemia analogy between "Why" paragraph and "Advantages" bullets. (11) Added proposal-status disclaimer to opening sentence. (12) German spelling corrected Dysergopoese$arrow$Dysergopoiese; syllable count corrected ten$arrow$eleven; "diseasedots" text corruption at line 71 fixed. (13) "Clinically actionable" bullet reframed from treatment-determining to communication-advantage. Motivated by: 12-agent adversarial review identifying internal contradiction with ch06, circular reasoning, equivocation across three meanings of "energy production," factually incorrect diabetes analogy, incomplete engagement with strongest counter-argument, missing formal environments, and minor factual errors.

  - *Energy metabolism summary restructured: six-category taxonomy with certainty tags* (Chapter 6, `sec:metabolism-summary` restructured; no new references; no new hypothesis registry entries): The `== Summary: Integrated Metabolic Model` section was restructured from a flat three-subsection taxonomy (Normal Pathways / Documented Dysfunctions / Hypothesized Mechanisms) into a six-category taxonomy that makes conceptually distinct kinds of claims explicit. *New structure:* (1) Normal ATP Synthesis Pathways (5 items — unchanged; no certainty tags needed, these are established physiology). (2) Documented Energy Dysfunctions (17 items — reorganized into three sub-types: Production Failures, 14 items; Delivery Failures, 2 items; Consumption Failures, 1 item; with an evidence-heterogeneity caveat noting that WASF3, intracellular sodium, and AMP/ADP ratio in lymphocytes derive from single studies). (3) Hypothesized Dysfunctions (5 items — mechanisms posited to be dysfunctional but not yet documented; each labeled with certainty tag 0.35--0.50). (4) Normal Mechanisms Turned Pathological (4 items — mechanisms operating correctly but whose normal outputs become harmful in the ME/CFS context; includes CDR with explicit steelman of the "appropriate ongoing response" interpretation). (5) Proposed Compensatory Mechanism (1 item — ketone bypass, certainty 0.30, the only inferred up-regulation). (6) Explanatory Framework (1 item — selective sparing / CNS-dependency framework, certainty 0.40, explicitly labeled as an interpretive framework rather than a testable mechanism). *Adversarial review fixes applied:* therapeutic implications clause qualified ("theoretical — no clinical trial has yet randomized patients by taxonomic category"); CDR steelman added; resting heart rate removed from spared functions (contradicted by POTS/tachycardia evidence); explanatory framework certainty downgraded 0.45$arrow$0.40 (unfalsifiable as stated); evidence heterogeneity caveat added to documented dysfunctions intro. No new citations were added; the restructure reorganizes existing content for taxonomic clarity.
    _Motivated by:_ Internal analysis identifying that the original "Hypothesized Energy Mechanisms" category mixed four conceptually distinct types of claim — dysfunctions, pathologized normal mechanisms, a compensatory up-regulation, and an interpretive framework — without distinguishing them, which obscured their differing evidential status and therapeutic implications.

=== Literature Integration

  - *ACHTSAM study protocol integrated* (Fricke et al.\ 2026,
    _BMJ Open_): First systematic investigation of home-based diagnostic
    tolerability in severe/very severe ME/CFS (Bell score $lt.eq$30). Cited in
    ch05-severity-levels (invisible population), ch10-cardiovascular (EndoPAT
    endothelial function), ch21-clinical-trials (severe patient exclusion gap),
    appendix-c (home-based assessment battery), and appendix-h (annotated
    bibliography).
    _Motivated by:_ Addresses critical research gap in which severe
    patients are systematically excluded from clinical
    studies @Fricke2026achtsam.

  - *NETosis and immune dysregulation batch integration* (2026-03-12):
    Integrated 11 new peer-reviewed and preprint papers on neutrophil extracellular
    traps (NETs), autoantibodies, viral persistence, and immunological biomarkers.
    Chapter 7 (Immune System Dysfunction) expanded with: Krinsky2023 achievement
    documenting persistent NETosis induction in long COVID as potential pathogenic
    driver; Son2023 observation identifying anti-nuclear autoantibodies at 3 months
    post-infection as predictors of persistent symptoms; Schonrich2016, Monsalve2025,
    Veras2023, Hetland2022 inline citations establishing viral NETosis triggers,
    NLRP3-driven autoimmunity cascade, DNase-I therapeutic efficacy, and calprotectin
    as NET burden biomarker; Gao2025LongCovidBiomarkers achievement describing
    distinct proteomic signatures (CCL3/CD40/IKBKG/IL-18/IRAK1) identifying Long COVID
    breathlessness endotype; Peluso2024ViralPersistence achievement documenting viral
    RNA persistence in gut tissue up to 676 days with constitutive innate immune
    sensor activation; Frustrated NETosis hypothesis (certainty: 0.35) linking
    mitochondrial energy failure to incomplete NET formation and autoantigen exposure;
    Calprotectin-PEM open question (certainty: testable) examining whether serial
    calprotectin measurement post-exertion could objectify post-exertional malaise
    through NET dynamics; NET-autoantibody synthesis paragraph positioning NETosis as
    upstream driver and autoantibodies as downstream effectors of unified post-viral
    autoimmune cascade. Chapter 8 (Neurological Dysfunction) expanded with:
    GuedesDeSa2024 hypothesis on autoantibody-driven neurological dysfunction with
    passive transfer causal evidence; VanElzakker2024NeuroinflammationProject context
    reference to ongoing PET-MRI neuroinflammation study. Chapter 10 (Cardiovascular
    Dysfunction) expanded with Weckbach2019 inline citation on cardiac NET-mediated
    fibrosis and ventricular dysfunction. Chapter 6 (Energy Metabolism) expanded with
    Cullen2026ATP speculation on stress-responsive mitochondrial failure phenotype
    paralleling post-exertional energy collapse; NETosis-as-metabolic-sink speculation
    (certainty: 0.30) proposing that energy-expensive NETosis acts as metabolic drain
    competing with normal cellular demands, creating energy depletion cycle.
    _Motivated by:_ Literature-integrator phase identified 11 relevant papers
    on NETosis dysregulation, autoimmunity, and viral persistence mechanisms directly
    applicable to ME/CFS pathophysiology, with novel cross-paper synthesis revealing
    frustrated NETosis hypothesis linking energy depletion to incomplete autoantigen
    generation and calprotectin dynamics potentially mediating
    PEM @Krinsky2023 @Son2023 @Schonrich2016 @Monsalve2025 @Veras2023 @Hetland2022 @Weckbach2019 @Gao2025LongCovidBiomarkers @GuedesDeSa2024 @Peluso2024ViralPersistence @Cullen2026ATP @VanElzakker2024NeuroinflammationProject.

  - *Viral persistence, biomarkers, and neuroinflammation batch integration* (2026-03-12):
    Integrated 6 new peer-reviewed papers on viral reservoir targeting, blood biomarkers,
    spike protein neuroinflammatory priming, IL-18-mediated CD8 suppression, circulating
    neuroinflammation markers, and pediatric long COVID prevention.
    Chapter 7 (Immune System Dysfunction) expanded with: Beentjes2025Biomarkers achievement
    documenting hundreds of blood-based traits distinguishing ME/CFS independent of inactivity
    (UK Biobank $n=131{,}758$, replicated in All-of-Us, certainty: 0.75); Proal2025Reservoir
    achievement establishing international consensus framework for viral reservoir targeting
    in long COVID via Lancet Infectious Diseases position paper synthesizing persistent
    SARS-CoV-2 evidence and trial design principles (certainty: 0.75); Autaa2025CD8Aging
    inline citation on IL-18-mediated CD8 suppression with aging, linking immunosenescence
    to impaired viral reservoir clearance in older post-COVID ME/CFS patients (certainty: 0.70).
    Chapter 8 (Neurological Dysfunction) expanded with: Frank2024S1Priming hypothesis
    documenting S1 spike subunit sensitization of brain innate immunity in rats with
    sustained neuroinflammatory priming (MhcII$alpha$, Nlrp3, Tlr4 upregulation persisting
    7 days), proposing spike-driven TLR4 disinhibition as mechanism for neuroinflammatory
    threshold lowering and symptom relapse post-infection (certainty: 0.55, registered in
    hypothesis-registry); Omdal2026LongCovidNeuroinflammation observation documenting null
    circulating neuroinflammation markers (NfL, GFAP) in long-COVID case-control study
    ($n=96$, median 69 weeks post-infection) as balancing evidence that blood biomarkers
    may not detect localized glial activation (certainty: 0.55).
    Chapter 23 (Epidemiology) expanded with: Wu2024LongCovidChildren achievement documenting
    BNT162b2 effectiveness against long COVID in children and adolescents ($n>385{,}000$,
    95.4% effectiveness in adolescents during Delta), with causal mediation analysis
    showing protection operates via infection prevention rather than post-infection immune
    modification (certainty: 0.80), confirming that preventing the acute infection event
    is fundamentally more effective than modifying post-infection immune trajectory.
    New paragraph “Vaccination as Prevention Strategy in Children and Adolescents” added
    to Post-COVID Surge subsection.
    _Motivated by:_ Six high-impact papers from 2024–2025 providing landmark
    evidence on viral persistence as therapeutic target, activity-independent blood biomarker
    signatures in ME/CFS with replication, spike protein-driven neuroinflammatory priming
    as mechanism linking viral antigen to prolonged neurological sensitization, and pediatric
    long COVID as preventable syndrome providing population-level intervention evidence and
    mechanistic clarity on infection-driven vs.\ immune-modulation approaches @Beentjes2025Biomarkers @Proal2025Reservoir @Frank2024S1Priming @Autaa2025CD8Aging @Omdal2026LongCovidNeuroinflammation @Wu2024LongCovidChildren.

  - *Chapter 9 (Endocrine Dysfunction) — post-viral pituitary injury* (2026-03-13):
    New subsubsection _Post-Viral Pituitary Injury and Secondary Adrenal Insufficiency_
    (@sec:postviral-pituitary) added to the HPA Axis section, covering a fourth
    mechanistic pathway distinct from the three functional mechanisms already described.
    Content includes: achievement environment for Leow et al.\ 2005 SARS-1 data (39.3%
    central hypocortisolism in 61 survivors); integration of Carosi et al.\ 2024 COVID-19
    pituitary review; Ruiz-Pablos et al.\ 2024 autoimmune hypophysitis model; new
    `fhypothesis` environment (`hyp:postviral-pituitary`, certainty 0.50) with
    four testable predictions; `warning` environment on the inadequacy of morning
    cortisol for detecting secondary AI; `limitation` environment on SARS-1
    generalisability. Existing HPA `limitation` block updated to reference Leow 2005 as
    closest-to-prospective evidence. Future Research Directions updated to include prospective
    pituitary evaluation as a priority. Hypothesis registry updated (Domain 4, new entry).
    Appendix C updated with matching warning block cross-referencing ch09. Chapter 29 model
    falsification criteria amended with subgroup qualifier distinguishing structural from
    functional HPA phenotypes.
    _Motivated by:_ LinkedIn post by Manuel Ruiz-Pablos (2026-03-09) identifying
    structural pituitary injury as a gap in coverage; SARS-1 evidence (Leow 2005) and
    COVID-19 pituitary literature providing strong foundational evidence for post-viral
    secondary AI as a distinct and under-recognised ME/CFS mechanism.
    Key sources: @Leow2005sars @Ruiz2024hpa @Carosi2024hypopituitarism.

  - *Oral microbiome as underexplored inflammatory reservoir*
    (Chapter 11, new Section @sec:oral-microbiome; Chapter 14i, new
    Section @sec:oral-autoimmunity-bridge; hypothesis registry updated with
    3 new entries; 5 new bibliography entries):
    New section in the gut microbiome chapter identifying the oral microbiome as
    an unstudied compartment in ME/CFS. Synthesizes periodontitis-systemic
    inflammation literature to identify three potentially relevant pathways:
    (1) periodontal bacteremia driving endothelial dysfunction via the same
    CRP/IL-6/TNF-α mediators elevated in ME/CFS, (2) _P.\ gingivalis_
    gingipain-mediated neuroinflammation and BBB disruption paralleling
    documented ME/CFS neuroinflammation, (3) citrullination-driven
    neoantigen generation as a candidate initiator for GPCR autoantibodies.
    Open question on oral microbiome as inflammatory reservoir
    (@oq:oral-microbiome). Speculation on the oral dysbiosis--disability vicious
    cycle (@spec:oral-dysbiosis-cycle, certainty 0.30) — a self-reinforcing
    loop between reduced self-care capacity and periodontal disease progression
    that is entirely modifiable through caregiver-assisted oral hygiene.
    Chapter 14i speculation on _P.\ gingivalis_--autoimmunity bridge
    (@spec:oral-autoimmunity, certainty 0.20) linking citrullination, trained
    immunity, and gingipain neuroinflammation to ME/CFS autoimmune and
    neurological features.
    _Motivated by:_ Hasan et al.\ 2025 systematic review of periodontal-systemic
    inflammatory associations; identification that ME/CFS microbiome research
    exclusively targets the gut while ignoring the oral compartment despite
    well-established oral-systemic inflammation pathways and the self-care
    limitations of severe patients creating conditions favourable for
    periodontal disease.
    @Hasan2025periodontal @Hajishengallis2021periodontal @Hajishengallis2015periodontal @Dominy2019gingipains @Tattar2025periodontal.

  - *Vascular pathology integration: glycocalyx, microclots, RBC dysfunction, endothelial senescence, and respiratory physiology*
    (Chapter 6, Section `sec:vascular-primary-causation` expanded; Chapter 7, new Section `sec:endothelial-senescence` with `hyp:endothelial-senescence-loop`; Chapter 10, new Sections `sec:endothelial-senescence-cv`, expanded coagulation/RBC/fibrin content; Chapter 14k new file `ch14k-vascular-brainstorm.typ` with `sec:vascular-brainstorm`; Chapter 18, new Sections `sec:imt-mecfs`, `sec:carotid-body-mecfs` with `spec:carotid-body-mecfs`; Appendix H, new Section `sec:bib-vascular-2022-2026`; references.bib, 13 new entries; hypothesis registry, 9 new entries): Comprehensive integration of 2022--2026 vascular pathology research. *(1) Endothelial senescence (Nunes et al.\ 2026):* virus-induced endothelial senescence as a self-perpetuating maintaining mechanism; NK/T cell clearance failure; SASP driving ongoing vascular damage (Chapter 7, certainty 0.40). *(2) Fibrinaloid microclots (Nunes/Pretorius group):* Nunes 2022/2023 platelet and blood reviews, Nunes 2024 proteomics, Kruger 2022 triple anticoagulant trial ($n = 91$, 80% improvement) — systematic expansion of the coagulation section in Chapter 10. *(3) RBC dysfunction:* Grau 2024 (Long COVID RBC morphology), Guo 2025 (microfluidic biomechanics), Rogers 2024 (COVID oxygen-sensing failure) — RBCs as both passive victims and active microclot nucleators. *(4) Vascular-primary causal model:* Scheibenbogen-Wirth 2024 temporal hypothesis (early PCS = vascular-only; ME/CFS = mitochondrial damage downstream once capillary thickening reaches threshold) integrated into Chapter 6 substrate delivery section. *(5) Failed angiogenic compensation:* Flaskamp 2022 endothelial progenitor cell failure preventing adaptive capillary remodelling — new Section `sec:endothelial-senescence-cv` in Chapter 10, hypothesis certainty 0.30. *(6) Orthostatic hypocapnia:* van Campen 2023 PETCO#sub[2] quantification (26--30 vs.\ 36 mmHg in controls) as a cerebral blood flow amplifier — added to Chapter 10 CBF mechanisms. *(7) Carotid body sensitisation:* El-Medany 2024 hypoxic/hypercapnic ventilatory responses in Long COVID with P2X3 antagonism proposal — new Chapter 18 section (speculation, certainty 0.25). *(8) Inspiratory muscle training:* Edgell 2025 pilot RCT ($n = 16$) showing clinically meaningful improvement in peak VO#sub[2] (+1.4~mL/kg/min), SF-36, and HRV with minimal PEM risk — new Chapter 18 section (Evidence grade C). *(9) Creative brainstorm (Chapter 14k):* four novel hypotheses (glycocalyx as molecular pacing device, orthostatic hypocapnia–microclot positive feedback loop, SA-EV propagation, RBC phosphatidylserine externalisation as microclot nucleator); three treatment proposals (D+Q senolytic pilot trial, glycocalyx prevention trial in early post-COVID, P2X3 + volume combination); ODE bistable loop formalising the vascular-mitochondrial self-sustaining attractor with four state variables $V(t), M(t), "Na"(t), "Ca"(t)$.
    _Motivated by:_ Nunes et al.\ 2026 endothelial senescence paper @Nunes2026endothelialSenescence; Scheibenbogen and Wirth 2024 sarcopenia temporal model @ScheibenbogenWirth2024sarcopenia; Guo et al.\ 2025 microfluidic RBC biomechanics @GuoRBC2025microfluidic; Flaskamp et al.\ 2022 endothelial progenitor failure @Flaskamp2022endothelial; El-Medany et al.\ 2024 carotid body sensitisation @ElMedany2024carotid; Edgell et al.\ 2025 IMT pilot RCT @Edgell2025imt; van Campen et al.\ 2023 orthostatic hypocapnia @VanCampen2023co2cbf; Kruger et al.\ 2022 triple anticoagulant @KrugerMicroclot2022longcovid.

  - *VNS fibre-selectivity: anatomical constraint analysis and two speculations*
    (Chapter 18, inline mechanistic caveat added to tVNS bullet and pyridostigmine
    bullet; two new `#speculation` environments: `spec:vns-wrong-fibres`
    "The Wrong Fibres Hypothesis" (certainty 0.30) and `spec:gut-vagal-cfibre`
    "Gut Microbiome Restoration as Indirect Vagal C-Fibre Therapy" (certainty 0.40);
    Appendix H, new Bu et al.\ 2026 annotated bibliography entry;
    hypothesis registry, new VNS fibre-selectivity table
    `tab:hypothesis-registry-vns-fibre-2026-04-10`; references.bib, 1 new entry
    @Bu2026VNSReview):
    Integration of Bu et al.\ 2026 (_Comprehensive Physiology_ 16(2):e70109,
    PMID 41781173) — a comprehensive review establishing the cervical vagus as a
    multi-fascicle structure with heterogeneous fibre composition and biophysical
    recruitment thresholds. A-fibres (large, myelinated) recruit first at low
    stimulation intensities; B-fibres (preganglionic autonomic efferents governing
    heart rate, gut motility, bronchomotor tone) require intermediate parameters;
    C-fibres (unmyelinated, visceral afferents carrying inflammatory and nociceptive
    signals) require the highest intensities. This anatomical hierarchy generates a
    critical selectivity problem for VNS in ME/CFS.
    *Inline additions to Ch.18:* (1) tVNS mechanistic caveat explaining that
    transcutaneous stimulation uses auricular branches with uncertain fascicular
    correspondence to the cervical trunk, raising fundamental questions about which
    fibre classes are engaged clinically. (2) Pyridostigmine bullet updated to
    reflect a speculative (clearly labelled) possibility that systemic acetylcholinesterase
    inhibition might complement the B-fibre cholinergic anti-inflammatory pathway
    without requiring electrical recruitment of B-fibres — with explicit caveat that
    the relevant anatomical assumption (spleen-innervating fibres are truly B-class)
    is not validated.
    *Wrong Fibres Hypothesis (certainty 0.30):* tVNS devices operating at intensities
    sufficient to avoid adverse effects may primarily recruit A-fibres (cutaneous) or
    low-threshold B-fibres, while the C-fibre afferents carrying gut inflammatory
    status signals and the B-fibre efferents driving splenic macrophage suppression
    require higher thresholds than typically used. The 57% response rate in the
    Natelson 2022 pilot @NatelsonTVNS2022 would then reflect either the minority of
    patients in whom the accessible auricular branches reach relevant fibre populations,
    or benefit mediated through a different (non-fibre-selective) mechanism.
    *Gut Microbiome Restoration as Indirect Vagal C-Fibre Therapy (certainty 0.40):*
    Microbiome restoration (butyrate, dietary fibre, FMT) could activate gut mucosal
    C-fibre afferents via the EC-cell serotonin pathway — producing afferent vagal
    tone increases measurable as HRV improvement — without requiring any electrical
    hardware or fibre-selectivity engineering. The prediction distinguishes two separate
    arms: afferent (gut butyrate $arrow$ EC-cell serotonin $arrow$ vagal C-fibre afferents
    $arrow$ NTS activation) versus efferent (NTS $arrow$ splenic nerve $arrow$
    alpha-7 nAChR macrophage suppression), and notes that central autonomic processing
    failure in ME/CFS could decouple these arms even if the afferent arm is intact.
    Serotonin safety concern noted as a meaningful limitation for patients with
    visceral hypersensitivity or MCAS.
    _Motivated by:_ Bu et al.\ 2026 @Bu2026VNSReview — first comprehensive
    anatomical characterisation of vagal fibre-class recruitment thresholds and
    fascicular architecture; Kaelberer et al.\ 2018 @Kaelberer2018 — EC-cell
    glutamatergic synaptic coupling to vagal afferents; Barton et al.\ 2025
    @Barton2025 — butyrate EC-cell serotonin production; Natelson et al.\ 2022
    @NatelsonTVNS2022 — tVNS pilot in ME/CFS; Yu et al.\ 2022 @Yu2022 — HRV
    as tVNS responder predictor in POTS.

  - *Sigma-1 receptor agonism, ER stress, and fluvoxamine: REVIVE-TOGETHER RCT integration and creative extensions*
    (Chapter 18, new Section `sec:sigma1-fluvoxamine` with subsections covering the REVIVE-TOGETHER trial,
    S1R mechanism, WASF3/ER stress connection, additional pharmacological mechanisms, epistemological framing,
    ME/CFS relevance caveats, and creative extensions; Appendix H, new Section `sec:bib-sigma1-fluvoxamine`
    with 4 annotated bibliography entries; hypothesis registry, 6 new entries: 2 hypotheses, 1 speculation,
    3 open questions; references.bib, 4 new entries):
    Integration of Reis et al.\ 2026 REVIVE-TOGETHER Bayesian adaptive RCT ($n = 399$; Long COVID fatigue
    $≥$90 days; fluvoxamine 100~mg BID vs.\ metformin vs.\ placebo; FSS difference −0.43, 99% posterior
    probability of superiority @Reis2026fluvoxamine) combined with mechanistic synthesis of sigma-1 receptor
    biology. *Main mechanistic development:* Fluvoxamine is the highest-S1R-affinity SSRI (Ki $approx$36~nM);
    S1R agonism suppresses IRE1$alpha$-mediated UPR; SARS-CoV-2 Nsp6/Nsp8 directly bind S1R (Gordon et al.\
    2020 interactome @Gordon2020sigma1SARS). Connection to ME/CFS: Wang et al.\ 2023 WASF3/ER stress loop in
    skeletal muscle — ER stress $arrow.r$ WASF3 $arrow.r$ mitochondrial supercomplex disruption $arrow.r$
    Complex IV impairment $arrow.r$ more ER stress. S1R agonism proposed as upstream brake on this loop
    (certainty 0.25; IRE1$alpha$-dependence of WASF3 in ME/CFS is the untested node). *Creative extensions:*
    DHEA--S1R hypothesis (certainty 0.20); 4-PBA and TUDCA as direct ER stress suppressors; MAM calcium
    handling and Krebs cycle suppression connection; TRPM3/ceramide intersection; CYP1A2 melatonin paradox
    as research tool. *Methodological rigor:* Five limitation items for REVIVE-TOGETHER (baseline imbalance,
    differential dropout, modest effect size, no biomarkers, Long COVID ≠ ME/CFS). CYP1A2/caffeine elevated
    from confound to rival primary explanation requiring explicit rebuttal in replications. Failed acute
    COVID replications (STOP-COVID 2, ACTIV-6, COVID-OUT) cited to contextualise the Lenze 2020 positive
    signal. Epistemological section applies the "treatment $eq.not$ mechanism" logic symmetrically (blocks
    both psychogenic and S1R inferences equally). *Safety:* Comprehensive `#warning-env` covering CYP1A2
    substrates (melatonin, duloxetine, clozapine/olanzapine, theophylline), CYP2C19 substrates (omeprazole,
    clopidogrel, diazepam, phenytoin, voriconazole), serotonin syndrome (MAOIs, triptans, tramadol, mirtazapine,
    St.\ John's Wort), POTS/hypotension risk, QTc monitoring, conservative ME/CFS dose-escalation schedule
    (25~mg evening start, 4-step uptitration), stopping criteria, and discontinuation taper.
    *Evidence grade:* C (Long COVID RCT) / E (ME/CFS).
    _Motivated by:_ Reis et al.\ 2026 @Reis2026fluvoxamine — Bayesian adaptive RCT providing the strongest
    pharmacological signal in Long COVID fatigue to date in a well-powered adaptive design; Hashimoto 2021
    @Hashimoto2021sigma1 — sigma-1 receptor pharmacology review establishing S1R as drug repurposing target
    in COVID; Gordon et al.\ 2020 @Gordon2020sigma1SARS — SARS-CoV-2 interactome identifying Nsp6/Nsp8 S1R
    binding; Lenze et al.\ 2020 @Lenze2020fluvoxamine — original acute COVID pilot with S1R mechanistic
    hypothesis; converging evidence from WASF3/ER stress ME/CFS biology warranting systematic integration of
    this pharmacological pathway into the emerging therapies chapter.

  - *Post-parasitic ME/CFS: subtype-specific treatment considerations* (Chapter 18, new chapter `ch:post-parasitic-treatment` with Sections `sec:parasite-prevention-window`, `sec:post-parasitic-mcas`, `sec:duodenal-mucosal-repair`, `sec:post-parasitic-ido1`, `sec:post-parasitic-autoantibody-screen`; references.bib, 3 new entries; hypothesis registry, cross-references to 5 existing ch07 environments): New treatment chapter addressing the subtype of ME/CFS triggered by intestinal parasitic infection, specifically the Bergen Giardia cohort context. No RCT data exist for post-parasitic ME/CFS specifically; all content is mechanistic extrapolation from general ME/CFS literature and parasite-specific hypotheses from Chapter 7. Five subsections cover: (1) *Acute prevention window* — the period after parasitic infection where aggressive treatment may prevent ME/CFS conversion; antiparasitic therapy is not indicated in established ME/CFS (the inciting-trigger vs.\ sustaining-mechanism distinction is the central framing device). (2) *Post-parasitic MCAS phenotype* — H1/H2 antihistamine therapeutic trial under clinical supervision (H2 blockers affect heart rate and interact with other medications). (3) *Duodenal mucosal repair* — elemental diet, L-glutamine (physician supervision and baseline LFT/renal function required before initiating; contraindicated in hepatic encephalopathy and eGFR $<$ 30~mL/min/1.73~m²), zinc 25~mg/day (contraindicated in gastric ulcer, renal failure, or prolonged use without copper monitoring); all gated on biopsy-confirmed mucosal pathology. (4) *IDO1/kynurenine pathway* — not recommended outside a prospective biomarker-selected trial. (5) *GPCR autoantibody screening* — post-parasitic patients eligible for autoantibody-guided immunoadsorption if autoantibodies confirmed. _Motivated by:_ Wensaas et al.\ 2012 @Wensaas2012giardia5yr, 2018 @Wensaas2018giardia10yr (Bergen Giardia cohort, $>1{,}200$ exposed, $approx 60$ ME/CFS converters at 5 and 10 years); Naess et al.\ 2012 @Naess2012giardia_cfs (immunological characterization of post-Giardia ME/CFS).

  - *Physical and device-based interventions under investigation: PEMF/BEMER, earthing, and NIRS/Moxy pacing* (Chapter 18, new chapter `ch:physical-device-therapies` with Sections `sec:pemf-bemer`, `sec:earthing-grounding`, `sec:nirs-moxy-pacing`; references.bib, 13 new entries; hypothesis registry, 2 new open questions `oq:earthing-autonomic`, `oq:smO2-pacing`): Three investigational modalities added following patient community interest. *(1) PEMF/BEMER:* Pulsed electromagnetic field therapy; proposed vasomotion/eNOS/NO mechanism; FDA 510(k) clearance as muscle stimulator only; evidence: Multanen 2018 @Multanen2018BEMER (fibromyalgia RCT, $n = 108$, negative — the largest controlled study; pain equal in active and sham arms), Piatkowski 2009 @Piatkowski2009BEMER (MS fatigue RCT, $n = 37$, positive short-term; not sustained after stopping); systematic review finds insufficient evidence @HugRoosli2012PEMF; PEM risk uncharacterized; PEM precautions specified; Evidence grade E/D. *(2) Earthing/grounding:* Proposed free electron antioxidant transfer via Earth contact; critical finding: entire evidence base is a closed citation loop from Oschman, Chevalier, and Sinatra — shareholders/contractors of EarthFx Inc. @Oschman2015earthing @Chevalier2019earthingRCT; no independent replication; no ME/CFS trial; best-designed study $n = 16$ and underpowered; autonomic modulation open question `oq:earthing-autonomic` registered for future sham-controlled crossover. *(3) NIRS/Moxy pacing:* Near-infrared spectroscopy for real-time SmO₂ monitoring as a pacing tool; strong pathophysiological foundation (McCully 1999 @McCully1999NIRS, Vermeulen 2014 @Vermeulen2014O2extraction, Miller 2015 @Miller2015NIRS, Colosio 2023 @Colosio2023LongCOVIDNIRS, Jamieson 2024 @Jamieson2024LongCOVIDNIRS); Moxy Monitor validated only in healthy subjects with $<$ 15~mm adipose tissue @Feldmann2019Moxy; SmO₂-guided pacing is speculative — no trial exists; open question `oq:smO2-pacing` registered. _Motivated by:_ patient community interest (April 2026); independent evidence audit revealed that BEMER and earthing lack convincing controlled evidence while muscle NIRS has well-established pathophysiological relevance warranting structured investigation.

  - *AIMM cascade bridging therapies* (Chapter 18, new Section `sec:aimm-bridging`; 1 new open question `oq:aimm-cascade-node`): New subsection under the MDC002 entry describing existing and investigational compounds that act on individual nodes of the AIMM ionic cascade while MDC002 completes Phase~I--II trials. Ten compounds covered across a structured table: pyridostigmine (2 positive ME/CFS trials: Joseph 2022 @Joseph2022pyridostigmine, Squires 2023 @Squires2023pyridostigmine), CoQ10+NADH (RCT $n = 207$ @CastroMarrero2021CoQ10), vericiguat (active RCT NCT05697640), trimetazidine (TRI-ME Australia), rimeporide (NHE1 direct inhibitor; Phase Ib DMD data only), ranolazine, nimodipine, carnosine/beta-alanine, magnesium, taurine. Each compound mapped to its AIMM cascade node: proton buffering, NHE1, Na#super[+]/K#super[+]-ATPase, NCX1, mitochondrial ETC. `#warning-env` framing makes explicit that mechanistic relevance does not constitute a clinical recommendation. Open question `oq:aimm-cascade-node` asks which cascade node is rate-limiting for clinical improvement and proposes a head-to-head node-targeted trial design. _Motivated by:_ Joseph et al.\ 2022 @Joseph2022pyridostigmine — iCPET demonstrating preload failure correction by pyridostigmine, establishing Na#super[+]/K#super[+]-ATPase stimulation as a tractable vascular target; Castro-Marrero et al.\ 2021 @CastroMarrero2021CoQ10 — highest-quality current RCT for mitochondrial support in ME/CFS; Wirth and Scheibenbogen AIMM model as the mechanistic framework linking all candidates.

  - *Chapter 18 LaTeX-to-Typst content migration* (Chapter 18, Sections `subsubsec:tms-mecfs`, `subsec:pem-prevention`, `subsubsec:emergency-pem-protocol`, `subsec:reversibility-windows`, `subsec:cycle-gain-measurement`, and chapter introduction including `sec:novel-frameworks`): Migrated six sections that existed in the LaTeX source but had not yet been ported to the Typst document. Migrated content includes: *(1) Chapter introduction* with three hypothesis environments (Metabolic State Transition, Cellular Danger Response Persistence, Glymphatic Dysfunction) and a chapter-wide limitation box on pre-validation evidence. *(2) TMS section* — full neurophysiological rationale (Samii 1996, Starr 2000, Davey 2003 showing motor cortex hypoexcitability); four open-label studies (Kakuda 2016, Yang 2020, Miwa 2023/2025 dual-target iTBS showing 67--85\% improvement in balance); fibromyalgia indirect evidence (Toh 2022 and Su 2021 meta-analyses, Lefaucheur 2020 Level~B evidence); speculation on dual-target rTMS for autonomic and vestibular dysfunction; safety warning on PEM risk from clinic attendance. *(3) PEM prevention mechanistic foundation* — the 24--72~h intervention window with four primary targets (ATP depletion cascade, mitochondrial removal-regeneration gap, NAD#super[+] depletion via PARP, delayed immune activation). *(4) Emergency PEM protocol* — three-phase post-exertion intervention plan (0--2~h, 2--24~h, 12--72~h) with dosing for D-ribose, citrulline-malate, NR/NMN, NAC, urolithin~A, omega-3, curcumin; full safety and contraindication list; hypothesis-driven qualification warning. *(5) Reversibility windows* — time-dependent reversibility decay model ($R(t) = R_0 e^{-lambda t}$), three-tier classification, clinical decision framework, reversibility trap warning. *(6) Cycle gain measurement* — cycle gain hypothesis with product formula, proxy measurement protocol, clinical interpretation table. _Motivated by:_ content parity requirement between the LaTeX archival source and the compiled Typst document; six stub sections with TODO markers were identified and filled from the existing LaTeX draft.

  - *Adversarial review quality improvements: Ch18 therapeutic frameworks* (Chapter 18, Sections `sec:novel-frameworks`, `subsubsec:emergency-pem-protocol`, `sec:aimm-bridging`, `subsec:cycle-gain-measurement`; Appendix H, 2 new entries; references.bib, 2 new entries): Six targeted fixes applied following six-persona adversarial review. *(1) Antioxidant-mitophagy trade-off warning* added to Emergency PEM Protocol Phase 1: high-dose NAC/ALA/Vitamin C may blunt PINK1/Parkin mitophagy by scavenging required ROS signals — cited to mitohormesis literature @Ristow2009oxidativehormesis; conservative dose-limiting option provided. *(2) Drug interaction expansion* for Emergency PEM Protocol: fludrocortisone (NSAIDs reduce natriuretic efficacy), midodrine (hemodynamic monitoring), LDN (no interaction), beta-blockers (cold-face immersion caution), antihistamines, and pyridostigmine all checked against protocol components. *(3) Competing mechanistic frameworks disclaimer* added to AIMM bridging section: CDR/purinergic model (Naviaux @Naviaux2014cdr), itaconate shunt (Phair), and Systrom preload failure are presented as alternative frameworks with equal explanatory power for bridging agent benefits. *(4) G_proxy warning box* added to cycle gain measurement: the formula is explicitly labeled an ad hoc heuristic not derived from the control-theoretic loop gain definition; alternative operationalizations (recovery time alone, AUC, two-day CPET ratio) proposed. *(5) Glymphatic hypothesis critique* added to `#hypothesis(Glymphatic Dysfunction)`: Smith and Verkman 2018 methodological critique @SmithVerkman2018glymphatic acknowledged; prediction reformulated to be mechanism-agnostic. *(6) Clinician quick reference observation box* added at chapter opening, listing actionability by category: available now (CoQ10+NADH, pyridostigmine, LDN, fluvoxamine), active trials (vericiguat, trimetazidine), specialist referral (rTMS), and research-only (MDC002, G_proxy, Emergency PEM Protocol). _Motivated by:_ adversarial review personas cynic, sophist, strawman, reductionist, clinician, and devil's advocate (2026-04-11) — each identified separate convergent vulnerabilities; Emergency PEM Protocol polypharmacy risk was flagged by four of six personas.

  - *Probiotic and FMT evidence update* (Chapter 11, probiotic and FMT subsections; references.bib, 4 new entries): Updated with 2024--2025 trial data. B.\ infantis 35624 cited from the ME/CFS arm of a three-population RCT ($n = 48$ female ME/CFS patients; the same paper studied psoriasis and ulcerative colitis cohorts) @Groeger2013Bifido; multi-cohort context noted. STOP-FATIGUE synbiotic RCT integrated @Ranisavljev2025synbiotic ($n = 26$ post-COVID ME/CFS; multi-strain formulation (_L. rhamnosus_ DSM 32550 + _L. plantarum_ DSM 34532 + _B. lactis_ DSM 32269 + _B. longum_ DSM 32946 + FOS + zinc) × 3 months; PEM reduction $p = 0.02$ on secondary endpoint only — primary fatigue endpoint null; PEM result is exploratory given multiple secondary endpoints and multi-component formulation; zinc and FOS cannot be separated from bacterial strain effect). Salonen et al.\ 2023 FMT pilot added @Salonen2023FMT ($n = 11$, negative; engraftment not assessed). Skjevling et al.\ 2024 Comeback Study protocol added @Skjevling2024FMTprotocol ($n = 80$; FSS $>$ 1.2 improvement at 3 months as primary endpoint; results pending). _Motivated by:_ Ranisavljev et al.\ 2025 @Ranisavljev2025synbiotic — first synbiotic trial showing a PEM-specific statistically significant outcome, albeit in a small sample; Salonen et al.\ 2023 @Salonen2023FMT — the only completed FMT RCT in ME/CFS; Groeger et al.\ 2013 @Groeger2013Bifido — correcting a prior citation gap.

=== Document Infrastructure

  - *LaTeX to Typst migration*: Complete migration of the document source
    from LaTeX/latexmk to Typst. Full Typst port of all content, preamble
    modules, and custom environments. Build system switched from `latexmk` to
    `typst compile` via Nix. All 40 TikZ figures converted to CeTZ equivalents.
    Legacy LaTeX sources and bibliography auxiliary files removed. Source
    relocated from `typst/` to `src/main/typst/mecfs/`. Typography tuning:
    inter-paragraph spacing, heading spacing with chapter top drop, running
    header suppression on chapter-opening pages. KpFonts family added for
    rendering. Boxed environments wrapped in figures for label/reference support.
    Agent definitions and review skills updated for Typst file format.
    Motivated by: Typst offers faster compilation, simpler syntax, and better
    error messages than LaTeX, reducing the friction of iterative document
    development; the growing document size made LaTeX build times increasingly
    prohibitive.

== Version 5 (2026-02-18 – 2026-03-07)

=== Document Infrastructure

  - *Revision bar system removed*: The `\textbackslash rev\{N\`}/`\textbackslash revend`
    paragraph-marking system (changebar, marginnote packages) has been fully removed and
    replaced with no-op stubs. All markers stripped from 24 chapter files. Improves
    build performance and reduces source noise; the changelog remains the sole
    record of changes.

  - *Epistemic stratification* — `limitation` *environment*: New
    `limitation` and `limitation\*` environments deployed across
    40+ locations in Parts I–IV to explicitly mark what the data do _not_
    allow concluding. Adversarial review round corrected 15 findings across the
    initial deployment.
    _Motivated by:_ Reviewer feedback requesting a fourth epistemic layer
    (“what not to conclude”) beyond `hypothesis`/`speculation`/`warning`.

  - *Model-unique insight environment*: New `modelunique`
    `tcolorbox` environment for conclusions that emerge only from formal
    mathematical modeling, visually distinct from empirical observations.

  - *Methodology section*: New front-matter section describing
    the document's methodology, evidence assessment framework, and epistemic
    conventions.

  - *Build system*: Added `.latexmkrc` configuration and
    TeX memory settings (`TEXMFCNF`) for large-document builds.

  - *Biomedical review system*: Added 13 specialized auditor agents
    (pathway, immunology, biochemistry, neuro, microbiome, biomarker,
    epidemiology, comorbidity, safety, pharmacology, patient-safety,
    falsifiability, bibliography) and the `review-biomedical` skill for
    comprehensive 20-category scientific review.

  - *Changelog convention*: V5 entries now include “why” (motivation)
    and key sources for each change, per reviewer recommendation.

=== Part I — Clinical Overview

  - *Chapter 1 — Introduction to ME/CFS*: Expanded coverage of
    ME/CFS terminology, disease classification, and epidemiological context.

  - *Chapter 5 — Disease Course and Subgroups*: Enhanced endotype
    table with reproducibility status (R/P), evidence levels (A/B/C), and
    biomarker accessibility tiers. Added `limitation` environment for
    provisional classification status.
    _Motivated by:_ Reviewer request for integrated endotype table with
    evidence grades.

  - *Patient FAQ*: New chapter in front matter with 12 questions
    addressing common patient concerns (What is ME/CFS?, PEM, exercise, diagnosis,
    treatments, supplements, Long COVID overlap, promising research).
    _Motivated by:_ Reviewer request for accessible patient-facing content.

=== Part II — Pathophysiology

  - *Chapter 6 — Energy Metabolism*: Major expansion covering new
    research on mitochondrial dysfunction, metabolic trap hypothesis, and the
    relationship between immune activation and energy production. Three-pass
    scientific rigor review of heterogeneity and energy sections.
    _Motivated by:_ Wang et al. 2023 (WASF3–Complex IV mechanism) @wang2023wasf3;
    Keller et al. 2024 (two-day CPET) @keller2024cpet;
    Cheema et al. 2023 (miRNA convergence) @Cheema2023mirna.

  - *Chapter 7 — Immune System Dysfunction*: Integrated new findings
    on the gut-immune-brain axis, including the role of vagal signalling in
    immune dysregulation and the cholinergic anti-inflammatory pathway. Resolved
    22 citation violations. Substantially expanded Neutrophil Extracellular Traps
    (NETs) section with evidence on NET dysregulation in COVID-19 and long COVID,
    including impaired NET degradation via DNase1L3 deficiency, thrombo-inflammatory
    mechanisms (D-dimer elevation, microthrombi), and persistent multi-organ
    dysfunction. Proposes hypothesis that ME/CFS may involve defective NET
    clearance despite suppressed baseline neutrophil activation.
    _Motivated by:_ Heng et al. 2025 (T cell effector memory profiling) @heng2025mecfs;
    scientific rigor audit identifying uncited claims; Garcia et al. 2024 (NET
    degradation dysregulation in COVID-19 severity) @GarciaLabroucheColomer2024;
    Romano et al. 2022 (NETosis-driven thrombo-inflammation and coagulopathy) @Romano2022;
    Ewing et al. 2024 (persistent multi-organ damage in long COVID) @Ewing2024.

  - *Chapter 8 — Neurological Dysfunction*: Added the
    enterochromaffin-vagal pathway hypothesis (Wirth–Scheibenbogen 2025),
    explaining how gut dysbiosis drives autonomic dysfunction via serotonin and
    vagal mechanisms.
    _Motivated by:_ Barton et al. 2023, 2025 (enterochromaffin serotonin–vagal
    signaling) @Barton2023 @Barton2025.

  - *Chapter 10 — Cardiovascular Dysfunction*: Expanded
    gut-mediated vagal impairment section with Wirth–Scheibenbogen 2025
    mechanistic support and new cross-references. Added replication status
    warnings.
    _Motivated by:_ van Campen et al. 2024 (cardiac output–cerebral blood flow
    study, $n=534$) @VanCampenEtAl2024.

  - *Chapter 11 — Gut Microbiome*: Expanded clinical implications of
    microbiome alterations and their connection to systemic symptoms. Added
    replication status warnings.

  - *Chapter 13 — Integrative Models*: Revised Heng 2025 multi-omics
    description; added replication warnings; expanded integrative content.

  - *Chapter 14d — Cross-Disease Comparisons*: Substantially
    expanded cross-condition analysis with new disease parallels and
    shared-mechanism evidence.

  - *Chapter 14j — Selective Energy Dysfunction Hypothesis*: Thorough
    scientific rigor review; strengthened internal consistency, corrected
    mathematical formulations, and expanded related-hypotheses discussion
    across 10 blocks.

  - *Chapter 15 — Symptom-Producing Mechanisms*: Updated MCAS
    prevalence citations and mast cell–microglia reference keys.

=== Part III — Treatment

  - *Chapter 14 — Symptom Management*: Major expansion with
    new sections on pacing and energy envelope theory, PEM medications,
    sleep management, pain management, cognitive dysfunction management,
    and autonomic symptom management. Added `limitation` environments
    flagging sections with pending citations and evidence quality caveats.

  - *Chapter 14b — Action Plans for Mild to Moderate Cases*: Integrated
    a new acute-onset protocol for patients in early disease stages; expanded
    severity-stratified care pathways.

  - *Chapter 14c — Speculative model language*: Revised text
    presenting the time-dependent reversibility model from asserting it
    “explains” outcomes to stating it “hypothesizes” outcomes, with
    “speculative” qualifier added.
    _Motivated by:_ A8 audit findings (Issues 28–29, HIGH PRIORITY).

  - *Chapter 15 — Medications Targeting Underlying Mechanisms*:
    Revised with review corrections; removed unsupported claims.

  - *Chapter 16 — Supplements and Nutraceuticals*: Substantially
    revised; removed unsupported claims identified during adversarial review.

  - *Chapter 17 — Lifestyle Interventions*: Major expansion with
    comprehensive sleep optimization guidance (bedroom environment, schedule
    consistency, light exposure, temperature regulation, evening routines),
    expanded dietary considerations, and revised post-prandial pacing
    hypothesis language.

  - *Chapter 18 — Experimental and Emerging Therapies*: Corrected
    suramin text to explicitly state the cited pilot study @Naviaux2018suraminpilot
    was conducted in autism spectrum disorder, not ME/CFS. Added energy profile
    for immunoadsorption; corrected nicotinamide riboside trial data and citation.
    _Motivated by:_ Assertion–source audit finding (DOES NOT SUPPORT).

  - *Chapter 19 — Integrative and Personalised Approaches*: Revised
    with review corrections; tightened evidence claims.

  - *Environment type correction (Chapter 15)*: Converted
    `observation` to `hypothesis` for mechanistic treatment
    sequencing rationale (certainty: 0.25), fixing epistemic mismatch.
    _Motivated by:_ A8 audit finding (Issue 13, HIGH PRIORITY).

  - *A8 audit completed*: Full Part III hypothesis vs.\ recommendation
    audit identified 31 findings (3 critical fixed, 14 medium, 14 low priority).

=== Part IV — Research

  - *Chapter 21 — Clinical Trials*: Major expansion with detailed
    coverage of rituximab trials (pilot through RituxME phase III), low-dose
    naltrexone evidence, and other immune modulators. New section documenting
    9 key negative or null-result trials (rituximab phase III, PACE trial, IVIG,
    acyclovir, valganciclovir, rintatolimod, galantamine, fluoxetine,
    hydrocortisone) with summary table and cross-cutting lessons.
    _Motivated by:_ Reviewer request for explicit coverage of negative
    evidence to combat confirmation bias.

  - *Chapter 22 — Mechanistic Studies*: Substantially expanded with
    detailed analysis of NIH deep phenotyping study (Walitt et al.\ 2024),
    WASF3 mitochondrial findings (Wang et al.\ 2023), and methodological
    critique. Corrected attribution (Hwang $\to$ Wang).

  - *Chapter 23 — Epidemiology and Outcomes*: Major expansion
    with updated prevalence data, risk factor analysis, and outcome
    measurement discussion.

  - *Chapter 24 — Controversies*: Comprehensive rewrite covering
    nomenclature debate (ME vs.\ CFS vs.\ SEID), diagnostic criteria
    controversies (Oxford through IOM), and detailed PACE trial controversy
    analysis (methodology criticisms, reanalysis results, impact on GET/CBT
    recommendations).

  - *Chapter 25 — Translational Findings*: Revised shared-mechanism
    tables with added citations; corrected treatment dosing and trial data.

  - *Chapter 25a — Research Infrastructure*: Expanded with new
    content on research funding gaps and infrastructure needs.

  - *Chapter 25b — Proposed Research Studies*: New chapter describing
    fourteen original research protocols targeting key open questions in ME/CFS
    pathophysiology and treatment.

  - *Hypothesis Registry*: Major expansion consolidating 40+ key
    hypotheses, speculations, predictions, and open questions from a systematic
    harvest of 305 environments across the document. Organized by mechanism
    domain with testable predictions and available tests.
    _Motivated by:_ Reviewer request for hypothesis–prediction–test mapping.

=== Part V — Computational Modeling

  - *Chapter 26 — Modeling Foundations*: New section surveying
    existing mathematical and computational models of ME/CFS (Phair's IDO
    metabolic trap, Broderick's cytokine network analysis, Morris & Maes's
    neuro-immune framework, Li et al.'s genome-scale metabolic modeling,
    Xiong/Oh's BioMapAI), positioning Part V within that landscape. Honest
    assessment of contributions and limitations (no computational implementation,
    parameter uncertainty, validation gap).
    _Motivated by:_ Need for transparent novelty assessment; prior work
    survey absent from original Part V
    draft. @broderick2010cytokine @morris2013neuroimmune @phair2019ido @li2025systems @xiong2025biomap.

  - *Chapter 27 — Energy Metabolism Models*: Major expansion with
    formal ODE systems, parameter tables, and sensitivity analysis frameworks
    for mitochondrial and metabolic models.

  - *Chapter 28 — Immune System Models*: Major expansion with
    formal immune cell population dynamics, B cell depletion modeling (rituximab
    vs.\ plasma cell persistence), and cytokine network models.

  - *Chapter 29 — Neuroendocrine Models*: Major expansion with
    HPA axis feedback models, autonomic regulation frameworks, and
    neurotransmitter dynamics.

  - *Chapter 30 — Integrated Systems*: Major expansion describing
    multi-system coupling architecture, cross-system feedback loops, and
    emergent properties of the integrated model.

  - *Chapter 31 — Temporal Evolution*: Major expansion with
    disease trajectory modeling, phase transition analysis, and the
    energy ratchet mechanism formalized as a mathematical model.

  - *Chapter 32 — Predictive Applications*: Major expansion
    covering clinical decision support, treatment response prediction,
    and biomarker-guided intervention timing.

  - *Chapters 26–31 — Model Application Guides*: Added structured
    “Model Application Guide” sections to each modeling chapter
    (Chs. 27–31), specifying for every model group: measurements required,
    how to use the model, worked examples with realistic parameter values,
    inter-model dependencies, falsification criteria, and clinical
    implications. Added model coverage justification section to Ch. 26
    with Part II$\to$Part V mapping table, selection rationale, and explicit
    enumeration of unmodeled domains.
    _Motivated by:_ Gap analysis identifying that models lacked
    practical application guidance, falsification criteria, and coverage
    justification.

  - *TikZ figures*: Added 10 new TikZ illustrations: baroreflex
    model, clinical decision pipeline, disease trajectories, energy metabolism
    model, energy ratchet, HPA axis model, immune cell dynamics, integrated
    systems architecture, modeling framework overview, and tryptophan branching
    model.

  - *Homocysteine-methylation-mitochondrial dysfunction pathway*
    (Chapter 6, Chapter 12, Chapter 14, Chapter 16, Chapter 20): Integrated
    evidence linking MTHFR polymorphisms, elevated CSF homocysteine, and
    mitochondrial ETC inhibition. Added hypothesis in Ch. 6 (hyp:homocysteine-etc-disruption)
    connecting homocysteine-mediated mitochondrial damage to ME/CFS fatigue;
    observation in Ch. 12 documenting MTHFR C677T as a candidate predisposing
    variant; expanded Ch. 20 biomarker section with CSF homocysteine as a
    candidate CNS-compartment biomarker; added speculation in Ch. 14
    (spec:methyl-assault-onset) proposing post-viral methyl-group depletion as
    an ME/CFS onset mechanism; cautious treatment evidence integration in Ch. 16
    with warning environment on B12/folate RCT absence; comprehensive annotated
    bibliography section in Appendix H with 6 papers.
    _Motivated by:_ Mechanistic chain (viral exposure $\to$ methylation
    depletion $\to$ homocysteine elevation $\to$ ETC inhibition $\to$ fatigue) is
    plausible and supported across multiple literature domains, but lacks direct
    ME/CFS patient validation. Integration using appropriate evidence hierarchy
    (hypothesis for unconfirmed mechanisms, observation for small clinical
    studies, speculation for post-viral hypothesis) maintains precision while
    opening integration pathway for future confirmatory studies @Kaplan2020 @Regland1997 @Regland2015 @vanCampen2019 @Zarembska2023 @McCaddon2021 @Liao2021 @Maksoud2023.

=== Appendices and Bibliography

  - *Appendix A — Glossary*: Expanded from stub to comprehensive
    alphabetical glossary of medical, biochemical, immunological, and
    statistical terms used throughout the document.

  - *Appendix C — Diagnostic Tools*: Substantially expanded with
    detailed descriptions of diagnostic instruments and assessment tools.

  - *Appendix E — Mathematical Model Details*: Expanded from stub
    to complete mathematical specifications for Part V models, including full
    ODE systems, parameter tables, derivations, numerical methods, and
    sensitivity analysis procedures.

  - *Appendix F — Supplement Guide*: Substantially expanded with
    updated supplement protocols and dosage information.

  - *Appendix H — Annotated Bibliography*: Major expansion providing
    comprehensive annotated bibliography of ME/CFS literature organized by
    research domain.

  - *Appendix I — Research Registry*: New appendix cataloguing
    ongoing and planned ME/CFS studies.

  - *Bibliography*: Added approximately 200 new references covering
    recent ME/CFS research across pathophysiology, treatment, and modeling.

// Changelog synchronized up to commit 704a55c (2026-03-07).
// Next changelog update should cover commits after 704a55c.

== Version 4 (2026-02-18)

Fourth publicly released version of the document. Established the full structure
across five parts: clinical overview, pathophysiology, treatment, research, and
mathematical modelling.

// — Template for future versions —
// == Version N (YYYY-MM-DD)
//   - *Chapter X — Title*: What changed.
//     _Motivated by:_ Why (new evidence / error correction / reviewer feedback).
//     Key sources: @key1 @key2. 

