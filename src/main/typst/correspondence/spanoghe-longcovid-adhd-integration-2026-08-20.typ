#set document(
  title: "Long Covid–AD(H)D Neuroimmune Framework — Integration into the ME/CFS Paper and Blog",
  author: "Yannick Loth",
  date: datetime(year: 2026, month: 8, day: 20),
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 3cm),
  numbering: "1",
)

#set text(font: "Linux Libertine", size: 11pt, lang: "en")
#set par(justify: true, leading: 0.65em)
#set heading(numbering: none)

#show heading.where(level: 1): it => {
  v(1.2em)
  text(size: 13pt, weight: "bold", it)
  v(0.4em)
}
#show heading.where(level: 2): it => {
  v(0.8em)
  text(size: 11pt, weight: "bold", it)
  v(0.3em)
}

#let section-box(body) = rect(
  width: 100%,
  inset: 10pt,
  radius: 3pt,
  stroke: (left: 3pt + rgb("#4a7c9e"), rest: 0.5pt + rgb("#cccccc")),
  fill: rgb("#f5f8fb"),
)[#body]

#let aside-box(body) = rect(
  width: 100%,
  inset: 10pt,
  radius: 3pt,
  stroke: (left: 3pt + rgb("#aaaaaa"), rest: 0.5pt + rgb("#cccccc")),
  fill: rgb("#f8f8f8"),
)[#body]

// ── Header ───────────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 16pt, weight: "bold")[
    The Long Covid–AD(H)D Neuroimmune Framework
  ]
  #v(0.3em)
  #text(size: 11pt, style: "italic")[
    Where your paper has been used, and what it says there
  ]
  #v(0.2em)
  #text(size: 10pt, fill: rgb("#666666"))[
    Yannick Loth · 2026-08-20
  ]
]

#v(1em)
#line(length: 100%, stroke: 0.5pt + rgb("#aaaaaa"))
#v(1em)

Cher Tomaso,

Thank you again for your message and for pointing me to your paper — the Viewpoint in _Brain, Behavior, and Immunity_ linking Long Covid and AD(H)D through neuroimmune dysfunction. It is exactly the reference I needed to complete the neuro-inflammatory and immune strand of the ADHD material, in both the book and the companion blog series.

Below is a precise account of where the paper now appears, and what it is used to say in each place. I have been careful to keep the citations faithful to your argument, and to state the confidence level honestly wherever your framework is presented as hypothesis rather than established finding.

#v(0.8em)

// =============================================================================
= The Paper You Pointed To
// =============================================================================

Spanoghe M, Antonacci T, Schneider N, Molmans THJ. "Viewpoint: Linking long Covid and AD(H)D through neuroimmune dysfunction: A translational framework proposal for precision medicine." _Brain, Behavior, and Immunity_. 2026;131:106181. DOI: 10.1016/j.bbi.2025.106181.

#v(0.6em)

The central claims we draw on are: the four convergent neuroimmune mechanisms (frontal–striatal–hippocampal dysfunction; neuroimmune dysregulation of catecholamine systems; tryptophan–kynurenine overactivation; mitochondrial bioenergetic defects); the proposal of an acquired, infection-triggered neuroimmune-mediated dopaminergic/noradrenergic dysfunction; the precision-immunopsychiatry framework; and the off-label use of AD(H)D-targeted pharmacotherapy in Long Covid with its limits.

// =============================================================================
= In the Book (the ME/CFS paper)
// =============================================================================

== Chapter 14d — Speculative Cross-Disease Connections _(primary site)_

The book's cross-disease chapter already carried an extensive ADHD–ME/CFS section built around a "same-root" hypothesis (inflammation driving shared energy failure). Your paper now anchors a distinct, current strand within it, with three registered entries:

*1. `oq:lc-adhd-acquired-causal` — open question, certainty 0.40.*

Your framework is used to frame the unresolved question of whether SARS-CoV-2 infection _drives new_ AD(H)D or _reveals_ pre-existing subclinical neurodivergence. We present both sides: your paper's supporting line (post-COVID symptom onset, the bidirectional link, off-label prescribing) against the strongest counterweight, the 20-year national cohort that found no independent COVID effect on ADHD diagnosis or treatment rates. Because the two evidence streams are close in certainty (within 0.15), the book holds this as an open question rather than claiming either side — consistent with the careful framing of your own paper.

*2. `spec:lc-adhd-neuroimmune-shared-substrate` — speculation, certainty 0.35.*

Your four-mechanism convergence is used to propose a shared neuroimmune substrate linking Long Covid, AD(H)D, and ME/CFS executive dysfunction. The most defensible arm for ME/CFS is identified as the kynurenine-to-monoamine link, supported by the primary sources the paper cites. Your precision-immunopsychiatry proposal and the off-label pharmacotherapy reports are both cited here — explicitly as clinical observation, not as a treatment recommendation for ME/CFS.

