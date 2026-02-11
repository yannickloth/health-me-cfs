# MASTER PLAN ARCHIVE: Full Task Breakdown

**Created:** 2026-02-10
**Updated:** 2026-02-11
**Purpose:** Complete task reference with all ~222 tasks from all 9 phases
**Format:** Full execution roadmap with detailed task lists

---

## Quick Reference

| Phase | Name | Tasks | Duration | Status |
|-------|------|-------|----------|--------|
| 0.5 | Placeholder Audit | 6 | 0.5-1 session | [ ] NEW |
| 1 | Patient Extraction | 11 | 1-2 sessions | [ ] Pending |
| 2 | Staging Integration | 12 | 2-3 sessions | [ ] Pending |
| 3 | Ch. 15 Research | 28 | 3-4 sessions | [ ] Parallel |
| 4 | Biomarkers | 19 | 2-3 sessions | [ ] Parallel |
| 5 | Marie Additions | 39 | 3-4 sessions | [ ] Parallel |
| 6 | Medication Drafts | 20 | 2 sessions | [ ] Parallel |
| 7 | Part3 Restructure | 65 | 6-8 sessions | [ ] Sequential |
| 8 | Final QA | 9 | 1-2 sessions | [ ] Sequential |
| **TOTAL** | | **~222 tasks** | **22-28 sessions** | |

---

## Document Navigation

1. **MASTER PLAN.md** ← Start here (roadmap + decisions)
2. **MASTER PLAN ARCHIVE.md** ← This file (all ~222 tasks)
3. **Individual phases (01-phase-*.md)** ← Implementation details

---

## Cross-Cutting Requirements (Apply to ALL Phases)

### R1: Complete Chapters with Placeholders
- Phase 0.5 identifies all gaps; subsequent phases resolve them
- No placeholders survive to final commit (verified in Phase 8)

### R2: Creative Brainstorming Per Topic
- BEFORE writing new content, brainstorm to discover:
  - New biological phenomena
  - New treatments/medications/supplements
  - New hypotheses with testable predictions
  - Open research questions
- Minimum deliverables: 3 hypotheses, 3 treatment ideas, 3 research questions per session
- Agents: hypothesis-generator, scientific-insight-generator, literature-integrator

### R3: Iterative Quality Checking
- All QA tasks run as loops, not single passes
- Format: `REPEAT: review → fix → re-review UNTIL: agent confirms 0 issues`
- Applies to: scientific-rigor-auditor, logic-auditor, style-naturalizer, content-reviewer, link-checker, formatting-fixer, syntax-fixer

---

# PHASE 0.5: PLACEHOLDER AUDIT (NEW)

**Duration:** 0.5-1 session | **Tasks:** 6 | **Model:** 6 Sonnet

### Objective
Identify ALL chapters with research gaps, TODO markers, placeholders, stub sections, or incomplete content BEFORE any new work begins.

### Task List
- [ ] 0.5.1 Scan all .tex files for placeholder markers (TODO, FIXME, XXX, etc.) | Explore
- [ ] 0.5.2 Audit chapters for stub sections (< 100 words under \section{} headers) | sonnet-general
- [ ] 0.5.3 Cross-reference Part 2 topics → Part 3 treatments (find missing treatment sections) | content-reviewer
- [ ] 0.5.4 Cross-reference Part 3 treatments → Part 2 topics (find ungrounded treatments) | content-reviewer
- [ ] 0.5.5 Generate prioritized gap inventory (file, section, type, effort, phase assignment) | sonnet-general
- [ ] 0.5.6 Assign each gap to Phase 3-7 or flag as new work | sonnet-general

**Deliverable:** `.claude/plans/PLACEHOLDER_AUDIT.md`

---

# PHASE 1: ARCHITECTURE & PATIENT FILE EXTRACTION

**Duration:** 1-2 sessions | **Tasks:** 11 | **Model:** 6 Sonnet, 3 Haiku

### Decisions Required (User Approval)
- [ ] 1.1: Approve numbered structure 00-07 for patients/yannick/
- [ ] 1.2: Ch. 15 placement: **Option A (new chapter)** vs B vs C
- [ ] 1.3: Approve ms.tex update + comment
- [ ] 1.4: Delete old appendix files? (Recommend: YES)
- [ ] 1.5: Approve README for patients/yannick/

