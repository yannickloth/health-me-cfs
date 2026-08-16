# Brainstorm — SynGO Synaptic Gene-Ontology Enrichment in ME/CFS

**Date:** 2026-08-16
**Topic slug:** `syngo-synaptic-enrichment-mecfs`
**Phase 2 decision:** PARTIAL (speculation/open-question/limitation only)
**Origin:** `/integrate-topic` Phase 4 (Creative Brainstorming), scientific-insight-generator
**Model:** deepseek-v4-pro

## Constraint honored (MANDATORY)

PARTIAL decision caps. Brainstorm categories **1–2 (constructive) + 10–12 (critical) ONLY**.
Categories 3–9 (drug, supplement, non-pharmacological intervention, combination, math-model extension, cross-disease bridge, diagnostic/biomarker) are **FORBIDDEN** — therapeutic brainstorming is premature given the weak, single-investigator evidence base.

**Certainty cap: every idea ≤ 0.45.** No `origin: brainstorm` idea may be presented above 0.45. No idea here is a candidate for `#hypothesis-box` (the PARTIAL cap forbids hypothesis-box even at ≥0.45).

**Already-integrated anchors (do NOT duplicate):**
- `@hyp:glutamatergic-synaptic-dysfunction` (cert 0.60) — glutamatergic synaptic dysfunction as genetically-driven core mechanism.
- `@hyp:brain-first-genetic` (cert 0.55) — brain/neuronal enrichment, zero peripheral/immune.
- `@syn:genetic-neuronal-convergence` (cert 0.65) — three-line neuronal convergence.
- `@spec:syngo-postsynaptic-assembly` (cert 0.40) — the core localization claim (postsynaptic assembly vs presynaptic release).
- `@oq:syngo-synaptic-density-pet` — SV2A-PET imaging correlate proposal.
- `@lim:syngo-enrichment-unpublished` — unpublished/method-dependent caveat.

Ideas below *extend* or *stress-test* these anchors; they do not restate them.

---

## Category 1 — Novel Hypotheses

### Rank 1 — Cat 1 — Postsynaptic assembly enrichment implies compromised *homeostatic plasticity*, not just wiring

- **Mechanistic rationale:** The postsynaptic assembly/scaffolding terms (GO:0099560 synapse adhesion; GO:0099151 PSD assembly; GO:0098839 PSD membrane) and top genes (_LRRC7_/densin-180, _NLGN1_, _SHISA6_, _PCDH17_) are not only "how synapses are built" — they are the molecular substrate of **homeostatic synaptic scaling and plasticity**. PSD scaffolding proteins (PSD-95 family, densin-180) mediate the activity-dependent trafficking and stabilization of AMPA receptors that let a synapse tune its strength to network demand. If this machinery is genetically compromised, synapses cannot compensate when the system is stressed — a *scaling* deficit rather than a *transmission* deficit. This reframes the finding: the vulnerability may be an impaired capacity to *adapt* synaptic strength under load, not a fixed wiring error.
- **Connection to ME/CFS features:** Homeostatic plasticity is the candidate mechanism behind the effort-sensitivity and post-exertional relapse pattern — a brain that cannot scale synaptic strength to sustained demand would show normal resting function but fail under cognitive/physiological load, matching the normal-at-rest / fail-on-exertion signature of ME/CFS and the "waking local sleep" brain-fog model already in the document.
- **Evidence link:** `@Koopmans2019SynGO` (postsynaptic assembly terms), `@hyp:glutamatergic-synaptic-dysfunction` (the anchor being refined), `@hyp:two-hit-glutamatergic-vulnerabilit` (E/I homeostasis threshold framing).
- **Certainty:** 0.30 (mechanistically coherent, but the scaling-deficit reading is inference layered on an unpublished enrichment; no functional synaptic readout in ME/CFS exists).
- **Falsifiable prediction:** A pre-registered analysis that *subsets* SynGO terms to homeostatic-plasticity vs structural-adhesion subcategories will show the ME/CFS signal concentrates in plasticity/scaling terms, not in static adhesion terms. Falsified if the enrichment is flat across both subcategories or concentrates in purely structural terms.
- **Non-specialist consequence:** If the genetic signal marks a reduced ability of brain cells to *re-tune* their connections under load, this would explain why ME/CFS patients often function near-normally at rest but collapse after effort — and it would point research toward measuring how well synapses adjust, rather than how many synapses exist. (Early-stage; no clinical implication today.)