*3. `spec:mito-kynurenine-nad-sink` — speculation, certainty 0.40.*

This is a development _from_ your framework rather than a direct restatement: it unifies your mechanisms (3) and (4) into a single prefrontal bioenergetic bottleneck — chronic kynurenine-pathway activation drawing down the NAD+ pool that mitochondria require, so the energetically expensive prefrontal cortex shows the first ATP deficit. It is explicitly flagged as a synthesis of separate literatures, not yet tested as a whole.

== Hypothesis and Speculation Registry

All three entries above are registered in the book's central hypothesis registry, each with an explicit certainty score, a falsifiable prediction, and a plain-language consequence statement. The registry is the bridge between speculative mechanism and testable study.

== Annotated Bibliography (Appendix H)

Your paper has a full annotated entry in the book's annotated bibliography, recording the four mechanisms, the off-label pharmacotherapy observation, the acquired-dysfunction hypothesis, the precision-immunopsychiatry framework, the limitations (viewpoint, no primary data, the acknowledged null result), and the certainty assessment (raw 0.50 × 0.85 Long Covid population weight = discounted 0.43).

#v(0.6em)

#aside-box[
  A note on scope: the book also cites a _different_ 2026 commentary by your group (the _Frontiers in Medicine_ piece rebutting the functional-somatic-disorder framing of Long Covid) in its section on patient advocacy and the psychosocial debate. That is a separate citation, distinct from the BBI Viewpoint discussed here, and it appears in a different chapter.
]

// =============================================================================
= In the Blog (the companion article series)
// =============================================================================

The same findings were ported into the ADHD article series on the public blog, in all three languages (English, French, German). The citation appears in the article specifically about the immune and neuroinflammatory strand of ADHD — the article your message was pointing to.

== "The Immune and Neuroinflammatory Strand of ADHD"

A new section, *"The kynurenine-dopamine bridge"*, cites your paper as the source that brings the convergent evidence together. It uses your paper to say:

- that kynurenic acid, a kynurenine-pathway metabolite, reduces striatal dopamine release — a direct biochemical route from inflammation to the dopamine deficit, complementary to the BH4-diversion mechanism already described;
- that kynurenine-pathway activation correlates with cognitive impairment and that mitochondrial-complex suppression accompanies cognitive decline after COVID;
- that a 2026 translational viewpoint (yours) proposes a shared neuroimmune framework linking Long Covid and ADHD through the four convergent mechanisms;
- and that some Long Covid patients report partial benefit from AD(H)D-targeted medications, with autonomic dysregulation and post-exertional malaise as limiting factors.

The section is explicitly labelled a registered speculation, and it notes that the off-label pharmacotherapy reports are clinical observation, not a treatment recommendation.

The same content appears in the French ("Le pont kinurénine-dopamine") and German ("Die Kynurenin-Dopamin-Brücke") versions of the article, and the kynurenine-dopamine bridge is referenced on the blog's ADHD series landing page.

#v(0.6em)

The blog article on acquired versus developmental ADHD features also carries a caution drawn from the same evidence base: the 20-year national cohort found no infection-driven effect on ADHD diagnosis rates, so most post-infectious attention difficulty is best read as _unmasking_ of pre-existing subclinical neurodivergence rather than _de novo_ acquisition — with the caveat that a narrow acquired subset cannot be excluded. This counterpoint is cited alongside your paper's support for the bidirectional link.

// =============================================================================
= How Your Paper Is Framed
// =============================================================================

#section-box[
  Across both the book and the blog, your paper is always cited as a _translational framework proposal_ — hypothesis-generating, without primary data of its own — and its certainty is discounted accordingly for a Long Covid population. The supporting primary sources it cites (kynurenine-pathway and mitochondrial-complex studies) carry their own higher confidence. Where the evidence is genuinely contested — most notably the question of whether infection creates new ADHD — the material is presented as an open question, not settled fact. This is the standard we apply to all speculative material in the project.
]

// =============================================================================
= What Was Generated But Left Out
// =============================================================================

The integration process generated a large set of brainstorm ideas from your framework (49 in total). Only the most defensible entered the book. A candid list of what was deliberately left out:

- *New-onset ADHD at population scale.* The claim that infection _creates_ new ADHD at population scale is not asserted; the 20-year null cohort argues against it. Held as an open question.
- *Off-label pharmacotherapy as a recommendation.* The medications (methylphenidate, guanfacine, lithium, dexamfetamine) are reported as clinical observation with their limiting factors, never as a dosing recommendation for ME/CFS.
- *Most speculative drug and supplement extensions* (e.g., kynurenine-pathway modulators, mitochondrial-support strategies, ketone fuel bypasses). These remain as testable predictions in the research pipeline, not as patient-facing claims, because the evidence is preclinical or single-study.
- *Striatal dopamine / VMAT2 imaging studies in ME/CFS.* Proposed as research designs, not integrated as findings — no ME/CFS-specific data exist yet.

