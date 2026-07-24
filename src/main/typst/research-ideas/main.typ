// =============================================================================
// ME/CFS Research Ideas: Creative Proposals
// Standalone companion paper to loth2026-mecfs
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
  title:  "ME/CFS Research Ideas: Creative Proposals for Advancing Understanding",
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

This document presents 15 creative research proposals for advancing understanding, diagnosis, and treatment of Myalgic Encephalomyelitis / Chronic Fatigue Syndrome (ME/CFS). Each proposal originated from a brainstorming session prompted by the question: what could be added or developed more deeply that would provide tangible value to patients, carers, physicians, and researchers?

The proposals span five categories:

*Pharmacodiagnostic methods* — extensions of the mechanistic cascade tracing framework developed in Ch30 of the parent paper, using medication response patterns and endogenous physiological events as diagnostic probes.

*Patient-driven data methods* — tools that exploit patients' lived experience, wearable data, and daily fluctuation patterns to generate mechanistic signal without requiring any new laboratory infrastructure.

*Study designs* — novel research protocols with high signal-to-noise ratio, low cost, and immediate feasibility.

*Clinical decision tools* — formalized algorithms for pacing, crash prediction, treatment timing, and recovery prognosis.

*Systematic taxonomies* — structured frameworks for decomposing PEM shape, comorbidity acquisition, and between-patient heterogeneity into diagnostically useful dimensions.

Part I presents the 15 research proposals, ordered by estimated practical impact: from those that could change clinical practice immediately (#1–#5) to those requiring prospective data collection or validation (#11–#15). Each is presented with a concrete implementation plan, expected outputs, feasibility assessment, and potential pitfalls.

Part II provides software architecture specifications for implementing the most technically demanding proposals as interactive tools — deploying the paper's mechanistic reasoning into usable applications for patients, physicians, and researchers.

// --- Contents ---
#pagebreak()
#outline(title: "Contents", indent: 2em)

// =============================================================================
// MAIN MATTER
// =============================================================================

#set heading(numbering: "1.1.1.1")
#counter(heading).update(0)
#set page(numbering: "1")
#counter(page).update(1)

#include "ch01-pharmacodiagnostic-cascade/ch01-pharmacodiagnostic-cascade.typ"
#include "ch02-endogenous-probes/ch02-endogenous-probes.typ"
#include "ch03-daily-fluctuation/ch03-daily-fluctuation.typ"
#include "ch04-pem-shape/ch04-pem-shape.typ"
#include "ch05-cross-disease-phenotyping/ch05-cross-disease-phenotyping.typ"
#include "ch06-mechanism-fingerprint/ch06-mechanism-fingerprint.typ"
#include "ch07-wearable-aggregation/ch07-wearable-aggregation.typ"
#include "ch08-household-control/ch08-household-control.typ"
#include "ch09-adverse-reaction-atlas/ch09-adverse-reaction-atlas.typ"
#include "ch10-pacing-formalized/ch10-pacing-formalized.typ"
#include "ch11-crash-resilience/ch11-crash-resilience.typ"
#include "ch12-recovery-predictor/ch12-recovery-predictor.typ"
#include "ch13-pediatric-trajectory/ch13-pediatric-trajectory.typ"
#include "ch14-comorbidity-cascade/ch14-comorbidity-cascade.typ"
#include "ch15-medication-timing/ch15-medication-timing.typ"

// =============================================================================
// Part II: Software Specifications
// =============================================================================

#include "part2-software/part2-intro.typ"
#include "part2-software/ch01-pharmacodiagnostic-app/ch01-pharmacodiagnostic-app.typ"
#include "part2-software/ch02-cascade-tracing-tool/ch02-cascade-tracing-tool.typ"
#include "part2-software/ch03-wearable-dashboard/ch03-wearable-dashboard.typ"
#include "part2-software/ch04-mechanism-fingerprint-platform/ch04-mechanism-fingerprint-platform.typ"
#include "part2-software/ch05-pacing-app/ch05-pacing-app.typ"
#include "part2-software/ch06-adverse-reaction-database/ch06-adverse-reaction-database.typ"
#include "part2-software/ch07-recovery-predictor-tool/ch07-recovery-predictor-tool.typ"
#include "part2-software/ch08-comorbidity-cascade-viewer/ch08-comorbidity-cascade-viewer.typ"
