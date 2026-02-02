# Research Plan: Adult ME/CFS Recovery Evidence

## Executive Summary

Create a new section "Evidence That Adult Recovery, While Rare, Does Occur" to parallel the existing pediatric section (ch14c, Section 18.8). This plan covers not just documenting existing evidence, but critically analyzing its limitations and exploring whether true recovery potential is substantially higher than the commonly cited ~5%.

---

## Part 1: Current State Analysis

### 1.1 Existing Content Inventory

**Pediatric Recovery Section (model to parallel):**
- Location: `contents/part3-treatment/ch14c-pediatric-severe.tex` (lines 787-866)
- Key statistic: 68% recovery at 10 years
- Citation: Rowe2019pediatric

**Scattered Adult Recovery Content:**

| File | Content | Lines |
|------|---------|-------|
| `ch05-prognosis.tex` | 5% recovery, 39.5% improvement, Lacourt2022 (8.3% complete) | Core stats |
| `ch05-progression.tex` | Partial reversal patterns, remission characteristics | Trajectories |
| `ch14a-urgent-action-severe.tex` | "extremely rare" severe adult recovery, pediatric contrast | Lines 125-137 |
| `ch07-immune-dysfunction.tex` | Developmental tolerance hypothesis | Mechanisms |
| `appendix-g-research-synthesis.tex` | Reversibility gap, Rekeland 2024 ~20% placebo improvement | Research gaps |

**Staging Area (not yet integrated):**
- `.claude/content-staging/developmental-plasticity-window.tex`
- `.claude/content-staging/recovery-capital-model.tex`
- `Literature/pediatric-insights/scientific-insights-pediatric-chapters.md`

### 1.2 Key Existing Citations

- `Rowe2019pediatric` - Pediatric 68% at 10 years
- `Lacourt2022prognosis` - Adult 8.3% recovery, 13.1% recovery/improvement
- `Cairns2005prognosis` - Systematic review
- `Rekeland2024` - 6-year follow-up, ~20% placebo improvement
- `Heine2019pediatricCFS` - 54-94% pediatric vs ≤22% adult

---

## Part 2: Critical Analysis Framework

### 2.1 The Central Question

**Is the ~5% adult recovery rate a biological reality, or an artifact of how we study, define, and treat ME/CFS?**

This section must go beyond documenting the 5% and critically examine:

1. **Measurement artifacts** - Are we measuring recovery correctly?
2. **Selection bias** - Who gets into studies, who drops out?
3. **Definition inconsistency** - What counts as "recovery"?
4. **Treatment adequacy** - Have adults received comparable support to children?
5. **Timing factors** - Is early intervention even attempted in adults?
6. **Subtype conflation** - Are we averaging across heterogeneous conditions?

### 2.2 Evidence Limitations to Document (Deep Analysis Required)

**Guiding principle:** Each limitation below requires thorough investigation. Do not accept the 5% at face value—interrogate every assumption behind it.

#### A. Definition Problems (Critical)

| Issue | Impact on Recovery Rates | Research Task |
|-------|-------------------------|---------------|
| No standardized recovery definition | Studies incomparable; some use "no longer meets criteria," others use "full return to premorbid function" | Catalog all definitions used in prognosis studies |
| Self-report vs objective measures | Self-report may over- or under-estimate | Compare studies using different measurement approaches |
| Threshold effects | Patient at 95% function classified same as 50% | Analyze continuous outcome data where available |
| Time horizon | "Recovery" at 6 months vs 10 years | Plot recovery rate by follow-up duration |
| Relapse exclusion | Some studies exclude "recovered then relapsed" | Assess how relapse handling affects rates |
| Symptom vs function focus | Meeting criteria ≠ functional recovery | Distinguish symptom remission from functional recovery |

**Deep dive required:**
- What percentage of "non-recoverers" have substantial improvement?
- What is the distribution of outcomes (not just binary recovered/not)?
- How would rates change with consistent 10-year follow-up across all studies?

**Research question:** What would recovery rates be with standardized, objective criteria?

#### B. Selection Bias (Critical—May Be the Largest Confounder)

