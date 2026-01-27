# TikZ Illustration Pipeline

**Purpose**: Generate high-quality, validated TikZ diagrams with automatic spatial correction

**Use when**: User requests a diagram, flowchart, or illustration to be created in TikZ

## Workflow Overview

```
User Request
    ↓
tikz-illustrator (Opus) - Generate diagram with spatial awareness
    ↓
tikz-validator (Haiku) - Compile and validate spacing
    ↓
    ├─→ PASS: Deliver to user
    └─→ FAIL: Return specific feedback
              ↓
              tikz-illustrator - Targeted corrections
              ↓
              tikz-validator - Re-validate
              (iterate up to 3 times)
              ↓
              ├─→ PASS: Deliver
              └─→ FAIL (3rd iteration): Escalate to user with diagnostics
```

## Phase 1: Requirements Gathering

**Input**: User description of desired diagram

**Extract**:
- Diagram type (process flow, causal diagram, hierarchy, system architecture, timeline, etc.)
- Number of elements (nodes, arrows, labels)
- Content for each element
- Relationships between elements
- Desired output location (standalone file or inline in document)

**Example prompts**:
- "Create a process flow showing: A → B → C with decision point at B"
- "Draw a causal diagram with nodes for X, Y, Z and directed edges X→Y, Y→Z, X→Z"
- "Make a timeline of events: Event1 (2020), Event2 (2021), Event3 (2022)"

## Phase 2: Diagram Generation

**Agent**: `tikz-illustrator` (Opus model for spatial reasoning)

**Process**:
1. Choose appropriate diagram type template
2. Plan layout (node positions, arrow routing)
3. Calculate distances to ensure minimum clearances:
   - Horizontal: 2.5cm minimum
   - Vertical: 2.0cm minimum
   - Add 20% margin for safety
4. Generate complete LaTeX document with:
   - Necessary TikZ libraries
   - Style definitions
   - Nodes with relative positioning
   - Arrows with proper routing
5. Self-review against spatial checklist
6. Write to temporary file (e.g., `diagram-temp.tex`)

**Output**: Compilable `.tex` file

## Phase 3: Validation

**Agent**: `tikz-validator` (Haiku model for fast checking)

**Process**:
1. Compile with `pdflatex`
   - Check exit code for errors
   - Parse log for warnings
2. Spatial analysis
   - Extract node positioning commands
   - Verify minimum distances
   - Flag overlaps or insufficient spacing
3. Arrow validation
   - Check for node intersections (heuristic)
   - Verify arrow clarity
4. Generate structured feedback

**Outputs**:
- **PASS**: Diagram meets all requirements → Deliver to user
- **FAIL**: Violations detected → Return feedback to illustrator
- **WARNING**: Minor issues → Deliver with notes

## Phase 4: Iterative Correction (if FAIL)

**Agent**: `tikz-illustrator` receives feedback

**Process**:
1. Parse validation feedback
   - Extract specific violations (node names, measurements)
   - Identify root causes
2. Calculate corrections
   - How much to adjust spacing?
   - Which nodes need repositioning?
3. Apply targeted fixes
   - Modify specific positioning commands
   - Don't redesign entire layout
4. Re-submit to validator

**Iteration limit**: 3 attempts

**Escalation**: After 3 failed iterations, report to user:
- Show validation feedback
- Include current diagram code
- Suggest manual review or simplification

## Phase 5: Delivery

**Final outputs**:
1. **Standalone file**: Complete `.tex` document
   - Can be compiled independently
   - Includes all necessary packages
   - Uses `standalone` document class
2. **Inline code** (optional): TikZ code block
   - For embedding in existing documents
   - Assumes packages already loaded
3. **Compiled PDF**: Preview of final result
4. **Validation report**: Confirmation of quality checks

**File naming convention**:
- `diagram-[description]-[date].tex`
- Example: `diagram-process-flow-2026-01-27.tex`

## Diagram Type Templates

### Process Flow
```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta,shapes.geometric}
\begin{document}
\begin{tikzpicture}[
  node distance=2.5cm and 3cm,
  >=Stealth,
  process/.style={rectangle, draw, minimum width=2.5cm, minimum height=1cm, align=center},
  decision/.style={diamond, draw, aspect=2, minimum width=2.5cm, align=center}
]
% Nodes and arrows
\end{tikzpicture}
\end{document}
```

### Causal Diagram (DAG)
```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta}
\begin{document}
\begin{tikzpicture}[
  node distance=3cm and 4cm,
  >=Stealth,
  variable/.style={circle, draw, minimum size=1.5cm, align=center}
]
% Nodes and directed edges
\end{tikzpicture}
\end{document}
```

### Hierarchical Tree
```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta}
\begin{document}
\begin{tikzpicture}[
  node distance=2.5cm and 2cm,
  level/.style={rectangle, draw, minimum width=2cm, minimum height=0.8cm, align=center}
]
% Parent and child nodes
\end{tikzpicture}
\end{document}
```

### System Architecture
```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta,fit,backgrounds}
\begin{document}
\begin{tikzpicture}[
  node distance=2.5cm and 3cm,
  component/.style={rectangle, draw, thick, minimum width=3cm, minimum height=1.5cm, align=center},
  subsystem/.style={draw, dashed, fill=gray!10, inner sep=0.3cm}
]
% Components and connections
\end{tikzpicture}
\end{document}
```

