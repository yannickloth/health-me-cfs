# Hypothesis Subtree: Autoimmune Diseases — ME/CFS Integration

**Origin:** `/integrate-topic` — autoimmune diseases plan (migrated 2026-05-03)
**Brainstorm file:** (not applicable — this is a group root, not a single brainstorm topic)
**Date:** 2026-05-02
**Parent topic:** root
**Child subtrees:**
- subtrees/autoimmune-sle.md
- subtrees/autoimmune-sjogren.md
- subtrees/autoimmune-ms.md
- subtrees/autoimmune-ra.md
- subtrees/autoimmune-hashimoto.md
- subtrees/autoimmune-graves.md
- subtrees/autoimmune-t1d.md
- subtrees/autoimmune-aps.md
- subtrees/autoimmune-myasthenia.md
- subtrees/autoimmune-celiac.md
- subtrees/autoimmune-ibd.md
- subtrees/autoimmune-hepatitis.md
- subtrees/autoimmune-pbc.md
- subtrees/autoimmune-pandas.md
- subtrees/autoimmune-narcolepsy.md
- subtrees/autoimmune-encephalitis.md
- subtrees/autoimmune-nmosd.md
- subtrees/autoimmune-itp.md
- subtrees/autoimmune-dermatomyositis.md
- subtrees/autoimmune-psoriasis.md
- subtrees/autoimmune-ssc.md
- subtrees/autoimmune-urticaria.md
- subtrees/autoimmune-hlh.md
- subtrees/autoimmune-igg4rd.md
- subtrees/lichen-sclerosus.md

## Central Thesis

ME/CFS as post-autoimmune sequela: in a significant subset of patients, ME/CFS is not a disease parallel to autoimmune disease — it is caused by it. The autoimmune process damages or dysregulates the structures that produce the ME/CFS phenotype: autonomic ganglia, small fibre neurons, mitochondrial function, GPCR signalling, neuroinflammatory tone, energy metabolism.

### Causal model (asymmetric)

```
Direction A (more probable):
  Autoimmune trigger (infection, vaccine, stress)
    → autoimmune dysregulation (autoantibodies, T-reg failure, cytokine storm)
      → structural/functional damage (autonomic, neurological, metabolic)
        → ME/CFS phenotype (PEM, fatigue, brain fog, dysautonomia)

Direction B (less probable, not excluded):
  ME/CFS chronic immune activation (NK dysfunction, elevated cytokines, viral reactivation)
    → sustained loss of self-tolerance
      → overt autoimmune disease (de novo or accelerated)
```

**Asymmetry rationale:** Direction A supported by treatment evidence (autoantibody removal reverses ME/CFS symptoms). Direction B mechanistically plausible but lacks longitudinal evidence. Present both, weight honestly, flag absence of prospective cohort data as critical gap.

**Clinical implications:**
- Differential diagnosis flips: not "ME/CFS *or* autoimmune?" but "which autoimmune disease *produced* this ME/CFS?"
- Treatment: remission induction of underlying autoimmune disease may reverse ME/CFS — symptom management alone insufficient
- Subtype: "post-autoimmune ME/CFS" is a distinct, mechanistically grounded subgroup (ch05)

**Existing paper evidence:**
- Immunoadsorption/daratumumab: removing autoantibodies reverses ME/CFS symptoms (ch14b)
- GPCR autoantibodies → autonomic dysfunction → ME/CFS symptom cluster (ch14b)
- PBC anti-mitochondrial antibodies → mitochondrial dysfunction → fatigue phenotype indistinguishable from ME/CFS (ch14d)

**Open question (flag as `open-question` environment):** Is ME/CFS in autoimmune-comorbid patients a *complication*, a *prodrome* of worsening autoimmunity, or a *distinct sequela*? Longitudinal data absent. Priority research gap.

### Scientific constraint (mandatory for every integration)

- Direction A (more probable) is a working hypothesis, not established fact
- Every `/integrate-topic` run must find what the literature actually says — not confirm the hypothesis
- If literature supports Direction B, neither direction, or is silent — report faithfully
- Mechanism claims require citations; absence = flag as speculation
- Plausible ≠ documented; mechanistically coherent ≠ empirically established

### Per-disease research questions (template)

```
Direction A (autoimmune → ME/CFS):
  1. Does this disease produce ME/CFS as a documented complication or sequela?
  2. Which structures does it damage that generate the ME/CFS phenotype?
  3. Which autoantibodies/cytokines/mechanisms are the likely effectors?
  4. Does treating this disease remit ME/CFS symptoms?
Direction B (ME/CFS → autoimmune risk):
  5. Is there longitudinal evidence of elevated autoimmune disease incidence in ME/CFS cohorts?
  6. Does ME/CFS immune activation create conditions for autoimmune onset?
Both:
  7. What distinguishes ME/CFS from this disease clinically and biologically?
  8. What novel hypotheses does the relationship suggest?
  9. What is currently unknown — what prospective cohort data is missing?
```

### Pre-identified hypotheses

