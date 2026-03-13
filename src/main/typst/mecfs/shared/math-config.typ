// =============================================================================
// MATH CONFIGURATION — operators, notation, array spacing
// Change driver: MATH_CONVENTIONS
// Changes when: mathematical notation conventions change, new operators added,
// or Dirac/physics notation is added or removed.
// Mirrors: infolead-latex-templates/math.tex
// =============================================================================

// ── Math operators ─────────────────────────────────────────────────────────────
// Mirrors \DeclareMathOperator*{\argmax}{argmax} etc.
// In Typst, display as upright roman text inside math with limits.
#let argmax = math.op("argmax", limits: true)
#let argmin = math.op("argmin", limits: true)

// ── Absolute value and norm ────────────────────────────────────────────────────
// Mirrors \abs{x} = \left|x\right|, \norm{x} = \left\|x\right\|
#let abs(x)  = $lr(|#x|)$
#let norm(x) = $lr(||#x||)$

// ── Dirac bra-ket notation ────────────────────────────────────────────────────
// Fixed-size versions (mirrors lowercase \bra, \ket, \braket, \mel)
#let bra(x)        = $angle.l #x |$
#let ket(x)        = $| #x angle.r$
#let braket(a, b)  = $angle.l #a | #b angle.r$
#let mel(a, op, b) = $angle.l #a | #op | #b angle.r$

// Auto-sizing versions (mirrors uppercase \Bra, \Ket, \Braket, \Mel)
// Typst's lr() handles auto-sizing.
#let Bra(x)        = $lr(angle.l #x |)$
#let Ket(x)        = $lr(| #x angle.r)$
#let Braket(a, b)  = $lr(angle.l #a | #b angle.r)$
#let Mel(a, op, b) = $lr(angle.l #a | #op | #b angle.r)$

// ── Array / matrix row spacing ─────────────────────────────────────────────────
// LaTeX sets \arraystretch=1.1 for slightly more breathing room in matrices.
// In Typst this is controlled per-table via `row-gutter`; export a constant.
#let matrix-row-gutter = 0.3em   // ~10% extra over default; apply in table environments
