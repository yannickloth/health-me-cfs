# TikZ Diagram Templates

Reusable templates for common diagram types. These templates follow spatial awareness rules and compile cleanly.

## Process Flow Diagram

Linear sequence with optional decision points.

```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta,shapes.geometric}

\begin{document}
\begin{tikzpicture}[
  node distance=2.5cm and 3cm,
  >=Stealth,
  process/.style={
    rectangle,
    draw,
    thick,
    minimum width=2.5cm,
    minimum height=1cm,
    inner sep=0.2cm,
    align=center,
    fill=blue!10
  },
  decision/.style={
    diamond,
    draw,
    thick,
    aspect=2,
    minimum width=2.5cm,
    minimum height=1.5cm,
    inner sep=0.1cm,
    align=center,
    fill=yellow!20
  },
  terminal/.style={
    rectangle,
    draw,
    thick,
    rounded corners=0.3cm,
    minimum width=2.5cm,
    minimum height=1cm,
    inner sep=0.2cm,
    align=center,
    fill=green!10
  },
  arrow/.style={->, thick}
]

% Main flow
\node[terminal] (start) {Start};
\node[process, below=of start] (step1) {Process 1};
\node[decision, below=of step1] (decision) {Decision?};
\node[process, below=of decision] (step2) {Process 2};
\node[terminal, below=of step2] (end) {End};

% Alternative path
\node[process, right=of decision] (alt) {Alternative};

% Arrows
\draw[arrow] (start) -- (step1);
\draw[arrow] (step1) -- (decision);
\draw[arrow] (decision) -- node[right] {Yes} (step2);
\draw[arrow] (decision) -- node[above] {No} (alt);
\draw[arrow] (alt) |- (end);
\draw[arrow] (step2) -- (end);

\end{tikzpicture}
\end{document}
```

**Key features**:
- 2.5cm vertical spacing (minimum)
- 3cm horizontal spacing for branches
- Color-coded node types
- Clear arrow labels for decisions

---

## Causal Diagram (DAG)

Directed acyclic graph showing causal relationships.

```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta}

\begin{document}
\begin{tikzpicture}[
  node distance=3cm and 4cm,
  >=Stealth,
  variable/.style={
    circle,
    draw,
    thick,
    minimum size=1.8cm,
    inner sep=0.1cm,
    align=center,
    fill=gray!15
  },
  cause/.style={->, thick, color=blue!70}
]

% Layer 1 (root causes)
\node[variable] (x1) {Variable\\X1};
\node[variable, right=of x1] (x2) {Variable\\X2};

% Layer 2 (mediators)
\node[variable, below left=2.5cm and 2cm of x1] (m1) {Mediator\\M1};
\node[variable, below right=2.5cm and 2cm of x2] (m2) {Mediator\\M2};

% Layer 3 (outcome)
\node[variable, below=3cm of $(m1)!0.5!(m2)$] (y) {Outcome\\Y};

% Causal arrows
\draw[cause] (x1) -- (m1);
\draw[cause] (x1) -- (m2);
\draw[cause] (x2) -- (m2);
\draw[cause] (m1) -- (y);
\draw[cause] (m2) -- (y);
\draw[cause] (x1) to[bend left=20] (y);

\end{tikzpicture}
\end{document}
```

**Key features**:
- 3cm vertical layers, 4cm horizontal spacing
- Circular nodes for variables
- Calculated positioning for balanced layout
- Bend for direct paths that skip layers

---

## Hierarchical Tree

Organizational structure or taxonomy.

```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta}

\begin{document}
\begin{tikzpicture}[
  node distance=2.5cm and 2.5cm,
  >=Stealth,
  level1/.style={
    rectangle,
    draw,
    thick,
    minimum width=3cm,
    minimum height=1cm,
    align=center,
    fill=red!20
  },
  level2/.style={
    rectangle,
    draw,
    thick,
    minimum width=2.5cm,
    minimum height=0.8cm,
    align=center,
    fill=orange!20
  },
  level3/.style={
    rectangle,
    draw,
    minimum width=2cm,
    minimum height=0.7cm,
    align=center,
    fill=yellow!20
  },
  link/.style={->, thick}
]

% Level 1 (root)
\node[level1] (root) {Root Node};

% Level 2 (children)
\node[level2, below left=of root] (child1) {Child 1};
\node[level2, below=of root] (child2) {Child 2};
\node[level2, below right=of root] (child3) {Child 3};

% Level 3 (grandchildren of child1)
\node[level3, below left=of child1] (gc1) {GC 1};
\node[level3, below right=of child1] (gc2) {GC 2};

% Level 3 (grandchildren of child2)
\node[level3, below left=of child2] (gc3) {GC 3};
\node[level3, below right=of child2] (gc4) {GC 4};

% Links
\draw[link] (root) -- (child1);
\draw[link] (root) -- (child2);
\draw[link] (root) -- (child3);
\draw[link] (child1) -- (gc1);
\draw[link] (child1) -- (gc2);
\draw[link] (child2) -- (gc3);
\draw[link] (child2) -- (gc4);

\end{tikzpicture}
\end{document}
```