| Bias Type | Direction of Effect | Magnitude Estimate | Research Task |
|-----------|---------------------|-------------------|---------------|
| Survivors in clinic samples | Underestimates recovery | Potentially large | Compare clinic vs population-based studies |
| Loss to follow-up | Unknown direction | Variable | Analyze LTFU rates and reasons |
| Severe patients in research | Underestimates recovery | Likely large | Compare severity distribution in studies vs population |
| Diagnosis delay | Overestimates chronicity | Very large | Model recovery rate by time-to-diagnosis |
| Referral bias | Underestimates recovery | Large in specialist studies | Compare primary care vs specialist cohorts |
| Volunteer bias | Unknown | Unknown | Assess who participates in studies |
| Publication bias | May underestimate | Unknown | Search for unpublished cohort data |

**Deep dive required:**
- **The "diagnosis delay paradox":** If early recoverers never get diagnosed, the 5% measures recovery among those who were sick long enough to be diagnosed. This is a fundamentally different population than "all people who develop ME/CFS."
- **Quantification attempt:** If average diagnosis takes 5 years, and recovery window is 1-2 years, what proportion of recoverers are never counted?
- **The specialist clinic problem:** Most prognosis studies come from specialist clinics that see the most severe, treatment-resistant cases. What are outcomes in primary care?

**Critical insight:** The 5% may represent recovery among the most severe, longest-duration, treatment-resistant subset—NOT the true population rate. The true denominator is unknowable with current study designs.

**Research question:** Can we estimate the "missing recoverers" who were never diagnosed?

#### C. Treatment Context Differences: Pediatric vs Adult (The Natural Experiment)

The pediatric-adult gap (68% vs 5%) represents a natural experiment: same disease, vastly different outcomes. This demands explanation.

| Factor | Pediatric | Adult | Impact | Evidence Quality |
|--------|-----------|-------|--------|------------------|
| Diagnostic delay | Often shorter | Often years | Adults diagnosed after "critical window" closed | Strong (Lacourt 2022) |
| Accommodations | School accommodations common | Workplace rarely accommodates | Adults forced to push through | Observational |
| Rest opportunity | Can stay home | Must work to survive | Chronic overexertion in adults | Strong theoretical |
| Social support | Family support normative | Often isolated | Recovery capital differs | Observational |
| Medical belief | "Children recover" expectation | "Adults don't recover" nihilism | Self-fulfilling prophecy | Theoretical |
| Legal protections | Education law mandates accommodations | Employment law weaker | Structural inequality | Documented |
| Financial pressure | Parents absorb costs | Must self-support | Cannot afford to rest | Strong theoretical |
| Identity disruption | Still forming identity | Career/identity established | Adults resist "sick role" | Psychological theory |

**Deep dive required:**
- **Quantify the accommodation gap:** What percentage of pediatric vs adult patients receive adequate accommodations?
- **Natural experiment analysis:** Are there adult populations with pediatric-like support (e.g., those with disability benefits, supportive families)? What are their outcomes?
- **Cross-cultural comparison:** Do countries with stronger social safety nets show better adult outcomes?
- **The "rest trial" question:** Has anyone studied adult outcomes when genuine rest is possible?

**Hypothesis:** The pediatric-adult gap may be largely environmental, not biological. If true, this is actionable—we could improve adult outcomes by improving adult circumstances.

**Counter-hypothesis to investigate:** The gap IS biological (developmental plasticity, immune system maturity). What evidence supports this?

#### D. Subtype Conflation (The Heterogeneity Problem)

**Core issue:** ME/CFS is almost certainly multiple conditions with a shared phenotype. Averaging recovery rates across subtypes is like averaging cancer survival rates across all cancer types—meaningless for individual prognosis.

Current statistics combine:

| Subtype | Hypothesized Recovery Potential | Rationale | Evidence Quality |
|---------|--------------------------------|-----------|------------------|
| Post-viral acute onset | Potentially higher | Immune trigger may resolve | Theoretical, some cohort data |
| Gradual onset | Potentially lower | Different mechanism? | Observational |
| Autoimmune-mediated | Potentially treatable | Immunoadsorption responders | Emerging (Stein 2024) |
| MCAS-predominant | Often manageable | MCAS treatments effective | Clinical experience |
| OI-predominant | Often improvable | Established OI treatments | Good |
| EBV-reactivation | Potentially treatable | Antiviral responders | Limited (Lerner) |
| Post-COVID | Unknown trajectory | Too recent for long-term data | None yet |
| Mitochondrial dysfunction dominant | Unknown | No proven mito treatments yet | Theoretical |

