# Integration Plan: CYNAERA External Citations, People, and Framing Arguments

**Purpose:** Mine CYNAERA.com for verifiable external citations (cite primaries, not CYNAERA), evaluate Cynthia Adinig as a citable figure, and assess framing arguments (remission ≠ cure, phenotype dilution) for integration.

**Source:** CYNAERA.com site review (2026-07-15), `ops/plans/cynaera-site-index-integration-plan.md`

**Parent topic:** root
**Child subtrees:** (none yet)

---

## Active Caps (set by Phase 2 — decision: REJECT / already-present)

Cycle terminated at Phase 2. No chapter modifications. All four facets are already integrated in the paper from their primary sources — CYNAERA adds nothing not already present.

## Tracking Table

| # | Idea / finding | Phase | Tier | Certainty | Status | Notes |
|---|---------------|-------|------|-----------|--------|-------|
| 1 | Mine external citations from CYNAERA blog posts | 1–2 | — | — | 🚫 already present | All primaries already in bib: `RECOVER2025` (Vernon/Jason, JGIM), `Vahratian` (NCHS 488), `Naviaux2016metabolic`, `Tomas2017`, `Proal2025Reservoir`, `Vernon2025PNAS`. Nothing new to add. |
| 2 | Cynthia Adinig as citable figure | 1–2 | — | — | 🚫 already present | Cited in `appendices/appendix-d-resources.typ` (Long COVID advocate, SolveME board member, \#MEAction podcast guest). No paper section requires her as a source; her frameworks are not citable evidence. |
| 3 | Remission ≠ cure framing | 1–2 | — | — | 🚫 already present | Dedicated env `warn:false-recovery` in `ch05-disease-course/sec-01-onset-patterns/` distinguishes true remission from marginal functionality. Also ch05 prognosis/subgroups. |
| 4 | Phenotype dilution in trials framing | 1–2 | — | — | 🚫 already present | Covered in `ch04-diagnostic-criteria/sec-07-novel-framework`, `ch05 subgroups` (endotype classification), `ch14` hypotheses. |

---

## Causal Model Divergence (2026-07-15 addendum)

User question: "which approach is more scientific, more true?" and whether to add a defensive contrast note distinguishing our model from CYNAERA's.

**Finding:** Our causal model is more scientific across every dimension that matters — falsifiability, causal-direction testing, formal quantification, contradiction handling, self-critique infrastructure. CYNAERA's Mechanism Weighting Matrix, unfalsifiable simulation counts, and RCCX/MTHFR centrality are functional-medicine narrative tools, not testable science.

**Decision:** No defensive contrast note added to the paper. Our paper does not need to protect itself against a model that has entered no peer-reviewed scientific discourse. The contrast is implicit — our framework stands on its own.

## Phase 2 Decision: REJECT (redundant — all content already present)

**Rationale:** The three approved facets from the CYNAERA review were all valuable *because they point to mainstream, well-evidenced material* — and the paper, being mature (27 bib files, ~2000 conditions modeled), already contains every one:

- **RECOVER-Adult 4.5% / HR 4.93** — explicitly stated and cited in `part1-clinical/.../sec-04-epidemiology/subsec-01-prevalence.typ:16` and `ch12-genetics-epigenetics.typ:41`.
- **CDC NHIS 1.3%** — `Vahratian` in `bib/general.bib` (+ NHIS 1.2%/CVD analysis in `bib/vascular.bib`).
- **Naviaux 2016, Tomas 2017, Proal & VanElzakker, Selin/Zong T-cell** — all present across `bib/energy-metabolism.bib`, `bib/modeling.bib`, `bib/long-covid.bib`.
- **Remission ≠ cure** — dedicated warning environment already exists.
- **Phenotype dilution** — covered across diagnostic-criteria and subgroups chapters.

**No integration performed. No chapter files modified.** The `/integrate-topic` null hypothesis (default = non-integration) holds: the burden of proof was not met because the material is redundant, not because it is weak.

**Verification method:** grep of `bib/*.bib` for author keys + grep of `part*/` prose for the specific findings and framing terms. All confirmed present.

## Phase Reports

| Phase | Date | Summary |
|-------|------|---------|
| 0 | 2026-07-15 | Plan created, MIXED mode (unrelated ch29 working-tree changes present — untouched) |
| 1 | 2026-07-15 | No new literature search needed; verified CYNAERA's aggregated primaries against existing bib — all present |
| 2 | 2026-07-15 | Decision: REJECT (redundant). All 4 facets already integrated from primary sources. Cycle ends. No files modified in `src/**`. |
