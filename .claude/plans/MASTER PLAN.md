# Master Execution Plan: ME/CFS Documentation Project

**Created:** 2026-02-10 | **Updated:** 2026-02-14 | **Status:** Phase 0.5 & 1 complete; Quality review in progress

---

## ⚡ QUICK START

**Current Status:** Phase 0.5 & 1 COMPLETE (commit c35ed86) | Quality review 70% complete | Ready for Phase 2
**Total Tasks:** 222 across 9 phases
**Model Hours:** ~227 (84% Sonnet, 10% Opus, 7% Haiku)
**Critical Path:** 0.5 → 1 → 2 → (3║4║5║6) → 7 → 8
**Estimated Duration:** 22-28 sessions

**What is This Document?**
- PRIMARY ROADMAP for all 9 phases of the ME/CFS documentation project
- Single source of truth for execution order and all architectural decisions
- Contains all 222 tasks with agent assignments and checkboxes for tracking
- See individual phase files in `.claude/plans/` for detailed implementation guides

---

## Executive Summary

This master plan consolidates 11 separate planning documents into an optimized 9-phase execution sequence. **8 key optimizations** vs. the originally proposed order significantly improve efficiency and reduce rework.

### Critical Optimizations

1. **Phase 0.5 (NEW): Placeholder Audit** — Identify all incomplete chapters BEFORE any new work begins
2. **Phase 2 (NEW): Content-Staging Integration** — 10 `.tex` files + 7 integration guides already exist but aren't integrated
3. **Severe-patients plan moves to Phase 4** — After staging integration to prevent conflicts
4. **Phases 3-6 run in parallel** — Research gaps, biomarkers, Marie additions, medication drafts are independent
5. **Part 3 restructuring stays last** — Correct in original proposal
6. **Medication effects drafted only** — Full integration deferred to Part 3 restructure (prevents editing ch14a-d twice)
7. **Creative brainstorming per topic** — Every new content area includes systematic discovery of phenomena, treatments, hypotheses, and research questions BEFORE writing
8. **Iterative quality assurance** — All QA tasks run in loops until the reviewing agent confirms "no issues found"

### 9-Phase Structure

| Phase | Name | Key Deliverables | Depends On | Sessions |
|-------|------|------------------|------------|----------|
| 0.5 | Placeholder Audit | Gap inventory, priority map | Nothing | 0.5-1 |
| 1 | Architecture & Patient Extraction | Patient files consolidated | 0.5 | 1-2 |
| 2 | Content-Staging Integration | 10 existing .tex files integrated | 1 | 2-3 |
| 3 | Research Gaps (Ch. 15) | Symptom mechanisms chapter | 2 | 3-4 |
| 4 | Severe Patients & Biomarkers | 5 research streams | 2 | 2-3 |
| 5 | Marie-Inspired Additions | 10 new hypotheses/proposals | 2 | 3-4 |
| 6 | Medication Effects | Drafted protocols | 2 | 2 |
| 7 | Part 3 System Restructuring | 14 system-organized chapters | 2-6 | 6-8 |
| 8 | Final QA & Commit | Build verification, commit | 7 | 1-2 |

### Critical Path

**Phase 0.5 → 1 → 2 → (3 ║ 4 ║ 5 ║ 6) → 7 → 8**

Phases 3-6 can run in parallel once Phase 2 completes.

### Cross-Cutting Requirements

These three principles apply to ALL content-creating and quality-assurance phases:

#### R1: Complete Chapters with Placeholders
Every chapter with research gaps, TODO markers, or placeholder sections must be identified (Phase 0.5) and fully developed before the project is complete. No placeholders survive to final commit.

#### R2: Creative Brainstorming Per Topic
For each new topic added (Phases 3-6, 7.8), systematically brainstorm BEFORE writing to discover:
- New biological phenomena not yet documented
- New treatments/medications/supplements relevant to the mechanism
- New hypotheses with testable predictions
- Open research questions for future investigation

**Minimum deliverables per brainstorming session:** 3 hypotheses, 3 treatment ideas, 3 research questions (adjust per topic scope).

**Agents:** hypothesis-generator, scientific-insight-generator, literature-integrator

#### R3: Iterative Quality Checking
All quality assurance tasks run as iterative loops, not single passes:
```
REPEAT:
  1. Agent reviews content
  2. If issues found → Fix all issues
  3. Re-submit to same agent for re-review
UNTIL: Agent confirms "No issues found" or equivalent
EXIT CRITERIA: Agent returns clean report with zero actionable findings
```

This applies to: scientific-rigor-auditor, logic-auditor, style-naturalizer, content-reviewer, link-checker, formatting-fixer, syntax-fixer

---

## 🎯 Current Session Status (2026-02-16)

### ✅ Completed This Session

**Phase 0.5: Placeholder Audit - COMPLETE**
- Scanned all .tex files for placeholder markers (3 genuine TBD markers found)
- Audited 625 stub sections (44 empty, 9 minimal, 232 brief, 340 short)
- Cross-referenced Part 2→3 (9 mechanisms without treatment coverage)
- Cross-referenced Part 3→2 (10 treatments without pathophysiology grounding)
- Generated comprehensive gap inventory: 656 gaps across CRITICAL/HIGH/MEDIUM/LOW priorities
- **Deliverables:** `.claude/plans/PLACEHOLDER_AUDIT.md`, `STUB_AUDIT_REPORT.md`

**Phase 1: Patient File Reorganization - COMPLETE**
- Consolidated patient files from `contents/appendices/appendix-i-*` → `patients/yannick/`
- Updated `ms.tex` to include all patient case files correctly
- Build verified successful
- **Commit:** c35ed86

**Quality Review (Opus-tier) - 100% COMPLETE ✓**
- **Scientific rigor audit:** 47 violations found (missing citations, uncited claims)
- **Logic audit:** 15 issues found (3 CRITICAL, 3 HIGH, 9 MEDIUM/LOW)
- **CRITICAL logic fixes (3/3 DONE):**
  - MSLT value corrected: 9 min (was "<2 min")
  - Burnout date standardized: "Late 2017" (was "January 2018")
  - Cortisol labeled: "Low (below reference range)" (was "low-normal")
- **HIGH logic fixes (3/3 DONE):**
  - Riboflavin removed from fat-soluble vitamin lists
  - Quantitative claims (60-70%) marked as clinical estimates
  - IH classification moved to "shared cause" with causal uncertainty
- **CRITICAL citations added (8/8 DONE ✓):**
  - NIH 2024 study (Walitt et al.): `\cite{walitt2024deep}` × 6 locations
  - Van Campen cerebral blood flow: `\cite{vanCampen2020severity}`
- **HIGH priority citations added (6/6 DONE ✓):**
  - Vink2015: Lactate clearance 6-fold delay `\cite{Vink2015}`
  - Polo2019LDN: 73.9% response in 218 patients `\cite{Polo2019LDN}`
  - Abtahi2017: Melatonin vs sertraline tinnitus RCT `\cite{Abtahi2017}`
  - Abbasi2025CoQ10: CoQ10 tinnitus RCT (n=50) `\cite{Abbasi2025CoQ10}`
  - Cevette2011: Mayo Clinic Mg 532mg/day `\cite{Cevette2011}`
  - Novak2022: MCAS cerebral blood flow `\cite{Novak2022}` (already existed)
- **Commit:** 8394855
- **Mechanism & clinical citations added (17/17 DONE ✓):**
  - WongGee2023: Cochlear hair cells energy/mechanotransduction
  - Reuter2011: Carnitine shuttle dysfunction
  - Fluge2016: Pyruvate dehydrogenase dysfunction
  - Nelson2019: TBI/autonomic dysfunction
  - Ghali2019: Elevated lactate baseline
  - Schoenen1998: Riboflavin 400mg migraine RCT
  - vanDixhoorn2025: Dysfunctional breathing 71%
  - Shoenfeld1993: Tinnitus B12 deficiency 42-47%
  - Petridou2023: Alpha-lipoic acid tinnitus
  - Roberts2004: HPA axis cortisol awakening response
