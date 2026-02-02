# Medication Effect Patterns Documentation Plan

## Overview

Comprehensive documentation of medication effect patterns across ME/CFS patient populations, covering both expected transient effects and important phenomena patients should understand.

**Created:** 2026-02-01
**Status:** Planning

---

## Effect Types to Document

| # | Effect Type | Description | Risk Level |
|---|-------------|-------------|------------|
| 1 | **Transient Adverse Effects** | Initial side effects that resolve with continued treatment | Medium |
| 2 | **Therapeutic Lag** | Time before benefits appear (weeks to months) | Low |
| 3 | **Herxheimer Reactions** | Temporary worsening indicating treatment success | High |
| 4 | **Energy-Before-Mood Paradox** | Restored energy before mood lifts (suicide risk period) | Critical |
| 5 | **Dose-Dependent Benefit Curves** | Optimal ranges; higher isn't always better | Medium |
| 6 | **Withdrawal Effects** | Symptoms from abrupt discontinuation | High |

---

## Patient Populations

| Population | Target File | Current State |
|------------|-------------|---------------|
| **Adult Severe** | ch14a-urgent-action-severe.tex | Comprehensive chapter exists (~2000 lines) |
| **Adult Mild/Moderate** | ch14b-action-mild-moderate.tex | Comprehensive chapter exists |
| **Pediatric Severe** | ch14c-pediatric-severe.tex | Exists with weight-based dosing |
| **Pediatric Mild/Moderate** | ch14d-pediatric-ambulatory.tex | Exists with school accommodations |

---

## Implementation Matrix

| Effect Type | Adult Severe | Adult Mild/Mod | Pediatric Severe | Pediatric Mild/Mod |
|-------------|:------------:|:--------------:|:----------------:|:-----------------:|
| Transient AEs | ✗ New | ✗ New | ✗ Adapt | ✗ Adapt |
| Therapeutic Lag | ◐ Expand | ◐ Expand | ✗ Adapt | ✗ Adapt |
| Herxheimer | ✗ New | ✗ New | ✗ Adapt+Caution | ✗ Adapt+Caution |
| Energy-Before-Mood | ✗ New | ✗ New | ✗ Critical Adapt | ✗ Critical Adapt |
| Dose Curves | ◐ Systematize | ◐ Systematize | ◐ Weight-based | ◐ Weight-based |
| Withdrawal | ◐ Expand | ◐ Expand | ✗ Pediatric-specific | ✗ Pediatric-specific |

**Legend:** ✗ Missing, ◐ Partial, ✓ Complete

---

## Current Coverage Gaps

### What Exists
- "Start low, go slow" protocol in ch16 supplements (line 178+)
- Antiviral therapeutic lag (3-6 months) mentioned
- Sleep medication withdrawal mentioned
- Fludrocortisone tapering mentioned
- Die-off reactions mentioned briefly in supplements

### What's Missing
- Systematic framework for distinguishing transient vs persistent AEs
- Decision criteria for continuing vs stopping treatment
- Energy-before-mood paradox (critical safety gap)
- Pediatric pharmacokinetic differences
- Herxheimer reaction management protocols

---

## Phase 1: Literature Research

### Task 1.1: ME/CFS Medication Sensitivity Literature
- **Agent:** `literature-integrator` (Sonnet)
- **Queries:**
  - "ME/CFS medication sensitivity drug tolerance"
  - "chronic fatigue syndrome pharmacokinetics"
  - "POTS medication titration tolerance"
- **Output:** `.claude/content-staging/lit/medication-sensitivity/`
- **Verification:** ≥5 papers, BibTeX entries, certainty assessments

### Task 1.2: Herxheimer Reactions in Chronic Illness
- **Agent:** `literature-integrator` (Sonnet)
- **Queries:**
  - "Herxheimer reaction chronic fatigue"
  - "die-off reaction antimicrobial ME/CFS"
  - "Jarisch-Herxheimer mechanism"