### Task List
- [ ] 1.1 Extract appendix-i-personal-symptoms → 03-symptom-profile.tex | chapter-integrator
- [ ] 1.2 Extract appendix-i-a → 01-medical-history.tex | chapter-integrator
- [ ] 1.3 Extract appendix-i-b → 02-clinical-findings.tex | chapter-integrator
- [ ] 1.4 Extract appendix-i-c → 04-case-analysis.tex | chapter-integrator
- [ ] 1.5 Move appendix-j-recommendations → 05-treatment-plans.tex | haiku
- [ ] 1.6 Move appendix-j-daily-journal → 06-daily-tracking.tex | haiku
- [ ] 1.7 Create patients/yannick/README.md | sonnet
- [ ] 1.8 Update ms.tex lines 302-309 | sonnet
- [ ] 1.9 Address Phase 0.5 patient-related gaps | sonnet
- [ ] 1.10 Build verification: nix build | test-runner
- [ ] 1.11 Commit reorganization | haiku

---

# PHASE 2: CONTENT-STAGING INTEGRATION

**Duration:** 2-3 sessions | **Tasks:** 12 | **Model:** 10 Sonnet, 2 Haiku, 1 Opus

### Objective
Integrate 10 existing .tex files + 7 integration guides from `.claude/content-staging/` before new research begins.

### Files to Integrate
- acute-onset-protocol.tex → Ch 14a/b
- front-loading-strategy.tex → Ch 14a
- hrv-guided-pacing.tex → Ch 17
- sports-medicine-pacing.tex → Ch 17
- astrocyte-energy-gate.tex → Ch 8
- cns-energy-triage.tex → Ch 14j
- insights-wirth-neurotransmitter.md → Ch 8
- scientific-insights-wirth-scheibenbogen-2025.md → Ch 7, 10

### Task List
- [ ] 2.1 Integrate acute-onset protocol | chapter-integrator
- [ ] 2.2 Integrate front-loading strategy | chapter-integrator
- [ ] 2.3 Integrate HRV-guided pacing | chapter-integrator
- [ ] 2.4 Integrate sports-medicine pacing | chapter-integrator
- [ ] 2.5 Integrate astrocyte-energy-gate | chapter-integrator
- [ ] 2.6 Integrate CNS-energy-triage | chapter-integrator
- [ ] 2.7 Add Wirth neurotransmitter insights | chapter-integrator
- [ ] 2.8 Add Wirth-Scheibenbogen 2025 insights | chapter-integrator
- [ ] 2.9 Cross-reference all new sections | protocol-linker
- [ ] 2.10 Build verification | test-runner
- [ ] 2.11 **ITERATIVE** Scientific rigor audit — repeat until clean | scientific-rigor-auditor
- [ ] 2.12 Commit integration | haiku

---

# PHASE 3: RESEARCH GAPS & CH. 15 CREATION

**Duration:** 3-4 sessions | **Tasks:** 28 | **Model:** 22 Sonnet, 2 Haiku, 1 Opus

### Objective
Create Ch. 15 "Symptom-Producing Mechanisms" (40-50 pages, 10+ sections)

### Chapter 15 Structure
- 15.1: Conceptual framework
- 15.2: Adenosine accumulation and sleep pressure
- 15.3: Inflammatory cytokine-induced somnolence
- 15.4: Serotonin dysregulation
- 15.5: Melatonin dysfunction
- 15.6: Microglia activation and neuroinflammatory fatigue
- 15.7: Integrated cascade model
- 15.8: Connection to patient phenotypes
- 15.9: Therapeutic implications
- 15.10: Research directions
- Additional sections from brainstorming (R2)

### Task List

**Brainstorming (R2):**
- [ ] 3.0a Creative brainstorming: Symptom mechanisms (≥5 hypotheses, ≥5 treatments, ≥5 research Qs) | hypothesis-generator
- [ ] 3.0b Literature discovery: Mechanisms NOT in planned structure | literature-integrator
- [ ] 3.0c Review brainstorming: Decide on new/expanded sections | sonnet-general

**Skeleton & Literature:**
- [ ] 3.1 Create ch15 skeleton (incorporating brainstorming) | haiku
- [ ] 3.2 Literature: Adenosine and sleep | literature-integrator
- [ ] 3.3 Literature: Cytokines and somnolence | literature-integrator
- [ ] 3.4 Literature: Serotonin-fatigue | literature-integrator
- [ ] 3.5 Literature: Melatonin dysfunction | literature-integrator
- [ ] 3.6 Literature: Microglia and neuroinflammation | literature-integrator
- [ ] 3.6b Literature: Brainstorming-identified mechanisms | literature-integrator

