# Integration Plan: Brain Clearance Architecture 2026

**Purpose:** Integrate Chayama et al. (2026) neuronal protein tracing paper revealing "nearest exit" brain clearance architecture — routes through dura/skull/nasal cavity, skull B cell tolerogenic checkpoints, and distinct disease disruption mechanisms (inflammatory rerouting vs obstructive trapping).

**Topic slug:** `brain-clearance-architecture-2026`

**Target chapters:**
- ch15 (symptom-producing mechanisms) — glymphatic sections, NE-vasomotion, neurodegeneration risk
- ch08 (neurological) — glymphatic-meningitis section
- ch16 (causal hierarchy) — sleep fragmentation, glymphatic vicious cycle
- ch20 (diagnostics) — imaging methods

**Tracking table:**
| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|------------------|------|-----------|--------|-------|
| 1 | Nearest-exit clearance routes in ME/CFS | 1 | — | ✅ done | achievement + speculation + hypothesis registry entries |
| 2 | Dual-speed glymphatic (Toscano) | 1 | — | ⬜ pending | outside scope; committed separately |
| 3 | Inflammation disrupts clearance routing | 1 | — | ✅ done | skull B cell tolerance, inflammatory rerouting, disease-stage transitions |
| 4 | Regional clearance heterogeneity → vulnerability | 2 | — | ✅ done | PEM compartment overload, nearest-exit cognitive maps |
| 5 | MR-AIV diagnostic tool | 2 | — | ⬜ pending | outside scope; committed separately |
| 6 | Cross-disease clearance comparison | 3 | — | ✅ done | Long COVID vs ME/CFS; CSF:blood ratio biomarker |

**Phase 1:** 8 papers, 9 bib, annotated bib updated.
**Phase 2:** ch15: 1 achievement, 2 speculations, 1 limitation, neurodegeneration cert 0.30→0.35. Registry: 10 entries.
**Phase 3:** Brainstorm `content-staging/brainstorm-brain-clearance-architecture-2026-05-30.md`, 63 ideas.
**Phase 4:** 63 ideas → 4 more specs, 1 open-question, 1 cross-disease bridge. All falsifiable.
**Phase 4a:** 5 environments, all falsifiable with null-result clauses.
**Phase 4b:** 1 match (ch08 glymphatic-meningitis), 1 adapted. No certainty changes (<0.60 floor).
**Phase 4c:** 73 pairs: 24 reinforcement, 28 feed-into, 2 conflict, 19 independent. Audit: `content-staging/compat-audit-brain-clearance-2026-05-30-v2.md`.
**Certainty adjustments:** 0 bumps, 0 reductions.
**Phase 5:** Build PASS (3 fix cycles).
**Phase 6a:** Review convergence: 2 rounds, CONVERGED (1 finding).
**Phase 6b (adversarial): 6 personas, 55 findings. Applied DTI-ALPS inline caveats. Report: `/tmp/review-adversarial-brain-clearance-2026-05-30.md`.
**Phase 6c (typst): 2 rounds, CONVERGED. 1 finding: UK→US English fix in skull B cell section. Build PASS. Report: `/tmp/typst-review-brain-clearance-2026-05-30.md`.
**Phase 7:** Changelog written (Version 8).
**Phase 8:** Committed (e73220e).

## Phase 4c: Reinforcement Chains, Conflict Clusters, and Certainty Adjustments

### Feed-Into Chains (4 chains, longest: 3 hops)

#### Chain 1: Kynurenine → B Cell Tolerance → Autoantibodies → Rerouting (3 hops)
```
Kynurenine-Sleep-Mitochondria-Excitotoxicity Feedback Loop (0.50)
  → spec:ch15-skull-bcell-tolerance
    → Tissue-Specific Autoantibodies Invisible to ANA HEp-2 (0.60)
      → spec:ch15-inflammatory-rerouting
```
**Mechanism:** Kynurenine loop produces neuroinflammation → downregulates PD-L1 on skull B cells → converts tolerogenic to immunogenic state → produces CNS-specific autoantibodies → inflammatory rerouting of brain antigens

#### Chain 2: Nearest-Exit Architecture → PEM Compartment Overload → Decoupling Stratification (2 hops)
```
Nearest-Exit Compartmentalized Brain Clearance
  → spec:ch15-pem-compartment-overload
    → Decoupling-Based PEM Prediction and Treatment Response Stratification (0.55)
```
**Mechanism:** Compartmentalized clearance provides basis for symptom specificity → exertion overloads specific compartments → predicts which decoupling axis will be overloaded → stratifies treatment response

