# Multi-Objective Architectural Restructuring Plan
**Created:** 2026-02-11
**Status:** Planning Phase
**Complexity:** Critical

---

## Executive Summary

This document outlines a comprehensive, phased approach to three coordinated objectives:

1. **Objective 1: Research Integration** - Fluoride-pineal-sleep hypothesis, autonomic diagnostic protocols, sleep specialist referral, Ritalin rebound tracking
2. **Objective 2: Case Study Restructuring** - Reorganize repository from integrated appendices to external case study
3. **Objective 3: Medical Coordination** - Address urgent autonomic dysregulation event and establish diagnostic pathway

**Key Principle:** Each objective has dependencies but can proceed in parallel after planning phase.

**Total Implementation Scope:**
- 4+ new diagnostic protocols to develop
- ~8-12 LaTeX files to restructure/move
- 50+ cross-references to update
- ~15 case-data files to reorganize
- Repository architecture to redesign
- Medical agent coordination to establish

---

## PART I: SITUATION ANALYSIS

### Current State

**Main Document Structure (ms.tex):**
- Part 1-5: Clinical content (~280 pages theoretical)
- Appendix A-H: General reference materials
- **Appendix I (Personal Case - INTEGRATED):** 4 files
  - `appendix-i-personal-symptoms.tex` - Symptom profile
  - `appendix-i-a-medical-management.tex` - Treatment/medication history
  - `appendix-i-b-clinical-findings.tex` - Test results and assessments
  - `appendix-i-c-case-analysis.tex` - Pattern analysis and hypotheses
- Appendix J: Daily journal + recommendations

**Case Data Location (Distributed):**
- `.claude/case-data/` - Markdown symptom logs, events, patterns
- `contents/appendices/appendix-i-*.tex` - LaTeX case documentation
- Medical management: Mixed across multiple files

**Cross-References (Line 303-310 in ms.tex):**
```latex
\include{contents/appendices/appendix-i-personal-symptoms}
\include{contents/appendices/appendix-i-a-medical-management}
\include{contents/appendices/appendix-i-b-clinical-findings}
\include{contents/appendices/appendix-i-c-case-analysis}
```

### Problem Statement

**Issue 1: Integrated vs. Standalone**
- Personal case data currently embedded in main paper as appendices
- Creates coupling between theoretical document and patient-specific content
- Makes paper less suitable for medical publication/collaboration
- Makes case study less suitable as standalone clinical documentation

**Issue 2: Data Fragmentation**
- Case data scattered across `.claude/case-data/` (markdown) and `contents/appendices/` (LaTeX)
- Different formats, different structures, no unified case repository
- Difficult to maintain consistency across medical record

**Issue 3: Missing Diagnostic Protocols**
- No systematic Tier 1 autonomic test protocol
- No Ritalin/activity rebound tracking framework
- No sleep specialist referral questionnaire template
- No fluoride-pineal-sleep hypothesis integration pathway

**Issue 4: Immediate Medical Need**
- Urgent autonomic dysregulation event (2026-02-11) requires:
  - Safety protocols (driving restrictions)
  - Medical documentation (diagnostic workup)
  - Hypothesis tracking (Hypothesis 2C validation)
  - Specialist coordination (cardiology/autonomic referral)

---

## PART II: ARCHITECTURAL DESIGN

### Target State: Separated Case Study

**New Repository Structure:**
```
/home/nicky/code/health-me-cfs/
├── ms.tex (main theoretical document - UNCHANGED except appendix removal)
├── contents/
│   ├── part1-5/ (unchanged)
│   ├── appendices/
│   │   ├── appendix-a through appendix-h (unchanged - general reference)
│   │   └── (appendix-i removed → moved to separate case study)
│   └── shared/ (unchanged)
├── patients/
│   └── yannick/
│       ├── README.md (case overview, patient demographics)
│       ├── case-study.tex (single LaTeX file OR modular structure)
│       ├── medical-record.md (unified medical documentation)
│       ├── protocols/
│       │   ├── autonomic-diagnostic-protocol.md
│       │   ├── ritalin-rebound-tracking.yaml
│       │   ├── sleep-medicine-referral.md
│       │   └── fluoride-pineal-sleep-hypothesis.md
│       ├── case-data/ (symlink or copy of .claude/case-data)
│       │   ├── events/
│       │   ├── symptoms/
│       │   ├── patterns/
│       │   └── medications/
│       └── appendices/ (restructured from contents/appendices/appendix-i-*)
│           ├── I-personal-symptoms.tex
│           ├── I-a-medical-management.tex
│           ├── I-b-clinical-findings.tex
│           └── I-c-case-analysis.tex
├── .claude/case-data/ (source of truth - unchanged location)
└── infolead-latex-templates/ (unchanged)
```

