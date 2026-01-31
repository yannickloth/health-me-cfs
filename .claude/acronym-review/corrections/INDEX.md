# Acronym Expansion Correction Plan - File Index

## Quick Start

```bash
# Preview changes (no modifications)
python apply_corrections.py --dry-run

# Apply all corrections
python apply_corrections.py

# Verify
nix build
```

## Files in This Directory

### Core Correction Plan
1. **CORRECTION-PLAN.json** (17KB)
   - Structured JSON with all 36 corrections
   - Exact old_pattern and new_pattern for each fix
   - Line numbers, file paths, verification commands
   - Execution priority order

2. **apply_corrections.py** (6KB)
   - Automated correction script
   - Supports --dry-run and --file options
   - Built-in verification
   - Detailed progress reporting

### Documentation
3. **EXECUTION-SUMMARY.md** (6.5KB)
   - Complete execution guide
   - Pre/post verification commands
   - Special considerations and edge cases
   - Expected outcomes and rollback procedures

4. **README.md** (4.2KB)
   - Human-readable summary
   - Priority breakdown by file
   - Validation instructions
   - Expansion reference table

5. **INDEX.md** (this file)
   - Navigation guide
   - Quick reference

## Correction Summary

| Metric | Value |
|--------|-------|
| Total corrections | 36 |
| Files affected | 10 |
| Acronyms | LDN (16), NAC (8), BH4 (11), DHEA (1) |
| Strategy | replace_with_expansion (100%) |
| Priority files | High: 1, Medium: 1, Low: 8 |

## File Reading Order

### For Quick Implementation
1. Read: **EXECUTION-SUMMARY.md** (comprehensive guide)
2. Run: `python apply_corrections.py --dry-run`
3. Review: CORRECTION-PLAN.json (verify patterns make sense)
4. Execute: `python apply_corrections.py`
5. Verify: Build and grep checks from EXECUTION-SUMMARY.md

### For Detailed Understanding
1. **README.md** - Overview and priorities
2. **CORRECTION-PLAN.json** - Exact corrections
3. **EXECUTION-SUMMARY.md** - Implementation details
4. **apply_corrections.py** - Tool usage

### For Manual Correction
1. **CORRECTION-PLAN.json** - Source of truth
2. **README.md** - File-by-file breakdown
3. Use Edit tool with exact old_pattern/new_pattern from JSON

## Key Information

### Files with Most Corrections
1. ch25-translational-findings.tex (14)
2. ch14f-cpet-derived.tex (4)
3. Multiple files with 2 corrections each

### Acronym Breakdown
- **LDN → Low-Dose Naltrexone (LDN)**: 16 instances
- **NAC → N-Acetylcysteine (NAC)**: 8 instances
- **BH4 → Tetrahydrobiopterin (BH4)**: 11 instances
- **DHEA → Dehydroepiandrosterone (DHEA)**: 1 instance

### Safety
- All patterns unique within files (no accidental multi-replacements)
- Dry-run mode available
- Verification built into script
- Easy rollback via git

## Usage Examples

```bash
# Test everything
python apply_corrections.py --dry-run

# Apply to high-priority file only
python apply_corrections.py --file "part4-research/ch25-translational-findings.tex"

# Apply all and see detailed output
python apply_corrections.py

# Verify specific acronym
grep -n "Low-Dose Naltrexone (LDN)" contents/**/*.tex

# Check for remaining issues
grep -r "\\bLDN\\b" contents/**/*.tex | grep -v "Low-Dose Naltrexone"
```

## Next Steps After Corrections

1. **Build verification**: `nix build`
2. **Visual check**: Open result/ms.pdf
3. **Re-run analysis**: Confirm 100% compliance
4. **Git commit**: Use message from EXECUTION-SUMMARY.md
5. **Update documentation**: Mark this review as complete

## Troubleshooting

| Issue | Solution |
|-------|----------|
| "Pattern not found" | Check file hasn't changed; verify path |
| "Pattern appears N times" | Manual review needed; pattern not unique |
| Build fails | Check LaTeX syntax; verify no special chars broken |
| Wrong line corrected | Line numbers may have shifted; re-generate plan |

## References

- Analysis source: `.claude/acronym-review/analysis/all-medications-analysis.json`
- Extraction logs: `.claude/acronym-review/extractions/`
- Base documentation: `.claude/agents/syntax-fixer.md` (acronym rules)

---

**Plan Version:** 1.0
**Generated:** 2026-01-31
**Status:** Ready for execution