# Phase 1: Architecture & Patient File Extraction

**Depends on:** Nothing  
**Estimated:** 1-2 sessions  
**Models:** 2 Haiku, 5 Sonnet

---

## Objective

Consolidate patient case files from fragmented state (`appendix-i-*`, `appendix-j-*`) into autonomous `patients/yannick/` structure with numbered organization (00-07).

---

## Architectural Decisions Required

### Decision 1.1: Patient folder structure
- [ ] Approve numbered structure (00-07) for `patients/yannick/`?
- **Recommendation:** ✓ APPROVE (follows IVP, clear organization)

### Decision 1.2: Ch. 15 placement  
- [ ] Option A: New chapter (40-50 pp) — RECOMMENDED
- [ ] Option B: Section in Ch. 14 (15-25 pp)
- [ ] Option C: Expand Ch. 8 (15-20 pp)
- **Recommendation:** Option A (dedicated space, complete mechanistic depth)

### Decision 1.3: ms.tex structure
- [ ] Approve explanatory comment in ms.tex about patient case?
- **Recommendation:** ✓ APPROVE (clarity for readers)

### Decision 1.4: Old file handling
- [ ] Delete old appendix-i/j files after consolidation?
- [ ] Keep in `deprecated/` folder?
- **Recommendation:** DELETE (git history preserves them)

### Decision 1.5: README
- [ ] Approve README content for `patients/yannick/`?
- **Recommendation:** ✓ APPROVE (see ARCHITECTURE_DECISIONS.md Decision 6)

---

## Task Checklist

### Content Extraction (Sonnet tasks)

- [ ] **1.1** Extract `appendix-i-personal-symptoms.tex` → `patients/yannick/03-symptom-profile.tex` (consolidate with existing)
  - **Agent:** chapter-integrator (Sonnet)
  - **Verify:** No duplicate content, symptoms organized clearly

- [ ] **1.2** Extract `appendix-i-a-medical-management.tex` → `patients/yannick/01-medical-history.tex`
  - **Agent:** chapter-integrator (Sonnet)
  - **Verify:** Ritalin history, medications, medical background complete

- [ ] **1.3** Extract `appendix-i-b-clinical-findings.tex` → `patients/yannick/02-clinical-findings.tex`
  - **Agent:** chapter-integrator (Sonnet)
  - **Verify:** Lab results, diagnostic data organized

- [ ] **1.4** Extract `appendix-i-c-case-analysis.tex` → `patients/yannick/04-case-analysis.tex`
  - **Agent:** chapter-integrator (Sonnet)
  - **Verify:** Case reasoning, therapeutic analysis preserved

### File Operations (Haiku tasks)

- [ ] **1.5** Move `appendix-j-recommendations.tex` → `patients/yannick/05-treatment-plans.tex`
  - **Agent:** haiku-general
  - **Verify:** Treatment protocols, recommendations intact

- [ ] **1.6** Move `appendix-j-daily-journal.tex` → `patients/yannick/06-daily-tracking.tex`
  - **Agent:** haiku-general
  - **Verify:** Daily journals, tracking logs preserved

### Documentation (Sonnet tasks)

- [ ] **1.7** Create `patients/yannick/README.md` with usage notes
  - **Agent:** sonnet-general
  - **Content:** Overview, structure, usage notes, generalization warnings, privacy notes
  - **Verify:** Matches specification in ARCHITECTURE_DECISIONS.md Decision 6

- [ ] **1.8** Update `ms.tex` lines 302-309 with new includes and explanatory comment
  - **Agent:** sonnet-general
  - **Changes:**
    - Replace old includes with `patients/yannick/00-index.tex` through `07-research-hypotheses.tex`
    - Add explanatory comment about single-patient case study
    - Add warning about generalization
  - **Verify:** Matches specification in ARCHITECTURE_DECISIONS.md Decision 3

### Verification & Cleanup (Haiku tasks)

- [ ] **1.9** Build verification: `nix build`
  - **Agent:** test-runner (Haiku)
  - **Expected:** SUCCESS (no errors, no broken references)

- [ ] **1.10** Delete old files (if Decision 1.4 = DELETE)
  - Files to remove:
    - `contents/appendices/appendix-i-personal-symptoms.tex`
    - `contents/appendices/appendix-i-a-medical-management.tex`
    - `contents/appendices/appendix-i-b-clinical-findings.tex`
    - `contents/appendices/appendix-i-c-case-analysis.tex`
    - `contents/appendices/appendix-j-recommendations.tex`
    - `contents/appendices/appendix-j-daily-journal.tex`
  - **Agent:** haiku-general
  - **Verify:** Only after build succeeds and content verified

- [ ] **1.11** Commit reorganization
  - **Agent:** haiku-general
  - **Message:** "refactor(patient-case): Consolidate Yannick case into autonomous patients/yannick/ structure"
  - **Verify:** All changes committed, clean working directory

---

## Success Criteria

- [ ] All patient content in `patients/yannick/` (00-07)
- [ ] `ms.tex` updated with new includes and explanatory comment
- [ ] README created with proper warnings
- [ ] `nix build` succeeds with no errors
- [ ] No duplicate content
- [ ] Old files removed from `contents/appendices/`
- [ ] Changes committed to git

---

## Files Modified

**Created:**
- `patients/yannick/01-medical-history.tex`
- `patients/yannick/02-clinical-findings.tex`
- `patients/yannick/04-case-analysis.tex`
- `patients/yannick/05-treatment-plans.tex`
- `patients/yannick/06-daily-tracking.tex`
- `patients/yannick/README.md`

**Modified:**
- `patients/yannick/03-symptom-profile.tex` (consolidated)
- `ms.tex` (lines 302-309)

**Deleted:**
- `contents/appendices/appendix-i-*.tex` (4 files)
- `contents/appendices/appendix-j-*.tex` (2 files)

---

## Next Phase

**Phase 2: Content-Staging Integration** — Integrate 10 existing `.tex` files + 7 integration guides from `.claude/content-staging/`
