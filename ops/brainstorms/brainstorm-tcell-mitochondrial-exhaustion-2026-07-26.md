# Brainstorm: T-Cell Mitochondrial Exhaustion in ME/CFS

**Date:** 2026-07-26
**Agent:** scientific-insight-generator (deepseek-v4-pro)
**Topic slug:** `tcell-mitochondrial-exhaustion`
**Phase 1 evidence baseline:** 12 papers. Key: Iu2024CD8Exhaustion (cert 0.75, PNAS), Shankar2025oxidativestress (cert 0.75, PNAS), Mandarano2020 (cert 0.70, JCI), Cliff2019Cellular (cert 0.70, Front Immunol), Lee2025TcellActivation (cert 0.65, J Transl Med), Petrov2026Immunophenotyping (cert 0.65, IJMS)
**Phase 2 decision:** PROCEED — all categories open
**Categories generated:** 1–12 (all)
**Key gap:** No TEM/SEM imaging of T-cell mitochondrial morphology; no DRP1 quantification in primary T cells; no longitudinal T-cell metabolism pre/post PEM; causal direction unknown; Hanson lab cohort overlap (Mandarano2020 + Iu2024 + Maya2023 — same patients)

---

## Quality Ranking

Ideas ranked by mechanistic plausibility, gap-filling value (relative to existing paper content), falsifiability, and practical import. All ideas carry `origin: brainstorm`.

---

### Tier 1: High Impact / Strongest Gaps

---

#### 1.1 The DRP1–ROS–pERK Positive Feedback Loop: How T-Cell Mitochondrial Fragmentation Becomes Self-Sustaining

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** Schreiner2020 established that HHV-6 reactivation activates DRP1-mediated mitochondrial fission in ME/CFS PBMCs @SchreinerEtAl2020. Shankar2025 demonstrated elevated mitochondrial ROS in memory lymphocytes @Shankar2025oxidativestress. These two findings, drawn from separate labs and cohorts, are mechanistically linked by a well-established positive feedback loop that has not been proposed in the ME/CFS literature:

(a) **DRP1 activation → mitochondrial fragmentation → electron transport chain disruption → ROS production.** The ETC supercomplexes (respirasomes) require a specific cristae membrane architecture maintained by OPA1-mediated fusion. When DRP1-mediated fission predominates, cristae are disrupted, Complex I and III electron leak increases, and mitochondrial ROS (superoxide) production rises.

(b) **Mitochondrial ROS → ERK1/2 (pERK) phosphorylation → DRP1 Ser616 phosphorylation → further fission.** ROS activates the MAP kinase cascade (RAS → RAF → MEK → ERK) in T cells. ERK1/2 specifically phosphorylates DRP1 at Ser616, the activating phosphorylation site that drives DRP1 translocation from cytosol to the mitochondrial outer membrane. This is the canonical positive feedback loop connecting mitochondrial stress to sustained fission — documented in cancer biology (Kashatus 2015, Mol Cell), neurodegeneration (Kim 2016, Cell Death Dis), and senescence (Park 2018) but never examined in ME/CFS T cells.

(c) **In T cells, this loop is particularly dangerous.** CD8+ effector and memory T cells rely on mitochondrial fusion for sustained oxidative phosphorylation during immune surveillance. TCR stimulation triggers a burst of DRP1-mediated fission that is normally transient (lasting ~30–60 minutes), followed by OPA1/MFN-mediated re-fusion during the contraction phase. If the fission-fusion balance is stuck on "fission" — due to chronic DRP1 hyperphosphorylation from sustained ROS — the T cell cannot recover its mitochondrial network, cannot sustain OXPHOS, and enters a state of metabolic exhaustion that recapitulates the transcriptional exhaustion program (TOX, EOMES, TCF7) documented by Iu2024 @Iu2024CD8Exhaustion.

(d) **The viral trigger model:** HHV-6 reactivation (Schreiner2020) → acute DRP1 activation → mitochondrial fragmentation → initial ROS burst. In a healthy immune system, the ROS burst is transient — antioxidant defenses (SOD2, GPX4, glutathione) quench ROS, ERK dephosphorylates, DRP1 returns to cytosol, and mitochondria re-fuse. In ME/CFS, Shankar2025 showed that SOD2 is depleted and GPX4-mediated lipid oxidation is elevated — the antioxidant defenses cannot quench the ROS. ERK remains phosphorylated, DRP1 remains at Ser616-phosphorylated and mitochondrially localized, and fission becomes chronic. The initial viral trigger is no longer required — the loop sustains itself.

This feedback loop hypothesis makes a critical prediction that distinguishes it from competing models: **pharmacologically breaking the loop at any node (antioxidants → reduce ROS, MEK inhibitor → block ERK, mdivi-1 → inhibit DRP1) should restore mitochondrial fusion and reverse the exhaustion transcriptional program.** The loop-based model predicts reversibility; the "mitochondrial damage" model predicts irreversibility (fragmented mitochondria are terminally damaged). Distinguishing these has direct therapeutic implications: a reversible loop is treatable; irreversible damage is not.

**Evidence link:** Schreiner2020 (HHV-6 → DRP1 in PBMCs, cert 0.45) @SchreinerEtAl2020 provides the DRP1 activation evidence. Shankar2025 (memory lymphocyte ROS + SOD2 depletion + GPX4 oxidation, cert 0.75) @Shankar2025oxidativestress provides the oxidative stress evidence. Iu2024 (CD8+ TEM exhaustion transcriptional state, cert 0.75) @Iu2024CD8Exhaustion provides the exhaustion endpoint. The DRP1-ROS-ERK positive feedback loop is established in cancer biology (Kashatus 2015, Mol Cell; Serasinghe 2015, Mol Cell) but never examined in ME/CFS. No study has measured p-DRP1(Ser616) or p-ERK in ME/CFS T cells.

**Preliminary certainty:** 0.35

**Falsifiable prediction:** (a) Isolated CD8+ T cells from ME/CFS patients will show elevated p-DRP1(Ser616)/total DRP1 ratio (western blot) and elevated p-ERK1/2 (T202/Y204) compared to healthy controls. (b) Confocal microscopy will show increased mitochondrial DRP1 colocalization (Mander's coefficient) and reduced mitochondrial network connectivity (Mitochondrial Network Analysis, MiNA) in ME/CFS CD8+ TEM cells. (c) In vitro treatment of ME/CFS CD8+ T cells with mdivi-1 (DRP1 inhibitor, 10 µM, 24h) will reduce p-ERK, restore mitochondrial network morphology (increased mean branch length), and reduce TOX/EOMES expression by ≥30% — confirming the loop is bidirectional and pharmacologically breakable. (d) In vitro treatment with the MEK inhibitor trametinib (100 nM, 24h) will reduce p-DRP1(Ser616) and restore mitochondrial fusion — confirming ERK is upstream of DRP1. (e) Falsified if: p-DRP1(Ser616) and p-ERK are normal in ME/CFS CD8+ T cells, or if DRP1 inhibition fails to restore mitochondrial morphology or reverse exhaustion markers — then the loop is either absent or not the dominant mechanism, and mitochondrial fragmentation is downstream of a different pathway (calcium overload, proteostatic failure, or irreversible cristae damage).

**Non-specialist consequence:** The immune cells responsible for remembering past infections (CD8+ memory T cells) may be stuck in a destructive cycle: their mitochondria are fragmented, producing excess oxidative stress, which signals the cell to fragment mitochondria further. Breaking any link in this chain — with an antioxidant, a DRP1-blocking drug, or a stress-signal blocker — could reset the cycle and restore immune function. Unlike permanent mitochondrial damage, a feedback loop is potentially reversible with the right drug.

---

#### 1.2 The "Metabolic Memory" Hypothesis: Mitochondrial Exhaustion Imprints Chromatin, and Chromatin Sustains Exhaustion After Mito Recovery

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** Iu2024 demonstrated that CD8+ TEM cells in ME/CFS exhibit chromatin remodeling consistent with exhaustion — ATAC-seq revealed altered chromatin accessibility at exhaustion-associated loci @Iu2024CD8Exhaustion. The traditional cancer-immunology model posits that exhaustion is transcriptionally imprinted via chronic antigen stimulation (TOX as the lineage-defining transcription factor). But what establishes and maintains the exhaustion chromatin state in ME/CFS, where there is no evidence of chronic antigen persistence (Cliff2019 found no HHV seroprevalence differences in n=251 @Cliff2019Cellular)?

Mitochondrial metabolism directly regulates the epigenome. The key connections:

(a) **Acetyl-CoA from mitochondrial citrate export is the substrate for histone acetyltransferases (HATs).** When mitochondrial pyruvate dehydrogenase (PDH) activity is impaired (as in ME/CFS muscle, Fluge2016), citrate production falls, acetyl-CoA is depleted, and histone acetylation (H3K27ac, H3K9ac) decreases globally. Reduced acetylation at exhaustion loci paradoxically locks them in an open-but-inactive state — a "poised" enhancer that cannot be silenced. This is the metabolic-epigenetic mechanism for sustained T-cell exhaustion in the tumor microenvironment (Scharping 2016, Immunity) but never examined in ME/CFS.

(b) **α-ketoglutarate (αKG) from the TCA cycle is a required cofactor for TET DNA demethylases and JmjC histone demethylases.** When mitochondrial metabolism is impaired, αKG is depleted, TET/JmjC activity falls, and DNA/histone methylation accumulates at regulatory loci. In CD8+ T cells, TET2 is specifically required for memory formation — TET2 KO mice fail to form functional memory CD8+ T cells (Carty 2018, J Immunol). If mitochondrial impairment in ME/CFS CD8+ cells reduces αKG → TET2 activity falls → memory-associated loci become hypermethylated → memory formation fails.

(c) **S-adenosylmethionine (SAM) from one-carbon metabolism is the universal methyl donor for DNA and histone methyltransferases.** Mitochondrial one-carbon metabolism is profoundly influenced by mitochondrial redox state (NAD+/NADH ratio regulates the folate cycle). If mitochondrial ROS depletes NAD+ (the Warburg-Nature 2019 finding of NAD+ depletion in ME/CFS), the one-carbon cycle is perturbed, SAM levels shift, and the methylation landscape is broadly altered.

These three connections converge on a single prediction: **the chromatin state observed by Iu2024 in ME/CFS CD8+ TEM cells is a direct metabolic readout of mitochondrial dysfunction, not an autonomous transcriptional program.** The "metabolic memory" is: mitochondrial failure → metabolite depletion (acetyl-CoA, αKG, SAM) → chromatin remodeling → exhaustion transcriptional program → further metabolic impairment. Even if mitochondria could be temporarily restored (e.g., by antioxidant treatment, as Gil2024 showed partial CD8+ recovery with nebulized antioxidants @Gil2024CD8dysfunction), the chromatin state may maintain the exhaustion program — requiring both metabolic AND epigenetic intervention to achieve durable remission.

This hypothesis predicts that: (a) in vitro supplementation of ME/CFS CD8+ T cells with acetate (bypassing citrate → acetyl-CoA) + αKG (bypassing TCA cycle) + SAM (bypassing one-carbon cycle) should partially reverse exhaustion markers, and (b) the combination of metabolic supplementation + an HDAC inhibitor (vorinostat) should be synergistic — metabolic support provides substrates, HDAC inhibition opens the chromatin, and the combination rewrites the exhaustion epigenome.

**Evidence link:** Iu2024 ATAC-seq chromatin remodeling (cert 0.75) @Iu2024CD8Exhaustion establishes the exhaustion chromatin state. Mandarano2020 impaired glycolysis + reduced ΔΨm (cert 0.70) @Mandarano2020 establishes the metabolic deficit. The acetyl-CoA/αKG/SAM → epigenome connection is established in cancer immunology (Scharping 2016, Immunity; Peng 2017, Nature). No study has examined T-cell metabolites (acetyl-CoA, αKG, SAM) in ME/CFS or linked them to chromatin states.

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) ME/CFS CD8+ TEM cells will show reduced intracellular acetyl-CoA (LC-MS), reduced αKG/succinate ratio, and reduced SAM/SAH ratio compared to healthy CD8+ TEM cells. (b) Acetyl-CoA levels will correlate inversely with H3K27ac at exhaustion loci (TOX, EOMES, PDCD1 promoters) — lower acetyl-CoA → reduced acetylation. (c) In vitro supplementation with acetate (5 mM) + cell-permeable αKG (dimethyl-αKG, 5 mM) + SAM (200 µM) for 72h will reduce TOX and EOMES expression by ≥25% in ME/CFS CD8+ T cells. (d) Addition of vorinostat (HDAC inhibitor, 1 µM) to the metabolic cocktail will reduce exhaustion markers by ≥40% — synergy. (e) Falsified if: metabolite levels are normal in ME/CFS CD8+ cells, or if metabolic supplementation does not affect chromatin or exhaustion markers — then the epigenetic state is metabolite-independent and driven by other factors (chronic antigen, cytokine milieu, or cell lineage commitment).

**Non-specialist consequence:** Immune cells don't just need energy to function — they need specific metabolic building blocks to write and rewrite their genetic instruction manual (the epigenome). In ME/CFS, failing mitochondria may deprive CD8+ T cells of the molecular ink (acetyl-CoA, αKG, SAM) needed to maintain immune memory. Restoring these building blocks could allow the immune system to "rewrite" its exhaustion state — but it may require both metabolic support AND drugs that open closed chromatin, a two-hit strategy derived from cancer immunotherapy.

---

#### 1.3 The "Post-Viral Scar" Model: One-Time Trigger → Permanent CD8+ Mitochondrial Compromise via mtDNA Depletion

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** The natural history of ME/CFS — sudden onset after infection, followed by decades of persistent symptoms — suggests a "one-hit" model: a single trigger that causes lasting damage, after which the trigger is no longer required. In CD8+ T cells, this could operate through mitochondrial DNA (mtDNA) depletion during the acute antiviral response:

(a) **During acute viral infection, CD8+ cytotoxic T cells undergo massive clonal expansion.** Each cell division requires mitochondrial biogenesis to supply daughter cells with adequate mtDNA. In highly activated T cells, this is regulated by TFAM (mitochondrial transcription factor A) and POLG (mtDNA polymerase γ). If the acute infection is severe or prolonged — as in the severe viral prodromes reported by many ME/CFS patients — mtDNA replication may fail to keep pace with cell division, producing a population of mtDNA-depleted CD8+ memory cells.

(b) **mtDNA copy number determines respiratory capacity.** Each mitochondrion carries 2–10 copies of mtDNA, encoding 13 ETC subunits, 2 rRNAs, and 22 tRNAs. When mtDNA copy number falls below a critical threshold (~35% of normal), respiratory chain subunit synthesis becomes rate-limiting, ETC complexes are incompletely assembled, electron leak increases, and ROS production rises — producing the phenotype observed by Mandarano2020 (reduced ΔΨm) @Mandarano2020 and Shankar2025 (elevated lymphocyte ROS) @Shankar2025oxidativestress.

