---
name: medication-differential-analysis
description: For every medication discussed in the ME/CFS paper, generate self-contained differential diagnostic analysis — what response and non-response reveal about broken mechanisms, possible root causes, and the most targeted next treatment step. Produces a standalone, patient-accessible chapter section integrated into ch24. Use for building the differential diagnostic framework, retrofitting existing medication discussions, or after integrating a new treatment topic.
argument-hint: <medication name | "all" | "retroactive">
---

# Medication Differential Analysis

For every medication in the ME/CFS paper, produce a self-contained differential analysis: what does clinical response (or non-response) tell us about which mechanisms are broken, which root causes must be addressed, and what the next most targeted treatment step should be.

**IVP note:** This analysis shares the same change-driver set as ch24's existing "Interpreting Treatment Responses" section — both are driven by Part II pathophysiology. The expansion is a readability-prescribed split within the same IVP grouping.

**Scope:** $ARGUMENTS (single medication name, "all" for full inventory, or "retroactive" for full inventory + response-pattern synthesis)

**Guard:** If `$ARGUMENTS` is empty or "retroactive" is not recognized, ask for a medication name or confirm "all" before proceeding.

---

## Phase 1 — Inventory Medications

**Agent:** main session | **Model:** current

If scope is "all" or "retroactive", inventory all medications:

```bash
# Extract all medication names from treatment chapters
grep -rn "^=== " src/main/typst/mecfs/part3-treatment/ch24-medications-systems/ --include="*.typ" | head -80
grep -rn "^=== " src/main/typst/mecfs/part3-treatment/ch25-supplements-nutraceuticals/ --include="*.typ" | head -80
grep -rn "^=== " src/main/typst/mecfs/part3-treatment/ch27-emerging-therapies/ --include="*.typ" | head -80
grep -rn "^=== " src/main/typst/mecfs/part3-treatment/ch19-symptom-management/ --include="*.typ" | head -80
```

Group medications by mechanistic class:
- Immune-modulating (LDN, IVIG, rituximab, corticosteroids, LDA, cimetidine, immunoadsorption, etc.)
- Antiviral (valacyclovir, valganciclovir)
- Mitochondrial / energy substrates (CoQ10, NADH, NR/NMN, D-Ribose, L-Carnitine, ALA, etc.)
- Autonomic / cardiovascular (pyridostigmine, fludrocortisone, midodrine, ivabradine, beta-blockers, etc.)
- CNS stimulants / wake-promoting (modafinil, methylphenidate, amphetamines, solriamfetol, pitolisant, caffeine)
- Mast cell / MCAS (H1 antihistamines, H2 antihistamines, ketotifen, cromolyn, montelukast, quercetin, luteolin, PEA)
- Neuroactive / cognitive (memantine, LDA — also immune, fluvoxamine, gabapentin, pregabalin)
- Emerging / investigational (rapamycin, metformin, tVNS, daratumumab, BC007, etc.)

If scope is a single medication, skip to Phase 2.

**Output:** medication inventory list in `tmp/medication-inventory-<date>.md`
**Report:** "Phase 1: N medications inventoried across M classes."

---

## Phase 2 — Read Mechanism Foundations

**Agent:** main session | **Model:** current

For each medication (or medication class), read the relevant Part II mechanism sections. This anchors every differential claim in documented pathophysiology.

