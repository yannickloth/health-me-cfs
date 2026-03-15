# Plan: Actin Polymerization Suppressing Mitochondrial Respiration (WASF3 Mechanism)

## Summary

Add a new subsection to ch06 (energy metabolism) documenting the NIH intramural study finding
that WASF3 protein upregulation in ME/CFS disrupts mitochondrial complex assembly via actin
remodelling. This is one of the most mechanistically detailed ME/CFS findings to date: ER stress
→ WASF3 overexpression → actin filament disruption of Complex V (ATP synthase) → mitochondrial
respiration suppression → exercise intolerance. The NIH intramural study's deep phenotyping
provides strong mechanistic grounding. Certainty ~0.55 — single study, mechanistically detailed.

---

## What We Already Cover

**ch06-energy-metabolism.tex**:
- Mitochondrial dysfunction: Complex I/III impairment
- PDH block; acetyl-CoA deficiency
- ATP deficiency; AMPK dysregulation
- No WASF3, no actin-mitochondria interaction, no ER stress → mitochondria pathway

**ch22 (mechanistic studies)** or equivalent NIH study chapter:
- NIH intramural study probably referenced
- No detailed WASF3 mechanism content

---

## What's Missing

1. **WASF3 protein biology**: WASF3 (Wiskott-Aldrich Syndrome Protein Family Member 3) is an
   actin nucleation-promoting factor; normally expressed at low levels; activated downstream of
   Rac1 and other GTPases; promotes branched actin filament formation via the Arp2/3 complex
2. **ER stress → WASF3 upregulation pathway**: endoplasmic reticulum stress (unfolded protein
   response, UPR) upregulates WASF3 expression; UPR is documented in chronic viral infection,
   metabolic stress, and inflammatory states; in ME/CFS, multiple upstream causes could trigger
   ER stress (viral protein expression, oxidative stress, metabolic dysfunction)
3. **WASF3-actin disrupting mitochondrial assembly**: WASF3-driven actin polymerisation creates
   actin filaments that physically disrupt the assembly of mitochondrial supercomplexes (Complex
   I-III-IV supercomplex, sometimes called the respirsome); specific: disrupts Complex V (ATP
   synthase) assembly at the inner mitochondrial membrane; this reduces mitochondrial membrane
   potential and ATP production
4. **NIH intramural study design and findings**: study conducted by NIH deep phenotyping team
   (Nath group); muscle biopsy samples; proteomics; cell biology validation in myoblasts; WASF3
   found elevated in ME/CFS biopsies; WASF3 knockdown in cell lines restores mitochondrial
   function; scope of cohort
5. **Connection to exercise intolerance**: WASF3's actin disruption specifically impairs
   exercise-induced mitochondrial adaptation; during exercise, demand for mitochondrial
   supercomplex assembly increases; WASF3 upregulation blocks this → disproportionate
   energy failure during exertion → PEM mechanism
6. **Potential upstream triggers**: what causes ER stress in ME/CFS that upregulates WASF3?
   — viral proteins (ORF9b and other viral proteins stress the ER); metabolic dysfunction
   creating oxidative stress; immune activation products; SARS-CoV-2 spike protein
   documented to cause ER stress
7. **WASF3 as a therapeutic target**: WASF3 inhibitors exist in the oncology context;
   actin nucleation inhibitors; whether targeting WASF3 is feasible and safe in a chronic
   condition context; connection to ROCK inhibitors (fasudil) explored in Long COVID

---

## Implementation Plan

### 1. New subsection in ch06 (primary target)

**File:** `contents/part2-pathophysiology/ch06-energy-metabolism.tex`

**Insertion point:** After the existing mitochondrial dysfunction content (Complex I/III, PDH block),
before or after the viral mitochondrial disruption plan subsection. Insert as
`\subsection{Actin-Mediated Mitochondrial Supercomplex Disruption: The WASF3 Mechanism}`.

**Content and environments:**