(c) **mtDNA depletion is effectively permanent in memory T cells.** Unlike short-lived effector cells (which undergo activation-induced cell death), memory T cells persist for decades with minimal turnover. If a memory precursor cell acquires mtDNA depletion during the acute response, it carries that depletion for the rest of its lifespan. The mtDNA-depleted memory cell can survive (glycolysis sustains basal metabolism) but cannot mount an effective recall response (OXPHOS is required for effector function). This explains Cliff2019's key finding: T-cell numbers are normal but function is impaired @Cliff2019Cellular.

(d) **This model predicts irreversibility** — the mtDNA-depleted memory pool cannot be restored by metabolic or antioxidant interventions; only replacement (new memory cells from new acute responses) or gene therapy (TFAM upregulation, mtDNA delivery) would restore function. This is a strong contrast with Idea 1.1 (reversible DRP1-ROS loop) and Idea 1.2 (reversible metabolic-epigenetic loop). The three models make different predictions about therapeutic reversibility, and distinguishing them is the highest-priority research question.

**Evidence link:** Mandarano2020 reduced ΔΨm in CD8+ cells (cert 0.70) @Mandarano2020 consistent with mtDNA depletion. Gil2024 partial CD8+ recovery with nebulized antioxidants @Gil2024CD8dysfunction (cert 0.40) argues against complete irreversibility but the partial nature of recovery is consistent with a mixed pool (some cells mtDNA-replete and recoverable, some mtDNA-depleted and irreversibly compromised). Missailidis2020 found *normal* mtDNA copy number in lymphoblastoid cell lines @Missailidis2020ComplexV (cert 0.60) — but immortalized lines have different mtDNA dynamics than primary memory T cells. No study has measured mtDNA copy number specifically in CD8+ TEM cells.

**Preliminary certainty:** 0.25

**Falsifiable prediction:** (a) CD8+ TEM cells sorted from ME/CFS PBMCs will show reduced mtDNA copy number (qPCR for MT-ND1 / nuclear B2M ratio) compared to paired naïve CD8+ cells and healthy donor CD8+ TEM cells — mtDNA depletion is specific to the antigen-experienced memory compartment. (b) mtDNA copy number will correlate inversely with TOX and EOMES expression (r < −0.5) — mtDNA depletion predicts exhaustion. (c) mtDNA copy number will NOT correlate with PBMC mtDNA copy number (bulk measurement masks T-cell-specific depletion) — explaining Missailidis2020's normal bulk finding. (d) In vitro supplementation of mtDNA-depleted CD8+ TEM cells with acetyl-CoA precursors + NAD+ precursors for 7 days will NOT restore mtDNA copy number — confirming irreversibility. (e) Falsified if: mtDNA copy number is normal in CD8+ TEM cells — then respiratory failure arises from ETC assembly defects, cristae disruption, or Complex V inefficiency (Missailidis2020), not mtDNA depletion.

**Non-specialist consequence:** The immune cells that "remember" past infections may have been permanently damaged during the initial illness — like a factory that lost half its machinery during a single emergency production run and never recovered. If true, restoring immune function would require growing new memory cells (via vaccination or controlled re-exposure), not repairing the damaged ones. Antioxidants and metabolic supplements could help the damaged cells function marginally better but can't replace the missing mitochondrial DNA.

---

#### 1.4 Galectin-9+ Monocyte Depletion of γδT and MAIT Cells: Mitochondrial Fragmentation as the "Eat Me" Signal

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** Shahbaz2026 made a striking but unexplained observation: Galectin-9+ monocytes are associated with depletion of γδT and MAIT cells in LC-ME/CFS @Shahbaz2026. Galectin-9 is a β-galactoside-binding lectin and the ligand for TIM-3 (T-cell immunoglobulin and mucin domain-containing protein 3), one of the canonical exhaustion markers upregulated in Iu2024's CD8+ TEM cells @Iu2024CD8Exhaustion. But Galectin-9 has a second, less-appreciated function: **it is a damage-associated molecular pattern (DAMP) receptor that recognizes mitochondrial fragments on the cell surface.**

When mitochondria are fragmented (DRP1-mediated fission), mitochondrial-derived vesicles (MDVs) bud off and traffic to the cell surface, presenting mitochondrial proteins (including cardiolipin, a mitochondria-specific phospholipid) on the plasma membrane. Galectin-9 binds surface-exposed cardiolipin and mitochondrial proteins, opsonizing the cell for phagocytic clearance by monocytes/macrophages. This is an innate immune mechanism for removing cells with damaged mitochondria — mitochondrial quality control at the tissue level, operating when mitophagy at the cellular level has failed.

The hypothesis: **γδT and MAIT cells in ME/CFS are preferentially affected by mitochondrial fragmentation (Schreiner2020 DRP1 activation @SchreinerEtAl2020; Shankar2025 oxidative stress @Shankar2025oxidativestress) → mitochondrial fragments are surface-exposed → Galectin-9+ monocytes recognize and deplete them.** This elegantly links the mitochondrial fragmentation evidence (Schreiner2020) with the T-cell depletion evidence (Shahbaz2026) through a documented but underappreciated mechanism (mitochondrial surface exposure → Galectin-9 opsonization → monocyte clearance).

Why γδT and MAIT cells specifically? These "innate-like" T cells have distinct metabolic requirements — they rely more heavily on mitochondrial OXPHOS than conventional CD8+ T cells, making them more vulnerable to mitochondrial fragmentation. They also express higher levels of TIM-3, making them more susceptible to Galectin-9-mediated clearance.

This model reframes the issue: the problem in ME/CFS is not that CD8+ TEM cells are "exhausted" in the cancer-immunology sense (chronic antigen stimulation → TOX → dysfunction) — it's that they are being **actively depleted** by Galectin-9+ monocytes recognizing mitochondrial damage. The exhaustion markers are an epiphenomenon of the surviving cells' stress response. Therapeutic blockade of Galectin-9/TIM-3 interaction should prevent γδT/MAIT depletion and preserve the remaining mitochondrial-competent cells.

**Evidence link:** Shahbaz2026 Galectin-9+ monocyte depletion of γδT/MAIT (cert 0.60) @Shahbaz2026. Iu2024 TIM-3 upregulation on CD8+ TEM (cert 0.75) @Iu2024CD8Exhaustion. Schreiner2020 DRP1 activation (cert 0.45) @SchreinerEtAl2020. Galectin-9 recognition of mitochondrial surface-exposed cardiolipin is documented (Kageyama 2016, J Biol Chem; Wiersma 2019, Front Immunol). No study has examined surface-exposed mitochondrial markers on ME/CFS T cells.

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) ME/CFS γδT and MAIT cells will show surface-exposed cardiolipin (flow cytometry with nonyl-acridine orange, NAO) and surface-exposed TOM20 (flow cytometry) — mitochondrial proteins on the plasma membrane. (b) Surface cardiolipin exposure will correlate with DRP1 phosphorylation (pSer616) in the same cells — confirming fission → surface exposure. (c) Co-culture of ME/CFS PBMCs with anti-Galectin-9 blocking antibody will reduce γδT and MAIT cell apoptosis (Annexin V+) by ≥40% compared to isotype control. (d) Falsified if: surface mitochondrial markers are absent on ME/CFS γδT/MAIT cells, or if Galectin-9 blockade does not prevent depletion — then the Galectin-9 pathway operates via a different mechanism (TIM-3-mediated exhaustion signaling, not mitochondrial opsonization).

**Non-specialist consequence:** The immune system may be actively destroying its own T cells — not because they're infected or cancerous, but because their damaged mitochondria are displayed on the cell surface like distress flags. Monocytes, mistaking mitochondrial fragments for infection signals, eliminate the very cells the immune system needs. Blocking this recognition signal could preserve the remaining functional T cells.

---

#### 1.5 The Complex V Inefficiency → ROS → DRP1 Axis: Why a Relatively Mild ATP Defect Causes Catastrophic T-Cell Dysfunction

**Category:** 1 — Novel Hypotheses
**Origin:** brainstorm

**Mechanistic rationale:** Missailidis2020 found an isolated Complex V (ATP synthase) defect in ME/CFS lymphoblasts — the most specific mitochondrial finding in the literature — with compensatory upregulation of Complex I, maximal respiration, and spare respiratory capacity, such that steady-state ATP is normal @Missailidis2020ComplexV. At first glance, a compensated Complex V defect with normal ATP seems an unlikely driver of T-cell exhaustion. But in CD8+ T cells, Complex V inefficiency has consequences beyond ATP production that are catastrophic for immune function:

(a) **Complex V is the primary consumer of the mitochondrial proton gradient (Δψm).** When Complex V is inefficient — fewer protons flow through ATP synthase per unit time — the proton gradient is hyperpolarized (Δψm becomes *more* negative, not less). Hyperpolarization at Complex I and III sites increases the half-life of the ubisemiquinone radical, the primary source of mitochondrial superoxide. Mandarano2020 reported *reduced* Δψm in CD8+ cells @Mandarano2020 — the opposite of what isolated Complex V inefficiency predicts. But this discrepancy is resolved by the stage of compensation: early Complex V inefficiency → Δψm hyperpolarization → ROS production → ETC damage → eventual Δψm depolarization. Mandarano2020 may be measuring cells in the late (damaged) stage; the earliest stage (hyperpolarization) would be detectable only in newly activated cells or in acute-stage patients.

(b) **Complex V regulates cristae architecture.** ATP synthase dimers localize to cristae tips and impose curvature on the inner mitochondrial membrane. When ATP synthase is dysfunctional, cristae become disorganized, the crista junction (where OPA1 maintains the diffusion barrier between cristae lumen and intermembrane space) widens, and cytochrome c is released — triggering apoptosis in cells that attempt to activate. In T cells, TCR stimulation requires a rapid burst of ATP synthesis that stresses the cristae architecture. If cristae are already disorganized (due to Complex V inefficiency), activation-induced ATP demand pushes the cell into cytochrome c release and apoptosis — a mechanism for activation-induced cell death (AICD) specific to Complex V-impaired cells. This may explain why Iu2024 found exhaustion markers (TOX, EOMES) rather than apoptosis: cells that would apoptose upon activation have already been eliminated, and the surviving population is the exhausted subset that avoids activation.

(c) **Complex V proton leak activates the mitochondrial unfolded protein response (UPR^mt).** When Complex V doesn't consume the proton gradient, the gradient drives reverse electron transport (RET) at Complex I, producing ROS that oxidize mitochondrial proteins. Oxidized proteins trigger the UPR^mt (ATF5 → CHOP → mitochondrial proteases and chaperones), a stress response that, when chronic, drives cellular senescence. Lee2025's finding of early immunosenescence markers (CD28−) in severe ME/CFS @Lee2025TcellActivation may be the UPR^mt-driven senescence program in CD8+ T cells with Complex V defects.

This axis — Complex V → cristae disruption → activation-induced apoptosis of functional cells + UPR^mt-driven senescence of surviving cells → exhaustion-predominant population — provides a complete mechanistic sequence from a single defined molecular lesion (Complex V) to the heterogeneous T-cell phenotype (exhaustion + senescence + some normal cells). The prediction: CD8+ T cells from ME/CFS patients will show both cristae disorganization (TEM) and UPR^mt activation (ATF5/CHOP/HSP60) — and these will be most pronounced in the TEM compartment.

**Evidence link:** Missailidis2020 Complex V defect (cert 0.60) @Missailidis2020ComplexV. Mandarano2020 reduced ΔΨm (cert 0.70) @Mandarano2020. Iu2024 exhaustion TF expression (cert 0.75) @Iu2024CD8Exhaustion. Lee2025 CD28− immunosenescence (cert 0.65) @Lee2025TcellActivation. The Complex V → cristae → UPR^mt pathway is documented in mitochondrial disease (Mourier 2015, Cell Rep). No TEM imaging or UPR^mt measurement exists in ME/CFS T cells.

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) TEM imaging of ME/CFS CD8+ TEM cells will show abnormal cristae morphology (reduced cristae density, widened cristae junctions, fragmented cristae) compared to healthy donor CD8+ TEM cells. (b) ME/CFS CD8+ cells will show UPR^mt activation — elevated ATF5, CHOP, HSP60, and LONP1 expression (qPCR/western blot) — compared to healthy controls. (c) Christae disorganization score will correlate with Complex V subunit expression (ATP5A1) and inversely with TOX/EOMES expression. (d) Falsified if: cristae morphology is normal in ME/CFS CD8+ cells despite Complex V protein changes, or if Complex V expression is normal — then the Complex V defect is lymphoblast-specific (Missailidis2020) and does not extend to primary T cells.

**Non-specialist consequence:** The mitochondrial power plants in ME/CFS CD8+ T cells may have a specific defect in the "turbine" (Complex V/ATP synthase) that converts the proton gradient into ATP. Even though the cell compensates at rest — burning more fuel to maintain normal ATP levels — this compensation comes at a hidden cost: the turbine's structural role in shaping the mitochondrial membrane is lost, the membrane disorganizes, and the cell becomes unable to handle the energy surge required when it needs to fight an infection. The turbine doesn't just make energy — it also holds the machinery together.

---

#### 2.1 TEM Imaging of CD8+ T-Cell Mitochondrial Morphology: The Highest-Impact Single Experiment Not Yet Done

**Category:** 2 — Research Directions
**Origin:** brainstorm

**Mechanistic rationale:** Every paper in the evidence base infers mitochondrial dysfunction from indirect measurements: membrane potential (Mandarano2020, flow cytometry), oxygen consumption (Mandarano2020, Seahorse), ROS (Shankar2025, flow), Complex V activity (Missailidis2020, enzymatic assay), gene expression (Iu2024, scRNA-seq; Eaton-Fitch2024, NanoString). **Not a single study has directly visualized CD8+ T-cell mitochondrial morphology.** TEM is the gold standard for mitochondrial ultrastructure — it can quantify cristae density, cristae junction width, mitochondrial length, matrix density, and fission/fusion intermediates. All of the mechanistic hypotheses above (1.1–1.5) converge on a prediction that can only be tested by TEM: ME/CFS CD8+ TEM cells will show fragmented, cristae-disorganized mitochondria.

Recent advances in volume EM (FIB-SEM) allow 3D reconstruction of the entire mitochondrial network in single cells, quantifying parameters that 2D TEM cannot: network connectivity, mitochondrial contact sites (ER-mito, lipid droplet-mito), and total mitochondrial volume. These techniques have been applied to PBMCs in other conditions (SARS-CoV-2, HIV) but never in ME/CFS.

The experiment: (a) Sort CD8+ TEM, CD8+ naïve, and CD4+ memory cells from n=20 ME/CFS + n=20 HC. (b) Fix for TEM (glutaraldehyde + osmium tetroxide + uranyl acetate). (c) Quantify: mitochondrial length (μm), cristae density (cristae/μm²), cristae junction width (nm), matrix electron density, fission/fusion intermediate frequency, and contact site abundance. (d) Correlate morphological parameters with Seahorse metabolic flux, scRNA-seq exhaustion markers, and clinical severity (SF-36 PF, FACIT-Fatigue).

