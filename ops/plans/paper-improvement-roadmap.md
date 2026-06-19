---
topic-slug: paper-improvement-roadmap
status: ⬜ pending
created: 2026-06-18
---

# Paper Improvement Roadmap

Consolidated improvement plan from structural health review of 73k-line, 44-chapter + 9-appendix ME/CFS paper with ~200 hypothesis tree topics (~33% integrated).

Each item specifies: exact target files, current state, desired state, integration method (direct edit or `/integrate-topic` pipeline), and priority.

---

## 1. Cross-Disease Summary Table (ch14d or ch17)

**Current state:** ch14d-cross-disease.typ has 3,016 lines of dense, high-quality cross-disease content (Long COVID, ADHD, narcolepsy, SLE, MS, Sjogren, fibromyalgia, POTS, mastocytosis, etc.) — but no consolidated summary table mapping shared mechanisms across conditions. ch17-universal-mechanisms.typ has a 19-family mechanism taxonomy table but no cross-disease instance mapping.

**Desired state:** A single table in ch14d-cross-disease (or a new standalone aggregator in ch17) that maps each universal mechanism family (from ch17) to each cross-disease condition with evidence status and chapter cross-references. The ADHD "same metabolic root, different compartment" framework should be extended to narcolepsy (orexin compartment), POTS (autonomic compartment), SLE (autoimmune compartment).

**Integration method:** Direct edit — no new literature required. Content already exists across ch14d, ch17, ch07, ch08, ch09, ch10.

**Target files:**
- `src/main/typst/mecfs/part2-pathophysiology/ch14-speculative-hypotheses/ch14d-cross-disease.typ` — add consolidated table near top (after `== Speculative Cross-Disease Connections`)
- Alternative: `src/main/typst/mecfs/part2-pathophysiology/ch17-universal-mechanisms.typ` — add cross-disease instance mapping after the 19-family overview table

**Columns:** Mechanism family | ME/CFS evidence | Long COVID | ADHD | Narcolepsy T2 | POTS | Fibromyalgia | SLE | MS | Shared mechanism? | Ref chapter

**Priority:** High | **Effort:** Low | **Estimated:** ~150 lines, 1 direct edit

---

## 2. Strengthen Part V (Modeling, ch37–44)

### 2.1 ch37 — Modeling Foundations

**Current state:** 276 lines, 53 citations, rich prior-work survey. Missing: formal justification of ODE choice over agent-based/network models; explicit mapping of each model in ch38–44 to specific chapters in Part II; uncertainty quantification principles for parameter estimation with sparse ME/CFS data.

**Desired state:** + section on model selection rationale (why ODE, when agent-based, when Bayesian); + cross-reference table mapping each ch38–44 model to its Part II evidence source chapter; + section on UQ philosophy for ME/CFS (what certainty thresholds mean in quantitative context).

**Integration method:** Direct edit — modeling methodology decision is author-level document design.

**Target file:** `src/main/typst/mecfs/part5-modeling/ch37-modeling-foundations.typ`

### 2.2 ch38 — Energy Metabolism Models

**Current state:** 553 lines, 53 citations. Equations present (glycolysis, Krebs, ETC, ATP balance, PEM energy-envelope ODE). Missing: connection to specific molecular findings in ch06 (WASF3 supercomplex disruption, PDK upregulation, metabolomic intermediate accumulation, CPET data parameterization).

**Desired state:** Side-by-side mapping: each equation term → specific ch06 finding that constrains its parameter range; CPET-derived parameter estimates (VO2peak → Vmax estimates); WASF3/PDK as model perturbation scenarios.

**Integration method:** Direct edit. No new literature — content exists in ch06.

**Target file:** `src/main/typst/mecfs/part5-modeling/ch38-energy-metabolism-models.typ`

### 2.3 ch39 — Immune System Models

**Current state:** 442 lines, 46 citations. Missing: connection to ch07 T-cell exhaustion data, NK perforin deficiency, B-cell dynamics from rituximab trial timecourse data, autoantibody titers as state variables.