#### Chain 3: Inflammatory Rerouting → Long COVID Parallel → Counterfactual Validation (2 hops)
```
spec:ch15-inflammatory-rerouting
  → spec:ch15-longcovid-clearance-parallel
    → Long-COVID as Counterfactual Validation of ME/CFS Biology (0.55)
```
**Mechanism:** Inflammatory rerouting mechanism → Long COVID = inflammatory rerouting, ME/CFS = obstructive trapping → validates post-infectious framework while specifying divergence

#### Chain 4: Disease Staging → Skull Channel Biomarker → Glymphatic Enhancement (2 hops)
```
Inflammatory vs Obstructive Clearance Failure in ME/CFS Progression
  → spec:ch15-skull-channel-biomarker
    → Glymphatic-Capillary Clearance Enhancement (0.60)
```
**Mechanism:** Inflammatory → obstructive transition → channel biomarker progression (expansion → narrowing) → identifies patients for glymphatic enhancement therapy

### Reinforcement Clusters (4 clusters)

#### Cluster A: Neurodegenerative Cross-Disease Convergence (5 hypotheses converge)
**Converging endpoints:**
1. spec:brain-clearance-ad-bridge
2. spec:brain-clearance-pd-bridge
3. spec:brain-clearance-narcolepsy-bridge
4. spec:brain-clearance-fm-bridge
5. Cross-Disease Decoupling Signatures (0.55)

**Convergence mechanism:** ME/CFS shares clearance failure patterns with AD, PD, narcolepsy, and FM via shared sleep, glymphatic, and autonomic dysfunction

**Evidence independence:**
- Cross-Disease Decoupling Signatures: 0.55 certainty, established framework
- AD bridge: converges with DTI-ALPS, tau phosphorylation, neuroinflammation
- PD bridge: converges with LC-NE deficiency, autonomic dysfunction
- Narcolepsy bridge: converges with orexin→PKA→tau pathway, alpha-delta sleep
- FM bridge: converges with alpha-delta sleep, central sensitization

**Certainty bump proposal:** No bump - cross-disease convergence is conceptual, not independent experimental lines

#### Cluster B: ECM/Fibrosis and Clearance Convergence (5 hypotheses converge)
**Converging endpoints:**
1. spec:losartan-fibrosis
2. Basal Lamina-Targeted Capillary Restoration (0.45)
3. Post-Exertional MMP Surge (0.50)
4. Inflammatory vs Obstructive Clearance Failure
5. TGF-beta Isoform Imbalance (0.30)

**Convergence mechanism:** ECM dysregulation contributes to obstructive clearance failure via perivascular fibrosis, MMP-mediated degradation, and basement membrane pathology

**Evidence independence:**
- ECM/fibrosis: HIF-1alpha-driven ECM degradation (cert 0.55)
- Mast cell-MMP inhibition (cert 0.50)
- BM-Glymphatic Cross-Talk (cert 0.55)

**Certainty bump proposal:** No bump - evidence from similar mechanism lines, not independent labs/methods

#### Cluster C: Central Noradrenergic Dysfunction Convergence (3 hypotheses converge)
**Converging endpoints:**
1. Selective Central Noradrenergic Deficiency with Preserved Dopaminergic Function (0.70)
2. Central NE Deficiency Impairs Glymphatic Clearance via Vasomotion
3. spec:clonidine-fast-advective

**Convergence mechanism:** NE deficiency impairs glymphatic clearance via vasomotion failure → alpha-2 agonists (clonidine) restore NE oscillation → improve clearance

**Evidence independence:**
- NE deficiency: CSF NE pathway reduction (cert 0.70), validated across multiple measurements
- Vasomotion-glymphatic link: LC-NE system drives slow vasomotion (Hauglund 2025)
- Clonidine: alpha-2 agonist modulates NE release (established pharmacology)

**Certainty bump proposal:** No bump - NE deficiency already high certainty (0.70), clonidine speculative

#### Cluster D: Autoantibody Mechanisms Convergence (3 hypotheses converge)
**Converging endpoints:**
1. spec:ch15-skull-bcell-tolerance
2. Tissue-Specific Autoantibodies Invisible to ANA HEp-2 (0.60)
3. Dual Autoantibody Populations: GPCR IgG vs. Tissue-Structural IgM (0.45)

**Convergence mechanism:** Skull B cell tolerance failure produces CNS-specific autoantibodies that are invisible to ANA testing; dual populations (GPCR IgG + tissue-structural IgM) explain autoimmunity profile

**Evidence independence:**
- ANA gap: Tatai 2026 (cert 0.60), tissue blot vs ANA
- Dual populations: different antibodies for different targets
- Skull B cell tolerance: Chayama 2026 single study, not yet replicated

**Certainty bump proposal:** No bump - single lab (Chayama 2026) provides skull B cell evidence, not independent validation

### Conflict Clusters (2 clusters)

