# Literature Integration Workflow

Complete process for finding, downloading, organizing, and integrating research papers into the ME/CFS documentation.

## When to Use This Workflow

- Writing a new section that needs citations
- User mentions a specific paper or research finding
- Need to verify a medical claim
- Searching for evidence on a topic
- Updating document with recent research

## Workflow Steps

### Step 1: Search for Literature

**Agent:** `literature-researcher`

**Trigger phrases:**
- "Find papers on [topic]"
- "Search for research about [mechanism]"
- "What evidence exists for [claim]?"
- "Verify this claim against published research"

**Actions:**
1. Search PubMed, medical journals, clinical databases
2. Evaluate source quality (peer-review, sample size, impact)
3. Identify 3-5 most relevant papers
4. Assess certainty and conflicts of interest

**Output:**
```
Found 4 relevant papers:
1. Hornig et al. 2015 - Cytokine signatures (Science Advances)
2. Montoya et al. 2017 - Immune abnormalities (PNAS)
3. Naviaux et al. 2016 - Metabolomics (PNAS)
4. VanElzakker et al. 2019 - Neuroinflammation (Frontiers)
```

### Step 2: Download and Organize

**Agent:** `literature-manager`

**Automatic trigger:** When literature-researcher finds papers

**Actions:**
1. Determine appropriate Literature subfolder
2. Create folder structure: `Literature/[category]/[Author]_[Year]_[ShortTitle]/`
3. Download PDF (if openly available) or save abstract
4. Create synthesis files:
   - `abstract.txt` - Full abstract with metadata
   - `notes.md` - Key points and methodology
   - `key-findings.md` - Main results and integration points
   - `README.md` - Paper summary

**Example structure created:**
```
Literature/biomarkers/Hornig_2015_CytokineSignatures/
├── Hornig_2015.pdf
├── abstract.txt
├── notes.md
├── key-findings.md
└── README.md
```

### Step 3: Add to BibTeX Database

**Agent:** `literature-manager`

**Actions:**
1. Create complete BibTeX entry
2. Add to `references.bib`
3. Include: author, title, journal, year, DOI, PMID, keywords
4. Validate with biber

**Example entry:**
```bibtex
@article{Hornig2015,
  author = {Hornig, Mady and Montoya, Jose G. and Klimas, Nancy G. and others},
  title = {Distinct plasma immune signatures in ME/CFS are present early in the course of illness},
  journal = {Science Advances},
  year = {2015},
  volume = {1},
  number = {1},
  pages = {e1400121},
  doi = {10.1126/sciadv.1400121},
  pmid = {26079000},
  keywords = {ME/CFS, cytokines, biomarkers, immune dysfunction}
}
```

### Step 4: Update Appendix Bibliography

**Agent:** `literature-manager`

**File:** `contents/appendices/appendix-h-annotated-bibliography.tex`

**Actions:**
1. Identify appropriate section (Biomarkers, Pathophysiology, Clinical Studies, etc.)
2. Add `\bibentry{citekey}`
3. Write paragraph summarizing key findings
4. Note relevance to document chapters
5. Include certainty assessment

**Example appendix entry:**
```latex
\subsection{Biomarkers and Immune Dysfunction}

\bibentry{Hornig2015}

\paragraph{Key Findings:}
This landmark study identified distinct cytokine signatures in early-stage ME/CFS patients.
The 8-cytokine panel differentiated patients from controls with 94\% accuracy in the first 3 years of illness.
Notably, cytokine patterns differed between short-duration (<3 years) and long-duration (>3 years) patients.

\paragraph{Relevance:}
Provides evidence for immune-based biomarkers discussed in Chapter~\ref{ch:immune-dysfunction}.
Supports the hypothesis that ME/CFS involves early immune activation followed by potential exhaustion.

\paragraph{Certainty Assessment:}
\begin{itemize}
  \item \textbf{Quality:} High (published in \emph{Science Advances}, rigorous methodology)
  \item \textbf{Sample:} n=298 ME/CFS patients, n=348 controls
  \item \textbf{Replication:} Replicated in independent cohorts
  \item \textbf{Limitations:} Cross-sectional design; cytokine patterns may vary by subgroup
\end{itemize}
```

### Step 5: Integrate into Main Document

**Agent:** `literature-manager`

**Actions:**
1. Identify relevant chapter/section
2. Choose appropriate environment based on finding type
3. Add citation with context
4. Include certainty note if needed

**Integration patterns:**

#### Novel Finding (High Certainty)
```latex
\begin{achievement}[Validated Biomarker Panel]
\label{ach:cytokine-panel}
Hornig et al.~\cite{Hornig2015} identified and validated an 8-cytokine signature
that distinguishes early-stage ME/CFS patients from controls with 94\% accuracy
(n=298 patients, n=348 controls, p<0.001).
\end{achievement}
```

