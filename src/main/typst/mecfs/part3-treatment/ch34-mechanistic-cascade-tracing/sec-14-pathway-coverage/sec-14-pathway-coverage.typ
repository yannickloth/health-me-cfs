#import "../../../shared/environments.typ": *

== Pathway Coverage Status

This table records the coverage of biological pathways across the paper, by
pathway family. It is generated at build time from the internal pathway
registry, which references the Reactome canonical catalog (CC0; pathway
names/IDs referenced, not copied). Reactome itself catalogs over 2,800 human
pathways at reaction granularity; this table works at the coarser mechanism
level the paper reasons at.

*Coverage legend:* *Mapped* = integrated with a dedicated environment/hypothesis/
cascade and ≥2 qualifying sources. *Partial* = engaged but thin or indirect.
*In paper* = minor/prose mention only. *Evidence-empty* = searched, no qualifying
result. *Not assessed* = not yet integrated or searched.

*Important.* A *Not assessed* row is an open target, not a claim that the pathway
is absent from ME/CFS. *Evidence-empty* means a search ran and found nothing
qualifying — the two are not the same and should not be conflated.

#include "pathway-status-table.typ"

The full per-pathway detail (Reactome identifiers, chapter references, and the
evidence-status of each individual pathway) is maintained in the internal
registry. When a pathway is integrated, its row here and in the registry is
updated so the coverage map stays honest.
