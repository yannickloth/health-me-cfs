# Search Log: Recent ME/CFS & Related Papers Monitoring Sweep

**Topic slug:** `recent-mecfs-sweep-2026-11-21`
**Date:** 2026-11-21
**Type:** Periodic monitoring sweep (not a topic-integration cycle)
**Databases queried:** PubMed (E-utilities esearch/esummary/efetch), Europe PMC (REST search + core lookups), medRxiv / preprints.org / Research Square (abstract pages)

---

## Window rationale

Last literature search in the repo: **2026-10-27** (`registry/scrape-registry.md` — Naik 2026 LDN RCT + circadian-subtype-depression, commits `dfbd0038`, `c2a73ff9`). Last period-bounded sweep before that: 2026-10-15 (EpiSwitch update, `date_from=2026-08-15`).
Sweep window: **2026-10-20 → 2026-11-21** (full uncovered period + 8-day overlap to catch indexing lag).

---

## Queries

| # | Database | Query (terms abbreviated; window `2026/10/20:2026/11/21[Date - Entrez]` appended) | Hits |
|---|----------|-------------|------|
| Q1 | PubMed | Core ME/CFS: `myalgic encephalomyelitis`[MeSH/tiab] OR `chronic fatigue syndrome`[MeSH/tiab] OR `ME/CFS`/`CFS/ME`/`MECFS`[tiab] | 29 |
| Q2 | PubMed | PEM: `post-exertional malaise`/`postexertional`/`post-exertion`[tiab] AND fatigue/CFS/ME/CFS/ME/Long COVID/fibromyalgia/SARS-CoV-2[tiab] | 11 |
| Q3 | PubMed | Long-COVID fatigue: `long COVID`/`PASC`/`post-acute sequelae of SARS-CoV-2`[tiab] AND fatigue/PEM/exercise intolerance/CPET[tiab] | 42 |
| Q4 | PubMed | Energy: `energy metabolism`/`mitochondrial`/`oxidative phosphorylation`/`ATP production`[tiab] AND CFS/ME/CFS[tiab] | 3 |
| Q5 | PubMed | POTS/autonomic: `POTS`/`postural orthostatic tachycardia`/`dysautonomia`/`autonomic dysfunction`[tiab] AND CFS/ME/CFS/long COVID[tiab] | 11 |
| Q6 | PubMed | Biomarkers: `biomarker*`/`prognostic marker*`/`diagnostic accuracy`[tiab] AND CFS/ME/CFS[tiab] | 5 |
| Q7 | PubMed | Treatments: `treatment*`/`therapeutic*`/`randomized controlled trial*`/`intervention*`[tiab] AND CFS/ME/CFS[tiab] | 14 |
| Q8 | PubMed | Immune: `immune*`/`inflammation*`/`autoantibod*`/`interferon`/`immune signature`[tiab] AND CFS/ME/CFS[tiab] | 9 |
| Q9 | PubMed | Neuro: `brain`/`neuroimaging`/`fMRI`/`neuroinflammation*`/`glutamate`/`neurodegenerative*`[tiab] AND CFS/ME/CFS[tiab] | 6 |
| Q10 | PubMed | Pediatric: `paediatric/pediatric ME/CFS`/`pediatric CFS`/youth CFS/adolescent ME[tiab] | 1 |
| Q11 | Europe PMC | `("myalgic encephalomyelitis" OR "chronic fatigue syndrome" OR "ME/CFS" OR "CFS/ME" OR "post-exertional malaise") AND FIRST_PDATE:[2026-10-20 TO 2026-11-21]` | 81 |

**Unique PubMed PMIDs: 66** (deduplicated across Q1–Q10). Europe PMC added ~15 records not yet in PubMed (preprints + PMC-only). **1 false positive excluded:** PMID 42936493 (graphene nanomaterials — matched in error).

Screened: all 66 titles + Europe PMC titles; abstracts efetch'd/fetched for the 33 candidates below (26 PubMed + 13 preprint core lookups, minus overlaps).

---

## Tier 1 — Direct relevance to the paper (core ME/CFS, brain energy, PEM)