#### Cluster 1: ME/CFS vs Long COVID Clearance Mechanisms
**Hypotheses in tension:**
1. spec:ch15-longcovid-clearance-parallel: Emphasizes DIVERGENCE (LC=rerouting, ME/CFS=trapping)
2. Long-COVID as Counterfactual Validation of ME/CFS Biology (0.55): Emphasizes SHARED framework

**Conflict type:** Overlapping-but-distinct tensions

**Tension:** Divergence (distinct treatment strategies) vs shared framework (common pathophysiology)

**Certainty adjustment:**
- No change (rule: conflict between comparably-certain hypotheses)
- Flag as "unresolved tension" - requires clinical stratification

**Resolution:** Both true - ME/CFS and Long COVID share post-infectious framework but have distinct clearance failure mechanisms (rerouting vs trapping)

#### Cluster 2: Kynurenine-Driven Neuroinflammation vs CD80 Adaptive Tolerance
**Hypotheses in tension:**
1. Kynurenine-Sleep-Mitochondria-Excitotoxicity Feedback Loop (0.50): Neuroinflammation drives skull B cell conversion to immunogenic
2. CD80 Suppression as Adaptive Tolerance Mechanism in ME/CFS (0.50): CD80 downregulation is adaptive, preventing chronic hyperactivation

**Conflict type:** Divergent tolerance mechanism emphasis

**Tension:** Kynurenine loop proposes damaging neuroinflammation → B cell autoimmunity; CD80 hypothesis proposes adaptive peripheral tolerance preventing tissue damage

**Certainty adjustment:**
- No change (cert diff = 0.00)
- Flag as "unresolved tension" - may represent complementary border-peripheral mechanisms

**Resolution:** Both mechanisms could operate - kynurenine drives CNS autoimmunity (border failure) while CD80 prevents peripheral T cell hyperactivation

### Additional Tensions

#### Tension 1: Orexin Paradox in ME/CFS
**Mechanisms in tension:**
- spec:brain-clearance-narcolepsy-bridge: Orexin deficiency spectrum links ME/CFS to narcolepsy
- Orexin→PKA→Tau Phosphorylation (0.25): DORAs reduce tau phosphorylation

**Tension:** DORAs might help ME/CFS tau pathology but orexin deficiency may already impair glymphatic clearance (orexin drives arousal/sleep-wake cycles)

**Certainty adjustment:**
- No change - speculative tension
- Research needed: measure orexin levels in ME/CFS, assess DORA safety in ME/CFS

#### Tension 2: PEM Mechanism Independence
**Mechanisms:**
- Constant Body Position as Primary PEM-Safety Criterion (0.50): Addresses orthostatic demand
- spec:ch15-pem-compartment-overload: Addresses cerebral clearance demand

**Tension:** Independent mechanisms - one doesn't explain the other

**Certainty adjustment:**
- No change - complementary, not conflicting

### Proposed Certainty Adjustments Summary

**Bumps (+0.05 each):**
- None (no qualifying independent convergent lines with cert ≥ 0.20 from different labs/methods)

**Reductions (-0.05 each):**
- None (no conflicts with cert diff ≥ 0.20)

**Detailed analysis:**
- All reinforcement clusters have at least one element below 0.20 certainty or evidence from same lab/method
- Feed-into chains don't qualify for bumps (upstream certs often < 0.50)
- Conflicts have cert diff ≤ 0.10 (comparably certain)
- High-certainty hypotheses (0.70+) already near ceiling, diminishing returns

### Therapeutic Integration

**Clonidine:**
- Strong alignment with Decoupling-Based PEM Prediction framework
- Mechanistic rationale from Central NE Deficiency hypothesis
- Stratification: autonomic-decoupled phenotype (certainty justified by decoupling framework)

**TAK-242:**
- Novel application, no existing ME/CFS references
- Mechanistic rationale: TLR4 inhibition → reduced neuroinflammation → preserved BBB integrity
- Safety profile unknown in ME/CFS - requires preclinical testing

**Losartan:**
- Strong alignment with ECM/fibrosis hypotheses
- Direct mechanistic link to TGF-beta modulation
- Stratification: obstructive clearance pattern with elevated ECM biomarkers

### Statistical Summary

| Metric | Count |
|--------|-------|
| Feed-into chains | 4 |
| Longest chain | 3 hops |
| Reinforcement clusters | 4 |
| Conflict clusters | 2 |
| Additional tensions | 2 |
| Certainty bumps proposed | 0 |
| Certainty reductions proposed | 0 |

**Notes:**
- Toscano 2026 (MR-AIV) committed separately; rows 2+5 pending
- No direct ME/CFS data; all cross-disease extrapolation
- Related to sleep-glymphatic subtree
- Brain clearance architecture provides framework for compartment-specific symptom expression
- Cross-disease bridges (AD, PD, narcolepsy, FM) strengthen post-infectious framework while maintaining ME/CFS specificity
