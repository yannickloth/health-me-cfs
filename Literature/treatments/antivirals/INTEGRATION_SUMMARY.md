# Antiviral Literature Integration Summary

**Date:** 2026-01-25

## Papers Processed

### 1. Lerner AM et al. (2002) - First Valacyclovir Trial
- **Added to:** Literature/treatments/antivirals/Lerner_2002_Valacyclovir/
- **BibTeX key:** `Lerner2002valacyclovir`
- **Evidence quality:** Medium (open-label, replicated by 2007 RCT)
- **Key finding:** EBV-only subset responded; co-infections did not

### 2. Lerner AM et al. (2007) - 36-Month Placebo-Controlled Trial
- **Added to:** Literature/treatments/antivirals/Lerner_2007_Valacyclovir_36mo/
- **BibTeX key:** `Lerner2007valacyclovir`
- **Evidence quality:** High (placebo-controlled RCT)
- **Key finding:** Sustained benefit over 36 months; validated 2002 findings

### 3. Lerner AM et al. (2010) - 142-Patient Cohort
- **Added to:** Literature/treatments/antivirals/Lerner_2010_Antivirals_142pt/
- **BibTeX key:** `Lerner2010antivirals`
- **Evidence quality:** Medium-High (large prospective cohort)
- **Key finding:** 30-40% response rate; single infections respond better than co-infections

### 4. Montoya JG et al. (2013) - Valganciclovir RCT (EVOLVE Study)
- **Added to:** Literature/treatments/antivirals/Montoya_2013_Valganciclovir/
- **BibTeX key:** `Montoya2013valganciclovir`
- **Evidence quality:** High (double-blind placebo-controlled RCT)
- **Key finding:** 50-60% response rate; 7.4× increased likelihood of response vs. placebo

## Files Created

For each study:
- `abstract.txt` - Full abstract with DOI/PubMed metadata
- `notes.md` - Detailed methodology, results, and analysis
- `key-findings.md` - Main findings and clinical implications
- `README.md` - Study summary and citation info

Plus:
- `Literature/treatments/antivirals/README.md` - Overview of antiviral evidence base

Total: **17 files** across **4 study folders**

## BibTeX Entries Added

All four entries appended to `/home/nicky/code/health-me-cfs/references.bib`:

```bibtex
@article{Lerner2002valacyclovir, ...}
@article{Lerner2007valacyclovir, ...}
@article{Lerner2010antivirals, ...}
@article{Montoya2013valganciclovir, ...}
```

## Ready for Integration

### Chapter 15: Medications and Medication-Targeted Systems

**Suggested environments and citations:**

```latex
\begin{observation}[Valganciclovir Efficacy in Herpesvirus-Subset ME/CFS]
\label{obs:valganciclovir-montoya}
In a double-blind placebo-controlled trial (n=30), valganciclovir 900mg BID
for 6 months produced significant improvements in mental fatigue (P=0.039),
fatigue severity (P=0.006), and cognitive function (P=0.025) in ME/CFS patients
with elevated HHV-6/EBV IgG titers~\cite{Montoya2013valganciclovir}.
Patients receiving valganciclovir were 7.4 times more likely to be classified
as responders compared to placebo (P=0.029), with benefits appearing within
3 months and sustained through 12-month follow-up.
\end{observation}

\begin{observation}[Valacyclovir Long-Term Efficacy]
\label{obs:valacyclovir-lerner}
Valacyclovir treatment in EBV-subset CFS patients showed sustained clinical
improvement over 36 months in a blinded placebo-controlled
trial~\cite{Lerner2007valacyclovir}, validating earlier open-label
findings~\cite{Lerner2002valacyclovir}.
A large prospective cohort (n=142) confirmed 30--40\% response rates in
patients with single herpesvirus infections, while co-infections showed
limited benefit from single-agent therapy~\cite{Lerner2010antivirals}.
\end{observation}

\begin{warning}[Subset-Specific Antiviral Response]
\label{warn:antiviral-subset}
Antiviral therapy benefits only a subset of ME/CFS patients with evidence of
active herpesvirus infection. Response rates of 30--60\% in selected
patients~\cite{Lerner2010antivirals,Montoya2013valganciclovir} indicate that
herpesvirus serology screening is essential before initiating treatment,
and the majority of unselected ME/CFS patients will not respond.
Patients with multiple herpesvirus co-infections show poorer response to
single-agent antivirals~\cite{Lerner2010antivirals}.
\end{warning}
```

### Appendix: Treatment Protocols