- **Output:** `.claude/content-staging/lit/herxheimer/`
- **Verification:** Evidence for timeline, mechanisms, management

### Task 1.3: Pediatric Pharmacokinetics
- **Agent:** `literature-integrator` (Sonnet)
- **Queries:**
  - "pediatric ME/CFS medication dosing"
  - "adolescent POTS pharmacotherapy"
  - "developmental pharmacokinetics chronic illness"
- **Output:** `.claude/content-staging/lit/pediatric-pk/`
- **Verification:** Age-specific dosing evidence

### Task 1.4: Energy-Mood Patterns and Safety
- **Agent:** `literature-integrator` (Sonnet)
- **Queries:**
  - "antidepressant energy before mood improvement"
  - "SSRI activation syndrome timeline"
  - "stimulant suicide risk fatigue"
- **Output:** `.claude/content-staging/lit/energy-mood/`
- **Verification:** Safety evidence documented

---

## Phase 2: Content Synthesis

### Task 2.1: Transient Adverse Effects Framework
- **Agent:** `sonnet-general`
- **Input:** Phase 1 literature
- **Output:** Draft section with:
  - Classification criteria (transient vs persistent)
  - Timeline expectations by medication class
  - Decision tree: continue vs stop
  - Patient communication templates
- **Location:** `.claude/content-staging/drafts/transient-ae-framework.tex`

### Task 2.2: Therapeutic Lag Documentation
- **Agent:** `sonnet-general`
- **Input:** Existing antiviral lag + new literature
- **Output:** Systematic framework:
  - Medication class × expected lag time table
  - Monitoring during lag period
  - When to declare treatment failure
- **Location:** `.claude/content-staging/drafts/therapeutic-lag.tex`

### Task 2.3: Herxheimer Reaction Protocol
- **Agent:** `medical-advisor` (Opus) ⚠️ High-stakes
- **Input:** Herxheimer literature
- **Output:**
  - Biological mechanisms
  - Distinguishing from adverse reactions
  - Management protocol
  - When to stop treatment
  - **CRITICAL: Pediatric cautions**
- **Location:** `.claude/content-staging/drafts/herxheimer-protocol.tex`
- **Required:** Safety warnings, physician review emphasis

### Task 2.4: Energy-Before-Mood Paradox
- **Agent:** `medical-advisor` (Opus) ⚠️ Critical safety
- **Input:** Energy-mood literature
- **Output:**
  - Mechanism explanation
  - High-risk timeline (weeks 1-3)
  - Warning signs checklist
  - **CRITICAL: Adolescent-specific risks**
  - Caregiver monitoring protocol
  - Crisis resources
- **Location:** `.claude/content-staging/drafts/energy-mood-paradox.tex`
- **Required:** Suicide prevention resources, mandatory review

### Task 2.5: Dose-Dependent Benefit Curves
- **Agent:** `sonnet-general`
- **Input:** Existing "start low go slow" + literature
- **Output:**
  - U-shaped dose-response documentation
  - Medication-sensitive patient protocols
  - Titration schedules by class
  - Response assessment checkpoints
- **Location:** `.claude/content-staging/drafts/dose-curves.tex`

### Task 2.6: Withdrawal Effects
- **Agent:** `sonnet-general`
- **Input:** Existing mentions + literature
- **Output:**
  - Medication classes with withdrawal risk
  - Discontinuation syndrome recognition
  - Tapering protocols
  - Emergency management
- **Location:** `.claude/content-staging/drafts/withdrawal-effects.tex`

---

## Phase 3: Pediatric Adaptation

### Task 3.1: Pediatric Severe Adaptations
- **Agent:** `sonnet-general`
- **Input:** Adult drafts + pediatric PK literature
- **Output:** ch14c modifications:
  - Weight-based adjustments (mg/kg)
  - Developmental PK considerations
  - Caregiver observation requirements
  - Hospital protocol adaptations