| # | Content | Environment | Notes |
|---|---------|-------------|-------|
| 1 | Introduction: actin cytoskeleton and mitochondrial function | Plain text | Normal relationship; mitochondrial dynamics and actin |
| 2 | WASF3 protein biology and normal function | Plain text | Actin nucleation promoting; Arp2/3 complex; normal low expression |
| 3 | ER stress pathway leading to WASF3 upregulation | Plain text | UPR → WASF3; upstream causes of ER stress in ME/CFS |
| 4 | Achievement: NIH intramural WASF3 finding | `achievement` | WASF3 elevated in ME/CFS muscle; knockdown restores mitochondrial function. Label `ach:nath-wasf3` |
| 5 | Mechanism: WASF3-actin disrupting mitochondrial supercomplexes | Plain text | Supercomplex assembly; Complex V; ATP synthase disruption |
| 6 | Exercise intolerance connection | Plain text | Exercise-induced supercomplex demand; WASF3 blocking adaptation; PEM mechanism |
| 7 | Hypothesis: WASF3-mediated supercomplex disruption as exercise intolerance mechanism | `hypothesis` (cert ~0.55) | See hypothesis content below |
| 8 | Upstream triggers for ER stress | Plain text | Viral proteins, oxidative stress, metabolic products; cross-ref ch07 viral mitochondrial plan |
| 9 | Therapeutic implications and limitations | Plain text | WASF3 as target; oncology inhibitors; no ME/CFS trial |
| 10 | Single-study caveat | `limitation` | Mechanistically detailed but single NIH study; awaiting independent replication; muscle biopsy evidence from small cohort |

**Hypothesis environment content:**
- Title: "ER-Stress-Driven WASF3 Upregulation Suppressing Mitochondrial Supercomplex Assembly in ME/CFS"
- Core claim: Chronic ER stress in ME/CFS — driven by viral protein expression, oxidative
  stress, or metabolic dysfunction — upregulates WASF3, which drives actin polymerisation that
  physically disrupts mitochondrial supercomplex assembly, reducing ATP synthase efficiency
  and impairing the mitochondrial respiratory capacity needed for exercise, thereby providing
  a molecular mechanism for both baseline fatigue and PEM
- Supporting evidence: WASF3 elevated in ME/CFS muscle biopsies vs controls (NIH intramural
  study); WASF3 knockdown restores mitochondrial function in cell lines; supercomplex assembly
  importance for mitochondrial efficiency is well-established; ER stress and WASF3 connection
  documented in cell biology; spike protein ER stress documented
- Testable predictions:
  (a) WASF3 protein levels in ME/CFS muscle biopsies correlate inversely with VO2max on CPET,
      establishing the WASF3 → exercise intolerance link quantitatively
  (b) ME/CFS patients with higher WASF3 expression show greater mitochondrial supercomplex
      fragmentation on Blue Native PAGE analysis of muscle mitochondria
  (c) ER stress markers (BiP/GRP78, CHOP, phospho-IRE1α) are elevated in ME/CFS muscle
      biopsies and correlate with WASF3 expression, confirming the upstream pathway
  (d) WASF3 protein levels are higher in ME/CFS patients with SARS-CoV-2-triggered onset
      compared to EBV-triggered ME/CFS, consistent with ORF9b-driven ER stress as the
      upstream trigger in the COVID subset
- Limitations: single study; muscle biopsy findings may not generalise to other tissues;
  whether WASF3 is the primary mechanism or one of several parallel mitochondrial disruption
  pathways is unknown; therapeutic WASF3 inhibition is at pre-clinical stage
- Certainty: 0.55

### 2. Cross-reference from ch07 viral plans

**File:** `contents/part2-pathophysiology/ch07-immune-dysfunction.tex`

**Insertion point:** In the SARS-CoV-2 persistence section, note that ORF9b and spike-induced
ER stress may drive WASF3 upregulation and mitochondrial disruption; forward reference to ch06.

### 3. Cross-reference from ch22

**File:** `contents/part4-research/ch22-mechanistic-studies.tex`