**Key features**:
- 2.5cm spacing between levels
- Color gradient by level
- Node size decreases by level
- Uses `below left`, `below right` for tree structure

---

## System Architecture

Components with bidirectional communication.

```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta,fit,backgrounds}

\begin{document}
\begin{tikzpicture}[
  node distance=3cm and 3.5cm,
  >=Stealth,
  component/.style={
    rectangle,
    draw,
    thick,
    minimum width=2.5cm,
    minimum height=1.5cm,
    align=center,
    fill=blue!15
  },
  datastore/.style={
    cylinder,
    draw,
    thick,
    shape border rotate=90,
    minimum width=2cm,
    minimum height=1.2cm,
    align=center,
    fill=green!15
  },
  external/.style={
    rectangle,
    draw,
    thick,
    dashed,
    minimum width=2.5cm,
    minimum height=1.5cm,
    align=center,
    fill=gray!10
  },
  connection/.style={<->, thick},
  subsystem/.style={
    draw,
    dashed,
    thick,
    rounded corners,
    fill=yellow!5,
    inner sep=0.4cm
  }
]

% Components
\node[component] (frontend) {Frontend\\Service};
\node[component, right=of frontend] (backend) {Backend\\API};
\node[datastore, below=2.5cm of backend] (db) {Database};
\node[component, right=of backend] (auth) {Auth\\Service};
\node[external, above=2.5cm of backend] (external) {External\\API};

% Subsystem grouping
\begin{pgfonlayer}{background}
  \node[subsystem, fit=(backend) (db) (auth)] (core) {};
  \node[above=0.1cm of core.north] {Core System};
\end{pgfonlayer}

% Connections
\draw[connection] (frontend) -- (backend);
\draw[connection] (backend) -- (db);
\draw[connection] (backend) -- (auth);
\draw[connection] (backend) -- (external);

\end{tikzpicture}
\end{document}
```

**Key features**:
- 3cm spacing, 3.5cm for horizontal layout
- Shape variety (rectangle, cylinder, dashed)
- Background layer for subsystem grouping
- Bidirectional arrows for communication

---

## Timeline

Chronological sequence of events.

```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta,calc}

\begin{document}
\begin{tikzpicture}[
  >=Stealth,
  event/.style={
    rectangle,
    draw,
    thick,
    minimum width=2cm,
    minimum height=1cm,
    align=center,
    fill=blue!15
  },
  milestone/.style={
    circle,
    draw,
    thick,
    minimum size=0.5cm,
    fill=red!50
  },
  timeline/.style={->, very thick, color=gray}
]

% Timeline axis
\draw[timeline] (0,0) -- (14,0);

% Events (evenly spaced)
\foreach \x/\year/\label in {1/2020/Event A, 4/2021/Event B, 7/2022/Event C, 10/2023/Event D, 13/2024/Event E} {
  \node[milestone] at (\x,0) {};
  \node[event, above=1.5cm of {\x,0}] (e\x) {\label};
  \draw[->, thick] (e\x) -- (\x,0.3);
  \node[below=0.3cm of {\x,0}] {\year};
}

\end{tikzpicture}
\end{document}
```

**Key features**:
- Horizontal axis with arrow
- Milestones as circles on axis
- Events above axis with connecting arrows
- Calculated spacing using `\foreach`

---

## Network Diagram

Nodes with multiple connections.

```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta,calc}

\begin{document}
\begin{tikzpicture}[
  node distance=3.5cm,
  >=Stealth,
  netnode/.style={
    circle,
    draw,
    thick,
    minimum size=1.5cm,
    inner sep=0.1cm,
    align=center,
    fill=purple!15
  },
  connection/.style={-, thick, color=gray!70}
]

% Central hub
\node[netnode, fill=red!20] (hub) {Hub};

% Surrounding nodes (calculated positions)
\foreach \angle/\label in {0/Node A, 60/Node B, 120/Node C, 180/Node D, 240/Node E, 300/Node F} {
  \node[netnode] (\label) at (\angle:3.5cm) {\label};
  \draw[connection] (hub) -- (\label);
}

% Peer connections (optional)
\draw[connection, dashed] (Node A) to[bend left=15] (Node B);
\draw[connection, dashed] (Node C) to[bend left=15] (Node D);
\draw[connection, dashed] (Node E) to[bend left=15] (Node F);

\end{tikzpicture}
\end{document}
```

**Key features**:
- Polar coordinate positioning for radial layout
- 3.5cm radius for clear spacing
- Solid lines for hub connections
- Dashed lines for peer connections

