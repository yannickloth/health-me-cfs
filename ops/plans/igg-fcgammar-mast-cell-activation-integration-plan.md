# Integration Plan — IgG/FcγR-Mediated Mast Cell Activation (Non-IgE Pathway)

**Date:** 2026-10-19
**Mode:** LITE / reinforcement-only (user-authorized: "or a lighter integration if that's OK for that topic")
**Topic:** Name IgG-FcγRI/FcγRIIA as an IgE-independent mast cell activation pathway in the paper's existing pathway lists.

---

## Why lite mode is legitimate here

The skill allows the lite tier for **reinforcement-only updates of existing content**. This topic:

- adds one named pathway to two existing enumerations (five → six),
- introduces no new hypothesis, speculation, or uncertain-claim environment,
- creates no new certainty value that must propagate,
- contradicts nothing.

Therefore: skip brainstorm, hypothesis-tree, drug-interaction triage, falsifiability sweep, hypothesis-compatibility, and adversarial convergence (each is an N/A with a stated reason).

---

## Integration decision

**INTEGRATE (reinforcement).** The claim is textbook general immunology with replicated primary human-cell evidence, and the paper already enumerates non-IgE mast cell activation pathways without the IgG route. Adding it closes a real internal gap: the paper already uses FcγR activation for **monocytes** but never for mast cells.

Certainty handling: primary claims are general immunology. In-vitro tier cap 0.40. No ME/CFS population certainty is asserted — the ME/CFS link stays speculative and is attributed to existing speculation environments.

---

## Evidence set (Phase 1 lite)

| Bib key | Authors / year | Journal | Tier | Certainty | Role |
|---------|----------------|---------|------|-----------|------|
| `Okayama2000FcgammaRIHumanMast` | Okayama, Kirshenbaum, Metcalfe 2000 | J Immunol | in-vitro | 0.40 | Founding: functional FcγRI on human mast cells, IFN-γ-inducible |
| `Woolhiser2001IgG1MastFcgammaRI` | Woolhiser, Okayama, Gilfillan, Metcalfe 2001 | Eur J Immunol | in-vitro | 0.40 | IgG1 dominant isotype; degranulation + PGD₂/LTC₄/TNF-α; additive with IgE |
| `Zhao2006FcgammaRIIaSkinMast` | Zhao, Kepley, Morel, Okumoto, Fukuoka, Schwartz 2006 | J Immunol | in-vitro | 0.40 | Constitutive activating FcγRIIa on skin mast cells; FcγRIIb absent |
| `Burton2018FcgammaRIIbTissueMast` | Burton et al. 2018 | Front Immunol | in-vitro | 0.40 | Inhibitory FcγRIIb is tissue-specific; absent from dermal mast cells |
| `Tkaczyk2004FcgammaRMastReview` | Tkaczyk, Okayama, Metcalfe, Gilfillan 2004 | Int Arch Allergy Immunol | narrative | 0.50 | Activatory/inhibitory FcγR; human vs rodent divergence (translation caveat) |

All metadata verified against PubMed via BioMCP + Unpaywall/Europe PMC.

---

## Content changes

| # | File | Change |
|---|------|--------|
| 1 | `part2-pathophysiology/ch08-.../subsec-08-mast-cell-activation-syndrome-mcas.typ` | Five → six pathways; adds IgG-FcγRI/FcγRIIA + caveats + citations |
| 2 | `part2-pathophysiology/ch17-.../ch14d-cross-disease.typ` | Five → six pathways; adds IgG-FcγRI/FcγRIIA + cites |
| 3 | `part2-pathophysiology/ch15-.../speculations/spec-gpcr-autoantibody-mediated-mast-cell-sen.typ` | Adds parallel IgG-immune-complex route to the existing loop speculation |
| 4 | `part5-modeling/ch51-.../subsec-01-mast-cell-degranulation-model.typ` | Adds IgG immune complexes to the priming-signal list (parity with IgE) |
| 5 | `part4-research/hypothesis-registry.typ` | Mirror: mechanism + citations of the GPCR-mast-cell loop entry |
| 6 | `bib/mast-cell.bib` | +5 entries (`mast-cell-fcgammar-igg` group) |
| 7 | `appendices/appendix-h-annotated-bibliography.typ` | +5 annotated entries |

Deliberately NOT changed: `ch16-comparative-nosology.typ` four-pathway list — that list is explicitly food-trigger-specific, a different enumeration.

---

## PDF acquisition

| Paper | Status |
|-------|--------|
| Burton 2018 | FILED (open access) |
| Okayama 2000 | UNAVAILABLE — OUP/aai.org Cloudflare bot challenge (OA copy bot-gated) |
| Woolhiser 2001 | UNAVAILABLE — Wiley paywall, no OA version |
| Zhao 2006 | UNAVAILABLE — PMC deposit not served as PDF; aai.org bot-gated |
| Tkaczyk 2004 | UNAVAILABLE — Karger paywall, no OA version |

The 4 unavailable papers are abstract-only. Each claim written into the document is stated verbatim in the retrieved abstract (full text included in each `abstract.txt`), so abstract-only risk is bounded. Recorded honestly; no fabricated quotations.

---

## Skipped phases (with reason)

| Phase | Status | Reason |
|-------|--------|--------|
| Brainstorm / idea tree | SKIP | No new hypothesis generated |
| Safety gate | SKIP | No treatment, dosing, or patient-facing advice added |
| Drug-interaction check | SKIP | No drug added or re-parameterized |
| Falsifiability sweep | SKIP | No new uncertain-claim environment |
| Retroactive adaptation | SKIP | No certainty change elsewhere |
| Hypothesis compatibility | SKIP | No new hypothesis |
| Completion gate | RAN | Files + build verified |

---

## Verification

- Typst compile with `--root .` (documented command, no Nix store churn).
- Manual check: all 5 new citation keys resolve; no duplicate bib keys (grep for the 5 keys).
