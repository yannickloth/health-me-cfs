# Brainstorm: AhR–Tryptophan–Gut-Microbiome Axis in ME/CFS

**Date:** 2026-08-22
**Origin:** integrate-topic Phase 4 (tryptophan-ahr-gut-microbiome)
**Phase 2 decision:** PROCEED — ≥1 paper ≥0.60 (Esteban2026 0.70, Rothhammer2019 0.64); ≥2 ≥0.40 (7 papers); 30% <0.40. Clinical relevance MEDIUM (mechanism/barrier/immune axis, not a drug). Anchor Esteban2026 is subgroup-specific (neurocognitive), partial-null, not independently replicated.
**Brainstorm scope (task-directed):** categories **1–2** (hypotheses, research directions) + categories **10–12** (critical/null/evidence-quality) are highest value. Categories **3–9** (drug/supplement/intervention) generated ONLY where genuinely tied to the mechanism (dietary indole/ligand modulation) and explicitly flagged **WEAK-EVIDENCE** — no ME/CFS interventional data exists.
**Active-caps compliance:** environments all allowed; #hypothesis-box allowed; certainty bumps per normal rules; ME/CFS mechanistic claims capped ~0.40 (subgroup-only anchor + 0 direct immune-readout ME/CFS studies); severity applicability stated or "unknown" where not specified.

All ideas below carry `origin: brainstorm`. Certainties are provisional Phase 4 self-assessments, evidence-grade conservative (0.05–0.40 range for ME/CFS-specific mechanistic claims); they MUST be reassessed in Phase 5.

---

## Evidence base (verified)

**Anchor + supportive papers (in bib):**
- Esteban2026AhRGutMicrobiome (ME/CFS direct, discounted 0.70) — cross-sectional metabolomics + stool AhR-reporter; 9 elevated stool metabolites incl. 3 AhR agonists; **partial null**: no overall AhR-activation difference, elevated only in neurocognitive-symptom subgroup.
- Rothhammer2019AhRImmunity (0.64, landmark review) — AhR integrates dietary/microbial/metabolic cues; ligand-, cell-, context-specific.
- Chojnacki2025IBSCFSTryptophan (comorbid IBS+CFS) — elevated urinary quinolinic/xanthurenic acid + 3-indoxyl sulfate; fatigue correlates with xanthurenic + quinolinic acid.
- Tian2024IndoleMEcfsPreprint (0.35), Thirugnanam2026DietaryIndolesAhR (0.25, animal), Yan2026DendrobiumTryptophanFatigue (0.23, animal).
- TorrelliDiljohn2026TryptophanSignaling — tryptophan as ONE distributed signaling network (kynurenine, serotonin, indole branches all feed AhR).
- Morris2016TRYCATNeuroimmune, Caccamo2013AhRVariantSRI (null: AHR Arg554Lys not differently distributed in CFS).

**Harm context (must gate any intervention idea):**
- Tian2026AhRNeuroprotection — environmental PAH ligands = sustained neurotoxic AhR; microbial indoles = transient neuroprotective AhR (SAhRM concept). AhR is bidirectional: ligand identity determines protective vs toxic outcome.

**Existing paper content the axis connects to (already integrated, unmodified by this cycle):**
- `@hyp:ahr-gut-microbiome-axis` (ch12, cert 0.40) — the hypothesis this brainstorm feeds.
- `@ach:esteban2026-ahr-neurocognitive`, `@oq:ahr-causality-subgroup`, `@lim:ahr-evidence-subgroup-specific` (ch12).
- ch12 gut-microbiome: `@ach:butyrate-deficiency`, `@spec:butyrate-treg`, `@spec:butyrate-zonulin`, `@ach:bacterial-translocation`, `@hyp:severity-gut-permeability`, `@sec:gut-brain`, `@sec:gut-brain-metabolic`.
- kynurenine network: `@spec:ch15-kynurenine-nmda` (NMDA/central-sensitization), `@spec:mito-kynurenine-nad-sink`, `@hyp:peripheral-serotonin-convergence`.

