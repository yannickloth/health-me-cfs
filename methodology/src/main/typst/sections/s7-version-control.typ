= Version Control and Traceability

== Git as the Audit Trail

The document is maintained in a git repository. Every change—whether introduced by a writing agent, a correction from a review agent, or a direct edit—is committed with a structured message that records what changed and why. Git history provides complete traceability of every modification at the line level, including which agent introduced a change and in response to what instruction.

The commit workflow is handled by a dedicated `commit-writer` agent (Sonnet-tier) that groups related changes into logically coherent commits, writes descriptive messages focused on motivation rather than mechanics, and tags commits with the session context that produced them. The convention that commit messages must explain _why_ a change was made, not merely _what_ was changed, is enforced as a review criterion. A commit message that says "update chapter 18 treatment section" without stating the motivation—what finding, what audit result, what author decision prompted the update—provides no audit value.

This traceability is particularly important for a document that evolves over months. When reviewing a claim in chapter 12, it is often necessary to understand not just what the claim says now but why it was modified three sessions ago. The git history, when committed with motivational messages, provides this context without requiring the author to maintain separate notes.

== Changelog Convention

A human-readable changelog is maintained in the document itself. By convention, every changelog entry must include a "Motivated by:" line explaining why the change was made, with citations to the sources or review findings that prompted it. This convention was established after a review identified that changelog entries describing _what_ changed without explaining _why_ provided insufficient context for evaluating whether a correction was appropriate. The citation link between changelog entries and their motivating sources is enforced as a review check.

The changelog serves a function complementary to the git history. Git history captures line-level changes with session context; the changelog captures the author's interpretation of why those changes matter—the editorial reasoning, not just the mechanical fact of modification. Together they provide two levels of traceability: the operational record and the interpretive record.

== Scrape Registry

Web content integrated into the document—research summaries, patient advocacy literature, clinical guidelines from online sources—is tracked in a scrape registry. Before processing any URL, the system checks whether that source has already been integrated; if so, it checks whether the source has been updated since the last scrape. This prevents redundant processing of the same content across sessions and provides an audit trail of which web sources contributed to which chapters.

The registry records, for each URL: the source domain, the date it was scraped, the date its content was integrated into the document, and the target chapter or chapters. URLs with no integration date are pending; URLs with a scrape date older than the source's publication date are flagged for re-scraping. The registry is checked mechanically at the start of any literature integration operation; no URL is processed twice unless the source shows a newer publication date than the scrape date on record.

This is a practical discipline with a concrete benefit: web sources are fetched, parsed, summarised, and stored in bibliography entries at non-trivial compute cost. Without a registry, the same source is liable to be re-discovered and re-processed in each new session that touches the same topic. Across a multi-month project, the cumulative cost of redundant fetches is significant; the registry eliminates it.

== Hypothesis Registry

A cross-document hypothesis registry tracks every `hypothesis`, `speculation`, `prediction`, and `open_question` environment across all chapters. When any such environment is added, modified, or removed, the registry is updated. The registry serves two functions: it prevents contradictions between chapters—a prediction in chapter 14 cannot contradict a finding stated as established in chapter 7—and it provides a single location for evaluating the document's aggregate epistemic commitments.

The registry is the mechanism that makes the epistemic infrastructure described in the following section tractable at document scale. Without it, maintaining consistency across 400 pages of interleaved hypotheses, speculations, and predictions would require re-reading the entire document whenever a new epistemic environment is added. With it, consistency can be checked against a structured index.