**Desired state:** T-cell exhaustion as ODE state with recovery rate parameter; B-cell/plasma cell distinction from rituximab Phase III failure (ch30); GPCR autoantibody dynamics from immunoadsorption timecourse data (ch30).

**Integration method:** Direct edit.

**Target file:** `src/main/typst/mecfs/part5-modeling/ch39-immune-system-models.typ`

### 2.4 ch43 — Predictive Applications

**Current state:** 466 lines, 49 citations. Pacing optimization, treatment selection, wearable integration all present at conceptual level. Missing: concrete worked examples with plausible parameter values; sensitivity analysis of key parameters; comparison to existing non-model-based clinical decision rules.

**Desired state:** 2–3 fully worked pacing scenarios with numeric parameters from CPET data; ROC-style comparison: model-based pacing vs. heart-rate-based vs. symptom-based for crash prediction (use known PEM incidence rates from ch26 pacing section).

**Integration method:** Direct edit.

**Target file:** `src/main/typst/mecfs/part5-modeling/ch43-predictive-applications.typ`

### 2.5 ch44 — Causal Hierarchy Formal

**Current state:** 483 lines, 48 citations. Formalizes the qualitative hierarchy from ch16. Missing: bidirectional traceability — each formal node should reference the ch16 qualitative claim it instantiates; each ch16 claim should be flagged if not yet formalized.

**Desired state:** Cross-reference mapping table (formal node ↔ ch16 section); completeness audit (which ch16 claims have no formal counterpart and why — deliberate omission vs. gap).

**Integration method:** Direct edit / audit.

**Target file:** `src/main/typst/mecfs/part5-modeling/ch44-causal-hierarchy-formal.typ`

**Combined priority for 2.1–2.5:** High | **Effort:** High | **Estimated:** ~1,500–2,500 lines total across 5 chapters

---

## 3. Visual Dysfunction Section (ch08-neurological)

**Current state:** Auditory dysfunction is well-covered in `ch08-neurological/sec-06-auditory-processing-dysfunction-and-tinnitus/` with subdirectory structure (epidemiology, mechanisms, clinical implications, research gaps). Visual disturbances are mentioned only in passing context (orthostatic hypotension → "visual disturbances"; proposed studies → ivabradine "visual disturbances"). No dedicated section on visual/ophthalmological manifestations despite common patient complaints (photophobia, blurred vision, difficulty focusing, visual snow, dry eyes — all likely related to autonomic dysfunction + cerebral hypoperfusion + sensory gain dysregulation).

Evidence base exists in the literature already cited: cerebral hypoperfusion (ch08 sec-05), central sensitization (ch15), autonomic dysfunction (ch08 sec-02). The mechanism pathway is already established for auditory dysfunction — the same reasoning (hypoperfusion → sensory organ stress, central gain dysregulation → photophobia/hyperacusis) applies to vision.

**Integration method:** Direct edit — use existing literature and established mechanism pathways. No `/integrate-topic` needed (the sensory-dysfunction hypothesis tree subtrees are stubs with 0 ideas; the content can be drafted from existing cross-references).

**Target files:**
- NEW: `src/main/typst/mecfs/part2-pathophysiology/ch08-neurological/sec-07-visual-dysfunction/` — mirror the auditory dysfunction subdirectory structure
- `src/main/typst/mecfs/part2-pathophysiology/ch08-neurological/ch08-neurological.typ` — add include line

**Proposed structure (mirroring auditory sec-06):**
- subsec-07-prevalence-and-epidemiology (photophobia prevalence, dry eye, blurred vision in ME/CFS cohorts)
- subsec-07-mechanisms (cerebral hypoperfusion → retinal/visual cortex stress; autonomic dysfunction → pupillary dysregulation; central sensitization → photophobia as sensory gain dysregulation)
- subsec-07-clinical-implications (screening, ophthalmology referral criteria, environmental modifications)
- subsec-07-research-gaps

