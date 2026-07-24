// =============================================================================
// ME/CFS Software Ideas: Creative Brainstorm
// Standalone companion paper to loth2026-mecfs
// Sibling to: research-ideas/main.typ
// Date: 2026-07-23
// =============================================================================

// =============================================================================
// IMPORTS — reuses the main paper's shared infrastructure
// =============================================================================

#import "../mecfs/shared/metadata.typ": *
#import "../mecfs/shared/theme.typ": color, apply-link-style
#import "../mecfs/shared/typography.typ": *
#import "../mecfs/shared/layout.typ": apply-page-layout
#import "../mecfs/shared/environments.typ": *
#import "../mecfs/shared/tables.typ": apply-table-styles
#import "../mecfs/shared/front-matter.typ": title-page

// =============================================================================
// GLOBAL STYLE APPLICATION
// =============================================================================

#set document(
  title:  "ME/CFS Software Ideas: Creative Brainstorm",
  author: doc-author,
)

#set text(
  font:      font-body,
  size:      size-body,
  fill:      color.charcoal,
  lang:      "en",
  hyphenate: true,
)

#set par(
  spacing:            para-spacing,
  leading:            para-leading,
  first-line-indent:  0pt,
  justify:            true,
)

#set list(spacing: list-item-spacing)
#set enum(spacing: list-item-spacing)

#show: apply-page-layout
#show: apply-heading-styles
#show: apply-caption-styles
#show: apply-table-styles
#show link: it => text(fill: color.viridis-blue, it)
#show: apply-counter-resets

#set heading(numbering: "1.1.1.1")
#set math.equation(numbering: "1.1")

// =============================================================================
// FRONT MATTER
// =============================================================================

#set page(numbering: "i")
#counter(page).update(1)

#title-page()

#set heading(numbering: none)

// --- Abstract ---
#pagebreak()

= Abstract

#v(0.5em)

This document presents 17 creative software ideas for improving understanding, diagnosis, and management of Myalgic Encephalomyelitis / Chronic Fatigue Syndrome (ME/CFS). Each idea originated from a brainstorming session prompted by the question: what software could be built that would provide novel value to patients, carers, physicians, or researchers?

The ideas span six categories:

*Simulation and prediction* — tools that model disease dynamics, predict treatment responses, and simulate intervention outcomes using the formal models developed in Part V of the parent paper.

*Patient self-tracking and insight* — tools that convert patients' lived experience into actionable mechanistic signal, requiring minimal technical literacy and respecting the cognitive and energy constraints of severe patients.

*Clinical decision support* — tools deployed at the point of care that help physicians make evidence-based, mechanism-stratified treatment decisions in the 15-minute consultation window.

*Data aggregation and matching* — tools that pool de-identified patient data to enable cohort matching, outcome comparison, and population-level pattern discovery.

*Education and knowledge deployment* — tools that make the parent paper's mechanistic content navigable by audiences with different levels of expertise, from newly diagnosed patients to specialist researchers.

*Infrastructure and community* — tools that support caregivers, enable citizen science, and build the data infrastructure the field needs.

Ideas are ordered by estimated patient impact — from those a patient could use immediately to transform daily life (#1–#5), through tools requiring physician adoption or infrastructure (#6–#12), to tools for researchers and ecosystem builders (#13–#17). Each is presented with a concrete vision, core functionality, users, and relationship to the parent paper. Where an idea overlaps with a research proposal detailed in the companion document (the Virtual Drug Trial Simulator through the Comorbidity Cascade Viewer), the overlap is noted and the reader is directed there for implementation-level detail.

// --- Contents ---
#pagebreak()
#outline(title: "Contents", indent: 2em)

// =============================================================================
// MAIN MATTER — ordered by estimated patient impact (highest first)
// =============================================================================

#set heading(numbering: "1.1.1.1")
#counter(heading).update(0)
#set page(numbering: "1")
#counter(page).update(1)

#include "ch01-pem-pacemaker/ch01-pem-pacemaker.typ"
#include "ch02-external-trigger-calendar/ch02-external-trigger-calendar.typ"
#include "ch03-caregiver-dashboard/ch03-caregiver-dashboard.typ"
#include "ch04-crash-diary-nlp/ch04-crash-diary-nlp.typ"
#include "ch05-attractor-basin-gps/ch05-attractor-basin-gps.typ"
#include "ch06-physician-education/ch06-physician-education.typ"
#include "ch07-identical-twin-matcher/ch07-identical-twin-matcher.typ"
#include "ch08-ch30-physician-tool/ch08-ch30-physician-tool.typ"
#include "ch09-treatment-decision-tree/ch09-treatment-decision-tree.typ"
#include "ch10-sleep-architecture-optimizer/ch10-sleep-architecture-optimizer.typ"
#include "ch11-functional-narcolepsy-screener/ch11-functional-narcolepsy-screener.typ"
#include "ch12-gpcr-autoantibody-tracker/ch12-gpcr-autoantibody-tracker.typ"
#include "ch13-citizen-science-nof1/ch13-citizen-science-nof1.typ"
#include "ch14-virtual-drug-trial/ch14-virtual-drug-trial.typ"
#include "ch15-multi-lock-dependency-graph/ch15-multi-lock-dependency-graph.typ"
#include "ch16-mechanism-knowledge-graph/ch16-mechanism-knowledge-graph.typ"
#include "ch17-decodeme-explorer/ch17-decodeme-explorer.typ"
