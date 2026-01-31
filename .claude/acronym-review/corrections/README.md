# Acronym Expansion Correction Plan

## Summary

**Total corrections needed:** 36
**Files affected:** 10
**Acronyms:** LDN, NAC, BH4, DHEA

## Correction Strategy

All 36 corrections follow the **replace_with_expansion** strategy:
- Replace `acronym` with `Full Name (acronym)` at first/primary use in context
- No separate "add parenthetical" corrections needed
- All definitions verified as correct; only expansions are missing

## Priority Order

### High Priority (14 corrections)
1. **part4-research/ch25-translational-findings.tex** - 14 corrections
   - 5 LDN instances
   - 3 NAC instances
   - 6 BH4 instances

### Medium Priority (4 corrections)
2. **part2-pathophysiology/ch14/ch14f-cpet-derived.tex** - 4 corrections
   - 2 NAC instances
   - 2 BH4 instances

### Low Priority (18 corrections, 8 files)
3. **appendices/appendix-i-personal-symptoms.tex** - 2 LDN corrections
4. **appendices/appendix-i-c-case-analysis.tex** - 2 LDN corrections
5. **part1-clinical/ch04-sections/ch04-07-novel-framework.tex** - 2 LDN corrections
6. **part2-pathophysiology/ch14/ch14i-clinical-brainstorm.tex** - 1 LDN, 1 DHEA
7. **part1-clinical/ch05-subgroups.tex** - 2 NAC corrections
8. **part2-pathophysiology/ch14/ch14-main.tex** - 1 NAC, 1 BH4
9. **part3-treatment/ch15-medications-systems.tex** - 1 NAC correction
10. **part3-treatment/ch18-emerging-therapies.tex** - 1 BH4 correction

## Execution Instructions

### Automated Batch Processing
```bash
cd /home/nicky/code/health-me-cfs

# Run corrections from CORRECTION-PLAN.json
python .claude/acronym-review/corrections/apply_corrections.py
```

### Manual Verification
After automated corrections, verify with:
```bash
# Check each file for proper expansions
grep -n "Low-Dose Naltrexone (LDN)" contents/**/*.tex
grep -n "N-Acetylcysteine (NAC)" contents/**/*.tex
grep -n "Tetrahydrobiopterin (BH4)" contents/**/*.tex
grep -n "Dehydroepiandrosterone (DHEA)" contents/**/*.tex

# Verify no missed instances
grep -n "\\bLDN\\b" contents/**/*.tex | grep -v "Low-Dose Naltrexone"
grep -n "\\bNAC\\b" contents/**/*.tex | grep -v "N-Acetylcysteine"
grep -n "\\bBH4\\b" contents/**/*.tex | grep -v "Tetrahydrobiopterin"
grep -n "\\bDHEA\\b" contents/**/*.tex | grep -v "Dehydroepiandrosterone"
```

## Special Cases

### appendix-i-personal-symptoms.tex
- Original analysis referenced lines 1377, 2122, 2726, 2886, 2920
- File has only 981 lines total
- Actual missing expansions found at lines 590 and 699
- **Cause:** Analysis may have been run on different file structure or concatenated version

### ch25-translational-findings.tex
- Highest correction count (14 instances)
- Mix of all three acronyms (LDN, NAC, BH4)
- Focus on translational medicine and cross-condition applications
- All expansions can be added without disrupting technical content

### ch14f-cpet-derived.tex
- Multiple BH4 references in autonomic-mitochondrial feedback loop section
- Technical context requires careful expansion placement
- Line 43: Special case - "Sapropterin (BH4)" should become "Sapropterin (Tetrahydrobiopterin, BH4)"

## Validation

Each correction includes a `verification_grep` command:
```bash
# Example for line 626 in ch25-translational-findings.tex
grep -n 'Low-Dose Naltrexone (LDN)' contents/part4-research/ch25-translational-findings.tex | grep 626
```

Expected output: Line number with expanded acronym present.

## Notes

- All definitions verified as **correct** (no definition errors)
- Only **missing expansions** flagged for correction
- No ambiguous cases requiring manual review
- All patterns are unique within their files (no replace_all needed)
- Context window of ±10 lines sufficient for all corrections

## Post-Correction

After applying all corrections:

1. **Rebuild LaTeX** to check for compilation errors
2. **Run full acronym analysis** again to verify 100% compliance
3. **Commit changes** with message referencing this correction plan
4. **Update analysis JSON** with new results

## Expansion Reference

| Acronym | Full Expansion |
|---------|---------------|
| LDN | Low-Dose Naltrexone (LDN) |
| NAC | N-Acetylcysteine (NAC) |
| BH4 | Tetrahydrobiopterin (BH4) |
| DHEA | Dehydroepiandrosterone (DHEA) |
| ALA | Alpha-Lipoic Acid (ALA) - already correct |
| LDA | Aripiprazole - already correct |