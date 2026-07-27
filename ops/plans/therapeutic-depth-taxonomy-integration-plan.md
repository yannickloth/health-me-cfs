# Integration Plan: Therapeutic-Depth Taxonomy (Healing vs Symptomatic)

**Purpose:** Systematically classify every medication discussed in the paper AND in the glossary by therapeutic mechanism depth — distinguishing disease-modifying/healing potential from symptomatic treatment.

**Target chapters:**
- ch30 sec-12 (pharmacodiagnostic compendium) — ~160 drug entries
- ch32 (medication response reference) — ~18 drug entries
- `web/glossary.json` — ~208 medication/supplement entries

**Pre-identified hypotheses:**
- N/A — this is a meta-taxonomy, not a novel scientific claim

**Taxonomy framework (to be refined in Phase 1):**

| Depth | Label | Definition | Example |
|-------|-------|-----------|---------|
| 1 | **Disease-modifying** | Reverses a structural/functional defect that is part of the disease mechanism; restores normal physiology rather than compensating for it | LDN restores TRPM3 Ca²⁺ influx (in vitro) |
| 2 | **Partially restorative** | Ameliorates a downstream consequence of the disease in a way that may slow progression or enable partial repair | NAC replenishes glutathione; CoQ10 supports mitochondrial function |
| 3 | **Mechanism-targeted symptomatic** | Acts on a known disease mechanism but does not reverse it — symptom relief via mechanism interception | LDA modulates microglial D2; beta-blockers for POTS |
| 4 | **Purely symptomatic** | Relieves symptoms without targeting disease biology | Zolpidem for sleep; oxycodone for pain |
| 5 | **Unknown / Unclassified** | Mechanism not yet established or evidence too sparse to classify | Experimental treatments without human data |

**Tracking table:**

| # | Idea / Drug class | Depth | Certainty | Status | Notes |
|---|------------------|-------|-----------|--------|-------|
| 1 | Taxonomy framework design | n/a | — | ⬜ pending | Phase 1 research + Phase 2 decision |
| 2 | Annotate all sec-12 drugs | varies | — | ⬜ pending | ~160 entries |
| 3 | Annotate all ch32 drugs | varies | — | ⬜ pending | ~18 entries |
| 4 | Glossary schema update | n/a | — | ⬜ pending | Add therapeutic_depth + classification |
| 5 | Glossary population | varies | — | ⬜ pending | Populate ~208 entries |

**Certainty Bump Log:**

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|
| (none yet) |       |          |          |   |        |

**Notes:**
- MIXED mode — unrelated WIP in tree (BuildWeb.java, hypothesis-registry.typ, ligand-receptor-duality/, blog posts, plan files)
- No shared-branch WIP commits; rollback = git checkout <ref> -- <file>
- Explicit file lists for all phases; no git diff scoping
- This is a meta-taxonomy — no new bib entries, no hypothesis registry updates
- Primary deliverables: ch30 sec-12 annotations + glossary schema update + taxonomy section in ch32 or a new section