### Rank 2 — Cat 1 — Synapse–mitochondria co-enrichment: "expensive to build" meets "expensive to run"

- **Mechanistic rationale:** Synapse assembly, scaffolding, and plasticity are among the most ATP-intensive processes in biology — PSD assembly, actin remodeling, receptor trafficking, and local protein synthesis all demand mitochondrial ATP delivered to the spine. The ME/CFS genetic signal already shows mitochondrial/metabolic perturbation (`@Keele2026mitodysregulation`, `@Huang2026mGWAS`) and CNS energy-crisis framing. The SynGO postsynaptic enrichment suggests a **genetic convergence at the synapse–mitochondria interface**: the same disease carries risk variants in the machinery that *builds* synapses and the machinery that *powers* them. This is a two-compartment version of the existing energy hypothesis — the synapse is where the energy demand is highest, so it is where a genetic energy deficit first fails.
- **Evidence link:** `@Keele2026mitodysregulation`, `@Huang2026mGWAS`, `@spec:syngo-postsynaptic-assembly` (the postsynaptic signal), `@hyp:brain-first-genetic` (CNS-primary).
- **Certainty:** 0.25 (both signals exist but are from different modalities — gene-set enrichment vs expression/proteomics — and no joint analysis has been done).
- **Falsifiable prediction:** A joint enrichment or colocalization test will show that postsynaptic-assembly genes and mitochondrial/metabolic genes co-enrich in ME/CFS, or that postsynaptic genes with high mitochondrial coupling (spine-local ATP demand) drive the SynGO signal more than low-coupling postsynaptic genes. Falsified if the postsynaptic and mitochondrial signals are statistically independent and do not share gene sets.
- **Non-specialist consequence:** If the genetic vulnerability sits exactly where the brain spends the most energy — building and maintaining connections — it would unify the "energy problem" and the "wiring problem" into one story, making the synapse the single most informative place to look. (Basic science; no clinical application in the near term.)

### Rank 3 — Cat 1 — Gene–environment two-hit convergence: EBV targets the same synaptic-plasticity pathway that carries genetic risk

- **Mechanistic rationale:** The documented ME/CFS trigger EBV — via its dUTPase protein — alters expression of genes controlling synaptic plasticity (dopamine/serotonin/GABA/glutamate pathways, pain-synapse structure/function) `@Williams2019EBVdUTPasesynaptic`. The SynGO finding shows ME/CFS *genetic* risk also concentrates in synaptic plasticity/assembly genes. This is a **convergent two-hit structure at the pathway level**: the environmental trigger and the genetic vulnerability strike the *same* biological pathway (synaptic plasticity), not merely the same organ. This is sharper than the generic two-hit model — it predicts that the trigger acts as a second, acquired perturbation of the very pathway the genotype has already weakened.
- **Evidence link:** `@Williams2019EBVdUTPasesynaptic`, `@hyp:two-hit-glutamatergic-vulnerabilit`, `@spec:syngo-postsynaptic-assembly`.
- **Certainty:** 0.25 (Williams 2019 is in vitro + animal with an ME/CFS-serology subset; the pathway-level convergence is an inference, not measured in the same tissue or cohort).
- **Falsifiable prediction:** In a post-infectious ME/CFS cohort, carriers of postsynaptic-assembly risk variants will show a stronger EBV-dUTPase-linked transcriptional signature of synaptic-plasticity genes than non-carriers. Falsified if EBV exposure and synaptic-genetic risk act on disjoint gene sets or show no interaction.
- **Non-specialist consequence:** If the virus that commonly triggers ME/CFS turns out to hit the same "connection-adjustment" pathway that the patient's genes already weakened, it would explain why only some infected people get sick — the infection lands on an existing weak spot. (Research-stage; does not change clinical practice.)

### Rank 4 — Cat 1 — Neurodevelopmental architecture: the enriched genes imply a *developmental* liability, not an adult-onset wiring defect