| ID | Hypothesis | Relevant diseases |
|----|-----------|-------------------|
| H1 | ME/CFS as forme fruste of SLE without renal/skin manifestations | SLE, MCTD |
| H2 | GPCR autoantibodies in ME/CFS overlap with those in autoimmune dysautonomia (POTS, AAG) | Sjögren, AAG, myasthenia |
| H3 | APS microcoagulation as shared mechanism between Long COVID, ME/CFS, and APS | APS, ITP |
| H4 | PBC fatigue phenotype = ME/CFS fatigue phenotype (anti-mitochondrial → mitochondrial dysfunction) | PBC, autoimmune hepatitis |
| H5 | Molecular mimicry (EBV/streptococcal/enteroviral) as common autoimmune trigger across MS, narcolepsy, PANDAS, ME/CFS | MS, narcolepsy, PANDAS |
| H6 | NK cell dysfunction as shared effector in ME/CFS, HLH, and viral-triggered autoimmunity | HLH, SLE, dermatomyositis |
| H7 | Anti-NMDAR encephalitis sub-threshold → brain fog without frank encephalitis | Autoimmune encephalitis |
| H8 | IgG4-related disease as steroid-responsive ME/CFS subtype | IgG4-RD |
| H9 | Mast cell-IgE-FcεRI axis links MCAS, autoimmune urticaria, and ME/CFS autonomic dysfunction | Autoimmune urticaria, MCAS |

### Execution phases

- **Phase A — Critical tier (items 1–20 + 35):** SLE → Sjögren → MS → APS → Myasthenia → PBC → Autoimmune Encephalitis → RA → Hashimoto → Graves → PANDAS → Narcolepsy → T1D → Celiac → IBD → Dermatomyositis → ITP → NMOSD → Hepatitis → Autoimmune Urticaria
- **Phase B — Mechanism-specific tier (items 21–40):** only integrate if Phase A surfaces a direct ME/CFS link not already documented
- **Phase C — Completeness tier (items 41–65):** ~10 condensed runs grouped by system; brief cross-reference entries in ch14d, no full sections

## Child Subtree Index

| Slug | File | Tier | Priority | Status |
|------|------|------|----------|--------|
| autoimmune-sle | [autoimmune-sle.md](autoimmune-sle.md) | 1 | 🔴 Critical | ⬜ stub |
| autoimmune-sjogren | [autoimmune-sjogren.md](autoimmune-sjogren.md) | 1 | 🔴 Critical | ⬜ stub |
| autoimmune-ms | [autoimmune-ms.md](autoimmune-ms.md) | 1 | 🔴 Critical | ⬜ stub |
| autoimmune-ra | [autoimmune-ra.md](autoimmune-ra.md) | 1 | 🔴 Critical | ⬜ stub |
| autoimmune-hashimoto | [autoimmune-hashimoto.md](autoimmune-hashimoto.md) | 1 | 🔴 Critical | ⬜ stub |
| autoimmune-graves | [autoimmune-graves.md](autoimmune-graves.md) | 1 | 🔴 Critical | ⬜ stub |
| autoimmune-t1d | [autoimmune-t1d.md](autoimmune-t1d.md) | 1 | 🟠 High | ⬜ stub |
| autoimmune-aps | [autoimmune-aps.md](autoimmune-aps.md) | 1 | 🔴 Critical | ⬜ stub |
| autoimmune-myasthenia | [autoimmune-myasthenia.md](autoimmune-myasthenia.md) | 1 | 🔴 Critical | ⬜ stub |
| autoimmune-celiac | [autoimmune-celiac.md](autoimmune-celiac.md) | 1 | 🟠 High | ⬜ stub |
| autoimmune-ibd | [autoimmune-ibd.md](autoimmune-ibd.md) | 1 | 🟠 High | ⬜ stub |
| autoimmune-hepatitis | [autoimmune-hepatitis.md](autoimmune-hepatitis.md) | 1 | 🟡 Medium | ⬜ stub |
| autoimmune-pbc | [autoimmune-pbc.md](autoimmune-pbc.md) | 1 | 🔴 Critical | ⬜ stub |
| autoimmune-pandas | [autoimmune-pandas.md](autoimmune-pandas.md) | 1 | 🟠 High | ⬜ stub |
| autoimmune-narcolepsy | [autoimmune-narcolepsy.md](autoimmune-narcolepsy.md) | 1 | 🟠 High | ⬜ stub |
| autoimmune-encephalitis | [autoimmune-encephalitis.md](autoimmune-encephalitis.md) | 1 | 🔴 Critical | ⬜ stub |
| autoimmune-nmosd | [autoimmune-nmosd.md](autoimmune-nmosd.md) | 1 | 🟡 Medium | ⬜ stub |
| autoimmune-itp | [autoimmune-itp.md](autoimmune-itp.md) | 1 | 🟡 Medium | ⬜ stub |
| autoimmune-dermatomyositis | [autoimmune-dermatomyositis.md](autoimmune-dermatomyositis.md) | 1 | 🟠 High | ⬜ stub |
| autoimmune-psoriasis | [autoimmune-psoriasis.md](autoimmune-psoriasis.md) | 2 | 🟡 Medium | ⬜ stub |
| autoimmune-ssc | [autoimmune-ssc.md](autoimmune-ssc.md) | 2 | 🟡 Medium | 🟡 partial |
| autoimmune-urticaria | [autoimmune-urticaria.md](autoimmune-urticaria.md) | 2 | 🟠 High | ⬜ stub |
| autoimmune-hlh | [autoimmune-hlh.md](autoimmune-hlh.md) | 2 | 🟡 Medium | ⬜ stub |
| autoimmune-igg4rd | [autoimmune-igg4rd.md](autoimmune-igg4rd.md) | + | 🟠 High | ⬜ stub |
| lichen-sclerosus | [lichen-sclerosus.md](lichen-sclerosus.md) | 1 | 🔴 Critical | ✅ integrated |

## Nodes

> **This is a group root — no brainstorm nodes.** Nodes live in the child subtrees listed above.

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