- **Location:** `.claude/content-staging/drafts/pediatric-severe-effects.tex`

### Task 3.2: Pediatric Mild/Moderate Adaptations
- **Agent:** `sonnet-general`
- **Input:** Adult drafts + pediatric literature
- **Output:** ch14d modifications:
  - School-day medication timing
  - Sports/activity interactions
  - Academic performance monitoring
  - Parent-teacher communication
- **Location:** `.claude/content-staging/drafts/pediatric-ambulatory-effects.tex`

### Task 3.3: Pediatric Pharmacokinetics Table
- **Agent:** `haiku-general` (mechanical formatting)
- **Input:** Weight-based dosing data
- **Output:** LaTeX table:

| Medication | Adult Dose | <30kg | 30-50kg | >50kg | PK Notes |
|------------|------------|-------|---------|-------|----------|
| ... | ... | ... | ... | ... | ... |

- **Location:** `.claude/content-staging/drafts/pediatric-pk-table.tex`

---

## Phase 4: Chapter Integration

### Task 4.1: Integrate into ch14a (Adult Severe)
- **Agent:** `chapter-integrator` (Haiku)
- **Target:** `contents/part3-treatment/ch14a-urgent-action-severe.tex`
- **Location:** New subsection under "Days 2-7: Protocol Refinement"
- **Content:** All 6 effect types, severe-appropriate detail level
- **Verification:** `grep` confirms all sections present

### Task 4.2: Integrate into ch14b (Adult Mild/Moderate)
- **Agent:** `chapter-integrator` (Haiku)
- **Target:** `contents/part3-treatment/ch14b-action-mild-moderate.tex`
- **Location:** New subsection under medication management
- **Content:** All 6 effect types, ambulatory-appropriate
- **Verification:** `grep` confirms integration

### Task 4.3: Integrate into ch14c (Pediatric Severe)
- **Agent:** `chapter-integrator` (Haiku)
- **Target:** `contents/part3-treatment/ch14c-pediatric-severe.tex`
- **Location:** New subsection in Medical Management
- **Content:** Pediatric-adapted versions with weight-based dosing
- **Verification:** `grep` confirms integration

### Task 4.4: Integrate into ch14d (Pediatric Mild/Moderate)
- **Agent:** `chapter-integrator` (Haiku)
- **Target:** `contents/part3-treatment/ch14d-pediatric-ambulatory.tex`
- **Location:** Integrate with medication management sections
- **Content:** School-compatible, parent-friendly versions
- **Verification:** `grep` confirms integration

---

## Phase 5: Cross-Reference and Validation

### Task 5.1: Create Cross-Reference Links
- **Agent:** `protocol-linker` (Haiku)
- **Action:** Add `\ref{}` and `\label{}` links:
  - Effect type sections ↔ related medication sections (ch15)
  - Effect type sections ↔ supplement sections (ch16)
  - Adult versions ↔ pediatric versions
- **Verification:** Build succeeds, no undefined references

### Task 5.2: Medical Safety Validation
- **Agent:** `medical-advisor` (Opus) ⚠️
- **Check:**
  - No contradictions with existing content
  - Safety warnings complete for high-risk content
  - Evidence citations appropriate
  - Physician review emphasized throughout
- **Verification:** Sign-off on all critical sections

### Task 5.3: Build Verification
- **Agent:** `test-runner` (Haiku)
- **Command:** `nix build`
- **Check:** PDF generates without errors
- **Verification:** `result/ms.pdf` exists

### Task 5.4: Content Review
- **Agent:** `content-reviewer` (Sonnet)
- **Check:**
  - Medical accuracy consistent
  - Tone appropriate (clinical but accessible)
  - Evidence qualifiers present
  - No contradictions between chapters
- **Verification:** Review report generated

### Task 5.5: Final Quality Review (Trust but Verify)

