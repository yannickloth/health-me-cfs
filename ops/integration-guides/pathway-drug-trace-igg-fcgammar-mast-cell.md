# Pathway-to-Drug Trace — IgG/FcγR-Mediated Mast Cell Activation

**Cycle:** `igg-fcgammar-mast-cell` · **Date:** 2026-10-19 · **Phase:** 5d
**Certainty:** **0.16** (in-vitro primary) / 0.20 (review).

> **SPECULATIVE — BELOW CHAPTER INTEGRATION THRESHOLD (cert < 0.30).**
> Per `SKILL.md:791` this trace is **ops-only**. Nothing in this file is written to
> ch25 / ch24 / ch31 / sec-12. It is retained so a future cycle can reuse it if the
> certainty rises above 0.30.

---

## 1. Cascade (upstream trigger → clinical symptom)

| Node | Step | Certainty | Evidence |
|------|------|-----------|----------|
| N0 | Triggering insult → DC/Th1 activation → **IFN-γ** | 0.16 | analogical; early ME/CFS cytokine signature, unmeasured against this route |
| N1 | IFN-γ → **FcγRI (CD64) up-regulation** on mast cells (~2% → ~44%) | 0.16 (raw 0.40) | `@Okayama2000FcgammaRIHumanMast` |
| N2 | IgG immune complexes → **FcγRI / FcγRIIA cross-linking** | 0.16 (raw 0.40) | `@Okayama2000FcgammaRIHumanMast` `@Zhao2006FcgammaRIIaSkinMast` |
| N2′ | Inhibitory **FcγRIIB** present (gut) vs absent (skin) → net sign of the effect | 0.16 (raw 0.40) | `@Burton2018FcgammaRIIbTissueMast` |
| N3 | Receptor cross-linking → **Syk / PLCγ / calcium flux** → degranulation | 0.16 | `@Woolhiser2001IgG1MastFcgammaRI` |
| N4 | Release: **histamine, tryptase, PGD₂, LTC₄, TNF-α, GM-CSF, IL-3, IL-5, IL-6, IL-13** | 0.16 | `@Woolhiser2001IgG1MastFcgammaRI` `@Zhao2006FcgammaRIIaSkinMast` |
| N5 | Mediators → local vasodilation/permeability, pruritus, flushing, GI dysmotility, neuroinflammation | analogical | no ME/CFS measurement |
| N6 | Slower kinetics than IgE (t½ ~11 min vs ~1 min) | 0.16 | `@Woolhiser2001IgG1MastFcgammaRI` |

**Species caveat:** the rodent FcγRIII route does not transfer — human mast cells lack FcγRIII
`@Tkaczyk2004FcgammaRMastReview`.

---

## 2. Intercept points and candidate drugs

Pruning rule (`SKILL.md:960`): trace only branches where the intercepting drug has
certainty ≥0.40 for the targeted mechanism **in ME/CFS specifically**. **No candidate reaches
that bar.** All rows are therefore buckets, not recommendations. Route: **none qualify.**

| Node | Intercept class | Agent(s) | Cert for this mechanism in ME/CFS | Pruned? |
|------|-----------------|----------|-----------------------------------|---------|
| N0 | IFN-γ pathway suppression | JAK inhibitors (tofacitinib, baricitinib, ruxolitinib) | ~0.10 — no ME/CFS trial for this endpoint; class boxed warning (infection, malignancy, MACE, thrombosis) | ✅ pruned |
| N2 | IgG substrate removal | Immunoadsorption / plasma exchange (already in ch25 sec-03) | ~0.15 for this mechanism | ✅ pruned |
| N2 | IgG recycling blockade | FcRn antagonists (efgartigimod, rozanolixizumab, nipocalimab) | ~0.15; no ME/CFS FcγR-mast-cell endpoint | ✅ pruned |
| N2 | Broad IgG depletion | IVIG / rituximab (already in ch24 sec-14) | pre-existing, not re-parameterised | ✅ pruned |
| N3 | Mast cell stabilisation (downstream) | Cromolyn, ketotifen (already in ch24 sec-18 / ch25) | ~0.15 for an IgG-route-specific effect | ✅ pruned |
| N3 | Syk inhibition | Fostamatinib; quercetin/luteolin (supplement tier) | ~0.10 | ✅ pruned |

**Result: zero un-pruned branches.** No ch25 cascade subsection and no sec-12 entry are
justified at this certainty. This is a rule-based outcome, not an omission.

---

## 3. What would raise the certainty above 0.30

1. Any human study measuring FcγRI or FcγRIIA on mast cells in ME/CFS.
2. A functional assay (patient IgG × mast cells, ± anti-CD64 / anti-CD32a blockade).
3. A treated-cohort observation: an IgG-depleting intervention (already used off-label) that
   lowers provoked mast cell mediators in responders.

If any of these lands at discounted certainty ≥0.30, re-run Phase 5d and promote this trace
into `ch25-mechanistic-cascade-tracing/sec-03-autoimmune-hypotheses/` as a new subsec.

---

## 4. Non-deletion note

No prior-cycle content is modified by this trace (`SKILL.md:794`). Existing GPCR-AAb cascade
subsections and sec-12 entries are untouched.
