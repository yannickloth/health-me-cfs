# Plan: Marie-Inspired Paper Additions

**Origin:** Creative brainstorming session analyzing patient Marie's case for new research directions, treatments, and hypotheses to add to ms.tex.

**Status:** PLANNED — awaiting approval before execution.

---

## Overview

Marie's case highlights 10 areas where the paper can be strengthened. This plan organizes them into executable tasks, ordered by dependency and priority, with the cheapest capable agent assigned to each.

**Cost tiers reference:**
- Haiku (~1x): Mechanical transforms, pattern matching, simple edits
- Sonnet (~10x): Reasoning, cross-referencing, writing prose, literature search
- Opus (~75x): Deep reasoning, proofs, novel hypothesis formulation

---

## Phase 0: Preparation (research & scoping)

### Task 0.1: Audit existing iron/ferritin content
**Agent:** `Explore` (sonnet)
**Why this agent:** Read-only search across multiple files; needs moderate reasoning to assess completeness.
**Action:** Grep all iron/ferritin/anemia mentions across `contents/`, `Literature/`, `references.bib`. Produce a summary of what exists, what's missing, and where new content should go.
**Output:** Summary written to `.claude/content-staging/iron-metabolism-audit.md`
**Depends on:** Nothing

### Task 0.2: Audit existing occupational/administrative harm content
**Agent:** `Explore` (sonnet)
**Why this agent:** Same pattern as 0.1 — read-only search with reasoning.
**Action:** Grep for occupational, return to work, administrative, disability, employment, workplace across `contents/`. Map what's covered and identify insertion points.
**Output:** Summary written to `.claude/content-staging/occupational-harm-audit.md`
**Depends on:** Nothing

### Task 0.3: Audit rest-phase deterioration content
**Agent:** `Explore` (sonnet)
**Why this agent:** Needs to distinguish between PEM content (which exists) and rest-phase deterioration (which may not).
**Action:** Search for deconditioning, bed rest, rest, deteriorat, worsen, inactiv across pathophysiology and clinical chapters. Determine if this phenomenon has dedicated treatment or is only mentioned in passing.
**Output:** Summary written to `.claude/content-staging/rest-deterioration-audit.md`
**Depends on:** Nothing

### Task 0.4: Literature search — iron depletion and CNS vulnerability
**Agent:** `literature-integrator` (sonnet)
**Why this agent:** Full literature pipeline — web search, PDF retrieval, .bib management.
**Action:** Search for papers on:
- Iron deficiency and brain energy metabolism
- Ferritin thresholds and cognitive function
- Gynecological bleeding and fatigue syndromes
- Iron-dependent enzymes in mitochondrial function (complex I-III)
- Iron and astrocyte lactate shuttle
**Output:** Papers organized in `Literature/pathophysiology/iron-cns-vulnerability/`, BibTeX additions in `Literature/BIBTEX_ADDITIONS_iron-cns.bib`, integration guide in `.claude/content-staging/INTEGRATION_GUIDE_iron-cns-vulnerability.md`
**Depends on:** Task 0.1 (to know what already exists)

### Task 0.5: Literature search — rest-phase deterioration mechanisms
**Agent:** `literature-integrator` (sonnet)
**Why this agent:** Full literature pipeline.
**Action:** Search for papers on:
- Deconditioning vs. disease progression in ME/CFS during bed rest
- Glymphatic clearance and physical inactivity
- Orthostatic deconditioning from prolonged bed rest
- "Sensory PEM" / minimal-stimulus crashes
- Sickness behavior perpetuation mechanisms
**Output:** Papers in `Literature/pathophysiology/rest-deterioration/`, BibTeX in `Literature/BIBTEX_ADDITIONS_rest-deterioration.bib`, integration guide in `.claude/content-staging/INTEGRATION_GUIDE_rest-deterioration.md`
**Depends on:** Task 0.3

### Task 0.6: Literature search — gynecological history as ME/CFS risk factor
**Agent:** `literature-integrator` (sonnet)
**Why this agent:** Full literature pipeline.
**Action:** Search for papers on:
- Menorrhagia/heavy periods prevalence in ME/CFS populations
- Early menopause and ME/CFS (partially covered in ch09, extend)
- Uterine polyps and chronic fatigue
- Iron depletion as post-viral vulnerability factor
- Sex-specific ME/CFS onset patterns
**Output:** Papers in `Literature/pathophysiology/gynecological-risk/`, BibTeX in `Literature/BIBTEX_ADDITIONS_gynecological-risk.bib`, integration guide in `.claude/content-staging/INTEGRATION_GUIDE_gynecological-risk.md`
**Depends on:** Nothing

