# Mechanistic Hypotheses Development - Quick Reference

**Date:** 2026-02-06
**Status:** ✅ COMPLETE
**Next:** Ready for chapter-integrator

---

## Quick Stats

- **Hypotheses developed:** 5 of 5 (100%)
- **LaTeX content:** 6,102 words
- **BibTeX entries:** 35 papers
- **Literature searches:** 6 comprehensive searches
- **Files created:** 9 files
- **Time to integration:** Ready now

---

## What Was Delivered

### 1. Complete LaTeX Content (5 files)
```
Literature/hypothesis-1-glial-maturation.tex       (9.4 KB)
Literature/hypothesis-2-hsc-exhaustion.tex        (12 KB)
Literature/hypothesis-3-immune-memory-pruning.tex (11 KB)
Literature/hypothesis-4-ebv-adolescence.tex       (11 KB)
Literature/hypothesis-5-oi-lynchpin.tex           (8.2 KB)
```

### 2. Bibliography Files
```
Literature/NEW_REFERENCES.bib          (35 BibTeX entries)
Literature/APPENDIX_G_ADDITIONS.tex    (4 annotated bibliography tables)
```

### 3. Integration Documentation
```
Literature/INTEGRATION_GUIDE_ALL_HYPOTHESES.md  (Comprehensive guide)
Literature/HYPOTHESIS_DEVELOPMENT_COMPLETE.md   (Full report)
Literature/HYPOTHESIS_DEVELOPMENT_WORKING.md    (Research notes)
Literature/README_HYPOTHESIS_DEVELOPMENT.md     (This file)
```

---

## The 5 Hypotheses

### H1: Glial Maturation Window
**Idea:** Adolescent microglial reprogramming resets neuroinflammation in children
**Target:** ch08-neurological.tex (after Nakatomi PET discussion)
**Environment:** `\begin{speculation}[Glial Maturation Window and Pediatric Recovery]`
**Word count:** 1,022 words
**Citations:** 9 papers
**Certainty:** Medium-Low

### H2: HSC Exhaustion
**Idea:** ME/CFS exhausts hematopoietic stem cells; children have larger reserves
**Target:** ch13-integrative-models.tex (after multi-system models)
**Environment:** `\begin{speculation}[Hematopoietic Stem Cell Exhaustion Model]`
**Word count:** 1,148 words
**Citations:** 6 papers
**Certainty:** Medium

### H3: Immune Memory Pruning
**Idea:** Pubertal immune reorganization deletes autoreactive B cells in children
**Target:** ch07-immune-dysfunction.tex (after autoantibody discussion)
**Environment:** `\begin{hypothesis}[Immune Memory Pruning in Development]`
**Word count:** 923 words
**Citations:** 6 papers
**Certainty:** Low-Medium

### H4: EBV-Adolescence Connection
**Idea:** EBV infection during immune maturation creates persistent autoantibodies
**Target:** ch07-immune-dysfunction.tex (infectious triggers or after H3)
**Environment:** `\begin{speculation}[EBV-Adolescence Interaction in ME/CFS Pathogenesis]`
**Word count:** 824 words
**Citations:** 9 papers
**Certainty:** Medium-Low

### H5: OI as Lynchpin
**Idea:** Orthostatic intolerance is primary driver; other dysfunctions secondary
**Target:** ch13-integrative-models.tex (within septad framework)
**Environment:** `\begin{speculation}[Orthostatic Intolerance as Primary Driver]`
**Word count:** 595 words
**Citations:** 5 papers
**Certainty:** Medium

---

## For chapter-integrator Agent

### Integration Command
```
Integrate all 5 mechanistic hypotheses into main document following:
/home/nicky/code/health-me-cfs/Literature/INTEGRATION_GUIDE_ALL_HYPOTHESES.md
```

### Integration Order (to resolve cross-references)
1. H3 (Immune Memory Pruning) - creates label needed by H1 and H4
2. H2 (HSC Exhaustion) - creates label needed by H1 and H5
3. H1 (Glial Maturation) - creates label needed by H5
4. H4 (EBV-Adolescence) - depends on H3 label
5. H5 (OI Lynchpin) - depends on H1, H2, H3 labels

### Critical Steps
1. Merge NEW_REFERENCES.bib into references.bib (check duplicates)
2. Insert hypothesis sections into target chapters
3. Integrate APPENDIX_G_ADDITIONS.tex into appendix-g
4. Verify all cross-references resolve
5. Build and check for errors

