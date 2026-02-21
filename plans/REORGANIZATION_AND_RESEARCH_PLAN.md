# Reorganization and Research Plan
**Date:** 2026-02-10
**Scope:** (1) Patient file reorganization, (2) Fatigue/sleepiness research section, (3) Research gap analysis

---

## PART 1: PATIENT FILE REORGANIZATION ANALYSIS

### Current State

**Patient case currently split across:**
1. `contents/appendices/appendix-i-personal-symptoms.tex` (82KB, 350+ lines)
2. `contents/appendices/appendix-i-a-medical-management.tex` (98KB)
3. `contents/appendices/appendix-i-b-clinical-findings.tex` (45KB)
4. `contents/appendices/appendix-i-c-case-analysis.tex` (74KB)
5. Main document includes from `patients/yannick/` (already partially migrated):
   - `patients/yannick/00-index.tex`
   - `patients/yannick/03-symptom-profile.tex`
   - `patients/yannick/07-research-hypotheses.tex`

**Location in ms.tex:**
```tex
% Lines 302-305: Patient case includes
\include{patients/yannick/00-index}
\include{patients/yannick/03-symptom-profile}
\include{patients/yannick/07-research-hypotheses}

% Lines 308-309: Daily tracking (also patient-specific)
\include{contents/appendices/appendix-j-daily-journal}
\include{contents/appendices/appendix-j-recommendations}
```

### Issues with Current Structure

1. **Dual source of truth**: Appendix-i files still exist in `contents/appendices/` but are not included in ms.tex—risk of divergence
2. **Incomplete migration**: Only 3 of 5+ patient files moved to `patients/yannick/`
3. **Unclear ownership**: `appendix-j-daily-journal.tex` and `appendix-j-recommendations.tex` are patient-specific but live in main appendices
4. **Main document entanglement**: Patient case data in appendix structure complicates document logic
5. **No clear separation**: No explicit boundary between general reference materials (A-H) and patient-specific content

### Proposed Reorganization

#### Phase 1: Identify All Patient-Specific Files
**Files to move:**
- `appendix-i-personal-symptoms.tex` (currently not used, conflicts with patients/yannick/03-symptom-profile.tex)
- `appendix-i-a-medical-management.tex` (likely contains Ritalin history, medication protocols)
- `appendix-i-b-clinical-findings.tex` (clinical test results, diagnostic data)
- `appendix-i-c-case-analysis.tex` (case reasoning, treatment analysis)
- `appendix-j-daily-journal.tex` (daily symptom tracking)
- `appendix-j-recommendations.tex` (medical recommendations for this patient)

**Destination:** `patients/yannick/` with structure:
```
patients/yannick/
  00-index.tex                    # Case overview, cross-references
  01-medical-history.tex          # Medical history, medications (from appendix-i-a)
  02-clinical-findings.tex        # Lab results, diagnostic data (from appendix-i-b)
  03-symptom-profile.tex          # Detailed symptoms (current, keep as-is)
  04-case-analysis.tex            # Case reasoning and analysis (from appendix-i-c)
  05-treatment-plans.tex          # Treatment protocols and recommendations (from appendix-j-recommendations)
  06-daily-tracking.tex           # Daily journal and symptom logs (from appendix-j-daily-journal)
  07-research-hypotheses.tex      # Research hypotheses (current, keep as-is)
  README.md                        # Patient case documentation and structure
  protocols/                       # Treatment protocols, medication tracking
  tracking/                        # Daily logs, data tracking
```

#### Phase 2: Update ms.tex References
**Current includes (lines 302-309):**
```tex
\include{patients/yannick/00-index}
\include{patients/yannick/03-symptom-profile}
\include{patients/yannick/07-research-hypotheses}
\include{contents/appendices/appendix-j-daily-journal}
\include{contents/appendices/appendix-j-recommendations}
```

**Proposed replacement:**
```tex
% Patient-specific case data (patient Yannick, research subject)
% This section documents one patient's ME/CFS presentation with full medical history,
% diagnostic findings, and clinical reasoning. This is NOT general ME/CFS research,
% but rather a detailed single-patient case for illustration and hypothesis testing.
\include{patients/yannick/00-index}              % Case overview and navigation
\include{patients/yannick/01-medical-history}    % Medical history and medications
\include{patients/yannick/02-clinical-findings}  % Diagnostic test results
\include{patients/yannick/03-symptom-profile}    % Detailed symptom documentation
\include{patients/yannick/04-case-analysis}      % Case analysis and reasoning
\include{patients/yannick/05-treatment-plans}    % Treatment recommendations
\include{patients/yannick/06-daily-tracking}     % Daily journals and tracking
\include{patients/yannick/07-research-hypotheses} % Research hypotheses and testing
```

