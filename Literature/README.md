# Literature Folder Organization

This folder contains research papers, abstracts, and synthesis documents for ME/CFS research referenced in the main documentation.

## Folder Structure

### Current Organization

```
Literature/
├── 2day-CPET/                    # Cardiopulmonary exercise testing papers
├── Heng_2025_CellRepMed/         # Specific paper: Heng et al. 2025
├── severity-prognosis/           # Disease severity and prognosis studies
├── reddit_euthanasia/            # Patient testimonials and quality of life
└── [future categories]/
```

### Recommended Structure (Expand as Needed)

```
Literature/
├── biomarkers/                   # Biomarker discovery and validation
│   ├── cytokines/
│   ├── metabolites/
│   └── immune-markers/
├── pathophysiology/              # Mechanistic studies
│   ├── energy-metabolism/
│   ├── immune-dysfunction/
│   ├── neurological/
│   └── endocrine/
├── clinical-studies/             # Clinical research
│   ├── diagnostic-criteria/
│   ├── prevalence/
│   └── patient-outcomes/
├── treatments/                   # Treatment studies
│   ├── pharmacological/
│   ├── non-pharmacological/
│   └── experimental/
├── mechanisms/                   # Specific mechanisms
│   ├── 2day-CPET/               # ✓ Already exists
│   ├── cellular/
│   └── systemic/
├── severity-prognosis/          # ✓ Already exists
├── reviews/                      # Review articles
│   ├── systematic-reviews/
│   └── meta-analyses/
└── patient-perspectives/         # Patient-reported data
    └── quality-of-life/
```

## File Organization Within Each Paper Folder

### Standard Structure

Each paper should have its own folder following this pattern:

```
Literature/[category]/[FirstAuthor]_[Year]_[ShortTitle]/
├── [FirstAuthor]_[Year].pdf              # Full paper PDF (if available)
├── abstract.txt                           # Abstract with metadata
├── notes.md                               # Detailed notes and key points
├── key-findings.md                        # Main results and integration points
└── README.md                              # Paper summary
```

### Example: Cytokine Study

```
Literature/biomarkers/Hornig_2015_CytokineSignatures/
├── Hornig_2015.pdf
├── abstract.txt
├── notes.md
├── key-findings.md
└── README.md
```

### File Templates

#### abstract.txt
```
[Full abstract text from paper]

Title: [Full title]
Authors: [Full author list]
Journal: [Journal name, year, volume, issue, pages]
DOI: [doi]
PubMed: [PMID]
URL: [link]
Retrieved: [YYYY-MM-DD]
```

#### notes.md
```markdown
# [Paper Title]

**Authors:** [list]
**Journal:** [journal citation]
**DOI:** [doi]

## Key Points
- [Point 1]
- [Point 2]

## Methodology
[Study design, sample size, methods]

## Results Summary
[Key quantitative results]

## Relevance to ME/CFS Documentation
[Why this matters]

## Certainty Assessment
- **Study Quality:** High/Medium/Low
- **Sample Size:** n=X
- **Replication:** Status
- **Conflicts of Interest:** Yes/No/Unclear

## Quotes for Citation
> "[Exact quote]" (p. X)
```

#### key-findings.md
```markdown
# Key Findings: [Short Title]

## Main Findings
1. **[Finding]:** [Evidence with numbers]
2. **[Finding]:** [Evidence with numbers]

## Clinical Implications
- [Implication]

## Limitations
- [Limitation]

## Integration Points
### Chapter X: [Name]
- Could support: [specific claim]
- Environment: achievement/hypothesis/warning
```

#### README.md
```markdown
# [Paper Title]

**Authors:** [FirstAuthor] et al.
**Year:** [YYYY]
**Journal:** [Journal Name]
**DOI:** [doi]

## Summary
[2-3 sentence summary of the paper]

## Why This Matters
[Relevance to ME/CFS documentation]

## Status
- [x] PDF downloaded / [ ] PDF not available
- [x] Added to references.bib
- [x] Integrated into Chapter [X]
- [x] Cited in Appendix [Y]

## Files
- `[Author]_[Year].pdf` - Full paper
- `abstract.txt` - Abstract and metadata
- `notes.md` - Detailed analysis
- `key-findings.md` - Main results
```

## Naming Conventions

### Folder Names

**Format:** `[FirstAuthor]_[Year]_[ShortTitle]`

**Examples:**
- `Hornig_2015_CytokineSignatures`
- `Montoya_2017_ImmuneAbnormalities`
- `Naviaux_2016_Metabolomics`
- `Keller_2014_TwoDayCPET`

**Rules:**
- No spaces (use underscores or CamelCase)
- Keep ShortTitle under 25 characters
- Use descriptive keywords
- First author's last name only
- 4-digit year

### File Names

**PDFs:** `[FirstAuthor]_[Year].pdf`
- Example: `Hornig_2015.pdf`

**Other files:** Use standard names
- `abstract.txt`
- `notes.md`
- `key-findings.md`
- `README.md`

## Category Descriptions

### biomarkers/
Studies identifying and validating biomarkers for ME/CFS diagnosis, severity assessment, or subtyping.

**Examples:**
- Cytokine panels
- Metabolite signatures
- Immune cell markers
- Gene expression profiles

