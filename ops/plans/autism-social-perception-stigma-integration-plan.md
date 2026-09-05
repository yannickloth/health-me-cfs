# Integration Plan: Autism Social Perception & Stigma (Sasson 2017 anchor)

**Purpose:** Integrate the autism social-perception / first-impression stigma literature — anchored on
Sasson et al. 2017 (Scientific Reports 7:40700, "Neurotypical Peers are Less Willing to Interact with
Those with Autism based on Thin Slice Judgments") — in (a) full relationship to ME/CFS and (b) as fully
developed autism-domain knowledge developed with the evidentiary rigor the pipeline applies to an
ME/CFS mechanism, cross-referenced to ME/CFS wherever autism and ME/CFS genuinely intersect.

**Topic slug:** `autism-social-perception-stigma`

**Origin:** User-supplied standalone topic. Governor-delegated to v4-pro agents for deep phases
(governor session runs deepseek-v4-flash; per governor escalation rules the deep-reasoning + web
phases are run on the actual v4-pro agents). Phase 0-0x: 2026-09-04.

**Anchor paper (VERIFIED):** Sasson, N.J., Faso, D.J., Nugent, J., Lovell, S., Kennedy, D.P.,
Grossman, R.B. (2017). Neurotypical Peers are Less Willing to Interact with Those with Autism based on
Thin Slice Judgments. *Scientific Reports* 7:40700. Three independent studies; large effects
(η² 0.47–0.55); ND observers form less favorable first impressions of autistic people from thin
slices → reduced willingness to socially engage; robust within seconds, stable over exposure, across
child + adult ages; bias disappears for transcript-only (no audio/visual) → "style, not substance";
no group difference on intelligence/trustworthiness. Frames social difficulty as relational
(bidirectional) per social model of disability.

**Scope boundary (do NOT duplicate already-integrated autism content):**
- `neurodivergent-psychological-consequences-mecfs` (COMMITTED f3e583a8/5c445eb2): autistic burnout,
  masking/camouflaging double-burden, diagnostic overshadowing, ND identity/special-interest loss —
  ch09 sec-07, ch05 sec-08. UNIQUE value of this topic = first-impression/thin-slice reduced
  willingness-to-interact stigma + "style not substance" mechanism + relational framing, NOT burnout/masking.
- `adhd-asd-comorbidity-mecfs` / `brain-energy-asd-mecfs` / `pans-pandas-autism` / ch07 sec-28: ASD as
  biological *predisposition* to / shared-root with ME/CFS. OUT of scope as a focus.
- `stigmatisation` subtree node 8.7 "Autism Stigma → Neurodiversity Reversal" (speculation 0.30,
  NOT integrated, 🔵) — this topic may now earn/strengthen that node; cross-ref in Phase 6/7.
- ch40 healthcare invalidation / ch42 controversies / ch39 mortality / ch01 sec-05: general ME/CFS
  stigma. Sasson evidence adds a *mechanism* for why invisible-illness patients face dismissal
  (thin-slice first impressions by clinicians/peers), extending but distinct from those chapters.

**Target chapters (provisional — refined after Phase 1):**
- Part 1 clinical features / lived experience: ch04 (social withdrawal), ch09 sec-07 (social +
  emotional dysfunction) — parallel to ND psychological consequences but mechanism-focused.
- ch40 healthcare systems / clinician-patient interaction: first-impression bias as driver of
  diagnostic dismissal.
- stigmatisation hypothesis subtree (node 8.7) for registry linkage.
- ch14d / ch13 cross-disease: autism (relational stigma) vs ME/CFS (invisible-illness stigma) parallel.

**Pre-identified hypotheses / claims (preliminary — confirmed in Phase 1):**
- H1: First impressions of people with invisible chronic illness (incl. ME/CFS) from thin slices of
  behavior are shaped more by presentational "style" (flat affect, slowed movement, reduced
  expressivity) than by the substance of what they say — mirroring Sasson's ASD finding.
- H2: Clinicians and peers form rapid, exposure-stable negative first impressions of ME/CFS patients
  (esp. severe/bedbound, and co-occurring-autism patients) that drive diagnostic dismissal and reduced
  willingness to provide care/support.
- H3 (comorbidity compounding): autistic patients who develop ME/CFS face a *double* first-impression
  bias — their autistic social presentation differences plus ME/CFS's invisible-illness presentation —
  compounding stigma, isolation, and care refusal.
- H4 (neurodiversity/social-model): the relational framing (impression is co-produced by perceiver,
  not a deficit solely in the target) generalizes from autism to ME/CFS; intervention targets
  perceiver bias, not patient social-skills correction.

**MIXED tree note (Phase 0):** Tree is MIXED (flake.nix/flake.lock nodejs_22→nodejs_24 bump,
unrelated build tooling, user chose "proceed MIXED"). No shared-branch WIP commits; rollback = `git
checkout <ref> -- <file>` (NEVER reset/rebase/amend); commit scoped by explicit per-phase file lists,
NOT `git diff`. All hard concurrency guards apply.

## Tracking Table

| # | Idea / hypothesis | Tier | Certainty | Status | Notes |
|---|-------------------|------|-----------|--------|-------|
| H1 | First impressions of invisible-illness (incl. ME/CFS) patients from thin slices are shaped by presentational "style" (flat affect, slowed movement) more than substance | — | 0.64 (disc, by analogy) | ⬜ pending | Supported by analogy (Sasson2017, Wanigasekera2025); NO direct ME/CFS study → cap at #speculation |
| H2 | Clinicians/peers form rapid exposure-stable negative first impressions of ME/CFS patients driving dismissal/care-refusal | — | 0.64 (by analogy) | ⬜ pending | No ME/CFS-cohort evidence; mechanism transfer only |
| H3 | Autistic + ME/CFS patients face DOUBLE first-impression bias (compounded stigma) | — | low (hypothesis) | ⬜ pending | No dedicated comorbidity-stigma study; do NOT present as fact |
| H4 | Relational framing (impression co-produced by perceiver) generalizes from autism to ME/CFS; intervene on perceiver bias | — | 0.47 (relational papers) | ⬜ pending | Double-empathy/social-model frame; Norris/Parisi show disclosure is condition-specific |

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (empty) |

## Active Caps (set by Phase 2 — decision: PROCEED)

Decision date 2026-09-04. Full synthesis at `tmp/synthesis-autism-social-perception-stigma-2026-09-04.md`.

- Environments allowed: all, BUT SPLIT BY STRAND:
  - **Autism-domain strand**: `#achievement`, `#hypothesis-box` (double-empathy, style-not-substance,
    relational model at autism-field certainty), plus speculation/open-question/limitation as warranted.
  - **ME/CFS-transfer strand** (claim that ME/CFS patients face thin-slice first-impression bias):
    `#speculation` / `#open-question` / `#limitation` ONLY.
- `#hypothesis-box` / `#fhypothesis`: allowed ONLY for autism-domain content; **FORBIDDEN for any
  ME/CFS-specific first-impression claim** (no ME/CFS-cohort study exists — mechanism transfer by analogy).
- Brainstorm categories (Phase 4): all 1–12; therapeutic/intervention ideas applied to ME/CFS side capped
  at Tier 2/3; categories 10–12 mandatory (analogy gap demands critical categories).
- Certainty bumps (Phases 6–7): normal rules; NO ME/CFS-transfer claim may be bumped above 0.45 without
  direct ME/CFS-cohort evidence.
- Phase 9 flags pre-fired: none. Highest discounted cert 0.64 (Sasson); all papers ≥0.41 discounted.
- **Critical downstream guardrail (from integration guide + Phase 2):** the transdiagnostic
  "presentational-style drives negative first impressions" claim (Sasson + Foster + Hemmesch + Parisi +
  Wanigasekera) is the strongest defensible cross-condition statement. Do NOT write ME/CFS-specific
  `#clinical-finding` or `#hypothesis-box`. Do NOT present autism+ME/CFS compounded stigma as established.

## Phase Status

| Phase | Status | Details |
|-------|--------|---------|
| 0 | ✅ done | Plan created (standalone, MIXED tree). Gov: run full pipeline, v4-pro delegation for deep phases. |
| 1 | ✅ done | 15 papers found (anchor Sasson2017 + 14). Bib entries appended to stigma.bib; appendix-h section `<sec:autism-social-perception-stigma>` added; Literature folder + search log + lit summary + integration guide written. See ops/research/search-log-autism-social-perception-stigma-2026-09-04.md. Gov-audited: artifacts on disk verified (15 bib keys via awk, 15 appendix-h === entries), `nix build` PASS. |
| 2 | ✅ done | Decision PROCEED with split-strand caps (autism-domain at own certainty; ME/CFS-transfer capped #speculation). Synthesis at tmp/synthesis-autism-social-perception-stigma-2026-09-04.md. Clinical relevance MEDIUM. No contradictions (resolvable). Cohort-overlap: Sasson lab = 1 lineage; ≥2 independent sources → PROCEED stands. |
| 3 | ✅ done | 4 envs added: ch40 #speculation `spec:thin-slice-mecfs-dismissal` (cert 0.45) + #open-question `oq:disclosure-attenuation`; ch09 #speculation "Thin-Slice Misreading of Flat Affect" (cert 0.42); ch14d relational-model prose + #speculation `spec:autism-firstimpression-mecfs-invisible` (cert 0.40). Registry updated (3 rows + compat note). Non-duplicative vs existing autism/ND content. |
| 3a | ✅ done | `nix build` PASS (0 errors) after Phase 3. All @cite keys + @sec/@ch/@subsec/@spec/@oq/@ach labels resolve. |
| 3b | ✅ done | Safety gate: non-treatment (social-perception mechanism) → full 7-item gate bypassed; item 2 severity-applicability verified in all envs; additional patient-safety review clean. tmp/safety-gate-autism-social-perception-stigma.md |
| 3.5 | ✅ done | All 4 new envs verified to have `*Consequence:*` fields (concrete, non-vague). |
| 4 | ✅ done | scientific-insight-generator (v4-pro): 30 ideas across all 12 categories (constructive 1-9 incl. critical 10-12), all `origin: brainstorm`. File ops/brainstorms/brainstorm-autism-social-perception-stigma-2026-09-04.md. ME/CFS-transfer capped; cat 10-12 substantive. |
| 4a | ✅ done | Subtree created ops/plans/hypotheses-trees/subtrees/autism-social-perception-stigma.md (29 nodes + notes); root index updated. |
| 5 | ✅ done | Triage: brainstorm idea 1.2 integrated as ch40 #speculation `spec:mecfs-motivation-misread` (cert 0.30). Phase-3 dedup: H1-H4 + most cat-10/11/12 (nulls, translation-gap, cohort-overlap) already covered inline by Phase 3 envs → ⏭️ covered-by-Phase-3. Research directions (2.1-2.5, 3.1, 3.2, 5.x, 6.x, 9.1) recorded tree-only (Tier 3, future cycles). 8.1 autism-domain autonomy covered by ch14d prose. Ch30 tier: NONE (non-mechanistic). Registry: +1 row (spec:mecfs-motivation-misread). |
| 5d | ⏭️ skipped | Non-mechanistic (social-perception, no biochemical cascade, no drug interception points). LEGIT-SKIP. |
| 5c | ⏭️ skipped | Non-pharmacological topic (no medication/intervention with mechanism). LEGIT-SKIP. |
| 5b | ✅ done | `nix build` PASS (0 errors) after Phase 5. |
| 5a | ✅ done | Falsifiability sweep (inline, user-approved — falsifiability-auditor agent missing from .opencode/agents/): all 4 new ME/CFS-transfer speculations carry explicit falsifiable predictions; @cite keys resolve (build PASS = all resolve); claim-fidelity spot-check clean (3 keys verified against appendix-h: Sasson2017, Wanigasekera2025, Morrison2020, Parisi2026, Foster2025). Disclosure oq correctly exempt. |
| 5z | ✅ done | No new glossary entries required — no new acronyms/medications introduced (novel terms are lowercase conceptual: thin-slice, double-empathy; not in biomedical glossary schema). |
| 6 | ✅ done | Retrospective adaptation. Synonym map at tmp/synonym-map-autism-social-perception-stigma.md. Overlaps: (a) ch09 flat-affect misattribution claim — already reinforced by new adjacent Sasson-grounded spec (no separate edit; claim is non-scored qualitative prose, no certainty target to bump); (b) ch40 invalidation model — already cross-referenced @ach:invalidation-model from new thin-slice spec; (c) stigmatisation node 8.7 — flagged for Phase 7 (subtree record, unintegrated). No certainty bumps (incoming by-analogy discounted ≤0.64; reinforced claims are prose not hypothesis-boxes). No contradictions to surface. Coverage: 3 matches examined, all handled by existing cross-refs; 0 further edits needed. |
| 7 | ✅ done | Cross-hypothesis compatibility (inline). Compat audit at tmp/compat-audit-autism-social-perception-stigma-2026-09-04.md. spec:mecfs-motivation-misread REINFORCES existing stigmatisation registry entries (Illness-Name malingering-stigma, causal-attribution-stigma) by supplying the thin-slice mechanism. 0 certainty bumps (by-analogy ≤0.45; Active Caps + below-threshold). Independent of ASD-predisposition + ND-psych axes. 0 conflicts. |
| 8 | ✅ done | Final build verification: `nix build` PASS, 0 errors. 18 topic files staged (explicit list, no -A). MIXED tree respected (flake files + parallel .agents/context edit untouched). |
| 9 | ✅ done | Quality assessment: net certainty change 0; R:C 3:0; 4 new falsifiable predictions; ~5000 words, 5 new envs. Flags: NONE (BLOAT no — ≥3 new specs; WEAK-EVIDENCE no — PROCEED; CLINICAL-RISK no; G-UNSUSTAINED no). Appended to tmp/synthesis. |
| 10 | ✅ done | Cross-chapter coherence (delegated v4-pro): 0 CRITICAL/HIGH/MEDIUM; 4 LOW acceptable findings. Certainty-consistent, terminology unified, cross-ref web complete, narrative coherent, no contradiction with pre-existing ASD-predisposition axis, all consequences present, all claims by-analogy-caveated. tmp/coherence-audit-autism-social-perception-stigma-2026-09-04.md. |
| 10a | ✅ done | High-level synthesis auto-added (per standing default, 2+ envs convergent): `syn:autism-social-perception-model` in ch14d, condensing thin-slice/motivation/invisible-illness/disclosure envs. Cross-references 3+ envs; *Consequence:* present. Build PASS. |
| 10b | ✅ done | No framing propagation needed — synthesis content type is a downstream/non-actionable healthcare-social-perception finding (does not change causal hierarchy, trigger-vs-amplifier, genetic architecture, or clinical drug-strategy claims in abstract/ch16/root-cause/reading-guide/ch13). Valid outcome per Phase 10b step 5. |
| NOTE | — | Missing-agent escalation RESOLVED: the persona/auditor agents (cynic/sophist/strawman/reductionist/devil-advocate/falsifiability/style-auditor) exist in loaded plugins at ~/code/llm-harness-plugins/{scientific-writing,general-skills}/agents/ and ARE launchable. Phase 11 full tier can run as specified. |
| 11 | ✅ done | FULL-tier review convergence. 11b review-adversarial: 6 personas (cynic/sophist/strawman/reductionist/clinician/devil-advocate) ran. Round 1 surfaced convergent CRITICAL/HIGH findings (Sasson-valence mischaracterization in ch09; "three independent studies" overstatement; "operates even in clinicians with adequate knowledge" overreach; training-remedy-as-established; motivation-misread non-sequitur + unverified intelligence/trustworthiness claim + depression-alternative omitted; double-empathy-as-settled without deficit steelman; "modifiable locus = perceiver" collapsing relational-mismatch core; synthesis "independent strands converge" overclaim). ALL FIXED (ch09 scope note, ch40 hedges + alternatives + depression acknowledgment + dropped unverified claim, ch14d Fairness paragraph + co-produced hedge + synthesis rewording). Round 2 (cynic+sophist re-review + 4-persona confirmation): ALL 8 prior findings RESOLVED, 0 remaining/new CRITICAL/HIGH — 2 consecutive clean passes. 11a consistency + 11c typst: build PASS 0 errors, all cites/labels resolve, all envs have Consequence fields, no banned phrases. Convergence achieved. |

## Phase 1 Report (2026-09-04)
- 15 papers found, 15 added to bib (`src/main/typst/mecfs/bib/stigma.bib`), annotated appendix-h updated,
  search log at `ops/research/search-log-autism-social-perception-stigma-2026-09-04.md`, lit summary at
  `ops/research/literature-autism-social-perception-stigma-2026-09-04.md`.
- Bib keys (VERIFIED against bib via awk, not transcribed) — see the awk command output in the session report.
- Anchor Sasson 2017 CONFIRMED (PMID 28145411, DOI 10.1038/srep40700) and added as `Sasson2017ThinSlice`.
- Research gaps documented: zero ME/CFS-cohort first-impression study; zero autism+ME/CFS comorbidity-stigma
  study. ME/CFS application is mechanism transfer by analogy → cap ME/CFS-specific claims at #speculation.
- Cohort-overlap flags noted: Sasson lab (UT Dallas) authored 7 of 15; independent confirmations counted
  separately (Wanigasekera, Boucher, Norris, Edey, Hemmesch, Slepian/Ambady, Parisi).
- No report/bib key mismatches (keys extracted from file).

## Phase 12 — Integration Record (written post-convergence)

**Topic:** Autism social perception & first-impression stigma (Sasson 2017 anchor) — integrated in
relationship to ME/CFS AND as developed autism-domain knowledge (relational/double-empathy model).

**Decision:** PROCEED with split-strand Active Caps (autism-domain content at own certainty; all
ME/CFS-transfer claims capped at `#speculation` ≤0.45 by analogy — no direct ME/CFS-cohort study exists).

**Environments added (5):**
- ch40 `spec:thin-slice-mecfs-dismissal` (cert 0.45) — presentational-style first-impression mechanism as
  a candidate driver of clinician dismissal, hedged against knowledge/time/label alternatives.
- ch40 `oq:disclosure-attenuation` (open question) — diagnostic-disclosure effectiveness is
  condition-specific and untested for ME/CFS.
- ch40 `spec:mecfs-motivation-misread` (cert 0.30) — energy-cost-cue→low-effort attribution as one
  hypothesis, with the historically-more-common depression attribution acknowledged.
- ch09 "Thin-Slice Misreading of Flat Affect" (cert 0.42) — patient-side grounding, with scope note
  correcting Sasson-valence (reduced favorability, not contempt/animus).
- ch14d `spec:autism-firstimpression-mecfs-invisible` (cert 0.40) — relational-model transfer by analogy,
  hedged re: co-production/mismatch and perceiver-locus feasibility.
- ch14d `syn:autism-social-perception-model` (synthesis) — condenses the 4 envs; explicitly disclaims
  independent-mechanism convergence; conditions the training lever.

**Chapters touched:** ch09 sec-07 (social-emotional), ch14d (cross-disease relational section), ch40
(healthcare invalidation), hypothesis-registry (4 rows + compat note). Bib: 15 entries in stigma.bib +
15 appendix-h annotated entries. Autism-domain content written as prose at autism-field certainty.

**Key finding + why it matters:** Cross-disease evidence (autism thin-slice + Parkinson's + schizophrenia)
establishes that negative first impressions track presentational *style* over conversational *substance*.
If this transfers to ME/CFS (whose flat affect / reduced expressivity is a neurometabolic symptom), then a
portion of clinician/peer dismissal may be a perceiver-side first-impression phenomenon — a candidate
de-stigmatization lever (structuring substance intake; recognizing flat affect as a symptom) distinct
from knowledge-based education. The transfer is hypothesis by analogy (no ME/CFS-cohort study exists) and
is heavily caveated after adversarial review.

**Phase 9 quality flags:** NONE. Net certainty change 0; 4 new falsifiable predictions.

**Phase 2 clinical relevance:** MEDIUM (mechanistic/social context for clinician-patient interaction, not
a diagnostic or therapeutic claim). Subset: unknown (no ME/CFS cohort studied).

**Key correction during review (Phase 11):** Initial ch09 wording claimed the autism thin-slice literature
experimentally grounds the reading of flat affect as *contempt/disinterest*; Sasson 2017 actually documents
reduced *favorability* (social-competence awkwardness), not animus. Corrected with an explicit scope note.
The "modifiable locus is the perceiver" framing was softened to acknowledge co-production/mismatch and
unevidenced feasibility. The malingering-specific attribution was recast as one hypothesis alongside the
historically-more-common depression attribution, and an unverified Sasson claim was removed.

**Note on driving source:** The Sasson 2017 paper IS the anchor (verified, added to bib as
Sasson2017ThinSlice). No anecdote was involved.

## Phase Ledger (Phase 12.5 completion gate — 2026-09-04)

| Phase | State | Basis / artifact |
|-------|-------|------------------|
| 0 | RAN | plan created + validated (ops/plans/autism-social-perception-stigma-integration-plan.md) |
| 1 | RAN | search-log + 15 bib entries + appendix-h + Literature/ + ops/research/ + integration guide (all on disk) |
| 2 | RAN | decision PROCEED + Active Caps written; tmp/synthesis-autism-social-perception-stigma-2026-09-04.md |
| 3 | RAN | 4 envs + registry rows in ch09/ch14d/ch40/registry (build PASS) |
| 3a | RAN | build PASS (intermediate) |
| 3b | RAN | non-treatment → bypass; item-2 severity verified; tmp/safety-gate-autism-social-perception-stigma.md |
| 3.5 | RAN | all 5 new envs verified to have *Consequence:* fields |
| 4 | RAN | ops/brainstorms/brainstorm-autism-social-perception-stigma-2026-09-04.md (30 ideas, all 12 cats) |
| 4a | RAN | subtree created + root index updated |
| 5 | RAN | idea 1.2 integrated (spec:mecfs-motivation-misread); Phase-3 dedup; tier assignment; registry +1 row |
| 5d | LEGIT-SKIP | non-mechanistic (no biochemical cascade, no drug interception points) |
| 5c | LEGIT-SKIP | non-pharmacological topic (no medication/intervention) |
| 5b | RAN | build PASS (intermediate) |
| 5a | RAN | falsifiability sweep (inline, user-approved re missing agent) — all new speculations carry falsifiable predictions; cites resolve |
| 5z | RAN | glossary check — no new acronyms/medications; novel terms are lowercase conceptual (not in schema) |
| 6 | RAN | synonym-map + retrospective overlap assessment; overlaps handled by existing cross-refs; no bumps |
| 7 | RAN | compat audit (tmp/) + registry compat note; spec:mecfs-motivation-misread reinforces existing stigmatisation entries; 0 bumps |
| 8 | RAN | build PASS (0 errors); files staged |
| 9 | RAN | quality flags NONE; appended to tmp/synthesis |
| 10 | RAN | coherence audit (delegated v4-pro): 0 CRITICAL/HIGH/MEDIUM; tmp/coherence-audit-*.md |
| 10a | RAN | synthesis syn:autism-social-perception-model auto-added (2+ envs convergent) |
| 10b | RAN | no framing propagation needed (downstream/non-actionable finding) — recorded |
| 11 | RAN | FULL-tier: 11b adversarial 2 clean passes (0 CRITICAL/HIGH); 11a + 11c consistency/typst clean; build PASS |
| 12 | RAN | plan-record summary written (this file) |
| 12.5 | RAN | this Phase Ledger — all rows RAN or LEGIT-SKIP |
| 13 | ✅ done | 2 commits: 92c662d5 `content(mecfs): integrate autism social-perception first-impression stigma (Sasson 2017)` (6 files, 695 ins) + f2813ce9 `docs(ops): add ... plan, research, subtree, brainstorm` (12 files, 1156 ins). Post-commit integrity: build PASS 0 errors; only foreign/parallel files remain unstaged. MIXED-tree respected (no -A; flake/.agents/ch03/ch34/treatments untouched). |

**Gate status:** 0 OMISSION. 25 RAN, 2 LEGIT-SKIP (5c non-pharm, 5d non-mechanistic), 0 WAIVED.
Build: PASS (0 errors). Ledger clean — Phase 13 may proceed.