#### Phase 3: Reorganize Appendices A-H (General Reference)
These remain in `contents/appendices/` and include only general reference materials:
- Appendix A: Terminology (medical glossary)
- Appendix B: Abbreviations
- Appendix C: Diagnostic tools (general assessment instruments)
- Appendix D: Resources (support organizations, general references)
- Appendix E: Mathematical details
- Appendix F: Supplement guide (general, not patient-specific)
- Appendix G: Research synthesis
- Appendix H: Annotated bibliography

**Key principle:** Appendices A-H should contain NO patient-specific content.

#### Phase 4: Mark Patient Case as Separate
Add explanatory note at beginning of patient case section in ms.tex:
```tex
\part*{APPENDIX: PATIENT CASE STUDY}

The following case documentation presents a detailed medical record for a single patient
with ME/CFS (research subject Yannick). This case serves multiple purposes:
\begin{enumerate}
  \item Illustrating how ME/CFS pathophysiology manifests clinically in one individual
  \item Documenting medical history, diagnostic findings, and treatment response
  \item Generating testable hypotheses about mechanisms
  \item Connecting general research concepts to concrete clinical observations
\end{enumerate}

\textbf{Important:} This is a single patient case and should NOT be generalized to all ME/CFS patients.
Patient phenotypes vary significantly; this case represents one presentation pattern within the ME/CFS spectrum.
```

### Implementation Checklist

- [ ] **Step 1:** Consolidate content from appendix-i-* and appendix-j-* files
- [ ] **Step 2:** Reorganize into patients/yannick/ structure with numbering
- [ ] **Step 3:** Update cross-references and citations within patient files
- [ ] **Step 4:** Update ms.tex includes (lines 302-309)
- [ ] **Step 5:** Add explanatory notes/boundaries
- [ ] **Step 6:** Remove old appendix-i and appendix-j files from contents/appendices/
- [ ] **Step 7:** Test build: `nix build` to verify no broken references
- [ ] **Step 8:** Commit changes with message: "refactor(patient-case): Reorganize Yannick case into autonomous patient folder structure"

---

## PART 2: RESEARCH SECTION ON FATIGUE/SLEEPINESS-INDUCING MECHANISMS

### Current Coverage Analysis

**Mechanisms currently documented in pathophysiology chapters:**
- Energy metabolism deficits (Ch. 6): ATP/ADP ratios, mitochondrial dysfunction
- Immune dysfunction (Ch. 7): Cytokine dysregulation, but NOT specifically linked to sleepiness
- Neurological dysfunction (Ch. 8): Sleep architecture failures, HPA axis, circadian disruption
- Endocrine (Ch. 9): Melatonin (production/function), but limited mechanistic depth on sleep induction
- Cardiovascular (Ch. 10): Autonomic effects on sleep, but not primary focus
- Microbiome (Ch. 11): Immune education, but not sleep-specific
- Genetics/Epigenetics (Ch. 12): Regulatory variants, not mechanism-specific
- Integrative models (Ch. 13): Energy-Immune-Autonomic triad
- Speculative hypotheses (Ch. 14): Multiple mechanisms, but fragmented

**Coverage gaps:**
1. **No integrated section on "symptom-producing mechanisms"** - distinction between energy production deficits and mechanisms that ACTIVELY trigger tired/sleepy sensations
2. **Adenosine accumulation**: Mentioned only once (in Ch. 6, Heng 2025 biomarker), not explained mechanistically
3. **Inflammatory cytokine-induced somnolence**: IL-6, TNF-α, IL-1β sleep induction properties NOT explicitly covered
4. **Serotonin dysregulation → sleepiness cascade**: Not documented
5. **Melatonin dysfunction as mechanism**: Ch. 9 mentions it but doesn't explain how dysfunction produces sleepiness (vs. just circadian disruption)
6. **Microglia activation and neuroinflammatory fatigue**: Mentioned in Ch. 8 (brief), not mechanistically detailed
7. **Immune-induced sleep induction pathways**: Not systematized
8. **Sleepiness → cognitive impairment cascade**: Documented in patient case but not generalized mechanistically
9. **Neurochemical state transitions**: How adenosine + cytokine + melatonin dysregulation together create "locked sleepiness" state

