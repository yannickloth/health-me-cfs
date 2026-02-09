# Workflow: General-Purpose Multi-Stream Research Expansion with Iterative Integration

**Status:** Ready for execution on any research topic
**Scope:** N research streams (user-specified) + integrated quality assurance with convergence
**Architecture:** Workflow-driven orchestration with main session coordination
**Cost Model:** Per-task agent + model selection, Haiku (mechanical) to Opus (creative/QA)
**How to invoke:** Describe your research topic, specify research streams, identify integration targets

---

## How This Workflow Works

This is a **generally applicable workflow** for expanding the ME/CFS documentation with new research on ANY topic.

**To use it:**
1. Specify your research topic (e.g., "wheat-exercise intolerance," "long COVID mechanisms," "pediatric diagnostic criteria")
2. Define N research streams (typically 3-6 subtopics within your main topic)
3. Identify which chapters will be expanded
4. Specify relevant patient populations (severe/mild/pediatric/adult/comorbidities)
5. Say: "Execute research-expansion workflow: [topic], [streams], [integration targets], [patient focus]"

The workflow will:
- Create detailed plan before starting
- Parallelize research across streams using appropriate agents
- Continuously update plan as work progresses
- Integrate findings with citations
- Generate creative insights
- Perform rigorous QA with convergence stopping criterion
- Ask for guidance when uncertain
- Clean up temporary files and mark task complete with full documentation

---

## High-Level Architecture

```
Main Session (Orchestrator)
├── Phase 0: Planning & Task Breakdown (NEW)
│   └── Create detailed execution plan with all tasks
│
├── Research Phases (Parallel)
│   ├── Stream 1 → Agent (literature-integrator) + Model (Sonnet/Haiku)
│   ├── Stream 2 → Agent (literature-integrator) + Model (Sonnet/Haiku)
│   ├── Stream 3 → Agent (literature-integrator) + Model (Sonnet/Haiku)
│   ├── ... [Stream N]
│   └── [Typically 3-6 streams executed in parallel]
│   └── [UPDATE PLAN after each stream completes]
│
├── Integration Phase
│   ├── Reference Management → Haiku (bibliography)
│   ├── Chapter Edits → Main session (composition)
│   ├── Cross-Reference Validation → Haiku (link checking)
│   └── LaTeX Build Verification → Haiku (compile check)
│   └── [UPDATE PLAN with integration progress]
│
├── Creative Expansion Phase
│   ├── Novel Hypothesis Generation → Opus (scientific-insight-generator)
│   ├── Treatment/Intervention Discovery → Opus
│   └── Mechanism Bridging → Opus (cross-domain connections)
│   └── [UPDATE PLAN with insights discovered]
│
├── Optional Formalization Phase
│   ├── Model Type Selection → Sonnet (formalization-advisor)
│   ├── Model Construction → Opus/Sonnet (builders)
│   └── LaTeX Integration → Main session (TikZ/equations)
│   └── [UPDATE PLAN with formalization status]
│
├── Quality Assurance Cycle (Iterative with Convergence)
│   ├── Rigor Audit → Sonnet (scientific-rigor-auditor)
│   ├── Issue Categorization → Automatic (critical/major/minor/suggestion)
│   ├── Fix Implementation → Main session
│   ├── Re-audit → Sonnet (only changed sections)
│   ├── Convergence Check → Are NEW critical/major issues present?
│   │   ├─ YES → Loop back to fix implementation
│   │   └─ NO → CONVERGENCE REACHED (exit QA loop)
│   ├── Severe Doubt Gate → If unsure how to fix: Ask user for guidance
│   └── [UPDATE PLAN with QA iterations and issues resolved]
│
└── Phase 9: Cleanup & Documentation (NEW)
    ├── Delete temporary files
    ├── Document reasons for kept files
    └── Create cleanup manifest
```

---

## Phase 0: Planning & Task Breakdown (NEW - FIRST STEP)

**Purpose:** Create comprehensive execution plan BEFORE any research begins.

**How it works:**
1. Main session analyzes user request
2. Breaks down ALL workflow phases into specific actionable tasks
3. Creates detailed checklist with:
   - Task descriptions
   - Dependencies between tasks
   - Estimated durations
   - Required agents/models
   - Expected outputs
   - Success criteria for each task