### Task 0.7: Literature search — cold allodynia / TRPM3 / QST as biomarker
**Agent:** `literature-integrator` (sonnet)
**Why this agent:** Full literature pipeline.
**Action:** Search for papers on:
- Quantitative sensory testing (QST) in ME/CFS
- Cold pressor test in chronic fatigue / fibromyalgia
- TRPM3 and cold sensitivity / thermosensation
- Cold allodynia as small fiber neuropathy marker
- Thermoregulatory testing as diagnostic tool
**Output:** Papers in `Literature/pathophysiology/cold-allodynia-biomarker/`, BibTeX in `Literature/BIBTEX_ADDITIONS_cold-allodynia.bib`, integration guide in `.claude/content-staging/INTEGRATION_GUIDE_cold-allodynia-biomarker.md`
**Depends on:** Nothing

### Task 0.8: Literature search — administrative/occupational harm in chronic illness
**Agent:** `literature-integrator` (sonnet)
**Why this agent:** Full literature pipeline.
**Action:** Search for papers on:
- Forced return to work and ME/CFS outcomes
- Graded exercise therapy harm (PACE trial aftermath)
- Administrative stress as disease accelerant in chronic illness
- Occupational rehabilitation failures in ME/CFS
- Disability assessment inadequacy for invisible illnesses
- Insurance/benefits pressure and health outcomes
**Output:** Papers in `Literature/social-determinants/occupational-harm/`, BibTeX in `Literature/BIBTEX_ADDITIONS_occupational-harm.bib`, integration guide in `.claude/content-staging/INTEGRATION_GUIDE_occupational-harm.md`
**Depends on:** Task 0.2

**Phase 0 parallelism:** Tasks 0.1, 0.2, 0.3, 0.6, 0.7 can run in parallel. Tasks 0.4, 0.5, 0.8 depend on their respective audits.

---

## Phase 1: Hypothesis Development (writing new content)

### Task 1.1: Write "Iron-Mediated CNS Vulnerability" hypothesis (Ch 14 subsection)
**Agent:** `hypothesis-generator` (sonnet)
**Why this agent:** Specialized for generating testable hypotheses from patient data and literature. Sonnet needed for novel scientific reasoning and cross-referencing.
**Action:** Using literature from Task 0.4, write a new hypothesis subsection for Ch 14:
- Iron as cofactor for CNS energy infrastructure (tyrosine hydroxylase, myelination, mitochondrial complexes, astrocyte lactate shuttle)
- Chronic subclinical depletion (ferritin 15-30) as "priming factor" for ME/CFS
- Gynecological bleeding as sex-specific risk pathway
- Integration with selective energy dysfunction framework (iron depletion preferentially impairs high-δ_CNS processes)
- Testable predictions (ferritin-severity correlation, sex-stratified analysis, pre-onset iron levels)
- Certainty classification per writing style guide
**Output:** LaTeX content in `.claude/content-staging/hypothesis-iron-cns-vulnerability.tex`
**Depends on:** Task 0.4

### Task 1.2: Write "Rest-Phase Deterioration" analysis (Ch 13 section)
**Agent:** `scientific-insight-generator` (sonnet)
**Why this agent:** Synthesizes evidence into novel mechanistic analysis. Needs reasoning to distinguish from existing PEM content.
**Action:** Using literature from Task 0.5, write a section analyzing why patients worsen during complete rest:
- Distinguish from classical PEM (post-exertional) — this is "zero-exertion deterioration"
- Five candidate mechanisms: (1) orthostatic deconditioning cascade, (2) glymphatic clearance failure from immobility, (3) ongoing immune activation independent of exertion, (4) sensory/cognitive PEM from minimal stimuli, (5) sickness behavior positive feedback loop
- Interaction effects (multiple mechanisms compound)
- Clinical implications (rest is necessary but insufficient; need *active* rest strategies)
- Connection to vicious cycle framework
**Output:** LaTeX content in `.claude/content-staging/rest-phase-deterioration.tex`
**Depends on:** Task 0.5

