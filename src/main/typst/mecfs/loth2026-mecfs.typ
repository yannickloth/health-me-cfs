// =============================================================================
// Myalgic Encephalomyelitis / Chronic Fatigue Syndrome
// Main document — bootstrap only.
//
// Change driver: DOCUMENT_STRUCTURE
// Changes when: the chapter/appendix include list changes, or the order of
// top-level document sections changes.  All other concerns are isolated in
// shared/ modules per the Independent Variation Principle.
//
// Module map:
//   shared/metadata.typ      — DOCUMENT_IDENTITY   (author, DOI, version)
//   shared/theme.typ         — VISUAL_THEME         (colour palette, link style)
//   shared/typography.typ    — TYPOGRAPHY           (fonts, scale, spacing, headings)
//   shared/layout.typ        — PRINT_LAYOUT         (page geometry, header/footer)
//   shared/environments.typ  — DOMAIN_SEMANTICS     (all named callout environments)
//   shared/math-config.typ   — MATH_CONVENTIONS     (operators, notation)
//   shared/tables.typ        — TABLE_CONVENTIONS    (booktabs rules, captions)
//   shared/front-matter.typ  — DOCUMENT_STRUCTURE   (title page, abstract helpers)
// =============================================================================

#import "shared/metadata.typ": *
#import "shared/theme.typ": color, apply-link-style
#import "shared/typography.typ": *
#import "shared/layout.typ": apply-page-layout
#import "shared/environments.typ": apply-counter-resets
#import "shared/tables.typ": apply-table-styles
#import "shared/front-matter.typ": title-page, doc-abstract, keywords, front-chapter, doc-part

// =============================================================================
// GLOBAL STYLE APPLICATION
// Order matters: page layout must follow text settings.
// =============================================================================

#set document(
  title:  doc-title,
  author: doc-author,
)

// Body text
#set text(
  font:      font-body,
  size:      size-body,
  fill:      color.charcoal,
  lang:      "en",
  hyphenate: true,
)

// Paragraph rhythm (parskip=half: no indent, half-baseline gap)
#set par(
  spacing:            para-spacing,
  leading:            para-leading,
  first-line-indent:  0pt,
  justify:            true,
)

// List spacing (mirrors enumitem reduced topsep/itemsep)
#set list(spacing: list-item-spacing)
#set enum(spacing: list-item-spacing)

// Page layout (margins, header, footer)
#show: apply-page-layout

// Heading styles (font, size, weight per level)
#show: apply-heading-styles

// Caption and table header styles
#show: apply-caption-styles

// Table styles (booktabs strokes, caption size)
#show: apply-table-styles

// Link colour (viridis blue)
#show link: it => text(fill: color.viridis-blue, it)

// Per-chapter counter resets for environments
#show: apply-counter-resets

// Heading numbering: arabic at all levels (mirrors \arabic{chapter})
#set heading(numbering: "1.1.1.1")

// Equation numbering: chapter.equation (mirrors LaTeX)
#set math.equation(numbering: "1.1")

// =============================================================================
// FRONT MATTER  (roman page numbering, unnumbered chapters)
// =============================================================================

#set page(numbering: "i")
#counter(page).update(1)

#title-page()

// Front-matter chapters — unnumbered (mirrors LaTeX \frontmatter)
// Each chapter starts on a new page (LaTeX \include semantics = \clearpage + \input).
#set heading(numbering: none)

#include "shared/abstract.typ"
#pagebreak()
#include "shared/version-notice.typ"
#pagebreak()
#include "shared/keywords.typ"
#pagebreak()
#include "shared/license.typ"
#pagebreak()
#include "shared/author-bio.typ"
#pagebreak()
#include "shared/ai-disclosure.typ"
#pagebreak()
#include "shared/methodology.typ"
#pagebreak()
#include "shared/reading-guide.typ"
#pagebreak()
#include "shared/patient-faq.typ"
#pagebreak()


// Table of contents / figures / tables
#pagebreak()
#outline(title: "Contents", indent: 2em)
// #outline(title: "List of Figures", target: figure.where(kind: image))
// #outline(title: "List of Tables",  target: figure.where(kind: table))

// =============================================================================
// MAIN MATTER  (arabic page numbering, chapter numbering starts at 1)
// =============================================================================