4. Writes plan to `.claude/plans/[topic]-research-plan-[timestamp].md`

**Plan Structure:**

```markdown
# Research Expansion Plan: [Topic]

**Created:** [Timestamp]
**Status:** In Progress

## Overview
- **Topic:** [Research topic]
- **Streams:** [N streams listed]
- **Integration Targets:** [Chapters]
- **Patient Focus:** [Populations]
- **Estimated Duration:** [X hours over Y sessions]

## Phase Breakdown

### Phase 0: Planning ✓
- [x] Analyze user request
- [x] Break down workflow into tasks
- [x] Create this plan file
- [x] Identify all required resources

### Phase 1: Research Stream Execution
**Status:** Not Started | In Progress | Complete
**Started:** [Timestamp when phase begins]
**Completed:** [Timestamp when phase ends]

- [ ] Stream 1: [Topic] - [Agent] - [Model] - Est: 1-2h
  - Search PubMed/Google Scholar
  - Retrieve 5-15 papers
  - Summarize findings
  - Output to `.claude/content-staging/`
- [ ] Stream 2: [Topic] - [Agent] - [Model] - Est: 1-2h
  ...
- [ ] Aggregate all literature summaries
- [ ] Verify output files created

**Blockers:** None | [Description if any]
**Decisions Made:** [Key choices during execution]
**New Information:** [Discoveries that affect future phases]

### Phase 2: Reference Management
[Similar structure for each phase...]

### Phase 3: Creative Brainstorming
...

### Phase 4: Optional Formalization
...

### Phase 5: Chapter Integration
...

### Phase 6: Quality Assurance
...

### Phase 7: Iterative Quality Loops
...

### Phase 8: Final Completion
...

### Phase 9: Cleanup & Documentation
...

## Files Created (Tracking)
- [ ] `.claude/content-staging/[topic]-stream-1-[date].md` (Phase 1)
- [ ] `.claude/content-staging/[topic]-stream-2-[date].md` (Phase 1)
- [ ] `.claude/content-staging/QA_AUDIT_v1.md` (Phase 6)
- [ ] `.claude/content-staging/QA_FIXES_v1.md` (Phase 6)
- [ ] `.claude/content-staging/TASK_COMPLETION_[date].md` (Phase 8)
...

## Decision Log
- [Timestamp]: [Decision made and rationale]
...

## Notes & Context for Future Phases
- [Any important context that emerged during execution]
...
```

**Duration:** 15-20 minutes

**Continuous Updates Required:**
- Mark tasks complete as they finish: `[x]` checkbox
- Update phase status: Not Started → In Progress → Complete
- Add timestamps when phases start/complete
- Document blockers immediately when encountered
- Record key decisions and rationale
- Add new tasks discovered during execution
- Track all temporary files created

**✅ COMPLETION MARKER:**
- [ ] Detailed plan file created in `.claude/plans/`
- [ ] All phases broken down into specific tasks
- [ ] Dependencies identified
- [ ] File tracking list initialized
- [ ] Plan includes timestamps and status fields
- [ ] Ready to begin Phase 1

---

## Phase 1: Research Stream Execution (Parallel)

**How it works:**
- For each research stream user specifies, delegate to `literature-integrator`
- Agent searches PubMed/Google Scholar based on research questions
- Retrieves 5-15 papers (user specifies target range)
- Summarizes key findings with citations
- Extracts mechanistic insights, biomarkers, treatment implications
- Outputs literature summary to `.claude/content-staging/`

**Model selection:**
- Sonnet for mechanistic streams (good synthesis, moderate cost)
- Haiku for lower-volume topics (lower cost, sufficient for simpler topics)

**Duration per stream:** Typically 1-2 hours

**Patient phenotype integration:** Agent identifies findings relevant to specified patient populations (severe, mild, pediatric, adult, specific comorbidities)

**Output:** One literature summary file per stream, ready for integration

**Plan Update Requirements (NEW):**
After EACH stream completes:
1. Mark stream task complete in plan: `[x]`
2. Record actual duration vs estimate
3. Note key findings or unexpected discoveries
4. Add filename to "Files Created" tracking list
5. Identify any new research questions that emerged
6. Update Phase 1 status when all streams done