**Content Writing:**
- [ ] 3.7 Write 15.1: Framework | scientific-insight-generator
- [ ] 3.8 Write 15.2: Adenosine | scientific-insight-generator
- [ ] 3.9 Write 15.3: Cytokines | scientific-insight-generator
- [ ] 3.10 Write 15.4: Serotonin | scientific-insight-generator
- [ ] 3.11 Write 15.5: Melatonin | scientific-insight-generator
- [ ] 3.12 Write 15.6: Microglia | scientific-insight-generator
- [ ] 3.13 Write 15.7: Cascade | scientific-insight-generator
- [ ] 3.14 Write 15.8: Phenotypes | scientific-insight-generator
- [ ] 3.15 Write 15.9: Therapeutic | scientific-insight-generator
- [ ] 3.16 Write 15.10: Research | scientific-insight-generator
- [ ] 3.16b Write additional brainstorming sections | scientific-insight-generator

**Quality (R3 — iterative):**
- [ ] 3.17 Add cross-references | protocol-linker
- [ ] 3.18 **ITERATIVE** Certainty audit — repeat until clean | scientific-rigor-auditor
- [ ] 3.19 Build verification | test-runner
- [ ] 3.20 **ITERATIVE** Style naturalization — repeat until clean | style-naturalizer
- [ ] 3.21 **ITERATIVE** Final quality review — repeat until clean | opus-general
- [ ] 3.22 Commit Ch. 15 | haiku

---

# PHASE 4: SEVERE PATIENTS & BIOMARKER RESEARCH

**Duration:** 2-3 sessions | **Tasks:** 19 | **Model:** 17 Sonnet, 1 Haiku

### 5 Research Streams
1. Severe/bedbound mechanism translation
2. Biomarker-driven treatment prediction
3. Supplement & medication protocols
4. Pediatric ME/CFS considerations
5. Mast cell activation cascade

### Task List

**Brainstorming (R2):**
- [ ] 4.0a Creative brainstorming per stream (≥15 hypotheses, treatments, research Qs total) | hypothesis-generator
- [ ] 4.0b Cross-stream connection analysis | scientific-insight-generator

**Literature & Content:**
- [ ] 4.1 Literature: Severe mechanisms | literature-integrator
- [ ] 4.2 Content: Severe mechanisms | scientific-insight-generator
- [ ] 4.3 Literature: Biomarker prediction | literature-integrator
- [ ] 4.4 Content: Biomarker decision tree | scientific-insight-generator
- [ ] 4.5 Literature: Supplements | literature-integrator
- [ ] 4.6 Content: Supplement protocols | scientific-insight-generator
- [ ] 4.7 Literature: Pediatric | literature-integrator
- [ ] 4.8 Content: Pediatric modifications | scientific-insight-generator
- [ ] 4.9 Literature: Mast cells | literature-integrator
- [ ] 4.10 Content: Mast cell cascade | scientific-insight-generator
- [ ] 4.11 Integrate into Ch 11, 17 | chapter-integrator
- [ ] 4.12 Cross-reference and verify | protocol-linker

**Quality (R3 — iterative):**
- [ ] 4.13 **ITERATIVE** Scientific rigor audit — repeat until clean | scientific-rigor-auditor
- [ ] 4.14 **ITERATIVE** Style naturalization — repeat until clean | style-naturalizer
- [ ] 4.15 Commit | haiku

---

# PHASE 5: MARIE-INSPIRED PAPER ADDITIONS

**Duration:** 3-4 sessions | **Tasks:** 39 | **Model:** 28 Sonnet, 4 Haiku, 1 Opus

### 10 Content Areas
1. Iron-mediated CNS vulnerability (Ch 14)
2. Rest-phase deterioration (Ch 13)
3. Administrative harm cycle (Ch 14i)
4. Cold allodynia biomarker (Ch 14h)
5. Iron depletion risk (Ch 9)
6. Headache sentinel (Ch 8/14j)
7. Ferritin-severity proposal (Ch 25b)
8. Gynecological risk proposal (Ch 25b)
9. Cold sensitivity proposal (Ch 25b)
10. Return-to-work proposal (Ch 25b)

### Task List

**Brainstorming (R2):**
- [ ] 5.0a Creative brainstorming for 6 hypotheses (≥12 hypotheses, ≥3 treatments, ≥4 research Qs) | hypothesis-generator
- [ ] 5.0b Creative brainstorming for 4 proposals (≥2 methods, ≥3 cross-refs) | scientific-insight-generator

**Preparation:**
- [ ] 5.1-5.8 Literature searches + audits (8 tasks, incorporating brainstorming) | literature-integrator + Explore

