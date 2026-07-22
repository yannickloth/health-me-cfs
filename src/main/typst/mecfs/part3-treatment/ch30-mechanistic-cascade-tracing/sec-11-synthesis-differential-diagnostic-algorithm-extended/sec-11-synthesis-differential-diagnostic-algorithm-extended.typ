#import "../../../shared/environments.typ": *

*Abbreviations used in this section:*

/ *AAb*:  autoantibody
/ *ANT*:  adenine nucleotide translocator; mitochondrial inner membrane ATP/ADP exchanger
/ *ATP*:  adenosine triphosphate
/ *BP*:  blood pressure
/ *CAP*:  cholinergic anti-inflammatory pathway
/ *CCI*:  craniocervical instability
/ *CNS*:  central nervous system
/ *COMPASS-31*:  Composite Autonomic Symptom Score
/ *CoQ10*:  coenzyme Q10; ubiquinol/ubiquinone
/ *CRP*:  C-reactive protein
/ *DA*:  dopamine
/ *DBH*:  dopamine-beta-hydroxylase
/ *DNRI*:  dopamine-norepinephrine reuptake inhibitor
/ *EBV*:  Epstein-Barr virus
/ *ESR*:  erythrocyte sedimentation rate
/ *ETC*:  electron transport chain
/ *FAO*:  fatty acid oxidation
/ *GI*:  gastrointestinal
/ *GPCR*:  G protein-coupled receptor
/ *HHV-6*:  human herpesvirus 6
/ *HPA*:  hypothalamic-pituitary-adrenal axis
/ *HR*:  heart rate
/ *HSC*:  haematopoietic stem cell
/ *IA*:  immunoadsorption
/ *IFN-γ*:  interferon gamma
/ *IVIG*:  intravenous immunoglobulin
/ *LDN*:  low-dose naltrexone
/ *MCAS*:  mast cell activation syndrome
/ *NAC*:  N-acetylcysteine
/ *NE*:  norepinephrine
/ *NRI*:  norepinephrine reuptake inhibitor
/ *NSAID*:  non-steroidal anti-inflammatory drug
/ *NTS*:  nucleus tractus solitarius
/ *PDH*:  pyruvate dehydrogenase
/ *PEM*:  post-exertional malaise
/ *PFC*:  prefrontal cortex
/ *PIP2*:  phosphatidylinositol 4,5-bisphosphate
/ *POTS*:  postural orthostatic tachycardia syndrome
/ *ROS*:  reactive oxygen species
/ *SC*:  supercomplex
/ *taVNS*:  transcutaneous auricular vagus nerve stimulation
/ *TLR4*:  Toll-like receptor 4
/ *TRPM3*:  transient receptor potential melastatin 3; non-selective cation channel
/ *VMAT2*:  vesicular monoamine transporter 2


== Synthesis: Differential Diagnostic Algorithm (Extended)
<sec:synthesis-algorithm-extended>

*Certainty: 0.15.* This extended algorithm incorporates the dimensions added in sections @sec:beyond-binary through @sec:null-matrix — effect magnitude, timing, dose-response, drug-drug interactions, endogenous probes, and the null matrix framework. Even more inferential than the original 6-step algorithm. Never tested prospectively.

The binary-probe version of this algorithm used sequential probes. This extended version incorporates the full dimensionality: effect magnitude, onset latency, response duration, dose-response slope, side-effect patterns, drug-drug interactions, endogenous probe patterns, and the null matrix constraint. It also incorporates the PEM budget — probes are sequenced by (diagnostic yield) / (PEM risk).

==== Step 0 — Audit Existing Data (Before Any New Trial)
<sec:step-0-audit>

Before a single new drug is trialed, audit data already generated:

1. *Pharmacy drawer audit:* List every prior medication. For each, record: dose, duration, therapeutic response (which symptoms changed and by how much), side effects (which appeared, which were absent, at what dose), onset latency, response duration, tachyphylaxis pattern. Map this onto the null matrix — which mechanisms are already eliminated?
2. *Endogenous probe audit:* Menstrual cycle symptom patterns, sleep-wake quality patterns, meal-substrate responses, caffeine history (tolerance development or lack thereof). Which mechanisms do these already implicate or exclude?
3. *Baseline functional capacity:* Establish current PEM threshold, upright hours, cognitive task completion ceiling, and step count. This is the baseline against which probe costs will be measured.

