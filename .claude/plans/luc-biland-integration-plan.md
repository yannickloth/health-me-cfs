# Luc Biland Feedback Integration Plan

**Created:** 2026-01-30
**Source:** Reader feedback on chapters 16+
**Goal:** Research, integrate, and creatively explore all suggested topics

---

## Model Selection Philosophy

Tasks are assigned to the cheapest capable model:

| Model | Use For | Cost |
|-------|---------|------|
| **Haiku** | Mechanical: searches, file reads, pattern extraction, templated writes, BibTeX creation | $ |
| **Sonnet** | Judgment: content writing, summarization, integration decisions, quality review | $$ |
| **Opus** | Creative: novel hypotheses, cross-domain synthesis, brainstorming | $$$ |

**Principle:** Break complex tasks into mechanical sub-tasks. Provide explicit templates and examples.

---

## Feedback Loop Architecture

Research is iterative. Haiku searches may return unexpected results requiring course correction.

### Search-Triage-Decide Pattern

**Initial search:**

- HAIKU: Execute predefined queries → raw URL list + snippet summaries

**Triage:**

- SONNET: Review results for relevance → Identify gaps → Decide: PROCEED / REFINE / ESCALATE

**Decision branches:**

- PROCEED (results adequate) → Continue to extraction
- REFINE (adjust queries) → HAIKU: new search batch → 2nd triage → {PROCEED or ESCALATE}
- ESCALATE (2nd refinement inadequate) → OPUS: Creative query reformulation / alternative sources / document gap

### Triage Decision Criteria (for Sonnet)

**PROCEED when:**
- ≥2 relevant peer-reviewed sources found
- At least 1 RCT or systematic review (for treatments)
- Mechanism papers available (for pathophysiology)

**REFINE when:**
- Results off-topic (wrong condition, wrong intervention)
- Only tangentially related papers
- Missing key aspect (e.g., found mechanism but no clinical data)
- Query too broad (>50 results, mostly noise)
- Query too narrow (0-1 results)

**ESCALATE when:**
- 2nd refinement still inadequate
- Topic appears under-researched (document as gap)
- Conflicting evidence requiring judgment
- Results suggest topic redefinition needed

### Refinement Query Templates (Haiku)

When Sonnet returns REFINE with reason, Haiku uses these patterns:

| Problem | Refinement Pattern |
|---------|-------------------|
| Too broad | Add: `"[specific condition]" AND "[mechanism]"` |
| Too narrow | Remove qualifiers, try synonyms |
| Wrong condition | Replace condition term with ME/CFS synonyms |
| Only animal | Add: `"clinical trial" OR "human subjects"` |
| Only reviews | Add: `"randomized" OR "controlled trial"` |
| Missing mechanism | Separate search: `"[compound] mechanism of action"` |

### Cost Impact

| Scenario | Additional Cost |
|----------|-----------------|
| PROCEED (ideal) | +0 |
| 1 REFINE cycle | +1 Haiku + 1 Sonnet triage |
| 2 REFINE cycles | +2 Haiku + 2 Sonnet triage |
| ESCALATE | +1 Opus decision |

**Expected distribution:**
- 60% PROCEED immediately
- 30% 1 REFINE cycle
- 8% 2 REFINE cycles
- 2% ESCALATE to Opus

---

## Task Templates (Reusable)

### Template A: Web Search (Haiku)
```
Search query: "[specific term] [condition] [study type]"
Output: List of URLs with titles, one per line
No analysis, just collect links
```

### Template B: Paper Summary (Haiku)
```
Read: [URL or file path]
Extract to structured format:
- Title:
- Authors:
- Year:
- DOI:
- Key finding (1 sentence):
- Mechanism (1 sentence):
- Sample size:
- Limitations:
```

### Template C: BibTeX Entry (Haiku)
```
Given structured data, output BibTeX:
@article{[AuthorYearKeyword],
  author = {[Last, First and ...]},
  title = {[Title]},
  journal = {[Journal]},
  year = {[Year]},
  volume = {[Vol]},
  pages = {[Pages]},
  doi = {[DOI]}
}
```

### Template D: Appendix H Entry (Sonnet)
```
Given paper summary, write 150-word annotation following existing style in appendix-h-annotated-bibliography.tex
Include: context, methodology, key findings, ME/CFS relevance, limitations
```