### Proposed Research Section Structure

**Option A: New Chapter (Ch. 15 or 16)**
- Pros: Dedicated space, high visibility, full mechanistic depth
- Cons: May exceed reasonable page count, requires integration into part structure
- **Estimated length:** 30-50 pages
- **Placement:** After Ch. 14 (speculative) but before modeling (Ch. 31-32), OR as final chapter in Part 2

**Option B: New Section in Ch. 14 (Speculative Hypotheses)**
- Pros: Integrates with existing speculative content, shorter addition, lower structural overhead
- Cons: Limited space, may crowd existing sections
- **Estimated length:** 15-25 pages as new subsection
- **Placement:** New subsection after current Ch. 14 sections (add as Ch. 14k or similar)

**Option C: Expand Ch. 8 (Neurological) with new subsection**
- Pros: Natural fit with existing sleep/circadian content, maintains logical flow
- Cons: Changes existing chapter, may make Ch. 8 disproportionately large
- **Estimated length:** 15-20 pages as new major subsection
- **Placement:** New section "8.X: Active Fatigue and Sleep-Induction Mechanisms"

**Recommendation:** Option A (new chapter) provides clearest architecture and appropriate scope for comprehensive mechanistic coverage. Can be positioned as Ch. 15 "Symptom-Producing Mechanisms: Fatigue and Sleepiness" with integration into Part 2 structure.

### Proposed Content Outline

**Ch. 15: Symptom-Producing Mechanisms—Fatigue and Sleepiness (Proposed)**

**Section 15.1: Conceptual Framework**
- Distinction: Energy production deficits vs. symptom-producing mechanisms
- Energy deficit = reduced ATP availability (what cells can do)
- Symptom-producing mechanisms = active neurochemical states that TRIGGER tired/sleepy sensations
- These interact but are mechanistically distinct

**Section 15.2: Adenosine Accumulation and Sleep Pressure**
- Adenosine homeostasis in ME/CFS (elevated AMP → adenosine)
- Adenosine-A2A receptor signaling (sleep pressure accumulation)
- Adenosine-A1 receptor effects (synaptic fatigue)
- Adenosine deaminase dysfunction (if present)
- Evidence: Heng 2025 elevated AMP biomarker
- Hypothesis: Chronic adenosine accumulation creates persistent sleep pressure signal

**Section 15.3: Inflammatory Cytokine-Induced Somnolence**
- IL-6, TNF-α, IL-1β mechanisms in sleep induction
- Prostaglandin E2 (PGE2) and sleep homeostasis disruption
- Microglial activation and neuroinflammatory cytokine release
- Sickness behavior vs. ME/CFS fatigue (comparison)
- Evidence: Cytokine dysregulation documented, but specific sleep-induction pathways underexplored
- Hypothesis: Chronic low-grade neuroinflammation maintains somnolence state independent of sleep need

**Section 15.4: Serotonin Dysregulation and Mood-Somnolence Interaction**
- Serotonin 5-HT1A/1B receptor dysfunction
- Tryptophan metabolism disruption (from immune activation)
- Kynurenine pathway and CNS penetration
- Serotonin-melatonin dyscoordination
- Sleep stage architecture consequences
- Hypothesis: Serotonin deficiency maintains hypersomnia despite poor sleep quality

**Section 15.5: Melatonin Dysfunction as Active Sleepiness Mechanism**
- Expanded from Ch. 9 endocrine coverage
- Normal melatonin function: circadian timing signal, sleep initiation trigger, antioxidant
- ME/CFS melatonin patterns:
  - Reduced amplitude (weakened rhythm)
  - Phase shifts (inappropriate timing)
  - Normal production but blunted effects (receptor dysfunction?)
- Circadian desynchronization consequences for sleepiness signaling
- Hypothesis: Melatonin production decoupled from actual sleep need creates "tired at wrong times" state

**Section 15.6: Microglia Activation and Neuroinflammatory Fatigue**
- Microglial sensing of danger signals (viral residue, metabolic stress, circulating danger molecules)
- Microglial cytokine release (IL-6, TNF-α, IL-1β, IL-18)
- Neuroinflammatory feedback loop (microglia → cytokines → more activation)
- Glial fibrillary acidic protein (GFAP) elevation and astrocyte involvement
- Evidence: Limited in ME/CFS literature, but fits viral-triggered disease onset
- Hypothesis: Persistent microglia activation maintains chronic neuroinflammatory fatigue state