### pathophysiology/
Research investigating biological mechanisms underlying ME/CFS symptoms and pathology.

**Subcategories:**
- `energy-metabolism/` - ATP production, mitochondrial function, oxidative stress
- `immune-dysfunction/` - Immune activation, autoantibodies, inflammation
- `neurological/` - Brain imaging, neuroinflammation, cognitive dysfunction
- `endocrine/` - HPA axis, thyroid, hormonal dysregulation

### clinical-studies/
Research on diagnosis, prevalence, natural history, and patient characteristics.

**Subcategories:**
- `diagnostic-criteria/` - ICC, CCC, IOM criteria studies
- `prevalence/` - Epidemiological studies
- `patient-outcomes/` - Long-term outcomes, quality of life

### treatments/
Studies evaluating therapeutic interventions.

**Subcategories:**
- `pharmacological/` - Drug trials
- `non-pharmacological/` - Pacing, CBT, lifestyle interventions
- `experimental/` - Novel or investigational treatments

### mechanisms/
Studies on specific physiological mechanisms.

**Existing:**
- `2day-CPET/` - Two-day cardiopulmonary exercise testing

**Future:**
- `cellular/` - Cellular-level mechanisms
- `systemic/` - System-wide mechanisms

### reviews/
Systematic reviews, meta-analyses, and comprehensive review articles.

**Subcategories:**
- `systematic-reviews/` - PRISMA-compliant systematic reviews
- `meta-analyses/` - Quantitative meta-analyses

### patient-perspectives/
Patient-reported data, quality of life studies, testimonials.

**Existing:**
- `reddit_euthanasia/` - Patient testimonials on severity

## Workflow Integration

### When Adding a New Paper

1. **Determine category** based on primary focus
2. **Create folder** using naming convention
3. **Download PDF** (if openly available)
4. **Extract abstract** and save to `abstract.txt`
5. **Create synthesis files**: `notes.md`, `key-findings.md`, `README.md`
6. **Add to references.bib** with complete metadata
7. **Update appendix** bibliography with annotated entry
8. **Integrate into main document** with appropriate environment

### Automation

The `literature-manager` agent automates this process:
```
User: "Find papers on cytokine biomarkers in ME/CFS"
  ↓
literature-researcher: Searches and evaluates papers
  ↓
literature-manager: Downloads, organizes, integrates
  ↓
Result: Papers in Literature/biomarkers/, added to references.bib,
        integrated into relevant chapters
```

## Quality Standards

### PDF Availability

**Preference order:**
1. Open access PDF from journal
2. PubMed Central version
3. Author preprint (e.g., ResearchGate)
4. Abstract only (note "PDF not openly available")

### Metadata Requirements

Every paper folder must include:
- [ ] Abstract with full citation
- [ ] DOI or PMID
- [ ] Journal name and year
- [ ] Author list
- [ ] Retrieved date
- [ ] Keywords for categorization

### Integration Requirements

Before marking paper as "integrated":
- [ ] Added to references.bib
- [ ] BibTeX entry validates
- [ ] Cited in appendix bibliography
- [ ] Mentioned in relevant main document chapter
- [ ] Certainty assessment included (if integrated as finding)

## Maintenance

### Regular Tasks

**Monthly:**
- Check for new papers on key topics
- Update existing papers with preprint → published status
- Verify all links and DOIs still work

**Quarterly:**
- Review folder organization
- Consolidate papers if category has grown (3+ papers → subfolder)
- Update README files with new insights

**Annually:**
- Archive outdated papers (note historical context)
- Update certainty assessments based on replication
- Reorganize structure if needed

### Avoiding Duplication

Before adding a paper:
```bash
# Search for existing entry
find Literature -type d -name "*[FirstAuthor]*[Year]*"

# Check references.bib
grep -i "[firstauthor].*[year]" references.bib
```

## Examples from Current Literature

### Existing Paper: Heng 2025

```
Literature/Heng_2025_CellRepMed/
├── README.md
└── [other files as appropriate]
```

**Category suggestion:** Could be moved to `Literature/pathophysiology/immune-dysfunction/` if that category is created, or remain at top level if it's the only paper from this author/topic.

### Existing Category: 2day-CPET

```
Literature/2day-CPET/
└── [multiple papers on 2-day CPET methodology]
```

**Well-organized:** Multiple papers on same specific topic, kept together.

### Existing Category: severity-prognosis

```
Literature/severity-prognosis/
└── [papers on disease severity and outcomes]
```

**Good practice:** Thematic organization for a specific research question.

## See Also

- [.claude/agents/literature-manager.md](../.claude/agents/literature-manager.md) - Automated literature management
- [.claude/agents/literature-researcher.md](../.claude/agents/literature-researcher.md) - Literature search
- [.claude/workflows/literature-integration.md](../.claude/workflows/literature-integration.md) - Complete workflow
- [references.bib](../references.bib) - BibTeX database
- [contents/appendices/appendix-h-annotated-bibliography.tex](../contents/appendices/appendix-h-annotated-bibliography.tex) - Annotated bibliography

---

**Last Updated:** 2026-01-22
**Maintained by:** literature-manager agent
**Status:** Active - Growing collection