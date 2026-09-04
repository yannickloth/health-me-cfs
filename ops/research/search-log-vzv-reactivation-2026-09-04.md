# Search Log: VZV Reactivation & Rash-Less VZV Disease (vzv-reactivation)

Date: 2026-09-04
Method: PubMed E-utilities (esearch/esummary/efetch) via NCBI API; Crossref for the
driving-source (Bubak 2026 NRDP) metadata (not yet PubMed-indexed). Search terms
were engineered with explicit boolean operators and quoted phrases to avoid the
NCBI term-mapping OR-expansion that inflated counts on broad queries.

## Queries

| # | Database | Query string | Hits | Screened | Included | Date |
|---|----------|-------------|------|----------|----------|------|
| Q1 | PubMed | varicella zoster reactivation chronic fatigue syndrome OR myalgic encephalomyelitis | 12706 | 0 (over-expanded) | 0 | 2026-09-04 |
| Q2 | PubMed | varicella zoster myalgic encephalomyelitis | 12 | 12 | 1 (Shapiro2009) | 2026-09-04 |
| Q3 | PubMed | zoster sine herpete | 196 | 0 (screened list) | 0 | 2026-09-04 |
| Q4 | PubMed | herpes zoster AND (chronic fatigue OR chronic fatigue syndrome) | 32 | 32 | 0 (null/irrelevant; corpus reuse) | 2026-09-04 |
| Q5 | PubMed | varicella zoster OR VZV reactivation AND long covid OR post-acute sequelae | 6262 | 0 (over-expanded) | 0 | 2026-09-04 |
| Q6 | PubMed | zoster sine herpete AND fatigue | 3 | 3 | 0 (case reports) | 2026-09-04 |
| N1 | PubMed | varicella zoster OR herpes zoster AND (chronic fatigue) AND (negative OR no association OR not associated) | 17 | 17 | 0 (overlaps corpus nulls) | 2026-09-04 |
| N2 | PubMed | herpesvirus AND myalgic encephalomyelitis AND (no association OR not significant OR negative) | 162 | 0 (over-expanded) | 0 | 2026-09-04 |
| I1 | PubMed | varicella zoster virus vasculopathy stroke | 241 | screened subset | 0 (driving-source overlap) | 2026-09-04 |
| I2 | PubMed | zoster sine herpete vasculopathy OR varicella vasculopathy pathogenesis | 912 | 0 (over-expanded) | 0 | 2026-09-04 |
| I3 | PubMed | varicella zoster virus dementia risk OR neurodegeneration | 121866 | 0 (over-expanded) | 0 | 2026-09-04 |
| I4 | PubMed | herpes zoster AND dementia AND cohort | 54 | screened subset | 0 (driving-source overlap) | 2026-09-04 |
| I5 | PubMed | varicella AND arterial ischemic stroke AND children | 50 | screened subset | 1 (Fullerton2025VIPSII) | 2026-09-04 |
| I6 | PubMed | herpes zoster AND (stroke OR myocardial infarction) AND risk AND cohort | 55 | screened subset | 0 (driving-source overlap) | 2026-09-04 |
| I7 | PubMed | varicella zoster virus dorsal root ganglia inflammation OR neuroinflammation | 212571 | 0 (over-expanded) | 0 | 2026-09-04 |
| I8 | PubMed | varicella zoster reactivation immunosenescence T cell | 4 | 4 | 0 (vaccine/immunology) | 2026-09-04 |
| I7b | PubMed | "varicella zoster" AND neuroinflammation | 1079 | screened subset | 0 | 2026-09-04 |
| Q7 | PubMed | postherpetic neuralgia chronic fatigue symptom burden | 0 | 0 | 0 (null datapoint) | 2026-09-04 |
| R1 | PubMed | "zoster sine herpete" AND syndrome | 68 | screened list | 0 | 2026-09-04 |
| R2 | PubMed | "long covid" AND ("varicella-zoster" OR "herpes zoster" OR VZV) AND reactivation | 7 | 7 | 2 (Karachaliou2024, Li2026) | 2026-09-04 |
| R3 | PubMed | "herpes zoster" AND "post-infectious fatigue" | 0 | 0 | 0 (null datapoint) | 2026-09-04 |
| E1 | PubMed | "varicella zoster" AND ("post-viral fatigue" OR "post-infectious fatigue") | 0 | 0 | 0 (null datapoint) | 2026-09-04 |
| E2 | PubMed | "zoster sine herpete"[Title] | 73 | screened list | 0 | 2026-09-04 |
| E3 | PubMed | varicella zoster autonomic ganglia reactivation | 34 | screened list | 0 | 2026-09-04 |
| E4 | PubMed | "zoster sine herpete" AND visceral OR abdominal OR internal | 2089619 | 0 (over-expanded) | 0 | 2026-09-04 |
| F1 | PubMed | (varicella zoster OR VZV) AND ("myalgic encephalomyelitis" OR "chronic fatigue syndrome") AND 2024:2026[dp] | 3 | 3 | 0 | 2026-09-04 |
| F2 | PubMed | VZV reactivation AND ("chronic fatigue" OR fatigue) AND severity | 4 | 4 | 0 | 2026-09-04 |
| B1 | PubMed | Bubak[Author] AND varicella[Title] | 17 | 0 (wrong Bubak papers) | 0 | 2026-09-04 |
| CR | Crossref | 10.1038/s41572-026-00735-5 (Bubak 2026 NRDP) | 1 | 1 | 1 (Bubak2026VZVInfection) | 2026-09-04 |