### Design Rationale: Independent Variation Principle

**Change Drivers:**
1. **Theoretical Content (Part 1-5, Appendix A-H):** Changes when ME/CFS understanding evolves
2. **Patient-Specific Case (Patients/Yannick):** Changes when patient's condition/treatment changes
3. **Diagnostic Protocols:** Changes when new diagnostic standards emerge or medical guidelines update
4. **Medical Agent Coordination:** Changes when agent capabilities or workflows update

**Application:**
- Separate theoretical document from patient-specific case
- Separate diagnostic protocols from execution/tracking
- Maintain unified case-data as single source of truth
- Allow document evolution independent of case evolution

---

## PART III: IMPLEMENTATION ROADMAP

### Phase 1: Planning & Preparation (Current - 2h)
**Goal:** Finalize architecture, create todos, establish coordination

**Tasks:**
- [ ] Analyze all appendix-i cross-references (completed above)
- [ ] Identify all case-data files requiring reorganization
- [ ] Create detailed file migration plan
- [ ] Plan diagnostic protocol templates
- [ ] Establish medical agent coordination sequence

**Verification:**
- Complete architecture plan document ✓ (this file)
- Cross-reference inventory complete
- File migration checklist ready
- Diagnostic protocols templated

---

### Phase 2: Structure Creation (2-3h)
**Goal:** Create patients/yannick directory and prepare LaTeX infrastructure

**Tasks:**
- [ ] Create `/home/nicky/code/health-me-cfs/patients/yannick/` directory
- [ ] Create subdirectories: `protocols/`, `case-data/`, `appendices/`
- [ ] Create `README.md` with patient demographics (name: Yannick, born: 1981-03-22, age: 44)
- [ ] Create case study LaTeX preamble/structure
- [ ] Create symlink or copy case-data into patients/yannick/case-data/
- [ ] Create medical-record.md template
- [ ] Copy appendix-i-*.tex files to patients/yannick/appendices/

**Dependencies:** None - can proceed immediately
**Parallelizable:** Yes - all tasks independent
**Verification:**
- Directory structure exists
- All files copied/symlinked successfully
- LaTeX preamble compiles

---

### Phase 3: Diagnostic Protocol Development (3-4h)
**Goal:** Create systematic protocols for autonomic testing, Ritalin tracking, sleep medicine, fluoride hypothesis

**Three-Track Parallel Execution:**

#### Track A: Autonomic Diagnostic Protocol
**Agent:** hypothesis-generator + medical-advisor
**Deliverables:**
- [ ] Tier 1 autonomic test protocol specification
  - Tilt table test (primary diagnostic)
  - Holter monitor (24-48h capture)
  - HRV testing specification
  - Orthostatic vital signs (NASA Lean Test)
  - Expected findings if Hypothesis 2C correct
- [ ] Questions for autonomic specialist
- [ ] Medical clearance template
- [ ] Driving safety assessment framework
- [ ] Integration with current Ritalin regimen

**File:** `patients/yannick/protocols/autonomic-diagnostic-protocol.md`

#### Track B: Ritalin Rebound Tracking Protocol
**Agent:** treatment-analyst + case-documenter
**Deliverables:**
- [ ] Stimulant-free day symptom tracking template
- [ ] Activity-rebound correlation framework
- [ ] Dosing history documentation (24 years on stimulants)
- [ ] Provigil/Concerta/Ritalin-MR comparison
- [ ] Autonomic impact assessment per formulation
- [ ] Statistical tracking system (CSV/YAML)
- [ ] Hypothesis testing framework (causation vs. correlation)