### Verification Checklist
- [ ] All 5 sections inserted
- [ ] All 35 citations in references.bib
- [ ] Appendix G tables integrated
- [ ] No undefined references
- [ ] No undefined citations
- [ ] Build succeeds
- [ ] PDF renders correctly

---

## Research Quality

### Literature Sources
- **PubMed/PMC:** Primary source
- **High-impact journals:** Nature, Cell, Blood, NEJM, Lancet
- **Date range:** 2014-2025 (60% from 2018+)
- **Quality:** All peer-reviewed
- **Balance:** Includes contradictory findings

### Rigor Standards
✅ Appropriate certainty language
✅ Limitations explicitly stated
✅ Contradictory evidence included
✅ Testable predictions specified
✅ Treatment implications with caveats
✅ Novel insights clearly marked as speculative

---

## Key Insights

### Unified Framework
All 5 hypotheses converge on **developmental plasticity** as key to pediatric recovery:
- Microglial turnover (H1)
- HSC regeneration (H2)
- Immune tolerance (H3)
- Developmental timing windows (H4)
- Autonomic plasticity (H5)

### Clinical Implications
1. **Early intervention critical** - leverage remaining developmental plasticity
2. **Age-stratified trials** - children vs. adults may need different treatments
3. **Biomarker development** - specific predictions for each hypothesis
4. **Subgroup identification** - treatment-responsive populations predicted

### Research Priorities
- Longitudinal pediatric cohorts tracking multiple systems
- Age-stratified PET imaging
- Autoantibody titer tracking during recovery
- HSC functional assays
- Early aggressive OI treatment trials

---

## Files Map

```
Literature/
├── hypothesis-1-glial-maturation.tex ─────┐
├── hypothesis-2-hsc-exhaustion.tex ───────┤
├── hypothesis-3-immune-memory-pruning.tex ├─→ Insert into chapters
├── hypothesis-4-ebv-adolescence.tex ──────┤
├── hypothesis-5-oi-lynchpin.tex ──────────┘
│
├── NEW_REFERENCES.bib ────────────────────→ Merge into references.bib
├── APPENDIX_G_ADDITIONS.tex ──────────────→ Insert into appendix-g
│
├── INTEGRATION_GUIDE_ALL_HYPOTHESES.md ───→ Read this for integration
├── HYPOTHESIS_DEVELOPMENT_COMPLETE.md ────→ Full documentation
├── HYPOTHESIS_DEVELOPMENT_WORKING.md ─────→ Research notes
└── README_HYPOTHESIS_DEVELOPMENT.md ──────→ This quick reference
```

---

## Success Metrics

### Completed ✅
- 5/5 hypotheses fully developed
- 6,102 words of scientific content
- 35 papers cited with full BibTeX
- Annotated bibliography tables created
- Comprehensive integration guide written
- All testable predictions specified
- All limitations acknowledged

### Pending ⏳
- Chapter integration (chapter-integrator task)
- Bibliography merging (check for duplicates)
- Build verification
- Cross-reference resolution

---

## Quick Links to Documents

**Start here:**
- `INTEGRATION_GUIDE_ALL_HYPOTHESES.md` - Complete integration instructions

**Full details:**
- `HYPOTHESIS_DEVELOPMENT_COMPLETE.md` - Full report with all details

**Research notes:**
- `HYPOTHESIS_DEVELOPMENT_WORKING.md` - Literature search results

**Content files:**
- `hypothesis-1-glial-maturation.tex` through `hypothesis-5-oi-lynchpin.tex`

**Bibliography:**
- `NEW_REFERENCES.bib` - All citations
- `APPENDIX_G_ADDITIONS.tex` - Annotated bibliography

---

## Questions?

**For integration issues:** See INTEGRATION_GUIDE_ALL_HYPOTHESES.md section "Troubleshooting"

**For citation questions:** All papers documented in NEW_REFERENCES.bib with DOIs/PMIDs

**For content questions:** Each hypothesis file includes integration notes at bottom

**For cross-reference issues:** See INTEGRATION_GUIDE section "Cross-Reference Map"

---

**Status:** READY FOR INTEGRATION ✅

**Next agent:** chapter-integrator

**Command:** Integrate all 5 mechanistic hypotheses following integration guide