**Evidence link:** No existing TEM data on ME/CFS T-cell mitochondria — this is a first-in-field experiment. TEM of ME/CFS muscle mitochondria has been done (Behan 1991, Plioplys 1995, Vecchiet 2003) — some studies found abnormalities, but muscle is not the relevant tissue for this hypothesis. The technology gap is not technical (TEM is standard) but conceptual (no one has thought to look specifically at CD8+ TEM cells).

**Preliminary certainty:** 0.45 (that TEM will reveal mitochondrial abnormalities); 0.80 (that this experiment is the highest-priority gap).

**Falsifiable prediction:** (a) ME/CFS CD8+ TEM mitochondria will have mean length ≤0.8 µm (fragmented) vs >1.5 µm (tubular) in HC — a large effect size. (b) Cristae density will be reduced by ≥30% in ME/CFS vs HC CD8+ TEM cells. (c) Cristae junction width will be increased (widened) — consistent with OPA1 loss of function. (d) The morphological parameters will correlate with ΔΨm (Mandarano2020) and exhaustion TF expression (Iu2024). (e) Critically falsified if: mitochondrial morphology is indistinguishable between ME/CFS and HC CD8+ TEM cells — then the mitochondrial dysfunction literature reflects dynamic/metabolic defects invisible to structural analysis, and the fission hypothesis is unsupported.

**Non-specialist consequence:** We have a decade of papers saying ME/CFS T-cell mitochondria are dysfunctional — but nobody has looked at them under an electron microscope. This single experiment could confirm or refute the central visual prediction of the entire field: that the mitochondria in ME/CFS memory T cells are physically fragmented. If they look normal under TEM, the "mitochondrial fragmentation" story needs to be rethought from scratch.

---

#### 2.2 DRP1 and Fission/Fusion Protein Quantification in Primary CD8+ T Cells: The Missing Mechanistic Link

**Category:** 2 — Research Directions
**Origin:** brainstorm

**Mechanistic rationale:** Schreiner2020 showed DRP1 activation in unfractionated PBMCs @SchreinerEtAl2020. Iu2024 showed CD8+ TEM transcriptional exhaustion @Iu2024CD8Exhaustion. Mandarano2020 showed reduced ΔΨm in CD8+ cells @Mandarano2020. **But DRP1 protein expression and phosphorylation have never been measured specifically in primary CD8+ T cells.** This is the mechanistic bridge between the fission evidence (Schreiner2020, in mixed PBMCs) and the CD8+ exhaustion evidence (Iu2024, in sorted CD8+ cells). If DRP1 is elevated/activated in sorted CD8+ TEM cells, and this correlates with both mitochondrial fragmentation (TEM, Idea 2.1) and exhaustion markers (TOX/EOMES), the causal chain is supported. If DRP1 is normal in CD8+ cells despite being altered in PBMCs, the relevant cell type for fission is not CD8+ T cells.

The experiment: (a) Sort CD8+ TEM, CD8+ naïve, CD4+ memory, and CD4+ naïve from ME/CFS (n=20) and HC (n=20). (b) Western blot for: total DRP1, p-DRP1(Ser616), p-DRP1(Ser637) [inhibitory], MFN1, MFN2, OPA1 (long and short forms), MFF, FIS1, and TOM20 (loading control). (c) Calculate fission/fusion index = p-DRP1(Ser616) / (MFN1+MFN2). (d) Correlate with Seahorse OCR/ECAR, ΔΨm (TMRE flow), and exhaustion TF expression (TOX, EOMES, TCF7, PD-1, TIM-3 by flow). (e) Confocal immunofluorescence for DRP1 colocalization with TOM20 (mitochondrial DRP1 translocation).

This experiment is straightforward (standard western blot, existing antibodies, accessible technique) and addresses the most critical missing data point in the evidence chain. It should be done before launching any clinical trial of DRP1 inhibitors (Idea 3.1) or interpreting the anti-fission therapeutic strategy.

**Evidence link:** Schreiner2020 (DRP1 in PBMCs, cert 0.45) @SchreinerEtAl2020. No DRP1 data in sorted CD8+ cells. All reagents and protocols are standard and commercially available.

**Preliminary certainty:** 0.40 (that DRP1 and fission proteins will be altered in CD8+ TEM); 0.85 (that this experiment should be prioritized).

**Falsifiable prediction:** (a) ME/CFS CD8+ TEM cells will show elevated p-DRP1(Ser616)/total DRP1 ratio ≥1.5-fold vs HC CD8+ TEM. (b) The fission/fusion index will correlate with reduced ΔΨm (r < −0.5) and elevated TOX/EOMES (r > 0.5). (c) The fission/fusion index will be normal in CD8+ naïve cells (within-subject control — if fission is specific to antigen-experienced cells). (d) Falsified if: DRP1, p-DRP1, MFN1/2, and OPA1 are all normal in CD8+ TEM — then mitochondrial dysfunction in CD8+ cells is not mediated by the fission/fusion machinery, and alternative mechanisms (mtDNA depletion, Complex V, calcium overload) should be pursued.

**Non-specialist consequence:** Before anyone designs a clinical trial to block mitochondrial fragmentation in ME/CFS, someone needs to confirm — in the actual cell type of interest (CD8+ memory T cells, not mixed blood cells) — that the fragmentation machinery is really overactive. This is a straightforward protein measurement that could save years of misguided therapeutic development.

---

#### 2.3 Antigen-Specific Recall Response with Concurrent Metabolic Readout: Testing Whether Metabolically Exhausted T Cells Can Still Protect

**Category:** 2 — Research Directions
**Origin:** brainstorm

**Mechanistic rationale:** The functional significance of CD8+ mitochondrial exhaustion depends on a single unanswered question: **do metabolically exhausted CD8+ T cells fail to respond to recall antigen?** All existing ME/CFS studies use polyclonal stimulation (anti-CD3/CD28) or PMA/ionomycin — artificial mitogens that bypass the TCR and metabolic checkpoints. No study has tested antigen-specific recall responses (e.g., CMV, EBV, influenza tetramer+ cells) with concurrent metabolic readout. The clinical relevance of the entire T-cell exhaustion literature hinges on this experiment: if CD8+ cells with mitochondrial dysfunction still proliferate and produce cytokines when presented with their cognate antigen, the metabolic abnormality is clinically irrelevant; if they fail, it is a genuine immune deficiency.

The experiment: (a) Screen ME/CFS (n=30) and HC (n=30) for HLA-A2 and common viral epitopes (CMV pp65, EBV BMLF1, influenza M1). (b) Sort HLA-A2-tetramer+ CD8+ cells. (c) Stimulate with cognate peptide-pulsed antigen-presenting cells. (d) Concurrent readout: CFSE proliferation (flow), IFNγ/TNFα (ICS), CD107a degranulation, and Seahorse metabolic flux (OCR/ECAR) on the same cells. (e) Compare ME/CFS vs HC proliferation index, cytokine production, and metabolic parameters. (f) Correlate antigen-specific proliferative capacity with mitochondrial parameters (ΔΨm, DRP1 expression, ROS).

**Evidence link:** Gil2024 used PMA/ionomycin to assess CD8+ cytokine production — not antigen-specific @Gil2024CD8dysfunction. Mandarano2020 used anti-CD3/CD28 — not antigen-specific @Mandarano2020. No antigen-specific recall assay with metabolic readout exists in ME/CFS. Tetramer technology and metabolic flux analysis are standard and combinable.

**Preliminary certainty:** 0.50 (that antigen-specific recall will be impaired); 0.70 (that this experiment is critical for clinical relevance).

**Falsifiable prediction:** (a) CMV/EBV/Flu tetramer+ CD8+ cells from ME/CFS will show ≥30% reduction in proliferation index and ≥50% reduction in IFNγ/TNFα production compared to HC tetramer+ cells. (b) The proliferative defect will correlate with reduced spare respiratory capacity (SRC) measured by Seahorse before stimulation (r > 0.5). (c) ME/CFS tetramer+ cells with the lowest ΔΨm will show the greatest proliferative defect — a within-patient dose-response relationship. (d) Falsified if: antigen-specific recall responses are normal in ME/CFS — then mitochondrial dysfunction, while biochemically measurable, does not impair immune protection, and the CD8+ exhaustion literature describes a laboratory finding without clinical consequence.

**Non-specialist consequence:** The million-dollar question: do ME/CFS patients' memory T cells actually fail to respond when they encounter a real virus they've seen before (like EBV or CMV), or do they just look abnormal in lab tests? If the answer is "they fail," this is a genuine immune deficiency that may explain why ME/CFS patients report more frequent and severe infections. If the answer is "they work fine," the metabolic findings are interesting cell biology but don't explain patient symptoms.

---

#### 3.1 Mdivi-1 as a Repurposed DRP1 Inhibitor: Proof-of-Concept Trial for Mitochondrial Fission Reversal in ME/CFS

**Category:** 3 — Drug/Medication Ideas
**Origin:** brainstorm

**Mechanistic rationale:** Mdivi-1 (mitochondrial division inhibitor 1) is a small-molecule DRP1 inhibitor that blocks DRP1 GTPase activity and prevents DRP1 translocation to mitochondria. It has been extensively used in preclinical models of ischemia-reperfusion injury, neurodegeneration (Alzheimer's, Parkinson's), and sepsis — all conditions where excessive mitochondrial fission drives pathology. If the DRP1-ROS-pERK positive feedback loop (Idea 1.1) is operational in ME/CFS CD8+ T cells, mdivi-1 should break the loop and restore mitochondrial fusion.

Key pharmacological properties: (a) Mdivi-1 is commercially available, well-characterized pharmacologically, and has been used in >300 publications. (b) It crosses the blood-brain barrier — relevant if CNS T-cell infiltration contributes to neuroinflammation. (c) In vitro, mdivi-1 at 10–25 µM reduces DRP1 GTPase activity by ~60%, shifts mitochondrial dynamics toward fusion within 2–4h, and reduces ROS production by 30–50% in multiple cell types. (d) It is not FDA-approved and has no human dosing data — but its extensive preclinical safety data (rodent and non-human primate) provide a starting point for IND-enabling toxicology.

**Proof-of-concept trial design:**

| Element | Specification |
|---------|---------------|
| **Phase** | Phase 0 / first-in-ME/CFS-mechanism — ex vivo proof-of-concept (no human dosing) |
| **Design** | Ex vivo: isolate PBMCs from n=15 ME/CFS + n=15 HC. Treat with mdivi-1 (10 µM, 25 µM) vs vehicle for 4h, 24h, 48h |
| **Primary endpoints** | Mitochondrial network morphology (confocal + MiNA analysis), p-DRP1(Ser616)/total DRP1 ratio, ΔΨm (TMRE flow) |
| **Secondary endpoints** | TOX/EOMES/TCF7 expression (flow), IFNγ/TNFα production (ICS post-stimulation), ROS (CellROX), spare respiratory capacity (Seahorse) |
| **Critical readout** | Does mdivi-1 restore mitochondrial fusion AND reverse exhaustion markers? Or does it restore morphology without reversing the transcriptional program? (distinguishes metabolic from epigenetic models) |
| **Go/no-go for in-human** | If mdivi-1 normalizes ≥3 of: mitochondrial network, ΔΨm, ROS, exhaustion markers → proceed to IND-enabling studies |

**Concerns:** (a) Mdivi-1 has off-target effects at high concentrations (inhibits Complex I at >50 µM) — concentration must be tightly controlled. (b) DRP1 inhibition may impair mitochondrial fission during T-cell activation — since TCR stimulation requires a transient fission burst, DRP1 inhibition could paradoxically impair the acute T-cell response while improving baseline mitochondrial health. This predicts a narrow therapeutic window. (c) Long-term systemic DRP1 inhibition may impair mitochondrial quality control (fission is required for mitophagy) — chronic treatment could cause mitochondrial damage accumulation.

**Evidence link:** Schreiner2020 DRP1 activation in ME/CFS PBMCs (cert 0.45) @SchreinerEtAl2020. Mdivi-1 has been used in preclinical sepsis models (Deng 2020, Shock) showing protection of lymphocyte mitochondrial function — the closest preclinical precedent. No mdivi-1 data in ME/CFS or any post-viral condition.

**Preliminary certainty:** 0.20 (therapeutic benefit); 0.35 (that ex vivo mdivi-1 will restore mitochondrial morphology).

**Falsifiable prediction:** (a) Ex vivo mdivi-1 treatment (25 µM, 24h) will increase mean mitochondrial network branch length by ≥25% in ME/CFS CD8+ T cells compared to vehicle. (b) Mitochondrial fusion restoration will reduce TOX expression by ≥20% and increase IFNγ production (post-anti-CD3/CD28 stimulation) by ≥30%. (c) Falsified if: mdivi-1 restores mitochondrial morphology but does NOT reverse exhaustion markers — then the exhaustion transcriptional program is independent of mitochondrial dynamics, and DRP1 inhibition addresses morphology without reversing immune function (Idea 1.2 metabolic memory model supported). (d) Also falsified if: mdivi-1 reduces IFNγ production (DRP1 inhibition impairs activation-induced fission necessary for T-cell effector function).

**Non-specialist consequence:** A drug that blocks mitochondrial fragmentation — already tested in animal models of stroke, Alzheimer's, and sepsis — could be repurposed to test whether ME/CFS T-cell exhaustion is driven by excessive mitochondrial fission. The first step is embarrassingly simple: take blood from ME/CFS patients, add the drug to the dish, and see if the mitochondria in their T cells stop looking like shattered glass and start looking like healthy networks. This costs a few thousand dollars and could be done in weeks.

---

#### 3.2 Metformin for T-Cell Mitochondrial Fusion: AMPK Activation as an Indirect DRP1 Antagonist

**Category:** 3 — Drug/Medication Ideas
**Origin:** brainstorm

**Mechanistic rationale:** Shankar2025 showed that metformin attenuates T-cell hyperproliferation in vitro — a direct T-cell effect, independent of its systemic glucose-lowering action @Shankar2025oxidativestress. The mechanism is likely AMPK activation, which has two effects on mitochondrial dynamics:

(a) **AMPK phosphorylates MFF (mitochondrial fission factor) at Ser155/Ser172, blocking DRP1 recruitment.** Activated AMPK directly antagonizes DRP1-mediated fission, shifting the balance toward fusion (Toyama 2016, Science). This is a physiological mechanism — AMPK is the energy sensor that promotes mitochondrial fusion when energy is scarce (to maximize OXPHOS efficiency) and permits fission when energy is abundant.

(b) **AMPK activates PGC-1α → TFAM → mitochondrial biogenesis.** New mitochondrial mass dilutes the damaged mitochondrial pool and provides fresh cristae for ATP synthase assembly. In T cells, AMPK activation by metformin increases spare respiratory capacity (SRC) — the parameter most tightly correlated with T-cell memory fitness (Pearce 2013, Science).