**File:** `patients/yannick/protocols/ritalin-rebound-tracking.yaml`

#### Track C: Sleep Medicine Specialist Referral
**Agent:** medical-advisor + research-monitor
**Deliverables:**
- [ ] Sleep-wake cycle dysfunction summary
- [ ] Autonomic state transition failure explanation
- [ ] Questions for sleep medicine specialist
- [ ] Home sleep apnea test (HSAT) considerations
- [ ] Polysomnography (PSG) indication assessment
- [ ] Sleep architecture analysis template

**File:** `patients/yannick/protocols/sleep-medicine-referral.md`

#### Track D: Fluoride-Pineal-Sleep Hypothesis Integration
**Agent:** hypothesis-generator + literature-integrator
**Deliverables:**
- [ ] Hypothesis definition and mechanism
- [ ] Literature review on pineal/fluoride/sleep
- [ ] Testable predictions
- [ ] Measurement framework (melatonin levels, sleep metrics)
- [ ] Integration with autonomic hypothesis
- [ ] Clinical trial design for pineal hypothesis

**File:** `patients/yannick/protocols/fluoride-pineal-sleep-hypothesis.md`

**Verification:**
- All 4 protocol files created with substantive content
- Protocols cross-reference each other where appropriate
- Medical agent input integrated
- Ready for implementation/tracking

---

### Phase 4: Main Document Restructuring (2-3h)
**Goal:** Remove appendix-i from main document, update cross-references, restructure appendix numbering

**Tasks:**
- [ ] Remove 4 `\include` commands for appendix-i files (lines 303-306)
- [ ] Update ms.tex comments to reflect removal
- [ ] Create new reference system:
  - Option A: "See external case study: patients/yannick/"
  - Option B: "For patient-specific analysis, see Appendix I (external case study)"
  - Option C: Remove references entirely, keep document theory-only
- [ ] Update appendix section comments in ms.tex
- [ ] Verify document still compiles (build test)
- [ ] Review appendix-j entries - keep or move?
  - Appendix J-daily-journal: KEEP in main (general template)
  - Appendix J-recommendations: MOVE to patients/yannick/

**Critical Decision:** Appendix J Status
- **Option 1:** Keep both in main (general template + patient recommendations separate)
- **Option 2:** Move patient's J to case study, keep only general template in main
- **Option 3:** Remove J from main entirely
- **Recommendation:** Option 2 - General templates stay in main, patient implementations in case study

**Verification:**
- Main document compiles cleanly
- All internal cross-references updated
- No orphaned references to appendix-i

---

### Phase 5: Case Data Reorganization (2h)
**Goal:** Consolidate case-data into unified medical record structure

**Tasks:**
- [ ] Audit all files in `.claude/case-data/`
  - `CASE_JOURNAL_*.md` → move to `patients/yannick/medical-record.md` (merged)
  - `DOCUMENTATION_UPDATE_*.md` → archive in patients/yannick/documentation-history/
  - `URGENT_COORDINATION_*.md` → update with coordination task outcomes, keep in case-data/
  - Event files → consolidate into symptom log
  - Pattern files → add to medical-record.md
  - Causal models → keep in separate section
  - Historical events/exposures → keep in separate section

- [ ] Create unified `patients/yannick/medical-record.md`
  - Patient demographics
  - Medical history summary
  - Current symptoms and severity
  - Current medications (Ritalin-MR dosing, timing, formulation history)
  - Previous trials and outcomes
  - Diagnostic findings
  - Hypotheses and evidence
  - Ongoing tracking entries

- [ ] Create medication history spreadsheet
  - Timeline: Age 20-44 (24 years)
  - Formulations: Concerta → Provigil → Ritalin-MR
  - Dosages and dates
  - Efficacy and side effects
  - Current regimen details

- [ ] Update appendix-i LaTeX files to reference new case-data location

**Verification:**
- All case data files accounted for
- Unified medical record created
- No data loss during consolidation
- Cross-references updated

---

### Phase 6: LaTeX Case Study Compilation (2h)
**Goal:** Create compilable case study document from patient files

**Options:**