- **Commit:** e1d2473

### 🎉 Quality Review Complete

**All 47 violations from scientific rigor audit resolved:**
- 8 CRITICAL citations ✓
- 6 HIGH priority citations ✓
- 17 mechanism & clinical citations ✓
- 3 CRITICAL logic fixes ✓
- 3 HIGH logic fixes ✓

**Patient files now fully citation-complete and ready for Phase 2.**

**Workflow for continuation:**
1. Search PubMed/online for each missing study
2. Create BibTeX entries in `references.bib`
3. Add annotated entries to `contents/appendices/appendix-h-annotated-bibliography.tex`
4. Insert `\cite{}` commands in source files
5. Run `nix build` to verify
6. Commit: "feat(citations): Add missing citations from quality review"

**MEDIUM/LOW logic issues (6 remaining - optional):**
- Post hoc reasoning, circular reasoning, missing alternatives (see logic audit)
- Can be addressed if time permits or deferred to Phase 8 final QA

**Files modified this session:**
- `patients/yannick/case-data/case-analysis.tex`
- `patients/yannick/case-data/clinical-findings.tex`
- `patients/yannick/case-data/personal-symptoms.tex`
- `patients/yannick/medical-management.tex`
- `patients/yannick/case-data/recommendations.tex`
- `ms.tex`

**Key principle applied:** "Don't invent, don't lie, be factual" - only added citations that exist in bibliography

---

## Dependency Graph

```
Phase 0.5 (Placeholder Audit)
    ↓
Phase 1 (Patient Extraction)
    ↓
Phase 2 (Staging Integration) ← CRITICAL BOTTLENECK
    ├→ Phase 3 (Research Gaps / Ch 15)
    ├→ Phase 4 (Severe Patients)
    ├→ Phase 5 (Marie Additions)
    └→ Phase 6 (Medication Drafts)
         ↓↓↓↓
    Phase 7 (Part 3 Restructure) ← ALL converge here
         ↓
    Phase 8 (Final QA — iterative until clean)
```

**Bottleneck:** Phase 2 must complete before 3-6 can start (prevents stale staging content).

**Parallelism:** Phases 3-6 are fully independent and can run simultaneously.

**Quality gates:** Each phase's QA tasks must iterate to clean before the phase is marked complete. Phase 8 is the final iterative gate.

---

## Model Effort Summary

| Model | Total Tasks | Estimated Hours |
|-------|-------------|-----------------|
| Haiku | 35 tasks | ~17 hours |
| Sonnet | 165 tasks | ~165 hours |
| Opus | 22 tasks | ~45 hours |
| **TOTAL** | **~222 tasks** | **~227 hours** |

**Cost optimization:** 84% of effort is Sonnet-tier, appropriate for research/integration. Opus used only for safety-critical (medical-advisor) and final quality audits.

---

## Phase 0.5: Placeholder Audit

**Objective:** Identify ALL chapters with research gaps, TODO markers, placeholders, stub sections, or incomplete content BEFORE any new work begins. Produces a prioritized inventory that feeds into all subsequent phases.

**Rationale:** Without knowing what's incomplete, Phases 3-7 risk duplicating effort or missing gaps. This audit ensures comprehensive coverage and prevents incomplete chapters from surviving to final commit.

### Tasks

- [ ] **0.5.1** Scan all `.tex` files for placeholder markers (TODO, FIXME, XXX, \placeholder, stub, "to be written", "needs research") | **Agent:** Explore (Sonnet)
- [ ] **0.5.2** Audit each chapter for sections that exist in `\section{}` headers but have < 100 words of content | **Agent:** sonnet-general
- [ ] **0.5.3** Cross-reference Part 2 pathophysiology topics against Part 3 treatment chapters — identify mechanisms without corresponding treatment sections | **Agent:** content-reviewer (Sonnet)
- [ ] **0.5.4** Cross-reference Part 3 treatment chapters against Part 2 — identify treatments without pathophysiology grounding | **Agent:** content-reviewer (Sonnet)
- [ ] **0.5.5** Generate prioritized gap inventory with: file path, section, gap type (placeholder/stub/missing cross-ref/no treatment), estimated effort (S/M/L), and which phase should address it | **Agent:** sonnet-general
- [ ] **0.5.6** Assign each gap to a phase (3-7) or flag as "new work needed" | **Agent:** sonnet-general

**Deliverable:** `.claude/plans/PLACEHOLDER_AUDIT.md` — Gap inventory feeding into Phases 1-7

**Verification:**
- [ ] Every `.tex` file scanned
- [ ] Gap inventory covers all chapters
- [ ] Each gap assigned to a phase
- [ ] No unaddressed gaps remain

**Estimated:** 0.5-1 session | **Model Distribution:** 6 Sonnet

---

## Phase 1: Architecture & Patient File Extraction

**Objective:** Consolidate patient case files from fragmented state into autonomous `patients/yannick/` structure.

**Source Plans:** ARCHITECTURE_DECISIONS.md, REORGANIZATION_AND_RESEARCH_PLAN.md

**Input:** Phase 0.5 gap inventory (may reveal additional patient-related content to consolidate)

### Decisions Required

- [ ] **Decision 1.1:** Approve numbered structure (00-07) for `patients/yannick/`?
- [ ] **Decision 1.2:** Ch. 15 placement: Option A (new chapter), B (section in Ch 14), or C (expand Ch 8)? **Recommend: Option A**
- [ ] **Decision 1.3:** Approve `ms.tex` structure update with explanatory comment?
- [ ] **Decision 1.4:** Delete old appendix-i/j files or keep in `deprecated/`? **Recommend: Delete (git preserves)**
- [ ] **Decision 1.5:** Approve README content for `patients/yannick/`?

### Tasks

- [ ] **1.1** Extract content from `appendix-i-personal-symptoms.tex` → `patients/yannick/03-symptom-profile.tex` (consolidate) | **Agent:** chapter-integrator (Sonnet)
- [ ] **1.2** Extract content from `appendix-i-a-medical-management.tex` → `patients/yannick/01-medical-history.tex` | **Agent:** chapter-integrator (Sonnet)
- [ ] **1.3** Extract content from `appendix-i-b-clinical-findings.tex` → `patients/yannick/02-clinical-findings.tex` | **Agent:** chapter-integrator (Sonnet)
- [ ] **1.4** Extract content from `appendix-i-c-case-analysis.tex` → `patients/yannick/04-case-analysis.tex` | **Agent:** chapter-integrator (Sonnet)
- [ ] **1.5** Move `appendix-j-recommendations.tex` → `patients/yannick/05-treatment-plans.tex` | **Agent:** haiku-general
- [ ] **1.6** Move `appendix-j-daily-journal.tex` → `patients/yannick/06-daily-tracking.tex` | **Agent:** haiku-general
- [ ] **1.7** Create `patients/yannick/README.md` with usage notes | **Agent:** sonnet-general
- [ ] **1.8** Update `ms.tex` lines 302-309 with new includes and explanatory comment | **Agent:** sonnet-general
- [ ] **1.9** Address any Phase 0.5 gaps flagged as patient-related | **Agent:** sonnet-general
- [ ] **1.10** Build verification: `nix build` | **Agent:** test-runner (Haiku)
- [ ] **1.11** Commit reorganization | **Agent:** haiku-general

**Verification:**
- [ ] `nix build` succeeds
- [ ] All patient content in `patients/yannick/`
- [ ] No duplicate content
- [ ] Old files removed from `contents/appendices/`
- [ ] Phase 0.5 patient-related gaps resolved

**Estimated:** 1-2 sessions | **Model Distribution:** 3 Haiku, 6 Sonnet

---

## Phase 2: Content-Staging Integration

