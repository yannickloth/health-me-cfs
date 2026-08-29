# Integration Plan: Severe/Very-Severe ME/CFS Management Factsheet

**Purpose:** Integrate the Science for ME factsheet "Management of severe and very severe ME/CFS" (Prof. Jonathan Edwards + S4ME members, 2026) — fills gaps on practical severe/very-severe care: aids & ADL assessment, environmental-stimuli reduction as medical necessity, single-point-of-contact care model, nutritional/enteral-parenteral support, hospital admission adjustments, and critical appraisal of off-label treatments and rehabilitation.

**Source:** Science for ME Fact Sheet by Prof. Jonathan Edwards and S4ME members (2026). PDF: `Literature/severe-care/S4ME2026ManagementSevereVerySevereMECFS.pdf`

**Target chapters:**
- ch06-disease-course — severe/very-severe grading tied to care needs; prevalence (~1/1000 housebound); fluctuating severity
- ch24-urgent-action-severe — environmental-stimuli reduction as medical necessity; hospital admission adjustments; enteral/parenteral feeding; malnutrition screening (MUST)
- ch30-lifestyle-interventions — pacing critique (no wearable/activity-diary value); environmental stimuli control
- ch40-healthcare-systems-policy — single-point-of-contact care model; multidisciplinary-team critique; aids/ADL assessment; disability/work-education assessment
- ch42-controversies — critical appraisal of rehabilitation-based approaches (no place in management); off-label drug appraisal (antihistamines, naltrexone, fludrocortisone, ivabradine)
- ch28-medications-systems / ch33-medication-response-reference — off-label drug critical appraisal (where existing entries exist)

**Notes:** Clinical practice/guidance factsheet (not pathophysiological paper). Complements, distinct from, Hermisson 2026 severe-care-guide plan. Standalone integration. MIXED tree.

---

## Tracking

| Phase | Status | Detail |
|-------|--------|--------|
| 0 | ✅ done | Plan created 2026-08-29; PDF moved to Literature/severe-care/ |
| 1 | ✅ done | 7 bib entries + annotated bib + search log + literature summary (2026-08-29) |
| 2 | ✅ done | PARTIAL decision. Synthesis at tmp/synthesis-severe-mecfs-management-2026-08-29.md. WEAK-EVIDENCE pre-fired. |
| 3 | ✅ done | 6 focused integrations under PARTIAL caps: ch40 cf:single-point-of-contact-severe + ADL/aids note; ch24 cf:environmental-stimuli-medical-necessity + Page2019 enteral safety + Devasahayam2012 annual-review; ch30 lim:pacing-tracking-no-evidence; ch24 lim:off-label-drug-expert-caution; ch42 Gaunt2024/Wearden2010 null additions |
| 3a | ✅ done | Build PASS (0 errors) after import-path fixes + staging all new files |
| 3b | ✅ done | Safety gate: 4 envs gated, 4 PASS, 0 blocked. tmp/safety-gate-severe-mecfs-management.md |
| 3.5 | ✅ done | All new envs verified with *Consequence:* fields |
| 4 | ✅ done | 14 brainstorm ideas (cats 1-2:5, 10-12:9), PARTIAL-cap compliant. ops/brainstorms/brainstorm-severe-mecfs-management-2026-08-29.md |
| 4a | ✅ done | Subtree created (14 nodes) + root index updated |
| 5 | ✅ done | Integrated oq:single-contact-mdt-trial (cluster-RCT) into ch40; low-cert research directions parked in tree |
| 5b | ✅ done | Build PASS (0 errors) |
| 5c | ✅ skipped | Factsheet criticises off-label drugs, does not propose them; existing ch33/ch34 entries cover them |
| 5d | ✅ skipped | Non-mechanistic topic; no causal cascade |
| 5a | ✅ done | No falsifiability-required env types added (PARTIAL cap); open-questions have testable framing |
| 5z | ✅ done | 4 glossary entries added to en/fr/de |
| 6 | ✅ done | Wearden2010 FINE null citation-insertion in ch42 long-term-follow-up (no sustained benefit); rest <0.40 → noted only |
| 7 | ✅ done | Documented single-point-of-contact vs MDT CONFLICT-TENSION in existing co-production registry entry; no new registry hypothesis (PARTIAL cap); bump log empty |
| 8 | ✅ done | Build PASS (0 errors, pdf + web) |
| 9 | ✅ done | BLOAT borderline-justified; WEAK-EVIDENCE fired (by design); no CLINICAL-RISK/G-UNSUSTAINED |
| 10 | ✅ done | Coherence OK; 3 tensions documented; 0 inconsistencies |
| 10a | ✅ skipped | Flagged: convergent ch40 care-model point; no synthesis env (avoids BLOAT, research-direction not mechanistic) |
| 10b | ✅ skipped | No framing implication (no new mechanism claim) |
| 11 | ✅ done | Full-tier: 11c review-typst converged (R1 fixed 1 issue, R2/R3 clean); build PASS. Concurrent HEAD advance noted |
| 12 | ✅ done | Plan record written |
| 12.5 | ✅ done | Phase Ledger clean (see governor ledger) |
| 13 | ✅ done | Committed 6a0f1a40 (23 files, 679 insertions); build PASS |