**Priority:** Medium | **Effort:** Medium | **Estimated:** ~300–500 lines

---

## 4. Expand Patient FAQ (shared/patient-faq.typ)

**Current state:** 142 lines, 11 Q&A pairs. Covers: definition, PEM, psychological?, exercise, treatments, supplements, cause, prognosis, diagnosis, what to tell doctor, Long COVID overlap. Missing: practical self-management guidance (dietary evidence, sleep hygiene specifics, when to seek emergency care, disability/benefits navigation, MCAS/histamine basics, orthostatic intolerance self-management, cognitive pacing strategies, dealing with medical dismissal).

**Desired state:** +8–12 additional Q&A pairs covering practical patient needs. Tone must remain accessible, biology-anchored, and avoid false hope.

**To add:**
- "What should I eat?" — dietary evidence summary (anti-inflammatory, MCAS-aware, no single diet proven)
- "How do I improve my sleep?" — sleep hygiene specifics beyond generic advice
- "When should I go to the ER?" — red-flag symptoms requiring emergency evaluation
- "What is MCAS and does it relate to my ME/CFS?" — brief, cross-ref ch14
- "How do I manage orthostatic intolerance day-to-day?" — practical tips
- "What do I do if my doctor doesn't believe me?" — validation + practical strategy
- "How does the energy envelope work in practice?" — concrete pacing examples
- "Are there disability benefits I can access?" — general guidance with jurisdiction caveat
- "What about brain fog — can I improve it?" — cognitive pacing strategies
- "Is it safe to get vaccinated?" — evidence-based reassurance

**Integration method:** Direct edit.

**Target file:** `src/main/typst/mecfs/shared/patient-faq.typ`

**Priority:** Medium | **Effort:** Low–Medium | **Estimated:** ~200–400 lines

---

## 5. Hypothesis Tree Backlog Prioritization

Of ~135 stubs (67% of tracked topics), the following have the highest mech/tx yield and should be scheduled for `/integrate-topic`:

### 5.1 kynurenine-excitotoxicity (70 ideas, ⬜ pending)

**Why:** TRP→kynurenine pathway connects energy metabolism (NAD⁺), neuroinflammation (quinolinic acid → NMDA excitotoxicity), sleep (melatonin/serotonin depletion), and gut (microbiome TRP metabolism). Dovetails with already-integrated tryptophan figures and IDO metabolic trap model. The paper has extensive kynurenine coverage already — this subtree has the brainstorm ideas but they aren't formally integrated.

**Integration method:** `/integrate-topic`
**Targets:** ch06-energy-metabolism, ch08-neurological, ch11-gut-microbiome, ch05-disease-course

### 5.2 butyrate-intestinal-permeability (7 ideas, ⬜ pending)

**Why:** Gut permeability → systemic inflammation → energy drain. Tight mechanistic link to energy envelope. Small topic (7 ideas, quick integrate).

**Integration method:** `/integrate-topic`
**Targets:** ch11-gut-microbiome, ch06-energy-metabolism

### 5.3 CPET null replication (46 ideas, ⬜ pending)

**Why:** Mancini 2026 found no group-average VO2 decline in 2-day CPET — directly challenges the most-cited PEM biomarker. Already referenced in patient-faq (line 26), needs full integration into ch02 PEM section and ch30 clinical trials.

**Integration method:** `/integrate-topic`
**Targets:** ch02-core-symptoms (PEM section), ch30-clinical-trials, ch15-symptom-producing-mechanisms

### 5.4 striatal-emsn-mecfs (50 ideas, ⬜ pending)

**Why:** Novel neurological mechanism — Siletti 2023 human brain atlas data on eMSN neurons; He 2021 primate data. Links to effort-preference alteration (NIH 2024), dopamine, motivation, PEM. Literature pre-staged.