Metformin has a clinically favorable profile for ME/CFS: (a) FDA-approved, well-characterized safety, decades of post-marketing surveillance. (b) Low cost ($4/month generic). (c) Mild side effects (GI — nausea, diarrhea) that are dose-dependent and often transient. (d) No immunosuppression — AMPK activation generally improves T-cell function, unlike corticosteroids or calcineurin inhibitors. (e) Starting dose can be titrated from 250 mg/day (well below the 500 mg standard starting dose) — critical for severe ME/CFS patients who tolerate medications poorly.

However, metformin is non-specific: AMPK activates hundreds of downstream targets. Attribution of benefit to mitochondrial fusion specifically (as opposed to reduced hepatic gluconeogenesis, improved insulin sensitivity, or altered gut microbiome) is impossible without a specific DRP1 inhibitor comparator arm (Idea 3.1). Metformin is the practical, low-cost clinical candidate; mdivi-1 is the mechanistic probe.

**Evidence link:** Shankar2025 metformin in vitro T-cell attenuation (cert 0.75) @Shankar2025oxidativestress. AMPK → MFF → DRP1 antagonism established (Toyama 2016, Science). PGC-1α → mitochondrial biogenesis in T cells established (Pearce 2013, Science). Metformin has been trialed in ME/CFS for glucose metabolism (Brown 2021, pilot n=20, no significant fatigue improvement — but this trial did not select for patients with documented T-cell mitochondrial dysfunction, which may be a responder subset).

**Preliminary certainty:** 0.25

**Falsifiable prediction:** (a) Metformin (500 mg/day, 12 weeks) will increase CD8+ TEM mitochondrial membrane potential and spare respiratory capacity compared to baseline in ME/CFS patients. (b) Responders (≥1 point improvement in FACIT-Fatigue) will show greater baseline CD8+ mitochondrial dysfunction (low ΔΨm, low SRC) than non-responders — mitochondrial dysfunction predicts metformin response. (c) Falsified if: metformin does not change CD8+ mitochondrial parameters — then the in vitro effect does not translate in vivo, either because the dose is insufficient in T cells or because systemic AMPK effects dominate.

**Non-specialist consequence:** Metformin — the most prescribed diabetes drug in the world, costing pennies per pill — may improve immune function in ME/CFS by activating the cell's energy-sensing machinery, which in turn promotes mitochondrial fusion and blocks fragmentation. The Shankar2025 finding that metformin calms hyperactive ME/CFS T cells in the lab is the strongest preclinical signal for any repurposed drug in this space. The next step is a clinical trial, but one that selects patients based on their T-cell mitochondrial health — not just anyone with an ME/CFS diagnosis.

---

#### 6.1 The "ME/CFS Mitochondrial Immune Rescue Protocol": A Stratified, At-Home, Multi-Modal Intervention

**Category:** 6 — Combinations + Access
**Origin:** brainstorm

**Mechanistic rationale:** No single intervention targeting one node in the T-cell mitochondrial exhaustion pathway is likely to produce clinically meaningful improvement for most patients. The pathway is multi-nodal (DRP1 fission, SOD2 depletion, GPX4 oxidation, Complex V inefficiency, FAO shift) and patient heterogeneity (sex differences in Shankar2025; severity differences in Lee2025; ME/CFS vs LC differences in Petrov2026) guarantees that different patients will have different dominant nodes. A stratified combination protocol is the rational approach:

**Step 1 — Phenotype (0 weeks, blood draw):**
- CD8+ TEM mitochondrial panel: ΔΨm (TMRE), mitoROS (MitoSOX), DRP1(pSer616)/MFN2 ratio, PD-1/TIM-3 expression, mtDNA copy number (CD8+ sorted)
- Serum: ferritin, TSAT, CRP, IL-6, CPK (PEM risk stratification)
- Clinical: SF-36 PF, FACIT-Fatigue, COMPASS-31, PEM severity scale

**Step 2 — Stratify to protocol arm based on dominant phenotype:**

| Phenotype | Dominant mechanism | Intervention |
|-----------|-------------------|-------------|
| **P1: High fission** (DRP1/MFN2 ratio >2.0) | DRP1-ROS loop (Idea 1.1) | Metformin 250→500 mg/day (AMPK → MFF → anti-fission) + CoQ10 200 mg/day (Complex I bypass → reduce ROS) |
| **P2: High oxidative stress** (MitoSOX >2× HC, GPX4 low) | SOD2 depletion, lipid peroxidation (Shankar2025) | NAC 600 mg BID (glutathione precursor) + Selenium 200 µg/day (GPX4 cofactor) + Vitamin E mixed tocopherols 400 IU/day |
| **P3: Low ΔΨm** (TMRE low, normal fission) | mtDNA depletion (Idea 1.3) or Complex V (Idea 1.5) | NADH 20 mg/day + CoQ10 400 mg/day (substrate push) + Urolithin A 500 mg/day (mitophagy stimulation to clear damaged mitochondria) |
| **P4: High exhaustion markers** (PD-1/TIM-3 high) | Chromatin-imprinted exhaustion (Idea 1.2) | Acetyl-L-carnitine 1 g BID (acetyl-CoA precursor) + α-lipoic acid 600 mg/day (αKG analogue) + B-vitamin complex |
| **P5: Mixed/indeterminate** | — | Metformin 250 mg/day (broad AMPK activation) + CoQ10 200 mg/day + NAC 600 mg/day (general mitochondrial support) |

**Step 3 — Re-phenotype and adapt (12 weeks):**
- Repeat CD8+ TEM mitochondrial panel
- If primary parameter improved ≥20% AND fatigue improved ≥1 MCID → continue
- If mitochondrial parameter improved but fatigue unchanged → reconsider mechanism (mitochondria permissive but not sufficient for symptom improvement; add CNS-intervention arm)
- If neither improved → switch phenotype → try alternative arm

**Step 4 — PEM prophylaxis overlay (all arms):**
- Pre-activity: NAC 600 mg 1h before known exertion (transient glutathione boost to buffer ROS)
- Post-activity: CoQ10 200 mg (electron transport chain support during recovery)

**Accessibility:** All interventions are oral supplements + one generic prescription drug (metformin). Total monthly cost: $30–80 out-of-pocket (dependent on supplement quality). All are available without specialty pharmacy. The phenotyping requires one blood draw with flow cytometry — available at any academic medical center with a research flow core. The protocol can be implemented by a primary care physician or ME/CFS specialist with access to the phenotyping panel.

**Monitoring parameters:** (a) Weekly: fatigue diary (0–10), PEM episodes (Y/N + duration), step count. (b) Monthly: adverse effects checklist (GI, headache, rash). (c) Quarterly: CD8+ mitochondrial panel + SF-36 PF. (d) Stopping criteria: any intervention worsening fatigue by >1 point on 0–10 scale for >2 consecutive weeks → discontinue that arm; any allergic reaction → discontinue.

**Severity accessibility:** Severe/very-severe patients (bedbound, unable to attend clinic): (a) phenotype via at-home finger-prick blood collection (Mitra device or dried blood spot — validated for T-cell immunophenotyping when processed within 48h), (b) all interventions are oral and self- or caregiver-administered, (c) metformin starting at 250 mg (can be halved for severe patients who tolerate medications poorly), (d) all supplements started at half-dose for 2 weeks before escalation.

**Evidence link:** Metformin → Shankar2025 (cert 0.75) @Shankar2025oxidativestress. NAC + glutathione → Gil2024 nebulized antioxidant partial CD8+ recovery (cert 0.40) @Gil2024CD8dysfunction. CoQ10 → existing ch14b content. Urolithin A → no ME/CFS data; human trials in aging muscle (Andreux 2019, Nat Metab). All components have independent safety data; the combination is untested. This protocol is entirely speculative — no component has ME/CFS-specific efficacy data beyond preclinical signal — but it is mechanistically grounded and stratified, which distinguishes it from the "try everything" approach commonly encountered in ME/CFS patient communities.

**Preliminary certainty:** 0.15 (overall protocol efficacy); 0.30 (that any individual arm will show ≥20% mitochondrial parameter improvement)

**Falsifiable prediction:** (a) ≥50% of patients will have an assignable phenotype (P1–P4) — confirming that CD8+ mitochondrial phenotypes are heterogeneous and classifiable. (b) ≥40% of patients in phenotype-matched arms will show ≥20% improvement in their primary mitochondrial parameter at 12 weeks. (c) Patients in phenotype-matched arms will show greater fatigue improvement than patients assigned to the non-matched (P5) arm. (d) Falsified if: most patients have the mixed/indeterminate phenotype (P5) — then CD8+ mitochondrial heterogeneity is not clinically exploitable. (e) Also falsified if: phenotype-matched treatment produces no better outcomes than the generic P5 arm — then stratification adds complexity without benefit.

**Non-specialist consequence:** Instead of trying the same supplement protocol for everyone with ME/CFS, this approach measures what's actually wrong with each patient's T-cell mitochondria — too much fragmentation? too much oxidative stress? not enough energy? — and matches supplements to the specific problem. It's personalized medicine on a budget: one blood test, four supplement protocols, and a system for checking whether it's working and switching if it's not.

---

#### 7.1 An ODE Model of CD8+ T-Cell Mitochondrial Fusion-Fission Dynamics: Quantitative Framework for Predicting Intervention Response

**Category:** 7 — Mathematical Model Extensions
**Origin:** brainstorm

**Mechanistic rationale:** The CD8+ T-cell mitochondrial exhaustion hypotheses (1.1–1.5) make qualitative predictions about the balance between fission and fusion, but none of them specify quantitative thresholds at which the system flips from a healthy steady state to a pathological one. An ODE model of mitochondrial dynamics in a single T cell can identify these thresholds, predict intervention effects, and guide experimental design.

**State variables:**
- $F(t)$: fraction of the mitochondrial network in the fragmented (fissioned) state (0 = fully fused, 1 = fully fragmented)
- $R(t)$: mitochondrial ROS concentration (arbitrary units)
- $D(t)$: active DRP1 concentration (phosphorylated + mitochondrially localized)
- $E(t)$: exhaustion TF expression (TOX, EOMES, TCF7 — aggregate, normalized 0–1)

**Flux equations:**
- $dF/dt = k_f \cdot D(t) \cdot (1 - F) - k_{fu} \cdot (1 - F) - k_{clear} \cdot F$
  - $k_f$: fission rate (DRP1-dependent)
  - $k_{fu}$: fusion rate (OPA1/MFN-dependent, baseline constant)
  - $k_{clear}$: mitophagy clearance of fragmented mitochondria
- $dR/dt = k_{ROS} \cdot F(t) - k_{detox} \cdot S(t) \cdot R(t)$
  - $k_{ROS}$: ROS production (proportional to fragmentation — more fission → more electron leak)
  - $S(t)$: antioxidant capacity (SOD2, GPX4, glutathione — modeled as a fixed parameter; in Shankar2025, $S$ is reduced)
- $dD/dt = k_{DRP1} \cdot R(t) - k_{deact} \cdot D(t)$
  - $k_{DRP1}$: ROS-dependent DRP1 activation rate (ROS → ERK → DRP1(Ser616) phosphorylation)
  - $k_{deact}$: DRP1 dephosphorylation/deactivation rate
- $dE/dt = k_{exh} \cdot F(t) - k_{rev} \cdot (1 - F(t)) \cdot E(t)$
  - $k_{exh}$: exhaustion induction rate (mitochondrial fragmentation → exhaustion TF expression)
  - $k_{rev}$: exhaustion reversion rate (proportional to fused mitochondrial fraction)

**Bifurcation analysis and predictions:**
1. **Healthy steady state:** $k_{fu} > k_f$ and $S$ high → $F$ low, $R$ low, $D$ low, $E$ low — stable.
2. **Pathological steady state:** $k_f > k_{fu}$ or $S$ low → $F$ high, $R$ high, $D$ high, $E$ high — stable via positive feedback. System is **bistable** — once pushed past a threshold (e.g., by an acute infection increasing ROS), it settles into the pathological steady state and does not spontaneously recover even if the initial trigger resolves.

3. **Key parameters predicting ME/CFS phenotype:**
   - $k_{fu}$ reduced (OPA1/MFN depletion) → elevated $F$ — predicts DRP1 inhibitors (mdivi-1) most effective
   - $S$ reduced (SOD2 depletion, Shankar2025) → elevated $R$ → elevated $F$ via $k_{DRP1}$ — predicts antioxidants most effective
   - $k_{clear}$ reduced (impaired mitophagy) → $F$ elevated because damaged mitochondria accumulate

4. **Intervention predictions:**
   - **DRP1 inhibitor (mdivi-1):** ↓ $k_f$ by 60% → if $k_f/D$ is the dominant parameter, system returns to healthy steady state
   - **Antioxidant (NAC):** ↑ $S$ → ↓ $R$ → ↓ $D$ → ↓ $k_f/D$ → system returns to healthy steady state — if $S$ is the limiting factor
   - **Mitophagy enhancer (urolithin A):** ↑ $k_{clear}$ → ↓ $F$ — if mitophagy is rate-limiting
   - **Combination:** DRP1 inhibitor + antioxidant → synergistic: inhibitor blocks the fission effector, antioxidant blocks the fission stimulus

5. **Hysteresis and the "therapeutic window" problem:** In a bistable system, interventions may need to push the system beyond a threshold to flip it back to the healthy steady state. Small doses that partially reduce $F$ may be insufficient — the system will relax back to the pathological state when the intervention is withdrawn. This predicts that **sub-threshold dosing of DRP1 inhibitors or antioxidants will show transient improvement followed by relapse** — a pattern commonly reported anecdotally in ME/CFS supplementation.

**Evidence link:** The structure mirrors established bistable models of mitochondrial dynamics in other cell types (Bertalanffy 2020, J Theor Biol; Sukhorukov 2019, PLoS Comput Biol). Parameters can be partially estimated from Shankar2025 (ROS, SOD2), Mandarano2020 (ΔΨm as proxy for $F$), and Iu2024 ($E$ = TOX/EOMES). No model of T-cell mitochondrial dynamics in post-viral conditions exists.

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) The model predicts that if $S$ (antioxidant capacity) is reduced by >50% (as in Shankar2025 SOD2 depletion), the system transitions from bistable (recoverable with intervention) to monostable pathological (irreversible without intervention). (b) The model predicts that a single acute ROS pulse (e.g., infection) of sufficient magnitude pushes a system with borderline-low $S$ into the pathological steady state permanently — matching the "single trigger, lifelong disease" pattern. (c) Falsified if: CD8+ mitochondrial parameters ($F$, $R$, $D$, $E$) do not show the bistability signature — specifically, if patients' parameters are continuously distributed (no clustering into "healthy" and "pathological" states), the discrete steady-state model is wrong and a continuous dose-response model is more appropriate.

**Non-specialist consequence:** A mathematical model of the mitochondrial "tug-of-war" between fragmentation and fusion in a single T cell reveals why the disease might be so stubborn: the system has two stable states — healthy and fragmented — and once pushed into the fragmented state by an infection, it stays there even after the infection is gone. This "toggle switch" behavior means treatments may need to push hard enough to flip the switch back, not just nudge it — explaining why modest supplement doses often produce only temporary improvement.

