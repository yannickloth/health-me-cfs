# Literature Integration Coordinator Workflow

**Purpose**: Orchestrates complete paper integration from search through chapter edits to creative analysis, with verification at each phase.

**Trigger phrases:**
- "find and integrate papers on [topic]"
- "integrate research on [topic]"
- "search for papers about [mechanism]"
- "run literature integration for [topic]"

---

## Overview

This workflow coordinates multiple specialized agents to:
1. Search for relevant papers
2. Download and organize them
3. Add to bibliography and appendix
4. Integrate into main document chapters
5. Perform creative scientific analysis
6. Verify completion at each step

**Agents used:**
- `literature-researcher` (search)
- `literature-manager` (download, organize, bibliography, appendix)
- `chapter-integrator` (edit chapter files)
- `protocol-linker` (cross-references + protocol updates)
- `scientific-insight-generator` (creative analysis)
- `syntax-fixer` (verify build)

---

## Input Parameters

**Required:**
- **Topic/Query**: What to search for (e.g., "NK cell dysfunction in ME/CFS")

**Optional:**
- **Target chapters**: Which chapters to update (auto-detect if not specified)
- **Environment preference**: hypothesis, achievement, observation, speculation
- **Certainty threshold**: Only integrate High/Medium certainty papers (default: Medium+)

---

## Execution Phases

### Phase 0: Initialize

**Create tracking document:**

```bash
Literature/INTEGRATION_TRACKING_[timestamp].md
```

**Content:**
```markdown
# Literature Integration Tracking
Started: [timestamp]
Query: [user query]
Status: IN PROGRESS

## Papers to Integrate
- [ ] Paper 1
- [ ] Paper 2
...

## Verification Checklist
- [ ] Papers downloaded
- [ ] Bibliography updated
- [ ] Appendix updated
- [ ] Chapters updated
- [ ] Build succeeds
- [ ] Creative analysis complete
```

### Phase 1: Discovery & Search

**1.1 Spawn literature-researcher agent**

**Task:**
```
Search for peer-reviewed papers on: [TOPIC]
Focus on: ME/CFS-specific studies, biomarkers, mechanisms
Minimum quality: Peer-reviewed or strong preprints
Return: List of papers with DOI/URLs
```

**Expected output:**
- List of papers: Author, Year, Title, DOI, Relevance score
- Saved to: `Literature/SEARCHES/search_[timestamp].md`

**Verification:**
```bash
# Check search results exist
ls Literature/SEARCHES/search_*.md | tail -1
# Check contains papers
grep -c "DOI:" Literature/SEARCHES/search_*.md | tail -1
# Expected: >0 papers found
```

**If verification fails:**
- Query may be too narrow
- Try broader search terms
- Or: No relevant papers exist (report to user)

---

### Phase 2: Download & Organize

**2.1 For each paper from Phase 1:**

**Spawn literature-manager agent** (one invocation per paper or batch)

**Task:**
```
Download and organize paper: [AUTHOR YEAR]
DOI/URL: [link]
Category: [auto-detect or specify: biomarkers/pathophysiology/treatments/etc]
Create: folder structure, notes, key-findings, abstract
```

**Expected output per paper:**
```
Literature/[category]/[Author]_[Year]_[ShortTitle]/
├── [paper].pdf (if available)
├── abstract.txt
├── key-findings.md
├── notes.md
└── README.md
```

**Verification:**
```bash
# For each paper, check folder exists
ls Literature/pathophysiology/*/key-findings.md
# Expected: Files exist for all papers

# Check key-findings is not empty
for f in Literature/pathophysiology/*/key-findings.md; do
  wc -l "$f"
done
# Expected: >10 lines each (substantial content)
```

**If verification fails:**
- Paper may be inaccessible (paywall, broken link)
- Log failure, continue with other papers
- Report inaccessible papers to user

---

### Phase 3: Bibliography & Appendix

**3.1 Spawn literature-manager agent**

**Task:**
```
Add BibTeX entries for all newly downloaded papers:
[List of papers from Phase 2]

Update references.bib with complete metadata
```

**Expected output:**
- New entries in `references.bib`