## Inclusion Criteria
- Peer-reviewed, topic-relevant to VZV reactivation / rash-less VZV disease / VZV
  neurovascular disease AS they intersect post-viral syndromes, chronic fatigue,
  ME/CFS, or the poly-herpesvirus reactivation model.
- Direct ME/CFS relevance; long-COVID/post-viral relevance; OR documents a
  downstream VZV mechanism (ganglionic reactivation, vasculopathy, arterial
  inflammation, asymptomatic/rash-less reactivation) that intersects documented
  ME/CFS pathophysiology.
- The driving source (Bubak 2026 Nature Reviews Disease Primers) — mandatory.
- Genuinely novel to the corpus (not already covered by existing ch08 VZV
  subsection or existing bib entries).

## Exclusion Criteria
- General VZV facts already covered by the existing ch08 VZV subsection (latency,
  shingles, VZV dUTPase/ORF8, inclusion in poly-herpesvirus pattern) or by the
  driving Bubak 2026 review — no need to re-establish.
- Papers already in the corpus under other research_streams (ME/CFS herpesvirus
  serology and null literature: Buchwald1996ViralSerologies,
  Koelle2002TwinsHSV, Domingues2023HerpesIgG, Apostolou2022Saliva,
  Palomo2026herpesvirus, Ariza2025polyherpesvirus).
- Vaccination/immunology of vaccine response papers (BC02 vaccine, zoster
  vaccination reviews) — not ME/CFS-pathophysiology-relevant here.
- Clinical case reports of zoster sine herpete without chronic-fatigue/ME/CFS
  framing (e.g. IDCases, Rinsho Shinkeigaku single cases).
- HIV/IRIS, JAK-inhibitor, inborn-errors-of-immunity contexts — not relevant to
  ME/CFS.
- Non-MEDLINE textbook chapters (StatPearls), unrelated JAK-inhibitor trials.
- Q1/Q5/N2/I2/I3/I7/E4 over-expanded (>500 hits due to NCBI term-mapping) —
  discarded, not screened.

## Flow
- Total hits (usable queries only, excluding over-expanded): ~6400 screened lists
- After deduplication: N/A (single DB session)
- After title/abstract screen: ~20 candidates examined
- After full abstract review: 7 selected as genuinely novel + on-topic
- Final included: 7 (all NEW bib entries in viral-infection.bib)
- Existing-corpus reuse (relevant, NOT re-added): Koelle2002TwinsHSV (null,
  VZV PCR in twin study), Domingues2023HerpesIgG (UKMEB, VZV in panel),
  Apostolou2022Saliva (VZV in saliva panel), Buchwald1996ViralSerologies (null),
  Palomo2026herpesvirus, Ariza2025polyherpesvirus.

## Excluded with reasons (table)

| PMID/paper | Reason |
|-----------|--------|
| 37519635 Domingues2023Heliyon | Already in corpus (Domingues2023HerpesIgG); UKMEB cohort overlaps Domingues2021; VZV-specific association not the standout signal |
| 36341457 Apostolou2022Saliva | Already in corpus (Apostolou2022Saliva); VZV in panel but EBV/HHV-6/HERV-K were the standout reactivations |
| 12173124 Koelle2002Twins | Already in corpus (Koelle2002TwinsHSV); serves as null (VZV PCR no different in discordant twins) |
| 39381601 (PAD) | Atopic-disorder genomics; unrelated |
| 35321085 (visceral leishmania HZ) | HIV/IRIS; unrelated to ME/CFS |
| 40698211/39031276/36876156 (JAK inhibitors) | Unrelated RA/PsA trials |
| 39232368 (Argentina HZ HRQOL) | HZ QoL conceptual model; not ME/CFS mechanism |
| 37752927 (vit C EBV hepatitis) | Case report, EBV not VZV, not ME/CFS |
| 28846365 (VZV chickenpox StatPearls) | Textbook chapter; non-MEDLINE-grade |
| 35116025 (CMV reactivation pericarditis) | CMV not VZV |
| 36736577 (systematic review herpesvirus + COVID) | General active-herpesvirus-in-COVID meta; covered by driving review |
| 42621909-adjacent vaccine papers (41575203/40258885/39196355) | Vaccine immunogenicity; not ME/CFS pathophys |
| 35855938, 10614162, 41075139 etc. (zoster sine herpete case reports) | Clinical single-case; no chronic-fatigue/ME/CFS framing |
| VZV-dementia cohort papers (I4: 38271405, 38687552, 42374809) | Driving Bubak 2026 review already covers VZV→dementia; adding no ME/CFS-specific value here |

## Search Terms by Database
- PubMed MeSH-free boolean + quoted phrases (above). NCBI auto term-mapping caused
  OR-expansion on multi-OR queries — controlled by quoting + AND grouping.
- Crossref (driving-source metadata): DOI 10.1038/s41572-026-00735-5.

## Null / Negative evidence located
- No direct cohort study links zoster sine herpete or rash-less VZV specifically
  to ME/CFS/post-viral fatigue (E1, R3 = 0 hits).
- Existing corpus nulls (reused, not re-added): Buchwald1996ViralSerologies (13
  viruses, no consistent differences), Koelle2002TwinsHSV (VZV PCR no difference
  in discordant twins), Domingues2023HerpesIgG (IgG poorly distinguished ME/CFS).
- Karachaliou2024/Fullerton2025 provide the VZV reactivation association but
  Fullerton VIPS II notes VZV's stroke role is "modest" in a vaccinated
  population.
