# Evidence Synthesis: Extracellular Vesicles in ME/CFS — Rydland 2026

**Date:** 2026-06-24
**Topic slug:** extracellular-vesicles-rydland-2026

---

## 1. Evidence Landscape Summary

### Strong (certainty ≥ 0.60)
None. No paper in this batch reaches 0.60 certainty. The highest is Rydland 2026 at 0.55 (largest EV study, n=99, but no FDR-significant findings) and González-Cebrián 2022 at 0.55 (PLS-DA validation cohort, but single-lab, no independent replication).

### Moderate (certainty 0.40–0.59)
- **Rydland 2026** (cert 0.55): n=49 ME/CFS, n=50 HC. EV proteomics. 11 nominally-significant proteins (liver up, B-cell/erythrocyte down). No FDR survival. Pre-pandemic samples, Canadian criteria.
- **González-Cebrián 2022** (cert 0.55): n=51 ME/CFS, n=78 HC. EV miRNA PLS-DA. AUC 0.87–0.93 in validation. Single-lab (Oltra group).
- **Eguchi 2020** (cert 0.50): n=25 ME/CFS, n=22 HC. Talin-1, filamin-A as EV protein biomarkers. Brain Behav Immun.
- **Almenar-Pérez 2020** (cert 0.45): n=22 ME/CFS, n=17 HC. EV miRNA + PBMC miRNA. Oltra group.
- **Bonilla 2022** (cert 0.45): n=15 ME/CFS, n=6 HC. EV surface markers by severity. CD19+B-cell EVs elevated in severe.
- **Kell 2022** (cert 0.60 but review): Microclot thesis in Long COVID. Fibrinogen (FGB) context.

### Weak (certainty < 0.40)
- **Castro-Marrero 2018** (cert 0.40): n=10 ME/CFS, n=5 HC. First EV study. Pilot.
- **Giloteaux 2020** (cert 0.35): n=8 ME/CFS, n=9 HC. EV cytokines. IL-2 elevated.
- **Seifert 2026** (cert 0.30): n≤12 ME/CFS, post-COVID. Hemoglobin in EVs.
- **Wang 2025** (cert 0.20): Review, no primary data. Exosomal lncRNA speculative.
- **Hunter 2025** (cert 0.55): Blood biomarker (EpiSwitch), not EV-specific. Comparator only.

### Null
No null/negative EV studies found. All studies that measured EV counts found elevation in ME/CFS. This is a rare finding in the ME/CFS literature — near-universal replication across labs and methods.

### Missing
- No study with FDR-significant proteomic findings
- No study with n > 100 for EV proteomics
- No independent replication of any single protein finding
- No longitudinal EV data (pre/post exercise, pre/post treatment)
- No EV study in non-post-infectious ME/CFS (all cohorts meet Canadian or Fukuda criteria — post-infectious by definition)
- No study examining EV biogenesis machinery (ESCRT proteins, nSMase2, ceramide levels) in ME/CFS cells
- No EV clearance study in ME/CFS

### Indirect Biochemical/Systemic Links
Zero direct papers on the specific proteins (ITIH3, AMBP, FGB, F13A1, immunoglobulin light chains) AND ME/CFS. However, indirect links via well-characterized pathways:

1. **Ceramide-EV biogenesis link (0 papers directly in ME/CFS, but strong indirect connection):** nSMase2/ceramide pathway drives ESCRT-independent exosome production. ME/CFS has documented ceramide:S1P rheostat shift (hypothesis cert 0.40 in ch17). TNF-α (elevated in ME/CFS) activates nSMase2. This provides a testable mechanistic explanation for elevated EV counts — but the connection is inferential, not directly studied in ME/CFS EVs.