#### Supporting Evidence
```latex
Multiple studies have identified immune dysregulation in ME/CFS patients.
Elevated cytokine levels, particularly IL-8, IL-10, and TGF-$\beta$, appear
consistently across cohorts~\cite{Hornig2015,Montoya2017}, with effect sizes
ranging from Cohen's d=0.6 to 1.2.
```

#### Hypothesis or Preliminary Finding (Medium Certainty)
```latex
\begin{hypothesis}[Immune Profile Evolution]
\label{hyp:immune-evolution}
Preliminary evidence suggests cytokine patterns may evolve over disease
duration~\cite{Hornig2015}, with early-stage patients showing elevated
pro-inflammatory markers that decrease in chronic cases.
However, longitudinal studies are needed to confirm this temporal pattern.
\end{hypothesis}
```

#### Caveat or Limitation
```latex
\begin{warning}[Biomarker Variability]
While cytokine signatures show diagnostic promise~\cite{Hornig2015}, substantial
inter-patient heterogeneity exists.
The 8-cytokine panel achieved 94\% accuracy in early-stage disease but lower
sensitivity in chronic patients, suggesting phenotypic shifts or subgroup differences.
\end{warning}
```

#### Conflicting Evidence
```latex
Evidence for immune activation in ME/CFS is mixed.
While Hornig et al.~\cite{Hornig2015} found elevated pro-inflammatory cytokines
in early-stage patients, other studies report unchanged or even decreased levels
in chronic cohorts~\cite{ConflictingStudy2018}.
These discrepancies may reflect disease duration, subgroup differences, or methodological variations.
```

### Step 6: Quality Assurance

**Checks:**
- [ ] PDF downloaded (or abstract saved if unavailable)
- [ ] Synthesis files created (notes.md, key-findings.md)
- [ ] BibTeX entry added to references.bib
- [ ] BibTeX validates with biber
- [ ] Appendix bibliography updated
- [ ] Main document integration complete
- [ ] Appropriate environment chosen (achievement/hypothesis/warning)
- [ ] Certainty assessment included
- [ ] Label added for cross-referencing
- [ ] Build succeeds with `nix build`

## Decision Trees

### Which Environment to Use?

```
Is this paper's finding...
├─ A novel discovery from your work? → achievement
├─ Matching existing published data? → postdiction
├─ A testable prediction? → prediction
├─ An unproven hypothesis? → hypothesis
├─ A caveat or limitation? → warning
├─ An unresolved question? → open_question
└─ Standard background info? → Regular paragraph with \cite{}
```

### Which Literature Subfolder?

```
Paper topic:
├─ Biomarker discovery? → Literature/biomarkers/
├─ Pathophysiology mechanism?
│   ├─ Energy/mitochondria? → Literature/pathophysiology/energy-metabolism/
│   ├─ Immune system? → Literature/pathophysiology/immune-dysfunction/
│   ├─ Neurological? → Literature/pathophysiology/neurological/
│   └─ Endocrine? → Literature/pathophysiology/endocrine/
├─ Clinical studies?
│   ├─ Diagnostic criteria? → Literature/clinical-studies/diagnostic-criteria/
│   ├─ Prevalence? → Literature/clinical-studies/prevalence/
│   └─ Outcomes? → Literature/clinical-studies/patient-outcomes/
├─ Treatment?
│   ├─ Drugs? → Literature/treatments/pharmacological/
│   ├─ Non-drug? → Literature/treatments/non-pharmacological/
│   └─ Experimental? → Literature/treatments/experimental/
├─ Exercise testing? → Literature/mechanisms/2day-CPET/ (existing)
├─ Review article? → Literature/reviews/systematic-reviews/ or meta-analyses/
└─ Severity/prognosis? → Literature/severity-prognosis/ (existing)
```

### Certainty Assessment

```
Study characteristics:
├─ Sample size?
│   ├─ n>100 → +High
│   ├─ n=20-100 → Medium
│   └─ n<20 → Low
├─ Publication status?
│   ├─ Peer-reviewed reputable journal → +High
│   ├─ Peer-reviewed smaller journal → Medium
│   └─ Preprint → -Low
├─ Replication?
│   ├─ Replicated independently → +High
│   ├─ Single study → Medium
│   └─ Contradicted by others → -Low
└─ Methodology?
    ├─ Rigorous design → +High
    ├─ Adequate but limited → Medium
    └─ Flawed → -Low

Final: Average across criteria
```

## Common Patterns

### Pattern 1: Updating Chapter with Recent Research

