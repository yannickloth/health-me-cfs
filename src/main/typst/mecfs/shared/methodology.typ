#import "environments.typ": *

= Methodology and Quality Assurance

<ch:methodology>

A document of this scope—over 400+ pages of medical content spanning pathophysiology, treatment, research synthesis, and mathematical modeling—produced through human–AI collaboration and without formal medical training on the author's part, demands rigorous and transparent quality assurance. This chapter describes the methodology used to maintain scientific accuracy, epistemic honesty, and internal consistency throughout the manuscript.

== Epistemic Classification
<sec:meth-epistemic>

Every substantive scientific claim in this document is assigned an explicit epistemic status through structured environments. This design choice ensures that readers can immediately distinguish established findings from working theories and speculative ideas, without needing to evaluate each claim from context alone.

*Claim environments.*
The following environments are used consistently throughout the manuscript:

/ *Achievement*: A research finding supported by strong evidence: replicated results from peer-reviewed studies with adequate sample sizes and sound methodology. These represent the most reliable claims in the document.

/ *Hypothesis*: An unproven conjecture or working theory with moderate plausibility (certainty $gt.eq 0.45$). Hypotheses are clearly marked because they may be wrong. Each hypothesis is required to include at least one falsifiable prediction, identified limitations, and relevant citations.

/ *Speculation*: A conjecture with lower plausibility (certainty $< 0.45$), often based on limited evidence, mechanistic reasoning, or extrapolation from related conditions. Speculations are held to the same structural requirements as hypotheses but carry explicit low-confidence warnings.

/ *Prediction*: A testable claim about future observations or experimental outcomes. Predictions specify what research should find if a given hypothesis is correct, providing a concrete path toward validation or falsification.

/ *Warning*: A critical caveat about limitations, risks, or potential misinterpretations. Warnings flag contraindications, preliminary evidence, or situations where claims should be interpreted with particular caution.

/ *Limitation*: An explicit epistemic boundary marking what the available data cannot conclude. Distinct from warnings (which address practical caveats), limitations delineate the outer edges of justified inference.

/ *Recommendation*: An evidence-based clinical or management suggestion. Recommendations are distinguished from hypotheses: a recommendation says “consider doing this,” grounded in clinical evidence, whereas a hypothesis says “this might be true,” grounded in mechanistic reasoning. This distinction is enforced through automated review (see _Automated Multi-Layer Review_ below).

*Certainty assessment.*
Research findings cited throughout the document are classified by evidence strength:

/ *High certainty*: Large sample size ($n > 100$), peer-reviewed in a reputable journal, independently replicated, consistent across studies.

/ *Medium certainty*: Moderate sample ($n = 20$–$100$), peer-reviewed but limited replication, sound methodology. Promising but requiring confirmation.

/ *Low certainty*: Small sample ($n < 20$), preprint or conference abstract, methodological concerns, or contradicted by other studies.

*Replication status.*
Key findings are annotated with their replication status: _fully replicated_ (confirmed by independent cohorts), _partially replicated_ (some confirmation with caveats), or _not yet replicated_ (single study or research group). This classification reflects the reality that much ME/CFS research remains at early replication stages due to historical underfunding.

== Literature Integration
<sec:meth-literature>

Research papers are integrated through a structured pipeline designed to ensure traceability and appropriate epistemic calibration.

*Discovery and selection.*
The author identifies research directions and selects papers for integration based on relevance to ME/CFS pathophysiology, treatment, or modeling. AI assists with literature search, retrieval, and initial summarization. The author evaluates study quality, assesses methodological limitations, and determines which findings warrant inclusion.

*Integration protocol.*
Each integrated paper passes through a defined sequence:

- *Bibliographic entry*: Full citation added to the bibliography with complete metadata (authors, title, journal, DOI, year).
- *Certainty assessment*: Evidence strength classified as high, medium, or low based on sample size, peer-review status, replication, and methodology.
- *Content placement*: Findings inserted into the appropriate chapter using the correct epistemic environment (achievement, hypothesis, or speculation) with explicit certainty annotation.
- *Cross-referencing*: Links established to related content in other chapters, the hypothesis registry, and the annotated bibliography.

*Annotated bibliography.*
Appendix @app:annotated-bibliography provides structured summaries of key papers organized by topic, enabling readers to evaluate primary sources directly.

== Automated Multi-Layer Review
<sec:meth-review>

The manuscript undergoes systematic automated review through a pipeline of specialized auditing agents. Each agent is an AI-driven reviewer with a narrow, well-defined audit scope. Agents operate in read-only mode: they identify and report issues but do not modify text autonomously. All corrections are reviewed and applied by the author.