- **Mechanistic rationale:** Several top genes (_DCC_ netrin-receptor axon guidance, _NRXN1_/_NLGN1_ synapse formation, _PCDH17_ protocadherin adhesion, _ARFGEF2_ trafficking/migration) are canonical **neurodevelopmental** genes active in circuit formation, not only in adult synaptic function. This aligns with the independent Olduvai-domain finding linking ME/CFS to neurodevelopmental architecture (`@ArcosBurgos2025Olduvai`). If the liability is developmental, the disease reads less as "adult synapses malfunction" and more as "a circuit built with reduced reserve, exposed by a later trigger" — with implications for prodromal/subclinical signatures predating illness.
- **Evidence link:** `@spec:syngo-postsynaptic-assembly` (gene list), `@ArcosBurgos2025Olduvai`, `@hyp:brain-first-genetic`.
- **Certainty:** 0.20 (gene-function annotation is solid, but "developmental liability" is a strong inference from gene identity alone; no longitudinal/prodromal genetic data).
- **Falsifiable prediction:** A test that classifies enriched genes by peak developmental expression window will show the ME/CFS postsynaptic signal skews to genes with peak expression in early development rather than adult homeostasis. Falsified if the enriched genes are predominantly adult-expressed with no developmental skew.
- **Non-specialist consequence:** If the risk genes are those that shape the brain early in life, ME/CFS susceptibility might be partly set years before any illness — which would refocus attention on why a long-silent wiring difference only becomes disabling after a trigger like infection. (Basic science; no near-term clinical application.)

### Rank 5 — Cat 1 — Trans-synaptic adhesion genes map to specific symptom dimensions (subtype-refinement)

- **Mechanistic rationale:** The enriched trans-synaptic adhesion family (_NRXN1_, _NLGN1_, _SHISA6_, _LRRC7_) is already individually associated in external GWAS with specific dimensions — sleep/insomnia, depression, educational attainment, pain (the document notes _SHISA6_↔sleep, _LRRC7_↔depression, _DCC_↔insomnia/pain). This suggests the postsynaptic-adhesion signal may not be a uniform ME/CFS feature but a **symptom-dimension-specific** one: different adhesion genes tagging different clinical profiles (sleep-predominant, cognitive, pain-predominant). It sharpens the existing composite-PRS subtype speculation (`@spec:composite-neuronal-risk-score`) by pointing at *which* gene subset to use.
- **Evidence link:** `@spec:composite-neuronal-risk-score`, `@DecodeME2025` (sub-threshold gene lookups), `@spec:syngo-postsynaptic-assembly`.
- **Certainty:** 0.20 (external GWAS associations are real but cross-disease; the mapping to ME/CFS subtypes is untested).
- **Falsifiable prediction:** A synaptic-adhesion-gene-specific PRS will discriminate clinically-defined ME/CFS subtypes (sleep vs cognitive vs pain) better than a generic synaptic PRS. Falsified if the adhesion-gene PRS adds no discrimination over the broader synaptic PRS.
- **Non-specialist consequence:** If different "connection-wiring" genes track different ME/CFS symptom profiles, a patient's genetic pattern could eventually help explain why their illness looks different from another patient's — a step toward matching care to mechanism. (Research-stage; no clinical use now.)

---

## Category 2 — Research Directions

### Rank 6 — Cat 2 — Independent replication + full sensitivity audit (window size, background, competitive presynaptic set)

- **Rationale:** The single-investigator MAGMA run is the entire evidentiary basis of the postsynaptic localization. Before any mechanistic claim, the result needs (a) **independent replication** on a non-overlapping ME/CFS GWAS (the DecodeME+MVP "concordance" is not independent — the meta *incorporates* DecodeME), and (b) a **sensitivity audit** varying SNP-to-gene window size (0, ±10 kb, ±35 kb, ±100 kb), background gene set (all-protein-coding vs brain-expressed), and multiple-testing method — because gene-set enrichment is known to shift with these choices. The key discriminating test is a **competitive presynaptic set**: does postsynaptic-assembly enrichment persist when directly contrasted against presynaptic vesicle-release terms, or is the "postsynaptic" specificity an artifact of gene-set size/correlation?
- **Evidence link:** `@deLeeuw2015MAGMA` (method), `@Koopmans2019SynGO` (the 87-location/179-process ontology enables the competitive contrast), `@spec:syngo-postsynaptic-assembly` (the claim to test).
- **Certainty:** n/a (proposal); the question it resolves carries a prior of ~0.40 for the postsynaptic-specificity claim surviving.
- **Falsifiable prediction:** The competitive presynaptic-vs-postsynaptic contrast is itself the falsification test — the localization claim survives only if postsynaptic terms enrich preferentially over presynaptic terms under matched conditions.
- **Non-specialist consequence:** One careful re-analysis using public data could either firm up or quietly dismantle the claim that ME/CFS risk is specifically about *building* connections rather than *firing* them — before anyone spends money on imaging or drug studies. (Actionable now — analysis only, no patients involved.)

