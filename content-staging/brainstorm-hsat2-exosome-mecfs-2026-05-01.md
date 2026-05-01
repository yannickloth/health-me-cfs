# Scientific Brainstorm: HSAT2/HERV-K Exosomal Immunosuppression in ME/CFS

**Generated:** 2026-05-01
**Source paper:** Evdokimova et al. 2019 bioRxiv (DOI: 10.1101/806851)
**Pipeline phase:** 3 (Brainstorm) of integrate-topic
**Model:** Claude Opus 4.7 (creative analysis — requires expert review)
**Status:** Speculative; ideas downstream of an Ewing-sarcoma study being mapped to ME/CFS by analogy. Caveats apply throughout.

---

## Master caveat

The Evdokimova 2019 findings are derived from Ewing sarcoma, a pediatric cancer with a defined fusion oncogene (EWS-FLI1). Translation to ME/CFS rests on the *general* principle that pericentromeric satellite repeats and HERV-K elements can be (a) de-silenced by stress, (b) selectively packaged into exosomes, and (c) propagated as a self-sustaining immunosuppressive loop. This is biologically plausible in any disease with chromatin-stress / heterochromatin-relaxation features, but *direct* evidence in ME/CFS is absent. Every idea below should be read as hypothesis-generating.

---

## 1. Novel mechanistic hypotheses (n = 5)

Ranked most to least ME/CFS-actionable.

### 1.1 HERV-K/HSAT2 exosomal loop as the molecular substrate of "post-viral immune memory"

- **Mechanistic rationale:** ME/CFS is overwhelmingly post-infectious (EBV, SARS-CoV-2, enteroviruses, Q fever). Acute infections transiently de-silence pericentromeric heterochromatin and HERVs via HSF1/innate-stress pathways. If a subset of patients fail to re-silence — and instead enter the Evdokimova-type self-propagating exosomal loop — the disease becomes "infection-shaped" without ongoing viral replication. This reconciles the negative HHV-6/EBV PCR results in established ME/CFS with the consistent post-infectious onset.
- **Evidence link:** Evdokimova 2019 finding 8 (viral-infection-like propagation without viral replication); finding 5 (serial transmissibility ≥ 3 passages); ME/CFS post-infectious epidemiology.
- **Certainty:** 0.45
- **Falsifiable prediction:** Plasma exosomes from post-infectious ME/CFS cases (within 2 years of onset) will contain HSAT2 and HERV-K RNA at ≥ 2-fold higher levels than matched controls, AND will induce CD33+HLA-DR− phenotypes when added to healthy donor PBMCs.
- **Tier:** 1

### 1.2 MDSC expansion as the mechanistic bridge between exosomal HSAT2 and NK cytotoxicity loss