**Hypothesis Development:**
- [ ] 5.9 Iron-CNS hypothesis | hypothesis-generator
- [ ] 5.10 Rest-phase deterioration | scientific-insight-generator
- [ ] 5.11 Administrative harm cycle | scientific-insight-generator
- [ ] 5.12 Cold allodynia biomarker | chapter-integrator
- [ ] 5.13 Iron depletion risk | chapter-integrator
- [ ] 5.14 Headache sentinel | hypothesis-generator

**Research Proposals:**
- [ ] 5.15 Ferritin-severity proposal | sonnet-general
- [ ] 5.16 Gynecological risk proposal | sonnet-general
- [ ] 5.17 Cold sensitivity proposal | sonnet-general
- [ ] 5.18 Return-to-work proposal | sonnet-general

**Integration:**
- [ ] 5.19-5.28 Integration into 10 chapters | chapter-integrator × 9, haiku × 1

**Quality (R3 — iterative):**
- [ ] 5.29 Dictionary update | dictionary-manager
- [ ] 5.30 Cross-reference linking | protocol-linker
- [ ] 5.31 **ITERATIVE** Scientific rigor audit — repeat until clean | scientific-rigor-auditor
- [ ] 5.32 **ITERATIVE** Style naturalization — repeat until clean | style-naturalizer
- [ ] 5.33 Build verification | test-runner
- [ ] 5.34 **ITERATIVE** Logic audit — repeat until clean | logic-auditor
- [ ] 5.35 Commit | haiku

---

# PHASE 6: MEDICATION EFFECT PATTERNS (DRAFTS ONLY)

**Duration:** 2 sessions | **Tasks:** 20 | **Model:** 12 Sonnet, 1 Haiku, 4 Opus

### 6 Effect Types (Draft, Integration Deferred to Phase 7)
1. Transient adverse effects
2. Therapeutic lag
3. Herxheimer reactions
4. Energy-before-mood paradox ⚠️ SAFETY CRITICAL
5. Dose-dependent benefit curves
6. Withdrawal effects

### Task List

**Brainstorming (R2):**
- [ ] 6.0a Creative brainstorming: Medication effects (≥3 patterns, ≥3 treatments, ≥3 research Qs) | hypothesis-generator
- [ ] 6.0b Patient case cross-reference for undocumented patterns | treatment-analyst

**Literature:**
- [ ] 6.1 Literature: Medication sensitivity | literature-integrator
- [ ] 6.2 Literature: Herxheimer | literature-integrator
- [ ] 6.3 Literature: Pediatric PK | literature-integrator
- [ ] 6.4 Literature: Energy-mood safety | literature-integrator

**Content Synthesis:**
- [ ] 6.5 Draft: Transient AEs | sonnet-general
- [ ] 6.6 Draft: Therapeutic lag | sonnet-general
- [ ] 6.7 Draft: Dose curves | sonnet-general
- [ ] 6.8 Draft: Withdrawal | sonnet-general
- [ ] 6.9 Draft: Herxheimer ⚠️ | medical-advisor
- [ ] 6.10 Draft: Energy-mood ⚠️ | medical-advisor

**Pediatric Adaptation:**
- [ ] 6.11 Pediatric: Severe | sonnet-general
- [ ] 6.12 Pediatric: Mild/moderate | sonnet-general
- [ ] 6.13 Pediatric: PK table | haiku

**Quality (R3 — iterative):**
- [ ] 6.14 **ITERATIVE** Safety review — repeat until clean ⚠️ CRITICAL | medical-advisor
- [ ] 6.15 Build verification | test-runner
- [ ] 6.16 **ITERATIVE** Content review — repeat until clean | content-reviewer

⚠️ **SKIP integration** — Deferred to Phase 7 when ch14a-d are reorganized

---

# PHASE 7: PART 3 SYSTEM RESTRUCTURING

**Duration:** 6-8 sessions | **Tasks:** 65 | **Model:** 64 Sonnet, 15 Haiku, 12 Opus

### New Architecture
**Systems:** Ch 15-21 (Energy, Immune, Nervous, Endocrine, CV, GI, Anti-Inflammatory)
**Comprehensive:** Ch 22-25 (Supplements, Lifestyle, Integrative, Emerging)
**Severity:** Ch 26-28 (Severe, Mild/Moderate, Pediatric)

### 10 Sub-Phases

**7.1 Audit (4 tasks):**
- [ ] 7.1-7.4 Inventory, extraction map, cross-refs, severity analysis

**7.2 Architecture (3 tasks):**
- [ ] 7.5-7.7 Numbering, templates, labels

**7.3 File creation (3 tasks):**
- [ ] 7.8-7.10 New chapters, ms.tex, compile

**7.4 Content extraction (11 tasks):**
- [ ] 7.11-7.21 All system extractions