### Task 1.3: Write "Administrative Harm as Vicious Cycle" model (Ch 14i extension)
**Agent:** `scientific-insight-generator` (sonnet)
**Why this agent:** Requires synthesizing social/psychological literature with existing biological cycle framework.
**Action:** Using literature from Task 0.8, write content for Ch 14i extending the vicious cycle network:
- Model: administrative stress → cortisol/sympathetic activation → immune dysregulation + energy expenditure → PEM → deterioration → increased administrative pressure → cycle
- Formal cycle structure matching existing cycle notation in ch14i
- Interaction with biological cycles (this cycle FEEDS INTO metabolic, immune, and autonomic cycles)
- Evidence from PACE trial harm data, occupational rehab failures
- Policy implications (harm reduction framing)
**Output:** LaTeX content in `.claude/content-staging/administrative-harm-cycle.tex`
**Depends on:** Task 0.8

### Task 1.4: Write "Cold Allodynia as TRPM3 Biomarker" section (Ch 14h extension)
**Agent:** `chapter-integrator` (sonnet)
**Why this agent:** Integrating new citations into existing chapter structure. Needs to read ch14h and add coherently.
**Action:** Using literature from Task 0.7, draft an addition to ch14h-trpm3-channelopathy.tex:
- Cold allodynia as cheap, non-invasive screening for TRPM3 dysfunction
- Proposed protocol: standardized cold pressor test with QST metrics
- Predictions: ME/CFS patients with TRPM3 dysfunction show aberrant cold thresholds
- Connection to SFN diagnosis (TRPM3 dysfunction may cause/exacerbate small fiber damage)
- Research proposal sketch (for later expansion in Ch 25b)
**Output:** Integration guide in `.claude/content-staging/INTEGRATION_GUIDE_cold-allodynia-trpm3.md`
**Depends on:** Task 0.7

### Task 1.5: Write "Cumulative Iron Depletion as Sex-Specific Risk" subsection (Ch 9 extension)
**Agent:** `chapter-integrator` (sonnet)
**Why this agent:** Adding to existing endocrine chapter with proper citations. Needs to read ch09 and add coherently.
**Action:** Using literature from Task 0.6, draft an addition to ch09-endocrine.tex:
- Menstrual blood loss → cumulative iron depletion → impaired immune regulation → post-infectious ME/CFS vulnerability
- Prediction: pre-menopausal women with heavy periods overrepresented in ME/CFS
- Onset clustering in late reproductive years (peak cumulative iron loss)
- Early menopause data already in ch09 — extend with iron mechanism
- Connects ch09 (endocrine) to the new Ch 14 iron hypothesis (Task 1.1)
**Output:** Integration guide in `.claude/content-staging/INTEGRATION_GUIDE_sex-iron-risk.md`
**Depends on:** Task 0.6, Task 1.1

### Task 1.6: Write "Headache as CNS Energy Crisis Sentinel" hypothesis sketch
**Agent:** `hypothesis-generator` (sonnet)
**Why this agent:** Novel hypothesis generation from clinical observation.
**Action:** Write a brief hypothesis (not full subsection — may be incorporated into ch08 or ch14j):
- Headache as protective signal when CNS energy supply < demand
- Progressive headache = deepening energy deficit
- Predictions: headache severity correlates with CBF reduction (tilt test) and neuroinflammation markers
- Headache-predominant patients as possible subtype
- Brief (~1 page), with certainty classification
**Output:** LaTeX content in `.claude/content-staging/hypothesis-headache-sentinel.tex`
**Depends on:** Nothing (can use existing ch14j and ch08 content)

**Phase 1 parallelism:** Task 1.6 can start immediately. Tasks 1.1-1.5 depend on their respective Phase 0 literature searches. Tasks 1.1 and 1.2 can run in parallel once their inputs are ready. Task 1.5 depends on 1.1.

---

## Phase 2: Research Proposals (Ch 25b additions)

### Task 2.1: Write research proposal — Retrospective ferritin-severity correlation
**Agent:** `sonnet-general`
**Why this agent:** No specialized agent for research proposal writing; Sonnet-tier reasoning needed for study design.
**Action:** Draft a research proposal for Ch 25b:
- **Design:** Retrospective cohort
- **Population:** Female ME/CFS patients with available pre-onset ferritin data
- **Primary outcome:** Correlation between pre-onset ferritin levels and ME/CFS severity at 12 months
- **Secondary outcomes:** Time to diagnosis, response to iron supplementation
- **Hypothesis:** Lower pre-onset ferritin predicts more severe ME/CFS
- Use existing ch25b format and environment conventions
**Output:** LaTeX content in `.claude/content-staging/research-proposal-ferritin-severity.tex`
**Depends on:** Task 1.1 (for hypothesis framing)