**Gaps (documented, not invented):** IL-22 × ME/CFS = 0 hits; Th17/Treg × ME/CFS = 0 hits; no direct ME/CFS immune-readout study of the AhR axis; Esteban subgroup association single-study, cross-sectional.

---

## Category 1 — Testable hypotheses

| # | Idea | Certainty | Rationale / evidence link | Falsifiable prediction | Non-specialist consequence | Category fit |
|---|------|-----------|---------------------------|-------------------------|------------------------------|--------------|
| H1 | **The operative variable in ME/CFS is not total AhR activation but the LIGAND BALANCE — a shift toward kynurenine/quinolinic and/or sustained-species ligands over transient neuroprotective indoles determines the neurocognitive vs benign outcome.** | 0.30 | Esteban2026 finds elevated AhR agonists only in the neurocognitive subgroup (partial null — no uniform hyperactivation); Tian2026 frames ligand identity (PAH sustained-neurotoxic vs indole transient-neuroprotective) as the determinant; TorrelliDiljohn2026 unifies kynurenine+serotonin+indole as one AhR-feeding network. So "how much AhR" is wrong; "which ligands" is the variable. | ME/CFS neurocognitive patients show a skewed stool/plasma ligand profile (higher kynurenine/quinolinic or non-indole species, lower indole-3-propionic/indole-3-acetic) rather than uniformly elevated total AhR-agonist activity; falsified if total AhR-agonist activity alone discriminates the subgroup with no ligand-identity effect. | Reframes the target from "block AhR" (dangerous, since AhR is also protective) to "restore the protective ligand mix" — a much safer and more specific goal. | Category 1 ✓ |
| H2 | **The neurocognitive-subgroup AhR signal is barrier-mediated: altered gut-microbial indole production degrades the intestinal barrier, and the cognitive association is secondary to systemic immune/toxin translocation — not direct neural AhR activation.** | 0.20 | AhR→IL-22/Th17-Treg→barrier reinforcement is the established mechanism (Rothhammer2019); ch12 already links barrier breakdown to bacterial translocation (@ach:bacterial-translocation) and butyrate deficiency; Esteban found gut-metabolite changes alongside the cognitive subgroup signal. Competing with a direct-neural route (H2b below). | ME/CFS neurocognitive patients with elevated stool AhR-agonist activity also show elevated permeability markers (zonulin, LPS/endotoxin, bacterial-translocation readouts) that mediate the cognitive association; falsified if cognitive severity tracks stool AhR activity independently of all barrier/permeability intermediates. | Would say the gut wall, not the brain, is where the damage starts — pointing to barrier-support rather than brain-targeted intervention. | Category 1 ✓ |
| H2b | **Competing: the AhR signal acts directly on neural/circumventricular cells — the association is not mediated by the intestinal barrier.** | 0.15 | AhR is expressed in neurons/glial cells and senses ligands directly; Rothhammer2019 documents CNS AhR expression and ligand sensing independent of the gut. Direct-neural route competes with H2's barrier-mediation. Per standing-checklist #4 (competing-mechanism elevation), if H2 and H2b become equally evidenced they should be framed as `#open-question`; currently H2b is lower-certainty and can remain a speculation branch. | Falsified if blocking intestinal-barrier breakdown abolishes the neurocognitive AhR association even when the stool ligand signal persists; or if brain-penetrant ligand levels (not gut levels) correlate most strongly with cognition. | Decides whether future work targets the gut barrier or the brain directly — a fundamental fork. | Category 1 ✓ |
| H3 | **ME/CFS tryptophan flux is diverted toward the kynurenine/indole (pro-inflammatory, AhR-feeding) branches and away from serotonin — an extension of the existing peripheral-serotonin hypothesis, with AhR as the convergence node.** | 0.25 | Morris2016 TRYCAT + TorrelliDiljohn2026 frame tryptophan as one network; Chojnacki2025 documents elevated urinary quinolinic/xanthurenic acid in comorbid IBS+CFS; @hyp:peripheral-serotonin-convergence and @spec:ch15-kynurenine-nmda already integrate the serotonin/kynurenine split in ME/CFS. AhR is the shared receptor both branches feed. | ME/CFS (especially neurocognitive) shows a serotonin:kynurenine ratio shift with corresponding AhR-agonist activity, both covarying; falsified if serotonin depletion and AhR-agonist elevation are independent (not co-varying) in the same cohort. | Unifies three separate ME/CFS storylines (serotonin, kynurenine, gut microbiome) under one upstream tryptophan-splitting mechanism. | Category 1 ✓ |
| H4 | **The AhR axis is a candidate shared substrate for the neurocognitive-predominant ME/CFS phenotype that overlaps ADHD/autism-spectrum neurocognitive profiles — a cross-disease bridge via dietary-tryptophan/indole sensing.** | 0.10 | Task note: AhR integrates dietary cues and gut-microbial indoles; Esteban's neurocognitive subgroup is symptom-defined; cross-disease framing (ch14d) is a project convention. Highly speculative — no ME/CFS×ADHD AhR data; this is a hypothesis-generating cross-link only. | If neurocognitive ME/CFS and a neurocognitive ADHD/autism subgroup share a skewed indole/tryptophan ligand profile relative to respective controls (and healthy controls); falsified if profiles are phenotype-specific, not shared. | Would tie the gut-tryptophan axis to a broader class of neurocognitive conditions, increasing its relevance beyond ME/CFS alone. | Category 1 ✓ |

