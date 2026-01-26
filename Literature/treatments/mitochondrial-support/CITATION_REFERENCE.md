# Citation Keys for Mitochondrial Support Supplements

Quick reference for citing these papers in ch15-medications-systems.tex

## Citation Keys

| Supplement | Study Type | Citation Key | Key Finding |
|------------|------------|--------------|-------------|
| NADH | Positive RCT | `Forsyth1999NADH` | 31% response vs 8% placebo |
| NADH | Mixed result | `Santaella2004NADH` | First trimester benefit only |
| D-Ribose | Open-label pilot | `Teitelbaum2006ribose` | Improved energy, sleep, clarity, pain |
| L-Carnitine | Biomarker study | `Plioplys1995carnitine` | Reduced serum levels in CFS |
| L-Carnitine | Treatment study | `Plioplys1997carnitineTreatment` | 3g/day improved 12/18 parameters |
| Acetyl-L-carnitine | RCT (n=90) | `Vermeulen2004carnitine` | Improved mental fatigue (p=0.015) |
| Acetyl-L-carnitine | RCT (hepatic) | `Malaguarnera2011ALCAR` | Reduced fatigue, improved cognition |

## Example LaTeX Integration

### Observation (Literature Finding)

```latex
\begin{observation}[Carnitine Deficiency in ME/CFS]
\label{obs:carnitine-deficiency}
ME/CFS patients exhibit significantly lower serum total carnitine, free carnitine, and acylcarnitine levels compared to healthy controls, with carnitine levels correlating positively with functional capacity~\cite{Plioplys1995carnitine}.
\end{observation}
```

### Postdiction (Treatment Response Consistent with Theory)

```latex
\begin{postdiction}[Carnitine Supplementation Efficacy]
\label{post:carnitine-treatment}
If mitochondrial dysfunction contributes to ME/CFS pathophysiology, carnitine supplementation should improve clinical status.
This prediction is supported by multiple studies showing improvement with acetyl-L-carnitine (59\% response, mental fatigue $p=0.015$) and propionyl-L-carnitine (63\% response, general fatigue $p=0.004$)~\cite{Vermeulen2004carnitine}, as well as L-carnitine treatment improving 12 of 18 clinical parameters~\cite{Plioplys1997carnitineTreatment}.
\end{postdiction}
```

### Speculation (Proposed Treatment)

```latex
\begin{speculation}[Combination Mitochondrial Support]
\label{spec:mito-combo}
Given that NADH, D-ribose, and carnitine target complementary aspects of mitochondrial energy metabolism, combination therapy may provide synergistic benefits.
Pilot studies show modest individual effects for NADH (31\% response)~\cite{Forsyth1999NADH} and D-ribose (improved energy and mental clarity)~\cite{Teitelbaum2006ribose}, suggesting a rational basis for combined supplementation targeting the electron transport chain (NADH), ATP synthesis (ribose), and fatty acid oxidation (carnitine).
\end{speculation}
```

### Warning (Study Limitations)

```latex
\begin{warning}[NADH Evidence Limitations]
\label{warn:nadh-mixed}
While one randomized controlled trial demonstrated 31\% response to NADH supplementation~\cite{Forsyth1999NADH}, a subsequent study found that initial benefits in the first trimester were not sustained beyond three months and did not differ significantly from conventional therapy in later follow-up~\cite{Santaella2004NADH}.
Response to NADH may be time-limited or patient-specific.
\end{warning}
```

### Open Question (Research Gaps)

```latex
\begin{open_question}[D-Ribose RCT Needed]
\label{q:ribose-rct}
While open-label pilot data suggest D-ribose improves multiple symptom domains~\cite{Teitelbaum2006ribose}, no placebo-controlled randomized trials have been conducted to confirm these findings or establish optimal dosing protocols.
\end{open_question}
```

## Citation Patterns for Specific Claims

### Dosing Information

```latex
% NADH
...10~mg NADH daily~\cite{Forsyth1999NADH}...

% D-Ribose
...5~g D-ribose three times daily~\cite{Teitelbaum2006ribose}...

% Acetyl-L-carnitine
...2~g/day acetyl-L-carnitine~\cite{Vermeulen2004carnitine}...

% L-Carnitine
...3~g/day L-carnitine~\cite{Plioplys1997carnitineTreatment}...
```

### Multiple Supporting Studies

```latex
% When multiple studies support a claim
Carnitine supplementation has shown clinical benefit in multiple ME/CFS cohorts~\cite{Plioplys1997carnitineTreatment,Vermeulen2004carnitine}.

% When studies conflict
NADH showed initial promise~\cite{Forsyth1999NADH} but mixed long-term results~\cite{Santaella2004NADH}.
```

### Non-ME/CFS Studies (Use with Caution)

```latex
% When citing mechanism from non-CFS population
Acetyl-L-carnitine's effects on fatigue and cognitive function have been demonstrated in other patient populations~\cite{Malaguarnera2011ALCAR}, providing mechanistic support for its potential utility in ME/CFS mitochondrial dysfunction.
```

## Anti-Patterns to Avoid

DO NOT state without citation:
```latex
% ❌ WRONG - Uncited treatment claim
Patients should take 5g of D-ribose three times daily for optimal energy improvement.
```

DO state with citation and appropriate environment:
```latex
% ✓ CORRECT - Cited finding with proper environment
\begin{observation}[D-Ribose Dosing Response]
\label{obs:ribose-dose}
In an open-label pilot study, 5~g D-ribose administered three times daily resulted in significant improvements in energy, sleep quality, mental clarity, pain intensity, and overall well-being in patients with fibromyalgia and ME/CFS~\cite{Teitelbaum2006ribose}.
\end{observation}
```

## Notes

- All citations are now in `/home/nicky/code/health-me-cfs/references.bib`
- Use `\cite{key}` for standard citations
- Use `~\cite{key}` for non-breaking space before citation
- Use `\cite{key1,key2}` for multiple citations
- Always pair literature findings with appropriate environments
- Distinguish between ME/CFS-specific studies and mechanism studies from other populations