### Task 2.2: Write research proposal — Gynecological history as risk predictor
**Agent:** `sonnet-general`
**Why this agent:** Same as 2.1.
**Action:** Draft a research proposal for Ch 25b:
- **Design:** Retrospective cohort + prospective validation
- **Population:** Women with ME/CFS vs. age-matched controls
- **Variables:** Menorrhagia, uterine polyps, endometriosis, PCOS, early menopause, anemia history
- **Hypothesis:** Gynecological conditions with chronic blood loss are overrepresented
- **If confirmed:** Prevention pathway — aggressive iron management post-viral infection
**Output:** LaTeX content in `.claude/content-staging/research-proposal-gynecological-risk.tex`
**Depends on:** Task 1.5 (for sex-iron risk framing)

### Task 2.3: Write research proposal — Standardized cold sensitivity testing for ME/CFS subtyping
**Agent:** `sonnet-general`
**Why this agent:** Same as 2.1.
**Action:** Draft a research proposal for Ch 25b:
- **Design:** Cross-sectional diagnostic accuracy study
- **Population:** ME/CFS patients vs. healthy controls
- **Intervention:** Standardized cold pressor test + QST battery
- **Outcomes:** Sensitivity/specificity for ME/CFS; correlation with TRPM3 function
- **Subtyping:** Can cold sensitivity thresholds discriminate TRPM3-dominant vs. other subtypes?
**Output:** LaTeX content in `.claude/content-staging/research-proposal-cold-sensitivity.tex`
**Depends on:** Task 1.4

### Task 2.4: Write research proposal — Biomarker trajectories around forced return-to-work
**Agent:** `sonnet-general`
**Why this agent:** Same as 2.1.
**Action:** Draft a research proposal for Ch 25b:
- **Design:** Natural experiment / interrupted time series
- **Population:** ME/CFS patients undergoing forced return-to-work events
- **Measurements:** Pre/during/post cortisol, inflammatory markers, HR/HRV, symptom scores
- **Hypothesis:** Forced RTW triggers measurable biomarker deterioration
- **Policy relevance:** Objective evidence that administrative pressure causes biological harm
**Output:** LaTeX content in `.claude/content-staging/research-proposal-rtw-biomarkers.tex`
**Depends on:** Task 1.3

**Phase 2 parallelism:** All four proposals can run in parallel once their Phase 1 dependencies are met.

---

## Phase 3: Integration into Document

### Task 3.1: Add iron-CNS vulnerability hypothesis to Ch 14
**Agent:** `chapter-integrator` (sonnet)
**Why this agent:** Specialized for integrating new content into existing chapter structure with proper cross-references.
**Action:** Read ch14-speculative-hypotheses.tex structure, determine correct subsection placement (likely new ch14k file), integrate content from Task 1.1 with proper \label, \ref, and \cite commands.
**Depends on:** Task 1.1

### Task 3.2: Add rest-phase deterioration to Ch 13
**Agent:** `chapter-integrator` (sonnet)
**Why this agent:** Same as 3.1.
**Action:** Read ch13-integrative-models.tex, find appropriate insertion point, integrate Task 1.2 content. Cross-reference with PEM sections and vicious cycle chapter.
**Depends on:** Task 1.2

### Task 3.3: Add administrative harm cycle to Ch 14i
**Agent:** `chapter-integrator` (sonnet)
**Why this agent:** Same as 3.1.
**Action:** Read ch14i (vicious cycles), add the administrative stress cycle from Task 1.3 using existing cycle notation format.
**Depends on:** Task 1.3

### Task 3.4: Add cold allodynia biomarker section to Ch 14h
**Agent:** `chapter-integrator` (sonnet)
**Why this agent:** Same as 3.1.
**Action:** Follow integration guide from Task 1.4 to add cold allodynia content to ch14h-trpm3-channelopathy.tex.
**Depends on:** Task 1.4

### Task 3.5: Add sex-iron risk subsection to Ch 9
**Agent:** `chapter-integrator` (sonnet)
**Why this agent:** Same as 3.1.
**Action:** Follow integration guide from Task 1.5 to add content to ch09-endocrine.tex in the sex hormones section.
**Depends on:** Task 1.5

### Task 3.6: Integrate headache sentinel hypothesis
**Agent:** `chapter-integrator` (sonnet)
**Why this agent:** Same as 3.1; needs to decide whether this goes in ch08 or ch14j.
**Action:** Read both ch08-neurological.tex and ch14j-selective-dysfunction.tex, determine best placement for Task 1.6 content (likely ch08 headache section with cross-reference to ch14j), integrate.
**Depends on:** Task 1.6