**Option A: Single File (case-study.tex)**
- Minimal overhead
- All patient data in one comprehensive document
- Easier for standalone publication

**Option B: Modular Structure (Like main document)**
- Mirrors main document architecture
- Can evolve alongside theoretical document
- Supports future multi-patient cases

**Recommendation:** Option A initially, convert to Option B if multi-patient cases develop

**Tasks (Option A):**
- [ ] Create `patients/yannick/case-study.tex`
- [ ] Load preamble (reduced - main document's preamble)
- [ ] Structure:
  - Introduction: Patient overview, demographics, timeline
  - Part 1: Medical history and current presentation
  - Part 2: Diagnostic findings and pattern analysis
  - Part 3: Treatment trials and outcomes
  - Part 4: Case analysis and hypotheses
  - Part 5: Protocols and next steps
- [ ] \input all protocol files as appendices
- [ ] Compile and verify PDF generation

**Verification:**
- case-study.tex compiles cleanly
- PDF generates without errors
- All content properly formatted
- Cross-references working

---

### Phase 7: Medical Agent Coordination Activation (3-4h)
**Goal:** Establish systematic agent workflows for ongoing case management

**Key Agents & Responsibilities:**

#### Tier 1 (Core - Activate Immediately)
1. **case-documenter**
   - Daily symptom/medication logging
   - Output: `.claude/case-data/symptoms/YYYY-MM-DD.yaml`
   - Integrate into `patients/yannick/medical-record.md` monthly

2. **medical-advisor**
   - Evidence-based treatment recommendations
   - Specialist coordination (autonomic, sleep medicine, cardiology)
   - Output: Protocols, referral recommendations

3. **data-validator**
   - Quality assurance on medical records
   - Consistency checking
   - Output: Weekly validation reports

#### Tier 2 (Analysis - Activate After Coordination)
4. **treatment-analyst**
   - Analyze Ritalin rebound patterns
   - Statistical effectiveness analysis
   - Output: `ritalin-rebound-tracking.yaml` updates

5. **hypothesis-generator**
   - Hypothesis 2C (autonomic state transition) validation
   - Mechanistic analysis
   - Biomarker predictions
   - Output: `protocols/autonomic-diagnostic-protocol.md` updates

6. **crisis-manager**
   - Safety protocols for autonomic events
   - Emergency action planning
   - Output: Emergency protocols document

#### Tier 3 (Support - Activate as Needed)
7. **research-monitor**
   - Track autonomic dysfunction / ME/CFS sleep research
   - Monitor fluoride-pineal-sleep hypothesis literature
   - Output: Weekly research alerts

8. **pacing-coach**
   - Activity guidance for high-risk autonomic periods
   - Energy management around Ritalin transitions
   - Output: Activity plans

**Workflows to Establish:**

1. **Daily Symptom Logging Workflow**
   ```
   User → case-documenter (logs) → data-validator (checks) →
   pacing-coach (guidance) → medical-record.md (updated weekly)
   ```

2. **Autonomic Event Response Workflow**
   ```
   Autonomic event occurs → crisis-manager (safety) →
   case-documenter (documentation) → hypothesis-generator (analysis) →
   medical-advisor (recommendations) → specialist coordination
   ```

3. **Ritalin Rebound Analysis Workflow**
   ```
   Stimulant-free day data → case-documenter (logs) →
   treatment-analyst (analysis) → ritalin-rebound-tracking (updated) →
   medical-advisor (pattern interpretation)
   ```

4. **Protocol Implementation Workflow**
   ```
   Diagnostic test ordered → protocol specialist (testing instructions) →
   case-documenter (results logging) → hypothesis-generator (interpretation) →
   medical-advisor (next steps)
   ```

**Tasks:**
- [ ] Create `.claude/workflows/daily-case-management.md` (formal workflow)
- [ ] Create `.claude/workflows/autonomic-event-protocol.md` (emergency response)
- [ ] Create `.claude/workflows/ritalin-analysis-protocol.md` (rebound tracking)
- [ ] Create agent trigger system (which agent → when → for what)
- [ ] Document all agent interactions and data flows
- [ ] Create templates for each agent's outputs
- [ ] Establish update frequency for medical-record.md

**Verification:**
- All workflows documented
- Agent responsibilities clear
- Trigger conditions specified
- Integration points defined

---

### Phase 8: Integration & Testing (2h)
**Goal:** Verify all components work together, no data loss, all cross-references valid

**Tasks:**
- [ ] Compile main document (ms.tex) without appendix-i
  - Should have no broken references
  - Should build successfully
  - Verify page count

- [ ] Compile case study (patients/yannick/case-study.tex)
  - Should build successfully
  - All patient data visible
  - Verify formatting

- [ ] Verify case-data integration
  - case-data still in `.claude/case-data/`
  - Accessible from patients/yannick/case-data/ (symlink or copy)
  - Medical-record.md reflects latest data

- [ ] Verify protocol files
  - All 4 protocols created
  - Cross-referenced correctly
  - Ready for implementation

- [ ] Verify medical agent coordination
  - All workflows documented
  - Agent triggers working
  - Output files in correct locations

- [ ] Git status check
  - New files staged appropriately
  - Old files removed from appendices/
  - No orphaned references

**Verification Checklist:**
- [ ] Main document compiles
- [ ] Case study compiles
- [ ] No broken cross-references
- [ ] Case-data accessible and current
- [ ] Protocols substantive and actionable
- [ ] Agent workflows documented
- [ ] Git history clean

---

## PART IV: CRITICAL DECISIONS REQUIRED

### Decision 1: Appendix J Status
**Options:**
- A) Keep both in main (general template) + move patient's to case study
- B) Keep only general template in main, move all patient data to case study
- C) Remove J entirely from main