**Scenario:** Adding new findings to existing chapter

1. Search: "Find 2024-2026 papers on ME/CFS immune dysfunction"
2. literature-researcher finds 5 recent papers
3. literature-manager downloads top 3
4. Organize in Literature/pathophysiology/immune-dysfunction/
5. Add to references.bib
6. Update Appendix H under "Immune Dysfunction"
7. Add to Chapter 7 (Immune Dysfunction) with appropriate environments
8. Note certainty for each finding

### Pattern 2: Verifying an Existing Claim

**Scenario:** Document states "Mitochondrial dysfunction is common in ME/CFS"

1. Search: "Find evidence for mitochondrial dysfunction in ME/CFS"
2. literature-researcher finds supporting and conflicting papers
3. literature-manager downloads both sides
4. Organize in Literature/pathophysiology/energy-metabolism/
5. Update document to reflect evidence strength:
   - If strong evidence → Keep claim, add citations
   - If mixed evidence → Add warning box noting controversy
   - If weak evidence → Rephrase as hypothesis, not fact

### Pattern 3: Writing New Section from Scratch

**Scenario:** Creating new section on "Post-Exertional Malaise Mechanisms"

1. Search: "Find comprehensive reviews on PEM mechanisms"
2. literature-researcher finds systematic reviews + original studies
3. literature-manager downloads and organizes all papers
4. Create section outline based on literature themes
5. Integrate findings with appropriate environments
6. Build argument from high-certainty → medium-certainty → speculative
7. End with open questions for future research

## Output Report

After completing workflow, provide:

```
📚 LITERATURE INTEGRATION COMPLETE

PAPERS PROCESSED: [N]

📁 LITERATURE FOLDERS UPDATED:
   - Literature/biomarkers/Hornig_2015_CytokineSignatures/ ✓
   - Literature/pathophysiology/immune-dysfunction/Montoya_2017/ ✓
   - [etc.]

📖 REFERENCES.BIB: [N] entries added
   - @article{Hornig2015,...} ✓
   - @article{Montoya2017,...} ✓

📚 APPENDIX UPDATED: appendix-h-annotated-bibliography.tex
   Sections modified:
   - Biomarkers and Immune Dysfunction ✓
   - Pathophysiology ✓

✍️ MAIN DOCUMENT INTEGRATED:
   Chapter 7 (Immune Dysfunction):
   - Added Achievement: Cytokine Signature (line X)
   - Added Hypothesis: Immune Evolution (line Y)
   - Added Warning: Biomarker Variability (line Z)

   Chapter 2 (Core Symptoms):
   - Updated PEM description with citations (line W)

🎯 CERTAINTY SUMMARY:
   High certainty: 2 findings
   Medium certainty: 3 findings
   Low certainty: 1 finding

✅ BUILD STATUS: Success (nix build)

💡 RECOMMENDATIONS:
   - Consider adding section on cytokine patterns in Chapter 7
   - Open question identified: mechanisms of immune profile evolution
   - Suggest creating open_question environment for this gap
```

## Best Practices

### DO:
- Download papers proactively when writing new sections
- Create comprehensive synthesis files (notes.md, key-findings.md)
- Include certainty assessment for every integrated finding
- Use appropriate theorem-like environments
- Organize Literature folder with meaningful structure
- Note when PDFs are unavailable
- Distinguish replicated findings from single studies
- Update appendix bibliography consistently

### DON'T:
- Overstate certainty of preliminary findings
- Integrate papers without reading abstracts
- Skip BibTeX validation
- Create duplicate folder structures
- Ignore conflicting evidence
- Add papers without proper metadata (DOI, PMID)
- Use achievement environment for hypotheses
- Forget to note conflicts of interest

## Troubleshooting

### PDF Download Fails
```bash
# If DOI doesn't work, try:
# 1. Check for open access version on PubMed Central
# 2. Look for author preprint
# 3. Save abstract and note "PDF not openly available"
```

### BibTeX Validation Errors
```bash
cd /home/nicky/code/health-me-cfs
biber --tool --validate-datamodel references.bib
# Fix errors shown
```

### Duplicate Papers
```bash
# Check if paper already exists
find Literature -type d -name "*[FirstAuthor]*[Year]*"
# If exists, update existing files rather than create duplicates
```

### Folder Structure Unclear
```bash
# List existing structure
find Literature -type d -maxdepth 2
# Match new paper to existing categories
```

## See Also

- [CLAUDE.md](../CLAUDE.md) - Literature management system overview
- [agents/literature-researcher.md](../agents/literature-researcher.md) - Search agent
- [agents/literature-manager.md](../agents/literature-manager.md) - Integration agent
- [template-environments.md](../template-environments.md) - Environment selection