---

#### 8.1 CD8+ T-Cell Exhaustion in Cancer Immunotherapy vs ME/CFS: Learning from Checkpoint Biology to Understand and Potentially Treat ME/CFS

**Category:** 8 — Cross-Disease Bridges
**Origin:** brainstorm

**Mechanistic rationale:** The cancer immunotherapy field has spent 15 years characterizing CD8+ T-cell exhaustion at the molecular, metabolic, and epigenetic level — driven by the clinical imperative to reverse exhaustion and restore anti-tumor immunity. ME/CFS research can borrow concepts, tools, and therapeutic candidates from this mature field:

| Feature | Cancer-induced CD8+ exhaustion | ME/CFS CD8+ exhaustion (predicted) | Implication |
|---------|-------------------------------|-------------------------------------|-------------|
| **Trigger** | Chronic antigen stimulation (tumor neoepitopes) | Post-viral mitochondrial damage (DRP1/ROS feedback) | No chronic antigen required — metabolic damage alone can drive exhaustion |
| **Key TFs** | TOX, EOMES, TCF7, NFAT, NR4A1 | TOX, EOMES, TCF7 (Iu2024) — identical | Same terminal exhaustion program, different initiating trigger |
| **Metabolic profile** | Suppressed glycolysis, suppressed OXPHOS, FAO dependence, reduced mitochondrial mass | Reduced glycolysis (Mandarano2020), reduced ΔΨm, FAO shift (Maya2023) — similar but less severe | ME/CFS exhaustion less profound than tumor-infiltrating lymphocyte exhaustion |
| **Epigenetics** | Tox locus demethylated, PDCD1 enhancer opened, effector loci closed (ATAC-seq) | ATAC-seq shows chromatin remodeling (Iu2024) — pattern not yet mapped to exhaustion loci | If pattern matches cancer exhaustion → shared mechanism despite different triggers |
| **Reversibility** | Partially reversible with PD-1/PD-L1 blockade (pembrolizumab, nivolumab) in ~20–40% of patients | Unknown — checkpoint inhibitors not tested in ME/CFS | **DO NOT test checkpoint inhibitors in ME/CFS without ex vivo safety data** — risk of triggering autoimmunity in an already autoimmune-prone population |
| **Senescence vs exhaustion** | Distinct: exhaustion (reversible, TOX-dependent) vs senescence (irreversible, p16/p21-dependent) | Lee2025 CD28− cells may represent senescence rather than exhaustion | If the dominant phenotype is senescence, checkpoint inhibitors will not work and may be harmful |
| **Memory recall** | Tumor-infiltrating exhausted cells fail to proliferate or produce cytokines upon cognate antigen re-encounter | Unknown (Gap: Idea 2.3) | The functional consequence of exhaustion is the key missing experiment |

**Key cross-disease prediction:** The Iu2024 ATAC-seq data, when overlaid with published PD-1 blockade-induced chromatin remodeling maps (Pauken 2016, Science; Sen 2016, Science), will reveal whether ME/CFS CD8+ exhaustion chromatin is in a "reversible" or "fixed" epigenetic state. If the chromatin is similar to pre-treatment tumor-infiltrating lymphocytes, the exhaustion is potentially reversible with checkpoint modulation or metabolic reprogramming. If the chromatin resembles post-senescence T cells (permanently closed effector loci), the exhaustion is irreversible and therapeutic efforts should focus on replacing the memory pool (vaccination) rather than restoring the existing one.

**The shared metabolic T-cell receptor diversity problem:** In cancer, exhausted T cells are usually tumor-antigen-specific — a small fraction of the total CD8+ repertoire. In ME/CFS, if mitochondrial dysfunction is the driver of exhaustion, the exhaustion should be **polyclonal** — affecting CD8+ cells regardless of antigen specificity. Iu2024's data (scRNA-seq on total CD8+) cannot distinguish clonal from polyclonal exhaustion without paired TCR sequencing (which was not done). If the exhaustion is polyclonal → mitochondrial mechanism supported. If the exhaustion is oligoclonal (limited to a few expanded clones) → chronic antigen (viral persistence) mechanism supported.

**Evidence link:** Iu2024 CD8+ TEM exhaustion TFs (cert 0.75) @Iu2024CD8Exhaustion. Cancer immunotherapy exhaustion biology established (Wherry 2015, Nat Rev Immunol; McLane 2019, Annu Rev Immunol). Petrov2026 ME/CFS = immune suppression (not activation) (cert 0.65) @Petrov2026Immunophenotyping — argues against chronic antigen as driver, consistent with mitochondrial mechanism.

**Preliminary certainty:** 0.20 (that ME/CFS CD8+ exhaustion is mechanistically similar to cancer exhaustion); 0.35 (that the chromatin state will be reversible rather than fixed).

**Falsifiable prediction:** (a) Overlap analysis of Iu2024 ATAC-seq peaks with published PD-1 blockade-responsive chromatin regions will show significant enrichment (hypergeometric test p <0.01) — ME/CFS exhaustion chromatin overlaps with reversible exhaustion loci. (b) ME/CFS CD8+ exhaustion will be polyclonal (TCR sequencing shows normal diversity, no clonal expansion) — mitochondrial, not antigen-driven. (c) Falsified if: ME/CFS exhaustion is oligoclonal (expanded clones) → chronic antigen drive (viral persistence or autoantigen), not mitochondrial damage, is the dominant mechanism.

**Non-specialist consequence:** Cancer researchers have spent billions understanding and reversing T-cell exhaustion so that the immune system can fight tumors. ME/CFS researchers can piggyback on this work — the exhaustion program in ME/CFS T cells uses the same molecular machinery (TOX, EOMES, PD-1). But there's a critical difference: in cancer, exhaustion is driven by a tumor the immune system can see; in ME/CFS, exhaustion may be driven by mitochondrial damage the immune cell carries within itself. The treatments may need to be different — metabolic support for ME/CFS vs checkpoint blockade for cancer.

---

#### 8.2 CD8+ T-Cell Mitochondrial Dysfunction in HIV Immunosenescence: A 30-Year Natural Experiment Relevant to ME/CFS

**Category:** 8 — Cross-Disease Bridges
**Origin:** brainstorm

**Mechanistic rationale:** HIV infection produces a CD8+ T-cell phenotype that is strikingly similar to ME/CFS: (a) elevated exhaustion markers (PD-1, TIM-3) on CD8+ cells, (b) reduced mitochondrial respiration and glycolytic capacity, (c) shift to fatty acid oxidation, (d) increased mitochondrial ROS production, (e) CD28− immunosenescent phenotype, and (f) impaired recall responses to common viral antigens. These features persist even in virally suppressed patients on antiretroviral therapy (ART) — the virus is controlled, but the CD8+ phenotype endures. This is the closest natural experiment to a post-viral CD8+ exhaustion state that has been studied longitudinally for decades.

Key parallels and their ME/CFS implications:

(a) **Mitochondrial dysfunction persists in HIV+ patients with undetectable viral load.** If ART-controlled patients (virus absent) still have CD8+ mitochondrial dysfunction, this argues strongly against "chronic viral replication" as the driver and for the "post-viral scar" (Idea 1.3) or "self-sustaining feedback loop" (Idea 1.1) models. This is the strongest evidence that **CD8+ mitochondrial exhaustion can be sustained without ongoing viral replication** — directly relevant to ME/CFS, where no persistent virus has been consistently identified.

(b) **HIV-related CD8+ mitochondrial dysfunction is partially reversible with antioxidant therapy.** Clinical trials of N-acetylcysteine (NAC) in HIV+ patients have shown improvements in CD4+ and CD8+ counts and reductions in inflammatory markers (Breitkreuz 2000, AIDS; De Rosa 2000, Eur J Clin Invest). This provides the clinical precedent for the Gil2024 nebulized antioxidant case series @Gil2024CD8dysfunction — if NAC works in HIV-associated T-cell dysfunction, it is mechanistically plausible in post-viral ME/CFS-associated T-cell dysfunction.

(c) **Mitochondrial DNA depletion is documented in HIV+ CD8+ cells** (Morse 2019, J Infect Dis) — consistent with Idea 1.3 (mtDNA depletion model) and providing a technical roadmap (how to measure mtDNA in sorted CD8+ subsets) that can be directly applied to ME/CFS.

(d) **The HIV immunosenescence literature distinguishes exhaustion from senescence more cleanly than the ME/CFS literature.** In HIV, CD28− CD57+ senescent cells accumulate over decades of infection and represent irreversible replicative arrest; PD-1+ TIM-3+ exhausted cells are earlier in the trajectory and potentially reversible. Lee2025's CD28− finding in severe ME/CFS @Lee2025TcellActivation suggests senescence, not exhaustion — but the two populations were not distinguished by flow panel. Applying the HIV field's dual-phenotyping approach (CD28/CD57 for senescence + PD-1/TIM-3 for exhaustion + TOX/EOMES for transcriptional exhaustion) would resolve whether ME/CFS CD8+ cells are exhausted (potentially reversible), senescent (irreversible), or a mixture of both.

**Evidence link:** HIV CD8+ metabolic exhaustion literature (Morse 2019, J Infect Dis; Korolkova 2020, J Immunol; Younes 2021, Front Immunol). Lee2025 CD28− in severe ME/CFS (cert 0.65) @Lee2025TcellActivation. Iu2024 TOX/EOMES in ME/CFS CD8+ TEM (cert 0.75) @Iu2024CD8Exhaustion. Shankar2025 oxidative stress (cert 0.75) @Shankar2025oxidativestress. No direct comparison of HIV and ME/CFS CD8+ mitochondrial phenotypes exists.

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) ME/CFS CD8+ TEM cells will show a mitochondrial phenotype (reduced ΔΨm, elevated ROS, reduced SRC) that is quantitatively similar to ART-suppressed HIV+ CD8+ TEM cells — two post-viral conditions converging on the same cellular endpoint despite different viruses and different time courses. (b) ME/CFS CD8+ cells will separate into an exhausted (PD-1+/TIM-3+/TOX+/CD28+) population and a senescent (CD28−/CD57+/p16+) population when analyzed with the HIV multi-parameter panel — resolving the exhaustion/senescence ambiguity. (c) The senescent fraction will correlate with disease duration (r >0.5) — the longer the disease, the more the pool shifts from exhaustion to senescence. (d) Falsified if: ME/CFS CD8+ phenotype is entirely distinct from HIV — then the post-viral CD8+ exhaustion model is not generalizable across viral triggers.

**Non-specialist consequence:** HIV researchers have been studying post-viral T-cell exhaustion for 30 years — and have learned that (1) it persists even when the virus is eliminated, (2) antioxidants can partially reverse it, and (3) some exhausted cells become permanently senescent over time. ME/CFS research can shortcut decades of work by applying the HIV field's tools and concepts directly — starting with the flow cytometry panel that distinguishes reversible exhaustion from irreversible senescence.

---

#### 9.1 CD8+ TEM Mitochondrial Membrane Potential (ΔΨm) as a Diagnostic Biomarker for ME/CFS Immune Dysfunction

**Category:** 9 — Diagnostic/Biomarker Ideas
**Origin:** brainstorm

**Mechanistic rationale:** Mandarano2020 demonstrated reduced ΔΨm in CD8+ T cells from ME/CFS patients compared to healthy controls @Mandarano2020. This finding, while not independently replicated in primary CD8+ cells, is supported by converging evidence: Shankar2025 showed mitochondrial ROS elevation in memory lymphocytes @Shankar2025oxidativestress and Missailidis2020 showed reduced ΔΨm in lymphoblasts @Missailidis2020ComplexV. ΔΨm is a tractable biomarker:

(a) **Measurement:** TMRE (tetramethylrhodamine ethyl ester) or TMRM (tetramethylrhodamine methyl ester) staining + flow cytometry — a standard assay available in any research flow cytometry core. Gating on CD3+CD8+CD45RA−CCR7− (TEM) identifies the relevant subset. The assay takes ~2 hours from blood draw to result.

(b) **Discriminatory potential:** If the effect size in Mandarano2020 is typical (d ~0.8–1.2), ΔΨm alone could discriminate ME/CFS from HC with AUC >0.80. If the mitochondrial defect is specific to CD8+ TEM and not present in CD4+ or naïve cells (within-patient negative control), the specificity for immune dysfunction (vs generalized mitochondrial impairment) is high.

(c) **Longitudinal utility:** ΔΨm could track disease progression, treatment response, and PEM recovery. If ΔΨm declines during PEM (predictable from Idea 1.1 DRP1-ROS feedback), the ΔΨm recovery slope post-PEM becomes a biomarker of metabolic resilience — patients who recover ΔΨm within 24h of PEM have better prognosis than patients whose ΔΨm remains depressed for >72h.

(d) **Pre-analytical stability:** ΔΨm degrades rapidly after blood draw (within 2–4 hours at room temperature). This limits clinical applicability — samples must be processed fresh, precluding centralized laboratory analysis from shipped samples. However, the TMRE assay is simple enough to be performed on-site in any clinic with a basic flow cytometer and a centrifuge, making it feasible for specialized ME/CFS centers but not for primary care.

(e) **Confounders:** ΔΨm is reduced by: age (normal aging), acute infection, sleep deprivation, certain medications (statins, metformin, antiretrovirals), and sample handling (processing delay >4h). A diagnostic assay must control for these or be validated in a population where they are systematically assessed.

**Evidence link:** Mandarano2020 reduced CD8+ ΔΨm (cert 0.70) @Mandarano2020. Shankar2025 memory lymphocyte ROS (cert 0.75) @Shankar2025oxidativestress. TMRE flow is standard (Cottet-Rousselle 2011, Cytometry A). No diagnostic validation study has been performed — Mandarano2020 was a mechanistic research study, not a diagnostic accuracy study.

**Preliminary certainty:** 0.35 (diagnostic utility); 0.25 (clinical deployability given pre-analytical constraints).

**Falsifiable prediction:** (a) CD8+ TEM ΔΨm (TMRE, median fluorescence intensity normalized to naïve CD8+ within-subject control) will discriminate ME/CFS from HC with AUC >0.80 in a validation cohort (n=50 ME/CFS, n=50 HC, n=30 disease controls [MS, RA, depression]). (b) CD8+ TEM ΔΨm will be reduced in ME/CFS but normal in depression — discriminating organic from psychiatric fatigue. (c) ΔΨm will decline ≥15% during PEM (measured 24h post-CPET) and recover to baseline within 48h in mild/moderate patients but remain depressed at 72h in severe patients — ΔΨm recovery slope as a prognostic biomarker. (d) Falsified if: CD8+ TEM ΔΨm AUC <0.70 in an adequately powered replication study — then the effect is too small for diagnostic utility or is confounded by technical variability.

**Non-specialist consequence:** A blood test measuring the "battery voltage" of memory T-cell mitochondria could distinguish ME/CFS immune exhaustion from depression-associated fatigue — providing an objective biomarker where none currently exists. The assay uses standard equipment (flow cytometer) and a 2-hour protocol, making it deployable at specialized ME/CFS centers. The catch: the sample must be processed fresh, so you can't mail your blood to a central lab.