### Task 3.7: Add all research proposals to Ch 25b
**Agent:** `chapter-integrator` (sonnet)
**Why this agent:** Same as 3.1; batch integration of multiple proposals.
**Action:** Read ch25b-proposed-studies.tex structure, integrate all four research proposals (Tasks 2.1-2.4) in appropriate subsections. Ensure cross-references to the hypothesis chapters.
**Depends on:** Tasks 2.1, 2.2, 2.3, 2.4

### Task 3.8: Add treatment protocol recommendation — mandatory iron assessment
**Agent:** `chapter-integrator` (sonnet)
**Why this agent:** Same as 3.1.
**Action:** In treatment chapters (ch14a-d or ch15), add iron assessment as mandatory first step in the diagnostic/treatment algorithm for female patients. Reference the iron-CNS hypothesis. Include ferritin target (>80-100), not just lab-normal (>15).
**Depends on:** Task 1.1

### Task 3.9: Update references.bib with all new citations
**Agent:** `haiku-general`
**Why this agent:** Mechanical merge of BibTeX entries — no reasoning needed, just file concatenation and deduplication.
**Action:** Merge all `BIBTEX_ADDITIONS_*.bib` files from Phase 0 into `references.bib`, deduplicating any entries that already exist.
**Depends on:** All Phase 0 literature searches complete

### Task 3.10: Add worked example to Ch 14j (Marie as selective dysfunction case)
**Agent:** `sonnet-general`
**Why this agent:** Requires reasoning to map clinical presentation to mathematical model; no specialized agent for this.
**Action:** In ch14j-selective-dysfunction.tex, add a "Clinical Application" subsection using an anonymized version of Marie's case:
- Map her symptoms to δ_CNS and ρ indices
- Calculate S(P) predictions for her preserved vs. impaired functions
- Determine likely subtype (A: CNS-Primary vs. B: Autonomic-Primary)
- Show how the model guides treatment selection for her specific profile
- Fully anonymized (no name, no identifying details — just "a female patient presenting with...")
**Depends on:** Task 1.1 (iron hypothesis feeds into the example)

**Phase 3 parallelism:** Tasks 3.1-3.6, 3.8, 3.9, 3.10 can run in parallel once their dependencies are met. Task 3.7 waits for all Phase 2 tasks.

---

## Phase 4: Cross-Referencing & Protocol Linking

### Task 4.1: Cross-reference all new sections
**Agent:** `protocol-linker` (sonnet)
**Why this agent:** Specialized for bidirectional cross-references between pathophysiology and treatment chapters.
**Action:** Ensure all new content has:
- \label commands for every new section/subsection
- \ref cross-references between related additions (iron hypothesis ↔ sex-iron risk ↔ treatment protocol ↔ research proposals)
- Forward/backward references to existing content (e.g., iron hypothesis references existing SFN section, TRPM3 chapter, selective dysfunction framework)
**Depends on:** All Phase 3 tasks complete

### Task 4.2: Add new medical terms to dictionary
**Agent:** `dictionary-manager` (haiku)
**Why this agent:** Mechanical addition of terms — pattern matching only.
**Action:** Add any new medical/scientific terms introduced by new content to `.ltex.dictionary.txt` (e.g., cold allodynia, cryoglobulinemia, quantitative sensory testing).
**Depends on:** All Phase 3 tasks complete

---

## Phase 5: Quality Assurance

### Task 5.1: Scientific rigor audit of all new content
**Agent:** `scientific-rigor-auditor` (opus)
**Why this agent:** Checking scientific claims requires deep reasoning — uncited claims, unclassified hypotheses, evidence misrepresentation.
**Action:** Audit all newly added sections for:
- Every factual claim has a citation
- Every hypothesis has certainty classification
- Evidence levels correctly assessed
- No circular reasoning
- Appropriate use of LaTeX environments (hypothesis, observation, etc.)
**Depends on:** Task 4.1