**Verification:**
```bash
# For each paper, check BibTeX entry exists
grep "@article{Che2025" references.bib
grep "@article{Wang2023" references.bib
# Expected: Each returns result

# Check entry is complete
grep -A 10 "@article{Che2025" references.bib | grep "title"
grep -A 10 "@article{Che2025" references.bib | grep "author"
grep -A 10 "@article{Che2025" references.bib | grep "year"
# Expected: All fields present
```

**If verification fails:**
- Re-run literature-manager with explicit BibTeX instruction
- Or: Manually create entry (report to user)

**3.2 Spawn literature-manager agent**

**Task:**
```
Update Appendix H annotated bibliography with:
[List of papers from Phase 2]

Add to appropriate subsection with summary
```

**Expected output:**
- New entries in `contents/appendices/appendix-h-annotated-bibliography.tex`

**Verification:**
```bash
# Check appendix mentions new papers
grep "Che et al" contents/appendices/appendix-h*.tex
grep "Wang et al" contents/appendices/appendix-h*.tex
# Expected: Results found

# Check cite keys are used
grep "cite{Che2025}" contents/appendices/appendix-h*.tex
grep "cite{Wang2023}" contents/appendices/appendix-h*.tex
# Expected: Results found
```

**If verification fails:**
- Appendix may use different format
- Check file structure changed
- Re-run with explicit file path

---

### Phase 4: Chapter Integration ⭐

**4.1 Determine target chapters**

**For each paper:**

**Read:** `Literature/[category]/[Author]_[Year]/key-findings.md`

**Determine relevant chapters based on content:**
- Biomarker studies → Ch07 (Immune Dysfunction), Ch06 (Energy Metabolism)
- Pathophysiology → Part 2 chapters (Ch06-Ch14)
- Treatment studies → Part 3 chapters (Ch14-Ch18)
- Clinical features → Part 1 chapters (Ch02-Ch05)

**Create integration map:**
```markdown
## Chapter Integration Plan

Paper: Che2025
Chapters:
  - ch07-immune-dysfunction.tex (NK cell section) - PRIMARY
  - ch13-integrative-models.tex (immune section) - SECONDARY

Paper: Wang2023
Chapters:
  - ch06-energy-metabolism.tex (mitochondrial section) - PRIMARY
```

**4.2 For each (paper, chapter) pair:**

**Spawn chapter-integrator agent**

**Task:**
```
Integrate paper: Literature/biomarkers/Che_2025_InnateImmunity/
Into chapter: contents/part2-pathophysiology/ch07-immune-dysfunction.tex
Citation key: Che2025
Environment: hypothesis
Section hint: "NK cell dysfunction"
```

**Expected output:**
- Chapter file edited
- LaTeX environment added with citation

**Verification:**
```bash
# CRITICAL: Verify citation appears in chapter
grep "cite{Che2025}" contents/part2-pathophysiology/ch07-immune-dysfunction.tex
# Expected: One or more matches

# Verify environment added (if applicable)
grep "begin{hypothesis}" contents/part2-pathophysiology/ch07-immune-dysfunction.tex | grep -A 3 "Che"
# Expected: Match found with Che citation nearby

# Verify label exists
grep "label{hyp:che2025" contents/part2-pathophysiology/ch07-immune-dysfunction.tex
# Expected: Match found (if environment used)
```

**If verification fails:**
- **Attempt 1**: Re-spawn chapter-integrator with more explicit location
- **Attempt 2**: Re-spawn with different insertion strategy
- **Attempt 3**: Report to coordinator (may require manual integration)

**Success criteria per paper:**
```bash
# Each paper must appear in at least ONE chapter
grep -r "cite{Che2025}" contents/part*/*.tex | wc -l
# Expected: ≥1

# Primary chapter must contain the citation
grep "cite{Che2025}" contents/part2-pathophysiology/ch07-immune-dysfunction.tex
# Expected: Match found
```

**4.3 Aggregate verification**

**After all chapter integrations:**