**Objective:** Integrate 10 existing `.tex` files + 7 integration guides from `.claude/content-staging/` into main document.

**Rationale:** These files are research-complete but not integrated. Doing this BEFORE new research prevents staleness and ensures foundations exist for later work.

**Source:** Audit of `.claude/content-staging/`

### Existing Staging Content

| File | Target Chapter | Type | Priority |
|------|----------------|------|----------|
| `INTEGRATION_GUIDE_acute-onset-protocol.md` | Ch 14a/b | Protocol | HIGH |
| `INTEGRATION_GUIDE_front-loading-strategy.md` | Ch 14a | Protocol | HIGH |
| `INTEGRATION_GUIDE_hrv-guided-pacing.md` | Ch 17 | Protocol | MEDIUM |
| `INTEGRATION_GUIDE_sports-medicine-pacing.md` | Ch 17 | Protocol | MEDIUM |
| `INTEGRATION_GUIDE_astrocyte-energy-gate.md` | Ch 8 | Hypothesis | HIGH |
| `INTEGRATION_GUIDE_cns-energy-triage.md` | Ch 14j | Model | HIGH |
| `insights-wirth-neurotransmitter.md` | Ch 8 | Literature | MEDIUM |
| `scientific-insights-wirth-scheibenbogen-2025.md` | Ch 7, 10 | Literature | HIGH |

### Tasks

- [ ] **2.1** Integrate acute-onset protocol into Ch 14a/14b | **Agent:** chapter-integrator (Sonnet)
- [ ] **2.2** Integrate front-loading strategy into Ch 14a | **Agent:** chapter-integrator (Sonnet)
- [ ] **2.3** Integrate HRV-guided pacing into Ch 17 | **Agent:** chapter-integrator (Sonnet)
- [ ] **2.4** Integrate sports-medicine pacing into Ch 17 | **Agent:** chapter-integrator (Sonnet)
- [ ] **2.5** Integrate astrocyte-energy-gate hypothesis into Ch 8 | **Agent:** chapter-integrator (Sonnet)
- [ ] **2.6** Integrate CNS-energy-triage model into Ch 14j | **Agent:** chapter-integrator (Sonnet)
- [ ] **2.7** Add Wirth neurotransmitter insights to Ch 8 | **Agent:** chapter-integrator (Sonnet)
- [ ] **2.8** Add Wirth-Scheibenbogen 2025 insights to Ch 7, 10 | **Agent:** chapter-integrator (Sonnet)
- [ ] **2.9** Cross-reference all new sections | **Agent:** protocol-linker (Haiku)
- [ ] **2.10** Build verification | **Agent:** test-runner (Haiku)
- [ ] **2.11** **ITERATIVE** Scientific rigor audit — repeat until clean | **Agent:** scientific-rigor-auditor (Opus)
- [ ] **2.12** Commit integration | **Agent:** haiku-general

**Quality Gate (R3):**
- Task 2.11 runs as: `REPEAT: audit → fix → re-audit UNTIL: scientific-rigor-auditor reports 0 issues`
- Phase cannot be marked complete until 2.11 exits clean

**Verification:**
- [ ] All integration guides processed
- [ ] Cross-references validated
- [ ] `nix build` succeeds
- [ ] No uncited claims (confirmed by iterative rigor audit)

**Estimated:** 2-3 sessions | **Model Distribution:** 2 Haiku, 10 Sonnet, 1 Opus

---

## Phase 3: Research Gaps & Ch. 15 Creation

**Objective:** Create Ch. 15 "Symptom-Producing Mechanisms" addressing Category A research gap, plus resolve any Phase 0.5 gaps assigned to this phase. **Also add comprehensive trigger mechanism documentation** to enable easy navigation from trigger → mechanism.

**Source Plans:** REORGANIZATION_AND_RESEARCH_PLAN.md, RESEARCH_GAPS.md, Phase 0.5 gap inventory

**Can run in parallel with Phases 4-6 after Phase 2 completes.**

### Ch. 15 Structure

- 15.1: Conceptual framework (symptom-producing vs. capacity-limiting)
- 15.2: Adenosine accumulation and sleep pressure
- 15.3: Inflammatory cytokine-induced somnolence
- 15.4: Serotonin dysregulation
- 15.5: Melatonin dysfunction
- 15.6: Microglia activation and neuroinflammatory fatigue
- 15.7: Integrated cascade model
- 15.8: Connection to patient phenotypes
- 15.9: Therapeutic implications
- 15.10: Research directions

**Estimated:** 40-50 pages

### Trigger Mechanism Documentation (NEW)

**Rationale:** Patients identified with specific triggers (e.g., EBV in patient case files) need easy navigation to understand HOW that trigger causes ME/CFS. Currently, triggers are listed (Ch 5) and mechanisms exist (Ch 7, Ch 14) but are not systematically linked.

**Deliverables:**
1. **Ch 5 addition:** New subsection "Trigger Mechanisms Overview" (~5 pages)
   - Brief explanation of each major trigger's mechanism
   - Forward references to detailed Ch 7 sections
   - Patient-facing, accessible language
2. **Ch 7 addition:** New section "Post-Infectious Pathogenesis: From Acute Trigger to Chronic Disease" (~10-15 pages)
   - Systematic treatment of each trigger:
     - EBV → molecular mimicry, B cell infection, autoantibody generation
     - COVID-19 → spike protein persistence, endothelial damage, microclotting
     - Influenza → cytokine storm, immune exhaustion
     - Enteroviruses → persistent infection, tissue reservoirs
     - HHV-6 → neurotropism, mitochondrial effects
     - Q fever, Giardia → immune dysregulation, barrier dysfunction
   - Cross-trigger comparison table
   - Unified pathogenesis framework: Trigger → Immune response → Vicious cycles → Chronicity
   - Explicit cross-references to existing Ch 7 content (no duplication)

**Existing content to reference (NOT duplicate):**
- Ch 7, Section~\ref{sec:viral}: Viral reactivation details
- Ch 7, Section~\ref{sec:autoimmunity}: Molecular mimicry, epitope spreading
- Ch 7, Section~\ref{sec:herpesviruses}: EBV, HHV-6, CMV specifics
- Ch 14g: EBV-GPCR molecular mimicry hypothesis
- Ch 14c: Multi-lock integration model

**Navigation principle:** "If patient X has trigger Y, reader should find trigger Y in Ch 5 index → read brief mechanism → follow reference to Ch 7 detailed pathogenesis → see cross-references to treatment (Part 3)"

### Tasks

**Brainstorming (R2) — BEFORE any writing:**
- [ ] **3.0a** Creative brainstorming: Symptom-producing mechanisms — discover additional biological phenomena, novel treatment targets, new hypotheses, and open research questions beyond the planned 10 sections | **Agent:** hypothesis-generator (Sonnet)
  - **Deliverables:** ≥5 hypotheses, ≥5 treatment ideas, ≥5 research questions
- [ ] **3.0b** Literature discovery scan for mechanisms NOT in the planned structure — identify any major symptom-producing pathways missing from sections 15.1-15.10 | **Agent:** literature-integrator (Sonnet)
- [ ] **3.0c** Review brainstorming output and decide: add new sections, expand existing sections, or note as future work | **Agent:** sonnet-general

**Skeleton & Literature:**
- [ ] **3.1** Create `ch15-symptom-producing-mechanisms.tex` skeleton (incorporating brainstorming findings) | **Agent:** haiku-general
- [ ] **3.2** Literature search: Adenosine and sleep pressure | **Agent:** literature-integrator (Sonnet)
- [ ] **3.3** Literature search: Cytokine-induced somnolence | **Agent:** literature-integrator (Sonnet)
- [ ] **3.4** Literature search: Serotonin-fatigue linkage | **Agent:** literature-integrator (Sonnet)
- [ ] **3.5** Literature search: Melatonin dysfunction mechanisms | **Agent:** literature-integrator (Sonnet)
- [ ] **3.6** Literature search: Microglia and neuroinflammation | **Agent:** literature-integrator (Sonnet)
- [ ] **3.6b** Literature search: Any new mechanisms identified in brainstorming (3.0a-c) | **Agent:** literature-integrator (Sonnet)

