# ME/CFS Process Flow Diagrams

This directory contains TikZ-based process flow diagrams showing biological processes in ME/CFS.

## Figures

Each figure uses a three-zone structure:

1. **NORMAL (Green)**: What SHOULD happen in a healthy system
2. **ME/CFS (Red)**: What ACTUALLY happens in ME/CFS patients
3. **PATHOLOGICAL (Dark Red)**: Pathological processes that SHOULD NOT EXIST and how they corrupt normal processes

### Figure 1: Cellular Energy Production Cascade
- **File**: `fig-energy-production-cascade.tex`
- **Label**: `fig:energy-cascade`
- **Shows**: Normal ATP production vs ME/CFS impairments vs pathological cascade
- **Key concepts**: Glycolysis, Krebs cycle, ETC, ATP deficit, multi-system failure

### Figure 2: Oxidative Stress Vicious Cycle
- **File**: `fig-oxidative-stress-cycle.tex`
- **Label**: `fig:oxidative-stress-cycle`
- **Shows**: Balanced ROS vs excessive ROS/depleted antioxidants vs vicious cycle
- **Key concepts**: ROS balance, antioxidant depletion, self-perpetuating damage

### Figure 3: Catecholamine Synthesis Failure
- **File**: `fig-catecholamine-synthesis.tex`
- **Label**: `fig:catecholamine-synthesis`
- **Shows**: Normal catecholamine synthesis vs multiple bottlenecks vs system failures
- **Key concepts**: Tyrosine hydroxylase, BH₄, vitamin C, norepinephrine deficit, autonomic dysfunction

### Figure 4: Tryptophan-Kynurenine Pathway Dysregulation
- **File**: `fig-tryptophan-kynurenine.tex`
- **Label**: `fig:tryptophan-kynurenine`
- **Shows**: Balanced tryptophan metabolism vs inflammation-driven IDO overactivation vs dual pathology
- **Key concepts**: Serotonin depletion, quinolinic acid toxicity, IDO activation, neuroinflammation

### Figure 5: Post-Exertional Malaise (PEM) Mechanism
- **File**: `fig-pem-mechanism.tex`
- **Label**: `fig:pem-mechanism`
- **Shows**: Normal exercise response vs ME/CFS PEM response vs PEM vicious cycle
- **Key concepts**: ATP crisis, maladaptive response, delayed deterioration, metabolic suppression

### Figure 6: Cerebral Hypoperfusion Cascade
- **File**: `fig-cerebral-hypoperfusion.tex`
- **Label**: `fig:cerebral-hypoperfusion`
- **Shows**: Normal cerebral blood flow vs reduced CBF vs hypoperfusion cascade
- **Key concepts**: Autoregulation failure, brain ATP deficit, cognitive dysfunction

### Figure 7: Immune Dysfunction Cycles
- **File**: `fig-immune-dysfunction.tex`
- **Label**: `fig:immune-dysfunction`
- **Shows**: Normal immune response vs paradoxical immune state vs two vicious cycles
- **Key concepts**: Chronic inflammation, immune exhaustion, failed pathogen clearance

### Figure 8: HPA Axis Dysregulation
- **File**: `fig-hpa-axis-dysregulation.tex`
- **Label**: `fig:hpa-axis-dysregulation`
- **Shows**: Normal stress response vs blunted HPA response vs multi-system failure
- **Key concepts**: Cortisol dysregulation, stress intolerance, inflammation unchecked

## Testing

Test files are provided for each figure:
- `test-figure1.tex` through `test-figure8.tex`

To test a figure:
```bash
pdflatex test-figure1.tex
```

## Integration

To include a figure in your document:
```latex
\input{figures/fig-energy-production-cascade.tex}
```

Or reference by label:
```latex
See Figure~\ref{fig:energy-cascade} for details.
```

## Specifications

For detailed specifications of each figure, see:
- `specifications/figure-specifications.md`

## Color Scheme

- **Green**: Normal function (what should happen)
- **Red**: Impaired function (what actually happens in ME/CFS)
- **Dark Red**: Pathological processes (shouldn't exist)
- **Blue**: Beneficial interventions
- **Yellow**: Caution/warnings
- **Purple**: Experimental interventions

## Accessibility

All figures are designed to be understandable by anyone with a university degree in any field, not just medical/biology backgrounds. Each figure includes:
- Plain-language titles and subtitles
- Clear visual distinction between zones
- Intervention sidebars showing therapeutic approaches
- Detailed captions explaining all concepts