The review system comprises 20 audit categories organized into six phases, ordered from structural checks (fast, mechanical) to deep domain-specific analysis (slow, semantic).

*Phase 1: Structural and mechanical.*
Catches low-level issues that could cause cascading false positives in later phases. Includes build verification (clean compilation with no errors), internal reference validation (broken cross-reference detection), bibliography integrity (duplicate entries, missing fields, orphan references), and structural completeness (empty sections, stub detection, chapter balance).

*Phase 2: Terminology and style.*
Enforces consistency and readability. Includes medical terminology harmonization across all chapters (ensuring consistent usage of terms such as “post-exertional malaise” versus “PEM”), coherence and flow review, and detection of AI-generated writing patterns (excessive lists, mechanical sentence structures, unnatural transitions).

*Phase 3: Scientific rigor.*
The core audit layer. Verifies that substantive claims carry citations, that hypotheses and speculations use the correct environments, that falsifiable predictions accompany hypotheses, and that reasoning avoids circularity or completeness gaps. This phase also cross-validates the hypothesis registry (see _Cross-Document Consistency_ below) against chapter content.

*Phase 4: Domain-specific biology.*
Deep audits by specialized reviewers, each focusing on a single biological domain. Eight domain auditors cover: biological pathway accuracy (correct intermediaries, current nomenclature, gene-versus-protein distinction), immunology (cell subset precision, cytokine context, assay limitations), biochemistry and metabolomics (pathway stoichiometry, redox chemistry, mitochondrial specificity), neurology (brain region specificity, HPA axis nuance, blood-brain barrier considerations), microbiome (methodology distinction between 16S rRNA and shotgun sequencing, correlation-versus-causation framing, strain-level precision), biomarker claims (sensitivity and specificity reporting, reference ranges), epidemiology (case definition consistency, selection bias awareness, sex and gender stratification), and comorbidity (overlap condition delineation for hEDS, MCAS, POTS, fibromyalgia, and Long COVID).

Only domain auditors relevant to the content under review are activated, determined by keyword matching against the target files.

*Phase 5: Safety and patient impact.*
Critical safety review that runs on every audit pass. Three auditors check for: hypotheses incorrectly framed as clinical recommendations, missing contraindications and drug interaction warnings, dosing errors, off-label use transparency, withdrawal risk documentation, and patient-facing content safety (ensuring that activity recommendations do not risk triggering post-exertional malaise, that severe and very severe presentations are adequately represented, and that psychological framing does not perpetuate outdated psychogenic models of ME/CFS).

*Phase 6: Publication readiness.*
Final pass covering metadata completeness, licensing, AI disclosure, and—for Part V—mathematical verification of units, parameters, and notation consistency.

*Adversarial convergence.*
Beyond the comprehensive 20-category review, the manuscript also undergoes adversarial review-fix loops on individual sections. In this process, a reviewer agent identifies issues, the author applies corrections, and the reviewer re-audits the corrected text. This cycle repeats until convergence (zero findings) or a maximum of 12 rounds, ensuring that fixes do not introduce new problems.

== Author Critical Oversight
<sec:meth-author-oversight>

The automated review system described above is necessary but not sufficient. The most consequential quality control mechanism in this document is the author's continuous critical engagement with AI-generated content. This takes several forms.

*Directed questioning.*
The author systematically challenges AI outputs through targeted questions: _What is the actual sample size of this study? Has this finding been replicated independently? Is this mechanism established or hypothetical? Does this treatment recommendation follow from the cited evidence, or from mechanistic reasoning alone?_ These questions frequently reveal overstatements, missing qualifications, or conflation of related but distinct findings. AI systems tend to present information with uniform confidence; the author's role is to impose appropriate epistemic gradation.

*Redirection and correction.*
AI frequently requires correction when synthesizing research. Common failure modes include: overstating the certainty of preliminary findings, losing ME/CFS-specific context when drawing on general medical knowledge, conflating correlation with causation in observational studies, missing important caveats in study design (e.g., healthy control selection, diagnostic criteria heterogeneity), and presenting mechanistic hypotheses as though they were established pathophysiology. A substantial portion of the author's effort involves recognizing these patterns and redirecting toward more accurate representations.

*Conceptual integration.*
While AI excels at processing individual papers and generating well-structured text, the author provides the cross-disciplinary reasoning that connects findings across chapters. Identifying that a cardiovascular abnormality described in Chapter 10 may share a mechanistic basis with an immune finding in Chapter 7, or that a treatment protocol in Chapter 16 rests on a hypothesis that has since been weakened by new evidence in Chapter 22—these integrative judgments require a sustained mental model of the entire document that emerges from the author's continuous engagement over the course of writing.

