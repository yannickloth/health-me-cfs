// ── Title block ──────────────────────────────────────────────────────────────

#align(center)[
  #v(1cm)
  #text(size: 16pt, weight: "bold")[
    Human–AI Collaborative Medical Documentation:
    Methodology, Agent Architecture, and Quality Assurance\
    in a Large-Scale ME/CFS Reference Work
  ]
  #v(0.6cm)
  #text(size: 12pt)[Nicolas Dewaele]
  #v(0.2cm)
  #text(size: 10pt, style: "italic")[
    Independent researcher
  ]
  #v(0.3cm)
  #text(size: 9pt)[
    #datetime.today().display("[month repr:long] [day], [year]")
  ]
  #v(0.8cm)
]

// ── Abstract ─────────────────────────────────────────────────────────────────

#block(
  stroke: 0.5pt + gray,
  radius: 4pt,
  inset: 14pt,
  width: 100%,
)[
  *Abstract.* We describe the methodology underlying a large-scale reference work on Myalgic Encephalomyelitis / Chronic Fatigue Syndrome (ME/CFS), produced through a systematic human–AI collaboration. The collaboration is conducted through Claude Code (Anthropic's agentic CLI), which serves as the execution environment for all writing, research, and review operations. The collaboration follows a strict division of labour: the AI system is the sole author of all text, while the human author provides domain framing, original ideas, guidance on scientific priorities, and critical oversight. Quality assurance is enforced through a multi-tier pipeline of approximately 90 specialised AI agents, organised into review categories covering structural integrity, terminology, scientific rigour, domain-specific biological accuracy, safety, and publication readiness. All review workflows operate under a convergence criterion: a section is only accepted after two consecutive review rounds produce zero findings. When convergence cannot be achieved within 12 rounds, remaining issues are escalated for human judgment. The human author's contribution is not primarily textual but interpretive: identifying where mechanistic hypotheses are incorrectly framed as clinical recommendations, deciding when a mathematical model is epistemically warranted versus premature, and supplying the cross-disciplinary integration that no single agent can perform. This paper documents the full architecture of the collaboration, the agent taxonomy, the review cycle semantics, and the epistemological roles of human and AI in a document that must meet scientific standards without the institutional scaffolding of a conventional research team.
]

#v(0.8cm)

*Keywords:* human–AI collaboration, medical documentation, ME/CFS, quality assurance, agent systems, epistemic classification, automated review, scientific writing