```bash
# Create verification report
echo "# Chapter Integration Verification" > /tmp/integration_verify.txt

# For each new paper
for cite in Che2025 Wang2023 Esfandyarpour2019; do
  echo "\n## $cite" >> /tmp/integration_verify.txt
  echo "Found in:" >> /tmp/integration_verify.txt
  grep -r "cite{$cite}" contents/part*/*.tex | cut -d: -f1 | sort -u >> /tmp/integration_verify.txt
done

cat /tmp/integration_verify.txt
```

**Expected output:**
```markdown
# Chapter Integration Verification

## Che2025
Found in:
contents/part2-pathophysiology/ch07-immune-dysfunction.tex

## Wang2023
Found in:
contents/part2-pathophysiology/ch06-energy-metabolism.tex

## Esfandyarpour2019
Found in:
contents/part2-pathophysiology/ch07-immune-dysfunction.tex
contents/part4-research/ch22-mechanistic-studies.tex
```

**Each paper must appear ≥1 time.**

**If any paper appears 0 times:**
- ❌ Integration incomplete
- Identify which paper failed
- Re-run Phase 4 for that paper specifically
- Maximum retries: 2
- After 2 retries: Escalate to user

---

### Phase 4.5: Cross-References & Protocol Updates

**4.5.1 Spawn protocol-linker agent**

For each paper successfully integrated in Phase 4:

**Task:**
```
Link paper to existing document content and update protocols:
Paper: Literature/[category]/[Author]_[Year]/
Citation key: [Key]
Primary chapter(s): [chapters from Phase 4]
Paper category: [biomarkers/pathophysiology/treatments/etc]

Create bidirectional cross-references and evaluate Ch14a/14b for protocol updates.
```

**Expected output:**
- Cross-references between pathophysiology and treatment chapters
- Protocol updates in Ch14a (severe) if clinically relevant
- Protocol updates in Ch14b (moderate) if clinically relevant
- Linking report

**Verification:**
```bash
# Check cross-references were added (pathophysiology → treatment)
grep -r "ref{ch:.*treatment\|ref{sec:.*protocol\|ref{ch:supplements" contents/part2-pathophysiology/*.tex

# Check cross-references were added (treatment → pathophysiology)
grep -r "ref{ch:.*metabolism\|ref{ch:.*immune\|ref{sec:.*mechanism" contents/part3-treatment/*.tex

# Check if protocol chapters were updated (if applicable)
grep "cite{CITATION_KEY}" contents/part3-treatment/ch14a-urgent-action-severe.tex
grep "cite{CITATION_KEY}" contents/part3-treatment/ch14b-action-mild-moderate.tex
```

**If verification shows no cross-references:**
- Evaluate if finding was too narrow for cross-referencing
- Accept if paper only relevant to single chapter
- If cross-references were expected but missing, retry with explicit targets

**4.5.2 Aggregate protocol linking report**

After all papers processed:

```markdown
## Protocol Linking Summary

### Cross-References Created
| Paper | From Chapter | To Chapter | Type |
|-------|--------------|------------|------|
| Che2025 | ch07-immune | ch14a | mechanism→protocol |
| Che2025 | ch16-supplements | ch07 | treatment→mechanism |
| Wang2023 | ch06-energy | ch14a | mechanism→protocol |

### Protocol Updates Made
| Paper | Chapter | Section | Change Type |
|-------|---------|---------|-------------|
| Che2025 | ch14a | immune protocol | Added evidence reference |
| Wang2023 | ch14a | metabolic protocol | Strengthened recommendation |

### No Protocol Update Needed
- [Paper X]: Finding is mechanistic only, no treatment implications
- [Paper Y]: Already covered by existing protocols
```

---

### Phase 5: Build Verification

**5.1 Spawn syntax-fixer agent**

**Task:**
```
Verify document builds after integrations
Fix any LaTeX errors introduced
Check for: missing citations, undefined labels, syntax errors
```

**Verification:**
```bash
# Build the document
nix build

# Check exit code
echo $?
# Expected: 0 (success)

# Check for citation warnings
grep "Citation.*undefined" result/build.log
# Expected: No matches for new papers

# Check for label warnings
grep "Label.*undefined" result/build.log
# Expected: No matches for new labels
```