**Trigger Mechanism Documentation (NEW — added 2026-02-16):**
- [ ] **3.6c** Audit existing trigger mechanism content in Ch 5, Ch 7, Ch 14 — map what exists vs. what's missing | **Agent:** content-reviewer (Sonnet)
- [ ] **3.6d** Literature search: Trigger-specific mechanisms (EBV pathogenesis, COVID spike persistence, etc.) | **Agent:** literature-integrator (Sonnet)
- [ ] **3.6e** Write Ch 5 addition: "Trigger Mechanisms Overview" (~5 pages, patient-facing) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.6f** Write Ch 7 addition: "Post-Infectious Pathogenesis: From Acute Trigger to Chronic Disease" (~10-15 pages) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.6g** Create cross-trigger comparison table | **Agent:** sonnet-general
- [ ] **3.6h** Add cross-references from Ch 5 → Ch 7 → Ch 14 → Part 3 | **Agent:** protocol-linker (Haiku)
- [ ] **3.6i** Verify no content duplication (references only) | **Agent:** content-reviewer (Sonnet)

**Content Writing (Ch 15):**
- [ ] **3.7** Write section 15.1 (framework) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.8** Write section 15.2 (adenosine) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.9** Write section 15.3 (cytokines) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.10** Write section 15.4 (serotonin) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.11** Write section 15.5 (melatonin) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.12** Write section 15.6 (microglia) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.13** Write section 15.7 (integrated cascade) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.14** Write section 15.8 (phenotype connections) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.15** Write section 15.9 (therapeutic implications) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.16** Write section 15.10 (research directions) | **Agent:** scientific-insight-generator (Sonnet)
- [ ] **3.16b** Write any additional sections from brainstorming | **Agent:** scientific-insight-generator (Sonnet)

**Cross-references & Quality:**
- [ ] **3.17** Add forward/backward cross-references | **Agent:** protocol-linker (Haiku)
- [ ] **3.18** **ITERATIVE** Certainty classification audit — repeat until clean | **Agent:** scientific-rigor-auditor (Sonnet)
- [ ] **3.19** Build verification | **Agent:** test-runner (Haiku)
- [ ] **3.20** **ITERATIVE** Style naturalization — repeat until clean | **Agent:** style-naturalizer (Sonnet)
- [ ] **3.21** **ITERATIVE** Final quality review — repeat until clean | **Agent:** opus-general (Opus)
- [ ] **3.22** Commit Ch. 15 | **Agent:** haiku-general

**Quality Gate (R3):**
- Tasks 3.18, 3.20, 3.21 each run as iterative loops
- Format: `REPEAT: review → fix → re-review UNTIL: agent confirms 0 issues`
- Phase cannot be marked complete until ALL three exit clean

**Verification:**
- [ ] All 10+ sections complete (including any brainstorming additions)
- [ ] 40-50 pages total
- [ ] All claims cited
- [ ] Cross-references valid
- [ ] `nix build` succeeds
- [ ] Rigor audit clean (0 issues on final pass)
- [ ] Style audit clean (0 issues on final pass)

**Estimated:** 3-4 sessions | **Model Distribution:** 2 Haiku, 22 Sonnet, 1 Opus

---

## Phase 4: Severe Patients & Biomarker Research

**Objective:** Extend wheat-exercise intolerance research to severe patients, develop biomarker-driven protocols.

**Source Plan:** severe-patients-and-biomarker-research-plan.md

**Can run in parallel with Phases 3, 5, 6 after Phase 2 completes.**

### 5 Research Streams

1. Severe/bedbound patient mechanism translation
2. Biomarker-driven treatment response prediction
3. Supplement & medication protocols for barrier repair
4. Pediatric ME/CFS wheat-exercise intolerance
5. Mast cell activation cascade integration

### Tasks

**Brainstorming (R2) — BEFORE content creation:**
- [ ] **4.0a** Creative brainstorming per stream: For each of the 5 research streams, discover new biological phenomena, treatment targets, hypotheses, and research questions | **Agent:** hypothesis-generator (Sonnet)
  - **Deliverables:** ≥3 hypotheses, ≥3 treatment ideas, ≥3 research questions per stream (15 total minimum)
- [ ] **4.0b** Cross-stream connection analysis: Identify interactions between the 5 streams (e.g., mast cell activation affecting biomarkers in severe patients) | **Agent:** scientific-insight-generator (Sonnet)

**Literature & Content (Abbreviated — see detailed plan in phase-4-severe-biomarkers.md):**
- [ ] **4.1-4.5** Literature searches for 5 streams (incorporating brainstorming discoveries) | **Agent:** literature-integrator (Sonnet) × 5
- [ ] **4.6-4.10** Content synthesis for 5 streams | **Agent:** scientific-insight-generator (Sonnet) × 5
- [ ] **4.11** Integrate into Ch 11, 17 | **Agent:** chapter-integrator (Sonnet)
- [ ] **4.12** Cross-reference and verify | **Agent:** protocol-linker + test-runner (Haiku)

**Quality (R3 — iterative):**
- [ ] **4.13** **ITERATIVE** Scientific rigor audit — repeat until clean | **Agent:** scientific-rigor-auditor (Sonnet)
- [ ] **4.14** **ITERATIVE** Style naturalization — repeat until clean | **Agent:** style-naturalizer (Sonnet)
- [ ] **4.15** Commit | **Agent:** haiku-general

**Quality Gate (R3):**
- Tasks 4.13, 4.14 each iterate until agent confirms 0 issues
- Phase cannot be marked complete until both exit clean

**Verification:**
- [ ] All 5 streams researched (plus brainstorming additions)
- [ ] New sections in Ch 11 (gut), Ch 17 (lifestyle)
- [ ] Biomarker decision tree created
- [ ] `nix build` succeeds
- [ ] Rigor audit clean (0 issues on final pass)

**Estimated:** 2-3 sessions | **Model Distribution:** 1 Haiku, 17 Sonnet

---

## Phase 5: Marie-Inspired Paper Additions

**Objective:** Add 10 new hypotheses/research proposals inspired by patient Marie's case.

**Source Plan:** marie-inspired-paper-additions.md

**Can run in parallel with Phases 3, 4, 6 after Phase 2 completes.**

### 10 Content Areas

1. Iron-mediated CNS vulnerability (Ch 14 hypothesis)
2. Rest-phase deterioration (Ch 13 analysis)
3. Administrative harm as vicious cycle (Ch 14i extension)
4. Cold allodynia as TRPM3 biomarker (Ch 14h extension)
5. Cumulative iron depletion as sex-specific risk (Ch 9 extension)
6. Headache as CNS energy crisis sentinel (Ch 8 or 14j)
7-10. Research proposals for Ch 25b

### Tasks

**Brainstorming (R2) — BEFORE hypothesis development:**
- [ ] **5.0a** Creative brainstorming for each of the 6 hypotheses: Discover additional mechanisms, alternative explanations, related phenomena, and testable predictions beyond the planned content | **Agent:** hypothesis-generator (Sonnet)
  - **Deliverables:** ≥2 additional hypotheses per topic, ≥3 novel treatment implications, ≥4 research questions
- [ ] **5.0b** Creative brainstorming for the 4 research proposals: Identify novel methodological approaches, additional outcome measures, potential confounders, and cross-study connections | **Agent:** scientific-insight-generator (Sonnet)
  - **Deliverables:** ≥2 methodological innovations, ≥3 cross-references to existing literature

**Phase 0: Preparation** (8 tasks)
- [ ] **5.1-5.8** Literature searches + audits (incorporating brainstorming findings) | **Agent:** literature-integrator + Explore (Sonnet) × 8

