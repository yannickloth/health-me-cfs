#import "../shared/environments.typ": *

= Medication Response as Diagnostic Information
<ch:medication-response-reference>

#show heading.where(level: 4): it => {
  let s = repr(it.body)
  if s.starts-with("\"If ") {
    if "does NOT work" in s {
      counter(heading).update(n => (..n.slice(0, 4), 0))
      [#sym.xmark #it.body]
    } else if s.ends-with("works\"") {
      counter(heading).update(n => (..n.slice(0, 4), 0))
      [#sym.checkmark #it.body]
    } else {
      it
    }
  } else {
    it
  }
}

#include "ch29-medication-response-reference/sec-01-why-this-chapter-exists/sec-01-why-this-chapter-exists.typ"
#include "ch29-medication-response-reference/sec-02-how-to-use/sec-02-how-to-use.typ"
#include "ch29-medication-response-reference/sec-03-immune-neuroimmune/sec-03-immune-neuroimmune.typ"
#include "ch29-medication-response-reference/sec-04-antiviral/sec-04-antiviral.typ"
#include "ch29-medication-response-reference/sec-05-stimulants/sec-05-stimulants.typ"
#include "ch29-medication-response-reference/sec-06-mitochondrial/sec-06-mitochondrial.typ"
#include "ch29-medication-response-reference/sec-07-mast-cell-histamine/sec-07-mast-cell-histamine.typ"
#include "ch29-medication-response-reference/sec-08-oxidative-inflammatory/sec-08-oxidative-inflammatory.typ"
#include "ch29-medication-response-reference/sec-09-autonomic-cardiovascular/sec-09-autonomic-cardiovascular.typ"
#include "ch29-medication-response-reference/sec-10-electrolytes/sec-10-electrolytes.typ"
#include "ch29-medication-response-reference/sec-11-sleep-pain/sec-11-sleep-pain.typ"
#include "ch29-medication-response-reference/sec-12-emerging-investigational/sec-12-emerging-investigational.typ"
#include "ch29-medication-response-reference/sec-13-reference-table/sec-13-reference-table.typ"
