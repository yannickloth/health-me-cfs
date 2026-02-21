# Cross-Reference Inventory for Appendix-I Restructuring

**Created:** 2026-02-11
**Purpose:** Track all internal references to appendix-i files for safe removal from main document

---

## Summary

**Total Appendix-I Files to Move:** 4
**Total Internal Cross-References:** 12 internal, 0 external
**Risk Level:** LOW (all references are within appendix-i itself)

---

## Files to Move

### File 1: appendix-i-personal-symptoms.tex
**Current Location:** `/home/nicky/code/health-me-cfs/contents/appendices/appendix-i-personal-symptoms.tex`
**New Location:** `/home/nicky/code/health-me-cfs/patients/yannick/appendices/I-personal-symptoms.tex`

**Label:** `\label{app:personal-symptoms}`

**Size:** ~1,200 lines
**Content Type:** Symptom profile, disease manifestations, personal medical history

**Incoming References (from other files):**
- appendix-i-a-medical-management.tex line 5 (cross-reference)
- appendix-i-a-medical-management.tex line 238 (mentions evidence)
- appendix-i-b-clinical-findings.tex line 5 (cross-reference)
- appendix-i-c-case-analysis.tex line 5 (cross-reference)

**Status:** Will work correctly once all files are together in patients/yannick/appendices/

---

### File 2: appendix-i-a-medical-management.tex
**Current Location:** `/home/nicky/code/health-me-cfs/contents/appendices/appendix-i-a-medical-management.tex`
**New Location:** `/home/nicky/code/health-me-cfs/patients/yannick/appendices/I-a-medical-management.tex`

**Label:** `\label{app:medical-management}`

**Size:** ~310 lines
**Content Type:** Current medications, supplement protocols, treatment management

**Incoming References (from other files):**
- appendix-i-personal-symptoms.tex line 9 (cross-reference)
- appendix-i-personal-symptoms.tex line 1184 (cross-reference)
- appendix-i-b-clinical-findings.tex line 5 (cross-reference)
- appendix-i-c-case-analysis.tex line 5 (cross-reference)

**Cross-References Within This File:**
- Line 238: `\ref{app:case-analysis}` and `\ref{app:clinical-findings}` (valid, stay within case study)
- Line 308: `\ref{app:case-analysis}` Table reference (valid, stay within case study)

**Status:** Will work correctly once all files are together

---

### File 3: appendix-i-b-clinical-findings.tex
**Current Location:** `/home/nicky/code/health-me-cfs/contents/appendices/appendix-i-b-clinical-findings.tex`
**New Location:** `/home/nicky/code/health-me-cfs/patients/yannick/appendices/I-b-clinical-findings.tex`

**Label:** `\label{app:clinical-findings}`

**Size:** ~360 lines
**Content Type:** Laboratory findings, medical history, test results, assessments

**Incoming References (from other files):**
- appendix-i-personal-symptoms.tex line 10 (cross-reference)
- appendix-i-personal-symptoms.tex line 1185 (cross-reference)
- appendix-i-a-medical-management.tex line 5 (cross-reference)
- appendix-i-c-case-analysis.tex line 5 (cross-reference)

**Status:** Will work correctly once all files are together

---

### File 4: appendix-i-c-case-analysis.tex
**Current Location:** `/home/nicky/code/health-me-cfs/contents/appendices/appendix-i-c-case-analysis.tex`
**New Location:** `/home/nicky/code/health-me-cfs/patients/yannick/appendices/I-c-case-analysis.tex`

**Label:** `\label{app:case-analysis}`

**Size:** ~850 lines
**Content Type:** Case analysis, diagnostic reasoning, treatment planning, hypotheses

**Incoming References (from other files):**
- appendix-i-personal-symptoms.tex line 11 (cross-reference)
- appendix-i-personal-symptoms.tex line 303 (narrative reference)
- appendix-i-personal-symptoms.tex line 1186 (cross-reference)
- appendix-i-a-medical-management.tex line 238 (reference)
- appendix-i-a-medical-management.tex line 308 (table reference)
- appendix-i-b-clinical-findings.tex line 5 (cross-reference)

**Status:** Will work correctly once all files are together

---

## Internal Cross-References

### Within appendix-i-personal-symptoms.tex