**If build fails:**
- Syntax-fixer will attempt repairs
- Common issues: unescaped characters, missing packages, malformed environments
- After syntax-fixer: Re-run build verification
- If still failing: Report errors to user

---

### Phase 6: Creative Scientific Analysis

**6.1 Spawn scientific-insight-generator agent**

**Task:**
```
Analyze integrated papers for novel insights:
Papers: [List all papers integrated in this session]
Focus:
  - Novel biological phenomena
  - Cross-paper connections
  - Treatment implications (medications + supplements)
  - Research directions

Output: scientific-insights.md for each paper
```

**Expected output per paper:**
```
Literature/[category]/[Author]_[Year]/scientific-insights.md
```

**Contains:**
- Novel phenomena identified
- Connections to other papers in Literature/
- Pharmaceutical treatment ideas with rationale
- Nutraceutical/supplement approaches
- Combination therapy concepts
- Proposed research studies
- Risk assessments (high/medium/low)
- Document integration suggestions

**Verification:**
```bash
# Check insights file exists for each paper
ls Literature/biomarkers/Che_2025_InnateImmunity/scientific-insights.md
ls Literature/pathophysiology/mitochondrial/Wang_2023_WASF3/scientific-insights.md

# Check file is substantial (not just stub)
wc -l Literature/biomarkers/Che_2025_InnateImmunity/scientific-insights.md
# Expected: >200 lines (thorough analysis)

# Check key sections present
grep "## Novel Biological Phenomena" Literature/biomarkers/Che_2025_InnateImmunity/scientific-insights.md
grep "## Treatment Implications" Literature/biomarkers/Che_2025_InnateImmunity/scientific-insights.md
grep "## Proposed Research Studies" Literature/biomarkers/Che_2025_InnateImmunity/scientific-insights.md
# Expected: All sections present
```

**If verification fails:**
- Insights file missing → Re-spawn scientific-insight-generator
- File too short → Agent may have failed midway, retry
- Missing sections → Agent stopped early, retry with explicit section requirements

**6.2 Consolidate insights across papers**

**Create cross-paper analysis:**

```bash
Literature/INTEGRATION_SESSION_[timestamp]/
├── all-papers.md (list of all papers integrated)
├── cross-paper-insights.md (unified analysis)
└── recommended-actions.md (prioritized next steps)
```

**Cross-paper insights should identify:**
- Common mechanisms across multiple papers
- Conflicting findings requiring reconciliation
- Synergistic treatment opportunities
- High-priority research gaps

---

### Phase 7: Final Verification & Reporting

**7.1 Comprehensive verification checklist**

Run all verifications:

```bash
#!/bin/bash
# Final verification script

echo "=== LITERATURE INTEGRATION VERIFICATION ==="
echo ""

# Phase 2: Papers downloaded
echo "Phase 2: Download verification"
for paper in Che2025 Wang2023 Esfandyarpour2019; do
  if ls Literature/*/$(echo $paper)_*/key-findings.md 2>/dev/null; then
    echo "  ✓ $paper downloaded"
  else
    echo "  ✗ $paper MISSING"
  fi
done
echo ""

# Phase 3: Bibliography
echo "Phase 3: Bibliography verification"
for paper in Che2025 Wang2023 Esfandyarpour2019; do
  if grep -q "@article{$paper" references.bib; then
    echo "  ✓ $paper in references.bib"
  else
    echo "  ✗ $paper MISSING from references.bib"
  fi
done
echo ""

# Phase 3: Appendix
echo "Phase 3: Appendix verification"
for paper in Che2025 Wang2023 Esfandyarpour2019; do
  if grep -q "cite{$paper}" contents/appendices/appendix-h*.tex; then
    echo "  ✓ $paper in Appendix H"
  else
    echo "  ✗ $paper MISSING from Appendix H"
  fi
done
echo ""

# Phase 4: Chapters
echo "Phase 4: Chapter integration verification"
for paper in Che2025 Wang2023 Esfandyarpour2019; do
  count=$(grep -r "cite{$paper}" contents/part*/*.tex 2>/dev/null | wc -l)
  if [ $count -gt 0 ]; then
    echo "  ✓ $paper in $count chapter(s)"
  else
    echo "  ✗ $paper NOT INTEGRATED into chapters"
  fi
done
echo ""

# Phase 5: Build
echo "Phase 5: Build verification"
if nix build 2>&1 | grep -q "error:"; then
  echo "  ✗ Build FAILED"
else
  echo "  ✓ Build succeeded"
fi
echo ""

# Phase 6: Creative analysis
echo "Phase 6: Creative analysis verification"
for paper in Che2025 Wang2023 Esfandyarpour2019; do
  if ls Literature/*/$(echo $paper)_*/scientific-insights.md 2>/dev/null; then
    lines=$(wc -l Literature/*/$(echo $paper)_*/scientific-insights.md 2>/dev/null | awk '{print $1}')
    if [ "$lines" -gt 100 ]; then
      echo "  ✓ $paper analysis complete ($lines lines)"
    else
      echo "  ⚠ $paper analysis too short ($lines lines)"
    fi
  else
    echo "  ✗ $paper analysis MISSING"
  fi
done
echo ""

# Overall status
echo "=== OVERALL STATUS ==="
# Count failures
failures=$(grep -c "✗" /tmp/verify_output.txt 2>/dev/null || echo 0)
if [ $failures -eq 0 ]; then
  echo "✅ ALL PHASES COMPLETE"
else
  echo "❌ $failures FAILURES DETECTED"
  echo "Review output above for details"
fi
```

