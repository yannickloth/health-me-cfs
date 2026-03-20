// =============================================================================
// ME/CFS Documentation — Main Document
// =============================================================================
// Typst equivalent of ms.tex

#import "template.typ": *

#show: mecfs-doc.with(
  title: "Myalgic Encephalomyelitis / Chronic Fatigue Syndrome",
  subtitle: "A Comprehensive Medical Documentation",
  author: [
    Ing. Yannick Loth, M.Sc. (Management) \
    #text(size: 10pt)[Software Architect & Patient-Researcher] \
    #text(size: 10pt)[Messancy, Belgium] \
    #text(size: 10pt)[#link("mailto:yl@infolead.eu")[yl\@infolead.eu]] \
    #text(size: 10pt)[ORCID: #link("https://orcid.org/0009-0003-5754-827X")[0009-0003-5754-827X]] \
    #text(size: 10pt)[DOI: #link(mecfs-doi-url)[#mecfs-doi]]
  ],
  date: [#datetime.today().display("[month repr:long] [day], [year]") \ Version #docversion],
)

// ============================================================================
// FRONT MATTER
// ============================================================================

#set page(numbering: "i")
#counter(page).update(1)

#include "contents/shared/abstract.typ"
#include "contents/shared/version-notice.typ"
#include "contents/shared/keywords.typ"
#include "contents/shared/license.typ"
#include "contents/shared/author-bio.typ"
#include "contents/shared/ai-disclosure.typ"
#include "contents/shared/methodology.typ"
#include "contents/shared/reading-guide.typ"
#include "contents/shared/patient-faq.typ"
#include "contents/shared/changelog.typ"

// Table of contents
#outline(title: "Table of Contents", depth: 3)
#pagebreak()
#outline(title: "List of Figures", target: figure.where(kind: image))
#pagebreak()
#outline(title: "List of Tables", target: figure.where(kind: table))
#pagebreak()

// ============================================================================
// MAIN MATTER
// ============================================================================

#set page(numbering: "1")
#counter(page).update(1)

// =============================================================================
// PART I: CLINICAL OVERVIEW
// =============================================================================
#include "contents/part1-clinical/part1-intro.typ"
#include "contents/part1-clinical/ch01-introduction.typ"
#include "contents/part1-clinical/ch02-core-symptoms.typ"
#include "contents/part1-clinical/ch03-additional-symptoms.typ"
#include "contents/part1-clinical/ch04-diagnostic-criteria.typ"
#include "contents/part1-clinical/ch05-disease-course.typ"

// =============================================================================
// PART II: PATHOPHYSIOLOGY AND BIOLOGICAL MECHANISMS
// =============================================================================
#include "contents/part2-pathophysiology/part2-intro.typ"
#include "contents/part2-pathophysiology/ch06-energy-metabolism.typ"
#include "contents/part2-pathophysiology/ch07-immune-dysfunction.typ"
#include "contents/part2-pathophysiology/ch08-neurological.typ"
#include "contents/part2-pathophysiology/ch09-endocrine.typ"
#include "contents/part2-pathophysiology/ch10-cardiovascular.typ"
#include "contents/part2-pathophysiology/ch11-gut-microbiome.typ"
#include "contents/part2-pathophysiology/ch12-genetics-epigenetics.typ"
#include "contents/part2-pathophysiology/ch13-integrative-models.typ"
#include "contents/part2-pathophysiology/ch14-speculative-hypotheses.typ"
#include "contents/part2-pathophysiology/ch15-symptom-producing-mechanisms.typ"
#include "contents/part2-pathophysiology/ch16-causal-hierarchy.typ"

// =============================================================================
// PART III: TREATMENT AND MANAGEMENT
// =============================================================================
#include "contents/part3-treatment/part3-intro.typ"
#include "contents/part3-treatment/ch14-symptom-management.typ"
#include "contents/part3-treatment/ch14a-urgent-action-severe.typ"
#include "contents/part3-treatment/ch14b-action-mild-moderate.typ"
#include "contents/part3-treatment/ch14c-pediatric-severe.typ"
#include "contents/part3-treatment/ch14d-pediatric-ambulatory.typ"
#include "contents/part3-treatment/ch15-medications-systems.typ"
#include "contents/part3-treatment/ch16-supplements-nutraceuticals.typ"
#include "contents/part3-treatment/ch17-lifestyle-interventions.typ"
#include "contents/part3-treatment/ch18-emerging-therapies.typ"
#include "contents/part3-treatment/ch19-integrative-approaches.typ"

// =============================================================================
// PART IV: RESEARCH AND EVIDENCE SYNTHESIS
// =============================================================================
#include "contents/part4-research/part4-intro.typ"
#include "contents/part4-research/ch20-biomarker-research.typ"
#include "contents/part4-research/ch21-clinical-trials.typ"
#include "contents/part4-research/ch22-mechanistic-studies.typ"
#include "contents/part4-research/ch23-epidemiology-outcomes.typ"
#include "contents/part4-research/ch24-controversies.typ"
#include "contents/part4-research/ch25-translational-findings.typ"
#include "contents/part4-research/ch25a-research-infrastructure.typ"
#include "contents/part4-research/ch25b-proposed-studies.typ"

// =============================================================================
// PART V: MATHEMATICAL AND COMPUTATIONAL MODELING
// =============================================================================
#include "contents/part5-modeling/part5-intro.typ"
#include "contents/part5-modeling/ch26-modeling-foundations.typ"
#include "contents/part5-modeling/ch27-energy-metabolism-models.typ"
#include "contents/part5-modeling/ch28-immune-system-models.typ"
#include "contents/part5-modeling/ch29-neuroendocrine-models.typ"
#include "contents/part5-modeling/ch30-integrated-systems.typ"
#include "contents/part5-modeling/ch31-temporal-evolution.typ"
#include "contents/part5-modeling/ch32-predictive-applications.typ"
#include "contents/part5-modeling/ch33-causal-hierarchy-formal.typ"

// =============================================================================
// APPENDICES
// =============================================================================
// Reset heading numbering to use letters for appendices
#set heading(numbering: "A.1.")

#include "contents/appendices/appendix-a-terminology.typ"
#include "contents/appendices/appendix-b-abbreviations.typ"
#include "contents/appendices/appendix-c-diagnostic-tools.typ"
#include "contents/appendices/appendix-d-resources.typ"
#include "contents/appendices/appendix-e-mathematical-details.typ"
#include "contents/appendices/appendix-f-supplement-guide.typ"
#include "contents/appendices/appendix-g-research-synthesis.typ"
#include "contents/appendices/appendix-h-annotated-bibliography.typ"
#include "contents/appendices/appendix-i-research-registry.typ"

// =============================================================================
// BIBLIOGRAPHY
// =============================================================================
#bibliography("references.bib", style: "ieee")