*Output of Step 0:* A null matrix showing which mechanisms have already been eliminated by prior trials. A differential of remaining viable mechanisms. A PEM budget for new trials.

==== Step 1 — The Broadest Probe (Lowest PEM Risk)
<sec:step-1-extended>

*Probe:* LDN (0.5 mg, titrate to 4.5 mg). Energy-neutral; broadest coverage: TLR4, TRPM3, endorphin, orexin.

*Interpretation:*
- *Positive response:* Record magnitude (what % improvement?), onset latency (48h → TRPM3; 2--6 weeks → endorphin/TLR4), which symptoms improved (all symptoms → single upstream mechanism; some symptoms → multi-mechanism disease), did it unmask or worsen any symptom (dissociation pattern, @sec:pattern-dissociation)? Side effects: sedation (orexin low), dysphoria (opioid-dependent), absent expected effect?
- *Null response:* TLR4/TRPM3/endorphin/orexin eliminated as rate-limiting. Push bottleneck downstream. Null is high-information: four mechanisms eliminated in one trial.
- *Inverted U:* If works at 1.5 mg but stops at 4.5 mg → inverted U. Reduce to effective dose; confirms partial antagonism-with-upregulation mechanism.

==== Step 2 — Distinguishing Neuroinflammation Source (If LDN+)
<sec:step-2-extended>

*If LDN null:* Skip to Step 3. Neuroinflammation/TRPM3/endorphin/orexin eliminated as rate-limiting.

*If LDN positive, probe the neuroinflammation source:*

*Probe sequence:* taVNS (vagal afferent stimulation) — if available. If not, proceed to mast cell probe.

*taVNS + LDN:*
- *taVNS works:* CAP (cholinergic anti-inflammatory pathway) intact — vagal afferent-to-efferent arc is functional. The lesion is upstream of the vagus (enteric, hypothalamic, or systemic inflammation).
- *taVNS does NOT work:* CAP is blocked. Two possible blockade sites: afferent arm (neuroinflammation at NTS suppressing vagal afferent transmission to efferent nuclei) or efferent arm (splenic β2-AR AAb blocking cholinergic signal transduction at T cells, @spec:cap-autoantibody-blockade).

*Distinguishing afferent from efferent CAP blockade:*

*Add ketotifen (mast cell stabilizer, 1 mg BID) before retrying taVNS:*
- *taVNS now works:* The CAP afferent arm was suppressed by mast-cell-driven neuroinflammation at the NTS. Ketotifen stabilized CNS mast cells → afferent transmission restored → taVNS can activate the efferent arm. Diagnostic: mast cells are upstream of microglia in the neuroinflammatory cascade — consistent with the mast-cell-microglial amplification loop.
- *taVNS still does NOT work:* CAP blockade is at the efferent arm — mast cell stabilization did not restore vagal transmission because the blockade is postsynaptic (splenic T-cell β2-AR AAb). The autoimmune pathway is confirmed. Proceed to Step 6 (autoimmune probe).

*If taVNS unavailable, use the sequential probe:*
- *LDN + ketotifen:* If ketotifen produces additional improvement beyond LDN alone — and the improvement is synergistic (not additive, @sec:drug-drug-interactions) → mast cells and microglia are independent co-drivers. If additive only → mast cells and microglia share a pathway (mast-cell histamine → microglial TLR4 → cytokine release).
- *Ketotifen side-effect diagnostic:* Sedation at 0.5 mg → histaminergic wakefulness depends on mast-cell-derived histamine — patient is "held awake" by MCAS (Pattern 1, @sec:side-effects-diagnostic). No sedation + MCAS symptom improvement → H1 receptors intact but not driving wakefulness; ketotifen benefit is purely mast-cell-stabilizing. No sedation AND no MCAS improvement → mast cells are not rate-limiting for symptoms — neuroinflammation is from non-mast-cell source (microglial priming, systemic cytokine, or autoimmune).
- *If ketotifen works where LDN did NOT:* Mast cells were the dominant neuroinflammatory driver, but the TLR4 pathway was not involved — microglia were activated through non-TLR4 receptors (P2X7, C5aR, IFN-γR). Consistent with minocycline-responsive microglial activation (@sec:microglial-cascade K1).