**Deep dive required:**
- **Subtype-specific prognosis data:** Do ANY studies stratify outcomes by onset type, biomarker profile, or comorbidity pattern?
- **Treatment response as subtype proxy:** If 70% respond to immunoadsorption, what defines that 70%? This IS the autoimmune subtype.
- **The post-COVID natural experiment:** Long COVID cohorts provide unprecedented sample sizes. Early trajectory data?
- **Biomarker-defined subtypes:** Can NIH 2024 biomarkers define subtypes with different prognoses?

**Research question:** What are subtype-specific recovery rates? This may be THE most important question—5% overall could hide 30% in one subtype and 1% in another.

#### E. The Era Problem (Pre-NIH vs Post-NIH)

**Critical framing:** All existing prognosis data comes from an era BEFORE:
- Identified disease mechanisms (NIH 2024)
- Druggable targets
- Biomarker-based patient stratification
- Mechanism-based treatment trials

This is not a minor caveat—it fundamentally limits the relevance of historical recovery rates.

**Analogy:** HIV prognosis pre-1996 (before HAART) vs post-1996. The condition didn't change; treatment did. Historical prognosis became obsolete overnight.

**We may be at a similar inflection point for ME/CFS.**

**Research tasks:**
1. Document timeline: When did we go from "medically unexplained" to "mechanism identified"?
2. Track treatment trials emerging from NIH findings
3. Identify which historical studies' populations might benefit from now-available treatments
4. Project: What might recovery rates look like with mechanism-based treatment?

**Key insight:** Telling patients "5% recover" based on pre-mechanism-era data may be as misleading as telling an HIV patient in 1997 that prognosis is based on pre-HAART data.

**Research question:** What is the appropriate way to communicate prognosis during a period of rapid mechanistic discovery?

### 2.3 Summary: The Case Against Taking 5% at Face Value

**The 5% adult recovery rate is not a biological constant—it's a measurement from a specific context:**

1. **Who was measured:** Patients sick long enough to be diagnosed (excluding early recoverers), severe enough to reach specialist clinics (excluding mild cases), who didn't drop out of follow-up (excluding those who recovered and left care)

2. **How recovery was defined:** Inconsistently across studies, often with strict criteria, and at variable time horizons

3. **What treatment they received:** Symptomatic management in an era before disease mechanisms were understood—no mechanism-based interventions

4. **What support they had:** Inadequate accommodations, pressure to work, limited rest opportunity—conditions known to worsen outcomes

5. **What era they lived in:** Pre-NIH-2024, pre-biomarker, pre-targeted-treatment

**The question is not "is 5% the true rate?" but rather:**
- What is the recovery rate among patients diagnosed early?
- What is the recovery rate among patients who can genuinely rest?
- What is the recovery rate among specific subtypes?
- What will the recovery rate be with mechanism-based treatment?

**These questions remain unanswered. The 5% answers none of them.**

---

### 2.4 Reasons to Believe Recovery Could Be Higher

#### A. The NIH 2024 Study Paradigm Shift

The NIH's February 2024 deep phenotyping study represents a potential paradigm shift that has NOT yet been reflected in prognosis statistics:

**Key findings with treatment implications:**
- Identified specific immune exhaustion signatures (T-cell dysfunction)
- Documented brain connectivity changes (motor cortex abnormalities)
- Found gut microbiome alterations
- Demonstrated autonomic dysfunction mechanisms
- Showed metabolic abnormalities (amino acid, lipid metabolism)

**Why this matters for recovery:**
1. **From "unexplained" to targetable:** Previous recovery statistics come from an era when ME/CFS had no identified mechanisms. Treatment was symptom management. Now we have druggable targets.

2. **Subtype identification:** The study's biomarkers may allow patient stratification. Current 5% averages across all subtypes; specific subtypes may have much higher recovery with targeted treatment.

3. **Treatment development timeline:** Findings from Feb 2024 → clinical trials → approved treatments takes years. Current statistics reflect outcomes WITHOUT treatments that may emerge from this research.

4. **Validation effect:** NIH-level validation may improve:
   - Clinical recognition → earlier diagnosis
   - Research funding → treatment development
   - Accommodation support → environmental factors
   - Clinical nihilism → proactive management