---

## Active Caps (set by Phase 2 — decision: PARTIAL)

- Environments allowed: speculation / open-question / limitation / clinical-finding / warning-box / background-prose-with-citation ONLY
- #hypothesis-box / #fhypothesis: FORBIDDEN (even if idea cert ≥0.45 or Phase 7 bump crosses 0.45)
- Brainstorm categories (Phase 4): 1–2 + 10–12 ONLY (skip 3–9)
- Certainty bumps (Phases 6–7): capped — no bump may cross 0.45
- Phase 9 flags pre-fired: WEAK-EVIDENCE

---

## Certainty Bump Log

| Hypothesis | Phase | Old cert | New cert | Δ | Reason |
|------------|-------|----------|----------|---|--------|

---

## Phase 12 — Plan Record

**Topic:** severe-mecfs-management | **Decision:** PARTIAL (WEAK-EVIDENCE pre-fired)
**Source:** Science for ME (2026) factsheet "Management of severe and very severe ME/CFS" (Prof. Jonathan Edwards + S4ME members).

**Environments added (5) + prose/citation additions:**
- ch40 `@cf:single-point-of-contact-severe` (clinical-finding) + `@oq:single-contact-mdt-trial` (open-question, cluster-RCT) + ADL/aids note
- ch24 `@cf:environmental-stimuli-medical-necessity` (clinical-finding, subsec-08) + Page2019 enteral flat-position safety + Devasahayam2012 annual-review
- ch30 `@lim:pacing-tracking-no-evidence` (limitation)
- ch24 `@lim:off-label-drug-expert-caution` (limitation)
- ch42: Gaunt2024 + Wearden2010 RCT nulls (evidence-of-harm + long-term-follow-up)

**Chapters touched:** ch40, ch24, ch30, ch42 + hypothesis-registry (conflict-tension note).
**Bib count:** 7 new entries (Gaunt2024PediatricGET, Wearden2006FINETrialProtocol, Wearden2010FINETrial, Page2019PaediatricEnteral, McPhee2019TreatmentHarm, S4ME2026ManagementSevereVerySevere in treatments.bib; Devasahayam2012AlternativeDiagnoses in diagnosis-assessment.bib).
**Registry entries:** no new hypothesis/speculation entries (PARTIAL cap); documented single-point-of-contact-vs-MDT conflict-tension in existing co-production entry.
**Key finding + why it matters:** The factsheet surfaces genuine, unresolved tensions between advocacy-recommended severe-care practices (off-label drugs, mandatory activity-tracking, multidisciplinary care, rehabilitation rejection) and the existing evidence base; all rest on consensus/advocacy with no severe-ME/CFS-specific RCTs. Surfaced as clinical-guidance with explicit certainty and severity.
**Phase 9 flags:** BLOAT borderline-justified; WEAK-EVIDENCE (pre-fired by design); no CLINICAL-RISK/G-UNSUSTAINED.
**Phase 2 clinical relevance:** HIGH (directly actionable severe/very-severe care guidance).
**Driving source:** The S4ME factsheet WAS integrated (it is the primary source). Off-label drug enthusiasm elsewhere in the corpus (e.g., LDN in ch24 day-one) is NOT retracted — the caution is presented as a co-existing tension, not a refutation.
