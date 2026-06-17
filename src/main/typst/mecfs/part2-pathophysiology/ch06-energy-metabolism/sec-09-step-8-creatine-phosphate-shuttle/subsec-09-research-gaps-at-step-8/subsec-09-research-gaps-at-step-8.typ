#import "../../../../shared/environments.typ": *

=== Research Gaps at Step 8


Four gaps at Step 8 revolve around creatine-phosphate-shuttle components: (G29) creatine transporter SLC6A8 expression; (G30) creatine synthesis enzymes AGAT (l-arginine:glycine amidinotransferase) and GAMT (guanidinoacetate N-methyltransferase); (G31) mitochondrial vs cytosolic creatine kinase isoform balance; (G32) a placebo-controlled creatine RCT to confirm the Godlewska 2024 feasibility signal @Godlewska2024creatineMRS.

#figure(
  kind: table,
  caption: [Step 8 (Creatine shuttle) research gap prioritization. Note that creatine is a kinetic buffer: failure degrades demand-response capacity, not per-cycle ATP count.],
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, left, left, left, left, left, center),
    table.header([*Gap*], [*Essentiality*], [*Worst-case impact*], [*Tractability*], [*Therapeutic leverage*], [*Measurement*], [*Priority*]),
    [G29: SLC6A8 (creatine transporter)], [Medium — sole route for creatine uptake into muscle and brain, but creatine can be partially synthesized _in situ_], [Kinetic, not stoichiometric; affects burst capacity not steady-state ATP], [Moderate — serum creatinine tracking plus MRS of brain creatine], [Immediate — creatine supplementation is OTC], [Blood draw (serum creatinine) + MRS], [2],
    [G30: AGAT + GAMT (synthesis enzymes)], [Low — dietary creatine compensates], [Minor in presence of diet], [Hard — specialist LC-MS or biopsy], [Immediate — creatine supplementation bypasses both], [Muscle biopsy (specialist LC-MS)], [3],
    [G31: Mitochondrial vs cytosolic CK isoform balance], [High if disrupted — mito-CK is the _direct_ coupler of matrix ATP to cytosolic demand], [Kinetic; up to 100% of demand-response capacity], [Hard — muscle biopsy with isoform fractionation], [Long-term], [Muscle biopsy (isoform fractionation)], [2],
    [G32: Placebo-controlled creatine RCT with brain MRS], [N/A — confirmatory intervention; GAA loaded CFS muscle without fatigue benefit  (caveat: GAA $eq.not$ creatine monohydrate); FM creatine loaded muscle without fatigue benefit @Alves2013creatineFM (caveat: FM $eq.not$ ME/CFS)], [Determines whether the _brain-specific_ Godlewska signal is real; Long COVID RCTs encouraging @DosSantos2026creatineCovid], [Easy — RCT design is simple; brain MRS adds cost but is essential for mechanism], [Immediate — creatine is OTC], [Blood draw + brain MRS (RCT)], [1],
  )
) <tab:step8-gap-priorities>

G32 remains priority 1 but the landscape has shifted. A creatine-precursor RCT in CFS proper (Ostojic 2016, GAA, $n = 21$) successfully loaded muscle creatine but did *not* reduce fatigue ; a fibromyalgia creatine RCT similarly improved muscle strength without affecting fatigue or cognition @Alves2013creatineFM. Long COVID creatine RCTs show promise ($n = 58$ completers, fatigue $p = 0.005$ @DosSantos2026creatineCovid), but the Godlewska signal is brain-specific: _brain_ creatine correlated with _cognitive_ improvement. A future ME/CFS creatine RCT should include brain MRS as a mechanistic outcome. The muscle-loading question is not definitively answered — GAA is pharmacologically distinct from creatine monohydrate, and the fibromyalgia population differs from ME/CFS — but the available evidence shifts the prior toward brain-specific mechanisms. Step 8 is not individually essential to ATP production (creatine shuttles are kinetic buffers) but its failure mode is consistent with the demand-response failure pattern observed in PEM, making it a candidate mechanism for the selective-dysfunction hypothesis (@hyp:selective-energy).