**Recommendation:** Option A
**Rationale:** General daily journal template is useful for readers; patient-specific recommendations are case-specific

---

### Decision 2: Case Study Format
**Options:**
- A) Single file (case-study.tex) - simpler, more portable
- B) Modular structure (part1-5 subdirectory) - mirrors main document
- C) Minimal (just medical-record.md + protocols, no LaTeX)

**Recommendation:** Option A
**Rationale:** Simpler, meets current needs, can evolve if multi-patient cases develop

---

### Decision 3: Case-Data Duplication vs. Symlink
**Options:**
- A) Symlink `.claude/case-data/` into `patients/yannick/case-data/`
- B) Copy case-data at restructuring time, keep synced manually
- C) Keep case-data only in `.claude/`, reference by path in patient documents

**Recommendation:** Option A (symlink)
**Rationale:** Single source of truth, reduced maintenance burden, automatic sync

---

### Decision 4: Main Document Content
**Options:**
- A) Remove all references to appendix-i, keep theory-focused
- B) Add brief reference to external case study in introduction
- C) Keep one summary reference but point to external document

**Recommendation:** Option B
**Rationale:** Acknowledges case's role in motivating research while maintaining separation

---

## PART V: RISK ASSESSMENT & MITIGATION

### Risk 1: Cross-Reference Breakage
**Severity:** HIGH
**Likelihood:** MEDIUM
**Mitigation:**
- Use grep to find all appendix-i references before removal
- Update all \ref{} and \cite{} commands systematically
- Compile document multiple times during transition
- Keep backup of original ms.tex

---

### Risk 2: Case-Data Loss During Migration
**Severity:** CRITICAL
**Likelihood:** LOW (if careful)
**Mitigation:**
- Complete inventory of all case-data files before moving
- Copy first, then delete only after verification
- Version control commits at each step
- Review git diff before committing

---

### Risk 3: Incomplete Medical Agent Coordination
**Severity:** HIGH
**Likelihood:** MEDIUM
**Mitigation:**
- Start with Tier 1 agents only
- Document workflows explicitly
- Test each workflow with sample data
- Establish clear trigger conditions
- Monitor first week of usage for gaps

---

### Risk 4: LaTeX Compilation Failures
**Severity:** MEDIUM
**Likelihood:** MEDIUM
**Mitigation:**
- Test compilation at each phase
- Keep original files until new ones compile
- Use git branches for experimental changes
- Have LaTeX error log review process

---