### Timeline
```latex
\documentclass[tikz,border=10pt]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning,arrows.meta}
\begin{document}
\begin{tikzpicture}[
  event/.style={rectangle, draw, minimum width=2cm, minimum height=0.8cm, align=center}
]
% Horizontal timeline with events
\end{tikzpicture}
\end{document}
```

## Quality Assurance Checklist

Before delivering to user, verify:

- [ ] Compiles without errors
- [ ] No warnings (or warnings documented)
- [ ] All nodes properly spaced (2.5cm horizontal, 2.0cm vertical minimum)
- [ ] Arrows don't intersect unrelated nodes
- [ ] Text fits within node boundaries
- [ ] Consistent visual style
- [ ] Clean, commented code
- [ ] Validation report shows PASS status

## Error Handling

### Common Issues and Solutions

**Issue**: Nodes overlap despite using relative positioning
**Solution**: Increase spacing in positioning commands; account for node dimensions

**Issue**: Arrows cross unrelated nodes
**Solution**: Add waypoints `-- ++(x,y) |-`, use `bend left/right`, or redesign layout

**Issue**: Text overflows node
**Solution**: Increase `text width`, reduce font size, or abbreviate content

**Issue**: Compilation timeout
**Solution**: Simplify diagram; check for infinite loops in TikZ code

**Issue**: Inconsistent spacing
**Solution**: Use global `node distance` setting; apply consistent styles

## Usage Examples

### Example 1: Simple Process Flow
```
User: "Create a process flow: Start → Process → Decision → End"

[tikz-illustrator generates diagram]
[tikz-validator checks: PASS]

Output: diagram-process-flow-2026-01-27.tex
```

### Example 2: Complex Causal Network
```
User: "Draw a causal diagram with 10 nodes and 15 edges showing relationships"

[tikz-illustrator generates diagram]
[tikz-validator checks: FAIL - nodes A and B too close]
[tikz-illustrator corrects spacing]
[tikz-validator checks: PASS]

Output: diagram-causal-network-2026-01-27.tex
```

### Example 3: Hierarchical Organization
```
User: "Create an org chart with 3 levels: 1 CEO, 3 managers, 9 employees"

[tikz-illustrator generates diagram]
[tikz-validator checks: WARNING - slightly tight spacing at level 3]
[Deliver with note to user about warning]

Output: diagram-org-chart-2026-01-27.tex
```

## Performance Targets

- **Simple diagrams** (< 5 nodes): < 30 seconds total
- **Medium diagrams** (5-15 nodes): < 60 seconds total
- **Complex diagrams** (> 15 nodes): < 120 seconds total

**Breakdown**:
- Generation: 15-60 seconds (Opus)
- Validation: 5-10 seconds (Haiku)
- Iteration (if needed): +30 seconds per cycle

## Integration with Main Document

When diagram is for inclusion in existing document:

1. **Standalone version**: Provide as separate file
   - User can compile independently for preview
   - Easy to iterate and modify

2. **Inline version**: Extract TikZ code
   - Remove `\documentclass`, `\begin{document}`, etc.
   - Keep only `\begin{tikzpicture}...\end{tikzpicture}`
   - Add to main document where needed

3. **Include external file**: Recommended approach
   ```latex
   % In main document
   \begin{figure}[htbp]
     \centering
     \input{diagrams/my-diagram.tex}
     \caption{Process flow diagram}
     \label{fig:process-flow}
   \end{figure}
   ```

## Maintenance and Updates

**Modifying existing diagrams**:
1. Read original `.tex` file
2. Understand current structure
3. Apply user-requested changes
4. Re-run through validation pipeline

**Version control**:
- Save iterations with timestamps
- Keep validation reports for each version
- Document major changes in comments

## Agent Communication Protocol

### Coordinator → tikz-illustrator
```
Generate TikZ diagram:
- Type: [process flow | causal diagram | hierarchy | etc.]
- Elements: [list of nodes/content]
- Relationships: [list of arrows/connections]
- Output file: [path]
```

### tikz-validator → Coordinator
```yaml
status: PASS | FAIL | WARNING
file: diagram-temp.tex
compilation: {success: true, errors: [], warnings: []}
spatial_analysis: {violations: [...]}
arrow_analysis: {violations: [...]}
iteration: 1
```

### tikz-validator → tikz-illustrator (on FAIL)
```yaml
status: FAIL
violations:
  - type: too_close
    nodes: [a, b]
    actual: 1.8cm
    required: 2.0cm
    suggestion: "Change 'below=1.8cm of a' to 'below=2.5cm of a'"
    line: 15
recommendations: [...]
```

## Workflow Invocation

This workflow should be triggered when:
- User explicitly requests a TikZ diagram
- User provides description of visual structure to create
- User asks for illustration, flowchart, or graph

**Trigger phrases**:
- "create a TikZ diagram..."
- "draw a flowchart showing..."
- "make an illustration of..."
- "generate a process diagram..."

**Do NOT trigger for**:
- Existing diagrams that need fixing (use `syntax-fixer`)
- Simple bullet lists (use LaTeX list environments)
- Mathematical equations (use equation environments)
- External images (use `\includegraphics`)

---

## Summary

This pipeline ensures:
✅ **High-quality output** - Spatial awareness from the start
✅ **Automatic validation** - Compilation and spacing checks
✅ **Iterative correction** - Up to 3 attempts to fix issues
✅ **Fast turnaround** - Opus for generation, Haiku for validation
✅ **Reusable** - Works for any TikZ diagram type, not ME/CFS-specific
✅ **Reliable** - Structured feedback loop prevents manual debugging