*Lived experience as epistemic resource.*
The author's direct experience with ME/CFS provides a form of validation unavailable to external reviewers. When AI-generated text describes post-exertional malaise as “mild fatigue after exercise,” or characterizes cognitive dysfunction as “occasional forgetfulness,” the author can identify these as clinically inaccurate minimizations. Lived experience does not substitute for clinical expertise, but it provides a ground-truth check against descriptions that diverge from the phenomenology of the disease.

== Formal Modeling Pipeline
<sec:meth-modeling>

Part V of this document presents mathematical and computational models of ME/CFS pathophysiology. These models are constructed through a structured pipeline with explicit uncertainty quantification at every stage.

*Three-layer formalization.*
Each biological process amenable to formal modeling is represented at three levels of abstraction:

- *Causal directed acyclic graphs (DAGs)*: Represent causal relationships between biological variables with edge-level certainty annotations derived from the literature. DAGs make causal assumptions explicit and testable.
- *Event-driven process chains (EPCs)*: Capture the temporal sequence of biological events, including branching points, feedback loops, and probabilistic transitions. EPCs bridge the gap between qualitative causal understanding and quantitative dynamics.
- *Ordinary differential equations (ODEs)*: Quantitative models with parameters estimated from published data where available, and explicitly flagged as assumed where data are lacking. Parameter uncertainty is propagated through the model hierarchy.

*Cross-validation.*
A model auditor cross-validates consistency across the three layers: certainty values in the DAG must align with confidence levels in the EPC and parameter ranges in the ODE. An uncertainty analyst propagates certainty through the hierarchy and flags model predictions that exceed the confidence warranted by available evidence. An evidence mapper maintains a reverse index from citations to the specific DAG edges, EPC events, and ODE parameters they support, ensuring that every model component is traceable to its evidential basis.

== Cross-Document Consistency
<sec:meth-consistency>

Maintaining consistency across over 400+ pages requires systematic tracking mechanisms.

*Hypothesis registry.*
A cross-document registry tracks every hypothesis, speculation, prediction, and open question in the manuscript. When any such environment is added, modified, or removed in any chapter, the registry is updated to reflect the change. This prevents contradictions between chapters, ensures that predictions stated in one chapter are not contradicted by evidence presented in another, and provides a single reference point for the document's epistemic commitments.

*Terminology harmonization.*
Automated audits verify that medical terminology is used consistently across all chapters. Variant forms of key terms (e.g., “NK cells” versus “natural killer cells,” “OI” versus “orthostatic intolerance”) are detected and normalized.

*Revision tracking.*
Changes are tracked through the document's version-controlled changelog (Appendix), which records what changed in each version and why. Git history provides full traceability of every modification at the line level.

== Limitations of This Methodology
<sec:meth-limitations>

This quality assurance system, while systematic, has inherent limitations that the reader should bear in mind.

*AI reviewer limitations.*
Automated auditors operate on textual pattern matching and language model reasoning. They can detect structural issues (missing citations, environment misuse, terminology inconsistency) with high reliability, but their ability to evaluate the _correctness_ of biological claims is bounded by their training data. Novel findings, recently retracted papers, or subtle methodological flaws in cited studies may escape detection. The automated review system complements but does not replace expert human review.

*Single-author limitation.*
Despite the multi-layered review process, this document is produced by a single non-physician author. There is no independent human peer review prior to publication. The author has mitigated this through extensive self-review, adversarial automated auditing, and transparent epistemic classification, but single-author bias remains an inherent risk. The medical and scientific communities are invited to review this work critically.

*Evidence base limitations.*
ME/CFS research suffers from decades of underfunding, resulting in small sample sizes, limited replication, and heterogeneous patient populations across studies. The certainty classifications used in this document reflect these constraints honestly, but readers should recognize that even “high certainty” findings in ME/CFS research may not meet the evidentiary standards typical of better-funded medical fields.

*Evolving methodology.*
The quality assurance system described here has been developed iteratively alongside the document itself. Earlier chapters may not have undergone the same depth of review as later ones. The revision tracking system helps identify which content has been recently reviewed, but comprehensive re-auditing of the entire document is an ongoing process.

 The methodology described in this chapter aims to make the document's epistemic commitments, evidence standards, and quality processes fully transparent. Readers are encouraged to use this information when evaluating the reliability of specific claims throughout the manuscript.