*If mast cell probe null:* Neuroinflammation is present (LDN+) but not mast-cell-driven. Next probe: systemic inflammation source.

*If fever/chills/flare pattern OR elevated CRP/ESR on labs:* Systemic inflammatory process. Consider:
- *If onset was post-viral:* Persistent viral replication driving systemic cytokine production → proceed to Step 7 (antiviral probe).
- *If inflammatory markers elevated AND LDN+:* Steroid trial (brief, low-dose prednisone — CAUTION: HPA axis fragility, @sec:side-effects-diagnostic Pattern 5). Rapid improvement → inflammation is rate-limiting (does not ID source). Crash on taper → HPA axis fragile — iatrogenic adrenal insufficiency even from short-course steroids. No improvement → steroid-resistant inflammation: inflammasome, complement, or mast-cell-driven — cross-reference with meal and antihistamine probe patterns.
- *If no inflammatory markers, no viral onset, LDN+, ketotifen null, taVNS null/blocked:* The neuroinflammation source is likely autoimmune (GPCR AAb → microglial activation via area postrema access). Proceed to Step 6.

*Consequence of Step 2:* LDN+ narrows the differential to neuroinflammation/TRPM3/endorphin/orexin. The taVNS/ketotifen/mast-cell/stroid sequence within Step 2 further narrows to: mast-cell-driven vs. systemic-inflammatory vs. autoimmune vs. viral. Each null response within this step eliminates a source class. CAP efferent blockade (taVNS− despite LDN + ketotifen) is the strongest single-probe confirmation of the autoimmune pathway in this chapter.
*Origin:* mechanistic-pathway-tracing.

==== Step 3 — The Noradrenergic/Dopaminergic Axis
<sec:step-3-extended>

*Probe sequence:* Atomoxetine (NRI, pure NE) → then aripiprazole (D2/D3 partial agonist).