| Ref | Citation | Key point | Relevance |
|-----|----------|-----------|-----------|
| PMID 42945241 | Syed et al., PNAS 2026;123(44):e2617198123 | WASF3 (stress-inducible, up in ME/CFS) disrupts respiratory Complex IV, localizes to MAMs; hippocampal overexpression → glycolytic shift + hypometabolic state + reduced ATPIF1 + impaired learning; KO → enhanced oxidative metabolism, cognition preserved under stress. NIH NHLBI, mouse models. | **Strongest energy finding of the sweep.** Brain energy failure, MAMs (gap-g13), Complex IV, brain fog. |
| PMID 43000413 | Meadows et al., Trials 2026;27(1):654 (NCT06366724) | LIFT trial protocol: 2×2 factorial RCT, LDN × pyridostigmine, n=160, 13 weeks, MGH/BWH + StudyME. Primary: FUNCAP-55, peak VO2, HR recovery, VO2UE; secondary: DSQ-PEM, PROMIS-29, DANA Brain Vital, steps, HRV. | ch30 treatments — LDN (reads against Naik 2026 null), pyridostigmine; also an outcome-measure validation study. |
| PMID 42998183 | Pimminger et al., Qual Life Res 2026;35(12):327 | Vienna PEM Questionnaire (VPEM): content validation, n=13 patient panel + 11 expert panel; S-CVI 0.96; multidimensional PEM (functional decline, recovery, crash, pacing). | PEM measurement — subjective-measurable discrepancy work. |
| DOI 10.64898/2026.11.06.26367424 | Horton, Tyson, Fleming, medRxiv 2026-11-08 | Post Activity Symptom Scale (PASS): unidimensional after removing the "delay in PEM onset" item (misfit); ICC 0.81; MDD 1.93/100; criterion r=0.58. ME Association funded. | PEM scale. Note: onset-delay dimensionality split matters for PEM operationalization. |
| DOI 10.64898/2026.11.04.26367265 | Tyson & Fleming, medRxiv 2026-11-05 | SoMES (severity, n=995, r=0.663, κ=0.53, MDD 1.6) + MEOSS (occupational status, κ=0.76, MDD 1.4). | Severity measurement; severe-ME/CFS chapters. |
| PMID 42934697 | Strube, J Transl Med 2026;24(1):1345 | Commentary on Kim et al. HBOT study: thalamocortical hyperconnectivity at baseline reverses post-treatment (first treatment-coupled reversible thalamic signature); predictive-processing "gain-control gate" hypothesis unifying sensory hypersensitivity, pain, orthostatic intolerance, brain fog. | Thalamic gating, sleep/alpha-intrusion work, predictive processing framing. |
| PMID 42942118 | Nemat-Gorgani, Jensen, Davis, IJMS 2026;27(20):9351 | Mechanistic perspective: glymphatic + meningeal lymphatic dysfunction coupled to autophagy impairment in ME/CFS/LC; misfolded-protein toxicity loop; therapeutic outlook. Stanford. | Extends @Thapaliya2026GlymphaticMECFS; autophagy angle. |
| PMID 43027675 | Todorova et al., IJMS 2026;27(21):9422 | LC (n=89) vs ME/CFS (n=125) vs HC (n=80): 5-marker Treg signature (Th17, CD15s+CD161-eTreg, CD161+ Treg); ME/CFS-vs-HC AUC 0.907/0.924, LC weaker; MDA independent predictor; GPX1 separates ME/CFS from LC. | Direct cross-disease discrimination; redox + Treg; "exhaustion of compensatory mechanisms" framing. |
| PMID 42996068 | Jones & Younger, medRxiv 2026.10.19.26365953 | TSPO rs6971: FM/ME/CFS/MS enriched for low/mixed-affinity genotypes vs HC; low/mixed genotypes → greater fatigue severity + depressive symptoms (n=86). | Extends @Visser2025TSPOfatigue (TSPO line in the paper). |
| PMID 42979319 | Zimmermann & Boles, Case Rep Genet 2026:1920171 | Likely-pathogenic TRPV1 p.Lys725Met variant in a woman with ME/CFS + polyneuropathy + autonomic instability; lifelong heat/capsaicin/alcohol (TRPV1 agonist) hypersensitivity → gain-of-function read. | Direct hit for TRPV1 work (`search-log-trpv1-temperature-autonomic-stress-test-2026-07-27.md`); channelopathy line. |
| PMID 42978853 | Zi et al., Front Med 2026;13:1955021 | Symptom network, n=214 CFS: 6 clusters; fatigue = core + bridge symptom (EI 1.541); pain, sleep = bridge. | Symptom domains (ch23/ch33); network methods. |
| DOI 10.20944/preprints202610.2574 (v2 2026-11-09) | — (preprints.org) | Hypothesis: hyperhomocysteinaemia → homocysteine thiolactone → N-homocysteinylation of protein lysines contributes to a subset of LC/ME/CFS manifestations; testable predictions + therapeutic consequences stated. | New metabolic candidate axis. Preprint hypothesis — treat as low-certainty; check predictions before any integration. |

