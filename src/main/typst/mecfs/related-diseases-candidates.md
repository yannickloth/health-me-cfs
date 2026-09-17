# Related-Disease Integration Candidates

Brainstorm output (2026-09-15). Candidate conditions to integrate into the
paper because of relevance, closeness, or mechanistic relation to ME/CFS.

Legend:
- **Tier 1** — high mechanistic proximity, weak or absent current coverage.
- **Tier 2** — worth a comparative paragraph or note.
- **Tier 3** — conceptually interesting, weaker case.
- `N hits` = ripgrep occurrences of the term in `src/main/typst/mecfs/**/*.typ`.

---

## Already covered (do NOT re-propose)

`ch16-comparative-nosology` already covers: Long COVID, post-treatment Lyme
disease (PTLDS), Q fever fatigue syndrome, post-meningitis fatigue,
post-EBV/influenza/dengue/Ebola, PANS/PANDAS, narcolepsy type 2, fibromyalgia,
IBS, hEDS/hypermobility/craniocervical instability, MCAS, POTS/dysautonomia,
CRPS, Gulf War illness, MS ("virtual hypoxia" bridge), and a generic fatigue
list (RA, SLE, Sjögren's, psoriatic arthritis, axSpA, systemic sclerosis, AAV,
sarcoidosis, IIM, myasthenia gravis, MS, IBD, coeliac disease, PBC, cancer).

`ch21-female-reproductive-axis` covers endometriosis and the reproductive axis.
`ch43-translational-findings` covers translational targets across related
conditions.

---

## Tier 1 — high relevance, weak or absent coverage

| Candidate | Why it belongs | Gap signal |
|---|---|---|
| **Post-COVID vaccination syndrome / "vaccine injury"** | Post-infectious framework is studied but the iatrogenic analog is absent. Adjuvanted immune activation is the *controlled* version of the post-infectious trigger, and it is a discriminating test between immune-activation and pathogen-persistence hypotheses. Largest asymmetry: one natural experiment (Long COVID) covered, the controlled one (0 hits) not. | `0 hits` |
| **Chronic whiplash-associated disorder (WAD)** | Trauma-triggered chronic condition with fatigue, pain, cognitive symptoms, altered central sensorimotor processing. Directly parallels the admitted non-infectious triggers (trauma, surgery) that are never developed. | `0 hits` |
| **Cachexia / cancer-related fatigue as a shared neuroimmune program** | Already cross-referenced in the fatigue list (49%), but not developed as a *mechanistic model*. Cancer fatigue has the most mature cytokine-to-brain literature; cachexia is the extreme end of the energy-allocation conflict proposed in ch18. Currently a citation, not a comparison. | `10 / 7 hits` |
| **Small fiber neuropathy (as standalone entity)** | Emerging as the common substrate of POTS, fibromyalgia, and ME/CFS; strongest lumping candidate after MCAS. Mentions are scattered across chapters with no dedicated home. | `62 hits, no section` |
| **Primary mitochondrial disease / mitochondrial myopathies** | Natural "positive control" for the energy-metabolism chapters. Defines what a *true* mitochondrial disease looks like versus a functional impairment. Cited, never systematically contrasted. | `10 hits` |

## Tier 2 — worth a paragraph or comparative note

| Candidate | Angle |
|---|---|
| **Chronic Q fever + other named post-infectious cohorts** (Ross River virus, chikungunya, Ebola survivors) | Ross River is a cleaner natural experiment than Long COVID for some questions. | `12 hits` |
| **Post-intensive care syndrome (PICS)** | ICU survivors show fatigue, cognitive impairment, PEM-like exercise intolerance — an iatrogenic/acute-stress trigger model. |
| **Multiple chemical sensitivity (MCS) / idiopathic environmental intolerance** | Shares the contested-diagnosis structure, sensitization mechanisms, and MCAS overlap. | `8 hits` |
| **Sick building syndrome / chronic building-related illness** | Environmental-exposure analog; a lumping stress test. | `0 hits` |
| **Autoimmune encephalitis (anti-NMDAR, etc.)** | Existence proof that autoantibodies produce reversible cognitive/psychiatric disease — adult parallel to the PANDAS section, with a firmer antibody pipeline. | `6 hits` |
| **Functional neurological disorder (FND)** | The boundary dispute most frequently weaponized against ME/CFS; high controversy value. No dedicated section found. |
| **Tethered cord / Chiari malformation** | Sub-topic adjacent to the existing CCI coverage; may be incomplete. | `31 CCI hits` |
| **Pediatric Long COVID / pediatric post-infectious syndromes** | Dedicated comparator would strengthen ch26–27. |
| **Post-organ-transplant fatigue / chronic graft dysfunction** | Immunosuppression-adjacent; lower relevance. |
| **Histamine intolerance (distinct from MCAS)** | Boundary is currently muddled. | `16 hits` |

## Tier 3 — conceptually interesting, weaker case

| Candidate | Angle |
|---|---|
| **Overtraining syndrome / athlete burnout / RED-S** | Voluntary exercise-triggered energy-deficit model; PEM-like but with recovery. Strong pedagogical contrast to PEM. | `10 hits` |
| **Post-stroke fatigue** | Distinct CNS-lesion fatigue model. |
| **Chronic kidney disease / dialysis fatigue** | "Uremic" energy model. |
| **PANS (non-streptococcal)** | Minor extension of existing PANDAS coverage. |
| **Chronic brucellosis, post-malarial fatigue, post-typhoid** | Fills the low-resource/global chapter (ch44). |
| **Parkinson's disease / Alzheimer's disease** | Already mentioned frequently; comparator value is indirect (neurodegeneration vs functional). | `40 / 41 hits` |

---

## Recommendation

1. **Post-vaccination syndrome** — highest value. It is a controlled experiment in
   immune-triggered chronic illness that the post-infectious framework predicts
   but never tests. Zero coverage makes the asymmetry visible to reviewers. It
   also forces an explicit statement on whether immune activation (any cause) or
   pathogen-specific persistence drives ME/CFS — a discriminating test between
   two competing hypotheses.
2. **Dedicated small-fiber-neuropathy comparator** — most plausible shared
   substrate, currently smeared across many mentions with no home.
3. **Primary mitochondrial disease as the positive control** for Part II / ch50.