### Template E: Chapter Integration (Sonnet)
```
Given: annotation + target chapter location
Task: Write 2-3 paragraphs integrating finding into existing narrative
Include: \cite{} references, connections to adjacent content
```

---

## Phase 1: Missing Topics

### 1.1 Devil's Claw (Harpagophytum procumbens)

| Step | Model | Task | Output |
|------|-------|------|--------|
| 1.1.1 | Haiku | Web search: "Harpagophytum procumbens chronic pain RCT systematic review" | URL list |
| 1.1.2 | Haiku | Web search: "Devil's Claw harpagoside mechanism COX-2 TNF-alpha" | URL list |
| 1.1.3 | Haiku | Web search: "Harpagophytum drug interactions anticoagulant" | URL list |
| 1.1.T | Sonnet | **TRIAGE:** Review 1.1.1-1.1.3 results → PROCEED/REFINE/ESCALATE | Decision |
| 1.1.4 | Haiku | For each relevant URL: Extract paper data using Template B | Structured summaries |
| 1.1.5 | Haiku | Create BibTeX entries using Template C | references.bib additions |
| 1.1.6 | Sonnet | Write Appendix H entry using Template D | appendix-h addition |
| 1.1.7 | Sonnet | Write ch15 integration using Template E (pain section) | ch15 edit |
| 1.1.8 | Haiku | Verify citations compile: `nix build` | Pass/fail |

**Target location:** `contents/part3-treatment/ch15-medications-systems.tex` pain management section

---

### 1.2 Ketamine

| Step | Model | Task | Output |
|------|-------|------|--------|
| 1.2.1 | Haiku | Read existing: `Literature/treatments/ketamine/README.md` | Content |
| 1.2.2 | Haiku | List all files in `Literature/treatments/ketamine/` | File list |
| 1.2.3 | Haiku | For each file: Extract using Template B | Structured summaries |
| 1.2.4 | Haiku | Web search: "ketamine fibromyalgia chronic pain clinical trial" | URL list |
| 1.2.5 | Haiku | Web search: "ketamine NMDA glutamate neuroinflammation" | URL list |
| 1.2.6 | Haiku | Web search: "low dose ketamine chronic fatigue" | URL list |
| 1.2.T | Sonnet | **TRIAGE:** Review 1.2.4-1.2.6 results → PROCEED/REFINE/ESCALATE | Decision |
| 1.2.7 | Haiku | Create BibTeX entries using Template C | references.bib additions |
| 1.2.8 | Sonnet | Write Appendix H entry using Template D | appendix-h addition |
| 1.2.9 | Sonnet | Write ch18 integration (emerging therapies) | ch18 edit |
| 1.2.10 | Haiku | Verify build | Pass/fail |

**Target location:** `contents/part3-treatment/ch18-emerging-therapies.tex`

---

### 1.3 MedUni Wien Resources

| Step | Model | Task | Output |
|------|-------|------|--------|
| 1.3.1 | Haiku | Web search: "MedUni Wien ME/CFS Medikamentenliste" | URL |
| 1.3.2 | Haiku | Web search: "MedUni Wien ME/CFS Diagnosekriterien Kompendium" | URL |
| 1.3.T | Sonnet | **TRIAGE:** Review 1.3.1-1.3.2 results → PROCEED/REFINE/ESCALATE | Decision |
| 1.3.3 | Haiku | Fetch each URL, extract document text | Raw content |
| 1.3.4 | Haiku | Extract medication list to structured format (name, dose, indication) | Table |
| 1.3.5 | Haiku | Extract diagnostic criteria to structured format | List |
| 1.3.6 | Sonnet | Compare MedUni list with our ch15 coverage, identify gaps | Gap analysis |
| 1.3.7 | Sonnet | Write Appendix H entry for MedUni resources | appendix-h addition |
| 1.3.8 | Haiku | Add cross-reference to ch04 diagnostic section | ch04 edit |
| 1.3.9 | Haiku | Verify build | Pass/fail |

**Note:** This is a clinical resource, not a research paper. Annotate as institutional guideline.
**Refinement hint:** If not found, try "Charité ME/CFS" or "ÖGK ME/CFS Leitlinie" as alternatives.