**Line 9:**
```latex
\item Appendix~\ref{app:medical-management}: Current medical management, protocols, and interventions
```
**Action:** Keep unchanged - will resolve within case study document

**Line 10:**
```latex
\item Appendix~\ref{app:clinical-findings}: Clinical findings, laboratory results, and medical history
```
**Action:** Keep unchanged - will resolve within case study document

**Line 11:**
```latex
\item Appendix~\ref{app:case-analysis}: Case analysis, diagnostic reasoning, and treatment plans
```
**Action:** Keep unchanged - will resolve within case study document

**Line 303:**
```
The current description in Appendix~\ref{app:case-analysis} notes: ...
```
**Action:** Keep unchanged - will resolve within case study document

**Line 1184-1186:**
```latex
\item \textbf{Current medications and management protocols}: See Appendix~\ref{app:medical-management}
\item \textbf{Laboratory findings and clinical history}: See Appendix~\ref{app:clinical-findings}
\item \textbf{Case analysis and treatment planning}: See Appendix~\ref{app:case-analysis}
```
**Action:** Keep unchanged - will resolve within case study document

---

### Within appendix-i-a-medical-management.tex

**Line 5:**
```latex
For symptom descriptions, see Appendix~\ref{app:personal-symptoms}. For laboratory findings and clinical history, see Appendix~\ref{app:clinical-findings}.
```
**Action:** Keep unchanged - will resolve within case study document

**Line 238:**
```latex
See Appendix~\ref{app:case-analysis}, Appendix~\ref{app:clinical-findings}, and Chapter~\ref{ch:action-mild-moderate}
```
**Action:** CHANGE - Reference to Chapter removed (ch:action-mild-moderate is in main document)
**New Text:** "See Appendix~\ref{app:case-analysis} and Appendix~\ref{app:clinical-findings} for supporting analysis."

**Line 308:**
```latex
See Appendix~\ref{app:case-analysis} Table~\ref{tab:treatment-cost-analysis} for estimated monthly costs.
```
**Action:** Keep unchanged - table is in app:case-analysis

---

### Within appendix-i-b-clinical-findings.tex

**Line 5:**
```latex
For symptom descriptions, see Appendix~\ref{app:personal-symptoms}. For current management protocols, see Appendix~\ref{app:medical-management}.
```
**Action:** Keep unchanged - will resolve within case study document

---

### Within appendix-i-c-case-analysis.tex

**Line 5:**
```latex
For symptom descriptions, see Appendix~\ref{app:personal-symptoms}. For current protocols, see Appendix~\ref{app:medical-management}.
```
**Action:** Keep unchanged - will resolve within case study document

---

## Main Document References (ms.tex)

**Lines 303-306:**
```latex
% Personal case data (patient-specific)
\include{contents/appendices/appendix-i-personal-symptoms} % Case summary, symptom overview
\include{contents/appendices/appendix-i-a-medical-management} % Medical history, treatments
\include{contents/appendices/appendix-i-b-clinical-findings} % Test results, assessments
\include{contents/appendices/appendix-i-c-case-analysis}   % Pattern analysis, interpretation
```

**Action:** REMOVE - These 4 lines completely
**Replacement (Option B recommended):**
```latex
% Personal case study: See patients/yannick/case-study.tex for comprehensive patient documentation
```

---

## Other LaTeX Files Checked

**Files Analyzed:**
- All files in `contents/part1-clinical/` - NO references to appendix-i
- All files in `contents/part2-pathophysiology/` - NO references to appendix-i
- All files in `contents/part3-treatment/` - NO references to appendix-i
- All files in `contents/part4-research/` - NO references to appendix-i
- All files in `contents/part5-modeling/` - NO references to appendix-i
- All files in `contents/shared/` - NO references to appendix-i
- All files in `contents/appendices/appendix-a through appendix-h` - NO references to appendix-i
- File `ms.tex` - 4 \include references (see above)

**Conclusion:** No external references to appendix-i in main theoretical content.

---

## Verification Checklist

### Before Removal
- [ ] Verify all 4 files exist in `/home/nicky/code/health-me-cfs/contents/appendices/`
- [ ] Backup original files to git (stash or branch)
- [ ] Confirm no references exist in Part 1-5 content
- [ ] Confirm no references exist in Appendix A-H
- [ ] Verify only internal cross-references among appendix-i files