**✅ COMPLETION MARKER:**
- [ ] All N streams executed
- [ ] 15-50+ papers retrieved total (distributed across streams)
- [ ] All literature summaries in `.claude/content-staging/`
- [ ] Key findings extracted with certainty assessments
- [ ] Plan file updated with completed tasks and findings

---

## Phase 2: Reference Management & Bibliography Integration

**How it works:**
- Main session (or Haiku agent) extracts all citations from stream outputs
- Adds to `references.bib` in proper BibTeX format
- De-duplicates against existing bibliography
- Adds two custom fields to each entry:
  - `certainty = {0.XX}` (confidence level in evidence, 0-1 scale)
  - `research_stream = {stream-name}` (which research stream found this?)
- Creates annotated reference appendix (2-3 lines per paper: key finding + strength)
- Verifies all `\cite{}` commands will resolve in LaTeX

**Duration:** 30-45 minutes

**Quality check:** Sonnet review of BibTeX syntax

**Plan Update Requirements (NEW):**
1. Mark bibliography tasks complete
2. Record number of citations added
3. Note any BibTeX compilation issues
4. Update "Files Created" with annotated reference file

**✅ COMPLETION MARKER:**
- [ ] All citations added to references.bib
- [ ] No duplicates with existing bibliography
- [ ] Certainty assessments assigned
- [ ] Annotated reference guide created
- [ ] BibTeX compiles without errors
- [ ] Plan updated with citation count

---

## Phase 3: Creative Brainstorming & Hypothesis Generation

**How it works:**
- Invoke `scientific-insight-generator` (Opus) after all research streams complete
- Agent synthesizes across all stream findings
- Identifies novel treatment/intervention possibilities
- Bridges mechanisms across domains (what similar mechanisms exist elsewhere?)
- Identifies gaps and heterogeneity in patient populations
- Generates 15-25 novel ideas/hypotheses ranked by actionability & evidence foundation
- Outputs brainstorming document with citations and testable predictions

**Focus areas (user selects which relevant):**
- Medication/supplement discovery
- Biochemical phenomenon connections
- Cross-domain therapeutic relationships
- Patient phenotype heterogeneity
- Diagnostic or monitoring innovations
- Mechanistic depth and novel links

**Duration:** 1.5-2 hours

**Plan Update Requirements (NEW):**
1. Mark brainstorming task complete
2. Record number of hypotheses generated
3. Note top 3-5 most promising ideas
4. Document which ideas will be integrated into paper
5. Add brainstorming output file to tracking list

**✅ COMPLETION MARKER:**
- [ ] 15-25 novel ideas/hypotheses identified
- [ ] Ranked by evidence foundation + actionability
- [ ] Testable predictions defined
- [ ] Brainstorming document created
- [ ] Best ideas flagged for integration into paper
- [ ] Plan updated with insight summary

---

## Phase 4: Optional Formalization & Mathematical Modeling

**How it works:**
- Decision gate: Does user want formal models?
- If YES: Invoke `formalization-advisor` (Sonnet)
- Advisor reviews all research streams for formalizable processes
- Recommends model type: Event-Process Chain (EPC), Causal DAG, or Quantitative ODE
- Assigns appropriate builder agent (Opus for complex reasoning, Sonnet for standard)
- Model constructed with:
  - Clear variable definitions
  - Uncertainty ranges for parameters
  - Validation criteria (could this predict outcomes?)
  - LaTeX/TikZ representation
- Integrated into appropriate chapter section

**Duration:** 2-3 hours (only if user wants it)

**Conditional:** Skipped if user specifies narrative-only approach

**Plan Update Requirements (NEW):**
1. Update decision: Formalization YES/NO
2. If YES: Mark model selection and construction complete
3. Document model type chosen and rationale
4. Add model files to tracking list

**✅ COMPLETION MARKER:**
- [ ] Model type selected with justification
- [ ] Model constructed and documented
- [ ] Integration points identified
- [ ] Ready for LaTeX embedding
- [ ] Plan updated with formalization status

---

## Phase 5: Chapter Integration & Citation Weaving