**Hypothesis:** Recovery statistics from pre-2024 studies are based on a "no mechanism, no treatment" paradigm. Post-NIH-study recovery rates may be substantially different as mechanism-based treatments emerge.

**Research need:** Track treatment trials emerging from NIH findings and their effect on recovery rates.

#### B. The Pediatric Proof of Concept

- 68% pediatric recovery proves ME/CFS is not inherently irreversible
- The condition CAN reverse given: time, rest, accommodations, support
- If biology were deterministic, pediatric rates would also be ~5%

**Implication:** The gap suggests modifiable factors, not fixed biology.

#### C. Treatment Response Data

| Treatment | Response Rate | Implication |
|-----------|---------------|-------------|
| Immunoadsorption | 70% improvement (Stein 2024) | Autoimmune subtype is treatable |
| LDN | 73.9% positive response (Polo 2019) | Neuroinflammatory subtype responds |
| MCAS protocols | High in MCAS+ patients | MCAS subtype is treatable |
| Antivirals | Responders exist (Lerner) | Viral persistence subtype may respond |

**Implication:** Untreated or undertreated patients counted as "non-recoverers."

#### D. Natural History Data

- Rekeland 2024: ~20% substantial improvement in placebo arm at 6 years
- This suggests spontaneous improvement is more common than "recovery" statistics imply
- Many may improve significantly without meeting strict "recovery" criteria

#### E. The Diagnostic Delay Problem

- Lacourt 2022: Recoverers had 23 months diagnostic delay vs 55 months for non-recoverers
- Most adults diagnosed years into illness
- What if recovery window is first 1-2 years?
- Current "adult recovery rate" may measure "late-diagnosed recovery rate"

**Hypothesis:** Early adult intervention might approach pediatric rates.

#### F. The Accommodation Deficit

- Pediatric recovery occurs with school accommodations, family support, permission to rest
- Adults rarely receive equivalent workplace accommodations
- Most adults must work through illness
- Recovery may require conditions adults cannot access

**Hypothesis:** Forced overexertion, not biology, drives adult chronicity.

#### G. The Expectation Effect

- Clinicians expect children to recover → supportive management
- Clinicians expect adults won't recover → nihilistic management
- Self-fulfilling prophecy at individual and research level
- "Chronic" framing may discourage recovery-oriented strategies

### 2.4 The "True Recovery Potential" Framework

Proposed analysis structure:

```
Observed adult recovery rate: ~5%

Adjustments needed:
+ Selection bias correction (recovered leave studies)
+ Definition standardization (consistent criteria)
+ Early diagnosis effect (pre-critical window)
+ Adequate treatment effect (subtype-specific)
+ Accommodation effect (ability to rest)
+ Subtype stratification (post-viral vs gradual)

= Estimated true recovery potential: ???

Research needed to quantify each adjustment.
```

---

## Part 3: Research Phase Requirements

### 3.1 Evidence Categories (Comprehensive)

**A. Epidemiological Evidence**

- Systematic review data on recovery rates
- Definition heterogeneity across studies (create table)
- Follow-up duration effects (plot if data permits)
- Sample characteristics across studies (severity, duration, setting)

**B. Deep Methodological Critique**

- Selection bias documentation with magnitude estimates
- Definition inconsistency: catalog ALL definitions used
- Referral bias: compare population vs clinic-based studies
- Loss to follow-up analysis: what happened to dropouts?
- Publication bias assessment

**C. The "Missing Recoverers" Analysis**

- Estimate proportion who recover before diagnosis
- Model: if diagnosis takes X years and recovery window is Y, what proportion are never counted?
- Search for primary care data (before specialist referral)

**D. Subtype-Stratified Evidence**

- Any studies with onset-type stratification?
- Biomarker-defined subgroups with outcome data?
- Treatment responder characteristics (defines subtypes)
- Post-COVID longitudinal data (emerging)

**E. Treatment Response as Recovery Proxy**

- Immunoadsorption response rates AND responder characteristics
- LDN response rates AND responder characteristics
- MCAS treatment outcomes
- Antiviral responders (Lerner, others)
- What do responders have in common?

**F. Environmental/Contextual Factors**

- Accommodation access and outcomes
- Ability to rest/not work and outcomes
- Social support correlations
- Cross-cultural comparisons (if available)

**G. The NIH 2024 Implications**