**Save output to:**
```bash
Literature/INTEGRATION_SESSION_[timestamp]/verification-report.txt
```

**7.2 Generate user report**

**Create:**
```markdown
# Literature Integration Report
Session: [timestamp]
Query: "[user query]"
Status: COMPLETE | PARTIAL | FAILED

---

## Papers Integrated: [N]

1. **Che et al. 2025** - Innate Immune Dysregulation in ME/CFS
   - ✅ Downloaded: Literature/biomarkers/Che_2025_InnateImmunity/
   - ✅ Bibliography: Added as Che2025
   - ✅ Appendix: Section H.2 (Biomarkers)
   - ✅ Chapters: ch07-immune-dysfunction.tex
   - ✅ Analysis: scientific-insights.md (245 lines)
   - Key insight: NK cell exhaustion paradox suggests treatment timing matters

2. **Wang et al. 2023** - WASF3 Mitochondrial Dysfunction
   - ✅ Downloaded: Literature/pathophysiology/mitochondrial/Wang_2023_WASF3/
   - ✅ Bibliography: Added as Wang2023
   - ✅ Appendix: Section H.3 (Pathophysiology)
   - ✅ Chapters: ch06-energy-metabolism.tex
   - ✅ Analysis: scientific-insights.md (312 lines)
   - Key insight: WASF3 may be targetable with existing metabolic interventions

---

## Integration Summary

### Chapters Updated
- contents/part2-pathophysiology/ch06-energy-metabolism.tex (1 new citation)
- contents/part2-pathophysiology/ch07-immune-dysfunction.tex (2 new citations)

### New Hypotheses Added
- hyp:che2025-nk-exhaustion (Ch07)
- hyp:wang2023-wasf3 (Ch06)

### Build Status
✅ Document builds successfully
- 0 LaTeX errors
- 0 undefined citations
- 0 undefined labels

### Creative Analysis Highlights

**Treatment opportunities identified:**
1. **AHCC (Active Hexose Correlated Compound)** - Low-risk NK cell support
   - Actionable: OTC supplement, good safety profile
   - Rationale: May bypass exhaustion pathway (Che2025)
   - Recommendation: Discuss with clinician for mild-moderate patients

2. **Nicotinamide Riboside** - Mitochondrial NAD+ support
   - Actionable: Available supplement
   - Rationale: Targets WASF3-related metabolic dysfunction (Wang2023)
   - Recommendation: Consider in combination with CoQ10

**Research directions:**
- NK cell phenotyping study (cross-sectional, n=200)
- AHCC pilot trial (RCT, n=40)
- Treatment timing analysis (retrospective)

**Cross-paper insights:**
- Immune exhaustion (Che) + mitochondrial dysfunction (Wang) suggest:
  Both systems may be energy-limited, explaining treatment failures
  Sequential approach: metabolic support → immune support

---

## Next Steps

### For User Review
1. Read scientific insights:
   - Literature/biomarkers/Che_2025_InnateImmunity/scientific-insights.md
   - Literature/pathophysiology/mitochondrial/Wang_2023_WASF3/scientific-insights.md

2. Review treatment suggestions:
   - AHCC: Low-risk, worth discussing with doctor
   - Nicotinamide Riboside: Consider adding to protocol
   - Timing considerations for immune modulation

3. Consider document additions:
   - Add speculation environment for NK-mitochondrial connection?
   - Expand treatment chapter with nuanced timing discussion?

### For Further Integration
- Add more detail to ch14-treatment.tex based on insights?
- Create new section on treatment timing in Part 3?
- Add research directions to ch24-future-directions.tex?

---

## Files Created/Modified

### New Files (downloadable)
- Literature/biomarkers/Che_2025_InnateImmunity/* (5 files)
- Literature/pathophysiology/mitochondrial/Wang_2023_WASF3/* (5 files)
- Literature/INTEGRATION_SESSION_[timestamp]/* (3 files)

### Modified Files
- references.bib (+2 entries)
- contents/appendices/appendix-h-annotated-bibliography.tex (+2 entries)
- contents/part2-pathophysiology/ch06-energy-metabolism.tex (+1 environment)
- contents/part2-pathophysiology/ch07-immune-dysfunction.tex (+2 environments)

### Generated PDFs (if paper downloads succeeded)
- Literature/biomarkers/Che_2025_InnateImmunity/Che_2025.pdf
- Literature/pathophysiology/mitochondrial/Wang_2023_WASF3/Wang_2023.pdf

---

## Verification Status

All phases verified: ✅

- [x] Papers downloaded and organized
- [x] Bibliography updated and verified
- [x] Appendix updated and verified
- [x] Chapters updated and verified (grep confirms)
- [x] Document builds successfully
- [x] Creative analysis complete and substantial

---

**Coordinator completion time:** [duration]
**Total papers processed:** 2
**Success rate:** 100%
```