*Atomoxetine:*
- *Positive:* NE deficiency rate-limiting. Record: magnitude, onset latency, diurnal pattern (AM vs PM response), which cognitive domains improved (PFC-dependent working memory → prefrontal NE; sustained attention → basal forebrain). If tachycardia/BP ceiling at subtherapeutic dose for cognition → PFC postsynaptic desensitization (Pattern 4). If cognitive benefit without BP/HR → DA system is the actual bottleneck (the DNRI's DA component is providing benefit).
- *Null:* NE not rate-limiting. But did it successfully raise NE levels (if measured)? If NE rose but cognition unchanged → postsynaptic α2A lesion. If NE did not rise → presynaptic synthesis failure. The biochemical response to atomoxetine is diagnostic even if the clinical response is null (@sec:drugs-as-tracers).
- *If null* AND caffeine history shows no tachycardia/alertness → central sympathetic activation failure confirmed by two independent probes (caffeine endogenous probe + atomoxetine exogenous probe). High confidence in NE deficiency exclusion.

*Aripiprazole (after atomoxetine):*
- *Positive:* DA dysfunction rate-limiting. Record: dose at which response appeared (0.1 mg = catastrophic DA deficiency; 0.5 mg = severe; 2 mg = moderate). Onset latency (hours → presynaptic D2 autoreceptor; 1--2 weeks → postsynaptic D2/D3 partial agonism). Magnitude. Which symptoms (anhedonia/motivation → mesolimbic; brain fog not improving → cognitive bottleneck non-dopaminergic, @sec:pattern-dissociation).
- *Null:* Lesion below D2/D3 (VMAT2, ATP-dependent release, postsynaptic signaling, or non-dopaminergic). If null + no side effects → D2/D3 neither deficient nor responsive.
- *Akathisia at microdose:* Pattern 3 — confirms severe DA deficiency with supersensitive receptors. Reduce dose to 0.1 mg. The akathisia IS the receptor sensitivity measurement.
- *Combined NE/DA response:* If atomoxetine null OR aripiprazole positive → DBH failure: NE synthesis fails (null atomoxetine because DBH cannot convert DA → NE), DA accumulates → DA deficiency is rate-limiting (positive aripiprazole). This pattern specifically confirms DBH-level catecholamine defect (@ach:catecholamine-deficit).

==== Step 4 — The Energy Bottleneck
<sec:step-4-extended>

*Probe sequence:* CoQ10 (mitochondrial production) vs. Pyridostigmine (oxygen delivery).

*Before probing:* Audit meal response patterns (Step 0). High-carb crash → PDH-level block. High-fat crash → FAO block. Protein crash → hepatic gluconeogenesis block. These endogenous probes pre-localize the metabolic lesion.

*CoQ10:*
- *Positive:* Mitochondrial-level bottleneck. Record magnitude. If dramatic improvement (80%+) → SC disruption may be mild — cofactor flooding works. If modest (20%) → SC disruption severe — need turnover, not supplementation. If worsening → downstream ETC bottleneck (CoQ10 pushes electrons into a blocked Complex III); add NAC to handle ROS, then retry.
- *Null:* Mitochondrial production not rate-limiting. Proceed to delivery probe.

*Pyridostigmine (after CoQ10):*
- *Positive:* Delivery-level bottleneck. Improves preload → VO₂peak increases → confirms Step 1 (delivery) of energy chain is rate-limiting. Record: GI cramping at low dose (Pattern 3 → enteric denervation with muscarinic hypersensitivity).
- *Null:* Neither delivery nor mitochondrial production rate-limiting. Bottleneck is at ATP utilization (ANT export, creatine phosphate shuttle, triage allocation).
- *Combined interpretation:* If both null → mitochondria can produce ATP and oxygen can reach tissue — but ATP is not reaching the cellular machinery that needs it. Creatine should work (bypasses ANT + provides ATP buffer). If creatine null: ATP triage is the bottleneck — ATP is produced but allocated to basal functions at the expense of demand functions. This is the energy triage model (@sec:triage-cascade) — confirmed by pattern: basal functions preserved (hair/nails, basal metabolism), demand functions fail (exercise, cognition, orthostasis).

==== Step 5 — The Mechanical Probe
<sec:step-5-extended>

*PEM budget note:* Shoe lift and cervical collar are zero-energy-cost probes — no drug metabolism, no side-effect energy drain, no PEM risk. They should be trialed early whenever positional modulation or physical asymmetry is present, regardless of prior step ordering. If a patient reports that symptoms change with posture, standing vs. sitting, or after a long car ride, the mechanical probe is high-yield at zero cost.

*If positional modulation OR physical asymmetry on examination:* Shoe lift trial (2 weeks). Cervical collar trial (if CCI suspected). Both can be trialed simultaneously if both mechanical triggers are suspected.

*Shoe lift (Gerlier 4-pathway probe):*
- *Positive → mechanical driver confirmed.* The improvement magnitude and which symptoms respond determine which Gerlier pathway(s) are rate-limiting:
  - *Standing/walking PEM improves* → Pathway 1 (compensatory muscle overuse → ATP drain → anaerobic shift). The asymmetry was directly driving PEM through metabolic demand.
  - *COMPASS-31 score improves* → Pathway 2 (sympathetic chain compression → multi-organ dysautonomia). The autonomic symptoms have a mechanical trigger.
  - *Paresthesia/allodynia improves* → Pathway 3 (mechanical nerve compression at pinch points). The neuropathy is position-dependent, not structural.
  - *Neck pain, dizziness, brain fog improve* → Pathway 4 (cervical aging spiral → functional CCI). The cervical symptoms are driven by pelvic asymmetry below.
  - *ALL four domains improve* → the asymmetry is the dominant mechanism — all four pathways are active and mechanically reversible. This patient's ME/CFS may be primarily biomechanical.
- *Response onset latency:* Benefit within hours-to-days → mechanical decompression is immediate (nerve compression relieved, sympathetic chain irritability reduced). Benefit at 2 weeks → postural muscles have retrained from chronic compensation.
- *Null:* Asymmetry is non-contributory, OR compensatory patterns are fixed and 2 weeks is insufficient. If null but physical asymmetry is documented on EOS radiography, consider longer trial (4--6 weeks) with concurrent postural physiotherapy to retrain fixed compensatory patterns. If null at 6 weeks → asymmetry truly non-contributory.

*Combined with aripiprazole (Gerlier dopaminergic convergence):*
The Gerlier model predicts that Pathways 1--4 converge on the dopaminergic system (@sec:gerlier-dopamine-node). The shoe lift + aripiprazole combination probes this:
- *Shoe lift+ AND aripiprazole+:* The dopaminergic node IS the convergence point. The mechanical trigger → dopamine dysfunction → symptoms. Both the mechanical trigger AND the dopamine deficit must be addressed together (AND gate, @sec:drug-drug-interactions).
  - *Which upstream pathway?* If aripiprazole+ AND shoe lift reduces COMPASS-31 → Pathway 2 (sympathetic chain → DBH overactivity → DA pool depletion). If aripiprazole+ AND shoe lift reduces PEM but not COMPASS-31 → Pathway 1 (ATP drain → microglial activation → DA synthesis impairment). If aripiprazole+ AND cervical bracing works (not shoe lift) → Pathway 4 (functional CCI → brainstem compression → ascending DA pathway disruption).
- *Shoe lift+ but aripiprazole−:* The mechanical driver is real, but it causes symptoms through non-dopaminergic mechanisms: direct ATP depletion (Pathway 1 bypassing DA), autonomic/vascular dysfunction (Pathway 2 bypassing DA), mechanical pain (Pathway 3), or proprioceptive degradation (Pathway 4). The dopamine system is NOT the bottleneck — treat the mechanical trigger, not the downstream transmitter.
- *Shoe lift− but aripiprazole+:* Dopamine dysfunction is present but not mechanically driven. The dopamine deficit is from biochemical/autoimmune mechanisms — consistent with non-Gerlier dopamine convergence (@sec:dopamine-convergence). Proceed to Step 6 (autoimmune) or Step 3 (NE/DA axis) depending on other probe patterns.
- *Both null:* Neither mechanical trigger nor dopamine deficit is rate-limiting. Eliminate Gerlier model and dopaminergic hypotheses simultaneously.

*Cervical collar (CCI probe):*
- *Dramatic improvement:* CCI present and rate-limiting. Strongly suggests surgical fusion evaluation.
  - *Collar resolves dizziness, headache, brain fog →* brainstem/upper cervical cord compression or vertebral artery compression. The collar stabilizes the craniocervical junction, decompressing neural and vascular structures.
  - *Collar resolves POTS/autonomic symptoms →* sympathetic chain compression at C1-C2 or vagus nerve stretch — both relieved by collar stabilization. Autonomic symptoms are mechanically driven.
  - *Collar resolves dizziness but NOT POTS →* two separate mechanisms: CCI causes dizziness (brainstem compression), but POTS is from non-cervical mechanism (GPCR AAb, brainstem neuroinflammation at area postrema not affected by collar, or thoracolumbar sympathetic chain irritation). The dissociation localizes which autonomic symptom has a mechanical trigger vs. biochemical trigger (@sec:pattern-dissociation).
  - *Collar resolves pain but not cognitive symptoms →* the pain is from nerve root compression (C1-C3 distribution — occipital neuralgia), but cognitive fog is from non-cervical mechanism (neuroinflammation, metabolic).
- *Partial response (e.g., 30% improvement):* CCI is present and contributing but not the dominant mechanism. Combined with other probe results, determines whether surgical fusion would resolve 30% of symptoms (partial benefit) or whether additional non-mechanical treatments are needed for the remaining 70%.
- *Null:* CCI absent, OR present but non-contributory, OR ligamentous instability requires surgical fusion — collar cannot stabilize a craniocervical junction with torn alar/transverse ligaments. Negative collar trial does NOT exclude CCI — it excludes *external stabilization as a treatment.* If clinical suspicion remains high, upright MRI with flexion/extension views or invasive cervical traction trial under anesthesia may be warranted.

*Combined cervical collar + shoe lift interpretation:*
- *Both positive:* The mechanical driver is global — pelvic asymmetry below AND cervical instability above. The spine is mechanically compromised along its full axis. Treat both: shoe lift for pelvic asymmetry, surgical evaluation for CCI.
- *Collar+ but shoe lift−:* CCI is primary — not driven by pelvic obliquity below. The craniocervical junction is the sole mechanical lesion.
- *Shoe lift+ but collar−:* The mechanical driver is pelvic — cervical symptoms (if present) resolve with shoe lift alone because the cervical tilt was compensatory (Pathway 4). No separate cervical pathology.

*If neither mechanical probe works AND physical examination is normal:* Mechanical trigger excluded. Proceed to biochemical/autoimmune hypotheses (Step 6).

*Consequence:* The shoe lift and cervical collar are the lowest-energy-cost probes in the entire algorithm. If either works, the diagnostic yield is maximal — a positive mechanical probe localizes the lesion to a specific, mechanically reversible trigger. If both are null, the differential shifts entirely to biochemical/autoimmune mechanisms. The shoe lift + aripiprazole combination specifically tests the Gerlier model's dopaminergic convergence prediction — the ONLY combination in this chapter that validates a specific named hypothesis (not just a mechanism class). The cervical collar + shoe lift combination maps the mechanical axis from pelvis to cranium in one paired probe.
*Origin:* mechanistic-pathway-tracing.

==== Step 6 — The Autoimmune Probe (If Steps 1-5 Inconclusive)
<sec:step-6-extended>

*If LDN+, taVNS−:* Autoimmune pathway already implicated. Proceed to immunoadsorption or IVIG.

*Immunoadsorption / BC007:*
- *Positive:* GPCR AAb rate-limiting. If improvement across ALL channel-dependent symptoms → PIP2 convergence model confirmed (@sec:ion-channel-convergence). If improvement in only ONE domain → channels have independent mechanisms.
- *Null:* AAb absent, non-pathogenic, or not rate-limiting. If BC007 works where IA fails → AAb subtype not removed by protein A. If IA works where BC007 fails → AAb target not among BC007 aptamers.

*IVIG (alternative or sequential to IA):*
- *Transient flare (48--72h) then improvement:* AAb neutralization + complement activation. Diagnostic: AAb are present AND rate-limiting. Flare itself confirms immunocompetence — the immune system mounted an appropriate response to immune complexes.
- *Flare persisting beyond 7 days without improvement:* Complement-MCAS amplification loop. Pre-treat with ketotifen before next IVIG cycle.
- *No flare + no response:* No AAb, AAb not rate-limiting, or profound immune exhaustion.

*Rituximab (if IA/IVIG positive, to test B-cell source):*
- *Positive:* B-cell-driven AAb production rate-limiting. If response transient (weeks → months) → plasma cells drive chronicity; rituximab depletes B cells but spares long-lived plasma cells.
- *Null:* AAb from CD20− long-lived plasma cells. Daratumumab (anti-CD38) should be considered.

*If multiple concomitant autoimmune drugs trialed:* Consider the prerequisite and contraindication rules (@sec:drug-drug-interactions): corticosteroids before IA suppress autoantibody titers → false negative IA response; NSAIDs + LDN in MCAS → prostaglandin brake removal unmasks MCAS worsening.

==== Step 7 — The Antiviral Probe (If IA/IVIG Null and Onset Post-Viral)
<sec:step-7-extended>

*If onset was clearly post-viral AND autoimmune probes null:* Persistent viral replication may be driving symptoms through non-autoantibody mechanisms.

*Valacyclovir (EBV/HHV-6):*
- *Positive:* Herpesvirus reactivation rate-limiting in this patient.
- *Null:* EBV not rate-limiting. But valacyclovir does not achieve therapeutic CNS concentrations — CNS sanctuary site persistence not excluded.
- *CNS side effects at standard dose:* Subclinical renal impairment — measure cystatin C.

*Valganciclovir (if valacyclovir null):*
- *Positive:* Broad-spectrum herpesvirus rate-limiting; tissue sanctuary site accessible to ganciclovir but not acyclovir.
- *Null:* Herpesvirus replication is not rate-limiting, regardless of serology or PCR status.
- *Bone marrow suppression at subtherapeutic dose:* Marrow reserve exhausted — consistent with chronic inflammation-driven myelosuppression or HSC exhaustion. Cannot safely pursue antiviral therapy.

==== Step 8 — Synthesis and the Null Matrix
<sec:step-8-extended>

1. *Assemble the null matrix:* For every drug trialed, map onto drug × hypothesis node matrix (@sec:cross-reference-matrix). Mark each cell: + (rate-limiting), − (eliminated), ? (untested).
2. *Incorporate non-binary dimensions:* For each positive probe, record: drug, dose at which response appeared, effect magnitude (% improvement), onset latency, response duration, which symptoms improved and which did not, side-effect patterns (which appeared, which were absent), dose-response slope, diurnal pattern, tachyphylaxis/sensitization pattern.
3. *Incorporate endogenous probe patterns:* Menstrual phase modulation, sleep-wake patterns, meal-substrate responses, caffeine history.
4. *Incorporate drug-drug interaction results:* Any synergy or antagonism patterns from sequential or combined probes.
5. *Identify the remaining viable mechanisms:* The pattern of nulls constrains the hypothesis space. The remaining viable mechanisms are those not eliminated by any null result.
6. *Localize the lesion level:* From the positive results, identify the highest node in each cascade where a drug worked — the lesion is at or above that node. From the null results, identify the lowest node in each cascade where a drug failed — the lesion is below that node. The lesion is bracketed between the highest positive and the lowest null.
7. *Identify rate-limiting mechanisms across cascades:* The pattern of which cascades have at least one positive probe tells you which systems are rate-limiting. A patient with positives in TRPM3 AND mitochondrial AND dopaminergic has multi-system disease — consistent with a single upstream mechanism (GPCR AAb, PIP2 depletion) affecting all three. The cross-cascade pattern identifies whether the mechanism is distributed (multiple independent lesions) or convergent (one upstream lesion with multiple downstream consequences).
8. *Assess remaining uncertainty:* The residual hypothesis space. How many mechanisms remain viable? If >3 and PEM budget is exhausted → stop. The residual uncertainty is the cost of the PEM budget constraint. If ≤3 and at least one has a low-PEM-risk intervention → stop probing, start treating.
9. *Generate treatment candidates:* For each remaining viable mechanism, the drugs at that node are candidates. Proceed with the lowest energy-cost candidate first. If combination is required (AND gate in multi-hit model, @sec:drug-drug-interactions), sequence the components and verify the prerequisite/contraindication rules.

*Consequence:* This extended algorithm incorporates all dimensions developed in this chapter — binary response, effect magnitude, onset latency, response duration, dose-response slope, side-effect patterns, drug-drug interactions (synergy, antagonism, sequential ordering, prerequisites, contraindications), endogenous probes, the null matrix formalism, and the PEM budget constraint. Step 0 audits data the patient has already generated — no new trials required. Step 2 unfolds neuroinflammation source through a nested decision tree (taVNS → ketotifen → steroid → antiviral vs. autoimmune). Step 5 maps the mechanical axis from pelvis to cranium and tests the Gerlier model's dopaminergic convergence prediction through the shoe-lift/aripiprazole combination — the chapter's only hypothesis-specific validation probe. The goal is unchanged: localize the lesion through diagnostic pharmacology. But the method is now multi-dimensional — every drug trial generates a vector of diagnostic information, not a binary output. Treatment as measurement.
*Origin:* mechanistic-pathway-tracing, extended 2026-07-22.