### Rank 7 — Cat 2 — Cohort stratification by severity, sex, and onset trigger

- **Rationale:** The current enrichment is unstratified. DecodeME's rich phenotyping (severity grades, sex, onset trigger — post-viral vs gradual) permits a decisive test of *where* the synaptic signal lives. ME/CFS is female-predominant and heterogeneous; if the postsynaptic-assembly enrichment concentrates in one stratum (e.g., post-EBV onset, or the most severe, or a specific symptom cluster), it converts a diffuse genetic finding into a mechanistic handle on a definable subgroup. If it is uniform, it is more likely a generic brain-trait signature (see Rank 9).
- **Evidence link:** `@DecodeME2025` (phenotyping), `@DecodeME2025Criteria` (severity classification), `@spec:syngo-postsynaptic-assembly` (the unstratified claim).
- **Certainty:** n/a (proposal); high information value regardless of outcome.
- **Falsifiable prediction:** The enrichment will be non-uniform across strata; a uniform result is the informative null that weakens mechanistic specificity (feeding Rank 9).
- **Non-specialist consequence:** Testing whether the genetic signal concentrates in one type of patient — by sex, severity, or trigger — would tell us whether "synaptic risk" belongs to all of ME/CFS or only to a definable slice of it, which shapes every future study's design. (Actionable now using data already collected.)

### Rank 8 — Cat 2 — Fix the compartment mismatch: the proposed SV2A-PET test measures the *presynaptic* side

- **Rationale:** The existing open-question (`@oq:syngo-synaptic-density-pet`) proposes SV2A-PET as a "direct test" of the synaptic hypothesis. But SV2A is a **presynaptic vesicle glycoprotein** — the tracer measures presynaptic vesicle density, while the SynGO signal is **postsynaptic** assembly/scaffolding. This is a genuine compartment mismatch the open-question does not flag. SV2A signal may still covary with total synapse number (pre/post are co-assembled, and SV2A couples to glutamatergic markers in health `@Onwordi2021SV2Aglutamate`), so a positive result remains informative — but a *null* SV2A result would NOT falsify a postsynaptic-assembly deficit. The research direction is: design the imaging test to be compartment-aware — pair SV2A-PET with a postsynaptic-sensitive readout (e.g., MRS glutamate, or a postsynaptic-density radiotracer if one matures), or pre-specify that SV2A is only a proxy with a known blind spot.
- **Evidence link:** `@oq:syngo-synaptic-density-pet` (the claim being corrected), `@Onwordi2020SV2Aschizophrenia` (SV2A = presynaptic vesicle marker), `@Serrano2022synapticdensity` (SV2A specificity limits), `@Asch2024SV2Adepression` (tracer review).
- **Certainty:** 0.35 (the compartment mismatch is a well-established fact of tracer biology; the *degree* to which SV2A tracks postsynaptic density is the uncertain part).
- **Falsifiable prediction:** If SV2A-PET is run in ME/CFS and is null while a postsynaptic-sensitive measure is abnormal, the mismatch is confirmed and the SV2A-only design is shown to have been under-powered to test the actual hypothesis. Falsified (for the mismatch concern) if SV2A and postsynaptic measures covary tightly in ME/CFS as in health.
- **Non-specialist consequence:** The imaging test currently being proposed looks at the "sending" side of the connection while the genetic signal points to the "receiving" side — so a negative scan could be falsely reassuring. Designing the test to look at both sides protects against a misleading null result. (Research-stage.)

---

## Category 10 — Reasons This Mechanism May NOT Be Relevant to ME/CFS

### Rank 9 — Cat 10 — Gene-length / conservation confound: MAGMA enrichment may be tagging generic gene properties, not synapse biology

- **Rationale:** Synaptic genes are exceptionally long, conserved, and LoF-intolerant (`@Koopmans2019SynGO` states this explicitly). MAGMA gene-set analysis is systematically biased toward long genes and conserved genes — long genes accumulate more SNPs, and conserved genes concentrate polygenic signal by statistical construction, not because their biology is disease-relevant. The "postsynaptic enrichment" could therefore be an artifact of **gene-level properties** shared by all synapse genes, with no ME/CFS-specific meaning. This is the single most important alternative explanation to rule out, and the current limitation (`@lim:syngo-enrichment-unpublished`) names "window size/background" but not this specific confounder.
- **Evidence link:** `@Koopmans2019SynGO` (conservation/LoF-intolerance), `@deLeeuw2015MAGMA` (gene-set method), `@lim:syngo-enrichment-unpublished`.
- **Certainty:** 0.40 (the gene-length bias in MAGMA is a documented, well-replicated phenomenon; whether it *fully* explains the ME/CFS signal is untested).
- **Falsifiable prediction:** When the enrichment is recomputed with gene-length and conservation conditioned out (e.g., conditional gene-set analysis or length-matched null gene sets), the postsynaptic signal attenuates to null. Falsified (for the confound) if the signal survives length/conservation correction.
- **Non-specialist consequence:** The "synapse genes are involved" result could be a statistical mirage — synapse genes are big and ancient, so they attract signal from any study of the brain — and if so, an entire mechanistic direction rests on a technical artifact. (This is checkable now with existing data; no patients involved.)