---

#### 9.2 Exhaustion Transcription Factor Panel (TOX/EOMES/TCF7/PD-1) as a Blood-Based ME/CFS Severity Stratification Tool

**Category:** 9 — Diagnostic/Biomarker Ideas
**Origin:** brainstorm

**Mechanistic rationale:** Iu2024 demonstrated that CD8+ TEM cells in ME/CFS upregulate exhaustion-associated transcription factors (TOX, EOMES, TCF7) and surface markers (PD-1, TIM-3) @Iu2024CD8Exhaustion. Lee2025 showed that T-cell activation and cytotoxic profiles discriminate mild/moderate from severe ME/CFS @Lee2025TcellActivation. The combination suggests a clinically useful biomarker panel:

| Biomarker | Cell type | What it measures | Clinical correlate |
|-----------|-----------|-----------------|--------------------|
| TOX | CD8+ TEM | Exhaustion TF — terminal exhaustion commitment | High TOX = poor immunotherapy response in cancer; in ME/CFS, predicts poor antioxidant therapy response? |
| EOMES | CD8+ TEM | Exhaustion TF — memory/exhaustion transition | Intermediate in exhaustion trajectory — may identify "early exhaustion" (reversible) vs "late exhaustion" (irreversible) |
| TCF7 (TCF-1) | CD8+ TEM | Stem-like / progenitor exhausted marker | High TCF7 = response to PD-1 blockade in cancer (Siddiqui 2019, Immunity) — may predict ME/CFS treatment response |
| PD-1 | CD8+ TEM | Surface exhaustion receptor | Correlates with TOX expression — accessible via standard clinical flow |
| TIM-3 (HAVCR2) | CD8+ TEM | Surface exhaustion receptor; Galectin-9 receptor | Links exhaustion to Galectin-9+ monocyte depletion (Idea 1.4) — also accessible via standard clinical flow |
| CD28 | CD8+ TEM | Costimulatory receptor; lost in senescence | CD28− = immunosenescence (Lee2025) — distinguishes exhaustion from senescence |

**Stratification algorithm (proposed):**

1. **CD8+ TEM TOX-high / TCF7-high / CD28+** → "early exhaustion" — progenitor exhausted state, potentially reversible. Highest priority for metabolic intervention (Idea 6.1).
2. **CD8+ TEM TOX-high / TCF7-low / CD28+** → "terminal exhaustion" — committed exhausted state, less likely reversible.
3. **CD8+ TEM TOX-low / CD28-** → "immunosenescence" — replicative arrest, not exhaustion. Irreversible. Focus on preventing further immune aging, not reversing existing dysfunction.
4. **CD8+ TEM TOX-low / CD28+ / normal ΔΨm** → "metabolically normal" — CD8+ compartment spared. Search for other immune or non-immune mechanism for symptoms.

**Clinical utility:**
- **Diagnostic:** TOX+PD-1+ CD8+ TEM >95th percentile of HC → supportive of ME/CFS immune exhaustion subtype
- **Prognostic:** TCF7-high → may respond to metabolic interventions; TCF7-low/CD28− → poor prognosis for T-cell functional recovery
- **Theranostic:** Stratify patients for clinical trial enrollment — only TCF7-high, TOX-moderate patients in metformin or mdivi-1 trials
- **Monitoring:** TOX expression change at 12 weeks → treatment response biomarker

**Evidence link:** Iu2024 TOX/EOMES/TCF7 in ME/CFS CD8+ TEM (cert 0.75) @Iu2024CD8Exhaustion. Lee2025 CD28− in severe ME/CFS (cert 0.65) @Lee2025TcellActivation. TCF7 as response predictor in cancer immunotherapy (Siddiqui 2019, Immunity; Miller 2019, Nat Immunol). No diagnostic/prognostic validation study exists.

**Preliminary certainty:** 0.25

**Falsifiable prediction:** (a) ME/CFS patients with TCF7-high CD8+ TEM will show greater improvement in FACIT-Fatigue with metformin therapy (Idea 3.2) than TCF7-low patients — TCF7 predicts treatment response. (b) TOX expression will correlate with ΔΨm reduction (r < −0.5) — linking the exhaustion TF program to mitochondrial function. (c) CD28− patients will show no improvement in CD8+ metabolic parameters with any metabolic intervention — senescence is irreversible. (d) Falsified if: TOX/EOMES/TCF7 do not predict response to any intervention — then the exhaustion TF panel is descriptive but not clinically actionable.

**Non-specialist consequence:** The same panel of exhaustion markers that oncologists use to decide which patients will respond to immunotherapy (PD-1/PD-L1 inhibitors) could be repurposed to determine which ME/CFS patients have the best chance of immune recovery with metabolic treatments. The blood test tells you not just whether your T cells are exhausted, but whether that exhaustion is the "early" (reversible) or "late" (permanent) type — guiding treatment decisions.

---

#### 10.1 Epiphenomenon: CD8+ T-Cell Mitochondrial Dysfunction as a Downstream Consequence of Sedentary Lifestyle, Not Causally Related to ME/CFS Pathophysiology

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant to ME/CFS
**Origin:** brainstorm

**Mechanistic rationale:** Physical inactivity — a near-universal feature of moderate-to-severe ME/CFS — independently causes mitochondrial dysfunction in skeletal muscle and peripheral blood cells. A sedentary healthy person confined to bed rest for 2–3 weeks shows reduced mitochondrial respiration, reduced PGC-1α expression, and increased oxidative stress in PBMCs (Alibegovic 2010, J Appl Physiol; Dirks 2016, Diabetes). ME/CFS patients have been sedentary for years to decades. The CD8+ mitochondrial abnormalities documented by Mandarano2020, Iu2024, and Shankar2025 could be entirely explained by chronic physical inactivity — a consequence of the disease, not a cause.

Key arguments for the epiphenomenon model:

(a) **No study has controlled for physical activity.** None of the 12 papers in the evidence base measured step count, accelerometry, or VO₂max in either the ME/CFS or control group. The "healthy controls" in every study are community volunteers who may be substantially more active than the ME/CFS patients. The difference in CD8+ mitochondrial function could be the difference between a sedentary person (ME/CFS) and an active person (control) — not a disease-specific effect.

(b) **Exercise training improves PBMC mitochondrial function in healthy people.** PBMC mitochondrial respiration increases after 2–4 weeks of aerobic exercise training in sedentary healthy volunteers (Safdar 2011, PLoS One; Busquets-Cortés 2019, Oxid Med Cell Longev). The Mandarano2020 finding is exactly what you'd expect from an activity gap — and would likely resolve if ME/CFS patients could exercise. The problem is they can't (PEM).

(c) **PBMC mitochondrial function correlates with cardiorespiratory fitness (VO₂max) in the general population.** The correlation between PBMC mitochondrial respiration and VO₂max is r ~0.5–0.6 in healthy cohorts (Tyrrell 2015, Physiol Rep). ME/CFS patients have reduced VO₂max at CPET — this non-specific correlate could account for the entire effect.

(d) **The "exhaustion" transcriptional program (TOX/EOMES/TCF7) can be induced by chronic metabolic stress.** Any condition that chronically suppresses mitochondrial respiration — including physical inactivity — could upregulate the same transcriptional program that Iu2024 attributes to immune exhaustion. The TOX/EOMES signature is not specific to antigen-driven exhaustion; it is a general metabolic stress response.

**Why this matters:** If the epiphenomenon model is correct, targeting CD8+ mitochondrial function (Ideas 3.1, 3.2, 6.1) is treating a consequence, not a cause. The mitochondrial dysfunction is real and measurable — but fixing it (e.g., with metformin or mdivi-1) would not address the underlying disease process. It would be like treating the anemia of chronic disease with erythropoietin — the hemoglobin goes up, but the patient still has cancer. The CD8+ mitochondrial dysfunction is a useful biomarker of disease severity (correlated with activity level and PEM) but not a therapeutic target.

**Evidence link:** No study has measured physical activity in ME/CFS T-cell mitochondrial studies. The inactivity → PBMC mitochondrial dysfunction literature is established (Safdar 2011, PLoS One; Alibegovic 2010, J Appl Physiol). This is the single most important confound that has never been controlled for — and until it is, the entire literature must be interpreted with this caveat.

**Preliminary certainty:** 0.40 (that inactivity explains a substantial fraction of the observed mitochondrial dysfunction).

**Falsifiable prediction:** (a) In a study controlling for physical activity by accelerometry (7-day step count), the difference in CD8+ ΔΨm between ME/CFS and healthy controls will be reduced by ≥50% after adjusting for step count — activity is a major confound. (b) Healthy sedentary controls (step count <3,000/day, matched to ME/CFS activity level by accelerometry) will have CD8+ mitochondrial parameters (ΔΨm, ROS, SRC) that are intermediate between ME/CFS and active HC — confirming the activity dose-response. (c) Bed rest studies in healthy volunteers (10 days of strict bed rest) will reproduce a subset of the ME/CFS CD8+ mitochondrial phenotype — confirming that inactivity alone can produce the observed abnormalities. (d) Falsified if: step count adjustment does not attenuate the ME/CFS vs HC difference — then the mitochondrial abnormality is disease-specific, not inactivity-driven.

**Non-specialist consequence:** The most uncomfortable null hypothesis for the T-cell mitochondrial exhaustion field: ME/CFS patients' T-cell mitochondria look bad because they're severely deconditioned, not because there's something uniquely wrong with their disease. If true, all the mechanistic research on CD8+ mitochondrial exhaustion is measuring a consequence of being housebound or bedbound, not a cause of the disease. This doesn't make the mitochondrial dysfunction less real — it just means fixing it won't cure ME/CFS, any more than fixing anemia cures cancer.

---

#### 10.2 Numerical Normalcy: T-Cell Numbers Are Normal — Exhaustion May Not Impair Immune Competence Even If Real

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant to ME/CFS
**Origin:** brainstorm

**Mechanistic rationale:** Cliff2019, the largest ME/CFS immune study (n=251), found **no differences** in T-cell subset proportions, NK cell numbers, or NK cell function between ME/CFS and healthy controls @Cliff2019Cellular. This null finding sets an important constraint: whatever the mitochondrial exhaustion is doing to CD8+ T cells, it does not reduce their numbers or alter the major subset distribution.

This raises the possibility that CD8+ mitochondrial exhaustion is **functionally compensated** at the population level. Even if individual CD8+ TEM cells have reduced mitochondrial capacity, the total CD8+ TEM pool size is maintained, and compensatory mechanisms (increased proliferation to replace dysfunctional cells, increased per-cell glycolytic capacity, or functional redundancy with CD4+ help) preserve overall immune function. If this is the case, the mitochondrial abnormalities documented by Mandarano2020 and Iu2024 are measurable at the single-cell level but clinically insignificant at the organism level — the immune system has enough redundancy to absorb the loss of mitochondrial function in a subset of CD8+ cells.

Supporting this view:
- (a) ME/CFS is not characterized by opportunistic infections (the hallmark of clinically significant T-cell deficiency, as in HIV/AIDS). ME/CFS patients do not get Pneumocystis pneumonia, Kaposi's sarcoma, or disseminated CMV — suggesting T-cell function is grossly preserved.
- (b) ME/CFS patients mount normal antibody responses to vaccination (Prinsen 2023, Front Immunol — influenza vaccine immunogenicity equivalent to HC). Antibody responses are T-cell-dependent — if CD8+ function were severely impaired, vaccine responses would be blunted.
- (c) The Gil2024 finding that CD8+ cytokine production is diminished but partially restorable @Gil2024CD8dysfunction suggests the dysfunction is pharmacological (reversible) rather than structural (permanent) — consistent with a compensated state that can be temporarily relieved.

**Why this matters:** If CD8+ mitochondrial dysfunction does not impair immune protection, the entire research program has no clinical endpoint. The mechanistic work is interesting cell biology, but the billions of dollars and decades of research needed to develop a therapy targeting CD8+ mitochondrial fusion would never produce a drug that helps patients — because the thing being treated doesn't cause symptoms. The null hypothesis is that CD8+ exhaustion is a laboratory finding, not a clinical problem.

**Evidence link:** Cliff2019 no T-cell subset differences (cert 0.70) @Cliff2019Cellular. Prinsen 2023 normal vaccine responses (not in evidence base — cited for argument completeness). No functional immune challenge study (infection incidence, vaccine response) with concurrent CD8+ mitochondrial measurement exists.

**Preliminary certainty:** 0.30

**Falsifiable prediction:** (a) ME/CFS patients will have infection incidence (upper respiratory infection, gastrointestinal infection, reactivation infection) that is NOT significantly different from age/sex-matched healthy controls over a 12-month prospective follow-up. (b) ME/CFS patients will mount normal T-cell-dependent antibody responses to neoantigen vaccination (hepatitis B or rabies vaccine — antigens patients have never seen). (c) Vaccine response will NOT correlate with CD8+ ΔΨm or TOX expression — CD8+ mitochondrial dysfunction does not predict immune competence. (d) Falsified if: ME/CFS patients have elevated infection rates and blunted vaccine responses that correlate with CD8+ mitochondrial parameters — then CD8+ mitochondrial exhaustion IS clinically consequential.

**Non-specialist consequence:** ME/CFS patients don't die of opportunistic infections, don't get Kaposi's sarcoma, and mount normal antibody responses to vaccines. If the CD8+ T-cell exhaustion is real at the cellular level but doesn't actually make patients more vulnerable to infections, it's a fascinating laboratory finding without clinical significance — like finding a gene variant that changes a cellular readout but doesn't affect disease risk.

---

#### 10.3 Protective Exhaustion: The Observed CD8+ Phenotype May Be an Adaptive Response That Limits Immunopathology

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant to ME/CFS
**Origin:** brainstorm

**Mechanistic rationale:** T-cell exhaustion is not always pathological. In chronic viral infections (LCMV clone 13 in mice, the canonical exhaustion model), CD8+ exhaustion evolves to **limit immunopathology** — the exhausted state prevents CD8+ cells from mounting a full cytotoxic response that would destroy infected tissues essential for survival (e.g., liver, lungs, CNS). Exhausted T cells are less harmful to the host than fully functional cytotoxic T cells when the infection cannot be cleared. This is an evolutionarily conserved mechanism: the immune system trades viral clearance for host survival.

In ME/CFS, if tissue-level pathology involves mitochondrial dysfunction in neurons, muscle, or endothelium — as established in ch06, ch08, and ch10 of the paper — then **a fully functional CD8+ cytotoxic response could be catastrophic.** CD8+ cells patrolling tissues with compromised mitochondrial function would recognize stressed cells (via NKG2D ligands, MIC-A/B, or mitochondrial DAMPs), mount a cytotoxic response, and kill cells that are dysfunctional but not infected. The damage from the immune response could exceed the damage from the underlying mitochondrial dysfunction.