## Tier 2 — Post-infectious / related-condition evidence (cross-disease for the paper)

| Ref | Citation | Key point | Relevance |
|-----|----------|-----------|-----------|
| PMID 42932937 | Howden et al., Am J Physiol Heart Circ Physiol 2026;331(6):H2028-H2038 | PASC n=35: VO2 peak + HRR reduced, but MSNA, baroreflex gain, cardiac reserve all normal; 41% could not complete tilt; POTS subgroup had LOWER MSNA. Localizes disturbance to afferent reflex control or cerebral perfusion — not efferent sympathetic limb or myocardium. | **Key null** for dysautonomia chapter (ch11): efferent-sympathetic and cardiac-reserve accounts disfavored. |
| PMID 42927120 | Bigleri et al., Brain Behav Immun Health 2026;58:101388 | Case: recombinant zoster vaccine (Shingrix) → rapid transient remission in severe ME/CFS after each dose; Gal-9+/PD-1+ T cells reduced, NK degranulation improved. | VZV-reaction work (`search-log-vzv-reactivation-2026-09-04.md`); reversible immune-exhaustion evidence. |
| PMID 42927133 | Mayrink Magalhães et al., Cureus 2026;18(9):e116844 | Case: sequential EBV (childhood mono) → SARS-CoV-2 → ME/CFS + POTS; LDN + duloxetine + PEA + pacing, partial fluctuating response. | Viral-trigger chapter (sequential-infection model). |
| PMID 43023729 | Samaan et al., J Virol 2026 (NCT05125510) | Neuropsychiatric LC (n=27) vs recovered: EBV anti-VCA IgG diminished; 3–6 month reduced EBV neutralizing capacity → fatigue at 12 months; SARS-CoV-2 cellular-humoral coordination disrupted. | EBV-trigger line; prognostic humoral marker. |
| PMID 42945894 | Laxton et al., EBioMedicine 2026;133:106525 (Iwasaki lab) | Salivary HHV-6 DNA ~ LC propensity score (r=0.24), anxiety, depression; EBV/HSV/CMV null; cortisol/sex hormones null. n=90. | Herpesvirus chapter — HHV-6 angle (repo brainstorm-herpesvirus work). |
| PMID 42964568 | Achleitner et al., Brain Behav Immun Health 2026;58:101393 | 13 receptor-binding autoantibodies, n=206 SARS-CoV-2+: **no association** with post-COVID fatigue or severity. | Key null for autoantibody chapter (receptor-binding panel, post-COVID context). |
| PMID 43027730 | Zwerenz et al., IJMS 2026;27(21):9475 (Wallukat group) | Review: functional GPCR autoantibodies — mechanisms, detection, therapeutic modulation (immunoadsorption, aptamer neutralization, receptor blocking, targeted B-cell modulation). | Direct continuation of `gpcr-autoantibodies-azcue2026` work; therapeutic-strategy section is new. |
| PMID 42999630 | Ueland et al., Brain Behav Immun Health 2026;58:101396 | Bergen cohort (~241, ~90% of municipal cases): TGFBR2 elevated in moderate vs mild/none PCC (proteomics + EIA); strongest association with impaired cognition at 6/12/18 months; null in hospitalized subgroup. | TGF-β line (repo has TGF-β × ME/CFS query history); cognition marker. |
| PMID 42922780 | Adler et al., medRxiv 2026.08.27.26361488 | US-military 5-year follow-up, 173 saliva proteomes: 44 ISG proteins; 19 proteins → low general sequelae across ALL viruses; 23 → low neurocognitive sequelae only for SARS-CoV-2. | Post-infectious initiation (PAIS framework) — paper's core scope. |
| PMID 43032818 | Cui et al., Brain Behav Immun Health 2026;58:101379 (Stanford) | Low-dose aripiprazole (D2 partial agonist, median 1 mg), n=50 retrospective: FSS 3.78→3.28 (p=0.001); symptom-severity composite null. | Dopaminergic line (repo ch09/ch25/ch30 dopamine work; RLS/pramipexole patient context). |
| PMID 43025223 | —, Acta Psychologica 2026 | Pilot RCT: personalized cognitive + physical telerehabilitation in PASC and ME/CFS. | Treatments; rehabilitation-evidence line. |
| PMID 42962334 | Liang & Li, J Psychosom Res 2026;212:113005 (letter) | Interpretation of exercise effects in ME/CFS: trial independence, safety ascertainment, exploratory moderators. | Exercise/PEM-safety debate. |
| PMID 42946587 | Lemogne et al., J Psychosom Res 2026 (online ahead) | Lessons from revising the French national health-insurance ME/CFS webpage: communicating uncertainty without reinforcing mind-body dualism. | ch33 psychologization-critique line (`search-log-psychologization-critique-2026-06-19.md`). |
| PMID 43046944 | Alameda Cuesta et al., Rev Esp Salud Publica 2026;100:e202611096 | Madrid primary-care pilot (n=280): ME/CFS 2.26%, MCS 2.64%, dual 1.13%; "clearly exceeding the threshold for rare diseases". | Epidemiology (ch23); MCS co-occurrence. |
| DOI 10.21203/rs.3.rs-11494085/v1 | — (Research Square, 2026-11-06) | Qualitative (Austria): severe/very-severe ME/CFS healthcare access — knowledge gaps, transport, home-based/telemedicine/outreach models; healthcare itself a deterioration risk. | Severe-ME/CFS care chapters. |
| DOI 10.64898/2026.11.10.765688 | — (medRxiv, 2026-11-13) | AlphaScreen EV-surface profiling (CD9/CD74, CD9/CX3CR1, CD9/ACE1, platelet CD41/CD61, myeloid CD13, CX3CR1; n=10/group): distinct EV signatures in ME/CFS vs FM vs LC. | EV work (repo `extracellular-vesicles-rydland-2026`); ACE1/ACE2 angle. |
| DOI 10.20944/preprints202611.0437 | — (preprints.org, 2026-11-04) | Hypothesis: ME as a mast-cell activation disorder variant — exertion → ROS → degranulation → mitochondrial component release as "autopathogen" → reduced metabolic flexibility per cycle; Th2-dominance substrate. | MCAS chapter (ch14d-adjacent). Hypothesis preprint — gate as speculation if used. |
| DOI 10.20944/preprints202610.1775 | — (preprints.org, 2026-10-20) | Hypothesis: ECM as key regulator linking long COVID + hypermobility (hEDS) + MCAS/SFN/ME — spike-integrin-latent TGF-β-mast-IL-6-MMP-9 loop; self-perpetuating stiffening; PIEZO/NMDA neural effects; Th17. | Connective-tissue/hypermobility + TGF-β + ECM line (repo connective-tissue work). |
| DOIs 10.21203/rs.3.rs-11430085/v1, rs-3.rs-11448820/v1, rs-3.rs-11660933/v1 | — (Research Square, 2026-10-20/11-18) | Same author group, three ODE/computational preprints: viral persistence → p53 degradation (PAK2/c-Myc/EZH2) → TFAM → mtDNA collapse → bioenergetic failure + nucleoid-phagy failure → cGAS-STING; "p53/Nrf2 epigenetic shield" proposed as reversal. | **Flag: highly speculative computational models, single group, overclaims ("restores 100% ATP generation capacity").** Useful only as a hypothesis generator for the p53→TFAM→mtDNA axis (which intersects the paper's mitochondrial line). Do not cite as evidence. |
| DOI 10.21203/rs.3.rs-11448504/v3 | — (Research Square, 2026-11-17) | Continuous HRV biofeedback for ME/CFS relapse management — pacing/ANS tool + PEM early-warning concept. | HRV-BF line (Cossu2025, Windthorst2017 in bib). |

## Tier 3 — Peripheral (screened, not prioritized; available on request)

Long-COVID general: 42932293 (HRQoL), 42973774 (trial outcome measures), 42912090 (CNS SR), 42940528 (non-pharm fatigue SR/MA), 43021070 (microbiota-fatigue), 42942941 (vitamins/cognition), 42942991 (microbe-barrier-brain), 42897409 + 43022529 (OSA in LC fatigue), 43032912 (submaximal exercise acid-base), 42941506 (Ecuador trajectories), 43021651 (Jordan age differences), 43040872 (obesity/exercise kinetics PASC), 43040945 (community PA programme), 43047526 (health-resort vs home rehab), 43009877 (real-world multidisciplinary rehab), 42972549 (subjective wellbeing), 42914164 (ERJ guidelines), 43058761 (dysfunctional breathing 4 y), 43008992 (miR-223/323), 43013334 (health app), 43019250 (Isha Kriya RCT), 43016714 + 42985061 (virtual CoP RCT ×2), 43017015 (mind-body reprogramming), 42931252 (neurocognitive indices), 43033535 (dysautonomia attention), 42983512 (verbal fluency), 43018014 (infectious mononucleosis MR), 42905724 (cytokines), 43023789 (HLA-B*15), 42964521 (prevalence meta-analysis), 42971626 (Ukraine 36-mo), 43030636 (endocrine in pregnancy), 43030343 (macronutrients), 43030208 (saponins/exercise fatigue), 43027326 (EV cargo LC), 42997614 (infection-associated chronic conditions), 43006659 (NAFLD neurometabolic), 43022433 (metainflammation/anxiety), 43041406 (primary-care recommendations), 43024941 (clinician CME), 43025960 (rehab experiences), 43038199 (active recovery + meditation), 42899626 (PEM in primary care, FR).
Comorbidity/scope: 42986813 (hEDS + LC risk), 43005306 (JAK/STAT post-COVID autoimmunity), 42945604 (post-COVID neuroinflammation + autoantibodies + complement), 42941838 (CATCH-EVseq enterovirus assay), 42932937 done above.
Treatments: 43009148 (HBOT prospective), 43020499 (sympathetic chain block RCT), 42981266 (tailored exercise in POTS), 43030490 (sarcoidosis fatigue treatable-traits), 42973115 (IBS permeability), PreVitaCOV RCT (prednisolone + B vitamins, PMC-only).
Cancer-related fatigue (in-scope per AGENTS.md): 43029232 (ginsenosides), 42996476 (plant compounds).
ME/CFS-adjacent: 43030569 (complementary health approach use in CFS, n=3022 survey), 42902491 (mental fatigue scale LC), 42962653 (diurnal cortisol × fatigue in CRC survivors), 42919747 (TCM immune-signature CFS model), 43055906 (TCM spleen-qi probiotic rat — consistent with TCM batch DEFER).
Excluded false positive: 42936493 (graphene/MXene antibacterial — off-topic).
Already integrated earlier this month (no action): Booyens 2026 POTS PTM (PMID 42897639 → `@Booyens2026POTSPTM`, integrated 2026-10-26); Naik 2026 LDN (integrated 2026-10-27).

---

## Operational notes

- PubMed esearch count parsing: use JSON `count` field (no space); shell `grep` with wrong spacing returns empty.
- `"brain*[Title/Abstract]"` wildcard form returned 0 (parsing quirk); plain `brain[Title/Abstract] OR neuroimaging[...]...` works.
- preprints.org blocks direct fetch (403). Europe PMC `resultType=core` DOI lookup returns abstracts for preprints.org + Research Square + medRxiv records — use that route.
- medRxiv article pages sometimes return empty body via direct fetch; Europe PMC core lookup is reliable for abstracts.
- PMC OA S3 mirror tip (from 2026-10-26 registry note) applies when full PDFs are needed.

## Next steps (candidate /integrate-topic cycles — none started)

1. `lift-trial-ldn-pyridostigmine` (PMID 43000413) — reads directly against Naik 2026 null.
2. `wasf3-brain-metabolism` (PMID 42945241) — brain-energy chapter.
3. `pem-outcome-measures-2026` (VPEM + PASS + SoMES/MEOSS) — PEM measurement.
4. `pasc-sympathetic-null` (PMID 42932937) — dysautonomia chapter.
5. `tspo-rs6971-genotypes` (PMID 42996068) — extends existing TSPO line.
6. `trpv1-variant-case` (PMID 42979319) — extends TRPV1 line.
7. Post-viral bundle: Adler ISG proteins, TGFBR2, autoantibody null, HHV-6, EBV humoral, zoster case, GPCR-fAAb review, POTS PTM (done).