**Section 15.7: Integrated Cascade Model**
- How adenosine + cytokines + melatonin + serotonin dysregulation work together
- Reinforcing loops:
  - Energy deficit → metabolic stress → adenosine accumulation → sleep pressure
  - Immune activation → IL-6/TNF-α release → enhanced melatonin-independent sleepiness
  - Circadian phase shift → melatonin at wrong time → sleep architecture failure → sickness behavior activation
  - Poor sleep → glymphatic drainage failure → neuroinflammatory accumulation → worsened fatigue
- Positive feedback mechanisms that maintain "locked sleepy" state
- Potential intervention points in cascade

**Section 15.8: Connection to Patient Phenotypes**
- Bedbound patients: Full cascade engaged + severe energy deficit
- Mild/moderate: Partial cascade, variable mechanism dominance
- Remission patterns: Which cascade elements reverse, which persist
- Post-treatment responses: Which mechanisms respond to which interventions
- Reference to patient case (Yannick): Ritalin response → CNS stimulation bypasses cascade without treating underlying mechanisms

**Section 15.9: Therapeutic Implications**
- Adenosine-targeting interventions (PDE inhibitors, adenosine antagonists)
- Cytokine reduction strategies (anti-IL-6, TNF-α targeting)
- Serotonin support (tryptophan metabolism, 5-HT receptor modulation)
- Melatonin optimization (timing, dosing, receptor sensitivity)
- Microglial suppression (minocycline evidence if available, neuroprotection)
- Sleep architecture support (without forcing sleep)
- Cascade intervention strategy (target multiple points simultaneously)

**Section 15.10: Research Directions**
- Which mechanisms dominate in which patient subsets?
- Biomarkers for cascade activation state
- Temporal evolution: Which mechanisms initiate, which sustain?
- Interaction with post-exertional malaise (PEM) cascade
- Therapeutic trial design targeting specific mechanisms

**Estimated page count:** 40-50 pages with detailed mechanisms, evidence, and hypothesis development

---

## PART 3: RESEARCH GAP ANALYSIS

### Systematic Gap Identification

#### Category A: Documented Mechanisms
**What IS covered:**
1. Energy metabolism deficits (ATP/ADP, mitochondrial dysfunction)
2. Immune dysregulation (broadly)
3. Autonomic dysfunction (HPA axis, sympathetic/parasympathetic)
4. Circadian disruption
5. Vascular dysfunction (emerging, Ch. 10)
6. Microbiome dysfunction (immune education angle)
7. Genetic/epigenetic variants (regulatory, not functional consequences)
8. Sleep architecture failure (neurological perspective)
9. PEM mechanisms (multiple chapters)
10. Cellular stress responses

#### Category B: Mechanism Categories MISSING
**Not systematically documented:**

1. **Symptom-Producing Mechanisms** (vs. capacity-limiting mechanisms)
   - Distinct from energy production deficits
   - Actively trigger symptoms rather than just limiting capacity
   - Examples: Adenosine accumulation triggers sleepiness; cytokine release triggers malaise
   - Status: LARGELY MISSING except scattered references

2. **Cascade and Feedback Effects**
   - How sleep deprivation worsens immune function, which worsens sleep
   - How energy deficit triggers sickness behavior, which impairs activity management
   - How autonomic dysregulation disrupts HPA axis, which dysregulates immune
   - Status: MENTIONED but not systematized

3. **Temporal Dynamics**
   - Acute vs. chronic activation of mechanisms
   - Transition from early infection phase to chronic sustained state
   - Progression patterns (how mechanisms emerge and evolve)
   - Recovery/remission patterns (which mechanisms reverse first)
   - Status: LIMITED - mostly descriptive, not mechanistic timeline

4. **Neurochemical State Transitions**
   - Switches between "hyperarousal" and "torpor-like" states
   - Mechanisms governing state transitions
   - Stability of states (why some patients get "stuck")
   - Status: BARELY TOUCHED (brief mention in Ch. 14j)

5. **Heterogeneity Mechanisms**
   - Why do some patients present with primarily autonomic dysfunction, others primarily immune?
   - Genetic determinants of mechanism prominence
   - Early stressor effects on which pathway is engaged
   - Stable phenotypes vs. phenotype switches during disease course
   - Status: MISSING - phenotypes documented, mechanisms not explained