### Task 5.2: Style naturalization pass
**Agent:** `style-naturalizer` (sonnet)
**Why this agent:** Specialized for converting AI-typical patterns to natural prose.
**Action:** Review all new content for AI-like writing patterns (per writing-style.md): excessive lists, bold headers in items, dramatic fragment titles, repetitive structures. Convert to flowing prose.
**Depends on:** Task 5.1 (run after rigor audit so we don't naturalize then re-edit)

### Task 5.3: Build verification
**Agent:** `test-runner` (haiku)
**Why this agent:** Mechanical — just runs `nix build` and reports errors.
**Action:** Run `nix build` and verify all new content compiles without errors.
**Depends on:** Task 5.2

### Task 5.4: Link and reference check
**Agent:** `link-checker` (haiku)
**Why this agent:** Mechanical — scans for broken \ref, \cite, \label.
**Action:** Check all cross-references are valid, no broken \cite or \ref commands.
**Depends on:** Task 5.3

---

## Phase 6: Commit

### Task 6.1: Commit all changes
**Agent:** `commit-writer` (sonnet)
**Why this agent:** Needs to analyze all changes and write a meaningful commit message.
**Action:** Stage all modified and new files, write descriptive commit message summarizing all additions.
**Depends on:** Task 5.4

---

## Execution Summary

| Phase | Tasks | Parallelism | Estimated Agent Calls |
|-------|-------|-------------|----------------------|
| 0: Preparation | 8 tasks | 5 parallel, then 3 | 8 sonnet |
| 1: Hypothesis Dev | 6 tasks | Partial parallel | 6 sonnet |
| 2: Research Proposals | 4 tasks | All parallel | 4 sonnet |
| 3: Integration | 10 tasks | Mostly parallel | 9 sonnet + 1 haiku |
| 4: Cross-ref | 2 tasks | Sequential | 1 sonnet + 1 haiku |
| 5: QA | 4 tasks | Sequential | 1 opus + 1 sonnet + 2 haiku |
| 6: Commit | 1 task | — | 1 sonnet |

**Total: 35 tasks**
- Haiku: 4 tasks (~4x cost units)
- Sonnet: 30 tasks (~300x cost units)
- Opus: 1 task (~75x cost units)

**Cost optimization notes:**
- Literature searches (Phase 0) are the most expensive because they involve web search + multiple file operations, but `literature-integrator` is the right tool — no cheaper alternative exists for this work.
- Phase 3 integration tasks could theoretically use haiku for mechanical insertion, but the judgment needed to find correct insertion points and maintain document coherence requires sonnet.
- Only one opus task (scientific rigor audit) — this is where correctness is critical and reasoning depth pays off.
- The BibTeX merge (Task 3.9) is the only Phase 3 task cheap enough for haiku.

---

## Dependency Graph (simplified)

```
Phase 0 (Research)
  0.1 ──→ 0.4 ──→ 1.1 ──→ 2.1 ──→ 3.7
  0.2 ──→ 0.8 ──→ 1.3 ──→ 2.4 ──→ 3.7
  0.3 ──→ 0.5 ──→ 1.2 ──────────→ 3.2
  0.6 ────────→ 1.5 ──→ 2.2 ──→ 3.7
  0.7 ────────→ 1.4 ──→ 2.3 ──→ 3.7
              → 1.6 ──────────→ 3.6

Phase 3 (Integration) — most tasks parallel
  1.1 → 3.1, 3.8, 3.10
  1.2 → 3.2
  1.3 → 3.3
  1.4 → 3.4
  1.5 → 3.5
  1.6 → 3.6
  2.* → 3.7
  0.* → 3.9

Phase 4-6 (QA + Commit) — sequential
  3.* → 4.1 → 4.2 → 5.1 → 5.2 → 5.3 → 5.4 → 6.1
```

---

## Notes for Execution

1. **Session management:** This plan will exceed a single context window. Execute in batches:
   - Session 1: Phase 0 (all 8 tasks, maximizing parallelism)
   - Session 2: Phase 1 (6 tasks)
   - Session 3: Phases 2-3 (14 tasks)
   - Session 4: Phases 4-6 (7 tasks)
   Each session should generate a continuation prompt for the next.

2. **Staging area:** All intermediate content goes to `.claude/content-staging/` before integration. This allows review between phases.

3. **Review gates:** After Phase 1 (hypothesis development) and after Phase 3 (integration), pause for user review before proceeding. The user should read the staged content and the integrated chapters to verify scientific accuracy and stylistic fit.

4. **Anonymization:** Task 3.10 (worked example) must be fully anonymized — no name, no specific dates, no identifying medical details beyond the symptom pattern. Use generic framing: "a female patient in her [decade] presenting with..."

5. **Existing content preservation:** All chapter integrations ADD content — they never delete or significantly rewrite existing material. The `chapter-integrator` agent must respect existing structure and find appropriate insertion points.
