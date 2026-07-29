#import "../shared/environments.typ": *

= Glossary of Medical and Scientific Terms
<app:glossary>

This glossary defines medical, biochemical, immunological, and statistical terms used throughout this document. Terms are organized alphabetically. Where a term is used in a specialized sense specific to ME/CFS research, the ME/CFS-specific usage is indicated.

#let glossary-data = json("../../../resources/glossary.json")

// Categories excluded from this scientific glossary
// (medication/supplement product categories belong in therapeutic chapters)
#let excluded-categories = (
  "medication",
  "supplement",
  "medication_class",
  "vitamin",
  "brand",
)

// Build a dictionary mapping first letter to group heading
#let group-dict = (:
  A: "A", B: "B", C: "C",
  D: "D–E", E: "D–E",
  F: "F–G", G: "F–G",
  H: "H–I", I: "H–I",
  J: "J",
  K: "K–M", L: "K–M", M: "K–M",
  N: "N–O", O: "N–O",
  P: "P–R", Q: "P–R", R: "P–R",
  S: "S–T", T: "S–T",
  U: "U–Z", V: "U–Z", W: "U–Z", X: "U–Z", Y: "U–Z", Z: "U–Z",
)

// Collect and sort entries
#let entries-array = ()
#for (key, entry) in glossary-data {
  if key == "_meta_" { continue }

  let category = entry.at("category", default: "")
  if category in excluded-categories { continue }

  let label = entry.at("label", default: key)
  let definition = entry.at("definition", default: "")
  if definition == "" { continue }

  let sort-key = lower(label)
  if sort-key.starts-with("a ") { sort-key = sort-key.slice(2) }
  if sort-key.starts-with("an ") { sort-key = sort-key.slice(3) }
  if sort-key.starts-with("the ") { sort-key = sort-key.slice(4) }

  entries-array.push((label: label, definition: definition, sort-key: sort-key))
}

#let sorted-entries = entries-array.sorted(key: (e) => e.sort-key)

// Render: group by first letter, emit heading + term list
#let current-group = ""
#for item in sorted-entries {
  let first-char = upper(item.label.at(0, default: ""))
  let group = group-dict.at(first-char, default: first-char)

  if group != current-group {
    current-group = group
    heading(level: 2, group)
  }

  strong(item.label) + [: ] + item.definition
  parbreak()
}