---

## Matrix Layout

Grid of related elements.

```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta,matrix}

\begin{document}
\begin{tikzpicture}[
  >=Stealth,
  cell/.style={
    rectangle,
    draw,
    thick,
    minimum width=2cm,
    minimum height=1.2cm,
    align=center,
    fill=blue!10
  }
]

% Matrix of nodes
\matrix[
  row sep=2.5cm,
  column sep=3cm
] {
  \node[cell] (a11) {Cell 1,1}; &
  \node[cell] (a12) {Cell 1,2}; &
  \node[cell] (a13) {Cell 1,3}; \\

  \node[cell] (a21) {Cell 2,1}; &
  \node[cell] (a22) {Cell 2,2}; &
  \node[cell] (a23) {Cell 2,3}; \\

  \node[cell] (a31) {Cell 3,1}; &
  \node[cell] (a32) {Cell 3,2}; &
  \node[cell] (a33) {Cell 3,3}; \\
};

% Example connections
\draw[->, thick] (a11) -- (a22);
\draw[->, thick] (a22) -- (a33);
\draw[->, thick] (a12) -- (a23);

\end{tikzpicture}
\end{document}
```

**Key features**:
- Matrix environment for automatic grid layout
- 2.5cm row separation, 3cm column separation
- Automatic node naming (easy to reference)
- Flexible for tables, grids, or structured diagrams

---

## Layered Architecture

Stacked layers with dependencies.

```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta,fit,backgrounds}

\begin{document}
\begin{tikzpicture}[
  node distance=2.5cm,
  >=Stealth,
  component/.style={
    rectangle,
    draw,
    thick,
    minimum width=2.5cm,
    minimum height=1cm,
    align=center,
    fill=blue!15
  },
  layer/.style={
    rectangle,
    draw,
    thick,
    fill=gray!10,
    inner sep=0.4cm
  }
]

% Layer 1 - Presentation
\node[component] (ui1) {UI 1};
\node[component, right=3cm of ui1] (ui2) {UI 2};
\node[component, right=3cm of ui2] (ui3) {UI 3};

\begin{pgfonlayer}{background}
  \node[layer, fit=(ui1) (ui3)] (pres) {};
  \node[above left=0cm of pres.north west] {Presentation Layer};
\end{pgfonlayer}

% Layer 2 - Business Logic
\node[component, below=of ui1] (bl1) {Logic 1};
\node[component, below=of ui2] (bl2) {Logic 2};

\begin{pgfonlayer}{background}
  \node[layer, fit=(bl1) (bl2)] (business) {};
  \node[above left=0cm of business.north west] {Business Layer};
\end{pgfonlayer}

% Layer 3 - Data Access
\node[component, below=of $(bl1)!0.5!(bl2)$] (dal) {Data Access};

\begin{pgfonlayer}{background}
  \node[layer, fit=(dal)] (data) {};
  \node[above left=0cm of data.north west] {Data Layer};
\end{pgfonlayer}

% Dependencies
\draw[->, thick] (ui1) -- (bl1);
\draw[->, thick] (ui2) -- (bl2);
\draw[->, thick] (ui3) -- (bl2);
\draw[->, thick] (bl1) -- (dal);
\draw[->, thick] (bl2) -- (dal);

\end{tikzpicture}
\end{document}
```

**Key features**:
- 2.5cm vertical spacing between layers
- Background rectangles for layer grouping
- Calculated positioning for centered elements
- Clear dependency arrows

---

## Usage Tips

### Choosing a Template

1. **Process Flow**: Sequential steps, branching logic, workflows
2. **Causal Diagram**: Cause-effect relationships, DAGs, influence diagrams
3. **Hierarchical Tree**: Taxonomies, org charts, classification
4. **System Architecture**: Software components, microservices, infrastructure
5. **Timeline**: Historical events, project schedules, chronology
6. **Network Diagram**: Interconnected systems, peer networks, graph structures
7. **Matrix Layout**: Comparison tables, grid relationships, structured data
8. **Layered Architecture**: Software layers, protocol stacks, abstraction levels

### Customization

All templates follow spacing guidelines but can be adjusted:
- Increase `node distance` for more space
- Adjust `minimum width/height` for different content lengths
- Change colors with `fill=color!percentage`
- Add more node styles as needed

### Compilation

All templates use `standalone` document class:
- Compile with `pdflatex template.tex`
- Output is cropped to diagram size
- Can be included in larger documents with `\input{}`

### Best Practices

1. **Always start from a template** - faster and more reliable
2. **Test compile early** - catch errors before adding complexity
3. **Use comments** - label sections for easier modification
4. **Keep consistent spacing** - use global `node distance` when possible
5. **Run through tikz-validator** - automatic quality checking