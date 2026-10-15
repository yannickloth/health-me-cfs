# Literature Summary: EpiSwitch 3D-Genomic ME/CFS Diagnostic — UPDATE CYCLE

**Date:** 2026-10-15
**Research stream:** `episwitch-epigenetic-test`
**Window:** post-2026-08-15 evidence + missed earlier critique literature
**Bib target:** `src/main/typst/mecfs/bib/genetics-epigenetics.bib`
**Prior summary:** cycle 1 (2026-08-15) — EpiSwitch platform prior-art, competing HERV/OPRM1/lncRNA, IL-2/JAK-STAT mechanism, null/replication-gap.

---

## Summary of the UPDATE

Cycle 1 established that the EpiSwitch ME/CFS diagnostic is a **vendor-only, unreplicated** classifier: 92% sensitivity / 98% specificity measured against healthy controls only (never against fibromyalgia, depression, or post-viral fatigue), with no independent 3D-genome study of ME/CFS anywhere in the literature.

This UPDATE cycle adds the **post-publication critique** that cycle 1 missed (Tirelli 2026, published 2026-01-05 — before the 2026-08-15 cutoff but not captured), and **two competing DNA-methylation papers published after 2026-08-15**. The headline finding: the first post-Hunter **cross-condition methylation study** (Polli 2026) directly demonstrates a *shared symptom-burden methylation axis* (PC6) that fails to separate ME/CFS from fibromyalgia — empirical support for the critique's concern that blood epigenetic signatures partly reflect **general illness severity rather than disease-specific biology** — alongside a genuinely ME/CFS-specific axis (PC5) aligned with PEM and cognitive symptoms.

**Still no independent replication** of the EpiSwitch classifier, and **no author response** to the critique, as of 2026-10-15.

---

## Certainty scale and population weights

- **Raw certainty** (0–1): skill scale — High (peer-reviewed, n>100, replicated, no COI) / Medium (n 20–100, single study) / Low (n<20, preprint, or methodological concerns).
- **Population-relevance weight** (0–1): how well the sample generalises to the full ME/CFS population (female-only cohorts penalised; reviews/frameworks weighted 1.0 as they carry no cohort restriction).
- **Discounted certainty = raw × weight.**

---

## Paper 1 — Tirelli et al. 2026 (critique letter)

**Bib key:** `Tirelli2026WheatAndChaff`
**Full citation:** Tirelli U, Franzini M, Chirumbolo S. Wheat and chaff in Myalgic Encephalomyelitis/Chronic fatigue syndrome (ME/CFS) in clinics and laboratory. *J Transl Med*. 2026 Jan 5;24:20.
**DOI:** 10.1186/s12967-025-07397-z · **PMID:** 41491817 · **PMCID:** PMC12772095
**Design:** Letter to the Editor (post-publication critique of Hunter 2025). No empirical data.
**Rival framing(s):** F4 (contradicting / vendor-artifact), F2 (null / critique).

**Key findings (10 methodological objections):**
1. Selective citation — omits foundational 1994 ME/CFS immunology (Tirelli 1994, *Scand J Immunol*).
2. Diagnostic criteria unspecified — "severe/housebound" is not a validated stratifier.
3. Ambiguous control group — "preferably" a history of glandular fever/COVID.
4. Unjustified MS/RA pathway-overlap claims (IL-2/IL-10/CD4/TLR are pleiotropic).
5. Rituximab comparator flawed — Phase III was null; rituximab targets CD20, not IL-2.
6. Omission of oxygen-ozone autohemotherapy (OOT).
7. No confounder analysis (medications, CMV/EBV/SARS-CoV-2 status).
8. Conflation of chromatin-conformation statistical association with causal mechanism.
9. Limited model reproducibility across populations (n=47 retrospective; overlapping biobank test cohort).
10. Category error — an oncology-validated platform ≠ biologically valid in ME/CFS.