## Category 2 — Research directions

| # | Idea | Certainty | Rationale / evidence link | Falsifiable prediction | Non-specialist consequence | Category fit |
|---|------|-----------|---------------------------|-------------------------|------------------------------|--------------|
| R1 | **Independent replication of the Esteban neurocognitive-subgroup association (larger, severity-stratified ME/CFS cohort; same stool-AhR-reporter + metabolomics).** | n/a (direction) | Single-study subgroup signal; replication is the single highest-value step. Must stratify by severity (anchor not stratified → current severity applicability unknown). | If the neurocognitive-subgroup elevation does not replicate in an independent cohort, the anchor's subgroup claim is not robust and H1/H2 lose their empirical base. | Determines whether the whole AhR story is real or a single-cohort artifact. | Category 2 ✓ |
| R2 | **Longitudinal (or post-intervention) design to establish causality and direction — does altered AhR signaling precede cognitive decline, or follow it?** | n/a (direction) | @oq:ahr-causality-subgroup records the open causal direction. Cross-sectional Esteban cannot distinguish AhR→cognition from cognition→microbiome. | If restoring the protective ligand balance precedes cognitive improvement (not follows it), causal direction favors AhR→cognition; if cognitive improvement precedes ligand change, direction is reversed. | Resolves whether AhR is a cause worth targeting or a consequence worth monitoring. | Category 2 ✓ |
| R3 | **Measure AhR-driven immune readouts in ME/CFS (IL-22, Th17/Treg balance) in the same cohort — fills the 0-hit immune-readout gap.** | n/a (direction) | The mechanistic chain AhR→IL-22/Th17-Treg→barrier+immune tone (Rothhammer2019) has zero direct ME/CFS immune-readout confirmation. A cohort with both stool AhR activity AND serum IL-22/Th17-Treg would close the chain. | Falsified if elevated stool AhR-agonist activity in the neurocognitive subgroup does NOT associate with IL-22 or Th17/Treg deviation — the immune intermediate is absent. | Tests whether the receptor signal actually reaches the immune system in ME/CFS, not just the gut. | Category 2 ✓ |
| R4 | **Discriminate transient-neuroprotective vs sustained-neurotoxic ligand balance (SAhRM concept, Tian2026) in ME/CFS biofluids — measure ligand identity, not just total AhR agonism.** | n/a (direction) | Tian2026: PAH ligands = sustained neurotoxic AhR; microbial indoles = transient neuroprotective AhR. Current anchor measures total AhR agonism, which masks ligand identity. | If ME/CFS biofluids show a shift toward sustained/neurotoxic ligand species (or away from protective indoles) specifically in neurocognitive patients, the "ligand-balance" variable (H1) is supported; falsified if only total activity differs. | Tells us WHICH ligands matter — the difference between a safe dietary lever and a toxic exposure marker. | Category 2 ✓ |
| R5 | **Test barrier-mediation vs direct-neural route (H2 vs H2b) with permeability biomarkers in the anchor cohort design.** | n/a (direction) | Resolves the operative route fork: barrier-mediated (gut→immune→brain) vs direct neural AhR. Add zonulin/LPS/bacterial-translocation readouts alongside stool AhR. | Falsified as per H2/H2b — the route is identified by whether barrier intermediates mediate (H2) or are independent of (H2b) the cognitive association. | Determines whether intervention targets the gut barrier or the brain — a design-deciding fork. | Category 2 ✓ |

