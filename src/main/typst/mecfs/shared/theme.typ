// =============================================================================
// VISUAL THEME — colours and link styling
// Change driver: VISUAL_THEME
// Changes when: the colour palette or link appearance changes independently
// of fonts, spacing, or domain semantics.
// Mirrors: infolead-latex-templates/colors.tex + hypersetup viridis colours.
// =============================================================================

#let color = (
  // ── Core brand ────────────────────────────────────────────────────────────
  midnight-blue: rgb("#19197A"),   // midnight_blue
  crimson:       rgb("#DC143C"),   // crimson
  ghost-white:   rgb("#F5F5F5"),   // ghost_white
  charcoal:      rgb("#1A1A1A"),   // charcoal — body text

  // ── Viridis-inspired palette (links, callout accents) ─────────────────────
  viridis-darker-blue: rgb("#38598C"),
  viridis-blue:        rgb("#2D708E"),
  viridis-green:       rgb("#21908C"),
  viridis-purple:      rgb("#440154"),

  // ── Documentation palette ─────────────────────────────────────────────────
  doc-blue:  rgb("#1E466E"),
  doc-green: rgb("#286428"),
  doc-red:   rgb("#8C1E1E"),

  // ── Project-specific named environments ───────────────────────────────────
  recommendation-frame: rgb("#2E7D32"),
  recommendation-bg:    rgb("#F1F8F6"),

  observation-frame: rgb("#4A7C6F"),
  observation-bg:    rgb("#F0F7F5"),

  limitation-frame: rgb("#546E7A"),
  limitation-bg:    rgb("#ECEFF1"),

  model-insight-frame: rgb("#3949AB"),
  model-insight-bg:    rgb("#E8EAF6"),

  // ── Standard theorem-class environments (from theorems.tex palette) ───────
  hypothesis-frame:  rgb("#A58200"),
  hypothesis-bg:     rgb("#FFFDF2"),
  speculation-frame: rgb("#D45B12"),
  speculation-bg:    rgb("#FFF8F4"),
  warning-frame:     rgb("#D45B12"),
  warning-bg:        rgb("#FFF8F4"),
  openq-frame:       rgb("#7A1F7A"),
  openq-bg:          rgb("#FAF4FA"),
  achievement-frame: rgb("#2E7D32"),
  achievement-bg:    rgb("#F6FFF4"),
  prediction-frame:  rgb("#2D708E"),
  prediction-bg:     rgb("#F4F8FA"),
  requirement-frame: rgb("#900C3F"),
  requirement-bg:    rgb("#F9F2F5"),
  axiom-frame:       rgb("#440154"),
  axiom-bg:          rgb("#FAF6FF"),
  assumption-frame:  rgb("#5D6D7E"),
  assumption-bg:     rgb("#F8F9FA"),
  consistency-frame: rgb("#1E847F"),
  consistency-bg:    rgb("#F2F9F9"),

  // ── Pedagogical environments ──────────────────────────────────────────────
  protocol-frame: rgb("#1976D2"),
  protocol-bg:    rgb("#E3F2FD"),
  keyfinding-frame: rgb("#F57F17"),
  keyfinding-bg:    rgb("#FFFDE7"),
  clinfind-frame: rgb("#616161"),
  clinfind-bg:    rgb("#F5F5F5"),
)

// Link colour rule (mirrors hypersetup urlcolor = viridis_blue)
#let apply-link-style() = {
  show link: it => text(fill: color.viridis-blue, it)
}