**How it works:**
- Main session reads all stream outputs + brainstorming results
- Maps integration points to chapters (which chapters affected by this research?)
- Batch-composes new sections for each chapter
- Each new section includes:
  - Evidence-based claims with proper citations
  - Uncertainty assessment (0.0-1.0 scale)
  - Limitations and confounders
  - Patient phenotype applicability (which populations?)
  - Treatment/clinical implications with safety caveats
  - Cross-references to related sections using `\ref{}` syntax
- Adds creative brainstorming leads where appropriate
- Verifies all cross-references will resolve

**Duration:** 2-3 hours

**Integration structure:**
- Identify affected chapters
- Add new sections to each chapter
- Create cross-reference map (which sections reference which?)
- Verify LaTeX syntax and label existence

**Quality checklist:**
- [ ] All new sections drafted
- [ ] All citations added and will resolve
- [ ] Cross-references use correct syntax
- [ ] Speculation/hypothesis environments properly formatted
- [ ] Certainty assessments explicit with citations
- [ ] Patient phenotypes addressed
- [ ] Treatment implications present with safety caveats
- [ ] Limitations comprehensive
- [ ] Tone consistent with rest of paper

**Plan Update Requirements (NEW):**
1. Mark each chapter integration complete
2. Record number of sections added per chapter
3. Note any integration challenges encountered
4. Document cross-reference structure
5. Update "Files Created" if integration guide created

**✅ COMPLETION MARKER:**
- [ ] All planned sections integrated
- [ ] Citations present and syntax correct
- [ ] Cross-references mapped and validated
- [ ] Ready for LaTeX build test
- [ ] Plan updated with integration details

---

## Phase 6: Quality Assurance with Iterative Convergence

**How it works:**

### Audit Phase
Invoke `scientific-rigor-auditor` (Sonnet) to audit all new content:
- Uncited claims (zero tolerance for mechanistic claims without citations)
- Certainty assessment accuracy (is 0.75 really justified? Is speculation language appropriate?)
- Uncertainty framing ("may," "could," "likely" for uncertain claims; definitive language for established facts)
- Limitations comprehensiveness (all confounders mentioned? Alternative explanations considered?)
- Safety caveats for patient advice (appropriate caution level?)
- Confounders explicitly discussed (e.g., fructan confounding for wheat claims)
- Patient phenotype coverage (all specified populations addressed?)
- Internal consistency (do new sections contradict existing content?)

**Output:** Audit report categorizing issues as:
- 🔴 **Critical:** Must fix (factual error, major missing citation, patient safety concern)
- 🟠 **Major:** Significantly reduces quality (weak evidence, insufficient limitations, phenotype gap)
- 🟡 **Minor:** Polish improvements (grammar, rewording, clarification)
- 💡 **Suggestion:** Optional enhancements (additional example, alternative framing)

**Output location:** `.claude/content-staging/QA_AUDIT_v[N].md`

### Fix Implementation Phase
Main session action:
1. Read audit report
2. Fix ALL critical issues immediately
3. Fix ALL major issues (unless time constraint → note for Phase 7)
4. Defer minor/suggestions to final polish
5. **If severe doubt on how to fix:** → STOP and ask user
   - Present issue clearly
   - Explain options
   - Wait for user guidance before implementing

**Output:** `.claude/content-staging/QA_FIXES_v[N].md` (what was fixed, decisions made)

### Re-Audit Phase (Convergence-Driven)
After fixes applied, re-audit ONLY the changed sections:
- Sonnet checks: "Are there NEW critical/major issues from these fixes?"
- If YES → Critical/major issues found → Return to Fix Implementation
- If NO → **CONVERGENCE REACHED** → Exit QA loop

**CONVERGENCE CRITERION:**
✅ **Stop QA iterations when:** Re-audit finds zero NEW critical/major issues in fixed sections

**Convergence document:**
```
QA Convergence Report:
- Audit 1: [X critical, Y major, Z minor issues]
- Fixes applied: [critical + major items fixed]
- Audit 2 results: [0 NEW critical/major found] ✓
- Status: CONVERGED - Ready for publication
- Remaining: [count] minor issues (documented, acceptable)
```

**Duration:** ~1-1.5 hours per audit cycle (typically 1-2 cycles needed)

**Maximum iterations:** 2 full audit cycles recommended

