# Integration Plan — IgG/FcγR-Mediated Mast Cell Activation (Non-IgE Pathway)

**Date:** 2026-10-19
**Mode:** FULL standalone `/integrate-topic` (no parent brainstorm)
**Topic slug:** `igg-fcgammar-mast-cell`
**One-line aim:** Name IgG-FcγRI/FcγRIIA as an IgE-independent mast cell activation pathway in the paper's existing pathway lists, and integrate the hypotheses it enables.

---

## Correction notice (read this first)

An earlier version of this plan declared **PROCEED on raw certainty** and used a
"lite tier" justification. Both were wrong:

1. **The population-relevance discount applies BEFORE the Phase 2 decision, and PROCEED is
   evaluated on *discounted* certainty** (`SKILL.md:305`, `:309`). Confirmed against the
   2026-10-18 handgrip cycle, which wrote `0.60 × 0.65 = 0.39`, `0.55 × 0.85 = 0.47`, etc.
2. **There is no general "lite mode".** `SKILL.md:346` permits the search-log-alone evidence
   base **only** for the Phase 2b decision gate. It is not a pipeline-wide exemption.

Discounted certainties for this topic are 0.16 (primaries) / 0.20 (review). The Phases 12.5
ledger records the corrected handling of every phase.

**Recorded decision:** PROCEED, by **explicit user-authorized override** (2026-10-19). The
reliable reading of the decision table is REJECT (first matching row) or PARTIAL; the user
directed PROCEED, invoking the DEFER-row upward-override language ("if the topic's known
biochemistry intersects with mechanisms documented in ME/CFS … override to PARTIAL … or
PROCEED"). This override is recorded here as a deliberate deviation, not as a correct
application of the table. **The certainty caps below still bind** — "full integration" extends
scope, not numbers.

---

## Evidence set (Phase 1)

| Bib key | Authors / year | Journal | Tier | Raw | Population w. | Discounted | Independent lab |
|---------|----------------|---------|------|-----|---------------|------------|-----------------|
| `Okayama2000FcgammaRIHumanMast` | Okayama, Kirshenbaum, Metcalfe 2000 | J Immunol | in-vitro | 0.40 | 0.40 | **0.16** | Metcalfe/Gilfillan |
| `Woolhiser2001IgG1MastFcgammaRI` | Woolhiser, Okayama, Gilfillan, Metcalfe 2001 | Eur J Immunol | in-vitro | 0.40 | 0.40 | **0.16** | Metcalfe/Gilfillan |
| `Zhao2006FcgammaRIIaSkinMast` | Zhao, Kepley, Morel, Okumoto, Fukuoka, Schwartz 2006 | J Immunol | in-vitro | 0.40 | 0.40 | **0.16** | Schwartz |
| `Burton2018FcgammaRIIbTissueMast` | Burton, Eiff, Dent, … Oettgen 2018 | Front Immunol | in-vitro | 0.40 | 0.40 | **0.16** | Oettgen |
| `Tkaczyk2004FcgammaRMastReview` | Tkaczyk, Okayama, Metcalfe, Gilfillan 2004 | Int Arch Allergy Immunol | narrative | 0.50 | 0.40 | **0.20** | Metcalfe/Gilfillan |
| `Hide1993AntiFcepsilonRIUrticaria` | Hide et al. 1993 | NEJM | non-randomized | 0.70 | (human disease precedent) | — | Greaves |
| `Niimi1996DermalMastFcepsilonRIUrticaria` | Niimi et al. 1996 | J Invest Dermatol | non-randomized | 0.70 | (human disease precedent) | — | Greaves |
| `Syenina2015DengueMastFcgammaR` | Syenina et al. 2015 | eLife | animal | 0.40 | (mouse) | — | St John |

**Anti-inflation:** Okayama + Woolhiser + Tkaczyk are ONE laboratory. Zhao and Burton are
independent. Convergence = **two independent laboratories**, never "five studies".

Burton 2018 full text filed. The other four are abstract-only; every written figure is quoted
verbatim in `ops/research/fragments-igg-fcgammar-mast-cell-2026-10-19.md`.

---

## Active Caps (set by Phase 2 — decision: PROCEED, user override)

- Environments allowed: **all** (in practice #speculation / #open-question / #limitation /
  #prediction, because the evidence supports no more)
- #hypothesis-box / #fhypothesis: **allowed by the decision, but NOT USED** — no claim
  exceeds discounted certainty 0.20, so a hypothesis-box environment would be unsupported
- Brainstorm categories (Phase 4): **all 1–12**
- Certainty bumps (Phases 6–7): **allowed by the decision; not applied** — incoming discounted
  certainty (≤0.20) is below the 0.40 evidence-quality floor, so Phase 6 is citation-only
- Phase 9 flags pre-fired: **WEAK-EVIDENCE** (fires via the second trigger, ">50% of papers
  have certainty <0.40"; 100% do, on discounted certainty)

---

## Decision detail (Phase 2)

**Healing relevance:** `none — knowledge only`
**Clinical relevance:** LOW — research-only. **Subset:** unknown.
**Contradictions:** none. One resolvable divergence (rodent FcγRIII vs human FcγRI/FcγRIIA),
stated as a translation caveat.
**Decision auditability:** PRISMA-lite complete (search log on disk). ⚠ Inclusion criteria
written after screening, not pre-registered — flagged.

---

## Content changes

| # | File | Change |
|---|------|--------|
| 1 | `ch08/…/subsec-08-mast-cell-activation-syndrome-mcas.typ` | Pathway list + 8 environments (H1, H2, B1, 10a, 10b, 10c, NULL, EQ) |
| 2 | `ch17-…/ch14d-cross-disease.typ` | Pathway list + human-disease precedent paragraph (X1) |
| 3 | `ch15-…/speculations/spec-gpcr-autoantibody-mediated-mast-cell-sen.typ` | IFN-γ gate + IgG-subclass toggle arms (H1, H3) |
| 4 | `ch51-…/subsec-01-mast-cell-degranulation-model.typ` | IFN-γ-gated, slower IgG priming term (M1) |
| 5 | `bib/mast-cell.bib` | +8 entries (`mast-cell-fcgammar-igg` group) |
| 6 | `appendices/appendix-h-annotated-bibliography.typ` | +8 annotated entries |
| 7 | `part4-research/hypothesis-registry.typ` | Mirror new environments |

Deliberately NOT changed: `ch16-comparative-nosology.typ` four-pathway list (food-trigger-specific enumeration).

---

## Phase 5c — Differential analysis: LEGIT-SKIP

`SKILL.md:767` — *"Skip if: … evidence is purely animal/preclinical."* The JAK-inhibitor and
FcRn-antagonist ideas rest entirely on in-vitro immunology with **zero human ME/CFS evidence**.
No ch24 differential entry is written. The ideas remain in the brainstorm backlog.

*User decision 2026-10-19:* 5c skip accepted. No waiver is requested or recorded — the
earlier "full integration including drug chapters" instruction is superseded by this
acceptance, so the gate stands as written.

## Phase 5d — Pathway-to-drug tracing: RAN, ops-only

`SKILL.md:791` — certainty 0.10–0.29 → *"Do NOT write to chapter — ops-only. Tag trace:
speculative — below chapter integration threshold (cert < 0.30)."* Mechanism certainty is
0.16. Trace written to `ops/integration-guides/pathway-drug-trace-igg-fcgammar-mast-cell.md`.
No ch25 cascade file, no sec-12 entry.

*User decision 2026-10-19:* 5d ops-only accepted. No waiver is requested or recorded.

---

## Tracking table

| # | Item | Certainty | Status | Notes |
|---|------|-----------|--------|-------|
| 0 | Phase 0 plan maintained | — | ✅ | this file |
| 1 | Literature research (8 papers, 8 bib keys) | — | ✅ | `ops/research/search-log-2026-10-19-igg-fcgammar-mast-cell.md`; fragments file |
| 2 | Synthesis + decision **PROCEED (user override)** | — | ✅ | `tmp/synthesis-igg-fcgammar-mast-cell-2026-10-19.md` |
| 3 | Content development (lists + environments) | ≤0.20 | ✅ | 4 chapters + registry |
| 3a | Intermediate build check | — | ✅ | green |
| 3b | Pre-integration safety gate | — | ✅ | `tmp/safety-gate-igg-fcgammar-mast-cell-2026-10-19.md` |
| 3.5 | Non-specialist consequence verification | — | ✅ | every new environment carries `*Consequence.*` |
| 4 | Creative brainstorming | — | ✅ | 17 ideas, `ops/brainstorms/brainstorm-igg-fcgammar-mast-cell-2026-10-19.md` |
| 4a | Hypothesis tree update | — | ✅ | `ops/plans/hypotheses-trees/subtrees/igg-fcgammar-mast-cell.md` |
| 5 | Tiered integration | ≤0.20 | ✅ | 11 Tier-1 + 5 critical integrated; drug ideas deferred (5c skip) |
| 5a | Inline falsifiability | — | ✅ | every constructive environment carries a falsifiable prediction |
| 5b | Build check | — | ✅ | see Phase 8 |
| 5c | Differential analysis | — | LEGIT-SKIP | preclinical-only evidence |
| 5d | Pathway-to-drug tracing | — | RAN (ops-only) | cert 0.16 < 0.30 |
| 6 | Retroactive adaptation | — | RAN (citation-only) | incoming ≤0.20 below the 0.40 floor |
| 7 | Cross-hypothesis compatibility | — | RAN | `tmp/compat-audit-igg-fcgammar-mast-cell-2026-10-19.md` |
| 8 | Build verification | — | ✅ | `typst compile --root .` clean |
| 9 | Quality flags | — | ✅ | WEAK-EVIDENCE fired |
| 10 | Coherence check | — | ✅ | `tmp/coherence-audit-igg-fcgammar-mast-cell-2026-10-19.md` |
| 10a | Applicability scan | — | ✅ | see Phase Ledger |
| 10b | Framing propagation | — | ✅ | see Phase Ledger |
| 11 | Review to convergence | — | ✅ | see Phase Ledger |
| 12 | Plan record | — | ✅ | this file |
| 12.5 | Completion gate (Phase Ledger) | — | ✅ | see below |
| 13 | Commit | — | ✅ | see Phase Ledger |

---

## PDF acquisition

| Paper | Status |
|-------|--------|
| Burton 2018 | FILED (open access, 22 pp) |
| Okayama 2000 | UNAVAILABLE — aai.org bot challenge; no OA copy |
| Woolhiser 2001 | UNAVAILABLE — Wiley paywall, no OA version |
| Zhao 2006 | UNAVAILABLE — PMC deposit not served as PDF; aai.org bot-gated |
| Tkaczyk 2004 | UNAVAILABLE — Karger paywall, no OA version |

Unavailability recorded per `SKILL.md:1784` ("filed PDF **or a recorded unavailability
reason**"). Abstract-only risk is bounded: every written figure is quoted verbatim in the
fragments file.

**Correction (2026-10-19).** Two files committed by the earlier literature commit carry a
`.pdf` extension but are **HTML documents, not PDFs** (`file` reports *HTML document, ASCII
text*): `Okayama2000FcgammaRIHumanMast.pdf` (1,536 B) and `Zhao2006FcgammaRIIaSkinMast.pdf`
(1,817 B) — aai.org bot-challenge pages. A placeholder that looks like a filed paper is worse
than an honest gap, so both were removed in this commit (`git rm`; forward-only, no history
rewrite). The unavailability reasons above stand, and `abstract.txt` remains the recorded
artifact. Burton 2018 is a genuine 22-page PDF.

---

## Verification

- `typst compile --root . src/main/typst/mecfs/loth2026-mecfs.typ …` — clean, 0 diagnostics.
- All 8 new citation keys resolve; no duplicate bib keys.
- No `ops/` or `tmp/` path appears anywhere in `src/main/typst/mecfs/**`.

---

## Phase 12 — Plan record

**Outcome.** The IgG/FcγR (IgE-independent) mast cell route is now named in the paper's pathway enumerations and carried as a fully-capped speculative model: 10 new environments (1 synthesis, 4 constructive, 5 limiting), 4 registry entries, 3 new annotated-bibliography entries, 11 glossary entries, and 8 bib entries. Not one treatment sentence was written.

**What went wrong in this cycle (recorded, not hidden).** Three errors were made and corrected forward:
1. An initial "lite tier" justification was used to skip most of the pipeline. That reading was wrong — `SKILL.md:346` scopes the lite evidence base to the Phase 2b gate only.
2. The Phase 2 decision was recorded as PROCEED on **raw** certainty. The mandatory population-relevance discount applies **before** the decision (`SKILL.md:305`, `:309`), and on discounted certainty (0.16/0.20) the table's first matching row is REJECT. The user then directed PROCEED by explicit override. Recorded as an override, not as a correct table application.
3. Phase 10a (synthesis) and Phase 5z (glossary) were initially missed; both subsequently ran, and because 10a ran after Phase 11, a focused Phase 11 delta-review was run on the synthesis afterwards.

**Certainty discipline.** Zero certainty bumps. Every new claim is capped by the discounted in-vitro/narrative ceiling. The anti-inflation correction holds in the text: the five primary papers reduce to a single Metcalfe/Gilfillan laboratory with only Zhao and Burton independent — the document never implies five independent studies.

**Still open (not this cycle's to close).** The `ch16-comparative-nosology.typ` food-trigger four-pathway list was deliberately left unchanged — the user has not yet decided whether it should also name the IgG route. Recorded here until answered.

---

## Phase 12.5 — Completion gate (Phase Ledger)

| Phase | State | Evidence / condition that fired |
|-------|-------|--------------------------------|
| 0 | **RAN** | `ops/plans/igg-fcgammar-mast-cell-activation-integration-plan.md` (this file) |
| 1 | **RAN** | `ops/research/search-log-2026-10-19-igg-fcgammar-mast-cell.md`; 8 bib keys; Burton 2018 PDF filed under `Literature/immune-dysfunction/`; 4 recorded unavailability reasons (abstract-only) |
| 2 | **RAN** | `tmp/synthesis-igg-fcgammar-mast-cell-2026-10-19.md`; decision PROCEED (user-authorized override — recorded in the Correction notice) |
| 3 | **RAN** | 4 chapters + registry; 10 environments |
| 3a | **RAN** | intermediate build PASS |
| 3b | **RAN** | `tmp/safety-gate-igg-fcgammar-mast-cell-2026-10-19.md` |
| 3.5 | **RAN** | 10/10 new environments carry a `*Consequence.*` field |
| 4 | **RAN** | `ops/brainstorms/brainstorm-igg-fcgammar-mast-cell-2026-10-19.md` (17 ideas) |
| 4a | **RAN** | `ops/plans/hypotheses-trees/subtrees/igg-fcgammar-mast-cell.md` + root index row |
| 5 | **RAN** | triage + integration; 11 constructive Tier-1, 1 Tier-3, 5 critical bypassed |
| 5a | **RAN** | falsifiability applied — 4 constructive environments each carry an inline falsifiable prediction |
| 5b | **RAN** | build PASS |
| 5c | **LEGIT-SKIP** | `SKILL.md:767` — *"Skip if: … the intervention has no known mechanism OR evidence is purely animal/preclinical."* JAK/FcRn/supplement/combination ideas rest on in-vitro evidence with no human ME/CFS evidence |
| 5d | **RAN** | `SKILL.md:791` — certainty 0.16 → 0.10–0.29 band → *"Do NOT write to chapter — ops-only"*; trace at `ops/integration-guides/pathway-drug-trace-igg-fcgammar-mast-cell.md`, tagged speculative |
| 5z | **RAN** | 11 glossary entries added to `src/main/resources/glossary-en.json`; 4 false positives filtered (`DOI`, `PMID`, `III`, `IFN` — `IFN-γ` already covered) |
| 6 | **RAN** | Evidence-quality floor: incoming discounted certainty ≤0.20 < 0.40 → citation-only; **zero** pre-existing certainty values altered |
| 7 | **RAN** | `tmp/compat-audit-igg-fcgammar-mast-cell-2026-10-19.md`; 8 reinforcement, 2 feed-into, 7 independent, 1 consistency edit; bump log empty |
| 8 | **RAN** | `typst compile --root .` PASS, 0 warnings/errors |
| 9 | **RAN** | `tmp/quality-audit-igg-fcgammar-mast-cell-2026-10-19.md`; flag `WEAK-EVIDENCE` fired (100% of papers <0.40 discounted); honesty lint 33 findings, 1 in scope, adjudicated |
| 10 | **RAN** | `tmp/coherence-audit-igg-fcgammar-mast-cell-2026-10-19.md` + `tmp/compat-audit-…`; 2 HIGH fixed, 5 MEDIUM / 6 LOW documented |
| 10a | **RAN** (ordering deviation) | `@syn:igg-fcgammar-mast-cell-model` auto-added per the standing default. Ran **after** Phase 11 — so a focused Phase 11 delta-review of the synthesis was run afterwards: 1 MEDIUM cross-reference misattribution fixed, 4 LOW documented, build PASS |
| 10b | **RAN** | Explicit note: **no framing propagation needed.** The synthesis is downstream and non-actionable at certainty 0.16; it asserts no trigger-vs-amplifier, causal-hierarchy, genetic-architecture or clinical-strategy change (it states "no treatment decision follows from this model today"). Abstract / ch16 intro / reading guide / ch13: no edit |
| 11 | **RAN** | 11a `review-convergence` 3 rounds (1 MEDIUM fixed); 11b `review-adversarial` 6 personas (cynic, sophist, reductionist, clinician, devil-advocate, falsificationist) × 3 passes (1 HIGH + 2 MEDIUM fixed); 11c `review-typst` 3 rounds (1 MAJOR + 1 MINOR fixed). Each converged on 2 consecutive zero-finding rounds |
| 12 | **RAN** | "Phase 12 — Plan record" above |
| 12.5 | **RAN** | this ledger |
| 13 | **RAN** | commit (see Phase 13 note) |

### Post-review fixes applied (recorded for the ledgers)

Made after the audits, each build-verified: registry `never` → "has not been performed" (honesty lint); ch15 subclass claim narrowed to the FcγRI-dependent system and cell source corrected to CD34⁺-derived (11b HIGH); appendix-H Syenina limitation corrected (human mast cells lack FcγRIII — they do express FcγRIIA); ch51 `FcγRIIb` → `FcγRIIB` (5×); ch08 laboratory-count sentence clarified; synthesis `@lim:igg-route-null-cost` reworded to match its source (delta review MEDIUM).

### Phase 13 — Commit

Staged **only** this topic's files by explicit path (see the commit). `tmp/` scratch excluded. No history rewrite, no `--amend`, no `git add -A`.