**Integration method:** `/integrate-topic`
**Targets:** ch08-neurological, ch14-speculative-hypotheses, ch15-symptom-producing-mechanisms

### 5.5 pots (45 ideas, ⬜ pending)

**Why:** Major comorbid condition documented throughout the paper. Dedicated POTS section exists in ch10-cardiovascular but systematic cross-disease comparison between ME/CFS-POTS and idiopathic POTS is thin. The subtree has 45 brainstorm ideas from June 7.

**Integration method:** `/integrate-topic`
**Targets:** ch10-cardiovascular, ch14d-cross-disease

**Priority:** Medium | **Effort:** 5× `/integrate-topic` runs | **Estimated:** ~5 sessions

---

## 6. Items Deferred / Already Adequately Covered

### 6.1 Economic burden

Already has dedicated subsections in ch01-introduction (`sec-05-impact/subsec-03-economic`), ch05-severe-reality (`sec:economic`), ch32-epidemiology-outcomes (`quality-of-life-and-disability/economic-burden/`), with specific $ figures ($17–24B pre-COVID, $36–51B post, $149–362B including post-COVID surge). **No action needed.**

### 6.2 Physician education / stigma

Already extensively covered in ch33-controversies (nomenclature, psychogenic framing, medical gaslighting, funding disparities, stigma → suicide risk pathway). Stigma has 6 dedicated entries in the hypothesis registry. ch35-research-infrastructure includes training pipeline proposals. **No new dedicated section needed** — existing coverage is thorough.

### 6.3 Sex-specific pathophysiology

Already has a full dedicated section in ch09-endocrine (`sec-03-sex-hormones-and-gender-differences/`) with subdirectories covering epidemiology, NIH sex-specific findings, steroid hormone abnormalities, mechanisms of sex hormone influence, testosterone/androgens, reproductive health. Walitt 2024, Heng 2025, Pipper 2024 all integrated. **No action needed** beyond what ch09 already contains.

### 6.4 Sensory dysfunction — auditory

Already present in ch08-neurological as `sec-06-auditory-processing-dysfunction-and-tinnitus/` with full subdirectory structure (prevalence, mechanisms, clinical implications, research gaps). Schubert 2021, Skare 2024, Johnson 1996, Nelson 2021 all integrated. **No action needed.**

### 6.5 Sensory dysfunction — visual

Covered in item 3 above (currently missing, needs new section).

---

## 7. Priority Summary

| # | Item | Method | Impact | Effort | Lines est. |
|---|------|--------|--------|--------|-----------|
| 1 | Cross-disease summary table (ch14d) | Direct edit | High | Low | ~150 |
| 2 | Strengthen Part V (5 chapters) | Direct edit × 5 | High | High | ~2,000 |
| 3 | Visual dysfunction section (ch08) | Direct edit | Medium | Medium | ~400 |
| 4 | Expand patient FAQ | Direct edit | Medium | Low | ~300 |
| 5.1 | kynurenine-excitotoxicity | `/integrate-topic` | High | High | Pipeline |
| 5.2 | butyrate-intestinal-permeability | `/integrate-topic` | Medium | Low | Pipeline |
| 5.3 | CPET null replication | `/integrate-topic` | High | Medium | Pipeline |
| 5.4 | striatal-emsn-mecfs | `/integrate-topic` | Medium | Medium | Pipeline |
| 5.5 | pots | `/integrate-topic` | Medium | Medium | Pipeline |

---

## 8. Execution Order

1. **Item 1 first** — lowest effort, highest visibility gain, unblocks cross-disease navigation for readers
2. **Item 3** — fills the single clearest content gap (visual dysfunction is the only major sensory modality with no dedicated section)
3. **Item 4** — quick win for patient audience
4. **Items 2.1–2.5** — largest quality uplift but substantial effort; batch when ready for a Part V sprint
5. **Items 5.1–5.5** — schedule `/integrate-topic` runs as capacity permits; 5.1 (kynurenine) and 5.3 (CPET replication) are highest-yield