---

## Phase 2: Literature Ready (Quick Wins)

### 2.1 PEA (Palmitoylethanolamide)

| Step | Model | Task | Output |
|------|-------|------|--------|
| 2.1.1 | Haiku | Read: `Literature/treatments/pain-management/LangIlievich_2023_PEA_ChronicPain/` all files | Content |
| 2.1.2 | Haiku | Extract paper data using Template B | Structured summary |
| 2.1.3 | Haiku | Web search: "palmitoylethanolamide mast cell PPAR-alpha mechanism" | URL list |
| 2.1.4 | Haiku | Web search: "PEA micronized ultramicronized bioavailability dosing" | URL list |
| 2.1.T | Sonnet | **TRIAGE:** Review 2.1.3-2.1.4 results → PROCEED/REFINE/ESCALATE | Decision |
| 2.1.5 | Haiku | Create BibTeX entries using Template C | references.bib additions |
| 2.1.6 | Sonnet | Write Appendix H entry | appendix-h addition |
| 2.1.7 | Sonnet | Expand existing ch15 mention (line ~862) to full subsection | ch15 edit |
| 2.1.8 | Haiku | Add cross-reference to ch07 mast cell section | ch07 edit |
| 2.1.9 | Haiku | Verify build | Pass/fail |

**Target:** Expand brief mention in ch15 to proper treatment discussion.
**Note:** Local literature already exists - triage focuses on supplementary searches only.

---

### 2.2 Statins (Immunomodulatory)

| Step | Model | Task | Output |
|------|-------|------|--------|
| 2.2.1 | Haiku | List files in `Literature/treatments/immunomodulators/statins/` | File list |
| 2.2.2 | Haiku | Read each file, extract using Template B | Structured summaries |
| 2.2.3 | Haiku | Web search: "statin pleiotropic effects immunomodulation anti-inflammatory" | URL list |
| 2.2.4 | Haiku | Web search: "statin CoQ10 depletion mitochondrial" | URL list |
| 2.2.T | Sonnet | **TRIAGE:** Review 2.2.3-2.2.4 results → PROCEED/REFINE/ESCALATE | Decision |
| 2.2.5 | Haiku | Create BibTeX entries using Template C | references.bib additions |
| 2.2.6 | Sonnet | Write Appendix H entry | appendix-h addition |
| 2.2.7 | Sonnet | Write ch15 immunomodulators subsection | ch15 edit |
| 2.2.8 | Haiku | Add warning box to ch16 CoQ10 section | ch16 edit |
| 2.2.9 | Haiku | Verify build | Pass/fail |

**Key point:** Must include CoQ10 depletion warning prominently.
**Note:** Local literature already exists - triage focuses on supplementary searches only.

---

## Phase 3: Enhancement

### 3.1 Pregnenolone

| Step | Model | Task | Output |
|------|-------|------|--------|
| 3.1.1 | Haiku | Read: `Literature/treatments/neurosteroids/Nguyen_2022_LongCOVID_Supplement/` | Content |
| 3.1.2 | Haiku | Grep existing mentions: `contents/` for "pregnenolone" | Locations |
| 3.1.3 | Haiku | Web search: "pregnenolone TRPM3 channel activation" | URL list |
| 3.1.4 | Haiku | Web search: "pregnenolone fatigue cognitive neurosteroid" | URL list |
| 3.1.T | Sonnet | **TRIAGE:** Review 3.1.3-3.1.4 results → PROCEED/REFINE/ESCALATE | Decision |
| 3.1.5 | Haiku | Extract data using Template B | Structured summaries |
| 3.1.6 | Haiku | Create BibTeX entries | references.bib additions |
| 3.1.7 | Sonnet | Write Appendix H entry | appendix-h addition |
| 3.1.8 | Sonnet | Write ch16 supplements section (clinical use) | ch16 edit |
| 3.1.9 | Haiku | Add cross-reference to ch14h TRPM3 section | ch14h edit |
| 3.1.10 | Haiku | Verify build | Pass/fail |

**Refinement hint:** If TRPM3 literature sparse, search "pregnenolone sulfate ion channel" instead.

---

### 3.2 Electrolyte/HIT Warning

