#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Part II: Software Specifications — Introduction
// =============================================================================

= Part II: Software Architecture Specifications
<part:software>

#v(0.5em)

Several proposals in Part I require software to be usable — interactive tools that deploy the paper's mechanistic reasoning into interfaces for patients, physicians, and researchers. This part provides architecture specifications for the most impactful software tools, organized by the proposal they implement.

Each specification follows a consistent structure: purpose, users, core data model, interface design, technical architecture, deployment model, and relationship to the parent paper's content.

*Prioritization.* The tools are ordered by deployment readiness:
1. Tools deployable immediately with existing data structures (#1 Pharmacodiagnostic App, #2 Cascade Tracing Tool, #6 Adverse Reaction Database)
2. Tools requiring wearable/patient data integration (#3 Wearable Dashboard, #5 Pacing App)
3. Tools requiring clinical validation before deployment (#4 Mechanism Fingerprint Platform, #7 Recovery Predictor Tool, #8 Comorbidity Cascade Viewer)

*Technology stack.* All specifications assume a modern web stack (TypeScript, React/Svelte, PostgreSQL) with the mathematical core implemented in Python or Rust where performance matters. The focus is on architecture and data model, not on specific framework choices, which are implementation details.

*Common principles.* All tools share:
- Patient data ownership: data stays local or is managed under explicit patient-controlled consent
- Transparency: every inference, score, or prediction exposes its evidence basis and certainty
- Offline-first: tools function without continuous connectivity (relevant for severe patients who may use devices sporadically)
- Accessibility: interfaces designed for cognitive impairment (high contrast, minimal visual clutter, no auto-playing media)
- Open-source: all tools are released under permissive licenses to enable community contribution and clinical adoption