**Insertion point:** Where the NIH deep phenotyping study is discussed, ensure the WASF3 finding
is highlighted as a mechanistic breakthrough; forward reference to ch06 for full mechanism.

### 4. Register hypothesis

**File:** `contents/part4-research/hypothesis-registry.tex`

Add entry in metabolic/cytoskeletal domain:
- Title: WASF3-Mediated Actin Suppression of Mitochondrial Supercomplexes in ME/CFS
- Type: H (hypothesis, cert 0.55)
- Predictions: (a)–(d) above
- Location: Ch. 6 §sec:wasf3-actin-mito

### 5. Update changelog

**File:** `contents/shared/changelog.tex`

Entry with "Motivated by:" noting the NIH intramural WASF3 study as a landmark mechanistic
finding providing a molecular explanation for exercise intolerance at the mitochondrial
supercomplex assembly level; cite Nath group study.

---

## Literature to Acquire

| Reference | Status | Key finding |
|-----------|--------|-------------|
| Bhupinder Bhatt / Avindra Nath NIH WASF3 study (2023) | To acquire | WASF3 elevated in ME/CFS; knockdown restores mitochondrial function |
| WASF3/N-WASP and Arp2/3 actin nucleation review | To find | WASF3 normal biology |
| ER stress → UPR → WASF3 pathway papers | To find | ER stress upregulation mechanism |
| Mitochondrial supercomplex assembly importance | To find | Why Complex I-III-IV supercomplex matters for efficiency |
| SARS-CoV-2 spike/ORF9b ER stress | To find | Viral ER stress as WASF3 upstream trigger |
| Blue Native PAGE mitochondrial supercomplex analysis | To find | Methods reference for prediction (b) |

---

## Execution Order

1. Literature search and acquisition — Nath group WASF3 study; ER stress mechanism; supercomplex review
2. Add BibTeX entries to `references.bib`
3. Write WASF3 subsection in ch06 with all content items
4. Write hypothesis environment
5. Register hypothesis in `hypothesis-registry.tex`
6. Update cross-references in ch07 and ch22
7. Update `changelog.tex`
8. `nix build` to verify

---

## Connections to Existing Content

- **Mitochondrial dysfunction** (ch06): WASF3 mechanism adds the actin cytoskeleton dimension
  to the Complex I/PDH-focused mitochondrial dysfunction already documented; distinct pathway
- **Viral mitochondrial disruption plan** (viral-mitochondrial-disruption.md): ER stress from
  viral proteins is a potential WASF3 upstream trigger; the two plans form a complete pathway
  from viral infection → ER stress → WASF3 → mitochondrial supercomplex disruption → ATP deficit
- **Exercise intolerance and PEM** (ch06, ch02): the WASF3 mechanism is a molecular explanation
  for why exercise produces disproportionate mitochondrial failure; connects to CPET findings
- **NIH deep phenotyping study** (ch22): WASF3 is one of the key mechanistic outputs from the
  NIH study; the two locations (ch06 mechanism, ch22 research study) should cross-reference
- **SARS-CoV-2 persistence** (ch07): spike protein ER stress → WASF3 upregulation provides
  a molecular link from viral persistence to mitochondrial dysfunction

---

## Estimated Certainty Levels

| Claim | Certainty |
|-------|-----------|
| WASF3 is elevated in ME/CFS muscle biopsies | 0.65 (NIH intramural study; single lab; needs replication) |
| WASF3 knockdown restores mitochondrial function in cell lines | 0.70 (NIH cell biology data; mechanistically clean result) |
| ER stress upregulates WASF3 | 0.70 (established cell biology; documented in multiple systems) |
| WASF3-driven actin disrupts mitochondrial supercomplexes | 0.60 (mechanistic model from NIH study; detailed) |
| WASF3 mechanism contributes to exercise intolerance in ME/CFS | 0.55 (logical connection; not independently validated in exercise context) |
| Viral protein expression causes ER stress driving WASF3 in ME/CFS | 0.45 (two-step inference; ORF9b-ER stress documented; WASF3 in ME/CFS documented; causal chain inferential) |