**7.3 Save report and notify user**

```bash
# Save report
cat > Literature/INTEGRATION_REPORT_[timestamp].md

# Display to user (coordinator output)
echo "✅ Literature integration complete!"
echo ""
echo "Papers integrated: 2"
echo "Chapters updated: 2"
echo "New treatments suggested: 3"
echo ""
echo "Full report: Literature/INTEGRATION_REPORT_[timestamp].md"
echo ""
echo "Key actionable insights:"
echo "- AHCC may support NK cell function (low-risk, discuss with doctor)"
echo "- Nicotinamide Riboside for metabolic support (consider adding)"
echo ""
echo "Review scientific insights for detailed analysis."
```

---

## Error Handling

### Phase-Level Failures

**If Phase 1 (Search) fails:**
- No papers found or search errors
- → Broaden query, try alternate keywords
- → Report to user: "No papers found for [query], try different terms?"

**If Phase 2 (Download) fails:**
- Some papers inaccessible (paywall, broken links)
- → Continue with accessible papers
- → Report: "N of M papers accessible, integrated N"

**If Phase 3 (Bibliography) fails:**
- BibTeX formatting errors
- → Attempt manual entry creation
- → Report: "Bibliography incomplete, manual review needed"

**If Phase 4 (Chapters) fails:**
- Chapter integration fails after retries
- → Mark paper as "requires manual integration"
- → Report: "Paper downloaded and cataloged, manual chapter edit needed"
- → Provide suggested LaTeX in report

**If Phase 5 (Build) fails:**
- LaTeX errors after integration
- → Syntax-fixer attempts repairs
- → If still failing: Revert chapter changes, report error
- → Report: "Build errors detected, please review"

**If Phase 6 (Analysis) fails:**
- Insights generation incomplete
- → Skip creative analysis for now
- → Report: "Papers integrated, analysis pending"
- → User can manually trigger scientific-insight-generator later

### Retry Strategy