#set heading(numbering: "1.1.1.1")
#counter(heading).update(0)
#set page(numbering: "1")
#counter(page).update(1)

// ── Part I: Clinical Overview ─────────────────────────────────────────────────
#include "part1-clinical/part1-intro.typ"
#include "part1-clinical/ch01-introduction/ch01-introduction.typ"
#include "part1-clinical/ch02-history-of-mecfs/ch02-history-of-mecfs.typ"
#include "part1-clinical/ch03-core-symptoms/ch03-core-symptoms.typ"
#include "part1-clinical/ch04-additional-symptoms/ch04-additional-symptoms.typ"
#include "part1-clinical/ch05-diagnostic-criteria/ch05-diagnostic-criteria.typ"
#include "part1-clinical/ch06-disease-course/ch06-disease-course.typ"

// ── Part II: Pathophysiology and Biological Mechanisms ───────────────────────
#include "part2-pathophysiology/part2-intro.typ"
#include "part2-pathophysiology/ch07-energy-metabolism/ch07-energy-metabolism.typ"
#include "part2-pathophysiology/ch08-immune-dysfunction/ch08-immune-dysfunction.typ"
#include "part2-pathophysiology/ch09-neurological/ch09-neurological.typ"
#include "part2-pathophysiology/ch10-endocrine/ch10-endocrine.typ"
#include "part2-pathophysiology/ch11-cardiovascular/ch11-cardiovascular.typ"
#include "part2-pathophysiology/ch12-gut-microbiome/ch12-gut-microbiome.typ"
#include "part2-pathophysiology/ch14-genetics-epigenetics/ch14-genetics-epigenetics.typ"
#include "part2-pathophysiology/ch15-integrative-models/ch15-integrative-models.typ"
#include "part2-pathophysiology/ch16-comparative-nosology/ch16-comparative-nosology.typ"
#include "part2-pathophysiology/ch13-brain-clearance-architecture/ch13-brain-clearance-architecture.typ"
#include "part2-pathophysiology/ch17-speculative-hypotheses/ch17-speculative-hypotheses.typ"
#include "part2-pathophysiology/ch18-symptom-producing-mechanisms/ch18-symptom-producing-mechanisms.typ"
#include "part2-pathophysiology/ch19-causal-hierarchy/ch19-causal-hierarchy.typ"
#include "part2-pathophysiology/ch20-universal-mechanisms/ch20-universal-mechanisms.typ"
#include "part2-pathophysiology/ch21-female-reproductive-axis/ch21-female-reproductive-axis.typ"

// ── Part III: Treatment and Management ───────────────────────────────────────
#include "part3-treatment/part3-intro.typ"
#include "part3-treatment/ch22-mechanism-treatment-map/ch22-mechanism-treatment-map.typ"
#include "part3-treatment/ch23-symptom-management/ch23-symptom-management.typ"
#include "part3-treatment/ch24-urgent-action-severe/ch24-urgent-action-severe.typ"
#include "part3-treatment/ch25-action-mild-moderate/ch25-action-mild-moderate.typ"
#include "part3-treatment/ch26-pediatric-severe/ch26-pediatric-severe.typ"
#include "part3-treatment/ch27-pediatric-ambulatory/ch27-pediatric-ambulatory.typ"
#include "part3-treatment/ch28-medications-systems/ch28-medications-systems.typ"
#include "part3-treatment/ch29-supplements-nutraceuticals/ch29-supplements-nutraceuticals.typ"
#include "part3-treatment/ch30-lifestyle-interventions/ch30-lifestyle-interventions.typ"
#include "part3-treatment/ch31-emerging-therapies/ch31-emerging-therapies.typ"
#include "part3-treatment/ch32-integrative-approaches/ch32-integrative-approaches.typ"
#include "part3-treatment/ch33-medication-response-reference/ch33-medication-response-reference.typ"
#include "part3-treatment/ch34-mechanistic-cascade-tracing/ch34-mechanistic-cascade-tracing.typ"