- Catalog druggable targets identified
- Track emerging treatment trials
- Project: how might these change prognosis?

### 3.2 Literature Search Strategy

**PubMed Searches (2015-2026):**

1. `"ME/CFS" OR "chronic fatigue syndrome" AND prognosis`
2. `"ME/CFS" OR "CFS" AND recovery OR remission`
3. `"ME/CFS" AND "early intervention" OR "early treatment"`
4. `"ME/CFS" AND "treatment response" AND predictor`
5. `"pediatric CFS" AND prognosis` (for comparison)
6. `"long COVID" AND prognosis OR trajectory` (emerging data)
7. `"post-infectious fatigue" AND recovery` (broader context)

**Citation Mining:**

- Forward/backward from Lacourt 2022 (key adult prognosis)
- Forward/backward from Cairns 2005 (systematic review)
- Forward/backward from Rowe 2019 (pediatric, for comparison)
- Rekeland 2024 references (natural history)
- NIH 2024 deep phenotyping study citations

**Grey Literature:**

- ME Association surveys (UK patient data)
- Solve ME/CFS Initiative reports
- Patient registry data (if accessible)
- Conference abstracts (IACFS/ME)
- Preprints (medRxiv, bioRxiv)

**Key Researchers to Track:**

- Lacourt/Verson (adult prognosis)
- Rowe (pediatric)
- Jason (epidemiology)
- Systrom (exercise physiology)
- Nath (NIH study)

### 3.3 Key Research Questions (Prioritized)

**Tier 1: Critical Questions**

1. What is the full range of recovery definitions across studies, and how do rates vary by definition?
2. What is the magnitude of selection bias in existing studies?
3. Is there ANY subtype-specific prognosis data?
4. What is the diagnostic delay → outcome relationship, quantified?

**Tier 2: Important Questions**

5. What characterizes the patients who DO recover?
6. What characterizes treatment responders (by treatment type)?
7. What environmental factors correlate with better outcomes?
8. What does early long COVID trajectory data suggest?

**Tier 3: Emerging Questions**

9. How might NIH 2024 findings change treatment landscape?
10. What trials are in development that could affect prognosis?
11. What would evidence-based early intervention look like?

### 3.4 Data Extraction Template

For each prognosis study, extract:

| Field | Data |
|-------|------|
| Study | Citation |
| N | Sample size |
| Setting | Clinic type, country |
| Inclusion criteria | Diagnostic criteria, severity, duration |
| Recovery definition | Exact definition used |
| Follow-up duration | Time horizon |
| Recovery rate | Percentage (95% CI if available) |
| Improvement rate | Percentage |
| Loss to follow-up | Percentage, reasons if known |
| Subgroup analyses | Any stratification by onset, severity, etc. |
| Predictive factors | What predicted better outcomes? |
| Limitations noted | Authors' own limitations |
| Our assessment | Selection bias risk, generalizability |

---

## Part 4: Content Architecture

### 4.1 Selected Approach: Hybrid (Option C)

**Primary Location:** New section in `contents/part1-clinical/ch05-prognosis.tex`

**Title:** "Evidence That Adult Recovery, While Rare, Does Occur"

**Cross-References:**
- ch14a: Brief summary, link to full section
- ch14c: Link for comparison
- ch07: Mechanism cross-references

### 4.2 Proposed Section Structure