| Step | Model | Task | Output |
|------|-------|------|--------|
| 3.2.1 | Haiku | Web search: "histamine intolerance citric acid food additives" | URL list |
| 3.2.2 | Haiku | Web search: "oral rehydration solution homemade recipe" | URL list |
| 3.2.3 | Haiku | Web search: "POTS salt loading protocol histamine safe" | URL list |
| 3.2.T | Sonnet | **TRIAGE:** Review 3.2.1-3.2.3 for practical guidance quality → PROCEED/REFINE | Decision |
| 3.2.4 | Haiku | Grep existing electrolyte content in document | Locations |
| 3.2.5 | Sonnet | Write warning box content (problematic ingredients list) | LaTeX box |
| 3.2.6 | Haiku | Insert warning box at identified location | ch16 edit |
| 3.2.7 | Sonnet | Write HIT-safe homemade electrolyte recipe | Recipe text |
| 3.2.8 | Haiku | Add recipe to appendix practical guidance | appendix edit |
| 3.2.9 | Haiku | Verify build | Pass/fail |

**No formal literature needed** - this is practical clinical guidance.
**Note:** Triage here assesses practical utility, not academic rigor. Patient forums/blogs acceptable.

---

### 3.3 Patient Protocol Audit

| Step | Model | Task | Output |
|------|-------|------|--------|
| 3.3.1 | Haiku | Read current appendix-i-*.tex files | Content |
| 3.3.2 | Haiku | Extract current medication list to structured format | Table |
| 3.3.3 | Haiku | Compare with Luc's list, identify missing items | Gap list |
| 3.3.4 | Haiku | For each missing item: grep document for existing coverage | Coverage map |
| 3.3.5 | Sonnet | For items with coverage: add patient-specific rationale | appendix-i edits |
| 3.3.6 | Sonnet | For items without coverage: flag for research phase | Todo list |
| 3.3.7 | Haiku | Verify build | Pass/fail |

**Medications to check:**
- LDA 1.5mg, Cerebokan 80mg, Levocetirizine 5mg, Ivabradine 2.5mg x2
- Cimetidine 200mg, Ketotifen 1mg, LDN 0.5mg, Quviviq 25mg PRN
- Mestinon 20mg

**Supplements to check:**
- Tetesept Mg + amino acids, Vit C/D3/Zinc, PQQ/Glutathione/Q10
- PEA 400mg, L-Arginine + L-Citrulline-Malat, Devil's Claw, D-Ribose

---

## Phase 4: Creative Synthesis (Opus Only)

**Prerequisites:** All Phase 1-3 tasks complete.

| Step | Model | Task | Output |
|------|-------|------|--------|
| 4.1 | Haiku | Collect all new Appendix H entries into single file | Summary doc |
| 4.2 | Haiku | Extract mechanisms from each entry (1 line each) | Mechanism list |
| 4.3 | Opus | Cross-topic connections: identify overlapping mechanisms | Connection map |
| 4.4 | Opus | Phenotype matching: which treatments for which subgroups? | Decision matrix |
| 4.5 | Opus | Novel hypotheses: generate testable predictions | Hypothesis list |
| 4.6 | Opus | Treatment stacking: propose combination protocols | Protocol drafts |
| 4.7 | Sonnet | Write ch14 speculative section from Opus outputs | ch14 edit |
| 4.8 | Haiku | Verify build | Pass/fail |

**Brainstorm prompts for Opus:**
- PEA + Devil's Claw + LDN: triple anti-inflammatory stack?
- Pregnenolone + Ketamine: neuroplasticity combination?
- Statin + CoQ10 + D-Ribose: mitochondrial paradox resolution?
- Cimetidine + H1 blocker: comprehensive histamine blockade rationale?
- Electrolyte/HIT connection to mast cell subset?

---

## Execution Pipeline

### Per-Topic Workflow

