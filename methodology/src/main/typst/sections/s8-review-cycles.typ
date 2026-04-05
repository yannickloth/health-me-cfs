= Review Cycle Semantics

== The Convergence Criterion

The quality guarantee of the document rests on a specific convergence criterion: *a section is only accepted after two consecutive review rounds produce zero findings.* This is not a pass/fail threshold—it is a stability criterion. A single clean round is insufficient because corrections can introduce new issues; two consecutive clean rounds provide confidence that the section is stable.

Formally, each review workflow maintains a consecutive-clean counter:

- *Increment:* The counter increments by one each round that produces zero findings.
- *Reset:* Any correction, however small, resets the counter to zero. The two-clean requirement then restarts.
- *Convergence:* The section is accepted when the consecutive-clean counter reaches two.
- *Escalation:* If the counter has not reached two after 12 rounds, remaining findings are escalated to the human author for judgment.

The 12-round maximum exists because some findings are genuinely unresolvable by the review agent without human interpretive input. This is not a failure condition; it is the system correctly routing a problem that requires human judgment.

== Review Workflows

Several distinct review workflows invoke the convergence criterion at different scopes:

*Section review* (`/review-typst`) applies a sequence of agents to a single section: build verification → formatting fixes → content consistency → style naturalisation → mathematical verification (when the section contains formal content) → build re-verification. The final build re-verification guards against regressions introduced by earlier corrections.

*Chapter review* (`/review-chapter`) runs all 20 audit categories sequentially on a single chapter, producing a consolidated findings report. The author uses this report to decide which findings to address and in which order.

*Biomedical review* (`/review-biomedical`) runs all domain-specific and safety auditors against a file or glob scope. Eight domain auditors, three safety auditors, and the falsifiability auditor operate as parallel independent passes; their findings are aggregated into a single report.

*Adversarial review* (`/review-adversarial`) runs all six adversarial persona agents sequentially. The aggregate report identifies cross-persona convergence points—claims attacked by three or more distinct personas—as the document's highest-priority vulnerabilities.

*Convergence loop* (`/review-convergence`) is the general-purpose implementation of the two-consecutive-clean criterion. It can be applied to any file or glob scope. This skill is the mechanisation of the convergence criterion described above.

== Checkpointing

Review workflows that span multiple rounds write continuation checkpoints every three rounds to a designated checkpoint file. Checkpoints record the current round number, cumulative findings by category, remaining known issues, and exact next steps for resumption. This allows long-running review sessions to survive context window limitations without losing state.