2. **Complement-microvesicle shedding (0 papers directly in ME/CFS EVs, but indirect connection):** Complement activation (C3a, C5a, C4a elevated in ME/CFS) causes C5b-9 MAC deposition → endothelial microvesicle shedding. Documented in the paper already (ch10 cardiovascular). Explains why some studies find larger EVs (microvesicles from complement-driven shedding) while others find smaller EVs (exosomes from ceramide-driven biogenesis).

3. **Coagulation-FGB-F13A1 (indirect):** Fibrinogen beta (FGB) and factor XIII A chain (F13A1) link to microclot pathology (Kell 2022, cert 0.60 review; Nunes 2024). FGB elevated in ME/CFS EVs could reflect fibrinogen consumption in microclot formation. F13A1 reduced could reflect consumption in clot cross-linking. These are plausible but unproven connections.

4. **EV count as replicated finding:** 6+ independent studies (Castro-Marrero, Giloteaux/Hanson, Almenar-Pérez/Oltra, Eguchi, Bonilla, Rydland, Seifert) all find elevated EV counts. This is among the most consistently replicated findings in ME/CFS biomarker research — comparable to NK cytotoxicity reduction (Hedges' g = 0.96 meta-analysis) but with fewer total subjects.

---

## 2. Internal Contradiction Detection

### Contradiction: EV count vs. exosome biogenesis impairment hypothesis

**Paper A (all EV studies):** EV count elevated in ME/CFS plasma.
**Paper B (existing ch07 content):** `spec:exosome-biogenesis-impairment` (cert 0.25) predicts *reduced* exosome concentration due to ESCRT impairment.

**Resolution:** Not a fundamental contradiction. These track different phenomena:
- EV *count* (measured by NTA in plasma) reflects the sum of all circulating EVs from all cell types — ceramide-driven exosomes + complement-driven microvesicles + uncleared EVs.
- EV *biogenesis impairment* (hypothesized in ch07) would reduce ESCRT-dependent exosome production specifically — but this could be offset by upregulated ceramide-driven (ESCRT-independent) exosome production and complement-mediated microvesicle shedding. The net effect on plasma EV count would be elevated, not reduced, if the ceramide and complement pathways dominate.

**Action:** Update `spec:exosome-biogenesis-impairment` to acknowledge that the EV count data actually show elevation, not reduction. Reframe: the impairment may be in cargo-sorting fidelity and ESCRT-dependent pathways rather than total vesicle production. Add the ceramide and complement-shedding mechanisms as alternative sources of the elevated EVs. The testable prediction should change from "reduced total circulating exosome concentration" to "reduced ESCRT-dependent exosome markers (TSG101, Alix, CD63) but elevated total EV count driven by ceramide and complement pathways."

### Contradiction: EV size across studies

**Papers:** Some find smaller EVs (Castro-Marrero 2018), some find no size difference (Rydland 2026), one found larger EVs [ref 11 from Rydland intro, not in our bib — possible Hanson group].

**Resolution:** Not a contradiction. Explained by three mechanisms producing different EV populations:
- Ceramide-driven exosomes: smaller (30–150 nm)
- Complement-mediated microvesicle shedding: larger (200–1000 nm)
- Impaired clearance: accumulation of both

The dominant population in a given study depends on cohort composition (severity, disease stage, complement activation level) and isolation method (differential centrifugation vs. size-exclusion chromatography). Size variability is a *prediction* of the multi-mechanism model, not a contradiction.

---

## 3. Evidence Summary

The extracellular vesicle literature in ME/CFS establishes one strong finding: **EV counts are consistently elevated in ME/CFS plasma across 6+ independent studies using different isolation methods and patient cohorts.** This is among the most robustly replicated findings in ME/CFS biomarker research.

The strongest mechanistic claim supportable is that elevated EV counts reflect increased cellular stress signaling — possibly via ceramide-driven exosome biogenesis (TNF-α/nSMase2 pathway) and complement-mediated microvesicle shedding — but this mechanism has not been directly studied in ME/CFS EVs. It is a plausible inference from known biochemistry.

What must remain speculative: (a) EV protein cargo differences (no FDR-significant hits), (b) cell-of-origin claims (liver, B-cell, erythrocyte — nominal only), (c) disease-specific miRNA signatures (single-lab, unreplicated), (d) the specific proteins as biomarkers (unvalidated).

What the evidence does NOT support: (a) using EV protein panels for diagnosis (no FDR-significant proteins), (b) EV size as a biomarker (inconsistent across studies), (c) claiming specific pathway involvement (coagulation, ECM, immunoglobulin) — the protein findings are nominal and unreplicated.

### Primary Integration Targets
- **ch07 (immune dysregulation):** EV count elevation as inter-compartment signaling; update existing `spec:ev-signaling-mecfs` and `spec:exosome-biogenesis-impairment` with new evidence
- **ch20 (biomarkers):** EV count as a replicated (but non-specific) biomarker candidate; EV miRNA panel with caveats
- **ch13 (integrative models):** EV as a cross-compartment communication vector elevated in ME/CFS
- **ch06 (mitochondria/energy metabolism):** hemoglobin reduction in EVs; potential erythrocyte involvement (tangential)

---

## 4. Clinical Relevance Assessment

### Clinical relevance: LOW — research-only

This topic has **zero direct implications for patient care** at present. No EV-based diagnostic test is validated. No EV-based therapy exists for ME/CFS. No EV count measurement has clinical utility (elevated in many inflammatory conditions — non-specific). The protein findings did not survive multiple-comparison correction.

The research value is moderate: EV count is a consistently replicated finding that could serve as a recruitment enrichment biomarker (selecting patients with elevated systemic stress signaling) or as a pharmacodynamic marker (does an intervention reduce EV count?). But this is research infrastructure, not clinical guidance.

### Patient subset applicability: Unknown
No study stratified by severity for EV count (Bonilla 2022 n=8 severe — too small to draw conclusions). Severity applicability unknown.

---

## 5. Integration Decision

### Decision: PARTIAL

**Reasoning against PROCEED:**
- Only 1 paper (Rydland 2026) with certainty ≥ 0.50. González-Cebrián 2022 is 0.55 but single-lab, no independent miRNA validation.
- >50% of papers have certainty < 0.40 (Castro-Marrero 0.40, Giloteaux 0.35, Seifert 0.30, Wang 0.20 — 5/11 = 45%). Close to the 50% threshold but not crossing it.
- Zero FDR-significant proteomic findings.
- Zero independent replication of any single protein.
- Zero indirect pathway studies (ceramide-EV, complement-EV) in ME/CFS specifically.
- The strongest evidence is the replicated EV count elevation — but this is a generic stress signal, not a disease-specific mechanism.

**Reasoning against REJECT:**
- EV count elevation is replicated across 6+ independent labs — a robust finding. Fully ignoring it would leave a gap.
- The ceramide and complement mechanisms provide plausible biochemical context that elevates the finding above "generic stress signal with no explanation."
- The Seifert 2026 post-COVID EV study + Rydland 2026 pre-pandemic EV study together establish that EV elevation is not a pandemic artifact.
- The microclot/coagulation connection (Kell 2022) provides indirect support for FGB/F13A1 — though the protein findings remain nominal.

**Result: PARTIAL.** The evidence base is small and weak. Integration is warranted for the replicated EV count finding and the mechanistic plausibility framework, but all content must use `#speculation` and `#open-question` environments only. No `#hypothesis-box` environments regardless of any downstream certainty reassessments.

### PARTIAL constraints apply:
- Brainstorm (Phase 4) limited to categories 1–2 (hypotheses, research directions) and 10–12 (critical categories). Categories 3–9 (drug/supplement/intervention) skipped.
- All chapter content capped at `#speculation` / `#open-question` / `#limitation`.
- `WEAK-EVIDENCE` flag preemptively assigned (to be confirmed in Phase 9).
- No therapeutic or clinical content — this is a basic-science biomarker finding.