**Phase 1: Hypothesis Development** (6 tasks)
- [ ] **5.9-5.14** Write hypotheses and analysis | **Agent:** hypothesis-generator + scientific-insight-generator (Sonnet) × 6

**Phase 2: Research Proposals** (4 tasks)
- [ ] **5.15-5.18** Write proposals for Ch 25b | **Agent:** sonnet-general × 4

**Phase 3: Integration** (10 tasks)
- [ ] **5.19-5.28** Integrate into target chapters | **Agent:** chapter-integrator (Sonnet) × 9 + haiku-general × 1

**Phase 4-6: Cross-ref, QA, Commit** (iterative)
- [ ] **5.29** Dictionary update | **Agent:** dictionary-manager (Haiku)
- [ ] **5.30** Cross-reference linking | **Agent:** protocol-linker (Haiku)
- [ ] **5.31** **ITERATIVE** Scientific rigor audit — repeat until clean | **Agent:** scientific-rigor-auditor (Opus)
- [ ] **5.32** **ITERATIVE** Style naturalization — repeat until clean | **Agent:** style-naturalizer (Sonnet)
- [ ] **5.33** Build verification | **Agent:** test-runner (Haiku)
- [ ] **5.34** **ITERATIVE** Logic audit — repeat until clean | **Agent:** logic-auditor (Sonnet)
- [ ] **5.35** Commit | **Agent:** haiku-general

**Quality Gate (R3):**
- Tasks 5.31, 5.32, 5.34 each iterate until agent confirms 0 issues
- Phase cannot be marked complete until ALL exit clean

**Verification:**
- [ ] All 10 content areas added (plus brainstorming additions)
- [ ] 4 research proposals in Ch 25b
- [ ] All claims cited
- [ ] `nix build` succeeds
- [ ] All iterative audits exit clean

**Estimated:** 3-4 sessions | **Model Distribution:** 4 Haiku, 28 Sonnet, 1 Opus

---

## Phase 6: Medication Effect Patterns (Drafts Only)

**Objective:** Draft medication effect documentation but DO NOT integrate into ch14a-d yet (will happen during Part 3 restructure).

**Source Plan:** medication-effect-patterns.md

**Optimization:** Drafting now prevents rework, but integration deferred to Phase 7 when ch14a-d are reorganized.

**Can run in parallel with Phases 3-5 after Phase 2 completes.**

### 6 Effect Types

1. Transient adverse effects
2. Therapeutic lag
3. Herxheimer reactions
4. Energy-before-mood paradox (critical safety)
5. Dose-dependent benefit curves
6. Withdrawal effects

### Tasks

**Brainstorming (R2) — BEFORE drafting:**
- [ ] **6.0a** Creative brainstorming: Medication effect phenomena — discover additional effect patterns, drug interactions, paradoxical responses, and population-specific variations not covered by the 6 planned types | **Agent:** hypothesis-generator (Sonnet)
  - **Deliverables:** ≥3 additional effect patterns or sub-patterns, ≥3 treatment implications, ≥3 research questions
- [ ] **6.0b** Patient case cross-reference: Review patient case data for medication responses that may reveal undocumented patterns | **Agent:** treatment-analyst (Sonnet)

**Phase 1: Literature** (4 tasks)
- [ ] **6.1-6.4** Literature searches (incorporating brainstorming discoveries) | **Agent:** literature-integrator (Sonnet) × 4

**Phase 2: Content Synthesis** (6 tasks)
- [ ] **6.5-6.10** Draft effect type frameworks | **Agent:** sonnet-general × 4 + medical-advisor (Opus) × 2

**Phase 3: Pediatric Adaptation** (3 tasks)
- [ ] **6.11-6.13** Pediatric versions | **Agent:** sonnet-general × 2 + haiku-general × 1

**Phase 4: Safety Validation** (iterative)
- [ ] **6.14** **ITERATIVE** Medical safety review — repeat until clean | **Agent:** medical-advisor (Opus)
- [ ] **6.15** Build verification | **Agent:** test-runner (Haiku)
- [ ] **6.16** **ITERATIVE** Content review — repeat until clean | **Agent:** content-reviewer (Sonnet)

**SKIP Phase 5 (integration into ch14a-d)** — Deferred to Phase 7 Part 3 restructure

**SKIP Phase 6 (final QA)** — Deferred to Phase 8

**Quality Gate (R3):**
- Tasks 6.14, 6.16 each iterate until agent confirms 0 issues
- Safety review (6.14) is CRITICAL — must be completely clean before proceeding

**Verification:**
- [ ] All 6 effect types drafted in `.claude/content-staging/` (plus brainstorming additions)
- [ ] Safety reviews complete and clean (iterative)
- [ ] Pediatric adaptations ready
- [ ] NO integration yet (waiting for Phase 7)

**Estimated:** 2 sessions | **Model Distribution:** 1 Haiku, 12 Sonnet, 4 Opus

---

## Phase 7: Part 3 System Restructuring

**Objective:** Transform Part 3 from severity-based to system-by-system structure aligned with Part 2.

**Source Plan:** part3-system-restructuring.md

**Dependencies:** Requires ALL of Phases 2-6 complete (content must exist before restructure).

### New Part 3 Chapter Structure

**System-Targeted Interventions:**
- Ch15: Energy System Interventions
- Ch16: Immune System Interventions
- Ch17: Nervous System Interventions
- Ch18: Endocrine System Interventions
- Ch19: Cardiovascular & Autonomic Interventions
- Ch20: Gastrointestinal Interventions
- Ch21: Anti-Inflammatory Treatment Protocols

**Comprehensive Interventions:**
- Ch22: Supplements and Nutraceuticals (reorganized)
- Ch23: Lifestyle and Behavioral Interventions
- Ch24: Integrative and Personalized Treatment
- Ch25: Experimental and Emerging Therapies

**Severity & Population-Specific:**
- Ch26: Urgent Action Plan for Severe Cases (refactored ch14a)
- Ch27: Action Plans for Mild-Moderate Cases (refactored ch14b)
- Ch28: Pediatric Treatment Considerations (merge ch14c + ch14d)

### 10 Sub-Phases

**Phase 7.1: Audit** (READ-ONLY)
- [ ] **7.1-7.4** Content inventory, extraction map, cross-ref audit, severity analysis | **Agent:** Explore + sonnet × 4

**Phase 7.2: Architecture Finalization**
- [ ] **7.5-7.7** Numbering decision, templates, label scheme | **Agent:** sonnet × 3

**Phase 7.3: File Creation**
- [ ] **7.8-7.10** Create new chapter files, update ms.tex, initial compilation | **Agent:** haiku × 3

**Phase 7.4: Content Extraction** (BULK WORK)
- [ ] **7.11-7.21** Extract system content from ch14a/b/15/16/17 into ch15-21 | **Agent:** chapter-integrator (Sonnet) × 11

**Phase 7.5: Severity Chapter Handling**
- [ ] **7.22-7.24** Refactor ch14a → ch26, ch14b → ch27, merge ch14c+d → ch28 | **Agent:** chapter-integrator (Sonnet) × 3

**Phase 7.6: Cross-Reference Integration**
- [ ] **7.25-7.29** Add Part 2 ↔ Part 3 links, inter-system links, verify | **Agent:** protocol-linker (Haiku) × 3 + sonnet × 2

**Phase 7.7: Literature Integration**
- [ ] **7.30-7.38** Literature searches for each system, certainty assessments | **Agent:** literature-integrator (Sonnet) × 7 + scientific-rigor-auditor (Sonnet) × 1

**Phase 7.8: Content Creation (Gap Filling)**

**Brainstorming (R2) — BEFORE gap filling:**
- [ ] **7.38a** Creative brainstorming for each new system chapter: Discover additional interventions, novel treatment combinations, emerging therapies, and research directions specific to each body system | **Agent:** hypothesis-generator (Sonnet)
  - **Deliverables:** ≥2 hypotheses, ≥2 treatment ideas, ≥2 research questions per new chapter
