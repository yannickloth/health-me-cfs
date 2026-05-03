# Hypothesis Subtree: EBV Response Heterogeneity

**Origin:** Plan migration from `content-staging/20260420 plan-ebv-response-heterogeneity-integration.md`
**Brainstorm file:** (not yet generated — awaiting Phase 3)
**Date:** 2026-04-20
**Parent topic:** root
**Child subtrees:** (none yet)

## Integration Context

**Priority:** 🔴  
**ME/CFS links:**
- Host determinants (not virus) predict ME/CFS after EBV: HLA-A*01 risk, HLA-E*0103 protective; heterologous T-cell immunity from prior infections
- Sex hormones: estrogens increase B-cell survival + HLA-II expression → female ME/CFS skew after EBV
- Jason/Katz Northwestern study: 4,501 students, pre-illness markers (IL-5/IL-13, GI symptoms, glutathione/thiamine) predicted ME/CFS with 97% accuracy
- Dubbo Infection Outcomes Study (Hickie 2006): 12% post-infectious fatigue regardless of pathogen → host-response, not virus-specific
- EBV-acquired immunodeficiency model: 3 steps — acquired immunodeficiency → ectopic lymphoid structures → T/B cell exhaustion (PD-1⁺/Tim-3⁺)  
**Target chapters:** ch05-onset-patterns, ch07-immune-dysfunction, ch12-genetics-epigenetics, ch14g-autoimmune  
**Pre-identified hypotheses:** Host-response (not pathogen) as ME/CFS determinant; EBV-acquired immunodeficiency as ME/CFS substrate  
**Research questions:**
1. Direction A (host genetics → EBV → ME/CFS): Which HLA haplotypes and pre-existing T-cell repertoires determine chronic fatigue progression after EBV?
2. Direction B (EBV-acquired immunodeficiency → loss of self-tolerance → autoimmune features): Does the Ruiz-Pablos 3-step model explain the autoantibody signature in ME/CFS?

**Key sources:**
- Clute/Selin 2005 JCI, 2017 mBio (heterologous immunity)
- Ruiz-Pablos & Irber, J Transl Med 2023 (3-step model)
- Jason/Katz PMC 2017; Jason et al. J Rehabil 2022 (predictors)
- Hickie et al. BMJ 2006 (Dubbo)
- Hanson et al. Cell Reports Medicine 2025 (T-cell epigenetic reprogramming)
- dUTPase study PMID 41451845 2025 (72.5% co-reactivation EBV+HHV-6+VZV)

**Execution:** 4 sequential `/integrate-topic` runs (topics above, in order)

## Execution Detail

> Full plan migrated from `content-staging/20260420 plan-ebv-response-heterogeneity-integration.md`. Status: ⬜ all 4 topics pending.

### Topic 1: EBV Response Heterogeneity — Host Determinants

**Target:** ch05 (trigger mechanisms), ch07 (immune dysfunction), ch12 (genetics-epigenetics)

Key content:
- Heterologous immunity: prior influenza memory T cells cross-react with EBV, determining mono severity (Clute/Selin 2005 JCI, 2017 mBio)
- HLA genetics: HLA-A*01 risk, HLA-E*0103 protective, "weak" HLA-II haplotypes impair CD4 control of EBV latency (Ruiz-Pablos & Irber 2023)
- Sex hormones: estrogens increase B-cell survival + HLA-II expression → female skew
- Age-dependent response: children asymptomatic, adolescents severe, adults prolonged

### Topic 2: Pre-Illness Predictors of ME/CFS Post-EBV

**Target:** ch05 (onset patterns, prodromal signs), ch07 (immune dysfunction), ch12 (genetics)

Key content:
- Jason/Katz Northwestern prospective study: 4,501 students → pre-illness markers (low IL-5/IL-13, GI symptoms, clustered cytokine networks, low SAM/glutathione/thiamine) predicted ME/CFS with 97% accuracy
- Dubbo Infection Outcomes Study (Hickie 2006 BMJ): 12% post-infectious fatigue regardless of pathogen → host response, not virus
- Hornig/Lipkin: early elevated cytokines → exhaustion after ~3 years

### Topic 3: EBV-Acquired Immunodeficiency Model

**Target:** ch07 (immune dysfunction), ch14g (autoimmune)

Key content:
- Ruiz-Pablos & Irber 2023 three-step model: acquired EBV immunodeficiency → ectopic lymphoid structures → immune exhaustion (PD-1+/Tim-3+)
- EBV immune evasion: gp42-HLA-II blocking, IL-10/TGF-β secretion, molecular mimicry, exosomal miRNA
- Autoantibodies to EBV-mimicking arginine-rich sequences (medRxiv 2024)

### Topic 4: Recent Advances (2024-2026)

**Target:** ch07, ch14g, ch06 (metabolism)

Key content:
- CURE-ME Consortium (Charité Berlin): EBV-driven autoreactive T/B cell responses
- Hanson/Cornell 2025: T-cells epigenetically reprogrammed → exhaustion, fatty acid oxidation dependence
- dUTPase antibodies (2025): 72.5% ME/CFS co-reactivation EBV+HHV-6+VZV vs 31% controls
- Munich adolescent follow-up: viral load ≠ clinical severity → host response determines outcome

## Sources

- Clute et al. JCI 2005; Sharma et al. mBio 2017
- Ruiz-Pablos & Irber, J Transl Med 2023
- Jason et al. J Rehabil 2022; Katz/Jason PMC 2017
- Hickie et al. BMJ 2006
- Hornig et al. Sci Adv 2015; Mol Psychiatry 2016
- Jouand et al. Blood 2023
- medRxiv 2024.12.30.24319800v1 (autoantibodies)
- Hanson et al. Cell Reports Medicine 2025
- dUTPase study PMID 41451845 (2025)
- Pricoco et al. Front Pediatrics 2023

## Nodes

> **Status: stub** — nodes not yet populated. Run Phase 3 of each `/integrate-topic` run to populate this table.

| ID | Title | Env | Cert | mech | tx | expl | math | dx | Status | Children |
|----|-------|-----|------|------|----|------|------|----|--------|----------|
