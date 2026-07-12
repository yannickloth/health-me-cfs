# Brainstorm: Wirth-Scheibenbogen 2026 Update Integration

**Source**: The Sick Times article "Breaking the vicious cycle: How two German scientists seek to solve ME" (2026-05-14)
**Focus**: New clinical trial results, mechanistic scope analysis, responder phenotype predictions

## Research Directions

1. **Immunoadsorption RCT Negative Result Analysis**
   - Mechanism: Why did Charité RCT (n=65) fail when prior open-label studies showed 70% response?
   - Hypothesis: Study did not recruit antibody-positive patients specifically
   - Testable prediction: Subgroup analysis of antibody-positive patients will show significant treatment effect
   - Certainty: 0.55 (mechanistic rationale strong, subgroup data not yet available)

2. **Beta-Cell Targeting vs. Antibody Removal**
   - Mechanism: Current IA removes circulating antibodies but beta-cells continue production
   - Innovation: Targeting beta-cells to prevent renewed antibody production
   - Research gap: No published trials of beta-cell suppression in ME/CFS (Scheibenbogen team "preparing trials")
   - Certainty: 0.40 (theoretical, based on autoimmune disease analogies)

3. **Mouse Autoantibody Transfer Validation**
   - Finding: Jeroen den Dunnen (Amsterdam UMC) reproduced Long COVID symptoms in mice via autoantibody injection
   - Significance: Experimental validation of autoantibody pathogenicity (beyond human correlation)
   - Status: Peer-reviewed (Amsterdam) + Belgian study; others preprint
   - Certainty: 0.60 (direct experimental evidence in animal model)

4. **AIMM Responder Phenotype Development**
   - Core hypothesis: MDC 002 will only help AIMM-dominant subtype (~30-40% of patients)
   - Phenotype markers: (a) Sodium overload on MRI, (b) Exercise-triggered PEM with delayed onset, (c) Muscle-ischemic symptoms > CNS symptoms
   - Research need: Prospective phenotyping trial to predict MDC 002 response
   - Certainty: 0.50 (strong mechanistic logic, no empirical validation yet)

5. **Mechanism Positioning in Causal Hierarchy**
   - Analysis: AIMM is DOWNSTREAM of root causes, not itself a trigger-capable mechanism
   - Implication: MDC 002 treats symptom-generating cascade, not root cause
   - Therapeutic consequence: Best results when combined with upstream treatments (beta-2 AR resensitization, blood volume restoration)
   - Certainty: 0.60 (established by our causal hierarchy analysis)

## Treatment Implications

6. **MDC 002 Monotherapy vs. Combination Therapy**
   - Wirth position: "severely ill patients will need multiple medications"
   - Our analysis: Combines downstream (MDC 002) + upstream (beta-2 AR, blood volume) treatments
   - Research design: Factorial RCT testing MDC 002 alone vs. MDC 002 + upstream interventions
   - Certainty: 0.50 (clinical consensus, no trial data)

7. **Beta-Cell Suppression Combination with IA**
   - Rationale: IA removes existing antibodies; beta-cell suppression prevents rebound
   - Clinical precedent: Similar approach in other autoimmune diseases (rituximab + maintenance)
   - ME/CFS gap: No trials testing this combination
   - Certainty: 0.45 (based on autoimmune disease analogies, ME/CFS-specific unknown)

## Diagnostic/Biomarker Ideas

8. **Sodium MRI as MDC 002 Response Predictor**
   - Current status: Wirth 2022 established sodium overload in ME/CFS muscle
   - New application: Use baseline sodium overload magnitude to predict MDC 002 response
   - Research design: Stratify MDC 002 trial by sodium MRI tertiles
   - Certainty: 0.55 (biologically plausible, requires trial validation)

9. **Post-Exercise Calcium Measurement Protocol**
   - Gap: No direct calcium overload measurements in ME/CFS muscle during PEM (article acknowledges imaging limitations)
   - Innovation: Develop calcium-sensitive fluorescent probe protocol for muscle biopsies
   - Application: Validate AIMM mechanism and track MDC 002 target engagement
   - Certainty: 0.35 (technical feasibility unknown, invasive)

## Cross-Disease Bridges

10. **AIMM in Post-Viral Fatigue Syndromes**
    - Finding: Article notes ME can emerge from various triggers, including COVID-19
    - Bridge: Test whether AIMM mechanism applies to other post-viral fatigue syndromes (EBV, CMV, influenza)
    - Research: Sodium MRI in non-COVID post-viral fatigue patients
    - Certainty: 0.45 (plausible based on shared pathophysiology, untested)

## Mathematical Model Extensions

11. **AIMM Cascade ODE Parameters**
    - Current model: Sodium-calcium cascade described qualitatively
    - Extension: Quantify (a) Na+ accumulation rate, (b) NCX reversal threshold, (c) Ca2+ toxicity threshold
    - Application: Predict PEM severity from baseline sodium status + exertion level
    - Certainty: 0.40 (requires clinical parameter estimation)

## Priority Rankings

**Tier 1 (High Priority, Actionable Now)**:
- #1: Immunoadsorption RCT negative result analysis (subgroup data imminent)
- #3: Mouse autoantibody transfer validation (published, needs integration)
- #4: AIMM responder phenotype development (guides MDC 002 trial design)

**Tier 2 (Medium Priority, Research-Stage)**:
- #2: Beta-cell targeting trials (Scheibenbogen team preparing)
- #5: Mechanism positioning analysis (our causal hierarchy work)
- #6: MDC 002 combination therapy research (clinical consensus)

**Tier 3 (Lower Priority, Exploratory)**:
- #7: Beta-cell/IA combination (theoretical)
- #8: Sodium MRI predictor (requires MDC 002 trial access)
- #9: Post-exercise calcium measurement (technical barriers)
- #10: Cross-disease AIMM testing (exploratory)
- #11: ODE parameter quantification (requires new clinical data)

## Integration Strategy

**Immediate (Phase 4)**:
- Update ch14b with Berlin 2026 conference RCT results
- Update ch21 clinical trials registry with new status
- Add mechanistic scope limitation to ch06 (downstream vs. root cause)
- Update ch14 treatment map with MDC 002 responder expectations

**Research-Stage (Queue for future topics)**:
- Beta-cell suppression as separate `/integrate-topic` cycle
- Mouse autoantibody transfer studies as separate `/integrate-topic` cycle
- AIMM responder phenotype development as clinical trial design proposal