6. **Therapeutic Response Mechanisms**
   - Why does patient X respond to treatment Y but patient Z doesn't?
   - Mechanism-based treatment matching (treating mechanism A vs. B)
   - Biomarkers predicting response (linked to mechanism, not just correlation)
   - Status: MISSING - treatment chapters exist but no mechanism-based framework

7. **Cross-System Cascade Effects**
   - Energy deficit → autonomic dysregulation (how?)
   - Autonomic dysregulation → vascular dysfunction (mechanisms)
   - Immune activation → neurological changes (beyond cytokines: cell trafficking? blood-brain barrier? miRNA?)
   - Vascular dysfunction → tissue oxygen delivery → metabolic stress (quantified how?)
   - Status: PARTIALLY in integrative chapters, but not with mechanistic depth

8. **Mitochondrial Communication Systems**
   - Extracellular ATP/ADP/adenosine signaling (partially covered in Ch. 14a)
   - mtDNA release and TLR9 signaling (damage-associated molecular patterns)
   - Mitochondrial-derived peptides (MOTS-c, humanin) and systemic effects
   - Exosome signaling and intercellular communication
   - Status: MINIMAL - barely mentioned

9. **Viral Persistence and Chronic Activation**
   - EBV, SARS-CoV-2 persistence mechanisms in ME/CFS
   - Viral latency reactivation triggers
   - Persistent viral antigen presentation (even with "cleared" infection)
   - Molecular mimicry sustained after acute infection
   - Status: MENTIONED but not mechanistically detailed

10. **Barrier Dysfunction**
    - Blood-brain barrier integrity and CNS inflammation
    - Gut barrier dysfunction and microbial translocation consequences
    - Epithelial barrier disruption in respiratory tract
    - Endothelial dysfunction in vascular barriers
    - Status: SCATTERED - not systematized

11. **Cellular Stress Response Paradoxes**
    - Why doesn't metabolic stress trigger robust heat shock response?
    - Why is innate immune activation insufficient to clear triggers?
    - Why don't compensatory mechanisms activate more effectively?
    - Possible answers: Energy limitation preventing response? Regulatory failure? Feedback suppression?
    - Status: MISSING - questions not even systematically framed

12. **Epigenetic Mechanisms of Persistence**
    - Methylation patterns sustaining disease state
    - Histone modifications affecting immune response trajectory
    - Environmental triggers of epigenetic changes
    - Reversibility of epigenetic changes (therapeutic target?)
    - Status: MINIMAL - genetics chapter touches on variants, not epigenetic mechanisms

#### Category C: Patient Phenotype Explanations MISSING
**What mechanisms explain:**
- Why some patients are bedbound while others are mildly affected?
- Why symptom profiles vary (emphasis on autonomic vs. immune vs. neurological)?
- Why some recover/remit while others chronically worsen?
- Why some respond to specific treatments while others don't?
- Why crash patterns vary (some from activity, others from specific foods/stressors)?
- Age-of-onset effects on mechanism engagement
- Sex differences in symptom severity and disease trajectory

**Current state:** Phenotypes documented in Ch. 5, mechanisms NOT explained

#### Category D: Research Directions (Logical Reasoning)
**From energy deficit alone, what follows:**
- If ATP is scarce, signal transduction is impaired (not documented)
- If ATP is scarce, anion channel function (dependent on ATP gradients) fails (not covered)
- If ATP is scarce, calcium homeostasis fails → further energy drain (mentioned in mitochondrial section, not systematized)
- If ATP is scarce, protein synthesis slows → immune response impairment (not addressed)
- If ATP is scarce, cellular repair mechanisms (including DNA repair) slow down (not covered)

**From immune activation alone, what follows:**
- Chronic TNF-α exposure → peripheral neuropathy development (not covered)
- Chronic IL-6 exposure → CNS immune cell infiltration (not systematized)
- Immune cell hyperactivation → nutrient depletion (B12, folate, amino acids?) (not covered)
- Immune memory formation → vaccine response alterations (not covered)

**From autonomic dysregulation alone, what follows:**
- Sympathetic hyperactivity → metabolic cost increase (worsens energy deficit) (not quantified)
- Parasympathetic insufficiency → respiratory compensation (not covered)
- Blood pressure dysregulation → organ perfusion deficits (implied but not detailed)
- Pupillary dysfunction → CNS sympathetic dysregulation confirmation (not covered)

**Current state:** These logical chains are NOT explored

#### Category E: Mechanism Interactions UNDERDOCUMENTED
**What we know happens together but don't explain causally:**