```
┌─────────────────────────────────────────────────────────────┐
│ HAIKU: Search & Collect                                     │
│ - Web searches (specific queries)                           │
│ - Read existing literature files                            │
│ - Extract to structured format                              │
│ - Create BibTeX entries from template                       │
└─────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────┐
│ SONNET: Write & Integrate                                   │
│ - Write Appendix H annotation (150 words)                   │
│ - Write chapter integration (2-3 paragraphs)                │
│ - Quality review of content                                 │
└─────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────┐
│ HAIKU: Mechanical Integration                               │
│ - Insert cross-references                                   │
│ - Add citations to existing text                            │
│ - Run build verification                                    │
└─────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────┐
│ OPUS: Creative Synthesis (batch at end)                     │
│ - Cross-topic connections                                   │
│ - Novel hypotheses                                          │
│ - Treatment combinations                                    │
└─────────────────────────────────────────────────────────────┘
```

---

## Parallelization Strategy

**Can run in parallel (no dependencies):**
- All Phase 1 topics (1.1, 1.2, 1.3)
- All Phase 2 topics (2.1, 2.2)
- All Phase 3 topics (3.1, 3.2, 3.3)

**Must run sequentially:**
- Within each topic: steps are sequential
- Phase 4 requires Phase 1-3 completion
- Build verification after each topic

**Recommended batching:**
```
Batch 1: 1.1.1-1.1.4, 1.2.1-1.2.6, 1.3.1-1.3.3 (all Haiku searches)
Batch 2: 1.1.5-1.1.6, 1.2.7-1.2.8, 1.3.4-1.3.7 (BibTeX + annotations)
Batch 3: 1.1.7-1.1.8, 1.2.9-1.2.10, 1.3.8-1.3.9 (chapter integration)
[Repeat pattern for Phase 2, 3]
Batch N: Phase 4 (Opus synthesis)
```

---

## Cost Estimation

### Base Case (all PROCEED, no refinement)

| Phase | Haiku Steps | Sonnet Steps | Opus Steps |
|-------|-------------|--------------|------------|
| 1.1 Devil's Claw | 6 | 3 (+1 triage) | 0 |
| 1.2 Ketamine | 8 | 3 (+1 triage) | 0 |
| 1.3 MedUni Wien | 6 | 4 (+1 triage) | 0 |
| 2.1 PEA | 6 | 3 (+1 triage) | 0 |
| 2.2 Statins | 6 | 3 (+1 triage) | 0 |
| 3.1 Pregnenolone | 7 | 3 (+1 triage) | 0 |
| 3.2 Electrolyte | 6 | 3 (+1 triage) | 0 |
| 3.3 Patient Audit | 5 | 2 (no search) | 0 |
| 4.x Synthesis | 2 | 1 | 4 |
| **Total** | **52** | **25** | **4** |

**Base ratio:** ~64% Haiku, ~31% Sonnet, ~5% Opus

### Expected Case (with refinement loops)

Assuming: 60% PROCEED, 30% one REFINE, 8% two REFINE, 2% ESCALATE

| Additional | Probability | Extra Haiku | Extra Sonnet | Extra Opus |
|------------|-------------|-------------|--------------|------------|
| 1 REFINE (×2.4 topics) | 30% | +2.4 | +2.4 | 0 |
| 2 REFINE (×0.6 topics) | 8% | +1.2 | +1.2 | 0 |
| ESCALATE (×0.16 topics) | 2% | 0 | 0 | +0.16 |

**Expected total:** ~55 Haiku, ~29 Sonnet, ~4 Opus
**Expected ratio:** ~63% Haiku, ~33% Sonnet, ~4% Opus

---

## Success Criteria

- [ ] All 8 topics have Appendix H entries
- [ ] All topics integrated into appropriate main chapters
- [ ] BibTeX entries complete for all citations
- [ ] No compilation errors (`nix build` passes)
- [ ] Cross-references link related treatments
- [ ] Phase 4 synthesis documented in ch14
- [ ] Patient protocol appendix updated

---

## Quality Gates

**After each topic:**
1. `nix build` must pass
2. New citations must resolve
3. Cross-references must link correctly

**After Phase 3:**
1. Full document review for consistency
2. Citation completeness check
3. Ready for Phase 4 synthesis

**After Phase 4:**
1. Final build verification
2. Speculative content properly marked
3. All brainstorm outputs captured

---

## Notes

- Haiku tasks should have explicit, unambiguous instructions
- Sonnet tasks should include examples from existing document
- Opus tasks should be open-ended with creative prompts
- Maintain German terminology where clinically relevant
- Flag physician-review requirements explicitly