**If still failing after 2 cycles:**
- Document remaining issues clearly
- Offer user options:
  - (A) Trigger Phase 7 systematic loop
  - (B) Accept as "known limitations"
  - (C) Focus on core sections; defer problematic sections

**Plan Update Requirements (NEW):**
1. Mark each QA cycle complete
2. Record issue counts: Critical, Major, Minor
3. Document all fixes applied
4. Note any blockers or user decisions needed
5. Update convergence status
6. Add audit/fix files to tracking list

**✅ COMPLETION MARKER:**
- [ ] Audit converged (no new critical/major in latest audit)
- [ ] All critical issues resolved
- [ ] All major issues resolved (or documented as known limitations)
- [ ] Convergence report filed
- [ ] Ready for final verification
- [ ] Plan updated with QA iteration summary

---

## Phase 7: Iterative Quality Loops (Triggered by QA)

**How it works:**

When QA identifies issues that need research or clarification, trigger targeted loops:

| Issue Type | Trigger | Action | Duration |
|-----------|---------|--------|----------|
| **Missing evidence** | "Only 1 paper supports this claim" | Targeted re-search (Haiku), integrate findings, re-audit | 15-30 min |
| **Certainty mismatch** | "This 0.65 certainty claim lacks justification" | Review evidence, lower certainty if needed, re-audit | 10 min |
| **Safety concern** | "Patient advice could be misinterpreted" | Reword with explicit caveats, add contraindications, re-audit | 10 min |
| **Phenotype gap** | "This applies to mild patients, not severe" | Create separate subsection or add conditional language, re-audit | 15 min |
| **Cross-reference broken** | "Section X references deleted Section Y" | Restore/update references, verify chain, re-audit | 10 min |
| **Severe doubt on fix** | "I don't know how to fix this" | **ASK USER** for guidance | Depends on user |

### Severe Doubt Decision Gate
**If main session cannot figure out how to fix an issue:**

1. **STOP execution**
2. **Ask user:**
   ```
   Issue: [description]
   Current state: [what we have]
   Options:
   - (A) [Fix approach 1: pros/cons]
   - (B) [Fix approach 2: pros/cons]
   - (C) [Defer to future research]
   - (D) Accept as known limitation?

   Guidance?
   ```
3. **Wait for user decision**
4. **Implement as directed**
5. **Continue**

**Plan Update Requirements (NEW):**
1. Document each triggered loop
2. Record issue type and resolution
3. Note user decisions if severe doubt occurred
4. Update estimated completion time if loops extend work

**✅ COMPLETION MARKER:**
- [ ] All feedback loops completed
- [ ] Zero remaining issues escalated to "severe doubt"
- [ ] Re-audit confirms convergence after loop fixes
- [ ] Plan updated with loop details

---

## Phase 8: Final Completion & Task Closure

**How it works:**

### Final Verification Checklist

Run comprehensive final check:

**Content Completeness:**
- [ ] All research streams integrated
- [ ] All planned chapters updated
- [ ] Creative brainstorming leads incorporated (where appropriate)
- [ ] Formalization complete (if selected)
- [ ] Patient phenotypes addressed throughout

**Citations & References:**
- [ ] Every mechanistic claim has a citation (zero uncited statements)
- [ ] 15+ new papers added to bibliography
- [ ] Certainty assessments explicit and justified
- [ ] Reference annotations created and accurate

**Technical Quality:**
- [ ] All `\ref{}` cross-references resolve correctly
- [ ] LaTeX builds cleanly (run `nix build`)
- [ ] PDF generates without errors/warnings
- [ ] No "??" markers in final PDF (broken references)

**QA Status:**
- [ ] Audits converged (no new critical/major issues)
- [ ] All critical issues resolved
- [ ] All major issues resolved (or documented)
- [ ] Safety caveats present
- [ ] Limitations comprehensive

**Documentation:**
- [ ] All staging files organized in `.claude/content-staging/`
- [ ] Integration guide created (which sections → which chapters?)
- [ ] QA audit reports preserved (showing convergence)
- [ ] Brainstorming outputs documented
- [ ] User decisions recorded

### Task Completion Report

Create final report: `.claude/content-staging/TASK_COMPLETION_[date].md`