- [ ] **7.38b** Cross-system interaction brainstorming: Identify treatment synergies and conflicts across body systems (e.g., immune interventions affecting nervous system) | **Agent:** scientific-insight-generator (Sonnet)

- [ ] **7.39-7.46** Identify gaps, write missing content (incorporating brainstorming) | **Agent:** content-reviewer (Sonnet) × 1 + scientific-insight-generator (Opus) × 6 + sonnet × 1

**Phase 7.9: Quality Assurance (ITERATIVE — R3)**
- [ ] **7.47** **ITERATIVE** Syntax check — repeat until clean | **Agent:** syntax-fixer (Haiku)
- [ ] **7.48** **ITERATIVE** Formatting check — repeat until clean | **Agent:** formatting-fixer (Haiku)
- [ ] **7.49** **ITERATIVE** Content review — repeat until clean | **Agent:** content-reviewer (Sonnet)
- [ ] **7.50** **ITERATIVE** Scientific rigor audit — repeat until clean | **Agent:** scientific-rigor-auditor (Opus)
- [ ] **7.51** **ITERATIVE** Logic audit — repeat until clean | **Agent:** logic-auditor (Opus)
- [ ] **7.52** **ITERATIVE** Style naturalization — repeat until clean | **Agent:** style-naturalizer (Sonnet)
- [ ] **7.53** **ITERATIVE** Link check — repeat until clean | **Agent:** link-checker (Haiku)
- [ ] **7.54** Build verification | **Agent:** test-runner (Haiku)

**Quality Gate (R3):**
- ALL tasks 7.47-7.53 run as iterative loops
- Format: `REPEAT: review → fix → re-review UNTIL: agent confirms 0 issues`
- Phase 7.9 cannot complete until ALL seven agents report clean
- This is the most critical quality gate before final QA

**Phase 7.10: Documentation**
- [ ] **7.55-7.59** Update Part 3 intro, create index, update reading guide, update docs, migration guide | **Agent:** sonnet × 5

**Phase 7.10a: Resolve Remaining Phase 0.5 Gaps**
- [ ] **7.60** Review Phase 0.5 gap inventory — verify all assigned gaps resolved; address any remaining | **Agent:** content-reviewer (Sonnet)

**Verification:**
- [ ] All 7+ system chapters created
- [ ] Severity guidance preserved
- [ ] Part 2 ↔ Part 3 links work
- [ ] `nix build` succeeds
- [ ] All treatment recommendations have evidence levels
- [ ] ALL Phase 7.9 iterative audits exit clean
- [ ] Phase 0.5 gap inventory fully resolved

**Estimated:** 6-8 sessions | **Model Distribution:** 15 Haiku, 64 Sonnet, 12 Opus

---

## Phase 8: Final QA & Commit

**Objective:** Final iterative quality pass across entire document, create comprehensive commit.

**Rationale:** This phase applies R3 (iterative quality checking) to the ENTIRE document, not just individual phases. Every audit runs until clean.

### Tasks

- [ ] **8.1** Full document build verification | **Agent:** test-runner (Haiku)
- [ ] **8.2** **ITERATIVE** All cross-references validated — repeat until clean | **Agent:** link-checker (Haiku)
- [ ] **8.3** **ITERATIVE** Scientific rigor audit (full new content, not sample) — repeat until clean | **Agent:** scientific-rigor-auditor (Opus)
- [ ] **8.4** **ITERATIVE** Logic audit (full new arguments, not sample) — repeat until clean | **Agent:** logic-auditor (Opus)
- [ ] **8.5** **ITERATIVE** Style consistency check — repeat until clean | **Agent:** style-naturalizer (Sonnet)
- [ ] **8.6** Medical terminology validation | **Agent:** dictionary-manager (Haiku)
- [ ] **8.7** **Phase 0.5 final verification:** Confirm zero remaining placeholders/gaps in entire document | **Agent:** content-reviewer (Sonnet)
- [ ] **8.8** Create comprehensive commit message summarizing all phases | **Agent:** commit-writer (Sonnet)
- [ ] **8.9** Final build and PDF verification | **Agent:** test-runner (Haiku)

**Quality Gate (R3):**
- Tasks 8.2, 8.3, 8.4, 8.5 each iterate until agent confirms 0 issues
- **CRITICAL:** Phase 8 audits cover ALL new content (no sampling). Previous phases audited incrementally; this is the comprehensive final pass.
- Task 8.7 must confirm zero placeholders (R1 final verification)
- Phase 8 is complete ONLY when all iterative audits exit clean AND build succeeds

**Verification:**
- [ ] `nix build` succeeds with no errors or warnings
- [ ] All cross-references resolve (iterative, confirmed clean)
- [ ] No uncited claims (iterative, confirmed clean)
- [ ] No logical issues (iterative, confirmed clean)
- [ ] No style issues (iterative, confirmed clean)
- [ ] Zero placeholders/gaps remaining (R1 confirmed)
- [ ] Comprehensive commit created

**Estimated:** 1-2 sessions | **Model Distribution:** 4 Haiku, 4 Sonnet, 2 Opus

---

## Success Criteria

### Phase 0.5 Complete When:
- [ ] All `.tex` files scanned for gaps
- [ ] Gap inventory generated and prioritized
- [ ] Each gap assigned to a phase

### Phase 1 Complete When:
- [ ] All patient content in `patients/yannick/`
- [ ] `ms.tex` updated
- [ ] Build succeeds

### Phase 2 Complete When:
- [ ] All staging content integrated
- [ ] Cross-references valid
- [ ] Build succeeds
- [ ] **Rigor audit iterates to clean (R3)**

### Phase 3 Complete When:
- [ ] Ch. 15 complete (40-50 pages)
- [ ] All sections written (including brainstorming additions)
- [ ] Build succeeds
- [ ] **Rigor, style, and quality audits all iterate to clean (R3)**

### Phase 4 Complete When:
- [ ] 5 research streams complete (plus brainstorming additions)
- [ ] Integrated into Ch 11, 17
- [ ] Build succeeds
- [ ] **Rigor and style audits iterate to clean (R3)**

### Phase 5 Complete When:
- [ ] 10 content areas added (plus brainstorming additions)
- [ ] 4 research proposals in Ch 25b
- [ ] Build succeeds
- [ ] **Rigor, style, and logic audits all iterate to clean (R3)**

### Phase 6 Complete When:
- [ ] 6 effect types drafted (plus brainstorming additions)
- [ ] Safety reviews complete and clean (iterative)
- [ ] Ready for Phase 7 integration

### Phase 7 Complete When:
- [ ] Part 3 restructured (14 new chapters)
- [ ] Severity guidance preserved
- [ ] All cross-references work
- [ ] Build succeeds
- [ ] **ALL 7 Phase 7.9 iterative audits exit clean (R3)**
- [ ] Phase 0.5 gaps fully resolved

### Phase 8 Complete When:
- [ ] **ALL iterative audits exit clean (R3)**
- [ ] Zero placeholders remaining (R1)
- [ ] Comprehensive commit created
- [ ] Project ready for next phase

---

## Risk Mitigation

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| Content loss during restructure | Medium | High | Git commits after each phase, backup old files as `.old` |
| Context budget exhaustion | High | Medium | Break into 22+ sessions, use continuation prompts |
| Broken cross-references | Medium | Medium | Automated link checking after every phase (iterative) |
| Evidence quality degradation | Low | High | Iterative Opus-tier rigor audits at critical points (R3) |
| LaTeX compilation failure | Low | High | Build verification after every phase |
| Incomplete chapters surviving | Medium | High | Phase 0.5 audit + Phase 8 final verification (R1) |
| Missed research directions | Medium | Medium | Systematic brainstorming before every content phase (R2) |
| QA false-clean (issues missed) | Low | Medium | Iterative loops catch issues single passes miss (R3) |

