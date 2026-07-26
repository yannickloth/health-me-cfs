#import "../../../../shared/environments.typ": *

=== Research Gaps at Step 10


Five gaps at Step 10, all concerning the longitudinal capacity-setting machinery: (G39) PGC-1$alpha$ protein acetylation state and functional output in ME/CFS skeletal muscle — PGC-1$alpha$ mRNA is paradoxically upregulated @wang2023wasf3, protein is normal in PBMCs @CastroMarrero2013mito, and upstream AMPK is impaired @Brown2018AMPK, but the critical muscle-biopsy measurement of PGC-1$alpha$ post-translational state has never been performed; (G40) DRP1/FIS1 vs MFN1/2/OPA1 balance (fission/fusion tone); (G41) direct mitophagy flux in patient cells (PINK1/Parkin co-localization, LC3-II turnover); (G42) mtDNA copy number in skeletal muscle (inconsistent findings from blood; muscle is the relevant tissue); (G43) TFAM expression (mitochondrial transcription factor A, downstream of PGC-1$alpha$).

#figure(
  kind: table,
  caption: [Step 10 (Dynamics and biogenesis) research gap prioritization. Step 10 failure is longitudinal — it reduces total mitochondrial capacity over days to weeks rather than per-cycle output.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G39: PGC-1α acetylation state and functional output in muscle], [High — master transcription factor gating every biogenesis target (TFAM, NRF-1, MnSOD, cytochrome c, etc.); mRNA upregulated @wang2023wasf3 but protein normal in PBMCs @CastroMarrero2013mito — post-translational state is the critical unknown], [Longitudinal; halving PGC-1α _activity_ halves new mitochondrial synthesis rate], [Hard — muscle biopsy Western + acetylation-specific IP + qPCR for targets], [Near-term — metformin (AMPK; Brown 2018 showed rescue @Brown2018AMPK), low-dose resveratrol (SIRT1), AICAR], [Muscle biopsy (Western + acetylation IP)], [1],
    [G40: DRP1/FIS1 vs MFN1/2/OPA1 balance (fission/fusion tone)], [High — determines whether damaged segments are isolated for mitophagy or kept in the network], [Kinetic; affects quality-control efficiency], [Hard — muscle biopsy IF + Western], [Long-term — Mdivi-1 is research-only], [Muscle biopsy (IF + Western)], [2],
    [G41: Direct mitophagy flux (PINK1/Parkin, LC3-II turnover)], [High — the _only_ mechanism for removing damaged mitochondria; Hochecker 2025: LC3-II elevated ~20% in ME/CFS PBMCs (trend $p = 0.054$) but without lysosomal inhibitors the direction of flux (increased initiation vs stalled completion) cannot be resolved @Hochecker2025mitophagy; PINK1/Parkin/BNIP3 not yet measured], [Determines whether damaged mitochondria accumulate (G39 + G40 interaction)], [Hard — PBMC mitophagy flux assay exists but specialist; requires bafilomycin A1 or chloroquine block for flux measurement], [Near-term — urolithin A (OTC, phase 1--2 in sarcopenia; not yet phase 3)], [Blood draw (PBMC flux assay, specialist)], [1],
    [G42: Skeletal muscle mtDNA copy number], [Medium — proxy for total mitochondrial content], [~proportional to mtDNA depletion], [Moderate — muscle biopsy qPCR is standard], [Long-term], [Muscle biopsy (qPCR)], [2],
    [G43: TFAM expression], [Medium — downstream of PGC-1α; G39 covers most of the signal], [Overlaps with G39], [Moderate], [Long-term], [Muscle biopsy], [3],
  )
) <tab:step10-gap-priorities>

G39 (PGC-1α) remains the highest-priority Step 10 gap, though the evidence landscape has shifted from "entirely unstudied" to "partially characterized with contradictory signals." Castro-Marrero 2013 found PGC-1$alpha$ protein normal in CFS PBMCs @CastroMarrero2013mito; Wawrzyniak 2016 found it reduced 37% in idiopathic chronic fatigue muscle (not ME/CFS) @Wawrzyniak2016biogenesis; the WASF3 study found PGC-1$alpha$ _mRNA_ upregulated in ME/CFS muscle @wang2023wasf3; and Brown 2018 showed impaired upstream AMPK signaling that could prevent PGC-1$alpha$ functional activation @Brown2018AMPK. The resolution likely lies in post-translational regulation: PGC-1$alpha$ may be present but inactive (hyperacetylated) in ME/CFS muscle due to the dual brake of impaired AMPK/SIRT1 activation and active SIRT4 suppression . _What is needed:_ a muscle biopsy study measuring not just total PGC-1$alpha$ protein but its acetylation state and functional outputs (TFAM, NRF-1, cytochrome c). Step 10 is _conditionally essential_: cells can run on existing mitochondria for days without biogenesis, but sustained dysfunction depletes capacity non-linearly via a damaged-mitochondria accumulation cycle — a pattern consistent with the progressive capacity loss proposed for post-exertional malaise.