**7.5 Severity chapters (3 tasks):**
- [ ] 7.22-7.24 Refactor ch14a/b, merge ch14c+d

**7.6 Cross-references (5 tasks):**
- [ ] 7.25-7.29 Part 2↔3, inter-system, verify

**7.7 Literature (8 tasks):**
- [ ] 7.30-7.38 Searches and certainty assessments

**7.8 Gap filling with brainstorming (R2):**
- [ ] 7.38a Creative brainstorming per system chapter (≥2 hypotheses, ≥2 treatments, ≥2 research Qs per chapter) | hypothesis-generator
- [ ] 7.38b Cross-system interaction brainstorming (synergies and conflicts) | scientific-insight-generator
- [ ] 7.39-7.46 Identify and write missing content (incorporating brainstorming)

**7.9 QA (ITERATIVE — R3, 8 tasks):**
- [ ] 7.47 **ITERATIVE** Syntax check — repeat until clean | syntax-fixer
- [ ] 7.48 **ITERATIVE** Formatting check — repeat until clean | formatting-fixer
- [ ] 7.49 **ITERATIVE** Content review — repeat until clean | content-reviewer
- [ ] 7.50 **ITERATIVE** Scientific rigor audit — repeat until clean | scientific-rigor-auditor
- [ ] 7.51 **ITERATIVE** Logic audit — repeat until clean | logic-auditor
- [ ] 7.52 **ITERATIVE** Style naturalization — repeat until clean | style-naturalizer
- [ ] 7.53 **ITERATIVE** Link check — repeat until clean | link-checker
- [ ] 7.54 Build verification | test-runner

**7.10 Documentation (5 tasks):**
- [ ] 7.55-7.59 Intro, index, guide, docs, migration

**7.10a Gap resolution (1 task):**
- [ ] 7.60 Verify Phase 0.5 gap inventory fully resolved | content-reviewer

---

# PHASE 8: FINAL QA & COMMIT (ITERATIVE)

**Duration:** 1-2 sessions | **Tasks:** 9 | **Model:** 4 Sonnet, 4 Haiku, 2 Opus

### Task List
- [ ] 8.1 Build verification | test-runner
- [ ] 8.2 **ITERATIVE** Cross-reference validation — repeat until clean | link-checker
- [ ] 8.3 **ITERATIVE** Scientific rigor audit (FULL, not sample) — repeat until clean | scientific-rigor-auditor
- [ ] 8.4 **ITERATIVE** Logic audit (FULL, not sample) — repeat until clean | logic-auditor
- [ ] 8.5 **ITERATIVE** Style consistency — repeat until clean | style-naturalizer
- [ ] 8.6 Medical terminology | dictionary-manager
- [ ] 8.7 **R1 final verification:** Zero placeholders remaining | content-reviewer
- [ ] 8.8 Comprehensive commit | commit-writer
- [ ] 8.9 Final build + PDF | test-runner

**Note:** Phase 8 audits cover ALL new content (no sampling). This is the comprehensive final pass.

---

## EXECUTION SUMMARY

**Total Project Scope:**
- 9 phases (0.5 through 8)
- ~222 individual tasks
- 22-28 sessions (estimated)
- ~227 agent-hours of work
- Model distribution: ~74% Sonnet, ~10% Opus, ~16% Haiku

**Cross-Cutting Requirements:**
1. **R1 (Placeholders):** Phase 0.5 identifies → phases resolve → Phase 8 verifies zero remaining
2. **R2 (Brainstorming):** Phases 3, 4, 5, 6, 7.8 each brainstorm BEFORE content creation
3. **R3 (Iterative QA):** All QA agents loop until clean — applies in Phases 2-8

**Critical Dependencies:**
1. Phase 0.5 → Phase 1 (gap inventory feeds extraction)
2. Phase 1 → Phase 2 (required)
3. Phase 2 → Phases 3-6 (bottleneck, then parallel)
4. Phases 3-6 → Phase 7 (converge)
5. Phase 7 → Phase 8 (sequential)

**Deliverables at Completion:**
- Zero placeholders remaining (R1)
- Patient case reorganized and autonomous
- All staging content integrated
- Ch. 15 complete (symptom mechanisms)
- 5 biomarker research streams complete
- 10 new hypotheses + 4 research proposals (plus brainstorming discoveries)
- 6 medication effect patterns documented
- Part 3 restructured (14 new system-aligned chapters)
- Full iterative QA passed and comprehensive commit

---

**Last Updated:** 2026-02-11
**Status:** Ready for Phase 0.5 execution