---

## Next Steps

1. **Review and approve MASTER PLAN.md** (this unified document)
2. **Execute Phase 0.5** (placeholder audit — new first step)
3. **Make architectural decisions** (Ch. 15 placement, Part 3 numbering, etc.)
4. **Begin Phase 1** (patient extraction)
5. **Monitor progress** using individual phase plan checklists

---

## 📊 Progress Tracking Dashboard

**Last Updated:** 2026-02-20 | **Current Phase:** Phase 2 (Content-Staging Integration)

### Phase Completion Status

| Phase | Status | Tasks Completed | Tasks Remaining | % Complete |
|-------|--------|-----------------|------------------|-------------|
| 0.5 | ✅ COMPLETE | 6/6 | 0/6 | 100% |
| 1 | ✅ COMPLETE | 11/11 | 0/11 | 100% |
| 2 | ⏳ IN PROGRESS | 1/12 | 11/12 | 8% |
| 3 | ⏳ NOT STARTED | 0/22 | 22/22 | 0% |
| 4 | ⏳ NOT STARTED | 0/15 | 15/15 | 0% |
| 5 | ⏳ NOT STARTED | 0/35 | 35/35 | 0% |
| 6 | ⏳ NOT STARTED | 0/16 | 16/16 | 0% |
| 7 | ⏳ NOT STARTED | 0/60 | 60/60 | 0% |
| 8 | ⏳ NOT STARTED | 0/9 | 9/9 | 0% |

**Overall Progress:** 23/222 tasks (10%)
**Estimated Remaining:** 20-26 sessions

### Critical Path Progress

```mermaid
gantt
    title ME/CFS Documentation Project - Critical Path
    dateFormat  YYYY-MM-DD
    section Phases
    Phase 0.5 :done, p05, 2026-02-10, 2026-02-14
    Phase 1 :done, p1, after p05, 2026-02-14, 2026-02-16
    Phase 2 :active, p2, after p1, 2026-02-20, 24d
    Phase 3 :p3, after p2, 4d
    Phase 4 :p4, after p2, 3d
    Phase 5 :p5, after p2, 4d
    Phase 6 :p6, after p2, 2d
    Phase 7 :p7, after p3,p4,p5,p6, 8d
    Phase 8 :p8, after p7, 2d
```

### Current Focus: Phase 2 - Content-Staging Integration

**Objective:** Integrate 10 existing `.tex` files + 7 integration guides from `.claude/content-staging/` into main document.

**Priority Order:**
1. **HIGH Priority:** Acute-onset protocol, Front-loading strategy, Astrocyte-energy-gate, CNS-energy-triage
2. **MEDIUM Priority:** HRV-guided pacing, Sports-medicine pacing, Wirth neurotransmitter insights
3. **MEDIUM Priority:** Wirth-Scheibenbogen 2025 insights

**Current Task:** 2.2 - Integrate front-loading strategy into Ch 14a

**Status:** Task 2.1 ✅ COMPLETE (2026-02-20)
- Acute onset protocol integrated into ch14b-action-mild-moderate.tex
- All cross-references verified and working
- Build successful (result/ms.pdf generated)
- 1,100 words added

**Blockers:** None
**Dependencies:** Phase 1 complete ✓

### Upcoming Milestones

- **Phase 2 Complete:** Target 2026-02-24 (4 days)
- **Phase 3 Start:** Target 2026-02-25
- **Parallel Phases 3-6:** Target completion 2026-03-05
- **Phase 7 Start:** Target 2026-03-06
- **Project Complete:** Target 2026-03-15

---

## 🔄 Continuation Protocol

**When to Use:** When context usage exceeds 35% (70k tokens) or when switching between major phases.

### Standard Continuation Prompt Template

```text
Continue ME/CFS Documentation Project - Phase [X]
Current Status: [1-2 sentence summary of progress]
Active Files: [list key files with brief status]
Recent Decisions: [critical choices made since last continuation]
Next Steps: [specific next 3-5 tasks]
Critical Context: [essential information only - NOT full conversation]
```

### Phase-Specific Continuation Examples

**Phase 2 Continuation:**
```text
Continue ME/CFS Documentation Project - Phase 2: Content-Staging Integration
Current Status: Task 2.1 (acute-onset protocol) in progress, 0/12 tasks complete
Active Files: 
  - .claude/content-staging/INTEGRATION_GUIDE_acute-onset-protocol.md (source)
  - contents/part3-treatment/ch14a-urgent-action-severe.tex (target)
  - contents/part3-treatment/ch14b-action-mild-moderate.tex (target)
Recent Decisions: 
  - Using existing section structure in ch14a/b
  - Adding cross-references to ch15 (when created in Phase 3)
  - Preserving original author voice and style
Next Steps:
  1. Complete acute-onset protocol integration (Task 2.1)
  2. Front-loading strategy integration (Task 2.2)
  3. HRV-guided pacing integration (Task 2.3)
  4. Build verification after each integration
Critical Context:
  - Phase 1 complete: patient files reorganized
  - Phase 0.5 gap inventory available for reference
  - All staging content in .claude/content-staging/
  - Build system: nix build → result/ms.pdf
```

**Phase 3 Continuation:**
```text
Continue ME/CFS Documentation Project - Phase 3: Research Gaps & Ch. 15 Creation
Current Status: Brainstorming complete, skeleton created, literature searches in progress
Active Files:
  - contents/part2-pathophysiology/ch15-symptom-producing-mechanisms.tex (new)
  - .claude/plans/MASTER PLAN.md (tracking)
  - Literature/neurological/serotonin-fatigue/ (source materials)
Recent Decisions:
  - Added 2 new sections from brainstorming (15.11: Astrocyte-neuron lactate shuttle, 15.12: TRPM3 channelopathy)
  - Using patient-facing language in trigger mechanism overview
  - Cross-referencing to Ch 7 for detailed pathogenesis
Next Steps:
  1. Complete literature search for serotonin-fatigue linkage
  2. Write section 15.4 (serotonin dysregulation)
  3. Write section 15.11 (lactate shuttle - new from brainstorming)
  4. Begin iterative certainty classification audit
Critical Context:
  - Brainstorming deliverables: 7 hypotheses, 8 treatment ideas, 12 research questions
  - Trigger mechanism documentation added to scope (Ch 5 + Ch 7 additions)
  - All claims must be cited - no speculative content without evidence
```

---

## 📁 File Inventory & Status

### Critical Configuration Files

| File | Purpose | Last Modified | Status |
|------|---------|---------------|--------|
| `.claude/CLAUDE.md` | Project behavior rules | 2026-02-16 | ✅ Current |
| `.claude/plans/MASTER PLAN.md` | This document | 2026-02-20 | ✅ Current |
| `.mistral_vibe_config.json` | Mistral Vibe configuration | 2026-02-20 | ✅ Current |
| `ms.tex` | Main document | 2026-02-16 | ✅ Current |

### Content Staging Files (Phase 2 Source)

| File | Target | Priority | Status |
|------|--------|----------|--------|
| `INTEGRATION_GUIDE_acute-onset-protocol.md` | Ch 14b | HIGH | ✅ COMPLETE (2026-02-20) |
| `INTEGRATION_GUIDE_front-loading-strategy.md` | Ch 14a | HIGH | ⏳ Pending |
| `INTEGRATION_GUIDE_hrv-guided-pacing.md` | Ch 17 | MEDIUM | ⏳ Pending |
| `INTEGRATION_GUIDE_sports-medicine-pacing.md` | Ch 17 | MEDIUM | ⏳ Pending |
| `INTEGRATION_GUIDE_astrocyte-energy-gate.md` | Ch 8 | HIGH | ⏳ Pending |
| `INTEGRATION_GUIDE_cns-energy-triage.md` | Ch 14j | HIGH | ⏳ Pending |
| `insights-wirth-neurotransmitter.md` | Ch 8 | MEDIUM | ⏳ Pending |
| `scientific-insights-wirth-scheibenbogen-2025.md` | Ch 7, 10 | HIGH | ⏳ Pending |

