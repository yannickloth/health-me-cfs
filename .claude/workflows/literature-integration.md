# Literature Integration Workflow

Complete pipeline for finding, downloading, organizing, and integrating research papers.

## When to Use

- Writing a new section that needs citations
- User mentions a specific paper or research finding
- Need to verify a medical claim
- Searching for evidence on a topic
- Updating document with recent research

## Trigger Phrases

- "find and integrate papers on [topic]"
- "add citations for [claim]"
- "search for research on [mechanism]"
- "what evidence exists for [claim]?"

---

## Workflow Overview

**Single agent handles full pipeline:** `literature-integrator`

```
literature-integrator (search → download → organize → bib → appendix → guide)
    ↓
chapter-integrator (edit chapter files using integration guide)
    ↓
test-runner (verify build)
```

**Optional creative analysis:** `scientific-insight-generator`

---

## Phase 1: Literature Integration

**Agent:** `literature-integrator`

**Input:** Topic or specific paper reference

**Actions:**
1. Search PubMed, medical journals, clinical databases
2. Evaluate source quality (peer-review, sample size, impact)
3. Download PDFs or save abstracts
4. Create folder structure in Literature/
5. Add to references.bib
6. Update appendix-h-annotated-bibliography.tex
7. Create integration-guide.md for chapter-integrator

**Output per paper:**
```
Literature/[category]/[Author]_[Year]_[ShortTitle]/
├── [Author]_[Year].pdf (if available)
├── abstract.txt
├── notes.md
├── key-findings.md
├── integration-guide.md
└── README.md
```

**Verification:**
```bash
# Check folder exists
ls Literature/[category]/[Author]_[Year]_[ShortTitle]/

# Check BibTeX entry
grep "@article{[CitationKey]" references.bib

# Check appendix updated
grep "cite{[CitationKey]}" contents/appendices/appendix-h*.tex
```

---

## Phase 2: Chapter Integration

**Agent:** `chapter-integrator`

**Input:** Integration guide from Phase 1

**Actions:**
1. Read integration-guide.md
2. Locate target section in chapter file
3. Add citation with appropriate environment
4. Include certainty assessment

**Integration patterns:**

### Novel Finding (High Certainty)
```latex
\begin{achievement}[Title]
\label{ach:author2024-topic}
Author et al.~\cite{Author2024} found [key finding]
(n=[number], [design], certainty: High).
\end{achievement}
```

### Hypothesis (Medium Certainty)
```latex
\begin{hypothesis}[Title]
\label{hyp:author2024-topic}
Preliminary evidence suggests [finding]~\cite{Author2024},
though replication in larger cohorts is needed
(n=[number], single study, certainty: Medium).
\end{hypothesis}
```

### Inline Citation
```latex
This mechanism is further supported by Author et al.~\cite{Author2024},
who found [specific finding] in a cohort of [n] patients.
```

**Verification:**
```bash
# Check citation appears in chapter
grep "cite{[CitationKey]}" contents/part*/*.tex
```

---

## Phase 3: Build Verification

**Agent:** `test-runner`

**Actions:**
1. Run `nix build`
2. Check for undefined citations
3. Check for undefined labels
4. Report any errors

---

## Phase 4: Creative Analysis (Optional)

**Agent:** `scientific-insight-generator`

**When:** User requests deeper analysis or treatment implications

**Output:** `Literature/[category]/[Author]_[Year]/scientific-insights.md`

**Contains:**
- Novel biological phenomena
- Treatment implications (medications + supplements)
- Research directions
- Cross-paper connections

---

## Decision Trees

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
├─ Review article? → Literature/reviews/
└─ Severity/prognosis? → Literature/severity-prognosis/
```

### Which Environment?

```
Finding type:
├─ Novel discovery unique to this work? → achievement
├─ Matches existing published data? → postdiction
├─ Testable prediction? → prediction
├─ Unproven hypothesis? → hypothesis
├─ Caveat or limitation? → warning
├─ Unresolved question? → open_question
└─ Standard background info? → Regular paragraph with \cite{}
```

### Certainty Assessment

| Factor | High | Medium | Low |
|--------|------|--------|-----|
| Sample size | n>100 | n=20-100 | n<20 |
| Publication | Top journal | Peer-reviewed | Preprint |
| Replication | Independent replication | Single study | Contradicted |
| Methodology | Rigorous | Adequate | Flawed |

---

## Output Report

```
📄 PAPER PROCESSED: [Author] et al. ([Year])

📁 SAVED TO: Literature/[category]/[Author]_[Year]_[ShortTitle]/
   ✅ [Author]_[Year].pdf (or: ⚠️ abstract only)
   ✅ abstract.txt
   ✅ notes.md
   ✅ key-findings.md
   ✅ integration-guide.md

📚 REFERENCES.BIB: ✅ Added @[citekey]

📖 APPENDIX: ✅ Updated appendix-h-annotated-bibliography.tex

✍️ CHAPTER INTEGRATION:
   - [chapter file]: Added [environment type] (line X)

🎯 CERTAINTY: [High/Medium/Low]

✅ BUILD: Success
```

---

## See Also

- [literature-integrator.md](../agents/literature-integrator.md) - Full pipeline agent
- [chapter-integrator.md](../agents/chapter-integrator.md) - Chapter editing agent
- [test-runner.md](../agents/test-runner.md) - Build verification agent