### After Moving Files
- [ ] All 4 files copied to `/home/nicky/code/health-me-cfs/patients/yannick/appendices/`
- [ ] Filenames updated:
  - `appendix-i-personal-symptoms.tex` → `I-personal-symptoms.tex`
  - `appendix-i-a-medical-management.tex` → `I-a-medical-management.tex`
  - `appendix-i-b-clinical-findings.tex` → `I-b-clinical-findings.tex`
  - `appendix-i-c-case-analysis.tex` → `I-c-case-analysis.tex`
- [ ] Edit appendix-i-a-medical-management.tex line 238 (remove Chapter reference)
- [ ] Create new patients/yannick/case-study.tex with proper \include statements
- [ ] Test case-study.tex compilation
- [ ] Remove \include lines from ms.tex (lines 303-306)
- [ ] Add replacement comment in ms.tex
- [ ] Test ms.tex compilation

### After Main Document Restructuring
- [ ] ms.tex compiles without errors
- [ ] No broken references in ms.tex
- [ ] No references to appendix-i remain in main document
- [ ] patients/yannick/case-study.tex compiles without errors
- [ ] All internal cross-references within case study work correctly
- [ ] Git status shows expected changes

---

## Potential Issues & Mitigation

### Issue 1: Chapter Reference in appendix-i-a-medical-management.tex
**Location:** Line 238
**Problem:** References `Chapter~\ref{ch:action-mild-moderate}` which is in main document
**Solution:** Remove chapter reference, keep appendix references only
**Mitigation:** Edit before case-study.tex creation

### Issue 2: Broken References During Transition
**Problem:** If ms.tex still includes appendix-i but files are moved
**Solution:** Move files, then update ms.tex in same git commit
**Mitigation:** Use git staged commits to ensure atomic transition

### Issue 3: LaTeX Auxiliary File Inconsistencies
**Problem:** .aux files may have stale references
**Solution:** Clean build with `nix run .#clean` before final test
**Mitigation:** Full clean build test at end

### Issue 4: Path Issues if Using Symlinks
**Problem:** Relative paths in appendix files might break if moved
**Solution:** Use absolute paths or test relative paths thoroughly
**Mitigation:** Verify path resolution before moving

---

## Documentation Changes Required

### ms.tex Changes
**What:** Remove 4 \include lines, update section comment
**Where:** Lines 302-306
**Verification:** Compile ms.tex successfully

### patients/yannick/case-study.tex (New File)
**What:** Create new case study document with preamble and \include statements
**Structure:** Load preamble, \include all 4 appendix-i files
**Verification:** Compile case-study.tex successfully

### appendix-i-a-medical-management.tex Changes
**What:** Remove chapter reference in line 238
**Where:** Line 238
**Verification:** Cross-reference still valid (appendix refs only)

### Internal Cross-References (No Changes)
All internal cross-references within appendix-i files will continue to work correctly once files are in case-study.tex's directory structure.

---

## Summary Statistics

| Metric | Count |
|--------|-------|
| Files to move | 4 |
| Internal cross-references | 12 |
| External references (in main content) | 0 |
| Chapter references to remove | 1 |
| Lines to remove from ms.tex | 4 |
| LaTeX files affected | 2 (ms.tex + 1 appendix file) |
| Risk level | LOW |

---

## Timeline Estimate

- **Step 1 (Preparation):** 15 min
  - Verify all files exist
  - Create backup branch
  - Run grep to confirm external references

- **Step 2 (File Migration):** 20 min
  - Create patients/yannick/appendices/ directory
  - Copy 4 files
  - Rename files
  - Edit line 238 in appendix-i-a-medical-management.tex

- **Step 3 (Case Study Creation):** 20 min
  - Create patients/yannick/case-study.tex
  - Write preamble
  - Write \include statements
  - Compile and verify

- **Step 4 (Main Document Restructuring):** 15 min
  - Edit ms.tex lines 302-306
  - Verify no broken references
  - Compile and verify

- **Step 5 (Git Commit):** 10 min
  - Stage file additions
  - Stage file deletions
  - Stage file modifications
  - Create commit with clear message

**Total Estimated Time:** 80 minutes

---

**Status:** Ready for implementation

**Next Step:** Upon user approval, proceed with file migration using this inventory as reference