```markdown
# Task Completion Report

## Overview
- **Research Topic:** [Description]
- **Status:** ✅ COMPLETE
- **Date Completed:** [Date]

## Deliverables Summary

### Research Streams Executed
- **Stream 1:** [N papers, Y key findings]
- **Stream 2:** [N papers, Y key findings]
- ... [all streams]

### Integration Results
- **Chapters modified:** [List with # of sections each]
- **New sections created:** [Count]
- **New citations added:** [Count]
- **Cross-references added:** [Count]

### Quality Metrics
- **QA audit cycles:** [N]
- **Convergence achieved:** YES
- **Critical issues found/fixed:** [Count]
- **Major issues found/fixed:** [Count]
- **Remaining minor issues:** [Count] (documented)
- **Build status:** ✓ Clean, no errors

### Creative Contributions
- **Novel hypotheses:** [Count identified]
- **Treatment ideas:** [Count proposed]
- **Mechanistic insights:** [Count added]
- **Formal models:** [Yes/No, count if yes]

### Patient Coverage
- **Severe patients:** [% of sections addressing]
- **Mild/moderate:** [%]
- **Pediatric:** [%]
- **Adult:** [%]

## Known Limitations
- [Issue]: [Why unresolved or deferred]
- ...

## Next Steps (Optional)
- [Recommended future work]
- [Gaps identified for future research]

---
**Status: ✅ Ready for peer review / publication**
```

**Plan Update Requirements (NEW):**
1. Mark Phase 8 complete
2. Final update of plan status: COMPLETE
3. Record completion timestamp
4. Ensure all checklist items marked
5. Completion report added to file tracking

**✅ COMPLETION MARKER:**
- [ ] All phases executed
- [ ] Verification checklist passed
- [ ] Completion report filed
- [ ] Paper built and verified
- [ ] Plan marked COMPLETE
- [ ] Ready for Phase 9 cleanup

---

## Phase 9: Cleanup & Documentation (NEW - FINAL STEP)

**Purpose:** Remove temporary files, document what's kept, create cleanup manifest.

**How it works:**

### 1. Identify All Temporary Files

Review `.claude/content-staging/` and other temporary locations for files created during workflow:

**Typical temporary files to delete:**
- Intermediate literature summaries (if fully integrated)
- Draft QA audit reports (if superseded by final convergence report)
- Preliminary fix documents
- Temporary brainstorming notes (if incorporated into main document)
- Partial integration guides (if final version exists)
- Agent output logs
- Build artifacts (covered by `nix run .#clean`)

**Files to KEEP (with documented reasons):**
- Final paper chapters (permanent content)
- `references.bib` updates (permanent bibliography)
- QA convergence report (shows quality assurance was achieved)
- Task completion report (documents what was accomplished)
- Brainstorming document (valuable for future reference/extensions)
- Integration guide (helps understand structure changes)
- Annotated reference appendix (useful for quick citation lookup)
- Any files with unique insights not captured elsewhere

### 2. Create Cleanup Manifest

Before deleting anything, create manifest: `.claude/content-staging/CLEANUP_MANIFEST_[date].md`

```markdown
# Cleanup Manifest: [Topic] Research Expansion

**Date:** [Timestamp]
**Workflow:** Research Expansion
**Topic:** [Research topic]

## Files Deleted

### Temporary Literature Summaries
- `[filename].md` - Fully integrated into chapters X, Y, Z
- `[filename].md` - Superseded by final version
...

### Interim QA Documents
- `QA_AUDIT_v1.md` - Superseded by final convergence report
- `QA_FIXES_v1.md` - All fixes incorporated
...

### Draft Files
- `[filename]-draft.md` - Final version exists
...

**Total deleted:** [N files, X MB]

## Files Kept (with Reasons)

### Essential Outputs
- `TASK_COMPLETION_[date].md` - **Reason:** Documents entire workflow completion, metrics, and deliverables
- `QA_CONVERGENCE_[date].md` - **Reason:** Proves quality assurance was achieved, shows audit iterations
- `[topic]-brainstorming-[date].md` - **Reason:** Contains unique insights and hypotheses for future reference

### Reference Materials
- `[topic]-annotated-references-[date].md` - **Reason:** Quick citation lookup guide for this research topic
- `INTEGRATION_GUIDE_[topic]-[date].md` - **Reason:** Maps new content to chapter structure, aids future modifications

### Permanent Content
- `references.bib` (modified) - **Reason:** Permanent bibliography additions
- `contents/part2-pathophysiology/chapterX.tex` (modified) - **Reason:** Final integrated content
...

**Total kept:** [N files, X MB]

## Archive Created
- Archive location: `.claude/projects/.../archive/[topic]-[date]/`
- Archived files: [List any files archived rather than deleted]

## Verification
- [ ] All temporary files deleted
- [ ] All kept files have documented reasons
- [ ] No orphaned staging files remain
- [ ] Archive created if needed
- [ ] Plan file status updated to COMPLETE and CLEANED

## Cleanup Actions Taken
1. Deleted [N] intermediate literature summaries
2. Deleted [N] interim QA reports
3. Kept [N] essential outputs with reasons documented
4. Archived [N] files to permanent storage
5. Updated plan file with cleanup completion
```