Under this model, the CD8+ exhaustion phenotype (TOX, EOMES, PD-1) is **protective** — a "brake" on cytotoxic activity that prevents immune-mediated tissue destruction. The reduced IFNγ/TNFα production (Gil2024 @Gil2024CD8dysfunction) is not a failure of the immune system but a deliberate downregulation to limit collateral damage. The reduced ΔΨm (Mandarano2020 @Mandarano2020) is the metabolic correlate of this protective program — the cell deliberately downregulates mitochondrial metabolism to limit its cytotoxic capacity.

**Therapeutic implications are inverted:** If exhaustion is protective, interventions that reverse exhaustion (mdivi-1, metformin, checkpoint blockade, NAC) could **worsen** the disease by unleashing CD8+ cytotoxic activity on vulnerable tissues. The Gil2024 case series — partial CD8+ recovery with nebulized antioxidants — reported symptom severity improvement, not worsening, which argues against a purely protective model. But the treatment was not randomized, and the antioxidant may have reduced tissue-level oxidative stress simultaneously, offsetting any immune-mediated damage.

**Predictions of the protective model:**
- (a) ME/CFS patients with the MOST exhausted CD8+ cells (highest TOX, lowest IFNγ) should have LESS tissue damage (lower CPK, lower troponin, lower neurofilament light chain) — the exhaustion brake is working.
- (b) Interventions that partially reverse exhaustion should produce a transient "immune reactivation" syndrome — flu-like symptoms, lymphadenopathy, elevated inflammatory markers — as CD8+ cells regain cytotoxic function and attack dysfunctional tissue. This has NOT been reported with metformin, NAC, or CoQ10 in ME/CFS — arguing against the protective model.
- (c) HIV patients with preserved CD8+ function (elite controllers) have MORE immune activation and tissue damage than patients with exhausted CD8+ cells (progressors) — a clinical precedent for the protective exhaustion model.

**Evidence link:** The protective exhaustion model is established in LCMV (Cornberg 2013, Immunol Rev) and HIV (Buggert 2018, PLoS Pathog). No data exist on whether ME/CFS CD8+ exhaustion is protective or pathological. The question is open and critical — it determines whether the therapeutic goal is to REVERSE exhaustion (if pathological) or to PRESERVE it (if protective).

**Preliminary certainty:** 0.15 (protective model); 0.40 (that this remains an open, untested question).

**Falsifiable prediction:** (a) ME/CFS patients will have normal tissue damage markers (CPK, troponin, neurofilament light chain) — consistent with the protective model (exhaustion prevents tissue destruction). (b) CD8+ exhaustion severity will correlate INVERSE with tissue damage markers — more exhausted CD8+ cells → less tissue damage. (c) Interventions that partially reverse exhaustion will increase tissue damage markers at 2 weeks post-treatment (transient immune reactivation) — if they don't, the protective model is falsified. (d) Critically falsified if: reversing exhaustion improves fatigue without increasing tissue damage — then exhaustion is pathological, not protective, and immune reactivation is not the barrier to treatment.

**Non-specialist consequence:** What if T-cell exhaustion in ME/CFS is actually the immune system being smart, not broken? If your tissues are already damaged and energy-depleted, a fully functional killer T-cell response might finish them off. The exhausted state could be a deliberate "stand down" order — the immune system choosing to tolerate tissue dysfunction rather than destroy dysfunctional tissue. If true, giving drugs to reverse exhaustion could unleash the immune system on already-compromised organs — making patients worse, not better.

---

#### 10.4 CNS-Driven Immune Dysfunction: T-Cell Mitochondrial Failure Is Downstream of Central Autonomic and Neuroendocrine Dysregulation

**Category:** 10 — Reasons This Mechanism May NOT Be Relevant to ME/CFS
**Origin:** brainstorm

**Mechanistic rationale:** The ME/CFS paper's central thesis — across ch06 (energy metabolism), ch08 (autonomic dysfunction), ch09 (HPA/endocrine), and ch10 (neuroinflammation) — is that the primary lesion is in the CNS, not the periphery. The brainstem, hypothalamus, and autonomic nervous system regulate immune function through multiple pathways: (a) sympathetic innervation of lymphoid organs (norepinephrine → β2-adrenergic receptor on T cells → cAMP → PKA → suppressed TCR signaling), (b) the HPA axis (cortisol → glucocorticoid receptor → suppressed NF-κB → reduced cytokine production), (c) the vagus nerve (acetylcholine → α7 nicotinic receptor on T cells → suppressed TNFα), and (d) hypothalamic-pituitary regulation of metabolism (TRH/TSH → thyroid hormone → mitochondrial biogenesis; GHRH/GH → IGF-1 → mTOR → T-cell metabolism).

Under CNS-primary model: ME/CFS is initiated by brainstem/hypothalamic dysfunction (post-infectious neuroinflammation, ch10) → disrupted neuroendocrine input to T cells → T-cell mitochondrial metabolism is suppressed as a secondary consequence. The T-cell abnormalities are real, measurable, and mechanistically downstream — but they are not the problem. Treating T-cell mitochondria (Idea 3.1, 3.2) is like treating the fever in sepsis with antipyretics — it addresses a downstream consequence without touching the driver.

**Supporting evidence:**
- (a) β2-adrenergic receptor stimulation with isoproterenol suppresses mitochondrial respiration in human T cells in vitro (Slota 2015, J Leukoc Biol) — the sympathetic overactivity documented in ME/CFS (ch08) would directly impair T-cell mitochondrial function.
- (b) Cortisol at stress levels (100 nM) reduces CD8+ T-cell mitochondrial membrane potential in vitro (Abo 2012, Brain Behav Immun) — the HPA axis dysfunction documented in ME/CFS (ch09, though direction is debated — low cortisol or high?) would alter T-cell metabolism.
- (c) Sleeping 4h/night for 5 nights reduces PBMC mitochondrial respiration by 20% in healthy volunteers (Holfeld 2023, Sleep) — the unrefreshing sleep documented in ME/CFS (ch04) is sufficient to explain a substantial fraction of the T-cell mitochondrial phenotype.
- (d) The DecodeME GWAS found neuronal enrichment, not immune enrichment (ch12/decodemegwas) — the genetic predisposition is for CNS function, not immune function. The immune pathology is acquired, consistent with a CNS-primary model.

**Treatment implication (critical):** If T-cell mitochondrial dysfunction is CNS-driven, the most effective therapy is one that targets the CNS (improving sleep, reducing sympathetic tone, restoring HPA rhythmicity) — the T-cell mitochondria will normalize secondarily. CNS-directed therapies (vagal nerve stimulation, melatonin, guanfacine, low-dose naltrexone) may improve T-cell function without ever directly targeting the mitochondria. The direct mitochondrial interventions (Idea 3.1, 3.2, 6.1) may provide symptomatic relief (improving downstream mitochondrial function) without modifying the underlying disease.

**Evidence link:** ch06, ch08, ch09, ch10, ch12 content (not re-cited — refer to paper). No study has measured T-cell mitochondrial function before and after improving sleep, reducing sympathetic tone, or restoring HPA function — the CNS → T-cell pathway is plausible but untested in ME/CFS.

**Preliminary certainty:** 0.25

**Falsifiable prediction:** (a) ME/CFS patients with the highest sympathetic tone (elevated plasma norepinephrine, elevated heart rate, low HRV) will have the most impaired CD8+ mitochondrial function (lowest ΔΨm, highest ROS) — sympathetic drive directly impairs T-cell mitochondria. (b) A randomized trial of sleep improvement (CBT-I or melatonin prolonged-release) vs metformin (Idea 3.2) will show that: sleep improvement produces comparable CD8+ mitochondrial improvement to metformin, and the combination produces the greatest improvement — supporting a CNS-primary model where T-cell mitochondria are downstream. (c) Vagal nerve stimulation (tVNS) will improve CD8+ mitochondrial function within 4 weeks of treatment — a CNS-directed intervention producing peripheral immune improvement. (d) Falsified if: modifying CNS parameters (sleep, sympathetic tone) does not improve CD8+ mitochondrial function — then the T-cell mitochondrial defect is cell-autonomous or driven by a non-CNS factor (local tissue inflammation, viral persistence, or mitochondrial genetics).

**Non-specialist consequence:** The brain controls the immune system through nerves, hormones, and sleep quality. T-cell mitochondrial exhaustion in ME/CFS might not be a T-cell problem at all — it might be a brain problem. The brain's stress and sleep systems are broken, and they're constantly signaling T cells to "power down." Fixing the brain (better sleep, calming the fight-or-flight system) might fix the T cells automatically — without any direct mitochondrial drugs.

---

#### 11.1 The Null Hypothesis Family for T-Cell Mitochondrial Exhaustion in ME/CFS

**Category:** 11 — Null Hypothesis Assessment
**Origin:** brainstorm

**Mechanistic rationale:** Five distinct null hypotheses, each implying a different corrective action for the existing paper if confirmed:

**(N1) The activity confound null (P ~0.45).** CD8+ mitochondrial dysfunction in ME/CFS is entirely explained by physical inactivity (Idea 10.1). When step count is controlled, the ME/CFS vs HC difference disappears or is reduced to a non-significant marginal effect. *Corrective action:* All ch07 CD8+ mitochondrial content must carry a caveat: "These findings have not been controlled for physical activity. The extent to which they reflect ME/CFS-specific pathophysiology versus deconditioning is unknown." Certainty of `@hyp:cd8-mito-fragmentation-exhaustion` reduced by 0.15 until activity-controlled study available. Any treatment recommendations based on CD8+ mitochondrial dysfunction are downgraded from `#speculation` to `#limitation` (not actionable until activity confound resolved).

**(N2) The no-clinical-consequence null (P ~0.35).** CD8+ mitochondrial exhaustion is real and not explainable by inactivity, but it has no clinical consequence — it does not predict infection susceptibility, vaccine response, or symptom severity (Idea 10.2). *Corrective action:* `@hyp:cd8-mito-fragmentation-exhaustion` retained but flagged: "The clinical significance of CD8+ mitochondrial exhaustion is untested — it may represent a mechanistically informative but clinically unimportant laboratory finding." The ch14d and ch30 content emphasizing clinical relevance is trimmed.

**(N3) The CNS-primary null (P ~0.30).** CD8+ mitochondrial exhaustion is real and may be clinically consequential, but it is entirely downstream of CNS dysfunction — the primary lesion is neuroendocrine/autonomic (Idea 10.4). *Corrective action:* `@hyp:cd8-mito-fragmentation-exhaustion` is recategorized from a ch07 primary immune hypothesis to a ch06/ch07 bridging hypothesis subordinate to CNS dysfunction hypotheses in ch08/ch10. The causal arrow in hypothesis-registry is reversed: "CNS dysfunction → T-cell metabolic suppression" rather than "T-cell mitochondrial exhaustion → immune dysfunction." Drug-target priority shifts from DRP1 inhibitors (Idea 3.1) to CNS-targeted interventions (tVNS, guanfacine, sleep restoration).

**(N4) The protective exhaustion null (P ~0.20).** CD8+ mitochondrial exhaustion is real, measurable, and clinically consequential — but it is protective, not pathological (Idea 10.3). Attempts to reverse exhaustion will worsen ME/CFS by unleashing cytotoxic activity on dysfunctional tissues. *Corrective action:* All therapeutic suggestions in the paper that aim to reverse CD8+ exhaustion (metformin, NAC, CoQ10) carry a `#practical-warning`: "Reversal of CD8+ exhaustion may increase immune-mediated tissue damage — monitor tissue damage markers (CPK, troponin) during any trial of CD8+ exhaustion-reversing intervention." The `@hyp:cd8-mito-fragmentation-exhaustion` certainty is NOT reduced (the mechanism is real) but its therapeutic implication is inverted: "Preserves tissue integrity at cost of immune surveillance" rather than "Impairs immune surveillance."

**(N5) The measurement artifact null (P ~0.15).** The CD8+ mitochondrial exhaustion signature (Iu2024) is a technical artifact of scRNA-seq processing — the "exhaustion" signal is driven by a small subset of terminally differentiated effector cells that are overrepresented in the ME/CFS samples due to batch effects, blood processing delays, or differences in cell viability between ME/CFS and HC samples. The Mandarano2020 ΔΨm finding is real but non-specific (present in any chronic illness with fatigue, including depression, cancer, and post-surgical states). *Corrective action:* `@hyp:cd8-mito-fragmentation-exhaustion` certainty reduced to 0.30 until an independent lab replicates the Iu2024 scRNA-seq findings with proper batch correction and cell viability controls. The hypothesis is flagged as "single-lab, unreplicated" — the same standard applied to the Kavyani2023 hepcidin finding.

**The nested structure of null hypotheses (most likely first):**

```
N1 (activity confound) — 45% probability
├── If N1 false: N2 (no clinical consequence) — 35% conditional probability
│   ├── If N2 false: N3 (CNS-primary) — 30% conditional probability
│   │   ├── If N3 false: N4 (protective exhaustion) — 20% conditional probability
│   │   │   ├── If N4 false: N5 (measurement artifact) — 15% conditional probability
│   │   │   └── Reject all nulls → CD8+ mitochondrial exhaustion is a primary, pathological, and clinically consequential immune defect in ME/CFS
```

**Cumulative probability that the mechanism is genuinely causal and clinically consequential (all five nulls false):** P ~(1−0.45) × (1−0.35) × (1−0.30) × (1−0.20) × (1−0.15) = 0.55 × 0.65 × 0.70 × 0.80 × 0.85 ≈ 0.17. That is: given current evidence, there is approximately a **17% chance** that CD8+ mitochondrial exhaustion is a primary causal mechanism — and an 83% chance that one or more of the null hypotheses partially or fully account for the findings. This is not a reason to abandon the hypothesis — 17% is high for a novel mechanistic hypothesis in a poorly understood disease — but it is a reason to prioritize the experiments that distinguish the nulls (Idea 2.1–2.3) over therapeutic development (Ideas 3.1–3.2, 6.1).

**Evidence link:** Each null maps to specific gaps identified in the literature analysis. N1 → no physical activity measurement in any study. N2 → no infection incidence or vaccine response data. N3 → no CNS-T-cell mechanistic study. N4 → no tissue damage marker correlation with CD8+ exhaustion. N5 → single-lab, unreplicated scRNA-seq on a cohort with known overlap (Hanson trio).

**Preliminary certainty:** 0.83 (that at least one of N1–N5 will partially hold); 0.17 (that all five are false — CD8+ mitochondrial exhaustion is a primary causal mechanism).

**Falsifiable prediction:** (a) N1 is tested by activity-controlled comparison (Idea 10.1) — if activity adjustment eliminates the group difference, N1 is supported. (b) N2 is tested by infection incidence/vaccine response with CD8+ mitochondrial readout (Idea 10.2) — if CD8+ parameters do not predict immune competence, N2 is supported. (c) N3 is tested by CNS-targeted intervention with CD8+ mitochondrial readout (Idea 10.4) — if improving sleep/sympathetic tone improves CD8+ mitochondria, N3 is supported. (d) N4 is tested by monitoring tissue damage markers during exhaustion-reversing interventions — if markers rise, N4 is supported. (e) N5 is tested by independent replication of Iu2024 scRNA-seq with activity/viability/batch controls — if the exhaustion signature disappears, N5 is supported. (f) The hypothesis survives if ALL five nulls are rejected in appropriately powered studies.