**Per-phase retry limits:**
- Phase 1: 2 retries (different search strategies)
- Phase 2: 1 retry per paper (different download approach)
- Phase 3: 2 retries (bibliography/appendix separate)
- Phase 4: 2 retries per chapter (different insertion strategies)
- Phase 5: Syntax-fixer handles (no coordinator retry)
- Phase 6: 1 retry (regenerate insights)

**Escalation:**
After max retries, report to user with:
- What succeeded
- What failed
- Specific error details
- Suggested manual actions

---

## Success Criteria (Overall)

Workflow is COMPLETE when:

- [ ] ≥1 paper successfully downloaded
- [ ] All downloaded papers in references.bib
- [ ] All downloaded papers in Appendix H
- [ ] **All downloaded papers cited in ≥1 chapter** ⭐
- [ ] Document builds without errors
- [ ] Creative analysis generated for all papers
- [ ] Final report created
- [ ] All verifications passed

Workflow is PARTIAL when:
- Some phases succeeded
- Some papers integrated
- Build still succeeds
- User can review and decide next steps

Workflow is FAILED when:
- No papers could be integrated
- Build is broken
- Critical errors in multiple phases

---

## Coordinator Self-Verification

Before declaring workflow COMPLETE:

```bash
# Run master verification
bash Literature/INTEGRATION_SESSION_[timestamp]/verify-all.sh

# Check exit code
if [ $? -eq 0 ]; then
  echo "✅ Workflow COMPLETE"
else
  echo "❌ Workflow INCOMPLETE"
  echo "Check verification report for details"
fi
```

**Do NOT declare COMPLETE unless:**
- Verification script exits 0
- Final report shows no critical failures
- Build succeeds

---

## Usage Examples

**Example 1: Simple topic integration**
```
User: "find and integrate papers on NK cell dysfunction in ME/CFS"
Coordinator:
  → Phase 1: literature-researcher finds 3 papers
  → Phase 2: literature-manager downloads all 3
  → Phase 3: literature-manager updates bibliography + appendix
  → Phase 4: chapter-integrator edits ch07-immune-dysfunction.tex (3 papers)
  → Phase 5: syntax-fixer verifies build succeeds
  → Phase 6: scientific-insight-generator analyzes all 3
  → Phase 7: Report shows 3/3 integrated successfully
```

**Example 2: Complex multi-chapter integration**
```
User: "integrate research on mitochondrial dysfunction"
Coordinator:
  → Phase 1: Finds 5 papers (metabolism, ATP, oxidative stress)
  → Phase 2: Downloads 4/5 (one paywalled)
  → Phase 3: Updates bibliography + appendix (4 papers)
  → Phase 4: Integrates into:
      - ch06-energy-metabolism.tex (3 papers)
      - ch08-neurological.tex (1 paper - neurometabolic)
      - ch22-mechanistic-studies.tex (2 papers - methodological)
  → Phase 5: Build succeeds
  → Phase 6: Analysis reveals NAD+ depletion as common thread
  → Phase 7: Report suggests NAD+ supplementation research direction
```

**Example 3: Partial failure recovery**
```
User: "find papers on viral triggers"
Coordinator:
  → Phase 1: Finds 4 papers
  → Phase 2: Downloads 3/4 successfully
  → Phase 3: Bibliography update succeeds for 3
  → Phase 4: Chapter integration:
      - Paper 1: Success (ch07)
      - Paper 2: Success (ch05)
      - Paper 3: FAILS after 2 retries (ambiguous placement)
  → Phase 5: Build succeeds (2 papers integrated)
  → Phase 6: Analysis for Papers 1-2 succeeds
  → Phase 7: Report shows PARTIAL:
      "2/3 papers integrated, Paper 3 requires manual review"
      Provides suggested LaTeX for Paper 3
```

---

## Notes

- **Coordinator runs in main session** (not as subagent) for full control
- **Each phase must pass verification** before proceeding
- **Failed phases don't block entire workflow** (partial success is valuable)
- **User receives comprehensive report** regardless of completion status
- **All intermediate files preserved** for debugging and manual review
- **Creative analysis is valuable bonus** (not critical for basic integration)