// ── Part IV: Research and Evidence Synthesis ──────────────────────────────────
#include "part4-research/part4-intro.typ"
#include "part4-research/ch35-research-methods/ch35-research-methods.typ"
#include "part4-research/ch36-biomarker-research/ch36-biomarker-research.typ"
#include "part4-research/ch37-clinical-trials/ch37-clinical-trials.typ"
#include "part4-research/ch38-mechanistic-studies/ch38-mechanistic-studies.typ"
#include "part4-research/ch39-epidemiology-outcomes/ch39-epidemiology-outcomes.typ"
#include "part4-research/ch40-healthcare-systems-policy/ch40-healthcare-systems-policy.typ"
#include "part4-research/ch41-economic-impact/ch41-economic-impact.typ"
#include "part4-research/ch42-controversies/ch42-controversies.typ"
#include "part4-research/ch43-translational-findings/ch43-translational-findings.typ"
#include "part4-research/ch44-global-perspectives/ch44-global-perspectives.typ"
#include "part4-research/ch45-research-infrastructure/ch45-research-infrastructure.typ"
#include "part4-research/ch46-patient-generated-knowledge/ch46-patient-generated-knowledge.typ"
#include "part4-research/ch47-proposed-studies/ch47-proposed-studies.typ"
#include "part4-research/ch48-research-proposals-index/ch48-research-proposals-index.typ"

// ── Part V: Mathematical and Computational Modeling ───────────────────────────
#include "part5-modeling/part5-intro.typ"
#include "part5-modeling/ch49-modeling-foundations/ch49-modeling-foundations.typ"
#include "part5-modeling/ch50-energy-metabolism-models/ch50-energy-metabolism-models.typ"
#include "part5-modeling/ch51-immune-system-models/ch51-immune-system-models.typ"
#include "part5-modeling/ch52-neuroendocrine-models/ch52-neuroendocrine-models.typ"
#include "part5-modeling/ch53-integrated-systems/ch53-integrated-systems.typ"
#include "part5-modeling/ch54-temporal-evolution/ch54-temporal-evolution.typ"
#include "part5-modeling/ch55-predictive-applications/ch55-predictive-applications.typ"
#include "part5-modeling/ch56-causal-hierarchy-formal/ch56-causal-hierarchy-formal.typ"

// =============================================================================
// APPENDICES  (lettered: A, B, C … with sub-sections A.1, A.1.1)
// =============================================================================

// Switch numbering to uppercase letter for top-level headings
#set heading(numbering: (..nums) => {
  let n = nums.pos()
  if n.len() == 1 {
    str.from-unicode(64 + n.at(0))  // A, B, C, …
  } else {
    str.from-unicode(64 + n.at(0)) + "." + n.slice(1).map(str).join(".")
  }
})
#counter(heading).update(0)

#include "appendices/appendix-intro.typ"
#include "appendices/appendix-a-terminology.typ"
#include "appendices/appendix-b-abbreviations.typ"
#include "appendices/appendix-c-diagnostic-tools.typ"
#include "appendices/appendix-d-resources.typ"
#include "appendices/appendix-e-mathematical-details.typ"
#include "appendices/appendix-f-supplement-guide.typ"
#include "appendices/appendix-g-research-synthesis.typ"
#include "appendices/appendix-h-annotated-bibliography.typ"
#include "appendices/appendix-i-research-registry.typ"
#include "appendices/appendix-j-medical-toolkit.typ"

// =============================================================================
// BIBLIOGRAPHY
// Topic-specific bib files in bib/ — source of truth
// =============================================================================

#bibliography(("bib/autoimmunity.bib", "bib/autonomic-cardiovascular.bib", "bib/brain-clearance.bib", "bib/connective-tissue.bib", "bib/diagnosis-assessment.bib", "bib/endocrine-reproductive.bib", "bib/energy-metabolism.bib", "bib/epidemiology.bib", "bib/exercise-pem.bib", "bib/general.bib", "bib/genetics-epigenetics.bib", "bib/gut-microbiome.bib", "bib/immune.bib", "bib/ion-channels-lithium.bib", "bib/long-covid.bib", "bib/mast-cell.bib", "bib/modeling.bib", "bib/neuroinflammation.bib", "bib/neurology-comorbidities.bib", "bib/pain-fibromyalgia.bib", "bib/pathophysiology-general.bib", "bib/sleep.bib", "bib/stigma.bib", "bib/treatments.bib", "bib/vascular.bib", "bib/viral-infection.bib", "bib/pupillometry.bib", "bib/musculoskeletal.bib", "bib/global-perspectives.bib"), style: "ieee")