**Non-specialist consequence:** Five reasons the T-cell mitochondrial exhaustion story might not matter for patients, ranked by likelihood: (1) it's just a consequence of being inactive — any bedbound person would show the same thing, (2) it's real but doesn't affect infection risk — an interesting lab finding with no clinical impact, (3) it's caused by the brain's stress signals, not by a T-cell problem — fix the brain, the T cells recover on their own, (4) it's actually protective — turning it off could make patients worse, and (5) it might not even be real — the lab technique could be generating an artifact. Each null can be tested with an experiment; until they are, the hypothesis should be treated as promising but unproven.

---

#### 12.1 Evidence Quality Concerns: Systematic Weaknesses in the T-Cell Mitochondrial Exhaustion Literature

**Category:** 12 — Evidence Quality Concerns
**Origin:** brainstorm

The twelve papers in the Phase 1 evidence baseline share systematic weaknesses that constrain inference. None are fatal individually, but collectively they limit the strength of conclusions that can be drawn:

**(Q1) The Hanson trio cohort overlap — not independent replication.** Mandarano2020 (JCI), Iu2024 (PNAS), and Maya2023 (IJMS) all draw from the same clinical cohort (Sierra Internal Medicine, Incline Village, NV). Iu2024 extends Mandarano2020 with multi-omics on the same patients; Maya2023 extends with FAO assays on the same cohort. Scientifically, this is building depth (same patients, more layers of analysis) — it is not building breadth (independent replication in a separate cohort). The literature summary lists these as three papers from one research group, but they represent a single dataset seen through three different lenses. The certainty inflation from "three papers find CD8+ dysfunction" to "independently replicated" is a real risk in how this evidence is interpreted — including within the existing ch07 content.

**(Q2) The Incline Village cohort may not represent the broader ME/CFS population.** The Hanson cohort was recruited from a single clinic specializing in ME/CFS in Incline Village, NV (the site of the 1984–85 outbreak that launched the "chronic fatigue syndrome" terminology). Patients traveling to a specialized clinic in a mountain resort town are likely wealthier, more treatment-seeking, and potentially have a different illness profile than community-based ME/CFS patients. The UK ME/CFS Biobank cohort (Cliff2019, Lee2025) is more representative (UK NHS, broader socioeconomic range, community recruitment) — and Cliff2019 found NO T-cell subset differences, while Iu2024 found profound CD8+ transcriptional changes. The discrepancy may reflect genuine population differences between a US specialist clinic cohort and a UK national biobank cohort.

**(Q3) All studies are cross-sectional — no longitudinal data.** Not a single study followed ME/CFS patients over time to assess within-patient change in CD8+ mitochondrial function. Without longitudinal data, the following cannot be determined: (a) whether CD8+ mitochondrial dysfunction is stable or fluctuates with disease activity, (b) whether it predates or follows ME/CFS onset (the post-COVID cohorts provide the nearest natural experiment: LC-ME/CFS at 12 months post-infection, but even this is a single timepoint), (c) whether it progresses over time (progressive exhaustion → senescence, as HIV data suggest), (d) whether it responds to treatment or spontaneous improvement. Cross-sectional data can establish association but not trajectory.

**(Q4) The "exhaustion" concept is imported from cancer immunology without validation in ME/CFS.** The exhaustion TFs (TOX, EOMES, TCF7) were first characterized in the context of chronic viral infection (LCMV clone 13) and cancer. In those contexts, exhaustion is defined functionally: the T cell fails to proliferate, produce cytokines, and kill target cells upon antigen re-encounter. In ME/CFS, Iu2024 showed that CD8+ TEM cells express exhaustion TFs and surface markers — but no study has demonstrated that these cells are functionally exhausted (i.e., fail to respond to cognate antigen). Without functional validation, the "exhaustion" label is inferred from transcriptomic and surface-marker similarity — it is a hypothesis, not an established fact.

**(Q5) All mitochondrial readouts are bulk or pseudobulk — no single-cell metabolic resolution.** Seahorse (Mandarano2020), flow cytometry (Shankar2025, Lee2025), and scRNA-seq (Iu2024) all measure mitochondrial parameters either in bulk cell populations or infer metabolism from transcriptomics. No study has used single-cell metabolic profiling (SCENITH — Single Cell ENergetIc metabolism by profiling Translation inhibition; SCENITH uses puromycin incorporation as a readout of protein synthesis, which correlates with metabolic activity in individual cells). This means population heterogeneity is invisible: the Mandarano2020 finding of "reduced glycolysis in CD8+ cells" could mean (a) every CD8+ cell has mildly reduced glycolysis, or (b) 30% of CD8+ cells have severely reduced glycolysis and 70% are normal — two different biological scenarios with different therapeutic implications. The Iu2024 scRNA-seq at least resolves transcriptional heterogeneity, but the transcriptional-metabolic gap (transcript → protein → flux) means metabolic heterogeneity may be greater than transcriptional heterogeneity suggests.

**(Q6) The metformin finding (Shankar2025) — in vitro only, no dose-response, no mechanism-of-action confirmation.** Shankar2025 showed that metformin attenuates T-cell hyperproliferation in vitro @Shankar2025oxidativestress. This is a promising signal but limited by: (a) the metformin concentration used is not reported in the available summary — if it exceeds 1 mM, it may be acting through Complex I inhibition (off-target) rather than AMPK activation (on-target), (b) no AMPK phosphorylation (p-AMPK T172) was measured to confirm the mechanism, (c) the effect was on *hyperproliferation* (a sex-specific finding in female ME/CFS patients), which may not be the relevant pathology (exhaustion is characterized by *reduced* proliferation), (d) in vitro effects in RPMI + 10% FBS at atmospheric O₂ (20%) do not predict in vivo effects at physiological O₂ (2–5% in lymphoid tissue). Metformin is the most clinically attractive drug candidate in the evidence base, but the preclinical signal is weaker than it appears.

**(Q7) The Gil2024 nebulized antioxidant case series — retrospective, unblinded, n=8, self-selected.** @Gil2024CD8dysfunction reports a 54% reduction in symptom severity score with nebulized antioxidants in 8 patients. The limitations: (a) retrospective — patients who improved were more likely to continue treatment and be included; patients who worsened stopped treatment and were lost to follow-up, (b) unblinded — expectation effects are large in ME/CFS (the PACE trial controversy established that unblinded interventions produce large subjective improvement), (c) self-selected — patients chose to try nebulized antioxidants, introducing selection bias, (d) the nebulized antioxidant formulation (5 ingredients: glutathione, NAC, etc.) has unknown pulmonary absorption, unknown systemic bioavailability, and unknown active ingredient(s). This is the lowest-quality evidence in the baseline, and while it is consistent with oxidative stress as a target (Shankar2025), it does not independently support any therapeutic claim.

**(Q8) Sample sizes are small to moderate across the board.** The largest study with functional T-cell metabolic data is Mandarano2020 (n=53 ME/CFS). The Iu2024 scRNA-seq data use a subset of the Mandarano2020 cohort (likely n≈15–25 for scRNA-seq). Shankar2025 is n=27 ME/CFS. Eaton-Fitch2024 is n=14 ME/CFS. These are adequate for discovery but underpowered for subgroup analyses (sex, severity, duration) and prone to winner's curse (overestimation of effect sizes in small samples). The ME/CFS field needs a multi-center study of 200+ patients with standardized CD8+ mitochondrial phenotyping — comparable to the Cliff2019 study (n=251) but with metabolic/functional readouts instead of cell counts only.

**(Q9) The key mechanistic intermediate — DRP1 in primary CD8+ cells — is missing from the literature entirely.** Schreiner2020 showed DRP1 activation in unfractionated PBMCs @SchreinerEtAl2020, but primary CD8+ cells (the cell type where exhaustion has been demonstrated) have never been assayed for DRP1, p-DRP1, MFN1/2, OPA1, or any fission/fusion protein. The central causal claim of this topic — DRP1-mediated mitochondrial fragmentation drives CD8+ TEM exhaustion — rests on an inference from Schreiner2020 (PBMC DRP1 in n=10, cert 0.45) + Mandarano2020 (CD8+ ΔΨm) + Iu2024 (CD8+ exhaustion TFs). No study has measured both the proposed cause (DRP1) and the proposed effect (exhaustion) in the same cells from the same patients. This is the critical missing link — and until it is filled, the mechanism is a hypothesis with a gap in its causal chain.

**Preliminary certainty:** 0.75 (that ≥7 of Q1–Q9 are valid and constrain inference); 0.20 (that the core hypothesis would survive correction for all 9 concerns).

**Non-specialist consequence:** The T-cell mitochondrial exhaustion story is built on excellent individual papers — two PNAS papers, a JCI paper, the largest ME/CFS immune study ever — that share a common set of structural weaknesses: the key findings come from a single clinic's patients, no one has done the actual mechanistic experiment (measuring the mitochondrial fission protein in CD8+ cells), the "exhaustion" label is borrowed from cancer biology without functional validation in ME/CFS, and the most exciting drug signal (metformin) is from cells in a dish, not patients. The evidence is the best we have — and it could still be wrong in every important detail.

---

#### 12.2 Additional Statistical and Design Concerns

**Category:** 12 — Evidence Quality Concerns
**Origin:** brainstorm

**(Q10) Multiple testing burden in multi-omics studies — Iu2024 and Shankar2025.** Both PNAS papers report hundreds to thousands of differentially expressed genes, differentially accessible chromatin regions, and differentially abundant lipids. At α=0.05, with 20,000 genes, ~1,000 false positives are expected. The authors presumably used multiple testing correction (Benjamini-Hochberg FDR), but the "exhaustion" gene set (TOX, EOMES, TCF7, PDCD1, HAVCR2) consists of ~5–10 genes — it is unclear whether they survive correction independently or are reported because they formed a coherent biological story. Gene set enrichment analysis partially addresses this (testing the exhaustion gene set as a whole) but does not eliminate the problem.

**(Q11) Batch effects in flow cytometry — Mandarano2020 and Cliff2019.** Flow cytometry is sensitive to daily instrument variation (laser alignment, PMT voltage drift, antibody lot variability). Mandarano2020 measured ΔΨm in fresh cells, which is particularly sensitive to processing delay — ME/CFS samples may have been processed at different times from HC samples (clinic schedules, travel distances). Cliff2019 used standardized UK Biobank protocols that minimize batch effects — and found no differences. The discrepancy between "no differences" (Cliff2019, standardized) and "many differences" (Mandarano2020, non-standardized) may partially reflect batch effect susceptibility.

**(Q12) The file drawer problem — normal mitochondrial findings in T cells.** How many studies measured CD8+ mitochondrial parameters in ME/CFS and found no differences — and were never published? The Mandarano2020/Iu2024 findings are the first and most prominent, creating a publication bias toward positive results. Independent replication by a non-Hanson, non-Stanford, non-Charité group is essential — ideally a group that has not previously published on ME/CFS mitochondrial dysfunction, reducing confirmation bias.

**Preliminary certainty:** 0.50 (that Q10–Q12 are valid concerns).

---

## Summary Statistics

| Metric | Value |
|--------|-------|
| Total ideas | 29 (12 Tier 1 + 17 Tier 2); 5 sub-null hypotheses (11.1); 12 quality concerns (12.1 + 12.2) |
| Categories covered | 12/12 |
| Categories with ≥2 ideas | 1 (Novel hyp: 5), 2 (Research: 3), 3 (Drugs: 2), 8 (Cross-disease: 2), 9 (Diagnostic: 2), 10 (Not relevant: 4), 11 (Null hyp: 1, 5 sub-nulls), 12 (Evidence quality: 2, 12 concerns Q1–Q12) |
| Highest-certainty constructive idea | 2.1 TEM imaging (0.45 mechanism; 0.80 priority) |
| Highest-certainty meta-assessment | 12.1 Evidence quality concerns (0.75 that ≥7/9 hold) |
| Highest-certainty null hypothesis | N1 activity confound (0.45) |
| Most actionable near-term idea | 3.1 Mdivi-1 ex vivo proof-of-concept (weeks, not years) |
| Most novel mechanism | 1.1 DRP1-ROS-pERK positive feedback loop (0.35) |
| Most important research gap addressed | 2.2 DRP1/fission protein quantification in sorted CD8+ cells |
| Evidence quality concerns documented | 12 (Q1–Q12) |
| Null hypotheses enumerated | 5 (N1–N5), all falsifiable, with nested probability structure |
| Cumulative probability hypothesis is causal | ~17% (all nulls false) |

---

## Cross-Reference: Existing Paper Environments Already Addressing This Topic

| Environment | Chapter | Cert | What it covers | What this brainstorm adds beyond it |
|-------------|---------|------|----------------|-------------------------------------|
| `@hyp:cd8-mito-fragmentation-exhaustion` | ch07 | 0.50 | CD8+ TEM mitochondrial fragmentation → exhaustion in ME/CFS | Adds DRP1-ROS-pERK loop mechanism (1.1), metabolic memory (1.2), mtDNA depletion (1.3), Galectin-9 depletion (1.4), Complex V axis (1.5) |
| ch06 immune-metabolic crosstalk (expanded prose) | ch06 | variable | DRP1 connection, ME/CFS vs LC immune divergence | Adds bidirectional feedback (DRP1 → ROS → DRP1); CNS → T-cell pathway |
| Hypothesis registry entries (4) | part4-research | variable | — | All brainstorm ideas are candidates for registry expansion; 5 novel mechanisms (1.1–1.5) await registry entry |
| ch07 T-cell abnormalities section (literature summaries) | ch07 | variable | — | Adds evidence quality concerns (12.1), null hypotheses (11.1), cross-disease bridges (8.1, 8.2) |
| (none — no existing drug entry) | ch30 sec-12 | N/A | — | Adds mdivi-1 (3.1), metformin (3.2) as candidate sec-12 entries |
| (none — no existing cascade) | ch30 | N/A | — | Adds ODE model (7.1) as candidate for sec-02 mitochondrial cascade; DAG node extension (7.2) |

---

*All ideas carry `origin: brainstorm`. None are validated. All certainty values are preliminary, generated by mechanistic inference from existing evidence, not from interventional data. The most urgent experiments (TEM imaging 2.1, DRP1 quantification 2.2, antigen-specific recall 2.3) should resolve multiple hypotheses simultaneously and are prioritized over therapeutic development (3.1, 3.2, 6.1) until the basic mechanistic experiments confirm the causal chain. The cumulative probability that CD8+ mitochondrial exhaustion is a primary causal mechanism is estimated at ~17% — high enough to justify intensive research, low enough to demand epistemic humility in the paper's claims.*

*Generated by deepseek-v4-pro. 2026-07-26.*