---

## Category 3–9 — Drug / supplement / intervention ideas (WEAK-EVIDENCE)

Generated ONLY where the idea is genuinely tied to the mechanism; ALL carry the **WEAK-EVIDENCE** flag. No ME/CFS interventional data exists. These must NOT enter treatment content as recommendations at this evidence grade — research-only.

| # | Idea | Certainty | WEAK-EVIDENCE rationale | Mechanism link | Category fit |
|---|------|-----------|-------------------------|----------------|--------------|
| S1 | **Dietary/ligand modulation to restore transient neuroprotective indole balance (e.g., indole-3-propionic/indole-3-acetic precursors) rather than any AhR antagonist.** | 0.10 | No ME/CFS trial; animal-model + general-population mechanism only (Thirugnanam2026, Tian2026); ligand dose-response in humans unknown; harm risk if the wrong ligand species is favored (Tian2026 sustained-neurotoxic). **WEAK-EVIDENCE.** | Directly targets the H1 ligand-balance variable; leverages the SAhRM protective/transient vs toxic/sustained distinction. | Categories 3–5 (intervention) |
| S2 | **Butyrate support as an adjunct to shift the gut barrier/immune context that AhR modulates (tie to existing @spec:butyrate-treg, @ach:butyrate-deficiency).** | 0.10 | Butyrate itself is not an AhR ligand; the link is indirect (barrier/Treg context modifies AhR outcome). No ME/CFS AhR-specific trial. **WEAK-EVIDENCE.** | Supports H2's barrier-mediated route by reinforcing the barrier/immune environment AhR operates in. | Categories 3–4 (supplement) |
| S3 | **Microbiome-directed (prebiotic/dietary-fiber) approaches to normalize gut-microbial tryptophan/indole production.** | 0.10 | General microbiome logic only; no ME/CFS AhR-agonist trial; production targets not validated in humans. **WEAK-EVIDENCE.** | Directly upstream of the altered indole/tryptophan ligand pool Esteban documented. | Categories 3–4 (supplement/intervention) |

> **Caution (categories 3–9 must gate on):** ANY AhR manipulation is bidirectional (Tian2026). Favoring the wrong ligand species, or antagonizing AhR globally, risks sustained-neurotoxic outcomes. No AhR-targeting drug is established safe or effective in ME/CFS. These are hypothesis-testing tools, not treatment recommendations.

---

## Category 10 — Reasons the mechanism may NOT be relevant to ME/CFS (critical)

