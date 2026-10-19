#import "../../../../shared/environments.typ": *

=== Research Gaps at Step 2


Three glycolytic-enzyme-level gaps remain open in ME/CFS: (G4) direct activity assay of hexokinase I/II, phosphofructokinase-1 (PFK1), and pyruvate kinase M2 (PKM2) in patient tissue; (G5) the mitochondrial-outer-membrane anchoring of hexokinase II, which normally couples glycolysis to oxidative phosphorylation; and (G6) whether PFK1 allosteric regulation (AMP/ATP, fructose-2,6-bisphosphate) is dysfunctional in ME/CFS PBMCs or muscle. Prioritization uses the framework from @sec:step1-substrate-delivery.

#figure(
  kind: table,
  caption: [Step 2 (Glycolysis) research gap prioritization.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G4: Glycolytic enzyme activity assay (HK, PFK1, PKM2)], [Medium — each enzyme has isoform redundancy but PFK1 is the rate-limiting committed step; a mouse CFS model showed PKM2 amplifies glycolysis→lactate→H4K12 lactylation→NF-$kappa$B neuroinflammation→mitochondrial damage, and PKM2 knockdown ameliorated the CFS phenotype @Sun2025PKM2CFS — but no human ME/CFS enzyme data exist], [approximately 10--30% of gated yield (direct 2 ATP) plus indirect loss of pyruvate supply to PDC], [Moderate — enzyme activity assays on PBMC lysates are standardized; muscle requires biopsy], [Long-term — no approved enzyme-targeted therapy], [Blood draw (PBMC lysate) or muscle biopsy], [2],
    [G5: Hexokinase II mitochondrial anchoring (VDAC association)], [High if confirmed — anchoring physically couples glycolytic ATP to ETC and regulates apoptosis], [approximately 15--25% of gated yield via lost mito-glycolytic coupling], [Hard — requires muscle biopsy with subcellular fractionation or immuno-EM], [Long-term — HK2-displacement compounds are research tools only], [Muscle biopsy (immuno-EM)], [3],
    [G6: PFK1 allosteric regulation], [Low — PFK1 is rate-limiting but its dysregulation would already be detected in G4], [Overlaps with G4], [Moderate — metabolomic F2,6BP measurement is feasible], [Long-term — no approved modulators], [Blood draw (metabolomics)], [3],
  )
) <tab:step2-gap-priorities>

G4 is the highest-priority Step 2 gap because it is the single measurement that would resolve whether the reduced basal glycolysis observed by Mandarano et al.\ in PBMCs  reflects enzyme-level lesions or upstream substrate limitation. No Step 2 gap is _individually essential_ to the chain; glycolysis is a rate-limiting pipeline with parallel isoforms, so partial failure produces graded capacity loss rather than shutdown.

