#import "../../shared/environments.typ": *

= Medication Response Reference: From Drug Response to Mechanism Identification <ch:medication-response-reference>

=== Chapter Abstract
Every drug response — therapeutic benefit, null response, side effect at a specific dose — is diagnostic information. This chapter provides: (a) generic frameworks for reading dose-response curves, side-effect patterns, and cross-drug combination signals; (b) per-medication clinical entries with response/non-response interpretation, dose-dependent differential diagnosis, and combination inference; and (c) a consolidated per-drug dose-range reference with cross-drug predictive patterns. For each drug, the central question is: what does the response reveal about which mechanism is broken?

#roadmap(title: [How to Use This Chapter])[
*For patients*: use the medication index and the per-drug entries to understand what a benefit, null response, or side effect at a specific dose means for you; the response-nonresponse interpretation is written to be readable without medical training.

*For caregivers*: use the per-drug entries to track and report the patient's response pattern to the clinical team; the dose-response categories (@sec:dose-response-categories) explain why low doses behave differently.

*For clinicians*: read the generic frameworks first — dose-response categories (@sec:dose-response-categories), side-effects-as-diagnostic-probes (@sec:side-effects-diagnostic-probes), and the null-ladder (@sec:null-ladder-algorithm) — then the per-system drug sections for mechanism interpretation.

*For researchers*: read the synthesis algorithm (@sec:differential-diagnostic-algorithm), pharmacodiagnostic matrix (@sec:pharmacodiagnostic-matrix-clinical), null-subtyping (@sec:null-subtyping), and origin-elimination (@sec:origin-elimination) sections as the formal frameworks for drug-response-driven mechanism identification.
]

#include "sec-01-why-this-chapter-exists/sec-01-why-this-chapter-exists.typ"
#include "sec-02-how-to-use/sec-02-how-to-use.typ"

// --- GENERIC FRAMEWORKS (read before any drug section) ---
#include "sec-02a-dose-response-categories/sec-02a-dose-response-categories.typ"
#include "sec-02b-side-effects-diagnostic-probes/sec-02b-side-effects-diagnostic-probes.typ"
#include "sec-02c-null-ladder/sec-02c-null-ladder.typ"
#include "sec-02d-combination-inference/sec-02d-combination-inference.typ"
#include "sec-02e-synthesis-algorithm/sec-02e-synthesis-algorithm.typ"
#include "sec-02f-pharmacodiagnostic-matrix/sec-02f-pharmacodiagnostic-matrix.typ"
#include "sec-02h-origin-elimination/sec-02h-origin-elimination.typ"
#include "sec-02i-null-subtyping/sec-02i-null-subtyping.typ"

// --- REFERENCE TABLE (prominent early placement for rapid system-probe lookup) ---
#include "sec-02j-reference-table/sec-02j-reference-table.typ"

// --- MEDICATION INDEX ---
#include "sec-02g-medication-index/sec-02g-medication-index.typ"

// --- MEDICATIONS (per system, one section per drug/class) ---
#include "sec-03-immune-neuroimmune/sec-03-immune-neuroimmune.typ"
#include "sec-04-antiviral/sec-04-antiviral.typ"
#include "sec-05-stimulants/sec-05-stimulants.typ"
#include "sec-06-mitochondrial/sec-06-mitochondrial.typ"
#include "sec-07-mast-cell-histamine/sec-07-mast-cell-histamine.typ"
#include "sec-08-oxidative-inflammatory/sec-08-oxidative-inflammatory.typ"
#include "sec-09-autonomic-cardiovascular/sec-09-autonomic-cardiovascular.typ"
#include "sec-10-electrolytes/sec-10-electrolytes.typ"
#include "sec-11-sleep-pain/sec-11-sleep-pain.typ"
#include "sec-12-emerging-investigational/sec-12-emerging-investigational.typ"
#include "sec-13-hormetic-dose-range-reference/sec-13-hormetic-dose-range-reference.typ"

