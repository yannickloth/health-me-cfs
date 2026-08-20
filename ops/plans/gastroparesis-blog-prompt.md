# Session Prompt: Gastroparesis in ME/CFS — Blog Article

You are a medical-science blogger writing for the ME/CFS documentation site at `/home/nicky/code/health-me-cfs`. **Audience:** educated non-specialist patients, caregivers, and clinicians seeking a plain-language, honest, evidence-calibrated explanation of gastroparesis in ME/CFS — same audience as the existing ADHD biology series posts. Write ONE standalone, plain-language blog article about **gastroparesis (delayed gastric emptying) in ME/CFS**, modeled on the existing ADHD biology series posts. Produce the article in English first, then translate it into French (FR) and German (DE).

> **Citation setup (read once, no action needed):** all 12 bib keys you will cite already exist in `src/main/typst/mecfs/bib/*.bib` (verified). The blog resolves them via `_quarto.yml` → `bib/*.bib`. You do NOT need to add any bib entries; just cite the existing keys.

## INSTRUCTIONS

1. **Read the source material first** (mandatory, in this order):
   - Book chapter section (the single richest source): `src/main/typst/mecfs/part1-clinical/ch04-additional-symptoms/sec-04-gi-symptoms/subsec-04-gastroparesis/subsec-04-gastroparesis.typ`
   - Hypothesis-registry gastroparesis entries: `src/main/typst/mecfs/part4-research/hypothesis-registry.typ` (block "Entries added 2026-08-19: Gastroparesis and Delayed Gastric Emptying in ME/CFS")
   - Literature summary: `ops/research/literature-summary-gastroparesis.md` (13 papers with certainty ratings)
   - Integration plan: `ops/plans/gastroparesis-integration-plan.md`
   - Pathway-drug trace: `ops/integration-guides/pathway-drug-trace-gastroparesis.md`
   - Brainstorm: `ops/brainstorms/brainstorm-gastroparesis-2026-08-19.md`
   - Existing related blog posts (to AVOID duplication, see Constraints):
     - `src/main/quarto/en/blog/posts/gut/sibo-gi-dysmotility/index.qmd`
     - `src/main/quarto/en/blog/posts/gut/sibo-gi-treatment/index.qmd`

2. **Model the structure and voice** on the existing ADHD series blog posts, especially:
   - `src/main/quarto/en/blog/posts/adhd-neurodivergence/adhd-acquired-trajectories/index.qmd`
   - `src/main/quarto/en/blog/posts/adhd-neurodivergence/adhd-dopamine-nrf2/index.qmd`
   Read these to match: frontmatter fields, heading style, plain-language tone, the "what we know" vs "what our research adds" distinction, honest-limits honesty, and the closing disclaimers.

3. **Write the article** covering, at minimum, these content pillars (drawn from the book subsection):
   - **The measurable finding:** delayed gastric emptying is a real, testable feature of ME/CFS (Burnet 2004, n=32: 23/32 delayed liquid, 12/32 delayed solid emptying; delay correlated with symptom severity, p<0.001). It is not a vague complaint.
   - **Clinical presentation** (the symptom list) and **mechanism** (vagal/autonomic gastric-motility failure).
   - **The honest limits:** evidence rests on a single 2004 cohort predating modern criteria, one n=1 adolescent null case, no modern-IOM/ICC replication; non-specific alternatives (medication side-effects, functional dyspepsia/visceral hypersensitivity, deconditioning, reporting bias) can produce the same pattern.
   - **What is genuinely unknown (the mechanism question):** does ME/CFS gastroparesis share the structural enteric-nerve/pacemaker-cell (ICC) loss of diabetic/idiopathic gastroparesis, reflect autoimmune ganglionic acetylcholine-receptor blockade (a potentially reversible cause), or functional vagal failure alone? Frame as an honest open question / speculation, not settled.
   - **What to do about it (the safe, actionable pathway):** first-line is dietary/nutritional management (small frequent meals, low-fat/low-fibre, liquid options; enteral escalation for very-severe feeding failure) — the lowest-risk step. Prokinetics are a second, safety-managed option (metoclopramide black-box tardive-dyskinesia risk, domperidone QT risk, erythromycin desensitization, GLP-1 agonists are counterindicated). State clearly no prokinetic has been tested in ME/CFS; dosing/safety extrapolated.
   - **Cross-disease perspective:** gastroparesis is well-characterized in diabetes and increasingly in post-viral (Long COVID) setting; the POTS/hypermobility overlap.

4. **Calibrate every claim** to the source's certainty. Use the registry certainty values: the emptying finding is a clinical finding (cert 0.60, direct ME/CFS); the mechanism questions are open question (0.40) and speculation (0.30); the limitation is a risk assessment. Never present a speculation as established. Mark severity applicability where the source does ("unknown", "moderate/severe/very-severe", "across all").