### 3. Execute Cleanup

**Actions:**
1. Delete all identified temporary files
2. Run `nix run .#clean` to remove build artifacts
3. Verify no orphaned files in `.claude/content-staging/`
4. Move any archive-worthy files to permanent location
5. Update plan file: Add "Phase 9: COMPLETE" with cleanup summary

**Safety checks before deletion:**
- Verify file is truly temporary (no unique content)
- Check file is not referenced elsewhere
- Confirm content is captured in final outputs
- If uncertain: KEEP and document reason

**Duration:** 10-15 minutes

### 4. Final Plan Update

Update plan file with cleanup summary:

```markdown
### Phase 9: Cleanup & Documentation ✓
**Status:** Complete
**Completed:** [Timestamp]

- [x] Identified all temporary files
- [x] Created cleanup manifest
- [x] Deleted [N] temporary files
- [x] Kept [N] files with documented reasons
- [x] Verified no orphaned files remain
- [x] Build artifacts cleaned

**Cleanup summary:**
- Deleted: [N files, X MB]
- Kept: [N files with reasons documented]
- Cleanup manifest: `.claude/content-staging/CLEANUP_MANIFEST_[date].md`

---
**WORKFLOW STATUS: ✅ COMPLETE AND CLEANED**
```

**✅ COMPLETION MARKER:**
- [ ] All temporary files deleted
- [ ] Cleanup manifest created with reasons for all kept files
- [ ] No orphaned staging files remain
- [ ] Build artifacts cleaned
- [ ] Plan file updated with cleanup completion
- [ ] Only essential outputs and permanent content remain

---

## Cost Optimization Guide

| Phase | Agent | Model | Duration | Justification |
|-------|-------|-------|----------|---------------|
| 0 | Main session | Current | 0.25h | Planning is quick, zero marginal cost |
| 1 | literature-integrator | Sonnet/Haiku | 4-8h | Research synthesis quality > marginal cost |
| 2 | Haiku/Main | Haiku | 0.5h | Mechanical bibliography work |
| 3 | scientific-insight-generator | Opus | 1.5-2h | Creative cross-domain synthesis requires Opus |
| 4 | formalization-advisor + builders | Sonnet/Opus | 2-3h | Complex reasoning, optional |
| 5 | Main session | Current | 2-3h | Zero marginal cost, already running |
| 6 | scientific-rigor-auditor | Sonnet | 1.5h × N cycles | Rigor checking (Sonnet sufficient) |
| 7 | Per-trigger | Varied | 0-1h | Only if loops triggered |
| 8 | Main session | Current | 0.5h | Final verification |
| 9 | Main session | Current | 0.25h | Cleanup is quick, zero marginal cost |

**Estimated total cost:** $40-80 (varies by topic, stream count, research depth)

---

## Session Planning Template

### Typical 4-Session Execution

**Session A (4-5 hours): Planning & Research Phase**
- Phase 0: Create detailed plan (15 min)
- Phase 1: Execute all research streams in parallel (3-4h)
- Phase 2: Aggregate reference management (30 min)
- Checkpoint: All literature summaries ready, plan updated

**Session B (4-5 hours): Creative & Formalization**
- Phase 3: Run creative brainstorming (Opus) (2h)
- Phase 4: Conditional formalization if selected (2-3h)
- Checkpoint: All insights documented, plan updated