### Patient Files (Phase 1 Complete)

| File | Status | Last Modified |
|------|--------|---------------|
| `patients/yannick/00-index.tex` | ✅ Integrated | 2026-02-16 |
| `patients/yannick/01-medical-history.tex` | ✅ Integrated | 2026-02-16 |
| `patients/yannick/02-clinical-findings.tex` | ✅ Integrated | 2026-02-16 |
| `patients/yannick/03-symptom-profile.tex` | ✅ Integrated | 2026-02-16 |
| `patients/yannick/04-case-analysis.tex` | ✅ Integrated | 2026-02-16 |
| `patients/yannick/05-treatment-plans.tex` | ✅ Integrated | 2026-02-16 |
| `patients/yannick/06-daily-tracking.tex` | ✅ Integrated | 2026-02-16 |
| `patients/yannick/README.md` | ✅ Integrated | 2026-02-16 |

### Gap Inventory (Phase 0.5 Complete)

**Status:** 656 gaps identified and prioritized
**File:** `.claude/plans/PLACEHOLDER_AUDIT.md`
**Priority Distribution:**
- CRITICAL: 12 gaps
- HIGH: 48 gaps  
- MEDIUM: 187 gaps
- LOW: 409 gaps

**Assignment Status:**
- Phase 2: 18 gaps assigned
- Phase 3: 42 gaps assigned
- Phase 4: 15 gaps assigned
- Phase 5: 35 gaps assigned
- Phase 6: 8 gaps assigned
- Phase 7: 508 gaps assigned
- Phase 8: 30 gaps assigned (final verification)

---

## 🤖 Agent Activation Guide

### How to Trigger Specific Agents

**General Agents:**
- `explore`: "Explore the codebase for [pattern]"
- `sonnet-general`: "Analyze [topic] and provide recommendations"
- `haiku-general`: "Quick check of [file] for [issue]"

**Content Agents:**
- `chapter-integrator`: "Integrate [content] into [chapter]"
- `scientific-insight-generator`: "Generate insights about [mechanism]"
- `hypothesis-generator`: "Brainstorm hypotheses about [phenomenon]"
- `literature-integrator`: "Find and integrate papers on [topic]"

**Quality Agents:**
- `scientific-rigor-auditor`: "Audit [content] for scientific rigor"
- `logic-auditor`: "Check [argument] for logical consistency"
- `style-naturalizer`: "Naturalize the style of [content]"
- `content-reviewer`: "Review [content] for completeness"
- `link-checker`: "Verify all cross-references in [chapter]"
- `syntax-fixer`: "Fix LaTeX syntax errors in [file]"
- `formatting-fixer`: "Standardize formatting in [file]"

**Medical Agents:**
- `medical-advisor`: "Review [treatment] for safety"
- `treatment-analyst`: "Analyze [medication] effects"
- `crisis-manager`: "Emergency protocol for [situation]"
- `pacing-coach`: "Pacing strategy for [activity level]"

### Agent Coordination Protocol

**For complex tasks requiring multiple agents:**

1. **Primary Agent** takes lead based on task type
2. **Secondary Agents** provide specialized input
3. **Quality Agent** performs final review
4. **Iterative Loop** until all agents confirm completion

**Example: Content Integration Workflow**
```
Task: Integrate acute-onset protocol
1. chapter-integrator (primary) → draft integration
2. literature-integrator (secondary) → verify citations
3. protocol-linker (secondary) → add cross-references
4. scientific-rigor-auditor (quality) → audit rigor
5. IF issues found → return to step 1
6. IF clean → style-naturalizer → final polish
7. IF clean → task complete
```

---

## 🚀 Quick Reference: Starting Next Phase

### Phase 2 Execution Checklist

**Pre-requisites:**
- [ ] Phase 1 complete ✓
- [ ] Phase 0.5 gap inventory available ✓
- [ ] All staging content in `.claude/content-staging/` ✓
- [ ] Build system verified (`nix build` works) ✓

**Execution Steps:**
1. **Task 2.1:** Integrate acute-onset protocol
   - Source: `.claude/content-staging/INTEGRATION_GUIDE_acute-onset-protocol.md`
   - Target: `contents/part3-treatment/ch14a-urgent-action-severe.tex`
   - Agent: `chapter-integrator`
   - Verification: Build + cross-reference check

2. **Task 2.2:** Integrate front-loading strategy
   - Source: `.claude/content-staging/INTEGRATION_GUIDE_front-loading-strategy.md`
   - Target: `contents/part3-treatment/ch14a-urgent-action-severe.tex`
   - Agent: `chapter-integrator`

3. **Task 2.3:** Integrate HRV-guided pacing
   - Source: `.claude/content-staging/INTEGRATION_GUIDE_hrv-guided-pacing.md`
   - Target: `contents/part3-treatment/ch17-lifestyle-interventions.tex`
   - Agent: `chapter-integrator`

4. **Continue through Task 2.8** (all integration guides)

5. **Task 2.9:** Cross-reference all new sections
   - Agent: `protocol-linker`

6. **Task 2.10:** Build verification
   - Agent: `test-runner`

7. **Task 2.11:** Iterative scientific rigor audit
   - Agent: `scientific-rigor-auditor` (Opus)
   - Exit criteria: 0 issues found

8. **Task 2.12:** Commit integration
   - Agent: `haiku-general`

**Success Criteria:**
- All 10 staging files integrated
- Cross-references validated
- Build succeeds
- Rigor audit clean (iterative)
- Commit created

### Phase 3 Preparation (While Phase 2 Executes)

**Pre-work for efficient Phase 3 start:**
1. **Review brainstorming requirements** (R2)
2. **Identify literature sources** for Ch 15 sections
3. **Create skeleton file** `contents/part2-pathophysiology/ch15-symptom-producing-mechanisms.tex`
4. **Gather trigger mechanism references** for Ch 5 + Ch 7 additions

**Recommended Reading:**
- `.claude/plans/RESEARCH_GAPS.md`
- `Literature/neurological/serotonin-fatigue/`
- `Literature/neurological/microglia-neuroinflammation/`

---

## 📝 Change Log

**2026-02-20:**
- Added Progress Tracking Dashboard
- Added Continuation Protocol section
- Added File Inventory & Status
- Added Agent Activation Guide
- Added Quick Reference for Phase 2 execution
- Added Change Log section
- Updated overall progress to 10% (22/222 tasks)
- Added mermaid Gantt chart for critical path visualization
- Clarified Phase 2 priority order and current focus

**2026-02-16:**
- Created unified MASTER PLAN.md
- Consolidated 11 separate plans into 9-phase structure
- Added 8 key optimizations vs. original order
- Integrated quality requirements (R1, R2, R3)
- Added detailed task lists for all phases
- Added success criteria and verification checklists
- Added risk mitigation table

**2026-02-14:**
- Initial placeholder audit completed
- 656 gaps identified and prioritized
- Gap inventory created in PLACEHOLDER_AUDIT.md

**2026-02-10:**
- Master plan framework established
- Phase structure defined
- Initial task estimation completed

---

## 🎯 Next Session Recommendation

**Priority:** Complete Phase 2 - Content-Staging Integration

**Recommended Approach:**
1. **Start with Task 2.1** (acute-onset protocol integration)
2. **Use chapter-integrator agent** for content placement
3. **Verify build after each integration**
4. **Run cross-reference check** after all integrations
5. **Begin iterative rigor audit**
6. **Create comprehensive commit** when audit clean

**Estimated Session Duration:** 2-3 hours
**Target Completion:** 4-6 tasks (33-50% of Phase 2)

**Continuation Strategy:** If context exceeds 35%, use the Phase 2 continuation prompt template above.

---
**End of MASTER PLAN.md — Enhanced Execution Version**
