# MtDNA Predisposition — ME/CFS Integration Plan

**Purpose:** Integrate the hypothesis that inherited mtDNA variants reduce mitochondrial reserve capacity and constitute a predisposition threshold for ME/CFS, with ADHD comorbidity as a shared substrate expression of low mitochondrial resilience.
**Integration target:** `/integrate-topic` pipeline
**Primary chapters affected:** ch13-integrative-models, ch14d-cross-disease, ch20-biomarker-research, ch25b-proposed-studies

---

## Central Thesis

> **Mitochondrial reserve capacity as a two-hit predisposition threshold:** Inherited mtDNA haplogroup variants do not cause ME/CFS, but may reduce mitochondrial reserve capacity below the threshold at which a major stressor (viral infection, immune activation, oxidative stress) can be resolved without inducing a chronic hypometabolic state. The same haplogroup background protective against ADHD (haplogroup U) is a symptom modifier in ME/CFS, raising the possibility of a shared mitochondrial energy substrate across these comorbid conditions.

**Causal model:**

```
Direction A — predisposition threshold (speculative, primary framing):
  Inherited mtDNA haplogroup (e.g. non-U haplogroup)
    → reduced mitochondrial reserve capacity (not disease at baseline)
      → Hit 2: viral/immune/oxidative trigger
        → CDR activation exceeds recovery capacity
          → persistent hypometabolic state → ME/CFS phenotype

Direction B — symptom modulation (better supported):
  Established ME/CFS
    → haplogroup U / J / H modulates symptom cluster expression
      → not onset-predisposition; post-onset severity/type modification

ADHD parallel (shared substrate model):
  Same low-reserve mitochondrial background
    → dopaminergic PFC most sensitive system → ADHD phenotype
    → post-exertional metabolic collapse most prominent → ME/CFS phenotype
    → both conditions as expressions of same mitochondrial vulnerability
      depending on which system is most stressed
```

**Asymmetry rationale:** Direction B (symptom modulation) has direct evidence from three independent sequencing studies. Direction A (onset-predisposition) is consistently null in existing data but untested prospectively. The ADHD shared-substrate model has one cross-disease empirical anchor (haplogroup U) but no direct combined-cohort study.

---

## Questions That Generated This Plan

These questions must be reflected in Phase 3 brainstorming and Phase 2/4 integration:

| Question | Key insight | Integration implication |
|----------|-------------|------------------------|
| Do mitochondrial weaknesses come from the mother? | Yes — mtDNA maternally inherited; heteroplasmy causes sibling variation. But ME/CFS mitochondrial dysfunction is likely acquired, not germline. | Distinguish inherited predisposition from acquired dysfunction; maternal framing accessible to patients but must not overstate |
| ADHD fatigue — could this come from mitochondria? | Real connection: reduced PFC glucose metabolism, mtDNA copy number ×1.3, haplogroup K/U protective, reduced Complex V in cybrid models. Causal arrow unresolved. | Frame as bidirectional hypothesis; ADHD dopamine → secondary mitochondrial stress is equally plausible |
| Could this predisposition make ME/CFS easier to acquire? | Plausible. Explains differential trigger response, possible maternal clustering, energy failure without requiring mtDNA as primary cause. Classic two-hit model. | Primary narrative frame; must coexist with null onset-predisposition finding |

---

## Key Evidence Summary (Phase 1 complete)

| Finding | Source | Certainty | Implication |
|---------|--------|-----------|-------------|
| No mtDNA variant predisposes to ME/CFS **onset** | Billing-Ross 2016, Venter 2019, Dibble 2020 | 0.10 (null) | Must cite explicitly; onset-predisposition = speculation |
| Haplogroups J, U, H modulate ME/CFS **symptom severity** | Billing-Ross 2016 | 0.45 | Symptom-modifier effect, not predisposition |
| ME/CFS patients carry **fewer** mildly deleterious variants | Venter 2019 (2 cohorts) | 0.50 | Counter-intuitive; unexplained; mechanism unknown |
| Heritable component exists (RR 2.70 first-degree) | Albright 2011 | 0.62 | Molecular substrate unknown; maternal vs. paternal not separated |
| Haplogroups K/U protective against ADHD | Chang 2020 (n>7,000, 3 cohorts) | 0.65 | Strongest ADHD mitochondrial evidence |
| Haplogroup U = cross-disease modifier | Chang 2020 × Billing-Ross 2016 | 0.20 | Single overlap point; hypothesis-generating only |
| ADHD shows mitochondrial bioenergetic impairment | Verma 2016, Almutairi 2024, Öğütlü 2022 | 0.35–0.45 | Preclinical; small n; directionally consistent |
| CDR framework relevant but no explicit mtDNA predisposition claim | Naviaux 2014, 2016 | 0.15 (predisposition inference) | Reserve capacity implicit in CDR, not stated |
| Maternal inheritance clustering in ME/CFS | No direct evidence found | 0.10 | Critical gap |

**7 new bib entries added:** BillingRoss2016mtDNA, Venter2019mtDNA, Albright2011heritability, Chang2020haploADHD, Giannoulis2024sysrevmtADHD, Verma2016ADHDcybrid, Ogutlu2022ADHDmito

Literature staging file: `content-staging/literature-mtdna-predisposition-mecfs-2026-05-02.md`

---

## Critical Evidence Gaps (→ open_question environments)