5. **Keep the "what we know" vs "what our research adds" distinction** explicit, as the ADHD posts do. Cite sources with the blog's `[@CitationKey]` syntax using the keys from the bib (e.g. `@Burnet2004GastricEmptyingCFS`, `@Corrado1998NormalGastricEmptying`, `@Debourdeau2024GastricVolumetry`, `@Grover2011CellularChangesGastroparesis`, `@Wang2009ICCLossDiabetes`, `@Montalvo2022LongCovidGIDysmotility`, `@Gupta2016GastroparesisDiet`, `@Ingrosso2023GastroparesisDrugsNMA`, `@Shakhatreh2019Metoclopramide`, `@Patel2024SHT4Gastroparesis`, `@Tseng2019POTSNutritionalSupport`, `@Aziz2025AGAGIHyperEhlersDanlos`). VERIFY each key against `src/main/typst/mecfs/bib/*.bib` (`grep '^@'` ) before using it — the bib is the source of truth; do not invent keys.

6. **Write the three language versions** (EN, FR, DE):
   - EN → `src/main/quarto/en/blog/posts/gut/gastroparesis-mecfs/index.qmd`
   - FR → `src/main/quarto/fr/blog/posts/gut/gastroparesis-mecfs/index.qmd`
   - DE → `src/main/quarto/de/blog/posts/gut/gastroparesis-mecfs/index.qmd`
   Each is a full translation, not a partial one. Match the existing fr/de blog conventions (see `src/main/quarto/{fr,de}/blog/_metadata.yml`).

7. **Frontmatter** for each file (match existing posts, e.g. the ADHD posts):
   - `title`, `description`, `author: "Yannick Loth"`, `date` (use today's date `2026-08-20`), `categories` (e.g. `[Autonomic, Gastrointestinal, Symptoms]`).
   - Set `date` and categories appropriately per language; keep author and structure identical.

## CONSTRAINTS (do NOT violate)

- **DO NOT duplicate the existing SIBO/GI-dysmotility posts.** `gut/sibo-gi-dysmotility` and `gut/sibo-gi-treatment` already cover gastroparesis within a broader GI-dysmotility/SIBO framing. This new article must be **gastroparesis-specific and go deeper** on the emptying measurement, the mechanism uncertainty, and the safety-managed treatment ladder — not rehash the SIBO/histamine/hydrogen-sulfide content. Cross-reference the SIBO posts rather than repeating them.
- **DO NOT fabricate** any citation, figure, PMID, DOI, or study. Use only the sources listed. If a source is ambiguous or a number is unclear, mark it `(UNVERIFIED)` and flag it in your report rather than guessing.
- **DO NOT overclaim.** Match every certainty to the source. The 0.30 speculation (autoimmune ganglionic blockade) and 0.40 open question (structural ICC loss) must be framed as hypotheses, not findings. The 0.60 emptying finding must carry its single-old-cohort caveat.
- **DO NOT write code or modify any file outside the three `index.qmd` files you create.** Do not edit the book `.typ` files, the registry, the bib, or ops files.
- **DO NOT touch the `target/` directory** (build output).
- **No emojis.** Plain-language, active-voice prose. Short sentences. No slang or idioms.
- **Never present a treatment as a clinical recommendation to a specific patient.** Include the standard disclaimer that medication decisions require a qualified clinician.
- **Do NOT commit** — just write the three files and report.

## UNCERTAINTY HANDLING

If you cannot find or verify a source, a citation key, or a figure, STOP and state exactly what is missing rather than improvising. Do not invent a PMID/DOI/certainty to fill a gap. If the two SIBO posts already cover a piece so completely that repeating it is unavoidable, flag it and suggest a cross-reference instead.

## OUTPUT FORMAT

- **Deliverable:** three files created: `src/main/quarto/{en,fr,de}/blog/posts/gut/gastroparesis-mecfs/index.qmd`.
- **Final message** must include:
  1. The three file paths created.
  2. A short content map (which content pillar each heading covers, and which source each rests on).
  3. Any `(UNVERIFIED)` flags or gaps encountered.
  4. A note on whether the standalone article was sufficient or whether a 2–3 part mini-series would serve the material better (with a concrete split suggestion if so) — the new session may decide; state your recommendation with reasoning.
  5. A note on any existing-post overlap you had to cross-reference rather than duplicate.

## QUALITY BAR (self-check before finishing)

- Every mechanistic claim has a citation to a verified bib key.
- The emptying finding carries its single-old-cohort caveat.
- The mechanism questions are framed as open/speculative with their cert values.
- The treatment content is safety-managed and carries the clinician disclaimer.
- The three language versions are complete and structurally parallel.
- No fabricated citations, figures, PMIDs, or DOIs.