**Counter-COI (MUST record):** The letter declares "no conflict of interest," yet Franzini is affiliated with SIOOT (Italian Society of Oxygen-Ozone Therapy) and references 5–7 are the authors' own OOT papers. The demand that Hunter cite OOT is self-serving advocacy. **Objection (5) is independently verifiable and correct:** the rituximab Phase III null is confirmed by Fluge 2019 (*Ann Intern Med* 2019;170:585–593, already in bib as `Fluge2019RituximabPhase3`): 26.0% rituximab vs 35.1% placebo overall response (no benefit).

**Certainty:** raw **0.35** (opinion tier, no data) × weight 1.0 → **0.35**. Evidence tier **T5 (opinion/letter)**.
**Limitations:** Opinion tier; author COI in the OOT dimension; the critique's own therapeutic alternative (OOT) lacks high-tier RCT evidence.

---

## Paper 2 — Polli et al. 2026 (cross-sectional EWAS, competing mechanism)

**Bib key:** `Polli2026MethylationAxes`
**Full citation:** Polli A, Hendrix J, Wyns A, Van Campenhout J, Allard S, Aerts JL, Laeremans T, Xiong H, Buntinx Y, Michiels J, Ben Amar J, Godderis L, Thienpont B, Nijs J. Epigenome-wide profiling identifies distinct DNA methylation architecture underlying ME/CFS and fibromyalgia symptom burden. *J Transl Med*. 2026 Aug 22;24(1):1222.
**DOI:** 10.1186/s12967-026-08824-5 · **PMID:** 42811334 · **PMCID:** PMC13625321
**Design:** Cross-sectional EWAS; n=188 women (73 HC, 71 ME/CFS, 44 FM); Illumina MethylationEPIC v2 on PBMCs; PCA axes + adjusted linear models + bootstrap/permutation/LOO/medication sensitivity.
**Rival framing(s):** F3 (competing mechanism), F4 (shared symptom-burden marker).

**Key findings:**
- **PC5** — differentiates ME/CFS from **both** FM and HC; aligned with post-exertional malaise + cognitive symptoms (an ME/CFS-specific signal).
- **PC6** — separates both patient groups from HC but **NOT** ME/CFS from FM; aligned with broader symptom burden (widespread pain, sleep, visceral, temporal summation) — a **general illness/symptom-burden axis, not disease-specific**.
- 591 PC5-DMRs + 54 PC6-DMRs; enrichment in neuroimmune, metabolic, cytokine, NF-κB, JAK-STAT, TGF-β pathways.

**Why this matters for the EpiSwitch topic:** Hunter 2025's 98% specificity was measured against healthy controls only, leaving open the question of whether the classifier distinguishes ME/CFS from fibromyalgia/depression/post-viral fatigue. Polli 2026 is the first post-Hunter study to directly test ME/CFS vs FM at the blood-epigenetic level, and it finds **both** a disease-specific signal (PC5) **and** a shared symptom-burden signal (PC6). This empirically supports the F4 concern (that blood epigenetic signatures can reflect general illness severity) while also showing an ME/CFS-specific axis exists — a nuanced counterpoint that neither Hunter 2025 nor the Tirelli critique fully anticipated.

**Certainty:** raw **0.55** (peer-reviewed, n>100, single study) × weight **0.80** (female-only, misses ~25% male ME/CFS) → **0.44**. Evidence tier **T3 (cross-sectional diagnostic)**.
**Limitations:** Female-only; diagnostic criteria not stated in abstract; single study awaiting replication; same Brussels group as prior OPRM1 methylation work (potential cohort overlap).

---

## Paper 3 — Sharma et al. 2026 (review, competing framework)

**Bib key:** `Sharma2026MethylationUnifying`
**Full citation:** Sharma S, Rodger EJ, Chatterjee A, Tate WP. DNA methylation: unifying framework for complex chronic conditions. *Trends in Genetics*. 2026 (online ahead of print).
**DOI:** 10.1016/j.tig.2026.09.001 · **PMID:** 42786072
**Design:** Narrative review (Otago group — same lab as Helliwell 2020 and Peppercorn 2025). No new empirical data.
**Rival framing(s):** F3 (competing framework).