| # | Idea | Rationale / evidence link | What would change the verdict |
|---|------|---------------------------|------------------------------|
| C10.1 | **The anchor is partial-null and single-study — no uniform AhR hyperactivation in ME/CFS.** | Esteban2026 found no overall AhR-activation difference; only the neurocognitive subgroup was elevated, unreplicated. A single-cohort subgroup signal may be a stratification artifact. | Independent replication (R1) with severity stratification confirms the subgroup signal. |
| C10.2 | **No direct ME/CFS immune-readout confirmation of the AhR→IL-22/Th17-Treg chain.** | The mechanistic chain rests on general-population/animal models (Rothhammer2019, Thirugnanam2026); IL-22 and Th17/Treg have zero direct ME/CFS studies. The biology may not transfer. | A cohort showing IL-22 or Th17/Treg deviation tied to stool AhR activity (R3). |
| C10.3 | **A receptor-genetic variant does not track CFS — points to metabolite/ligand-level rather than receptor-level differences, or to no AhR involvement.** | Caccamo2013 null: AHR Arg554Lys not differently distributed in CFS. | Metabolite/ligand-level demonstration (H1 ligand-balance) that does not depend on receptor genotype. |
| C10.4 | **Kynurenine-pathway metabolites ARE AhR ligands — this may not be a distinct mechanism at all, merely re-description of the already-integrated kynurenine pathway.** | TorrelliDiljohn2026 unifies tryptophan branches as one network; AhR could be redundant framing over the existing kynurenine story (per @lim:ahr-evidence-subgroup-specific). | A measurable AhR-specific readout (IL-22/Th17-Treg, R3) that kynurenine alone does not explain. |
| C10.5 | **Severity applicability is unknown — the mechanism may not generalize to severe/very-severe ME/CFS.** | Anchor not stratified by severity. Gut-microbiome and barrier findings may differ across severity; cognitive-subgroup definition may exclude the most severe bedbound patients. | A severity-stratified replication (R1). |

## Category 11 — Null hypothesis assessment

| # | Idea | What would it mean if the mechanism has no role? | Existing ME/CFS claims requiring revision |
|---|------|------------------------------------------------|------------------------------------------|
| N11.1 | **Null: total AhR-agonist activity does not discriminate any ME/CFS subgroup in replication.** | The H1 ligand-balance refinement collapses to "no AhR signal"; the ch12 hypothesis (@hyp:ahr-gut-microbiome-axis, 0.40) would need downgrade to an open question or removal of the mechanistic claim. | Would invalidate the subgroup-specific AhR mechanistic claim; ch12 entry and registry row re-framed. |
| N11.2 | **Null: tryptophan/serotonin/kynurenine imbalance exists but AhR adds nothing beyond the kynurenine pathway already integrated.** | The AhR axis is redundant framing; kynurenine+serotonin ME/CFS content stands independently. | No change to existing kynurenine/serotonin claims — only the AhR-specific additions are removed (low cost, consistent with C10.4). |
| N11.3 | **Null: no causal role — altered AhR signaling is a consequence of ME/CFS (or of cognitive dysfunction) rather than a contributor.** | The mechanism becomes a biomarker/correlate, not a causal target; @oq:ahr-causality-subgroup resolves to "correlate." | Would reframe from mechanistic hypothesis to monitoring signal; no existing claim directly requires causal status. |
| N11.4 | **Null: the neurocognitive subgroup association is an artifact of symptom-subgroup definition, not biology.** | The signal is a stratification artifact, not an AhR mechanism; reproducibility fails. | Would remove the subgroup-specific claim; the gut-microbiome baseline (lower diversity, altered microbiome) may still stand. |

## Category 12 — Evidence quality concerns (not captured by certainty scores)

| # | Concern | Detail / evidence link |
|---|---------|------------------------|
| E12.1 | **Single-cohort, cross-sectional, subgroup post-hoc signal.** | Esteban2026 subgroup finding is unreplicated and cross-sectional; post-hoc neurocognitive stratification risk not captured by the 0.70 certainty (which scores the study, not the subgroup specificity). |
| E12.2 | **AhR-reporter assay measures total agonism, masking ligand identity.** | The anchor's central measure cannot distinguish protective-transient vs toxic-sustained ligands (Tian2026 SAhRM). This is a systematic blind spot, not a certainty-able quantity. |
| E12.3 | **Receptor-variant null (Caccamo2013) suggests ligand-level mechanism but no ligand-identity assay yet exists in ME/CFS.** | No ME/CFS study measures which ligands are elevated, only that some AhR-agonists are — leaving H1's core variable unmeasured. |
| E12.4 | **Cross-population/animal transfer for immune-readouts.** | IL-22/Th17-Treg chain is general-population/animal (Rothhammer2019, Thirugnanam2026); transfer to ME/CFS unvalidated (C10.2). |
| E12.5 | **Harm/toxicity of AhR manipulation not boundable from current evidence.** | Tian2026 bidirectional AhR (neuroprotective vs neurotoxic) means any intervention carries a real risk direction; no ME/CFS data constrains it (gates S1–S3). |

