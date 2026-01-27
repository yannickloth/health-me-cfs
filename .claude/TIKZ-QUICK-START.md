# TikZ Illustration System - Quick Start

Domain-agnostic system for generating validated TikZ diagrams with automatic quality checking.

## Usage

Simply describe what you want:

```
"Create a TikZ diagram showing a process flow: Input → Process → Decision → Output"
"Draw a causal diagram with nodes A, B, C and edges A→B, B→C, A→C"
"Make a timeline of major events from 2020 to 2025"
"Generate a system architecture diagram with frontend, backend, database"
```

The system will:
1. Generate the diagram with proper spacing
2. Validate compilation and spacing
3. Auto-correct any issues (up to 3 iterations)
4. Deliver a compilable `.tex` file and PDF

## What You Get

- **Standalone `.tex` file**: Compilable independently
- **PDF preview**: See the result immediately
- **Validation report**: Quality confirmation
- **Clean code**: Well-commented, easy to modify

## Diagram Types Supported

| Type | Use For |
|------|---------|
| Process Flow | Sequential steps, workflows, algorithms |
| Causal Diagram | Cause-effect relationships, DAGs, influence |
| Hierarchical Tree | Org charts, taxonomies, classification |
| System Architecture | Software components, infrastructure |
| Timeline | Historical events, project schedules |
| Network Diagram | Interconnected systems, graphs |
| Matrix Layout | Grids, comparison tables |
| Layered Architecture | Software layers, protocol stacks |

## Example Requests

### Simple Process Flow
```
"Create a flowchart: Start → Data Input → Validation → [Valid?] → Process → Save → End
Include a branch for invalid data that loops back to Data Input"
```

### Causal Network
```
"Draw a causal diagram showing:
- Stress → Cortisol
- Cortisol → Inflammation
- Inflammation → Symptoms
- Stress → Symptoms (direct path)"
```

### System Architecture
```
"Create a system diagram with:
- Frontend (React)
- API Gateway
- Auth Service
- Backend Services (3 microservices)
- Database
Show connections between components"
```

### Timeline
```
"Make a timeline from 2018 to 2024 showing:
- 2018: Project Start
- 2020: Phase 1 Complete
- 2022: Beta Release
- 2024: Production Launch"
```

## Quality Guarantees

The system automatically ensures:
- ✅ Compiles without errors
- ✅ Minimum 2.5cm horizontal spacing
- ✅ Minimum 2.0cm vertical spacing
- ✅ Arrows don't intersect unrelated nodes
- ✅ Text fits within node boundaries
- ✅ Consistent visual style

## Customization

After generation, you can request modifications:

```
"Make the nodes larger"
"Change the color scheme to blue/green"
"Add more spacing between layers"
"Rotate the layout 90 degrees"
"Add labels to the arrows"
```

The system will re-validate after each change.

## Templates Available

See [`.claude/tikz-templates.md`](.claude/tikz-templates.md) for:
- Complete examples of each diagram type
- Reusable code snippets
- Customization tips
- Compilation instructions

## How It Works

### Behind the Scenes

```
Your Request
    ↓
tikz-illustrator (Opus) ← Creates diagram with spatial planning
    ↓
tikz-validator (Haiku)  ← Compiles and checks spacing
    ↓
    ├─→ PASS: Deliver to you
    └─→ FAIL: Return to illustrator with specific feedback
              ↓
              Corrects spacing (up to 3 attempts)
              ↓
              Re-validates
```

### Why Two Agents?

- **tikz-illustrator (Opus)**: Creative spatial reasoning for layout design
- **tikz-validator (Haiku)**: Fast compilation and geometric validation

This separation ensures:
- High-quality generation (Opus reasoning)
- Fast validation (Haiku speed)
- Automatic iteration (no manual debugging)

## Advanced Usage

### Inline vs Standalone

**Standalone** (default): Complete document, compile independently
```latex
\documentclass[tikz,border=10pt]{standalone}
...
```

**Inline**: For embedding in existing documents
```latex
% Just the TikZ code
\begin{tikzpicture}
...
\end{tikzpicture}
```

Request either explicitly:
```
"Create a standalone TikZ diagram..."
"Generate inline TikZ code for my existing document..."
```

### Complex Diagrams

For very complex diagrams (>20 nodes), consider:
1. Breaking into multiple diagrams
2. Using hierarchical layout
3. Requesting specific positioning strategy

Example:
```
"Create a large causal network with 30 nodes.
Use a layered layout with 3 levels.
Group related nodes together."
```

### Validation Details

If validation fails after 3 attempts, you'll receive:
- Current diagram code
- Specific violations (measurements, line numbers)
- Suggestions for manual fixes
- Option to simplify or restructure

## Files Generated

After generation, you'll find:
- `diagram-[description]-[date].tex` - Source code
- `diagram-[description]-[date].pdf` - Compiled output
- Validation report in agent output

## Integration with LaTeX Documents

### Option 1: Include External File
```latex
\begin{figure}[htbp]
  \centering
  \input{diagrams/my-diagram.tex}
  \caption{My diagram}
  \label{fig:my-diagram}
\end{figure}
```

### Option 2: Inline Code
Copy the TikZ code directly into your document (requires `\usepackage{tikz}` and appropriate libraries in preamble).

### Option 3: Include PDF
```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{diagrams/my-diagram.pdf}
  \caption{My diagram}
  \label{fig:my-diagram}
\end{figure}
```

## Troubleshooting

### "Compilation failed"
- Check if all required TikZ libraries are loaded
- Verify special characters are escaped
- Ensure consistent syntax

**Solution**: The validator will identify specific errors and the illustrator will fix them automatically.

### "Nodes still overlapping after 3 iterations"
- Diagram may be too complex for automatic layout
- Consider simplifying or manual positioning

**Solution**: You'll receive detailed feedback on what needs adjustment.

### "Text overflows node"
- Content too long for node size
- Need to increase `text width` or abbreviate

**Solution**: The validator detects this and illustrator adjusts node sizing.

## Performance

Typical generation times:
- **Simple** (< 5 nodes): ~30 seconds
- **Medium** (5-15 nodes): ~60 seconds
- **Complex** (> 15 nodes): ~120 seconds

Time includes generation + validation + any needed iterations.

## Reusability

This system is **completely domain-agnostic**:
- No ME/CFS-specific content
- No medical terminology hardcoded
- Works for any discipline: software, biology, business, etc.
- Templates are generic and customizable

Use it for:
- Software architecture diagrams
- Scientific workflows
- Business processes
- Academic presentations
- Technical documentation
- Any visual structure

## Support

For issues or questions:
- Check [tikz-templates.md](.claude/tikz-templates.md) for examples
- Review [tikz-illustration-pipeline.md](.claude/workflows/tikz-illustration-pipeline.md) for details
- Agent documentation: [tikz-illustrator.md](.claude/agents/tikz-illustrator.md) and [tikz-validator.md](.claude/agents/tikz-validator.md)

---

**Ready to create diagrams?** Just describe what you need!