**Key findings:**
- Synthesises DNA methylation studies across ME/CFS, long COVID, fibromyalgia, and hEDS.
- Argues DNA methylation provides the tractable framework for comparative/longitudinal cross-condition studies, diagnostic stratification, and mechanistic insight.

**Why it matters:** Positions DNA methylation — not 3D-genome/chromosome-conformation — as the unifying blood epigenetic readout for these overlapping conditions. A competing biomarker *framework* to the EpiSwitch approach, from a group (Tate/Otago) that has produced multiple ME/CFS methylation studies (Helliwell 2020, Peppercorn 2025).

**Certainty:** raw **0.45** (review tier) × weight 1.0 → **0.45**. Evidence tier **T5 (narrative review)**.
**Limitations:** Review only; online ahead of print; no direct EpiSwitch comparison.

---

## Already-in-corpus cross-checks (NOT re-added)

| Claim to cross-check | Paper | Bib key(s) | Status |
|----------------------|-------|-----------|--------|
| Tirelli objection (5): rituximab Phase III null | Fluge 2019, *Ann Intern Med* 170:585–593, DOI 10.7326/M18-1451, PMID 30934066 | `Fluge2019RituximabPhase3` (treatments.bib), `Fluge2019` (autoimmunity.bib), `Fluge2020rituximab` (pathophysiology-general.bib) | ✅ present; confirms 26.0% vs 35.1% null |
| Competing HERV blood-epigenetic diagnostic (ME/CFS vs FM) | Giménez-Orenga 2025, PMID 40338225 | `GimenezOrenga2025HERVsegregation` | ✅ present |
| Competing HERV review | Perera 2026, PMID 42196290 | `Perera2026HERVreview` | ✅ present |
| IL-2/TRPM3 axis (what EpiSwitch reports) | Cabanas/Marshall-Gradisnik TRPM3 papers, PMID 34831634/34266470/31796045 | TRPM3 stream keys | ✅ present |

---

## Evidence-tier summary table

| Bib key | Paper | Raw cert | Pop. weight | Discounted cert | Tier | Diagnostic criteria | Framing |
|---------|-------|----------|-------------|-----------------|------|---------------------|---------|
| `Tirelli2026WheatAndChaff` | Tirelli 2026 critique | 0.35 | 1.00 | **0.35** | T5 opinion-letter | custom (n/a) | F4 + F2 |
| `Polli2026MethylationAxes` | Polli 2026 EWAS | 0.55 | 0.80 | **0.44** | T3 cross-sectional | custom (not stated in abstract) | F3 + F4 |
| `Sharma2026MethylationUnifying` | Sharma 2026 review | 0.45 | 1.00 | **0.45** | T5 narrative-review | custom (n/a) | F3 |

## Contradictions with already-integrated EpiSwitch claims

1. **Specificity overstatement:** Hunter 2025's "98% specificity" (vs healthy controls) is not a claim of cross-condition discrimination. Polli 2026's PC6 axis empirically shows a shared ME/CFS–FM methylation signal, supporting the Tirelli objection (4) that shared IL-2/TLR pathways are non-specific and that the EpiSwitch signature may partly track general illness burden. The integrated chapter should NOT claim the EpiSwitch panel separates ME/CFS from fibromyalgia — it was never tested against FM, and the first cross-condition methylation data shows partial overlap.
2. **Rituximab comparator:** Hunter 2025 invokes rituximab as a therapeutic comparator (shared IL-2 pathway). Tirelli objection (5) is correct — rituximab Phase III was null (Fluge 2019, already integrated), and rituximab's CD20 target is mechanistically off-axis from IL-2. The integrated content should not imply B-cell depletion validated the IL-2 pathway in ME/CFS.
3. **Category error / vendor lineage:** Both cycle 1 and this cycle confirm every EpiSwitch×ME/CFS paper is Oxford BioDynamics vendor-lineage. The oncology-validated platform claim (Tirelli objection 10) is a genuine translational gap; no independent lab has reproduced the 3D-genome ME/CFS signature.