These remain available for future integration as the evidence develops.

#v(1.5em)
#line(length: 100%, stroke: 0.5pt + rgb("#aaaaaa"))
#v(0.8em)

In summary: your framework now has a dedicated strand in the book's cross-disease chapter, formal registration in the hypothesis registry, a full annotated bibliography entry, and a public-facing treatment in the blog series (in three languages) — always labelled honestly as a hypothesis-generating framework with the strongest supporting evidence cited alongside it.

We are grateful for the reference and for the collaboration. We look forward to seeing where the work leads.

#v(1.5em)
Yannick

// =============================================================================
= References Added
// =============================================================================

#set par(hanging-indent: 1.5em)

*Anchor viewpoint*

Spanoghe M, Antonacci T, Schneider N, Molmans THJ. "Viewpoint: Linking long Covid and AD(H)D through neuroimmune dysfunction: A translational framework proposal for precision medicine." _Brain, Behavior, and Immunity_. 2026;131:106181. DOI: 10.1016/j.bbi.2025.106181.

*Primary sources cited in support (added to the project bibliography)*

Cysique LA, Jakabek D, Bracken SG, et al. "The kynurenine pathway relates to post-acute COVID-19 objective cognitive impairment and PASC." _Annals of Clinical and Translational Neurology_. 2023;10(8):1338–1352. DOI: 10.1002/acn3.51825.

Rassoulpour A, Wu HQ, Ferré S, Schwarcz R. "Nanomolar concentrations of kynurenic acid reduce extracellular dopamine levels in the striatum." _Journal of Neurochemistry_. 2005;93(3):762–765. DOI: 10.1111/j.1471-4159.2005.03134.x.

Xu WT, An XB, Chen MJ, et al. "A gene cluster of mitochondrial complexes contributes to the cognitive decline of COVID-19 infection." _Molecular Neurobiology_. 2025;62(6):6869–6883. DOI: 10.1007/s12035-024-04471-3.

Tanaka M, Szabó Á, Spekker E, et al. "Mitochondrial impairment: A common motif in neuropsychiatric presentation? The link to the tryptophan–kynurenine metabolic system." _Cells_. 2022;11(16):2607. DOI: 10.3390/cells11162607.

Sarkar C, Basu B, Chakroborty D, et al. "The immunoregulatory role of dopamine: An update." _Brain, Behavior, and Immunity_. 2010;24(4):525–528. DOI: 10.1016/j.bbi.2009.10.015.

Feng Y, Lu Y. "Immunomodulatory effects of dopamine in inflammatory diseases." _Frontiers in Immunology_. 2021;12:663102. DOI: 10.3389/fimmu.2021.663102.

Fesharaki-Zadeh A, Lowe N, Arnsten AFT. "Clinical experience with the α2A-adrenoceptor agonist, guanfacine, and N-acetylcysteine for the treatment of cognitive deficits in 'Long-COVID19'." _Neuroimmunology Reports_. 2023;3:100154. DOI: 10.1016/j.nerep.2022.100154.

Krishnan K, Lin Y, Prewitt KRM, Potter DA. "Multidisciplinary approach to brain fog and related persisting symptoms post COVID-19." _Journal of Health Service Psychology_. 2022;48(1):31–38. DOI: 10.1007/s42843-022-00056-7.

Koonce RM, Martin BC. "The association between suspected long-COVID and stimulant prescribing in the United States." _Psychiatry Research_. 2024;331:115686. DOI: 10.1016/j.psychres.2023.115686.

Merzon E, Weiss M, Krone B, et al. "Clinical and socio-demographic variables associated with the diagnosis of long COVID syndrome in youth: A population-based study." _International Journal of Environmental Research and Public Health_. 2022;19(10):5993. DOI: 10.3390/ijerph19105993.

Gimbach S, Vogel D, Fried R, et al. "ADHD medicine consumption in Europe after COVID-19: catch-up or trend change?" _BMC Psychiatry_. 2024;24(1):112. DOI: 10.1186/s12888-024-05505-9.

Ferrara F, Zavaleta E, Vitiello A, et al. "The direct correlation between Covid-19 and attention deficit/hyperactivity disorder (ADHD)." _European Neuropsychopharmacology_. 2023;73:62–64. DOI: 10.1016/j.euroneuro.2023.04.010.

Shkalim Zemer V, Manor I, Weizman A, et al. "The influence of COVID-19 on attention-deficit/hyperactivity disorder diagnosis and treatment rates across age, gender, and socioeconomic status: A 20-year national cohort study." _Psychiatry Research_. 2024;339:116077. DOI: 10.1016/j.psychres.2024.116077.