### Risk 5: Incomplete Diagnostic Protocol Development
**Severity:** MEDIUM
**Likelihood:** LOW (with planning)
**Mitigation:**
- Assign clear agent ownership per protocol
- Define specific deliverables per protocol
- Create protocol templates before agent work
- Require medical review before finalizing

---

### Risk 6: Repository Structure Confusion
**Severity:** LOW
**Likelihood:** LOW
**Mitigation:**
- Create clear documentation (README.md in each directory)
- Add comments in ms.tex about case study location
- Maintain consistent naming conventions
- Create visual architecture diagram

---

## PART VI: TIMELINE & RESOURCE ALLOCATION

### Estimated Effort
- **Phase 1 (Planning):** Complete ✓
- **Phase 2 (Structure):** 2-3 hours
- **Phase 3 (Protocols):** 3-4 hours (parallelizable)
- **Phase 4 (Main Doc):** 2-3 hours
- **Phase 5 (Case Data):** 2 hours
- **Phase 6 (LaTeX):** 2 hours
- **Phase 7 (Agent Coordination):** 3-4 hours
- **Phase 8 (Testing):** 2 hours

**Total:** 16-23 hours over 3-5 days

### Resource Requirements
- 1 primary architect (this session)
- Case-documenter agent (daily use)
- Hypothesis-generator agent (1 session, ~2h)
- Medical-advisor agent (1 session, ~2h)
- Treatment-analyst agent (1 session, ~2h)
- Literature-integrator agent (1 session, ~2h for fluoride hypothesis)

### Parallel Execution Opportunities
- Phase 3 can run in 4 parallel tracks (protocols A-D)
- Phase 8 testing can begin during Phase 7 (parallel compilation)
- Medical agent input can begin immediately after Phase 2

---

## PART VII: SUCCESS CRITERIA

### Architecture Success
- [ ] Main document (ms.tex) compiles without appendix-i
- [ ] Case study (patients/yannick/case-study.tex) compiles independently
- [ ] No broken cross-references in either document
- [ ] Case-data fully accessible from both locations
- [ ] Directory structure mirrors design plan

### Protocol Success
- [ ] 4 protocols created with substantive medical content
- [ ] Each protocol templates medical actions/tracking
- [ ] Protocols cross-referenced where appropriate
- [ ] Medical advisor input integrated
- [ ] Ready for immediate implementation

### Medical Agent Success
- [ ] Agent workflows documented formally
- [ ] Trigger conditions specified
- [ ] Output files in correct locations
- [ ] Daily case-documenter workflow active
- [ ] First autonomic event properly documented using protocol

### Data Integrity Success
- [ ] All case-data files accounted for
- [ ] No data loss during migration
- [ ] Case-data consolidated into unified medical record
- [ ] Version history preserved
- [ ] All dates, measurements, and clinical data intact

### Integration Success
- [ ] Main document and case study compile correctly
- [ ] Protocols accessible from case study
- [ ] Medical agent workflows functioning
- [ ] Daily logging active
- [ ] Case-documenter producing valid YAML/markdown

---

## NEXT STEPS

### Immediate (This Session)
1. ✓ Complete architecture plan (this document)
2. Get user approval on 4 critical decisions (Section V)
3. Proceed with Phase 2: Structure Creation

### Short Term (Next 24h)
4. Complete Phase 2-4 (Structure, Protocols, Main Doc Restructuring)
5. Activate case-documenter for daily Ritalin rebound tracking
6. Begin Hypothesis Generator work on autonomic protocol

### Medium Term (1 Week)
7. Complete Phase 5-6 (Case Data, LaTeX compilation)
8. Finalize medical agent coordination
9. Schedule specialist consultations (autonomic, sleep medicine)

### Long Term (Ongoing)
10. Daily case documentation using case-documenter
11. Weekly hypothesis refinement using hypothesis-generator
12. Monthly medical-record.md updates
13. Iterative diagnostic protocol implementation

---

## DOCUMENT HISTORY

| Date | Version | Author | Changes |
|------|---------|--------|---------|
| 2026-02-11 | 1.0 | Architecture Planning | Initial plan creation |

---

**Status:** Ready for execution upon user approval of critical decisions.

**Next Action:** Obtain approval on 4 critical decisions (Section IV), then proceed with Phase 2 implementation.