- **Mechanistic rationale:** The most replicated ME/CFS finding (NK cytotoxicity, Hedges' g = 0.96 per Baraniuk 2024) lacks a unifying upstream cause. CD33+HLA-DR− MDSCs suppress NK function through arginase-1, IDO1-driven tryptophan depletion, and TGFβ — all of which would reduce perforin/granzyme synthesis (matching Maher 2005) and impair NKG2D signaling (matching Brenu 2011). The Evdokimova exosomal loop produces exactly this MDSC phenotype.
- **Evidence link:** Evdokimova finding 3 (MDSC induction with IDO1, TGFβ, IL-10); ch07 NK cytotoxicity meta-analysis; Maher 2005 perforin reduction.
- **Certainty:** 0.50
- **Falsifiable prediction:** ME/CFS patients with the lowest NK cytotoxicity will have the highest peripheral CD33+HLA-DR− MDSC frequency (Spearman ρ < −0.4), and CD33+ depletion of patient PBMCs ex vivo will partially restore NK killing.
- **Tier:** 1

### 1.3 Exosomal centromere-stress signature as the link to mitotic/proliferation dysfunction in fibroblasts and muscle

- **Mechanistic rationale:** Evdokimova finding 6 — recipient fibroblasts upregulate CENPA/NDC80/PLK1/NEK2 up to 10-fold — would manifest as centromere instability and mitotic stress in non-immune tissues. ME/CFS muscle satellite cells show impaired regeneration; fibroblasts from patients show altered transcriptomes. This proposes a non-cell-autonomous stress signal that propagates from immune compartment to stroma.
- **Evidence link:** Evdokimova finding 6; muscle regeneration deficits in ME/CFS; PEM as failure of post-exertion repair.
- **Certainty:** 0.30
- **Falsifiable prediction:** Primary fibroblasts from ME/CFS patients (not just transcriptomically, but in passage-3 cultures) will show elevated CENPA and NDC80 transcripts, and the elevation will partly reverse with AZT exposure (1 µM, 72 h).
- **Tier:** 2

### 1.4 PD-1+CD8+ exhaustion as a downstream readout, not an upstream cause

- **Mechanistic rationale:** The NIH deep-phenotyping study found CD8+ exhaustion. Evdokimova finding 4 directly produces this phenotype via exosomal uptake. This reframes T-cell exhaustion in ME/CFS as a *consequence* of EV cargo rather than a primary T-cell defect — potentially explaining why no antigen-specific exhaustion driver has been identified.
- **Evidence link:** Walitt 2024 NIH deep phenotyping; Evdokimova finding 4 (CD8+CD25+PD-1+ phenotype induced by EV uptake).
- **Certainty:** 0.40
- **Falsifiable prediction:** PD-1 expression on patient CD8+ T-cells will track plasma HSAT2 exosomal load longitudinally within individuals (within-subject correlation r > 0.5 across ≥ 6 timepoints).
- **Tier:** 2

### 1.5 PEM as transient amplification of exosomal HSAT2 release driven by exertional cellular stress

- **Mechanistic rationale:** Pol II inhibition (DRB) blocks HSAT2 strongly (Evdokimova finding 7), suggesting active transcription — likely stress-induced via HSF1 — drives the loop. Exercise produces well-documented heat-shock and oxidative stress responses. PEM's delayed (24–72 h) onset matches the timescale of EV biogenesis, uptake, and recipient-cell phenotype acquisition.
- **Evidence link:** Evdokimova finding 7 (transcription-dependent); known HSF1 induction by HSAT2; PEM kinetics.
- **Certainty:** 0.30
- **Falsifiable prediction:** Plasma exosomal HSAT2 content will rise 12–48 h post-CPET in ME/CFS patients but not controls, with AUC correlating with reported PEM severity.
- **Tier:** 2

---

## 2. Research directions (n = 4)

### 2.1 Plasma exosome HSAT2/HERV-K quantification in stratified ME/CFS cohorts

- **Rationale:** The single most decisive experiment. Use existing biobanked plasma (UK ME/CFS Biobank, NIH MAPP, DecodeME pilot) — extract EVs by SEC, qRT-PCR for HSAT2 and HERV-K env. Stratify by onset trigger, duration, severity.
- **Evidence link:** Direct replication of Evdokimova plasma findings in ME/CFS samples.
- **Certainty:** 0.70 (the experiment is straightforward; outcome uncertain)
- **Falsifiable prediction:** Effect-size threshold of ≥ 2× control ratio in ≥ 30% of patients defines a "HSAT2-high" subgroup; if no such subgroup exists at n ≥ 100, the hypothesis is rejected for ME/CFS as a whole.
- **Tier:** 1

### 2.2 Ex-vivo MDSC induction assay using patient plasma EVs

- **Rationale:** Functional bridge from biomarker to mechanism. Incubate healthy CD33+ monocytes with patient-derived EVs (24–72 h), score HLA-DR loss, PD-1 gain, IDO1/TGFβ secretion. This is the assay that would make the loop *causal*, not merely correlative.
- **Evidence link:** Evdokimova finding 3 protocol directly transferable.
- **Certainty:** 0.60
- **Falsifiable prediction:** EVs from ≥ 30% of ME/CFS patients will induce CD33+HLA-DR− shift > 2× background; control EVs will not.
- **Tier:** 1

### 2.3 Longitudinal exosomal cargo across PEM cycle (CPET + 0/24/48/72 h)

- **Rationale:** Tests hypothesis 1.5 directly. Establishes whether exosomal HSAT2 is a *state* marker (rises with PEM) or *trait* marker (chronic elevation).
- **Evidence link:** Hypothesis 1.5; existing CPET protocols (Workwell, Snell).
- **Certainty:** 0.50
- **Falsifiable prediction:** Significant within-subject increase in exosomal HSAT2 at 24–48 h post-CPET in patients (paired t, p < 0.05) with no change in controls.
- **Tier:** 1

### 2.4 Single-cell RNA-seq of patient PBMCs probing for HSAT2/HERV-K transcripts

- **Rationale:** Most repeat-element reads are discarded by default scRNA-seq pipelines. Re-analysis with repeat-aware tools (TEtranscripts, SoloTE) on existing datasets (Iwasaki, Walitt cohorts) could identify the cellular source of HSAT2 transcription without new sample collection.
- **Evidence link:** Existing scRNA-seq datasets in ME/CFS; published TE-aware pipelines.
- **Certainty:** 0.55
- **Falsifiable prediction:** A discrete CD33+ or fibroblast/stromal-precursor cluster in patient PBMCs will show elevated HSAT2/HERV-K expression versus controls.
- **Tier:** 2

---

## 3. Drug/medication ideas (n = 5)

Ranked by ME/CFS actionability (safety + accessibility + mechanistic fit).

### 3.1 Low-dose Naltrexone (LDN)

- **Mechanistic rationale:** LDN modulates microglial TLR4 signaling and reduces innate immune activation; TLR4 is a likely sensor of HSAT2 dsRNA or HERV-K env. By dampening the upstream stress signal, LDN could reduce HSAT2 transcription induction without addressing the loop directly.
- **Evidence link:** LDN already in ME/CFS treatment map; TLR-mediated EV-cargo sensing literature.
- **Certainty:** 0.30 (mechanism speculative; LDN benefit in ME/CFS is real but multifactorial)
- **Falsifiable prediction:** LDN responders will show reduced plasma exosomal HSAT2 at 8 weeks vs. baseline; non-responders will not.
- **Tier:** 1

### 3.2 Tenofovir / Truvada (NRTI repurposing)

- **Mechanistic rationale:** Evdokimova finding 7 — AZT (an NRTI) reduces HSAT2 accumulation 1.6× via reverse transcriptase inhibition. Tenofovir is better-tolerated than AZT, widely available (HIV PrEP), and similarly active against HERV-K RT. A small trial in ME/CFS (Lerner-style design but with TDF) is conceivable.
- **Evidence link:** Evdokimova finding 7; HERV-K RT inhibition by NRTIs (Tyagi et al.).
- **Certainty:** 0.35
- **Falsifiable prediction:** 12 weeks tenofovir 245 mg/day will reduce plasma HERV-K env transcripts ≥ 50% in ≥ 60% of patients; clinical fatigue improvement will correlate with HERV-K reduction.
- **Tier:** 2 (renal monitoring required; not for severe/bedbound without supervision)

### 3.3 Temelimab repurposing (HERV-W env mAb) — re-examined

- **Mechanistic rationale:** Already-mentioned in treatment map as MS-failed. Worth re-evaluating in light of Evdokimova: if HERV-K (not W) is the relevant element, temelimab is the wrong target. But the *strategy* (envelope-targeting mAb) could be redirected to HERV-K env, for which clinical-grade antibodies exist (e.g., from ALS programs).
- **Evidence link:** Evdokimova finding 1 (HERV-K, not W); existing temelimab platform.
- **Certainty:** 0.25
- **Falsifiable prediction:** Anti-HERV-K env mAb will reduce CD33+HLA-DR− MDSC frequency in ME/CFS patients within 12 weeks.
- **Tier:** 3

### 3.4 IDO1 inhibitors (epacadostat, linrodostat)

- **Mechanistic rationale:** Evdokimova finding 3 places IDO1 at the MDSC effector stage. IDO1 inhibitors (developed for oncology, mostly shelved post-Echo-301 failure) deplete tryptophan-kynurenine immune suppression. ME/CFS shows kynurenine pathway abnormalities (Yamano).
- **Evidence link:** Evdokimova finding 3; ME/CFS kynurenine literature.
- **Certainty:** 0.25
- **Falsifiable prediction:** Epacadostat 100 mg BID × 4 weeks will normalize tryptophan/kynurenine ratio and increase NK cytotoxicity in ME/CFS patients with elevated baseline kynurenine.
- **Tier:** 3

### 3.5 GW4869 (neutral sphingomyelinase inhibitor — exosome biogenesis blocker)

- **Mechanistic rationale:** Direct upstream block of exosome release. Pre-clinical only; not human-safe at doses required. Listed for completeness as the "ideal proof-of-concept" molecule for future development.
- **Evidence link:** Standard exosome-biology tool compound.
- **Certainty:** 0.10 (mechanism strong; clinical translation absent)
- **Falsifiable prediction:** In ex-vivo culture of patient PBMCs, GW4869 will block transmission of MDSC phenotype to naive monocytes.
- **Tier:** 3

---

## 4. Supplement / nutraceutical ideas (n = 4)

### 4.1 SAMe / methyl-donor support (folate, B12, choline, betaine)

- **Mechanistic rationale:** Pericentromeric heterochromatin and HERV silencing depend on H3K9me3 and CpG methylation. Methyl-donor depletion (common in ME/CFS — MTHFR variants, B12 dysregulation) would predispose to satellite/HERV de-silencing. Restoring methylation capacity may re-silence HSAT2.
- **Evidence link:** ch12 methylation alterations; PTPRN2 hypomethylation; Evdokimova finding 1.
- **Certainty:** 0.40
- **Falsifiable prediction:** ME/CFS patients with low SAMe/SAH ratio will show higher exosomal HSAT2; 12 weeks of methyl-donor supplementation will reduce both.
- **Tier:** 1

### 4.2 Sulforaphane (broccoli sprout extract)

- **Mechanistic rationale:** Activates Nrf2 antioxidant response, inhibits HDACs (favoring closed chromatin at some loci but opening at others — context-dependent), and reduces oxidative stress that triggers HSF1-mediated HSAT2 transcription. Generally safe, accessible, oral.
- **Evidence link:** Sulforaphane HDAC and Nrf2 effects (Dashwood); HSF1-HSAT2 axis (Eymery).
- **Certainty:** 0.25
- **Falsifiable prediction:** 8 weeks sulforaphane 30 mg/day will reduce a peripheral HERV-K transcription signature in patients with elevated baseline.
- **Tier:** 2

### 4.3 Curcumin (with bioavailability enhancer)

- **Mechanistic rationale:** Inhibits NF-κB and modulates exosome composition in cancer models. Anti-inflammatory effect on monocyte-MDSC differentiation.
- **Evidence link:** Cancer EV literature; ME/CFS inflammation profile.
- **Certainty:** 0.20
- **Falsifiable prediction:** Curcumin 1 g/day phytosome × 12 weeks will reduce CD33+HLA-DR− MDSC frequency by ≥ 20%.
- **Tier:** 3

### 4.4 N-acetylcysteine (NAC) — already widely used in ME/CFS

- **Mechanistic rationale:** Glutathione precursor; reduces oxidative stress that triggers HSF1 and Pol II stress-transcription of satellite repeats. Cheap, safe, accessible.
- **Evidence link:** Established oxidative-stress findings in ME/CFS; HSF1-HSAT2 axis.
- **Certainty:** 0.25
- **Falsifiable prediction:** NAC 1.8 g/day × 12 weeks will reduce plasma 8-OHdG AND exosomal HSAT2 with correlated effect sizes.
- **Tier:** 1 (safety, accessibility)

---

## 5. Non-pharmacological interventions (n = 3)

### 5.1 Strict pacing / activity envelope adherence

- **Mechanistic rationale:** If hypothesis 1.5 (PEM transiently amplifies exosomal HSAT2 release) holds, then minimizing exertional cellular stress directly reduces the rate of loop self-amplification. Pacing is already standard ME/CFS care; this gives it a molecular rationale.
- **Evidence link:** Hypothesis 1.5; established pacing benefit (Workwell).
- **Certainty:** 0.40
- **Falsifiable prediction:** Patients adhering to HR-monitored pacing will show lower trajectories of plasma exosomal HSAT2 over 6 months than non-adhering patients.
- **Tier:** 1

### 5.2 Therapeutic plasma exchange (TPE) / immunoadsorption

- **Mechanistic rationale:** TPE removes plasma constituents including circulating EVs. If exosomal HSAT2 is the propagating signal, TPE could transiently break the loop. Already explored for autoantibody removal in ME/CFS (Scheibenbogen group).
- **Evidence link:** Existing immunoadsorption trials; Evdokimova plasma EV findings.
- **Certainty:** 0.30
- **Falsifiable prediction:** Pre-/post-TPE measurement will show ≥ 70% reduction in exosomal HSAT2 with clinical improvement durable beyond the EV biogenesis half-life (~5 days) only in responders.
- **Tier:** 2

### 5.3 Cold exposure / sauna cycling — *de-prioritized*

- **Mechanistic rationale:** Heat shock activates HSF1, which induces HSAT2 transcription. Sauna therapy could *worsen* the proposed loop. This is a *negative* recommendation: if the hypothesis is right, popular heat-based interventions in ME/CFS may be counterproductive in HSAT2-high patients.
- **Evidence link:** HSF1-HSAT2 axis; Evdokimova finding 7.
- **Certainty:** 0.25
- **Falsifiable prediction:** Sauna exposure in HSAT2-high patients will transiently increase plasma exosomal HSAT2 within 6–24 h.
- **Tier:** 2 (caution flag)

---

## 6. Combinations and access (n = 3)

### 6.1 Bedbound-accessible "loop dampening" stack

- **Components:** Methyl-donor support (B12 sublingual, methylfolate, choline) + NAC 1.8 g + LDN 4.5 mg + strict pacing.
- **Rationale:** All oral, all home-administered, all already in widespread off-label ME/CFS use. Combines upstream (re-silencing via methylation), middle (oxidative-stress reduction), downstream (microglial dampening), and behavioral (loop-input reduction) layers.
- **Certainty:** 0.30 (combined effect plausibly additive)
- **Falsifiable prediction:** 6-month stack will reduce composite biomarker score (exosomal HSAT2 + MDSC frequency + NK cytotoxicity) more than any single component.
- **Tier:** 1

### 6.2 Research-tier protocol (specialist setting)

- **Components:** Tenofovir + IDO1 inhibitor + sequential immunoadsorption.
- **Rationale:** Targets the loop at three nodes — RT inhibition (transcript), MDSC effector (IDO1), circulating EV removal (TPE). Requires monitoring; not appropriate outside trials.
- **Certainty:** 0.25
- **Falsifiable prediction:** Combined protocol in n = 20 open-label trial will produce ≥ 30-point SF-36 physical-functioning gain in ≥ 40% of HSAT2-high patients.
- **Tier:** 3

### 6.3 Sequenced approach: stratify, then treat

- **Components:** Step 1 — measure plasma exosomal HSAT2/HERV-K + MDSC frequency. Step 2 — only treat the "HSAT2-high" subgroup (~hypothetical 30%). Step 3 — escalate from supplement-tier to drug-tier only on biomarker non-response.
- **Rationale:** Avoids treating patients for whom the mechanism is irrelevant; gives biomarker-guided escalation logic.
- **Certainty:** 0.40 (the *strategy* is sound; the cutoffs are guesses)
- **Falsifiable prediction:** Biomarker-stratified treatment will show > 2× response rate vs. unstratified.
- **Tier:** 1 (strategy) / 2 (specific implementation)

---

## 7. Mathematical model extensions (n = 3)

### 7.1 New ODE compartment: exosomal HSAT2 burden $E(t)$

- **Form:**
  $\frac{dE}{dt} = k_{\text{prod}} \cdot S(t) \cdot M(t) - k_{\text{clear}} \cdot E(t)$
  where $S(t)$ = stress signal (PEM, infection), $M(t)$ = MDSC pool. Couple to existing immune compartments.
- **Rationale:** Adds a positive-feedback loop that produces bistability (well vs. ME/CFS state) — matching clinical observation of hard-to-reverse chronicity. Existing ME/CFS ODE models lack this bistability driver.
- **Certainty:** 0.45
- **Falsifiable prediction:** Calibrated model will reproduce post-infectious onset → chronic state transition with realistic timescales (weeks–months).
- **Tier:** 1

### 7.2 DAG addition: HSAT2 exosomal node upstream of NK cytotoxicity, T-cell exhaustion, fibroblast stress

- **Rationale:** Provides a single upstream cause for three currently disconnected nodes in the integrative DAG (ch13). Testable via mediation analysis if biomarkers become available.
- **Certainty:** 0.45
- **Falsifiable prediction:** Mediation analysis will show HSAT2 exosomal load mediates ≥ 30% of the post-infectious-onset → NK-low effect.
- **Tier:** 1

### 7.3 Stochastic loop-escape model (chronic vs. recovered)

- **Rationale:** Captures why most acute infections resolve but a fraction enter chronic ME/CFS. Loop has critical exosomal-burden threshold; below = self-clearing, above = self-sustaining. Connects to per-individual stochastic susceptibility (epigenetic priming, methyl-donor reserve, infection severity).
- **Certainty:** 0.30
- **Falsifiable prediction:** Initial post-infection exosomal HSAT2 peak will predict 6-month recovery vs. ME/CFS classification with AUROC > 0.7.
- **Tier:** 2

---

## 8. Cross-disease bridges (n = 4)

### 8.1 Long COVID — strongest bridge

- **Connection:** SARS-CoV-2 spike and Nsp1 induce broad transcriptional disruption; emerging EV literature in Long COVID shows altered cargo. The Evdokimova loop predicts a HERV-K reactivation signature in Long COVID, which has been *partially reported* (Giménez-Orenga, Balestrieri).
- **Certainty:** 0.55
- **Falsifiable prediction:** Long COVID and post-infectious ME/CFS will share an exosomal HSAT2/HERV-K signature distinguishing them from recovered controls.
- **Tier:** 1

### 8.2 MS / temelimab failure re-interpretation

- **Connection:** HERV-W env mAb failed Phase 2 not because HERVs are irrelevant but because the *wrong* HERV family was targeted, and because the propagation mechanism (exosomal cargo of *RNA*, not env protein on cell surface) was missed. Suggests envelope-targeting mAbs are insufficient; cargo-RNA strategies (RNase, antisense) needed.
- **Certainty:** 0.35
- **Falsifiable prediction:** RNase-loaded EV-targeting nanoparticles will outperform env-targeting mAbs in pre-clinical models.
- **Tier:** 3

### 8.3 Cancer immune evasion — direct origin of the model

- **Connection:** Evdokimova showed this in Ewing sarcoma; similar exosomal MDSC induction is documented in melanoma, glioma, breast cancer. ME/CFS would be the first non-cancer disease using this immune-evasion machinery aberrantly. Cancer-immunotherapy literature (anti-PD-1, anti-CD33 ADCs) is a deep reservoir of repurposable agents.
- **Certainty:** 0.45
- **Falsifiable prediction:** Anti-CD33 ADCs (gemtuzumab) at sub-oncological doses would reduce MDSC pool and improve ME/CFS biomarkers (high-risk hypothesis only).
- **Tier:** 3

### 8.4 Aging / inflammaging

- **Connection:** Heterochromatin loss with aging de-silences satellite repeats and HERVs (LINE-1 best-studied). The Evdokimova loop may be a high-velocity version of inflammaging. Senolytics (dasatinib + quercetin, fisetin) clear cells with high HERV-K expression.
- **Certainty:** 0.30
- **Falsifiable prediction:** Fisetin 100 mg/day × 2 days/week × 12 weeks will reduce plasma HSAT2 in ME/CFS patients > 50 years old.
- **Tier:** 2

---

## 9. Diagnostic / biomarker ideas (n = 4)

### 9.1 Plasma EV qRT-PCR panel: HSAT2 + HERV-K env + HERV-W env (negative control)

- **Rationale:** Cheap, scalable, uses existing biobanks. Could become a stratification biomarker even before mechanism is proven causal.
- **Certainty:** 0.65 (technical feasibility) / 0.40 (clinical utility)
- **Falsifiable prediction:** Two-marker panel (HSAT2 + HERV-K) will distinguish ME/CFS from healthy controls with AUROC > 0.75 in n ≥ 100 cohort.
- **Tier:** 1

### 9.2 Flow-cytometric MDSC frequency (CD33+HLA-DR−)

- **Rationale:** Standard panel, fast, available in any clinical immunology lab. Pairs with biomarker 9.1.
- **Certainty:** 0.50
- **Falsifiable prediction:** MDSC frequency will be elevated > 1.5× in ≥ 30% of ME/CFS patients vs. controls.
- **Tier:** 1

### 9.3 Treatment-response biomarker: longitudinal HSAT2 ratio

- **Rationale:** If a treatment works via the loop, exosomal HSAT2 should drop. Provides objective response measure independent of self-report symptom scores.
- **Certainty:** 0.45
- **Falsifiable prediction:** In responders to LDN/methyl-donor stack, HSAT2 will drop ≥ 50% by 12 weeks; non-responders will not.
- **Tier:** 1

### 9.4 Patient stratification — "HSAT2-high" vs. "HSAT2-low" subgroup

- **Rationale:** ME/CFS heterogeneity is a major obstacle. A molecular subtype could finally enable trials targeted to mechanism rather than syndrome.
- **Certainty:** 0.40
- **Falsifiable prediction:** HSAT2-high patients (defined as upper tercile) will respond differently to immunomodulatory treatment than HSAT2-low patients (interaction p < 0.05).
- **Tier:** 1

---

## Summary of distribution

| Category | Count | Tier-1 | Tier-2 | Tier-3 |
|---|---|---|---|---|
| 1. Mechanistic hypotheses | 5 | 2 | 3 | 0 |
| 2. Research directions | 4 | 3 | 1 | 0 |
| 3. Drug ideas | 5 | 1 | 1 | 3 |
| 4. Supplement ideas | 4 | 2 | 1 | 1 |
| 5. Non-pharm interventions | 3 | 1 | 2 | 0 |
| 6. Combinations | 3 | 2 | 0 | 1 |
| 7. Math model extensions | 3 | 2 | 1 | 0 |
| 8. Cross-disease bridges | 4 | 1 | 1 | 2 |
| 9. Diagnostic / biomarker | 4 | 4 | 0 | 0 |
| **Total** | **35** | **18** | **10** | **7** |

---

## Top recommendations for paper integration

Highest-priority candidates to add to the document (subject to user/expert approval):

1. **ch07 (Immune):** Hypothesis 1.2 (MDSC bridge to NK dysfunction) — strongest mechanistic fit to most-replicated finding.
2. **ch13 (Integrative):** DAG extension 7.2 + ODE compartment 7.1 — gives the integrative model a bistability driver.
3. **ch14a (Speculative):** Hypothesis 1.1 (post-viral immune memory substrate) and 1.5 (PEM amplification) — fits speculative chapter scope.
4. **ch15–19 (Treatment):** Combination 6.1 (bedbound-accessible stack) — flagged as hypothesis-driven, NOT recommendation.
5. **ch20 (Biomarkers):** Diagnostic ideas 9.1–9.4 — actionable research-stage biomarker candidates.
6. **Cross-cutting caveat box:** Sauna/heat-stress cautionary note (5.3) — concrete falsifiable prediction with patient-safety implication.

All integration must respect the hypothesis-vs-recommendation distinction (Part III rule) and falsifiability requirement.

---

## Caveats and limitations

- All ideas extrapolate from a single bioRxiv preprint in a different disease (Ewing sarcoma).
- No direct ME/CFS evidence for HSAT2 exosomal cargo currently exists.
- Several proposed treatments (tenofovir, IDO1 inhibitors, anti-CD33 ADCs) carry significant risk and must not be presented as clinical recommendations.
- Heat-stress cautionary note is itself speculative and contradicts some patient-reported sauna benefits — needs careful framing if mentioned.
- Translation of cancer-EV biology to a non-cancer chronic illness is unprecedented; expect surprises.

Expert review recommended from: ME/CFS immunologist, retroelement biologist, EV-biology specialist, biostatistician (for stratification design), patient advocate (for severe-patient feasibility).