**Session C (4-5 hours): Integration & First QA**
- Phase 5: Batch-compose chapter integrations (2-3h)
- Phase 6: First QA audit cycle (1.5h)
- Fix critical/major issues
- Checkpoint: New content drafted, initial QA done, plan updated

**Session D (2-3 hours): Final QA & Completion**
- Phase 6: Re-audit (convergence check) (1h)
- Phase 7: Optional loops if needed (0-1h)
- Phase 8: Final verification (30 min)
- Phase 9: Cleanup & documentation (15 min)
- Checkpoint: ✅ Task done, PDF clean, workspace cleaned, plan complete

---

## Flexibility & Customization

**Adjust based on your research:**

**Fast track (focused topic):**
- 1-2 research streams instead of 3-6
- Skip Phase 3 (brainstorming)
- Skip Phase 4 (formalization)
- 1 QA cycle instead of 2
- → Completes in 2 sessions

**Comprehensive (broad topic):**
- 4-6+ research streams
- Include Phase 3 (creative brainstorming)
- Include Phase 4 (formalization)
- 2 QA cycles + Phase 7 loops
- → Completes in 4+ sessions

**Patient-heterogeneity focused:**
- Emphasize phenotype coverage in Phase 5
- Create separate subsections for severe/mild/pediatric
- QA explicitly checks each phenotype addressed
- Phase 3 brainstorming targets phenotype-specific mechanisms

---

## How to Invoke This Workflow

**Simple invocation:**
```
Execute research-expansion workflow:
- Topic: [Your research topic]
- Streams: [List N topics to research in parallel]
- Integration targets: [Which chapters will be updated?]
- Patient focus: [Severe/mild/pediatric/adult emphasis?]
- Include formalization: [Yes/No or "decide after research"]
```

**Example invocation:**
```
Execute research-expansion workflow:
- Topic: Wheat-exercise intolerance synergy in ME/CFS
- Streams: (1) Severe patient mechanisms, (2) Biomarkers, (3) Supplements, (4) Pediatric, (5) Mast cells
- Integration targets: Chapters 3, 11, 17
- Patient focus: Equal emphasis severe/mild/pediatric
- Formalization: Decide after research
```

---

## Success Criteria

✅ **Minimal Success:**
- Detailed plan created before research
- All research streams executed
- 15+ papers integrated with citations
- New content in 2+ chapters
- Patient populations addressed
- QA converged
- LaTeX builds clean
- Task completion report filed
- Temporary files cleaned up

✅ **Extended Success:**
- 25+ papers integrated
- Creative brainstorming integrated
- Formal mechanistic models created
- 4+ patient phenotypes explicitly covered
- Multiple QA cycles completed
- Publication-ready quality
- Complete cleanup with documented kept files

---

## Questions & Troubleshooting

**How long will this take?**
Typically 13-18 hours of agent time spread across 3-4 sessions of 4-5 hours each. Varies by topic and stream count. Add 30-45 minutes for planning and cleanup phases.

**What if my research topic doesn't fit nicely into streams?**
That's fine. Define as many or as few streams as make sense (1-6 typical range). The workflow scales.

**What happens if QA keeps finding issues?**
You have a convergence criterion: Stop when new audits find zero NEW critical/major issues. Accept minor issues.

**What if I'm really uncertain how to fix something?**
Use the "Severe Doubt" gate in Phase 6: Ask the user. Don't guess.

**Can I use this for non-ME/CFS topics?**
Yes. This is a general-purpose workflow. Adjust chapter references to your paper structure.

**Why create a plan if the workflow is already documented?**
The workflow is a template. The plan is a specific execution roadmap for YOUR research topic with YOUR chosen streams, tracking progress in real-time. It transforms abstract phases into concrete tasks and provides visibility into what's done vs. what remains.

**What if I forget to update the plan during execution?**
Update the plan at natural checkpoints (after each phase completes). If you forget, you can backfill updates based on files created and work completed. The plan is for YOUR benefit - it provides progress visibility and context for future phases.

**What if I want to keep a temporary file?**
Keep it and document the reason in the cleanup manifest. The cleanup phase forces explicit decision-making: either the file has unique value (keep + document) or it's redundant (delete).