### Rank 10 — Cat 10 — Pleiotropy: synaptic enrichment is a generic brain-trait signature shared with schizophrenia, depression, ADHD, autism, bipolar

- **Rationale:** `@Koopmans2019SynGO` itself documents that SynGO terms are overrepresented among gene sets for intelligence, educational attainment, ADHD, autism, bipolar disorder, and neurodevelopmental de novo variants (incl. schizophrenia). The document already notes MSN cell-type enrichment is shared across schizophrenia, depression, sleep, and alcohol consumption. The SynGO postsynaptic signal may therefore be **generic neuropsychiatric polygenicity**, not an ME/CFS-specific mechanism — it could be capturing the same "brain-expressed conserved genes" tag that every brain trait carries. This does not make it wrong, but it makes it *non-specific*: the enrichment would not distinguish ME/CFS from a dozen other brain conditions.
- **Evidence link:** `@Koopmans2019SynGO` (cross-trait overrepresentation), `@syn:genetic-neuronal-convergence` (shared MSN enrichment), `@Maccallini2026metaGWAS`.
- **Certainty:** 0.40 (the cross-trait sharing is directly documented; whether ME/CFS's signal is *fully* generic vs partly specific is unresolved).
- **Falsifiable prediction:** A genetic-correlation / enrichment-specificity test (e.g., comparing ME/CFS synaptic enrichment to that of schizophrenia/depression with the same pipeline) will show ME/CFS's postsynaptic signal is statistically indistinguishable from the shared brain-trait signal. Falsified if ME/CFS shows a distinct, disease-specific postsynaptic term profile.
- **Non-specialist consequence:** If the "synapse" signal is something ME/CFS shares with schizophrenia, depression, autism, and ADHD alike, then it may say more about "brain conditions in general" than about ME/CFS specifically — which would temper any claim that this is the *distinctive* biology of the illness. (Research-stage.)

### Rank 11 — Cat 10 — SynGO curation bias: postsynaptic proteins are over-annotated relative to presynaptic and inhibitory synapses

- **Rationale:** SynGO is built by expert curation, which is inherently biased toward the most-studied biology. Postsynaptic density and glutamatergic excitatory synapses — especially cortical/hippocampal glutamatergic — are among the most heavily characterized structures in neuroscience, while presynaptic release machinery and inhibitory (GABAergic) synapse biology are comparatively under-annotated. The apparent "postsynaptic > presynaptic" specificity of the ME/CFS signal could partly reflect **asymmetric annotation depth** in the ontology, not asymmetric disease biology: postsynaptic terms are simply better populated and easier to reach significance.
- **Evidence link:** `@Koopmans2019SynGO` (the ontology's structure/curation), `@spec:syngo-postsynaptic-assembly` (the specificity claim).
- **Certainty:** 0.35 (curation asymmetry is real and documented for GO generally; its magnitude within SynGO and effect on this specific result is unquantified).
- **Falsifiable prediction:** Re-running the analysis with annotation-depth-matched presynaptic and inhibitory term sets (or excluding the most heavily-annotated postsynaptic terms) will reduce or eliminate the postsynaptic specificity. Falsified if the postsynaptic preference persists after annotation-depth correction.
- **Non-specialist consequence:** "The signal is postsynaptic, not presynaptic" might partly reflect which parts of the synapse scientists happen to know the most about — so the headline distinction could be an artifact of the reference book, not the disease. (Checkable now; no patients involved.)

### Rank 12 — Cat 10 — SV2A compartment mismatch undercuts the one proposed imaging test (relevance limit of the follow-up)

- **Rationale:** Even if the postsynaptic enrichment is real, the proposed next step — SV2A-PET — measures the **presynaptic** compartment (SV2A is a vesicle glycoprotein). A postsynaptic-assembly deficit might be invisible to SV2A-PET, so the one concrete translational test on the table could return null *for the wrong reason*, falsely reading as evidence against the synaptic hypothesis. This is both a reason the mechanism may prove hard to validate in the near term and a reason the current research program may not actually test the claim it is nominally testing. (Companion to Rank 8, framed here as a relevance limit.)
- **Evidence link:** `@Onwordi2020SV2Aschizophrenia`, `@Serrano2022synapticdensity` (SV2A specificity limits), `@oq:syngo-synaptic-density-pet`.
- **Certainty:** 0.35 (tracer biology is well-established; the clinical interpretive risk is the inference).
- **Falsifiable prediction:** A null SV2A-PET result accompanied by an abnormal postsynaptic-sensitive measure would demonstrate the mismatch is consequential. Falsified if SV2A-PET alone tracks postsynaptic assembly sufficiently well in ME/CFS.
- **Non-specialist consequence:** The imaging approach being planned may be aimed at the wrong side of the synapse, so a negative result would not actually settle anything — a caution against spending scarce research funding on a test that cannot answer the question. (Research-stage.)

---

## Category 11 — Null Hypothesis Assessment

### Rank 13 — Cat 11 — The null is *bounded*: it would collapse the localization refinement but leave the core hypotheses standing

- **Rationale:** If the SynGO postsynaptic localization is null (artifact, pleiotropy, or curation bias), what actually breaks? The core claims — `@hyp:glutamatergic-synaptic-dysfunction` (gene-set level, Bonferroni-corrected in the meta-GWAS) and `@hyp:brain-first-genetic` (tissue enrichment across 30 tissues) — rest on the Maccallini meta-GWAS and DecodeME directly, **not** on SynGO. SynGO only adds the *within-synapse localization* (postsynaptic assembly vs presynaptic release). A null would therefore remove the "assembly/scaffolding" refinement (the `@spec:syngo-postsynaptic-assembly` and its registry entry) while leaving the glutamatergic-synapse and brain-first architecture intact. The null is bounded and non-catastrophic for the document's central argument.
- **Evidence link:** `@hyp:glutamatergic-synaptic-dysfunction`, `@hyp:brain-first-genetic`, `@spec:syngo-postsynaptic-assembly`, `@lim:syngo-enrichment-unpublished`.
- **Certainty:** prior probability of null ≈ 0.40 (given the unpublished, single-investigator, method-sensitive nature of the source).
- **Falsifiable prediction:** (For the null itself) the null is refuted by a length/conservation-corrected, independently replicated, competitive presynaptic-vs-postsynaptic enrichment that survives. Until that exists, the localization refinement should carry only speculation-grade weight.
- **Non-specialist consequence:** Even if the "postsynaptic vs presynaptic" detail turns out to be wrong, the bigger claim — that ME/CFS risk is wired into brain-cell connections, not immune cells — would stand. The document's main argument does not depend on this specific refinement. (Reassures accurate reading; no clinical impact.)

### Rank 14 — Cat 11 — Integration-worthiness: does an unpublished single-investigator analysis warrant any place in the paper at all?

- **Rationale:** The driving source is an unpublished, blog-documented MAGMA run by one investigator, with no deposited code, no peer review, and no independent replication. The epistemic question is whether it belongs in the document *at all*, even at speculation grade. The answer is a qualified yes — because (a) it connects to a peer-reviewed anchor (the Maccallini glutamatergic signal), (b) it is *falsifiable* with existing public data (Rank 6), and (c) it is already bounded as speculation/open-question, not hypothesis — but the burden is asymmetric: the document must never let a blog analysis read as established fact, and the `@lim:syngo-enrichment-unpublished` limitation is doing the minimum, not the maximum, of that work.
- **Evidence link:** `@lim:syngo-enrichment-unpublished`, `@spec:syngo-postsynaptic-assembly`, `@Maccallini2026metaGWAS` (the peer-reviewed anchor).
- **Certainty:** 0.30 (a judgment about epistemic placement, not a biological claim).
- **Falsifiable prediction:** If no independent replication or sensitivity audit can be produced, the correct disposition is to demote the content further (e.g., fold into the existing limitation and drop the standalone speculation), not to promote it. Falsified (for the "include" stance) if replication fails.
- **Non-specialist consequence:** This finding sits at the very edge of what a scientific document should contain — a single researcher's unpublished blog analysis. It earns its place only if it stays clearly labeled as an untested idea and is subjected to replication; otherwise it should be quietly removed rather than left to accrue the appearance of established fact. (Editorial/epistemic; no clinical impact.)

---

## Category 12 — Evidence Quality Concerns

### Rank 15 — Cat 12 — Publication/reproducibility bias: no code, no data, no peer review

- **Rationale:** The entire localization claim traces to a single-investigator blog MAGMA run. There is no deposited analysis code, no reported exact parameter set (window size, background, LD reference, MAGMA version), and no peer review. This is the strongest possible **publication/reproducibility bias**: a favorable exploratory result presented without the materials needed to audit or reproduce it. The literature summary correctly records "no ME/CFS null study exists," but the deeper issue is that *the positive claim itself* is not reproducible from its own source. The certainties assigned elsewhere (0.40 for the speculation) may overstate confidence given the absence of even basic reproducibility metadata.
- **Evidence link:** `@lim:syngo-enrichment-unpublished`, search log (`ops/research/search-log-syngo-synaptic-enrichment-mecfs-2026-08-16.md`), `@spec:syngo-postsynaptic-assembly`.
- **Certainty:** 0.45 (this is an assessment of a documented state of affairs — the source is unpublished and unvetted — not a biological claim).
- **Falsifiable prediction:** The concern is resolved if the analysis code + parameters are deposited and a third party reproduces the p=9.21e-07 enrichment. Unresolved indefinitely if no code is ever made available.
- **Non-specialist consequence:** Before this becomes a pillar of the field's thinking, the person who ran it needs to release the actual code and settings so someone else can check the work — otherwise it is one person's unpublished claim wearing the clothes of a genetic finding. (Actionable now; editorial standard, not biology.)

### Rank 16 — Cat 12 — Cohort circularity + driver-gene instability: the "concordance" is not independent, and a few genes may carry the whole signal

- **Rationale:** Two distinct quality problems. (a) **Circularity:** the "DecodeME" and "DecodeME+MVP" concordance is not independent replication — the meta *incorporates* DecodeME, so the second run partly re-analyzes the same cases (the document's own synthesis already flags this for the gene-set level; it applies equally to the SynGO run). (b) **Driver-gene instability:** the top SynGO genes include _ARFGEF2_ (chr20, the single strongest DecodeME locus) and _SHISA6_ (a DecodeME single-gene hit). A 1,112-gene SynGO set is small, and a handful of already-genome-wide-significant ME/CFS genes could be single-handedly pulling the whole term to significance — meaning the "enrichment" may summarize 2–3 known loci, not a broad synaptic signal.
- **Evidence link:** `@DecodeME2025` (ARFGEF2/SHISA6 as known hits), `@syn:brain-first-glutamatergic-genetic-architecture` (the circularity already noted), `@spec:syngo-postsynaptic-assembly`.
- **Certainty:** 0.40 (the circularity is a fact of study design; the driver-gene instability is a strong, testable hypothesis about a small gene set).
- **Falsifiable prediction:** A leave-one-out / jackknife analysis removing _ARFGEF2_, _SHISA6_, and the other genome-wide-significant loci will show whether the SynGO enrichment survives. It is a red flag if enrichment collapses on removing 2–3 genes. Falsified (for the instability concern) if the enrichment persists broadly across many genes.
- **Non-specialist consequence:** The "many synapse genes" headline might actually be "two or three already-known genes doing all the work" — a very different claim — and the apparent confirmation from a second dataset is partly the same patients counted twice. Both need to be checked before the finding is trusted. (Checkable now; no patients involved.)

---

## Summary table

| Rank | Cat | Title | Certainty | Kind |
|------|-----|-------|-----------|------|
| 1 | 1 | Postsynaptic assembly → compromised homeostatic plasticity (scaling, not wiring) | 0.30 | Novel hypothesis |
| 2 | 1 | Synapse–mitochondria co-enrichment (build + run expensive) | 0.25 | Novel hypothesis |
| 3 | 1 | EBV targets the same synaptic-plasticity pathway as genetic risk (pathway two-hit) | 0.25 | Novel hypothesis |
| 4 | 1 | Neurodevelopmental architecture of enriched genes (DCC/NRXN1/PCDH17) | 0.20 | Novel hypothesis |
| 5 | 1 | Trans-synaptic adhesion genes → symptom-dimension subtypes | 0.20 | Novel hypothesis |
| 6 | 2 | Independent replication + sensitivity/competitive-presynaptic audit | n/a (prior 0.40) | Research direction |
| 7 | 2 | Cohort stratification by severity/sex/trigger | n/a | Research direction |
| 8 | 2 | Fix SV2A presynaptic-vs-postsynaptic compartment mismatch | 0.35 | Research direction |
| 9 | 10 | Gene-length/conservation confound (MAGMA bias) | 0.40 | Disconfirmation |
| 10 | 10 | Generic brain-trait pleiotropy (SCZ/ADHD/ASD/BP shared) | 0.40 | Disconfirmation |
| 11 | 10 | SynGO curation bias → postsynaptic over-annotation | 0.35 | Disconfirmation |
| 12 | 10 | SV2A mismatch undercuts the proposed imaging test | 0.35 | Disconfirmation |
| 13 | 11 | Bounded null: localization collapses, core hypotheses survive | 0.40 (prior) | Null assessment |
| 14 | 11 | Integration-worthiness of an unpublished single-investigator analysis | 0.30 | Null assessment |
| 15 | 12 | No code/data/peer review — reproducibility bias | 0.45 | Evidence-quality audit |
| 16 | 12 | Cohort circularity + driver-gene instability (ARFGEF2/SHISA6) | 0.40 | Evidence-quality audit |

## Idea counts

- **Cat 1 (novel hypotheses):** 5 (Ranks 1–5)
- **Cat 2 (research directions):** 3 (Ranks 6–8)
- **Cat 10 (may NOT be relevant):** 4 (Ranks 9–12)
- **Cat 11 (null assessment):** 2 (Ranks 13–14)
- **Cat 12 (evidence quality):** 2 (Ranks 15–16)
- **Total:** 16 (constructive 8, critical 8 — balanced)

## Duplicates of already-integrated content — differentiation notes

The following anchors already exist and were **deliberately not restated**:

| Anchor | Differentiated by |
|--------|-------------------|
| `@spec:syngo-postsynaptic-assembly` (0.40) — the localization claim | Ranks 1–5 go *beyond* "assembly vs release" into scaling/plasticity, mitochondrial coupling, EBV convergence, developmental architecture, and subtype mapping — none of which the speculation states. |
| `@oq:syngo-synaptic-density-pet` — SV2A-PET proposal | Rank 8 and Rank 12 introduce the presynaptic/postsynaptic **compartment mismatch**, which the open-question does not flag and which changes the proposed study's design and interpretation. |
| `@lim:syngo-enrichment-unpublished` — unpublished/method-dependent | Ranks 9, 11, 15, 16 add *specific* confounders the limitation does not name: gene-length/conservation bias, SynGO curation asymmetry, reproducibility-bias (no code), and cohort circularity + driver-gene instability. |
| `@hyp:glutamatergic-synaptic-dysfunction` (0.60) / `@hyp:brain-first-genetic` (0.55) | Rank 13 explicitly assesses what survives these if SynGO is null — a scope-of-damage analysis, not a restatement. |
| `@spec:composite-neuronal-risk-score` | Rank 5 narrows to the *trans-synaptic adhesion* gene subset as the specific discriminator, sharpening rather than repeating. |

## Cross-cutting notes

- **Epistemic balance is the point:** the critical ideas (Ranks 9–16) are not "devil's advocate" padding — they identify concrete, checkable mechanisms (gene length, curation asymmetry, cohort circularity, driver-gene instability) by which the single-investigator SynGO result could be wrong. Ranks 6, 9, 11, and 16 are each resolvable with existing public data and no new patient recruitment; they should be the immediate priority.
- **The strongest constructive idea is Rank 1** (homeostatic plasticity/scaling): it is the only idea here that connects the postsynaptic-assembly localization to a *symptom-level* ME/CFS signature (normal-at-rest, fail-on-exertion). If it survives the critical screening, it is the most likely to earn a future upgrade.
- **The most important caveat is Rank 9** (gene-length/conservation confound): it is a documented MAGMA bias and, if confirmed, silently invalidates the entire postsynaptic-specificity claim. It is not currently named anywhere in the document.
- **Rank 8 + Rank 12 together** should force a correction to `@oq:syngo-synaptic-density-pet`, which presently presents SV2A-PET as a "direct test" without noting it targets the presynaptic compartment while the genetic signal is postsynaptic.
- **No therapeutic content generated** (PARTIAL constraint — categories 3–9 forbidden). No idea here implies a drug, supplement, intervention, biomarker, math-model extension, cross-disease bridge, or diagnostic recommendation.
