// =============================================================================
// DOCUMENT METADATA
// Change driver: DOCUMENT_IDENTITY
// Changes when: author, DOI, ORCID, version, or title information changes.
// =============================================================================

#let doc-title    = "Myalgic Encephalomyelitis / Chronic Fatigue Syndrome"
#let doc-subtitle = "A Comprehensive Medical Documentation"
#let doc-author   = "Ing. Yannick Loth, M.Sc. (Management)"
#let doc-doi      = "10.5281/zenodo.19184064"
#let doc-doi-url  = "https://doi.org/" + doc-doi
#let doc-orcid    = "0009-0003-5754-827X"
#let doc-email    = "yl@infolead.eu"
#let doc-version  = 6

// Compile date — override via `--input compile-date=YYYY-MM-DD`.
// Fallback: doc-date-fallback below (update on each release).
// datetime.today() is unreliable (returns epoch in sandboxed/Nix builds).
#let doc-date-fallback = datetime(year: 2026, month: 3, day: 21)

#let doc-date = {
  let raw = sys.inputs.at("compile-date", default: none)
  if raw != none {
    let parts = raw.split("-")
    datetime(
      year:  int(parts.at(0)),
      month: int(parts.at(1)),
      day:   int(parts.at(2)),
    )
  } else {
    doc-date-fallback
  }
}