```latex
\subsection{Evidence That Adult Recovery, While Rare, Does Occur}
\label{sec:adult-recovery-evidence}

% Opening frame
\begin{keypoint}[Reframing Adult Recovery]
The commonly cited ~5% adult recovery rate may substantially
underestimate true recovery potential due to measurement artifacts,
selection bias, inadequate treatment, and environmental factors
that differ systematically from pediatric populations.
\end{keypoint}

\subsubsection{The Observed Evidence}
% Document the 5% and supporting studies
% Include improvement rates (~40%) not just "recovery"

\subsubsection{Limitations of Current Evidence}
% Definition inconsistency
% Selection bias (survivors in clinic)
% Referral bias (severe/resistant cases)
% Diagnostic delay confounding

\subsubsection{Why True Recovery Potential May Be Higher}

\paragraph{The Pediatric Proof of Concept}
% 68% proves reversibility is possible
% Gap suggests modifiable factors

\paragraph{The Diagnostic Delay Effect}
% Lacourt 2022: 23 vs 55 months
% Critical window hypothesis

\paragraph{The Accommodation Deficit}
% Environmental differences from pediatric
% Forced overexertion in adults

\paragraph{Treatment Response Evidence}
% Immunoadsorption, LDN, MCAS protocols
% Suggests treatable subtypes exist

\paragraph{Subtype Heterogeneity}
% Averaging across different conditions
% Post-viral vs gradual onset

\subsubsection{Factors Associated with Adult Recovery}
% Shorter illness duration
% Earlier diagnosis
% Ability to rest/accommodate
% Specific subtypes
% Treatment access

\subsubsection{Recovery Trajectories}
% Gradual improvement over years
% Severe-to-moderate transitions
% "Improved but not cured"

\subsubsection{Comparison with Pediatric Recovery}
% 68% vs 5%: Biological or environmental?
% Cross-ref to developmental plasticity
% Implications for adult management

\subsubsection{Implications for Clinical Practice}
% Early intervention priority
% Accommodation advocacy
% Subtype identification
% Maintaining realistic hope

\subsubsection{Research Priorities}
% Standardized recovery definitions
% Early intervention trials in adults
% Subtype-specific prognosis studies
% Accommodation intervention studies

\begin{hypothesis}[True Adult Recovery Potential]
If adults received equivalent early diagnosis, accommodations,
rest opportunity, and subtype-specific treatment as pediatric
patients, recovery rates might approach pediatric levels for
comparable illness durations and presentations.
\end{hypothesis}
```

### 4.3 Parallel Structure Comparison

| Pediatric Section (18.8) | Adult Section (Proposed) |
|--------------------------|--------------------------|
| Prognosis Data | The Observed Evidence |
| *[not present]* | **Limitations of Current Evidence** |
| *[not present]* | **Why True Recovery Potential May Be Higher** |
| Factors for Better Outcomes | Factors Associated with Adult Recovery |
| Time to Improvement | Recovery Trajectories |
| Contrast with Adult | Comparison with Pediatric Recovery |
| Hope Maintenance | Implications for Clinical Practice |
| *[not present]* | **Research Priorities** |

**Key difference:** Adult section includes critical analysis of evidence limitations and arguments for higher true recovery potential—absent from pediatric section because pediatric evidence is more robust.

---

## Part 5: Integration Plan

### 5.1 Location

Insert in `ch05-prognosis.tex` after existing "Pediatric Recovery" content, before "Definition of Recovery."

### 5.2 Cross-References to Update

| File | Location | Update |
|------|----------|--------|
| `ch14a-urgent-action-severe.tex` | Lines 125-137 | Add: "For comprehensive adult recovery evidence and analysis of why rates may be underestimated, see Section~\ref{sec:adult-recovery-evidence}" |
| `ch14c-pediatric-severe.tex` | Lines 833-841 | Add: "For adult recovery evidence and comparison, see Section~\ref{sec:adult-recovery-evidence}" |
| `ch07-immune-dysfunction.tex` | Developmental tolerance section | Add cross-reference |

### 5.3 Content to Potentially Relocate

**Keep in place (with cross-refs):**
- ch14a severe adult discussion (contextually important there)
- ch07 mechanistic hypotheses (belong in pathophysiology)

**Consider consolidating:**
- Scattered recovery statistics → new section becomes authoritative source
- Cross-ref from other locations to avoid duplication

---

## Part 6: Quality Assurance

### 6.1 Citation Requirements

**Minimum:**
- 2-3 prognosis systematic reviews
- Lacourt 2022 (adult prospective)
- Rekeland 2024 (natural history)
- Rowe 2019 (pediatric comparison)
- Treatment response studies (Stein, Polo)
- At least 1 case report

### 6.2 Responsible Framing

**Principles:**
1. Lead with accurate current statistics
2. Present limitations as scientific critique, not wishful thinking
3. Frame hypotheses explicitly as hypotheses
4. Distinguish improvement from recovery
5. Acknowledge individual variation
6. Support hope without creating false expectations

**Key framing:**
- "The evidence suggests recovery may be more achievable than statistics indicate, particularly with early intervention and adequate support—but this remains to be proven in clinical trials."

### 6.3 LaTeX Environments