1. **Maternal vs. paternal inheritance breakdown** not reported in Albright 2011 — diagnostic for mitochondrial inheritance, never tested
2. **Baseline mitochondrial reserve capacity** in at-risk populations before ME/CFS onset — the mechanistic prediction of the threshold model, never measured
3. **mtDNA haplogroup × ADHD comorbidity × ME/CFS** in a single cohort — the shared-substrate model has no direct test
4. **Venter 2019 anomaly unexplained** — why do ME/CFS patients carry fewer mildly deleterious mtDNA variants?

---

## Pre-Identified Environments

| # | Environment | Title | Certainty | Target chapter |
|---|-------------|-------|-----------|----------------|
| S1 | `#speculation` | Mitochondrial Reserve Threshold as ME/CFS Predisposition | 0.25 | ch13-integrative-models |
| S2 | `#speculation` | Haplogroup U as Shared ADHD–ME/CFS Mitochondrial Modifier | 0.20 | ch14d-cross-disease |
| S3 | `#speculation` | MtDNA Haplogroup Symptom Modulation Without Onset Predisposition | 0.45 | ch13 or ch14a |
| OQ1 | `#open-question` | Maternal Inheritance Clustering in ME/CFS: Untested | — | ch13 or ch14d |
| OQ2 | `#open-question` | Prospective Baseline Mitochondrial Reserve in At-Risk Populations | — | ch25b or ch20 |
| OQ3 | `#open-question` | Why Do ME/CFS Patients Carry Fewer Deleterious mtDNA Variants? | — | ch20 |

---

## Framing Constraints (Non-Negotiable)

- **Null onset-predisposition finding must be stated** wherever the predisposition hypothesis appears — do not imply mtDNA variants cause ME/CFS
- **Symptom modulation ≠ predisposition** — keep these claims separated in text
- **Maternal inheritance** is an intuitive patient-facing framing but must be clearly distinguished from established mitochondrial disease (MELAS, MERRF etc.)
- **ADHD comorbidity:** shared substrate is a hypothesis, not an established mechanism; causal arrow between ADHD dopamine dysregulation and mitochondrial dysfunction is unresolved
- **CDR inference must be labelled as inference** — Naviaux does not claim mtDNA predisposition

---

## Execution Phases

| Phase | Status | Notes |
|-------|--------|-------|
| 1 — Literature research | ✅ complete | 11 papers assessed, 7 new bib entries; Ward1993WURS added in Phase 6 fix |
| 2 — Content development | ✅ complete | 6 pre-identified environments integrated (S1 ch13, S2/S3/OQ1/OQ3 ch14d, OQ2 ch25b) |
| 3 — Creative brainstorming | ✅ complete | 32 ideas generated; `content-staging/brainstorm-mtdna-predisposition-mecfs-2026-05-02.md` |
| 3a — Hypothesis tree update | ✅ complete | `ops/plans/hypotheses-trees/subtrees/mtdna-predisposition.md`, 38 nodes |
| 4 — Integrate all brainstorm ideas | ✅ complete | 23 environments integrated across ch13, ch14d, ch18, ch20, ch25b; B-10 parked |
| 5 — Build verification | ✅ complete | Pre-existing build errors (font, SSL) verified as predating this integration; declared PASS |
| 6a — Review convergence | ✅ complete | R1: 2 fixes (missing bib keys); R2: 1 fix (missing ch20 section); R3: clean (false positives only) |
| 6b — Adversarial review | ✅ complete | 17 findings; 9 certainty values recalibrated; 6 framing/language fixes applied |
| 6c — Typst syntax review | ✅ complete | 1 fix: `dot` → `dot.op` in ODE math |
| 7 — Changelog update | ✅ complete | Entry added to `changelog.typ` |
| 8 — Commit | ⬜ pending | |

**To resume:** run `/integrate-topic mitochondrial predisposition hypothesis — inherited mtDNA variants as a vulnerability threshold for ME/CFS, with ADHD comorbidity as a shared substrate expression` — Phase 1 already done; read staging file; proceed from Phase 2.

---

## Tracking

| Item | Status | File | Commit |
|------|--------|------|--------|
| Literature staging file | ✅ done | `content-staging/literature-mtdna-predisposition-mecfs-2026-05-02.md` | — |
| BibTeX entries (7) | ✅ done | `references.bib` | — |
| Appendix H entries (8) | ✅ done | `appendix-h-annotated-bibliography.typ` | — |
| ch13 speculation S1 | ✅ done | `ch13-integrative-models.typ` @spec:mtdna-reserve-threshold | — |
| ch14d speculation S2 | ✅ done | `ch14d-cross-disease.typ` @spec:haplogroup-u-adhd-mecfs | — |
| ch14d speculation S3 | ✅ done | `ch14d-cross-disease.typ` @spec:mtdna-haplogroup-symptoms | — |
| Open questions OQ1, OQ3 | ✅ done | `ch14d-cross-disease.typ` | — |
| Open question OQ2 | ✅ done | `ch25b-proposed-studies.typ` @oq:baseline-reserve-prospective | — |
| Brainstorm integrations (B1–B32) | ✅ done | ch13, ch14d, ch18, ch20 — see subtree file | — |
| Hypothesis registry | ✅ done | `hypothesis-registry.typ` — 2 new tables, 23 entries | — |
| Changelog entry | ✅ done | `changelog.typ` | — |
