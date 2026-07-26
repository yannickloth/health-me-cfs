#import "../../../../shared/environments.typ": *

=== Network Models

Biological systems can be represented as networks where nodes are molecular species, genes, or cell types, and edges are interactions (activation, inhibition, binding). Network analysis provides structural insights---identifying hub nodes, feedback loops, and modular organization---without requiring kinetic parameters. Cytokine networks in ME/CFS (Chapter~@ch:immune-system-models) have been characterized using this approach, with studies identifying distinct cytokine signatures that correlate with disease duration @Hornig2015 @Montoya2017.

Formally, a biological network is a directed graph $G = (V, E, w)$ where $V$ is the set of nodes, $E subset.eq V times V$ is the set of directed edges, and $w: E -> RR$ assigns signed weights (positive for activation, negative for inhibition). Key network metrics include:

- *Degree centrality*: the number of edges incident on a node, identifying highly connected "hub" molecules
- *Betweenness centrality*: the fraction of shortest paths passing through a node, identifying bottleneck species
- *Modularity*: the degree to which the network decomposes into densely connected subnetworks, corresponding to functional modules (e.g., innate immunity, adaptive immunity)