Use appropriate environments:
- `\begin{hypothesis}` for speculative claims
- `\begin{observation}` for documented patterns
- `\begin{keypoint}` for clinical takeaways
- `\begin{researchgap}` for identified needs

---

## Part 7: Implementation Phases

### Phase 1: Literature Review
**Tasks:**
1. PubMed search for prognosis studies (2015-2026)
2. Extract recovery definitions from each study
3. Document selection bias in study designs
4. Compile treatment response rates
5. Identify case reports
6. Create citation list

**Deliverable:** Literature summary document with citations

**Verification:** ≥8 new relevant citations identified

### Phase 2: Evidence Limitations Analysis
**Tasks:**
1. Catalog definition inconsistencies across studies
2. Document selection bias mechanisms
3. Analyze pediatric-adult environmental differences
4. Quantify diagnostic delay effects where data exists
5. Identify subtype-specific data if available

**Deliverable:** Limitations analysis section draft

**Verification:** Each limitation claim has supporting evidence

### Phase 3: Content Drafting
**Tasks:**
1. Draft full section following structure in 4.2
2. Integrate literature findings
3. Write hypothesis sections with appropriate hedging
4. Draft cross-reference text

**Deliverable:** Complete section draft

**Verification:** All claims cited, appropriate environments used

### Phase 4: Integration
**Tasks:**
1. Insert section in ch05-prognosis.tex
2. Update cross-references in ch14a, ch14c, ch07
3. Add citations to references.bib
4. Test build

**Deliverable:** Integrated document

**Verification:** Build succeeds, all refs resolve

### Phase 5: Review
**Tasks:**
1. content-reviewer: Tone and completeness
2. scientific-rigor-auditor: Citation coverage
3. logic-auditor: Argument coherence
4. syntax-fixer: LaTeX errors

**Deliverable:** Reviewed, corrected section

**Verification:** All review issues addressed

---

## Part 8: Success Criteria

### Content
- [ ] Section parallels pediatric structure with added critical analysis
- [ ] All statistics cited
- [ ] Evidence limitations explicitly documented
- [ ] Arguments for higher recovery potential are evidence-based
- [ ] Hypotheses clearly marked as hypotheses
- [ ] Comparison with pediatric is explicit
- [ ] Clinical implications stated
- [ ] Research gaps identified
- [ ] Tone is honest, hopeful, scientifically rigorous

### Technical
- [ ] Build succeeds
- [ ] All cross-references resolve
- [ ] All citations exist
- [ ] Appropriate LaTeX environments used

### Integration
- [ ] ch14a references new section
- [ ] ch14c references new section
- [ ] No content duplication (cross-refs instead)

---

## Part 9: Design Decisions (Resolved)

1. **Scope of critical analysis:** ✅ **As deep as possible.** The evidence critique should be thorough, examining every methodological weakness, bias source, and confounding factor. This is not brief acknowledgment—it's a comprehensive methodological critique.

2. **Hypothesis prominence:** ✅ **Data-driven.** The section should NOT presuppose the answer. The research and analysis will determine whether "true recovery potential is higher" is a main theme or cautionary footnote. Let the evidence speak.

3. **Target audience:** ✅ **Both clinicians and patients.** Frame for dual readership—scientifically rigorous enough for clinicians, accessible enough for informed patients.

4. **Implication:** The section title may evolve based on findings. If evidence strongly supports higher recovery potential, title might become "Why Adult Recovery May Be More Achievable Than Statistics Suggest." If evidence is weak, may remain "Evidence That Adult Recovery, While Rare, Does Occur."

---

## Appendix: Key Statistics Reference

| Statistic | Source | Notes |
|-----------|--------|-------|
| Adult recovery: ~5% | Multiple reviews | Definition varies |
| Adult recovery: 8.3% | Lacourt 2022 | Strict definition |
| Adult improvement: 39.5% | Lacourt 2022 | Any improvement |
| Pediatric recovery: 68% at 10y | Rowe 2019 | All severities |
| Pediatric improvement: 54-94% | Heine 2019 | Review range |
| Placebo improvement: ~20% at 6y | Rekeland 2024 | Natural history |
| Diagnostic delay (recoverers): 23mo | Lacourt 2022 | vs 55mo non-recoverers |
| Immunoadsorption response: 70% | Stein 2024 | Selected patients |
| LDN response: 73.9% | Polo 2019 | Any positive response |