- **Agent:** `opus-general` ⚠️
- **Scope:** ALL produced text from Phases 2-4
- **Check:**
  - Writing quality and clarity
  - Logical coherence across sections
  - No subtle errors missed by Sonnet
  - Terminology consistency
  - Evidence claims match citations
  - Patient-facing content is clear and actionable
- **Output:** Quality report with specific corrections needed
- **Verification:** All flagged issues resolved before completion

---

## Agent Cost Summary

| Phase | Agent | Model | Tasks | Cost Tier |
|-------|-------|-------|-------|-----------|
| 1 | literature-integrator | Sonnet | 4 | $$ |
| 2 | sonnet-general | Sonnet | 4 | $$ |
| 2 | medical-advisor | Opus | 2 | $$$$ |
| 3 | sonnet-general | Sonnet | 2 | $$ |
| 3 | haiku-general | Haiku | 1 | $ |
| 4 | chapter-integrator | Haiku | 4 | $ |
| 5 | protocol-linker | Haiku | 1 | $ |
| 5 | medical-advisor | Opus | 1 | $$$$ |
| 5 | test-runner | Haiku | 1 | $ |
| 5 | content-reviewer | Sonnet | 1 | $$ |
| 5 | opus-general | Opus | 1 | High |

**Totals:**

- **Haiku:** 7 tasks (mechanical operations)
- **Sonnet:** 11 tasks (moderate reasoning)
- **Opus:** 4 tasks (medical safety + final quality review)

---

## Verification Checklist

### Phase 1 Complete When:
- [ ] ≥5 papers per effect type
- [ ] BibTeX entries validated
- [ ] Certainty assessments completed
- [ ] Integration guides created

### Phase 2 Complete When:
- [ ] All 6 effect type drafts exist
- [ ] Safety warnings included for high-risk content
- [ ] LaTeX environments appropriate
- [ ] Cross-references identified

### Phase 3 Complete When:
- [ ] Weight-based adaptations complete
- [ ] Developmental considerations documented
- [ ] Caregiver guidance included
- [ ] Age-appropriate language verified

### Phase 4 Complete When:
- [ ] All grep verifications pass
- [ ] No orphaned labels
- [ ] Consistent formatting
- [ ] Section hierarchy maintained

### Phase 5 Complete When:
- [ ] `nix build` succeeds
- [ ] No undefined references
- [ ] Medical safety review passed
- [ ] Content review passed

---

## Critical Files

| File | Purpose |
|------|---------|
| `ch14a-urgent-action-severe.tex` | Primary adult severe target |
| `ch14b-action-mild-moderate.tex` | Adult mild/moderate target |
| `ch14c-pediatric-severe.tex` | Pediatric severe target (has weight-based template) |
| `ch14d-pediatric-ambulatory.tex` | Pediatric mild/moderate target |
| `ch16-supplements-nutraceuticals.tex` | Has "Start Low Go Slow" to cross-reference |
| `.claude/agents/medical-advisor.md` | Opus agent for safety-critical tasks |

---

## Safety Requirements

### Critical Safety Content (Requires Opus)
1. **Energy-before-mood paradox** - Suicide risk period
2. **Herxheimer reactions** - When to stop treatment
3. **Pediatric adaptations** - Developmental vulnerabilities

### All Safety Content Must Include:
- Clear warning environments (`\begin{warning}`)
- Physician review reminders
- Crisis resources for mental health content
- "When to seek immediate care" criteria
- Evidence quality ratings

---

## Execution Notes

1. **Parallel execution:** Phase 1 literature searches can run in parallel
2. **Sequential dependency:** Phase 2 requires Phase 1 completion
3. **Partial parallelism:** Phase 3 can begin once adult drafts exist
4. **Strict sequence:** Phase 4 requires all drafts complete
5. **Final validation:** Phase 5 requires all integration complete

**Estimated total agent invocations:** 21
**Model distribution:** Haiku 33%, Sonnet 52%, Opus 15%