**Herpesvirus Screening Panel:**
- EBV VCA IgG, EBNA IgG, Early Antigen IgG
- HHV-6 IgG
- CMV IgG

**Valacyclovir Protocol (EBV-subset):**
- Indication: Elevated EBV titers without co-infections
- Dose: 1-2g daily in divided doses (pharmacokinetic dosing)
- Duration: Minimum 6 months, may extend to years
- Evidence: Lerner 2002, 2007, 2010
- Response rate: 30-40% in appropriate subset

**Valganciclovir Protocol (HHV-6/EBV-positive):**
- Indication: Elevated HHV-6 and/or EBV IgG titers
- Dose: 900mg BID
- Duration: Minimum 6 months (based on Montoya 2013)
- Monitoring: CBC (neutropenia risk), renal function
- Evidence: Montoya 2013 (gold-standard RCT)
- Response rate: 50-60% in selected patients

**Assessment Timeline:**
- Baseline: Herpesvirus serology, cardiac function (optional), fatigue scales
- Month 3: Early response assessment
- Month 6: Full response assessment; decide on continuation
- Month 12+: Long-term follow-up

## Certainty Assessment Summary

| Study | Design | Sample | Evidence Quality |
|-------|--------|--------|-----------------|
| Lerner 2002 | Open-label | n=25 | Medium |
| Lerner 2007 | Placebo-controlled RCT | n=~20-25 | **High** |
| Lerner 2010 | Prospective cohort | n=142 | Medium-High |
| Montoya 2013 | Double-blind RCT | n=30 | **High** |

**Overall evidence base:** **Medium-High to High**

Two high-quality placebo-controlled RCTs (Lerner 2007, Montoya 2013) supported by large cohort data (Lerner 2010) provide robust evidence for subset-directed antiviral therapy.

## Clinical Implications

### Who Benefits
- ME/CFS patients with elevated herpesvirus IgG titers (EBV, HHV-6, CMV)
- Single-virus infections respond better than co-infections
- Response rate: 30-60% in appropriately selected patients

### Treatment Approach
- Mandatory herpesvirus serology screening before initiating therapy
- Valacyclovir for EBV-subset (single infection preferred)
- Valganciclovir for HHV-6/EBV-positive patients
- Long-term treatment (6 months to years) may be necessary
- Monitor for response at 3-month intervals

### Limitations
- Not effective in all ME/CFS patients (subset-specific)
- 40-70% of selected patients will not respond
- Co-infections complicate treatment (limited evidence for combination therapy)
- Cost considerations (especially valganciclovir)
- Long-term safety beyond 3 years not well-studied

## Integration Checklist

- [x] Papers downloaded/archived to Literature folder
- [x] Complete BibTeX entries added to references.bib
- [x] Abstract, notes, key-findings, and README created for each study
- [x] Folder structure organized by treatment category
- [x] Certainty assessment completed for all studies
- [x] Integration points identified for main document
- [x] Treatment protocols drafted for appendix
- [ ] Add to appendix-h-annotated-bibliography.tex (pending)
- [ ] Integrate into ch15-medications-systems.tex (pending)

## Next Steps

1. **Update Appendix H (Annotated Bibliography):**
   - Add entries under "Antiviral Therapy" section
   - Include certainty assessments and key findings summaries

2. **Integrate into Chapter 15:**
   - Use suggested `observation` environments with citations
   - Add `warning` environment about subset-specific response
   - Include treatment decision tree in appendix

3. **Create comparison table:**
   - Valacyclovir vs. Valganciclovir
   - Response rates, evidence quality, target viruses

4. **Consider adding:**
   - Discussion of herpesvirus reactivation hypothesis
   - Link to immune dysfunction chapter (cytokine changes in Montoya 2013)
   - Cost-effectiveness discussion

## Sources

- [Valacyclovir treatment in Epstein-Barr virus subset chronic fatigue syndrome: thirty-six months follow-up](https://pubmed.ncbi.nlm.nih.gov/18019402/)
- [A six-month trial of valacyclovir in the Epstein-Barr virus subset of chronic fatigue syndrome: improvement in left ventricular function](https://pubmed.ncbi.nlm.nih.gov/12582420/)
- [Subset-directed antiviral treatment of 142 herpesvirus patients with chronic fatigue syndrome](https://www.dovepress.com/subset-directed-antiviral-treatment-of-142-herpesvirus-patients-with-c-peer-reviewed-fulltext-article-VAAT)
- [Randomized clinical trial to evaluate the efficacy and safety of valganciclovir in a subset of patients with chronic fatigue syndrome](https://onlinelibrary.wiley.com/doi/10.1002/jmv.23713)