For each medication, identify:
1. The mechanism(s) the drug targets (from the medication's own section)
2. The Part II chapter(s) that describe those mechanisms
3. The current certainty of each targeted mechanism in ME/CFS

Read only the mechanism sections needed — do not re-read entire chapters.

**Output:** per-medication mechanism map in `tmp/medication-mechanism-map-<date>.md`

---

## Phase 3 — Generate Per-Medication Differential Entries

**Agent:** `medication-differential-analyst` | **Model:** opus

For each medication in scope, delegate one invocation of `medication-differential-analyst`. Process in batches by mechanistic class (medications within the same class benefit from coordinated analysis).

Each invocation receives:
- The medication name
- The medication's section content from the paper (mechanism, dosing, evidence, responder rate)
- The relevant Part II mechanism sections
- The per-medication entry format from the agent specification

**Per-medication output format:** See agent specification (`medication-differential-analyst.md`) for the complete entry structure.

**Quality gate per entry:**
- [ ] Mechanism of action explained in plain language (medical term + parenthetical definition)
- [ ] At least one "if works → mechanism" inference with certainty justification
- [ ] At least one "if fails → mechanism less likely" inference with caveats
- [ ] Non-response caveat present ("does not rule out because...")
- [ ] At least one response-pattern combination with another medication
- [ ] **Side-effect diagnostic analysis (MANDATORY):** at least one "if side effect X appears → mechanism/system Y is intact/hypersensitive/deficient" inference, AND at least one "if expected side effect Z is ABSENT → mechanism/system W is non-functional/desensitized" inference. Map: (a) exaggerated expected effects → target system at critical margin, (b) paradoxical reactions → regulatory inversion, (c) unexpected off-target effects → latent vulnerability, (d) tolerability ceiling → identifies which system has least reserve, (e) absence of expected effect → system too damaged to respond. Reference ch30 @sec:side-effects-diagnostic for the five-pattern framework.
- [ ] Root cause candidates listed
- [ ] Overall inference certainty stated with justification
- [ ] All Part II mechanism claims have `@sec:` cross-reference
- [ ] Patient-accessible language (no unexplained jargon, analogies where helpful)

**Output:** per-medication differential entries written to `tmp/differential-<medication-slug>.md`

**Report:** "Phase 3: N entries generated (K High, L Medium, M Low, P not assessable)."

---

## Phase 4 — Integrate into Chapter

**Agent:** main session | **Model:** current

### Single-medication scope

Insert the differential analysis into the medication's existing subsection in ch24, after the safety/evidence content, under a `==== What the Response Tells Us About Mechanisms` heading.

### "All" or "retroactive" scope

1. Insert each per-medication entry into its respective subsection in ch24 (same placement as above)
2. Generate the **Response Pattern Synthesis** section (see below) in `sec-interpreting-treatment-responses/`
3. Generate the **From Patterns to Root Causes** section (see below) in `sec-interpreting-treatment-responses/`
4. Add cross-references between medication entries and the synthesis sections

### Response Pattern Synthesis (for "all" / "retroactive")

A new subsection: `=== Putting It All Together: Response Patterns as a Diagnostic Tool`

Content:
- **Logic of pattern-based diagnosis**: explanation of how multiple medication responses together are more informative than any single response
- **Worked example 1**: A patient profile with 4-5 medication responses, showing how the pattern narrows root causes from ~10 candidates to 2-3
- **Worked example 2**: A different patient profile, showing how a different pattern points to different candidates
- **Diagnostic inference chains**: for each major ME/CFS root cause hypothesis, the expected medication response pattern (which medications should work, which should not)
- **Side-effect pattern integration (MANDATORY):** for each diagnostic inference chain, include expected side-effect profiles — which reactions confirm the mechanism, which paradoxical or absent reactions challenge it. The therapeutic response tells you what's broken; the side-effect profile tells you what's intact. Reference ch30 @sec:side-effects-diagnostic for the five adverse-reaction diagnostic patterns: (1) exaggerated expected effect → system at critical margin, (2) paradoxical reaction → regulatory inversion, (3) unexpected off-target effect → latent vulnerability, (4) tolerability ceiling → identifies least-reserve system, (5) absence of expected effect → system too damaged to respond.
- **How to use this in practice**: guidance for patients and doctors on systematic medication trialing as diagnostic process — try medications one at a time, track responses, feed into the pattern framework

### From Patterns to Root Causes (for "all" / "retroactive")

A new subsection: `=== From Medication Responses to Root Causes`

Content:
- **Principle**: medication response reveals which downstream mechanisms are broken; the pattern of broken mechanisms points upstream to root causes
- **Mapping table**: columns = root cause hypothesis / expected responder medications / expected non-responder medications / distinguishing medication (the one that breaks the tie between two hypotheses)
- **Sequential narrowing logic**: start with the broadest medication probe → narrow with increasingly specific probes → arrive at a small set of root cause candidates → propose the most targeted next treatment
- **Limitations**: this framework is inferential, not definitive; medication responses can be ambiguous; some root causes may not have a clean pharmacological probe yet

**Files modified:**
- `ch24-medications-systems.typ` (per-medication entries integrated into existing sections)
- `ch24-medications-systems/sec-interpreting-treatment-responses/` (new sections for synthesis and root cause mapping)

**Report:** "Phase 4: N entries integrated into ch24, synthesis section written (M words), root cause mapping written (K words)."

---

## Phase 5 — Build and Verify

**Agent:** main session | **Model:** current

1. `git add <all-modified-files>`
2. `nix build`
3. Fix any build errors (common: `@sec:` references to labels that don't exist, `<` in prose interpreted as label opener, `#include` directives to files not yet staged)
4. Verify all cross-references resolve: `grep -rn "@sec:" tmp/differential-*.md` and confirm each label exists in the source tree
5. Max 5 fix-verify iterations. Still failing → report errors and ask user.

**Report:** "Phase 5: build PASS / FAIL (N errors fixed)."

---

## Phase 6 — Review Differential Content

**Agent:** main session delegates to review agents | **Model:** varies

Scope: the new differential content written in Phase 4.

1. **Readability pass** (main session, current model): Read all new differential entries. Check:
   - Every medical term defined on first use?
   - Any sentence longer than 40 words? (Break up)
   - Any unexplained acronym?
   - Tone collaborative, not lecturing?

2. **Scientific accuracy pass** (`scientific-rigor-auditor`, sonnet): Verify all mechanistic claims are consistent with Part II chapters. Flag any overstatement.

3. **Cross-reference pass** (`typst-xref-checker`, haiku): Verify all `@sec:` and `@med:` references resolve.

Fix all findings before reporting convergence.

**Report:** "Phase 6: N readability fixes, M scientific accuracy flags resolved, K cross-reference fixes. Content verified."

---

## Skill Integration with `/integrate-topic`

When `/integrate-topic` integrates a new medication or treatment:

After Phase 5 (tiered integration) or Phase 7 (cross-hypothesis compatibility), add:

**Phase 5c — Differential Analysis for Treatment Topics** (if the integrated topic includes a medication or treatment):

1. Read the newly integrated medication content
2. Run `medication-differential-analysis` with scope = the new medication name
3. Integrate the differential entry into the medication's section
4. Update the consolidated Response Pattern Synthesis and From Patterns to Root Causes sections in ch24
5. Verify build

This is a lightweight addition — most of the infrastructure (consolidated synthesis, root cause mapping table) already exists if the retroactive pass has been run.

---

## Retroactive Application

To run the full retroactive analysis on all existing medications:

```
/skill medication-differential-analysis retroactive
```

This executes Phases 1–6 on the entire medication inventory, producing:
1. Per-medication differential entries (one per medication)
2. Response Pattern Synthesis section
3. From Patterns to Root Causes section
4. Cross-reference web linking all entries to Part II mechanisms and to each other

Expected effort: 8-12 agent invocations (one per medication class batch + synthesis passes).
Expected output: significant expansion of ch24's interpreting-responses section (~15-25KB of new content).