---

## Tier assignment

- **H1** (ligand-balance variable) → Tier 1 — the most defensible transferable framing; directly refines the existing @hyp:ahr-gut-microbiome-axis (0.40) and matches the partial-null anchor.
- **R1, R2, R3, R4, R5** → Tier 1–2 — research directions resolving the binding unknowns (replication, causality, immune-readout, ligand-identity, barrier-vs-direct route).
- **H2, H2b, H3** → Tier 2 — mechanism-refinement hypotheses (barrier-mediated, direct-neural, tryptophan-split convergence); H2/H2b are a competing pair that may warrant `#open-question` elevation if they become equally evidenced.
- **H4** → Tier 3 — speculative cross-disease bridge (neurocognitive ME/CFS × ADHD/autism phenotype); register as hypothesis only.
- **S1, S2, S3** → WEAK-EVIDENCE; research-only, NOT treatment recommendations; MUST carry the Tian2026 bidirectional-AhR caution and the "no ME/CFS data" flag. NOT integration candidates for treatment content.
- **C10–C12** → critical-review entries; NOT integration candidates but MUST gate any future AhR-modulation integration into ME/CFS content.

## Integrate now vs defer

- **Do NOT integrate any drug/supplement/intervention (S1–S3) as ME/CFS treatment now.** Zero ME/CFS interventional data; AhR manipulation is bidirectional (Tian2026); S-class stays research-only, flagged WEAK-EVIDENCE.
- **Do integrate the mechanism/barrier framing (H1–H3 + critical C10–C12) as the refinement of the existing ch12 @hyp:ahr-gut-microbiome-axis**, subject to the 0.40 certainty cap for ME/CFS-specific mechanistic claims and the framing constraints (preserve partial-null, kynurenine-extension not replacement, severity unknown).
- **H2 vs H2b** competing route pair → track; elevate to `#open-question` in Phase 5 if evidence becomes comparable.
- **Defer** H4 (cross-disease) and R1–R5 to future cycles once replication or immune-readout evidence exists.

## Queued future topic candidates (Gate A scope-escalation)

| Candidate | Certainty gate | Rationale (one line) |
|-----------|---------------|----------------------|
| **ahr-ligand-identity-balance** (SAhRM ligand-identity measurement) | IF R4 produces ≥2 papers / an assay demonstrating ligand-identity (protective vs sustained) discrimination in ME/CFS or post-viral biofluids | The ligand-identity variable (H1) is currently unmeasured in ME/CFS; a dedicated ligand-species assay would make the mechanism testable — but until such data exists, only total agonism is known. |
| **ahr-immune-readout-mecfs** (IL-22/Th17-Treg in ME/CFS) | IF R3 surfaces ≥2 papers measuring IL-22 or Th17/Treg in ME/CFS or Long-COVID | The 0-hit immune-readout gap is the binding limitation; direct ME/CFS IL-22/Th17-Treg data would close the AhR→immune chain. |

## Notes

- Task scope respected: categories 1–2 and 10–12 prioritized; categories 3–9 limited to mechanism-tied S1–S3, all flagged WEAK-EVIDENCE.
- Certainties for ME/CFS-specific mechanistic claims (H1–H4) capped at 0.30–0.40 per the Active Caps (subgroup-only anchor + 0 direct immune-readout studies). H1 sits at the ceiling only because it directly refines the already-integrated @hyp:ahr-gut-microbiome-axis.
- All ideas trace to verified evidence (bib papers + existing ch12 content). No fabricated papers; the 0-hit IL-22/Th17-Treg gap and ligand-identity blind spot are stated as documented, not invented.
- Dominant critical theme (C10.1 + C10.2 + C10.4): single-cohort partial-null subgroup signal + no immune-readout confirmation + possible kynurenine re-description. This keeps the mechanism a hypothesis to test (per @lim:ahr-evidence-subgroup-specific), not a conclusion, and gates every intervention idea.