1. Energy deficit + immune activation (which causes which? feedback loop structure?)
2. Viral infection + genetic predisposition (what is the interaction mechanism?)
3. HPA axis dysfunction + metabolic stress (does metabolic stress drive HPA dysfunction or vice versa?)
4. Circadian disruption + sleep deprivation (are these consequences of same mechanism or independent drivers?)
5. Autonomic dysregulation + vascular dysfunction (vascular changes are consequence of autonomic stress or independent driver?)

**Current state:** Correlations noted, causal structures absent

### Summary of Research Gaps

| Gap Category | Coverage | Priority | Complexity |
|---|---|---|---|
| Symptom-producing mechanisms | 10% | HIGH | Medium |
| Cascade/feedback dynamics | 30% | HIGH | High |
| Temporal dynamics | 20% | HIGH | High |
| State transitions | 5% | MEDIUM | High |
| Heterogeneity explanation | 10% | HIGH | High |
| Therapeutic response mechanisms | 5% | MEDIUM | High |
| Cross-system cascades | 40% | HIGH | Medium |
| Mitochondrial communication | 15% | MEDIUM | Medium |
| Viral persistence mechanisms | 30% | MEDIUM | High |
| Barrier dysfunction | 40% | MEDIUM | Medium |
| Cellular stress paradoxes | 5% | MEDIUM | High |
| Epigenetic mechanisms | 15% | LOW | High |
| Phenotype explanations | 0% | HIGH | Medium |
| Logical implications of known mechanisms | 20% | MEDIUM | Medium |
| Interaction structures | 25% | HIGH | High |

**High-priority gaps (recommend addressing first):**
1. Symptom-producing mechanisms (supports fatigue/sleepiness research section)
2. Cascade and feedback dynamics
3. Cross-system cascades
4. Phenotype explanations
5. Interaction structures

---

## INTEGRATION ROADMAP

### Immediate Actions (This Session)
1. **Reorganization:** Complete Phase 1-4 of patient file reorganization
2. **New research section:** Create Ch. 15 structure with mechanism outline (content can follow)
3. **Gap documentation:** Add research gaps to project wiki or .claude/RESEARCH_GAPS.md for future reference

### Near-term (Next 1-2 Sessions)
1. **Complete Ch. 15 content:** Write detailed mechanism sections with evidence
2. **Verify cross-references:** Ensure patient case reorganization doesn't break citations
3. **Integration test:** Full build to validate all changes

### Medium-term (Over next month)
1. **Address high-priority gaps:**
   - Temporal dynamics chapter
   - Phenotype explanation (new section in Part 1)
   - Interaction structure documentation
2. **Expand on interaction mechanisms**
3. **Consider heterogeneity explanation framework**

---

## FILES AFFECTED BY REORGANIZATION

**To be moved/reorganized:**
- `contents/appendices/appendix-i-personal-symptoms.tex` → `patients/yannick/03-symptom-profile.tex` (consolidate with existing)
- `contents/appendices/appendix-i-a-medical-management.tex` → `patients/yannick/01-medical-history.tex`
- `contents/appendices/appendix-i-b-clinical-findings.tex` → `patients/yannick/02-clinical-findings.tex`
- `contents/appendices/appendix-i-c-case-analysis.tex` → `patients/yannick/04-case-analysis.tex`
- `contents/appendices/appendix-j-recommendations.tex` → `patients/yannick/05-treatment-plans.tex`
- `contents/appendices/appendix-j-daily-journal.tex` → `patients/yannick/06-daily-tracking.tex`

**To be created:**
- `contents/part2-pathophysiology/ch15-symptom-producing-mechanisms.tex` (new chapter)
- `.claude/RESEARCH_GAPS.md` (ongoing reference)

**To be modified:**
- `ms.tex` (lines 302-309: update includes)
- `patients/yannick/README.md` (update structure documentation)
- `patients/yannick/00-index.tex` (update navigation)

**To be deleted:**
- Old appendix-i and appendix-j files from `contents/appendices/` (after consolidation)

---

## NEXT STEPS FOR USER

1. **Review this plan** and confirm architecture decisions:
   - Approval of Ch. 15 vs. alternative placement?
   - Approval of patients/yannick/ folder structure?
   - Priority ordering of research gaps to address?

2. **Request specific actions:**
   - "Proceed with Phase 1-4 of reorganization" (extraction + migration)
   - "Create Ch. 15 structure and mechanism outlines"
   - "Both" (do both in one session)

3. **Document decisions** for future continuity.
