#import "../../shared/environments.typ": *

= Medication Response Reference: From Drug Response to Mechanism Identification <ch:medication-response-reference>

=== Chapter Abstract
Every drug response — therapeutic benefit, null response, side effect at a specific dose — is diagnostic information. This chapter provides: (a) generic frameworks for reading dose-response curves, side-effect patterns, and cross-drug combination signals; (b) per-medication clinical entries with response/non-response interpretation, dose-dependent differential diagnosis, and combination inference; and (c) a consolidated per-drug dose-range reference with cross-drug predictive patterns. For each drug, the central question is: what does the response reveal about which mechanism is broken?

#roadmap(title: [How to Use This Chapter])[
*For patients*: use the medication index and the per-drug entries to understand what a benefit, null response, or side effect at a specific dose means for you; the response-nonresponse interpretation is written to be readable without medical training. This is an interpretive reference, not a prescribing guide — route any dose or combination decision through your clinician.

*For caregivers*: use the per-drug entries to track and report the patient's response pattern to the clinical team; the dose-response categories (@sec:dose-response-categories) explain why low doses behave differently.

*For clinicians*: read the generic frameworks first — dose-response categories (@sec:dose-response-categories), side-effects-as-diagnostic-probes (@sec:side-effects-diagnostic-probes), and the null-ladder (@sec:null-ladder-algorithm) — then the per-system drug sections for mechanism interpretation.

*For researchers*: read the synthesis algorithm (@sec:differential-diagnostic-algorithm), pharmacodiagnostic matrix (@sec:pharmacodiagnostic-matrix-clinical), null-subtyping (@sec:null-subtyping), and origin-elimination (@sec:origin-elimination) sections as the formal frameworks for drug-response-driven mechanism identification.
]

#include "sec-01-why-this-chapter-exists/sec-01-why-this-chapter-exists.typ"
#include "sec-02-how-to-use/sec-02-how-to-use.typ"

// --- GENERIC FRAMEWORKS (read before any drug section) ---
#include "sec-03-dose-response-categories/sec-03-dose-response-categories.typ"
#include "sec-04-side-effects-diagnostic-probes/sec-04-side-effects-diagnostic-probes.typ"
#include "sec-05-null-ladder/sec-05-null-ladder.typ"
#include "sec-06-combination-inference/sec-06-combination-inference.typ"
#include "sec-07-synthesis-algorithm/sec-07-synthesis-algorithm.typ"
#include "sec-08-pharmacodiagnostic-matrix/sec-08-pharmacodiagnostic-matrix.typ"
#include "sec-09-origin-elimination/sec-09-origin-elimination.typ"
#include "sec-10-null-subtyping/sec-10-null-subtyping.typ"
#include "sec-11-population-corpus/sec-11-population-corpus.typ"

// --- REFERENCE TABLE (prominent early placement for rapid system-probe lookup) ---
#include "sec-12-reference-table/sec-12-reference-table.typ"

// --- MEDICATION INDEX ---
#include "sec-13-medication-index/sec-13-medication-index.typ"

// --- MEDICATIONS (per system, one section per drug/class) ---
#include "sec-14-immune-neuroimmune/sec-14-immune-neuroimmune.typ"
#include "sec-15-antiviral/sec-15-antiviral.typ"
#include "sec-16-stimulants/sec-16-stimulants.typ"
#include "sec-17-mitochondrial/sec-17-mitochondrial.typ"
#include "sec-18-mast-cell-histamine/sec-18-mast-cell-histamine.typ"
#include "sec-19-oxidative-inflammatory/sec-19-oxidative-inflammatory.typ"
#include "sec-20-autonomic-cardiovascular/sec-20-autonomic-cardiovascular.typ"
#include "sec-21-electrolytes/sec-21-electrolytes.typ"
#include "sec-22-sleep-pain/sec-22-sleep-pain.typ"
#include "sec-23-emerging-investigational/sec-23-emerging-investigational.typ"
#include "sec-24-hormetic-dose-range-reference/sec-24-hormetic-dose-range-reference.typ"

