#import "../../../shared/environments.typ": *

== Existing Research Landscape and Data Resources
<sec:existing-research-landscape>

*Purpose.* Before proposing new infrastructure, it helps to map what already exists. This section documents the current ME/CFS research landscape and the principal open data resources, so the proposals in the rest of this chapter can build on them rather than duplicate them. Curated resource links and access notes are collected in Appendix @app:resources.

=== The ME/CFS Research Register
<sec:research-register>

The ME/CFS Research Register (MRR, #link("https://mrr.mecfs-research.org/en/mrr")) is a curated, publicly browseable register of ME/CFS research, maintained by the ME/CFS Research Foundation (Hamburg). As of 2026 it catalogues 149 research projects (from 2019 onward) together with research networks, publications, scientific events, research types, research areas, working groups, people, and organisations. Each project entry carries its status (ongoing or completed), country, principal investigator, organisations, research period, research types, and research areas, with links to the people and publications connected to the project. The current country scope is Germany, Austria, Switzerland, the Netherlands, Norway, and Iceland, with more countries planned.

The register is a beta product: the data are carefully curated and regularly updated but provided without guarantees, and gaps can be reported through a public feedback form. Because the backend is a SeatTable database, the entries are structured and exportable — which makes the register double as a machine-readable map of who is studying what, and as a scoping tool for a research agenda. It does not, by itself, publish biosamples or participant-level data; it indexes research activity.

=== Registries and Biobanks
<sec:research-registries-biobanks>

The register above maps *research activity*; the resources below provide *participant data and biosamples*. They differ in scope (national or international), in whether they enroll patients directly, and in how researchers obtain access.

#table(
  columns: (1.3fr, 1fr, 2.2fr),
  [*Resource*], [*Type*], [*Scope and access*],
  [ME/CFS Research Register], [Research landscape], [149 projects plus networks, publications, people, organisations; Germany, Austria, Switzerland, Netherlands, Norway, Iceland; open and exportable],
  [German ME/CFS Register and Biobank], [Register + biobank], [Bicentric (MCFC/TUM Munich and Charité Berlin); data and biosamples from patients meeting IOM/CCC criteria; access by research collaboration, not self-service],
  [UK ME/CFS Biobank], [Biobank], [London School of Hygiene and Tropical Medicine; partly funded by the ME Association],
  [Netherlands ME/CFS Cohort and Biobank (NMCB)], [Cohort + biobank], [National Dutch consortium of research institutes, patient organisations, and clinical centres],
  [Austrian ME/CFS Biobank], [Biobank], [Medical University of Vienna (WE&ME Foundation); harmonised with the UK, Dutch, and German biobanks],
  [You+ME Registry and Biobank], [Patient registry + biobank], [Solve M.E.; patient-reported data and biospecimens; international participation],
  [DecodeME], [Genetics], [UK study, more than 15,000 participants; the largest ME/CFS genetic study to date],
)

=== Research Funding
<sec:research-funding>

The ME/CFS Research Foundation (Hamburg; #link("https://mecfs-research.org/")) is a private non-profit that has funded biomedical ME/CFS and Long COVID research since 2022, including the German register and biobank, a paediatric severe-ME/CFS model ward in Munich, and the MCFC research laboratory. It publishes a funding strategy and works with an international scientific advisory board. Because public funding for ME/CFS research remains limited relative to disease burden, private foundations of this kind are currently a material part of the research infrastructure.

*Falsifiable prediction.* If the register's taxonomy is used to scope a research agenda, the distribution of projects across research areas (for example immune, nervous-system, cardiovascular, metabolic) should reveal under-studied domains that are actionable for new proposals — a testable claim about research allocation rather than about biology.

*Limitations.* The register is beta and curated by one foundation; the project count and coverage reflect voluntary reporting and may under-count unpublished or non-Germanic-region work. The biobanks differ in diagnostic criteria, consent terms, and harmonisation status, so cross-biobank pooling is not automatic. Access terms were current as of 2026 and are set by the operating institutions, not by this document.

*Consequence:* it gives researchers and funders a single map of who is already studying what, and which biosample resources exist — so new work can avoid duplication and can be matched to an existing cohort instead of building from zero.

*Cross-references:* @app:resources (curated links), @ch:research-infrastructure.
