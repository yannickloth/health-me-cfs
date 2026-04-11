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
#include "shared/changelog.typ"

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
#include "part1-clinical/ch01-introduction.typ"
#include "part1-clinical/ch02-core-symptoms.typ"
#include "part1-clinical/ch03-additional-symptoms.typ"
#include "part1-clinical/ch04-diagnostic-criteria.typ"
#include "part1-clinical/ch05-disease-course.typ"

// ── Part II: Pathophysiology and Biological Mechanisms ───────────────────────
#include "part2-pathophysiology/part2-intro.typ"
#include "part2-pathophysiology/ch06-energy-metabolism.typ"
#include "part2-pathophysiology/ch06b-energy-failure-cartography.typ"
#include "part2-pathophysiology/ch07-immune-dysfunction.typ"
#include "part2-pathophysiology/ch08-neurological.typ"
#include "part2-pathophysiology/ch09-endocrine.typ"
#include "part2-pathophysiology/ch10-cardiovascular.typ"
#include "part2-pathophysiology/ch11-gut-microbiome.typ"
#include "part2-pathophysiology/ch12-genetics-epigenetics.typ"
#include "part2-pathophysiology/ch13-integrative-models.typ"
#include "part2-pathophysiology/ch14-speculative-hypotheses.typ"
#include "part2-pathophysiology/ch15-symptom-producing-mechanisms.typ"
#include "part2-pathophysiology/ch16-causal-hierarchy.typ"

// ── Part III: Treatment and Management ───────────────────────────────────────
#include "part3-treatment/part3-intro.typ"
#include "part3-treatment/ch14-mechanism-treatment-map.typ"
#include "part3-treatment/ch14-symptom-management.typ"
#include "part3-treatment/ch14a-urgent-action-severe.typ"
#include "part3-treatment/ch14b-action-mild-moderate.typ"
#include "part3-treatment/ch14c-pediatric-severe.typ"
#include "part3-treatment/ch14d-pediatric-ambulatory.typ"
#include "part3-treatment/ch15-medications-systems.typ"
#include "part3-treatment/ch16-supplements-nutraceuticals.typ"
#include "part3-treatment/ch17-lifestyle-interventions.typ"
#include "part3-treatment/ch18-emerging-therapies.typ"
#include "part3-treatment/ch19-integrative-approaches.typ"

// ── Part IV: Research and Evidence Synthesis ──────────────────────────────────
#include "part4-research/part4-intro.typ"
#include "part4-research/ch20-biomarker-research.typ"
#include "part4-research/ch21-clinical-trials.typ"
#include "part4-research/ch22-mechanistic-studies.typ"
#include "part4-research/ch23-epidemiology-outcomes.typ"
#include "part4-research/ch24-controversies.typ"
#include "part4-research/ch25-translational-findings.typ"
#include "part4-research/ch25a-research-infrastructure.typ"
#include "part4-research/ch25b-proposed-studies.typ"

// ── Part V: Mathematical and Computational Modeling ───────────────────────────
#include "part5-modeling/part5-intro.typ"
#include "part5-modeling/ch26-modeling-foundations.typ"
#include "part5-modeling/ch27-energy-metabolism-models.typ"
#include "part5-modeling/ch28-immune-system-models.typ"
#include "part5-modeling/ch29-neuroendocrine-models.typ"
#include "part5-modeling/ch30-integrated-systems.typ"
#include "part5-modeling/ch31-temporal-evolution.typ"
#include "part5-modeling/ch32-predictive-applications.typ"
#include "part5-modeling/ch33-causal-hierarchy-formal.typ"

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

// =============================================================================
// BIBLIOGRAPHY
// (Typst bibliography via .bib file — uncomment when references.bib is ported)
// =============================================================================

#bibliography("references.bib", style: "ieee")
