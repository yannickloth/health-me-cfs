#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 14: DecodeME / Biobank Data Explorer
// =============================================================================

= DecodeME / Biobank Data Explorer
<sw:decodeme-explorer>

#chapter-abstract[
The largest ME/CFS genomic dataset (DecodeME, ~25,000 participants) and other biobanks (SolveCFS, NIH intramural) are publicly available but inaccessible without programming skills. A tool that allows researchers and motivated patients to query them without code: "Show me the top 50 SNPs associated with ME/CFS severity, filtered for women aged 20–40 with viral onset." Democratizing access to the most important ME/CFS datasets.
]

== Motivation

ME/CFS research suffers from data fragmentation: DecodeME has genomic data on 25,000+ participants; SolveCFS has longitudinal clinical data; the NIH intramural study has deep phenotyping on 17 participants; various biobanks have stored samples. But these datasets require bioinformatics expertise to access and analyze — a barrier that excludes most clinicians, patient advocates, and early-career researchers.

The biobank data explorer lowers the barrier to zero. A web interface where users formulate queries in plain language or structured forms, the tool translates them to the appropriate database queries, executes them against public datasets, and returns results as interactive visualizations and downloadable tables.

== Core Functionality

=== Dataset Integration

The tool integrates the following publicly available datasets (with appropriate data use agreements):
- *DecodeME.* 25,000+ participants with genome-wide SNP data, ME/CFS diagnostic criteria, symptom questionnaires, demographics
- *UK Biobank ME/CFS subset.* Those meeting ME/CFS criteria within the 500,000-participant UK Biobank
- *SolveCFS Biobank.* Clinical data, longitudinal outcomes, stored samples
- *Open access ME/CFS transcriptomic datasets.* GEO datasets from published ME/CFS studies (PBMC RNA-seq, metabolomics)
- *NIH intramural study (Walitt 2024).* Deep phenotyping data (publicly released)

Each dataset is indexed by common variables: age, sex, ME/CFS status, duration, severity, trigger type, and available measurements.

=== Query Interface

Natural language query: "Show me genes associated with ME/CFS severity in women under 40 with viral onset" → the tool parses the query into structured filters, applies them to the appropriate dataset, and returns results.

Structured query builder (for researchers who want precision): dropdown menus for variable selection, filter conditions, and statistical tests. The builder generates the query transparently — the user sees the SQL or equivalent before executing.

=== Analysis Capabilities

- *GWAS summary statistics.* Manhattan plot of SNP associations with ME/CFS status or severity, with gene annotations and LD information
- *Gene set enrichment.* Given a set of SNPs or genes, test for enrichment in known pathways (KEGG, GO, Reactome)
- *Phenome-wide association.* Given a SNP or gene, show all phenotypes significantly associated with it in the dataset — what else does this variant affect?
- *Subgroup comparison.* For any two subgroups (e.g., viral-onset vs gradual-onset), compare means or distributions of any measured variable
- *Longitudinal analysis (SolveCFS).* Trajectory plots of clinical variables over time, stratified by treatment or subgroup
- *Power calculator.* Given an effect size and a subgroup definition, how many participants are needed? How many are available in the dataset?

=== Output

- Interactive plots (Manhattan, volcano, heatmap, trajectory) with hover tooltips identifying genes, effect sizes, and p-values
- Downloadable tables (CSV) of all results
- Shareable query URLs (reproducible — a researcher can share a link that reproduces their query)
- Citation-ready text: "N = 4,521 females with viral-onset ME/CFS, age 20–40, from DecodeME (2025)"

=== Patient-Facing Summary

For motivated patients: a simplified view that shows, for a given gene or pathway, what the evidence says in plain language. "The TRPM3 gene is associated with ME/CFS risk in multiple GWAS studies. The association is strongest in patients with viral onset (OR = 1.32, p = 3 × 10⁻⁸). This supports the TRPM3 channelopathy hypothesis discussed in Ch16 of the parent paper. [Link to detailed view]"

== Relationship to Existing Content

- Ch12 (Genetics/Epigenetics, parent paper): the genetic evidence the tool makes queryable
- Ch38 (Proposed Studies, parent paper): the research proposals that could be informed by biobank exploration
- the Identical Twin Cohort Matcher (below) (Identical Twin Cohort Matcher): the biobank data could be used to improve matching features
- the Mechanism Knowledge Graph (below) (Mechanism Knowledge Graph): the knowledge graph links SNP results to the mechanisms discussed in the paper

== Technical Architecture

*Backend.* A thin API layer over the public dataset APIs (DecodeME, UK Biobank, GEO). Cached query results to avoid redundant computation. Query translation: natural language → structured query via a fine-tuned LLM or rule-based parser.

*Frontend.* Interactive data visualization (Plotly.js or Observable-based). The emphasis is on exploratory analysis — the user should be able to iterate quickly on queries.

*Deployment.* A hosted web application. The computational load is moderate (GWAS annotation, enrichment tests) and can run on standard cloud infrastructure.

== Limitations

#limitation[
*Data access restrictions.* Some datasets (e.g., UK Biobank individual-level data) require approved access applications. The tool can provide summary statistics from these datasets but not individual-level queries without the user's own approved access.

*Statistical literacy requirement.* Even with a no-code interface, interpreting GWAS results (p-values, multiple testing correction, confounding by population stratification) requires statistical literacy. The tool must include educational content alongside results.

*Dataset harmonization.* Different datasets use different variable definitions, diagnostic criteria, and measurement scales. Harmonizing them for cross-dataset queries is a significant engineering challenge and may produce misleading comparisons.

*Overinterpretation risk.* Patients and non-specialist researchers may overinterpret exploratory findings. The tool must prominently display: "These results are exploratory and hypothesis-generating. They do not constitute clinical evidence. Consult a genetic counselor or biostatistician before acting on these findings."
]

== Consequence

#key-point[
The DecodeME / Biobank Data Explorer democratizes access to the most valuable datasets in ME/CFS research. A researcher in a small clinic without bioinformatics support can ask the same questions as a computational biologist at a major university. Patients can see what the evidence says about their genetic variants — with appropriate context about what association studies can and cannot tell them. It removes the programming barrier that currently limits ME/CFS data analysis to a small circle of specialists.
]
