#import "../shared/environments.typ": *

= Universal Medical Techniques Taxonomy
<app:medical-toolkit>

This appendix catalogs the full toolkit of techniques used across medicine to diagnose, treat, and heal — organized by mechanism rather than by disease.
It serves as a reference for identifying techniques whose mechanism aligns with ME/CFS pathophysiology but which lack dedicated clinical evidence or protocols in ME/CFS.
Each entry in this taxonomy represents a technique whose mechanism is established in at least one recognized medical condition; the taxonomy itself is not a claim about efficacy in ME/CFS.

== Part I: Diagnostic Techniques

=== Medication-as-Probe

Administer a drug with known pharmacology; measure physiological response to infer mechanism integrity or lesion location.

#figure(
  table(
    columns: (1.2fr, 1.3fr, 1.5fr, 1fr, 1.5fr),
    align: horizon,
    table.header(
      [Agent], [Target Mechanism], [Disease/Condition], [Response Meaning], []
    ),
    [L-DOPA], [Dopamine precursor replacement], [Parkinson's disease], [$gt.eq$30% motor improvement $arrow$ dopaminergic deficit confirmed], [],
    [Albuterol (salbutamol)], [$beta_2$-adrenergic agonist $arrow$ airway smooth muscle relaxation], [Asthma], [$gt.eq$12% + $gt.eq$200 mL FEV#sub[1] improvement $arrow$ reversible airway obstruction], [],
    [Cosyntropin (ACTH 1-24)], [Adrenal cortex stimulation $arrow$ cortisol synthesis], [Adrenal insufficiency], [Cortisol $lt.18-20$ $mu$g/dL at 30/60 min $arrow$ adrenal failure], [],
    [Dexamethasone], [Suppresses CRH/ACTH via negative feedback], [Cushing's syndrome], [AM cortisol not suppressed $arrow$ autonomous cortisol production], [],
    [CRH (ovine)], [Pituitary corticotroph stimulation], [Cushing's differential], [ACTH rise in pituitary Cushing's; flat in ectopic], [],
    [Edrophonium (Tensilon)], [Acetylcholinesterase inhibitor $arrow$ $arrow$ synaptic ACh], [Myasthenia gravis], [Transient improvement in ptosis/weakness $arrow$ postsynaptic NMJ deficit], [],
    [Ice pack (ptosis)], [Cold reduces acetylcholinesterase activity], [Myasthenia gravis], [Ptosis improves by $gt.eq$2 mm $arrow$ MG], [],
    [DDAVP (desmopressin)], [V#sub[2] receptor agonist $arrow$ water reabsorption], [Diabetes insipidus], [Urine osmolality rises in central DI; flat in nephrogenic], [],
    [Neostigmine], [Acetylcholinesterase inhibitor], [MG vs LEMS], [MG responds; LEMS shows minimal or paradoxical response], [],
    [Glucagon], [Stimulates glycogenolysis; stimulates GH], [Insulinoma, GH deficiency], [Glucose rise $arrow$ excludes insulinoma; GH $lt.3$ ng/mL $arrow$ GHD], [],
    [Clonidine], [$alpha_2$-agonist $arrow$ suppresses central sympathetic outflow], [Pheochromocytoma], [Norepinephrine not suppressed $arrow$ autonomous catecholamine production], [],
    [Adenosine], [AV nodal blockade; triggers re-entrant circuit], [SVT mechanism], [SVT terminates $arrow$ AV node-dependent re-entry; not $arrow$ atrial], [],
    [Flumazenil], [GABA-A competitive antagonist], [BZD overdose, hepatic encephalopathy], [Reversal of sedation $arrow$ confirms BZD role], [],
    [Naloxone], [$mu$-opioid competitive antagonist], [Opioid overdose], [Reversal of respiratory depression $arrow$ confirms opioid effect], [],
    [Methacholine (inhaled)], [Direct airway smooth muscle cholinergic stimulation], [Asthma (AHR)], [PC#sub[20] $lt.eq$16 mg/mL $arrow$ airway hyperresponsiveness], [],
    [Captopril], [ACE inhibitor $arrow$ blocks AT-II formation], [Renovascular hypertension], [$arrow$ PRA, $arrow$ BP $arrow$ renovascular HTN], [],
    [Saline infusion (2 L NS)], [Volume expansion suppresses aldosterone], [Primary aldosteronism], [Aldosterone not suppressed $arrow$ autonomous production], [],
    [Furosemide], [Loop diuretic $arrow$ Na-K-2Cl blockade $arrow$ volume depletion], [Bartter vs Gitelman], [$arrow$ Cl#super[$-$] in Bartter; $arrow$ Mg#super[$2+$], $arrow$ Ca#super[$2+$] in Gitelman], [],
    [Insulin tolerance test], [Hypoglycemia $arrow$ stress response], [HPA axis integrity, GH reserve], [Cortisol >18 $mu$g/dL $arrow$ intact HPA; GH >3 ng/mL $arrow$ intact], [],
    [Arginine], [Stimulates GH via somatostatin inhibition], [GH deficiency], [Blunted GH rise $arrow$ GHD], [],
    [Pentagastrin], [Gastrin analog $arrow$ gastric acid secretion], [Zollinger-Ellison], [BAO/MAO ratio >0.6 $arrow$ gastrinoma], [],
    [Secretin], [Stimulates gastrin release from gastrinoma], [Gastrinoma], [$arrow$ gastrin >200 pg/mL], [],
    [CCK + 99mTc-HIDA], [Stimulates gallbladder contraction], [Gallbladder dyskinesia], [Ejection fraction $lt.35-40$% $arrow$ biliary dyskinesia], [],
    [Atropine], [Muscarinic ACh antagonist $arrow$ vagal blockade], [Autonomic neuropathy], [HR rises $lt.20$ bpm $arrow$ parasympathetic dysfunction], [],
    [Pilocarpine iontophoresis], [Cholinergic agonist $arrow$ sweat gland stimulation], [Cystic fibrosis], [Sweat Cl#super[$-$] >60 mmol/L $arrow$ CF], [],
    [Dobutamine stress echo], [$beta_1$-agonist $arrow$ $arrow$ contractility, HR, O#sub[2] demand], [CAD (ischemia)], [New wall motion abnormality $arrow$ ischemic segment], [],
    [Adenosine/regadenoson stress], [Vasodilator $arrow$ coronary steal], [CAD (perfusion imaging)], [Perfusion defect $arrow$ stenotic territory], [],
    [Ivabradine], [I#sub[f] channel blocker $arrow$ HR reduction], [Inappropriate sinus tachycardia], [HR drops $gt.eq$20 bpm $arrow$ confirms IST], [],
    [Phenoxybenzamine], [$alpha_1$/$alpha_2$ irreversible antagonist], [Pheochromocytoma], [BP drops, symptoms resolve $arrow$ catecholamine excess], [],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Medication-as-Probe diagnostic tests: drugs administered to probe physiological integrity of a known mechanism.],
) <tbl:medication-probe>

=== Provocation Tests

Apply controlled stress; measure whether the system produces normal homeostatic response or breaks in a specific pattern.

#figure(
  table(
    columns: (1.2fr, 1fr, 1.3fr, 1.5fr),
    align: horizon,
    table.header(
      [Test], [Stressor], [What Is Measured], [Disease/Condition]
    ),
    [Tilt table test], [Upright tilt 60-80° for 10-45 min], [HR, BP, symptoms — continuous], [POTS, vasovagal syncope, orthostatic hypotension, delayed OH],
    [Exercise stress test], [Graded exercise to max capacity], [ECG (ST changes), BP, HR, symptoms], [CAD (ischemia), chronotropic incompetence],
    [CPET], [Ramped exercise to exhaustion], [VO#sub[2] peak, AT, VE/VCO#sub[2] slope, O#sub[2] pulse, RER], [HF, pulmonary HTN, mitochondrial disease, dyspnea differential],
    [Cold pressor test], [Hand in ice water 1-3 min], [BP, HR, catecholamines, CBF velocity], [Autonomic function, BP reactivity],
    [Ischemic forearm test], [Cuff above systolic + hand exercise], [Lactate, ammonia], [McArdle's disease (GSD V) — flat lactate],
    [Water deprivation test], [Fluid restriction 8-18 h], [Urine and plasma osmolality], [Diabetes insipidus (central vs nephrogenic vs polydipsia)],
    [OGTT], [75 g glucose PO], [Glucose, insulin at 0/60/120 min], [Diabetes, IGT, reactive hypoglycemia],
    [DBPC food challenge], [Graded food antigen doses], [Symptoms, tryptase, specific IgE], [Food allergy (gold standard)],
    [Capsaicin cough challenge], [Inhaled capsaicin graded doses], [Cough count, urge-to-cough], [Cough hypersensitivity syndrome],
    [CO#sub[2] rebreathing], [Rebreath 7% CO#sub[2]/93% O#sub[2]], [Minute ventilation, P#sub[0.1]], [Respiratory drive (central hypoventilation, CHF, COPD)],
    [Aspirin challenge], [Graded aspirin doses (up to 650 mg)], [FEV#sub[1], nasal symptoms], [AERD (Samter's triad)],
    [Exercise laryngoscopy], [Exercise + continuous laryngoscopy], [Vocal fold movement, laryngeal obstruction], [EILO (exercise-induced laryngeal obstruction)],
    [Hyperventilation + EEG], [Forced hyperventilation 3-5 min], [EEG spike-wave activity], [Absence seizures, generalized epilepsy],
    [Photic stimulation + EEG], [Stroboscopic light at 1-30 Hz], [EEG photoparoxysmal response], [Photosensitive epilepsy],
    [Sleep deprivation + EEG], [24-36 h sleep deprivation], [EEG epileptiform activity], [Epilepsy (increases diagnostic yield)],
    [Cold provocation (urticaria)], [Ice cube on skin 1-5 min], [Wheal-and-flare], [Cold urticaria],
    [UV light provocation], [UVA/UVB narrowband exposure], [Rash development], [Lupus, porphyria cutanea tarda, PMLE],
    [Lactate exercise test], [Brief intense exercise], [Serum lactate, ammonia], [Mitochondrial myopathy, GSD],
    [Valsalva maneuver], [Forced expiration (40 mmHg) 15 s], [BP phases I-IV, HR, Valsalva ratio], [Autonomic neuropathy],
    [Deep breathing test], [6 breaths/min (5 s in/out)], [HR variation (E:I ratio)], [Autonomic neuropathy ($arrow$ E:I ratio $arrow$ parasympathetic)],
    [Sustained handgrip], [30% MVC for 3-5 min], [Diastolic BP rise], [Sympathetic function],
    [6-minute walk test], [Walk as far as possible in 6 min], [Distance, SpO#sub[2], HR, Borg dyspnea], [Functional capacity, PAH, HF, ILD, COPD],
    [Eucapnic voluntary hyperventilation], [6 min hyperventilation at 30 $times$ FEV#sub[1]], [FEV#sub[1] drop], [Exercise-induced bronchoconstriction],
    [Prolonged fasting test], [72 h supervised fast], [Glucose, insulin, C-peptide, ketones], [Insulinoma (Whipple's triad)],
    [Standing test / active stand], [Active standing with continuous BP], [Orthostatic BP at 1,3,5,10 min], [OH, delayed OH, POTS],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Provocation tests: controlled physiological stress to reproduce symptoms or signs.],
) <tbl:provocation-tests>

=== Imaging

==== Structural Imaging (X-Ray, CT, MRI, Ultrasound)

X-ray: Chest, abdominal (KUB), skeletal/extremity/spine series, mammography, scoliosis, bone age, hysterosalpingography.
CT: head (non-contrast, with contrast, angiography, perfusion), chest (HRCT, with contrast), abdomen/pelvis, urography, colonography, spine, CT-guided biopsy.
MRI sequences: T1, T2, T2-FLAIR (MS plaques), DWI (acute stroke), DTI (tractography), SWI (microhemorrhage), MRS (tumor metabolites), post-gadolinium, perfusion (DSC/DCE/ASL), MRA/MRV, cardiac MRI (cine, LGE, T1/T2 mapping), MRCP, prostate MRI (PI-RADS), whole-body MRI.
Ultrasound: abdominal, renal, thyroid, carotid/venous/arterial duplex, TTE, TEE, stress echo, musculoskeletal, obstetric/gynecologic, breast, scrotal, lung US, FAST/eFAST, POCUS, transcranial Doppler (TCD), contrast-enhanced (CEUS), endoscopic (EUS), endobronchial (EBUS).
Bone density: DEXA (central, VFA, body composition), QCT, pQCT.

==== Functional and Molecular Imaging

PET tracers: #super[18]F-FDG (glucose metabolism), #super[18]F-DOPA (dopamine), #super[18]F-flortaucipir (tau), #super[18]F-florbetapir/flutemetamol/florbetaben (amyloid), #super[11]C-PiB (amyloid), #super[68]Ga-DOTATATE (SSTR), #super[68]Ga-PSMA (prostate cancer), #super[18]F-NaF (bone turnover), #super[68]Ga-FAPI (fibroblast activation), #super[11]C-methionine (amino acid transport), #super[11]C-raclopride (D#sub[2] receptors), #super[11]C-PK11195 (TSPO — neuroinflammation), #super[11]C-flumazenil (GABA-A receptors), #super[18]F-FDG cardiac viability.

SPECT tracers: #super[99m]Tc-HMPAO/ECD (CBF), #super[123]I-ioflupane/DaTscan (DAT), #super[123]I-MIBG (cardiac sympathetic innervation), #super[99m]Tc-sestamibi/tetrofosmin (myocardial perfusion), #super[99m]Tc-MDP (bone), #super[99m]Tc-WBC (leukocyte infection imaging), #super[67]Ga-citrate (inflammation/infection), #super[99m]Tc-HIDA (hepatobiliary), #super[99m]Tc-PYP (ATTR cardiac amyloid), #super[99m]Tc-gastric emptying.

Advanced MRI: task-based BOLD fMRI, resting-state fMRI, DTI/DKI/NODDI, QSM, MR perfusion (DSC/DCE/ASL), #super[1]H MRS (NAA/Cho/Cr/Lac/mI), #super[31]P MRS (ATP/PCr/Pi), CEST, #super[23]Na MRI, T1/T2 mapping, IVIM, BOLD hypoxia imaging. MEG: spontaneous/evoked/resting-state. V/Q scan. Hybrid: PET/CT, PET/MRI, SPECT/CT.

=== Laboratory Tests

#figure(
  table(
    columns: (1.3fr, 1.2fr, 1.5fr),
    align: horizon,
    table.header([Category], [Key Analytes], [Conditions]),
    [Basic biomarkers], [hs-CRP, ESR, procalcitonin, troponin, BNP/NT-proBNP, D-dimer, HbA1c, ferritin, sTfR, B12, MMA, homocysteine, folate, vitamin D/A/E/K, zinc, selenium, copper, ceruloplasmin], [Inflammation, infection, MI, HF, VTE, diabetes, anemia, nutritional deficiency, metal disorders],
    [Thyroid], [TSH, free T4, free T3, reverse T3, TPO Ab, Tg Ab, TRAb, thyroglobulin], [Hypo/hyperthyroidism, Hashimoto, Graves, non-thyroidal illness],
    [HPA and stress], [Cortisol (AM/PM, 24h urine, saliva), ACTH, CRH, metanephrines (plasma/urine), VMA, chromogranin A], [Cushing, adrenal insufficiency, pheochromocytoma, neuroendocrine],
    [RAAS], [Aldosterone, renin (PRA/direct), ARR], [Primary aldosteronism, secondary aldosteronism, RHTN],
    [Calcium-PTH axis], [Ca#super[2+] (total/ionized), phosphate, PTH, 25-OH-D, 1,25-(OH)#sub[2]-D], [Hyper/hypoPTH, vitamin D disorders],
    [GH-IGF-1 and prolactin], [IGF-1, GH, IGFBP-3, prolactin], [Acromegaly, GH deficiency, prolactinoma],
    [Gonadal (HPG)], [FSH, LH, testosterone (total/free/bioavailable), SHBG, estradiol, progesterone, AMH, inhibin B], [Hypogonadism, PCOS, POI, menopause, ovarian reserve],
    [Pancreatic islet], [Glucose, insulin, C-peptide, proinsulin, glucagon], [Diabetes (T1 — low C-peptide; T2), insulinoma],
    [Autoantibody], [ANA, dsDNA, Sm, RNP, Ro/SSA, La/SSB, centromere, Scl-70, RNA pol III, Jo-1, PL-7/12, EJ/OJ, SRP, Mi-2, MDA5, TIF1$gamma$, NXP-2, SAE, CCP, RF, cANCA/PR3, pANCA/MPO, anti-GBM, AChR, MuSK, LRP4, VGCC, TPO, Tg, TRAb, GAD65, IA-2, ZnT8, TTG, EMA, DGP, AMA, SMA, LKM-1, SLA/LP, paraneoplastic (Hu/Yo/Ri/Ma2/CV2/amphiphysin), NMDAR, LGI1, CASPR2, GABAB-R, AQP4, MOG, PLA2R, THSD7A, Dsg1/3, BP180/230, aPL ($beta_2$-GPI/cardiolipin/LAC), histone, C1q, parietal cell, intrinsic factor, 21-hydroxylase, ganglioside, MAG, GFAP], [SLE, Sjögren, scleroderma, myositis, vasculitis, MG, LEMS, thyroid, T1DM, celiac, AIH, PBC, encephalitis, NMOSD, MOGAD, membranous nephropathy, pemphigus, bullous pemphigoid, APS, pernicious anemia, GBS/CIDP],
    [HLA], [HLA-B27, HLA-DQ2/DQ8, HLA-DR4/DR3/DR2, HLA-B*5701, HLA-B*1502, HLA-B*5801, HLA-B51, HLA-Cw6, HLA-B35], [AS, celiac, RA, SLE, MS, drug hypersensitivity, Behçet, psoriasis, thyroiditis],
    [Genetic testing], [Karyotype, FISH, CMA, WES, WGS, single-gene, gene panel, repeat expansion, methylation, mtDNA, pharmacogenetics, MLPA, RNA-seq, long-read, NIPT, newborn screening], [Aneuploidies, microdeletion, undiagnosed genetic disease, monogenic, repeats (Huntington, Fragile X, DM), imprinting, mitochondrial, drug response, prenatal],
    [Metabolomics], [Plasma amino acids, acylcarnitines, urine organic acids, VLCFA, porphyrins, bile acids, purines/pyrimidines, oligosaccharides, GAGs, sialotransferrin, lactate/pyruvate ratio, biotinidase, GALT, succinylacetone, guanidinoacetate, carnitine], [Amino acid disorders, FAO, organic acidemias, peroxisomal, porphyrias, bile acid synthesis, lysosomal storage, CDG, mitochondrial, galactosemia, tyrosinemia],
    [Specialized], [Leptin, adiponectin, cytokine/chemokine panels, cfDNA, miRNA, Lp(a), ApoB, lipoprotein particle count (NMR), free light chains ($kappa$/$lambda$) + SPEP/IFX/UPEP, tryptase, histamine, PGD#sub[2], LTE4, C3/C4, CH50/AH50, MBL, ACE, LDH, cryoglobulins, S100B, NSE, NfL, tau (total, p-tau181/217), $beta$-amyloid 42/40, $alpha$-synuclein (RT-QuIC), PrPSc (RT-QuIC), oligoclonal bands, IgG index, CSF (cells/protein/glucose/opening pressure), 5-HIAA], [Metabolic syndrome, inflammation, cancer liquid biopsy, AL amyloidosis, MM, mastocytosis, complement disorders, sarcoidosis, hemolysis, cryoglobulinemia, neurodegeneration (AD/PD/CJD), MS, meningitis, carcinoid],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Laboratory test categories, key analytes, and associated conditions.],
) <tbl:laboratory>

=== Infectious Disease Tests

Standard panels: HIV (Ag/Ab, RNA), HBV (serology, DNA), HCV (Ab, RNA), EBV (VCA/EBNA/EA, DNA), CMV (IgM/IgG, DNA), HSV/VZV PCR, HHV-6/8 PCR, parvovirus B19, measles/mumps/rubella serology.
Bacterial: Lyme (ELISA + WB, PCR), syphilis (RPR/VDRL + TP-PA), leptospira, Quantiferon/T-SPOT for TB, AFB smear/culture, TB PCR (Xpert MTB/RIF), C. diff (GDH + toxin + PCR), ASO/anti-DNase B, Legionella/pneumococcal urinary Ag, H. pylori (stool Ag, UBT, biopsy), atypical pneumonia (mycoplasma, chlamydia) PCR, STI panels (CT/GC/trichomonas NAAT), brucella, bartonella, coxiella.
Fungal: cryptococcal Ag, aspergillus galactomannan, $beta$-D-glucan (Fungitell), histoplasma/blastomyces/coccidioides Ag + culture + serology, candida (culture, T2Candida, BDG).
Parasitic: malaria (thick/thin smear, RDT, PCR), babesia, leishmania, T. cruzi, strongyloides, schistosoma, cysticercosis, toxoplasma, amoeba, giardia/cryptosporidium.
Viral extended: SARS-CoV-2 (PCR, Ag, Ab), enterovirus, norovirus, RSV, influenza A/B, adenovirus, hMPV, PIV, BK/JC virus.

=== Electrophysiological Tests

Cardiac EP: 12-lead ECG, Holter (24-48 h), event monitor, MCT, ILR (2-3 years), exercise ECG, SAECG, T-wave alternans, invasive EPS + 3D electro-anatomical mapping (CARTO/NavX), wearable patch (Zio).

EEG: routine (awake), sleep-deprived, long-term video-EEG (LTM/EMU), ambulatory (24-72 h), quantitative (qEEG), high-density (hdEEG, 64-256 electrodes), SEEG (depth), subdural grid/strip, intraoperative ECoG, ERG, VEP, BAER/ABR, SSEP, MEP, EOG, ECoG, ASSR, EGG.

EMG/NCS: motor NCS (CMAP — amplitude/latency/CV/F-wave), sensory NCS (SNAP), needle EMG (MUAP, recruiting, spontaneous activity — fibrillations/PSW/fasciculations), SFEMG (jitter + blocking), RNS (decrement MG; increment LEMS), H-reflex, blink reflex, SSR, QST, microneurography (MSNA).

Sleep: PSG (Type 1), HSAT (Type 3), MSLT, MWT, actigraphy, CPAP titration, ETCO#sub[2]/TcCO#sub[2].

Autonomic: HRV (time/frequency domain), baroreflex sensitivity, Valsalva ratio, 30:15 ratio, deep breathing E:I ratio, sustained handgrip, QSART (postganglionic sudomotor), thermoregulatory sweat test, skin biopsy (IENFD), corneal confocal microscopy, quantitative pupillometry, plasma catecholamines (supine + standing), cardiac #super[123]I-MIBG SPECT.

=== Physical Examination Maneuvers

Neurological: orthostatic vitals, Dix-Hallpike, Roll test, head impulse test, nystagmus examination, gait assessment, Romberg, tandem gait, finger-to-nose, heel-to-shin, RAM, Jendrassik, DTR, clonus, Babinski, pronator drift, Spurling, Lhermitte, Hoffmann, Froment, Wartenberg.

Musculoskeletal/orthopedic: McMurray, Lachman, drawer tests, valgus/varus stress, patellar apprehension, Neer, Hawkins-Kennedy, empty can (Jobe), drop arm, Finkelstein, Phalen, Tinel, Durkan, straight leg raise (Lasègue), crossed SLR, FABER (Patrick), FADIR, Trendelenburg, Thomas, Ortolani/Barlow, Galeazzi.

Abdominal: Murphy, McBurney/Rovsing, psoas/obturator, Blumberg (rebound), Carnett, Cullen/Grey-Turner, shifting dullness.

ENT: Rinne/Weber, fistula test, whispered voice, tuning fork battery.

Ophthalmological: cover-uncover, Amsler, Ishihara, slit lamp, fundoscopy, tonometry, Marcus Gunn/RAPD, swinging flashlight, Schirmer.

=== Symptom-Response / Functional Outcome Tests

#figure(
  table(
    columns: (1.2fr, 1.2fr, 1.3fr, 1.3fr),
    align: horizon,
    table.header([Test], [Mechanism Probed], [Disease], [Response = Diagnosis]),
    [Sublingual nitroglycerin], [NO donor $arrow$ smooth muscle relaxation], [Esophageal spasm], [Reproduces chest pain + manometric change],
    [Desmopressin response], [Renal V#sub[2] receptor], [Central vs nephrogenic DI], [Urine concentration = central; no change = nephrogenic],
    [Edrophonium/ice pack/sleep], [AChE inhibition / cold / rest $arrow$ ACh replenishment], [Myasthenia gravis], [Transient ptosis improvement],
    [Lactose/fructose breath test], [Lactase / fructose absorption], [Lactose intolerance, malabsorption], [H#sub[2] rise >20 ppm + symptoms],
    [Lactulose/glucose breath test], [Small bowel bacterial metabolism], [SIBO], [Early H#sub[2]/CH#sub[4] peak],
    [Urea breath test], [H. pylori urease], [H. pylori gastritis], [#super[13]CO#sub[2] excretion = active infection],
    [Secretin stimulation], [Pancreatic exocrine function], [Chronic pancreatitis], [Bicarbonate $lt.80$ mEq/L],
    [72h fasting test], [Insulin suppression], [Insulinoma], [Hypoglycemia with inappropriately high insulin/C-peptide],
    [ABI with exercise], [Arterial stenosis], [Peripheral artery disease], [ABI drop $gt.eq$20% = significant stenosis],
    [Cold-induced urticaria (ice cube)], [Mast cell degranulation], [Cold urticaria], [Wheal at cold site],
    [Skin biopsy (IENFD)], [Intraepidermal nerve fiber density], [Small fiber neuropathy], [Reduced density at distal leg],
    [QSART (quantitative sudomotor)], [Postganglionic sympathetic sudomotor], [Autonomic neuropathy, SFN], [Reduced sweat volume],
    [Corneal confocal microscopy], [Corneal nerve density], [Diabetic neuropathy, SFN], [Reduced nerve fiber length],
    [CPET (2-day)], [Post-exertional physiological capacity], [ME/CFS (PEM)], [Day-2 VO#sub[2] decline $gt.eq$8% (contested)],
    [FeNO], [Eosinophilic airway inflammation], [Eosinophilic asthma], [FeNO >25-50 ppb = eosinophilic],
    [Impedance-pH monitoring], [Reflux-symptom association], [GERD, reflux-cough], [Symptom-association probability (SAP)],
    [CSF analysis], [CNS infection/inflammation], [Meningitis, encephalitis, MS], [Pleocytosis, low glucose (bacterial), OCBs],
    [Olfactometry (UPSIT)], [Olfactory function], [Post-viral, Parkinson's, Alzheimer's], [Hyposmia/anosmia pattern],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Symptom-response and functional outcome tests: symptom change or physiological measurement confirms mechanism integrity or identifies lesion.],
) <tbl:symptom-response>

== Part II: Therapeutic Techniques

=== Pharmacological

==== Receptor Agonists

#figure(
  table(
    columns: (1.5fr, 1.5fr, 2fr),
    align: horizon,
    table.header([Class / Drug], [Target / Mechanism], [Conditions]),
    [$beta_2$-agonists (albuterol, salmeterol, formoterol)], [$beta_2$ receptor $arrow$ bronchodilation], [Asthma, COPD],
    [$alpha_1$-agonists (midodrine, phenylephrine)], [$alpha_1$ receptor $arrow$ vasoconstriction], [Orthostatic hypotension],
    [$alpha_2$-agonists (clonidine, guanfacine)], [$alpha_2$ receptor $arrow$ sympathetic suppression], [Hypertension, ADHD, tics, PTSD],
    [Dopamine agonists (pramipexole, ropinirole, rotigotine)], [D#sub[2]/D#sub[3] receptor], [Parkinson's, RLS],
    [Dopamine agonists (bromocriptine, cabergoline)], [D#sub[2] receptor (pituitary)], [Prolactinoma, acromegaly],
    [5-HT#sub[1] agonists (triptans — sumatriptan, rizatriptan)], [5-HT#sub[1B/1D] receptor $arrow$ vasoconstriction, CGRP inhibition], [Migraine acute],
    [GLP-1 agonists (semaglutide, liraglutide, dulaglutide)], [GLP-1 receptor $arrow$ insulin secretion, satiety, gastric emptying], [T2DM, obesity, CV risk reduction],
    [GIP/GLP-1 dual (tirzepatide)], [GIP + GLP-1 receptor], [T2DM, obesity],
    [PPAR-$gamma$ agonists (pioglitazone)], [PPAR-$gamma$ $arrow$ insulin sensitization, anti-inflammatory], [T2DM, NASH],
    [PPAR-$alpha$ agonists (fibrates — fenofibrate, gemfibrozil)], [PPAR-$alpha$ $arrow$ lipid metabolism], [Hypertriglyceridemia],
    [S1P receptor modulators (fingolimod, siponimod, ozanimod)], [S1P receptor $arrow$ lymphocyte sequestration in lymph nodes], [Multiple sclerosis],
    [$mu$-opioid agonists (morphine, fentanyl, oxycodone, methadone, hydromorphone)], [$mu$-opioid receptor $arrow$ analgesia, respiratory depression], [Moderate-severe pain],
    [Cannabinoids (dronabinol, nabilone, CBD)], [CB1/CB2 receptors $arrow$ antiemetic, appetite, analgesia], [Chemotherapy nausea, chronic pain, spasticity],
    [Melatonin agonists (ramelteon, tasimelteon)], [MT#sub[1]/MT#sub[2] receptor $arrow$ circadian phase shift], [Insomnia, non-24h sleep-wake, jet lag],
    [Orexin agonists (emerging)], [Orexin receptor $arrow$ wakefulness], [Narcolepsy type 1 (investigational)],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Receptor agonists: drugs that activate physiological signaling pathways.],
) <tbl:agonists>

==== Receptor Antagonists / Blockers

#figure(
  table(
    columns: (1.5fr, 1.5fr, 2fr),
    align: horizon,
    table.header([Class / Drug], [Target / Mechanism], [Conditions]),
    [$beta$-blockers (propranolol, metoprolol, carvedilol, bisoprolol, nebivolol)], [$beta_1$/$beta_2$ blockade $arrow$ $arrow$ HR, contractility, renin], [HTN, HF, MI, angina, migraine, essential tremor, anxiety],
    [$alpha_1$-blockers (prazosin, doxazosin, tamsulosin)], [$alpha_1$ blockade $arrow$ vasodilation, smooth muscle relaxation], [HTN, PTSD nightmares, BPH],
    [AT#sub[1] blockers (losartan, valsartan, candesartan, irbesartan)], [AT#sub[1] receptor blockade $arrow$ vasodilation, anti-fibrotic, anti-inflammatory], [HTN, HF, CKD nephroprotection],
    [H#sub[1] antihistamines (cetirizine, loratadine, fexofenadine, diphenhydramine)], [H#sub[1] receptor], [Allergy, urticaria, MCAS],
    [H#sub[2] antihistamines (famotidine, cimetidine, nizatidine)], [H#sub[2] receptor $arrow$ $arrow$ gastric acid], [GERD, PUD, MCAS],
    [D#sub[2] antagonists (haloperidol, risperidone, olanzapine, quetiapine)], [D#sub[2] receptor $arrow$ antipsychotic, antiemetic], [Schizophrenia, bipolar, agitation, nausea],
    [5-HT#sub[3] antagonists (ondansetron, granisetron)], [5-HT#sub[3] receptor $arrow$ antiemetic (vagal + CTZ)], [Chemotherapy/post-op nausea],
    [NK#sub[1] antagonists (aprepitant, fosaprepitant)], [NK#sub[1] receptor $arrow$ substance P block], [Chemotherapy nausea (delayed phase)],
    [CGRP antagonists (acute: ubrogepant, rimegepant; prevention: CGRP mAbs)], [CGRP receptor or ligand], [Migraine],
    [P2Y#sub[12] antagonists (clopidogrel, ticagrelor, prasugrel)], [P2Y#sub[12] receptor $arrow$ platelet aggregation inhibition], [ACS, PCI, stroke prevention],
    [Endothelin receptor antagonists (bosentan, ambrisentan, macitentan)], [ET#sub[A]/ET#sub[B] receptor $arrow$ vasodilation], [Pulmonary arterial hypertension],
    [MR antagonists (spironolactone, eplerenone, finerenone)], [Mineralocorticoid receptor $arrow$ anti-fibrotic, diuretic], [HF, primary aldosteronism, CKD],
    [IL-1 antagonists (anakinra, canakinumab)], [IL-1 receptor], [Autoinflammatory syndromes, gout, CV (CANTOS)],
    [IL-6 antagonists (tocilizumab, sarilumab)], [IL-6 receptor], [RA, cytokine storm/COVID-19, Castleman, GCA, sJIA],
    [IL-17 antagonists (secukinumab, ixekizumab, brodalumab)], [IL-17A or receptor], [Psoriasis, PsA, AS],
    [IL-23 antagonists (ustekinumab, guselkumab, risankizumab)], [IL-23 p19 or p40 subunit], [Psoriasis, PsA, IBD],
    [IL-4/IL-13 antagonists (dupilumab)], [IL-4R$alpha$ shared subunit], [Atopic dermatitis, asthma, nasal polyps, eosinophilic esophagitis],
    [IL-5/IL-5R antagonists (mepolizumab, benralizumab)], [IL-5 or IL-5R$alpha$ $arrow$ eosinophil depletion], [Eosinophilic asthma, EGPA, HES],
    [TNF-$alpha$ antagonists (infliximab, adalimumab, etanercept, certolizumab, golimumab)], [TNF-$alpha$], [RA, IBD, psoriasis, AS, uveitis],
    [IgE antagonist (omalizumab)], [Free IgE $arrow$ prevents mast cell/basophil binding], [Allergic asthma, chronic spontaneous urticaria],
    [Complement C5 antagonists (eculizumab, ravulizumab)], [C5 $arrow$ MAC formation prevented], [PNH, aHUS, generalized MG],
    [C1s antagonist (sutimlimab)], [C1s $arrow$ classical complement pathway], [Cold agglutinin disease],
    [BAFF/BLyS antagonist (belimumab)], [BLyS $arrow$ B-cell survival], [SLE],
    [BCMA antagonist (belantamab mafodotin)], [BCMA $arrow$ plasma cell depletion], [Multiple myeloma],
    [CD20 antagonists (rituximab, ocrelizumab, ofatumumab)], [CD20 $arrow$ B-cell depletion], [B-cell lymphoma, RA, MS, AAV, pemphigus],
    [CD38 antagonist (daratumumab)], [CD38 $arrow$ plasma cell depletion], [Multiple myeloma, autoimmune (emerging)],
    [FcRn antagonists (efgartigimod, rozanolixizumab)], [FcRn $arrow$ IgG recycling block], [Generalized MG, ITP],
    [Integrin antagonists (natalizumab, vedolizumab)], [$alpha_4$-integrin or $alpha_4$$beta_7$ $arrow$ lymphocyte trafficking], [MS (natalizumab), IBD (vedolizumab)],
    [PCSK9 antagonists (evolocumab, alirocumab)], [PCSK9 $arrow$ LDL receptor recycling], [Hyperlipidemia, ASCVD],
    [RANKL antagonist (denosumab)], [RANKL $arrow$ osteoclast inhibition], [Osteoporosis, bone metastases],
    [PD-1/PD-L1 antagonists (pembrolizumab, nivolumab, atezolizumab)], [PD-1/PD-L1 $arrow$ T-cell activation], [Cancer immunotherapy (multiple)],
    [CTLA-4 antagonist (ipilimumab)], [CTLA-4 $arrow$ T-cell priming enhancement], [Melanoma, RCC (with nivolumab)],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Receptor antagonists and blockers: drugs that inhibit signaling by occupying receptors. Includes monoclonal antibodies for extracellular targets.],
) <tbl:antagonists>

==== Enzyme Inhibitors

#figure(
  table(
    columns: (1.5fr, 1.3fr, 2.2fr),
    align: horizon,
    table.header([Class / Drug], [Target Enzyme / Pathway], [Conditions]),
    [ACE inhibitors (lisinopril, ramipril, enalapril)], [Angiotensin-converting enzyme], [HTN, HF, CKD nephroprotection],
    [Direct renin inhibitor (aliskiren)], [Renin], [HTN],
    [Statins (atorvastatin, rosuvastatin, simvastatin)], [HMG-CoA reductase $arrow$ $arrow$ LDL, anti-inflammatory], [Hyperlipidemia, ASCVD prevention],
    [COX inhibitors (ibuprofen, naproxen, celecoxib, indomethacin)], [COX-1/COX-2 $arrow$ $arrow$ prostaglandins], [Pain, inflammation, OA, RA],
    [COX-2 selective (celecoxib, etoricoxib)], [COX-2 preferentially], [Pain, inflammation (GI-sparing)],
    [5$alpha$-reductase inhibitors (finasteride, dutasteride)], [5$alpha$-reductase $arrow$ $arrow$ DHT], [BPH, androgenic alopecia],
    [Aromatase inhibitors (letrozole, anastrozole, exemestane)], [Aromatase $arrow$ $arrow$ estradiol], [Breast cancer (ER+)],
    [Xanthine oxidase inhibitors (allopurinol, febuxostat)], [Xanthine oxidase $arrow$ $arrow$ uric acid], [Gout, tumor lysis prophylaxis],
    [DPP-4 inhibitors (sitagliptin, linagliptin)], [DPP-4 $arrow$ $arrow$ incretin degradation], [T2DM],
    [SGLT2 inhibitors (empagliflozin, dapagliflozin, canagliflozin)], [SGLT2 $arrow$ glycosuria; also anti-inflammatory, mitochondrial], [T2DM, HF (HFrEF, HFpEF), CKD],
    [PDE5 inhibitors (sildenafil, tadalafil)], [PDE5 $arrow$ $arrow$ cGMP $arrow$ vasodilation], [ED, PAH, Raynaud's],
    [PDE4 inhibitors (roflumilast, apremilast)], [PDE4 $arrow$ $arrow$ cAMP $arrow$ anti-inflammatory], [COPD (roflumilast), psoriasis, PsA (apremilast)],
    [Acetylcholinesterase inhibitors (donepezil, rivastigmine, galantamine)], [AChE $arrow$ $arrow$ synaptic ACh], [Alzheimer's, dementia],
    [MAO-B inhibitors (selegiline, rasagiline, safinamide)], [MAO-B $arrow$ $arrow$ dopamine degradation], [Parkinson's disease],
    [MAO inhibitors (phenelzine, tranylcypromine)], [MAO-A/MAO-B $arrow$ $arrow$ monoamine degradation], [Treatment-resistant depression],
    [COMT inhibitors (entacapone, opicapone)], [COMT $arrow$ $arrow$ L-DOPA degradation], [Parkinson's (adjunct to L-DOPA)],
    [DOPA decarboxylase inhibitors (carbidopa, benserazide)], [DOPA decarboxylase $arrow$ prevents peripheral conversion of L-DOPA], [Parkinson's (only in combination with L-DOPA)],
    [BTK inhibitors (ibrutinib, acalabrutinib, zanubrutinib)], [BTK $arrow$ B-cell receptor signaling], [B-cell malignancies (CLL, MCL), autoimmune (emerging)],
    [JAK inhibitors (tofacitinib, baricitinib, upadacitinib)], [JAK1/2/3 $arrow$ cytokine signaling], [RA, PsA, UC, COVID-19, alopecia areata],
    [mTOR inhibitors (sirolimus, everolimus, temsirolimus)], [mTORC1 $arrow$ immunosuppression, anti-proliferative], [Transplant, sirolimus-coated stents, cancer, TSC],
    [PARP inhibitors (olaparib, niraparib, rucaparib)], [PARP1/2 $arrow$ DNA repair (synthetic lethality)], [BRCA-mutant breast/ovarian/pancreatic/prostate cancer],
    [Kinase inhibitors (broad)], [TKIs (imatinib — BCR-ABL, c-KIT; erlotinib/gefitinib/osimertinib — EGFR; alectinib/crizotinib — ALK/ROS1; vemurafenib/dabrafenib — BRAF; trametinib — MEK; sunitinib/sorafenib — VEGFR; palbociclib/ribociclib — CDK4/6; idelalisib — PI3K; etc.)], [CML, NSCLC, melanoma, RCC, GIST, breast cancer, thyroid, CLL],
    [Proteasome inhibitors (bortezomib, carfilzomib, ixazomib)], [26S proteasome $arrow$ protein degradation block], [Multiple myeloma, mantle cell lymphoma],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Enzyme inhibitors: drugs that block specific enzymatic steps in biochemical or signaling pathways.],
) <tbl:enzyme-inhibitors>

==== Ion Channel Modulators

#figure(
  table(
    columns: (1.5fr, 1.3fr, 2.2fr),
    align: horizon,
    table.header([Class / Drug], [Channel Target], [Conditions]),
    [Na#super[+] channel blockers — local anesthetics (lidocaine, mexiletine)], [Voltage-gated Na#super[+] channels], [Arrhythmia, neuropathic pain],
    [Na#super[+] channel blockers — anticonvulsants (carbamazepine, oxcarbazepine, lamotrigine, phenytoin)], [Voltage-gated Na#super[+] channels], [Epilepsy, trigeminal neuralgia, bipolar],
    [Late I#sub[Na] blocker (ranolazine)], [Late cardiac Na#super[+] current $arrow$ $arrow$ diastolic Ca#super[2+] overload], [Chronic angina],
    [ENaC blocker (amiloride)], [Epithelial Na#super[+] channel], [Liddle syndrome, NHE1 inhibition (experimental autoimmunity)],
    [Ca#super[2+] channel blockers — DHP (amlodipine, nifedipine)], [L-type Ca#sub[v] channels $arrow$ vasodilation], [HTN, Raynaud's, angina (vasospastic)],
    [Ca#super[2+] channel blockers — non-DHP (diltiazem, verapamil)], [L-type Ca#sub[v] channels (cardiac)], [Arrhythmia (SVT, AF rate control), HTN, migraine prophylaxis],
    [$alpha_2$$delta$ ligands (gabapentin, pregabalin)], [$alpha_2$$delta$ subunit of VGCC $arrow$ $arrow$ neurotransmitter release], [Neuropathic pain, fibromyalgia, epilepsy],
    [N-type Ca#super[2+] blocker (ziconotide)], [N-type Ca#sub[v] channels (intrathecal)], [Severe chronic pain (intrathecal pump)],
    [K#super[+] channel openers (minoxidil, diazoxide)], [K#sub[ATP] channels], [HTN (minoxidil), insulinoma/hypoglycemia (diazoxide)],
    [K#super[+] channel blockers — Class III antiarrhythmics (amiodarone, sotalol, dofetilide, ibutilide)], [hERG/K#sub[v] channels $arrow$ $arrow$ APD], [AF, atrial flutter, VT],
    [K#sub[ATP] blockers (sulfonylureas — glipizide, glyburide)], [Pancreatic $beta$-cell K#sub[ATP] $arrow$ insulin secretion], [T2DM],
    [Cl#super[$-$] channel activator (ivacaftor, lumacaftor/ivacaftor, elexacaftor/tezacaftor/ivacaftor)], [CFTR $arrow$ $arrow$ Cl#super[$-$] conductance], [Cystic fibrosis (genotype-specific)],
    [TRPV1 agonist (capsaicin)], [TRPV1 $arrow$ desensitization with repeated application], [Topical neuropathic pain, post-herpetic neuralgia],
    [I#sub[f] channel blocker (ivabradine)], [HCN channels $arrow$ $arrow$ SA node rate], [HF (HR >70), inappropriate sinus tachycardia],
    [K#sub[ir]6.2/SUR1 activator (diazoxide)], [K#sub[ATP] channel], [Hyperinsulinemic hypoglycemia],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Ion channel modulators: drugs that alter ion channel conductance, affecting membrane excitability and cellular signaling.],
) <tbl:ion-channel>

==== Hormone / Endocrine Therapies

#figure(
  table(
    columns: (1.5fr, 1.3fr, 2.2fr),
    align: horizon,
    table.header([Therapy], [Mechanism], [Conditions]),
    [Thyroid hormone (levothyroxine T4, liothyronine T3, desiccated thyroid)], [Thyroid hormone replacement $arrow$ metabolic rate, development], [Hypothyroidism],
    [Glucocorticoids (prednisone, methylprednisolone, dexamethasone, hydrocortisone)], [GR-mediated transrepression (anti-inflammatory) and transactivation], [Autoimmune/inflammatory, replacement (adrenal insufficiency), allergic, transplant],
    [Mineralocorticoid (fludrocortisone)], [MR activation $arrow$ Na#super[+] retention, volume expansion], [Adrenal insufficiency, orthostatic hypotension],
    [Testosterone replacement (IM/transdermal/buccal/nasal)], [AR signaling $arrow$ anabolic, erythropoietic, libido], [Male hypogonadism],
    [Estrogen + progesterone (HRT)], [ER/PR signaling $arrow$ symptom relief, bone protection], [Menopause, POI],
    [DHEA], [Androgen/estrogen precursor], [Adrenal insufficiency (adjunct), mood/libido (limited evidence)],
    [Insulin (rapid-acting, short-acting, intermediate, long-acting, ultra-long)], [Insulin receptor $arrow$ glucose uptake, anabolic], [T1DM, advanced T2DM, hyperkalemia],
    [Glucagon], [Glucagon receptor $arrow$ glycogenolysis, gluconeogenesis], [Severe hypoglycemia, beta-blocker overdose, esophageal food impaction],
    [GH / IGF-1 replacement (somatropin, mecasermin)], [GH receptor $arrow$ IGF-1 $arrow$ growth, metabolism], [GH deficiency, IGF-1 deficiency (Laron, IGF-1 gene)],
    [Vasopressin / desmopressin (DDAVP)], [V#sub[2] receptor $arrow$ water reabsorption; VWF release], [Central DI, nocturnal enuresis, von Willebrand disease, hemophilia A],
    [Oxytocin], [Oxytocin receptor $arrow$ uterine contraction, milk ejection], [Labor induction/augmentation, postpartum hemorrhage],
    [Calcitonin], [Calcitonin receptor $arrow$ $arrow$ osteoclast activity], [Hypercalcemia, Paget's disease (largely historical), osteoporosis],
    [PTH analog (teriparatide, abaloparatide)], [PTH1R $arrow$ anabolic bone formation], [Osteoporosis (severe)],
    [Melatonin], [MT#sub[1]/MT#sub[2] $arrow$ sleep onset, circadian phase shift], [Insomnia, circadian rhythm disorders, jet lag],
    [Somatostatin analogs (octreotide, lanreotide, pasireotide)], [SSTR $arrow$ $arrow$ GH, IGF-1, hormone secretion], [Acromegaly, NET, variceal bleeding],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Hormone and endocrine therapies: replacement or pharmacological modulation of endocrine axes.],
) <tbl:hormones>

==== Antimicrobials

Antibacterial classes: penicillins, cephalosporins (1st-5th gen), carbapenems, monobactams, macrolides, tetracyclines (incl. sub-antimicrobial dose doxycycline for MMP inhibition), fluoroquinolones, aminoglycosides, glycopeptides (vancomycin), oxazolidinones (linezolid), lipopeptides (daptomycin), metronidazole, clindamycin, rifamycins (rifampin, rifabutin, rifaximin), trimethoprim-sulfamethoxazole, fosfomycin, nitrofurantoin, polymyxins (colistin).

Antiviral classes: acyclovir/valacyclovir (HSV/VZV), ganciclovir/valganciclovir (CMV), oseltamivir/zanamivir/baloxavir (influenza), remdesivir/nirmatrelvir-ritonavir/molnupiravir (COVID-19), antiretrovirals (NRTIs, NNRTIs, PIs, INSTIs, entry/fusion inhibitors — HIV), sofosbuvir/velpatasvir (HCV DAAs), entecavir/tenofovir (HBV), letermovir (CMV prophylaxis).

Antifungal classes: azoles (fluconazole, voriconazole, posaconazole, isavuconazole), echinocandins (caspofungin, micafungin, anidulafungin), polyenes (amphotericin B deoxycholate, liposomal), terbinafine, flucytosine.

Antiparasitic: albendazole/mebendazole, ivermectin, praziquantel, artemisinin derivatives (artesunate, artemether-lumefantrine), atovaquone-proguanil, nitazoxanide, miltefosine, benznidazole/nifurtimox.

==== Immunomodulators (Non-Biologic)

#figure(
  table(
    columns: (1.5fr, 1.3fr, 2.2fr),
    align: horizon,
    table.header([Drug], [Mechanism], [Conditions]),
    [Methotrexate], [Inhibits DHFR $arrow$ $arrow$ purine/pyrimidine synthesis; adenosine release $arrow$ anti-inflammatory], [RA, psoriasis, PsA, IBD],
    [Azathioprine / 6-MP], [Purine synthesis inhibition (active metabolite 6-thioguanine)], [IBD, autoimmune, transplant],
    [Mycophenolate mofetil], [IMPDH inhibitor $arrow$ $arrow$ lymphocyte purine synthesis], [Transplant, lupus nephritis, autoimmune],
    [Cyclophosphamide], [DNA alkylation $arrow$ lymphocyte and myeloid cell depletion], [Severe autoimmune (ANCA vasculitis, lupus nephritis, NSIP)],
    [Calcineurin inhibitors (cyclosporine, tacrolimus)], [Inhibit calcineurin $arrow$ $arrow$ IL-2 transcription $arrow$ T-cell activation], [Transplant, autoimmune (atopic dermatitis, RA, nephrotic)],
    [Hydroxychloroquine], [TLR7/9 inhibition, lysosomal alkalization $arrow$ $arrow$ antigen presentation and IFN], [SLE, RA, antiphospholipid],
    [Sulfasalazine], [NF-$kappa$B inhibition, adenosine release], [IBD, RA, PsA],
    [Leflunomide], [DHODH inhibitor $arrow$ $arrow$ pyrimidine synthesis in lymphocytes], [RA, PsA],
    [Dimethyl fumarate], [NRF2 activation $arrow$ anti-oxidant, $arrow$ lymphocyte counts], [Multiple sclerosis],
    [Glatiramer acetate], [Myelin basic protein analog $arrow$ immune decoy/suppressive T-cells], [Multiple sclerosis],
    [IVIG / SCIG], [Multiple: Fc receptor blockade, anti-idiotype, complement scavenging, anti-inflammatory], [Immunodeficiency, CIDP, ITP, Kawasaki, autoimmune],
    [Plasmapheresis (TPE)], [Removes plasma proteins — autoantibodies, immune complexes], [MG, GBS, Goodpasture, TTP, antibody-mediated autoimmune],
    [Immunoadsorption], [Selective removal of IgG or specific antibodies via affinity columns], [Autoimmune (MG, dilated cardiomyopathy, SLE — selective)],
    [Low-dose naltrexone (LDN)], [Transient opioid receptor block $arrow$ rebound endorphin and anti-inflammatory via TLR4], [Fibromyalgia, IBD, MS, chronic pain (off-label)],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Non-biologic immunomodulators and immunosuppressants. Biologics are covered in Section "Receptor Antagonists / Blockers" above as most are receptor-ligand antagonists.],
) <tbl:immunomodulators>

==== Gene / RNA Therapies

#figure(
  table(
    columns: (1.5fr, 1.3fr, 2.2fr),
    align: horizon,
    table.header([Therapy], [Mechanism], [Conditions]),
    [Gene replacement (voretigene neparvovec)], [AAV vector delivers RPE65 gene to retinal cells], [RPE65-mediated inherited retinal dystrophy],
    [Gene replacement (onasemnogene abeparvovec)], [AAV9 vector delivers SMN1 gene], [Spinal muscular atrophy (SMA) type 1],
    [Gene replacement (etranacogene dezaparvovec)], [AAV5 vector delivers factor IX (Padua variant)], [Hemophilia B],
    [Antisense oligonucleotide (nusinersen)], [ASO promotes exon 7 inclusion in SMN2 pre-mRNA], [SMA],
    [Antisense oligonucleotide (eteplirsen, golodirsen)], [ASO induces exon 53 skipping in dystrophin], [Duchenne muscular dystrophy],
    [siRNA (patisiran)], [siRNA targets TTR mRNA $arrow$ $arrow$ transthyretin production], [Hereditary ATTR amyloidosis with polyneuropathy],
    [siRNA (inclisiran)], [siRNA targets PCSK9 mRNA $arrow$ $arrow$ LDL], [ASCVD, HeFH],
    [siRNA (givosiran)], [siRNA targets ALAS1 $arrow$ $arrow$ ALA/PBG in acute hepatic porphyria], [Acute hepatic porphyria],
    [CRISPR/Cas9 (exagamglogene autotemcel)], [BLC11A enhancer disruption $arrow$ $arrow$ HbF expression], [Sickle cell disease, beta-thalassemia],
    [CAR-T (tisagenlecleucel, axicabtagene ciloleucel, lisocabtagene maraleucel)], [Autologous T-cells engineered with anti-CD19 CAR], [B-cell ALL, DLBCL, follicular lymphoma],
    [CAR-T (idecabtagene vicleucel, ciltacabtagene autoleucel)], [Anti-BCMA CAR-T], [Multiple myeloma],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Gene and RNA-based therapies: gene replacement, gene editing, antisense, siRNA, and CAR-T cell therapies.],
) <tbl:gene-rna>

==== Chelation / Detoxification

Iron chelators: deferoxamine (IV/SC), deferasirox (PO), deferiprone (PO) — iron overload (hemochromatosis, transfusion-dependent thalassemia).
Copper chelators: D-penicillamine, trientine — Wilson's disease; zinc salts (induction metallothionein $arrow$ copper sequestration).
Heavy metal chelators: dimercaprol/BAL (arsenic, mercury, lead), EDTA (lead — controversial cardiovascular), DMPS/DMSA (mercury, lead), Prussian blue (cesium, thallium).
Other detoxification agents: NAC — acetaminophen overdose (glutathione repletion); fomepizole/ethanol — toxic alcohol ingestion (methanol, ethylene glycol).

==== Enzyme Replacement Therapy (ERT)

Imiglucerase/velaglucerase (Gaucher disease), agalsidase alfa/beta (Fabry disease), alglucosidase alfa (Pompe disease), laronidase (MPS I), idursulfase (MPS II), elosulfase alfa (MPS IVA), asfotase alfa (hypophosphatasia), pegvaliase (PKU), sebelipase alfa (LAL deficiency).

==== Metabolic Cofactors / Nutraceuticals

#figure(
  table(
    columns: (1.5fr, 1.3fr, 2.2fr),
    align: horizon,
    table.header([Agent], [Mechanism], [Conditions with Evidence]),
    [CoQ10 / ubiquinol], [ETC cofactor (Complex I/II $arrow$ III electron transfer), antioxidant], [Statin myopathy, mitochondrial disorders, HF],
    [L-carnitine / acetyl-L-carnitine], [Fatty acid transport across inner mitochondrial membrane], [Primary/secondary carnitine deficiency, dialysis, valproate toxicity],
    [Creatine monohydrate], [Phosphocreatine buffer system $arrow$ ATP regeneration], [Muscle performance, neuromuscular disease, neuroprotection (TBI, aging)],
    [NADH / NAD#super[+] precursors (NR, NMN, niacin)], [Redox cofactor (Complex I substrate); sirtuin and PARP substrate], [NAD#super[+] deficiency states; mitochondrial disorders (emerging)],
    [D-ribose], [Pentose phosphate pathway $arrow$ nucleotide synthesis], [Fibromyalgia, chronic fatigue (limited evidence)],
    [$alpha$-lipoic acid (ALA)], [Mitochondrial cofactor (PDH, $alpha$-KGDH), antioxidant (regenerates glutathione/C/E)], [Diabetic neuropathy],
    [NAC (N-acetylcysteine)], [Glutathione precursor; mucolytic; modulates glutamate via cystine-glutamate antiporter], [Acetaminophen overdose, CF, COPD, psychiatric (trichotillomania, OCD)],
    [Glutathione (IV/oral/liposomal)], [Primary intracellular antioxidant; xenobiotic conjugation], [Acetaminophen toxicity (NAC preferred); speculative for mitochondrial/oxidative conditions],
    [Magnesium (glycinate, malate, citrate, L-threonate, sulfate, oxide)], [Cofactor for >300 enzymes; NMDA antagonism; smooth muscle relaxation; ATP-Mg complex], [Hypomagnesemia, migraine, constipation, preeclampsia/eclampsia, torsades de pointes, asthma],
    [Vitamin D3 (cholecalciferol)], [VDR-mediated gene regulation; immune modulation; calcium homeostasis], [Deficiency, osteoporosis prevention, immune support],
    [B vitamins (B1/B2/B3/B5/B6/B7/B9/B12)], [Multiple: ETC (B2 FAD, B3 NAD), methylation (B9/B12), transamination (B6), carboxylation (B7)], [Deficiency syndromes (beriberi, pellagra, anemia, neuropathy)],
    [Omega-3 (EPA/DHA)], [Cell membrane incorporation $arrow$ anti-inflammatory resolvins/maresins; TRPV1 modulation], [Hypertriglyceridemia, CV risk reduction, inflammatory (RA — modest), mood (depression — adjunct)],
    [Curcumin], [NF-$kappa$B inhibition, NRF2 activation, COX/LOX inhibition — broad anti-inflammatory], [OA (pain), inflammatory conditions (limited bioavailability)],
    [Resveratrol], [SIRT1 activation $arrow$ mitochondrial biogenesis, anti-inflammatory], [Metabolic syndrome (weak evidence)],
    [PQQ (pyrroloquinoline quinone)], [Mitochondrial biogenesis (PGC-1$alpha$ pathway), antioxidant], [Mitochondrial support (preliminary)],
    [MitoQ], [Mitochondria-targeted ubiquinone (TPP+ moiety) $arrow$ antioxidant], [Mitochondrial disease, aging (preliminary)],
    [Spermidine], [Autophagy induction via eIF5A hypusination], [Cell aging, cardiovascular (preliminary)],
    [Probiotics (Lactobacillus, Bifidobacterium, Saccharomyces, etc.)], [Microbiome modulation: barrier function, SCFA production, immunomodulation], [IBS (modest), antibiotic-associated diarrhea, pouchitis, IBD (adjunct)],
    [Prebiotics (inulin, FOS, GOS, RS2/RS3, PHGG)], [Fermented to SCFA (butyrate, propionate, acetate) by gut microbiota], [IBS (limited), metabolic health (preliminary)],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Metabolic cofactors and nutraceuticals: agents with established biochemical mechanisms and varying levels of clinical evidence.],
) <tbl:nutraceuticals>

=== Surgical Interventions

==== Resection, Transplantation, Bypass, Reconstruction

Resection: tumor resection (oncologic), lobectomy/pneumonectomy, colectomy, gastrectomy, nephrectomy, prostatectomy, hysterectomy/oophorectomy, thyroidectomy, parathyroidectomy, adrenalectomy, hypophysectomy, splenectomy, cholecystectomy, appendectomy, tonsillectomy/adenoidectomy.

Transplantation: solid organ (kidney — ESRD, liver — cirrhosis/HCC, heart — end-stage HF, lung — CF/ILD/PAH, pancreas — T1DM, intestine — short bowel), composite tissue (hand, face), HSC/bone marrow transplant (hematologic malignancy, aplastic anemia, severe autoimmune, SCID), corneal transplant, islet cell transplant (T1DM — experimental).

Bypass/revascularization: CABG (multi-vessel CAD), peripheral arterial bypass (PAD/CLI), carotid endarterectomy, EC-IC bypass (Moyamoya).

Reconstruction: joint replacement (hip, knee, shoulder — end-stage OA, fracture), ligament reconstruction (ACL, PCL, MCL, UCL), hernia repair, spinal fusion, craniofacial reconstruction, cleft lip/palate repair, breast reconstruction (post-mastectomy), vascular repair (aneurysm repair — open/EVAR).

==== Ablation / Destruction

Radiofrequency ablation: tumor (liver, lung, bone), cardiac arrhythmia (AF, SVT, VT, WPW), nerve (facet pain, trigeminal neuralgia).
Cryoablation: tumor (renal, prostate, liver), cardiac (AF, AVNRT).
Other: microwave ablation (tumor), HIFU (prostate, uterine fibroids, essential tremor), laser (varicose veins, retinal, dermatologic), chemical ablation (ethanol, neurolytic blocks), endometrial ablation, bariatric surgery (sleeve, RYGB — metabolic + mechanical).

==== Neuromodulation / Implanted Devices

DBS (PD, essential tremor, dystonia, OCD, epilepsy, emerging depression), VNS (epilepsy, TRD, emerging RA/IBD/stroke), SCS (chronic pain — FBSS, CRPS), sacral nerve stimulation (OAB, fecal incontinence), RNS (epilepsy), hypoglossal nerve stimulator (OSA), phrenic nerve/diaphragm pacing (ventilator dependence, SCI), peripheral nerve stimulation (chronic pain, cluster headache), PTNS (OAB), intrathecal drug delivery (baclofen pump — spasticity; morphine/ziconotide — pain).

==== Minimally Invasive / Catheter-Based

PCI/coronary stenting (CAD, MI — DES, bioabsorbable), TAVR/TMVR (valve replacement), EVAR/TEVAR (aortic aneurysm repair), carotid stenting, mechanical thrombectomy (stroke, PE, DVT, MI), coil embolization/flow diversion (cerebral aneurysm, AVM), uterine artery embolization (fibroids), TIPS (portal HTN), balloon valvuloplasty, ASD/PFO closure, LAA closure (Watchman — AF stroke prevention), stenting (biliary, esophageal, tracheobronchial — malignant obstruction), cystoscopic stone removal.

=== Physical / Rehabilitative Therapies

Physical therapy modalities: therapeutic exercise (strength, endurance, ROM, balance, gait), manual therapy (joint mobilization, manipulation, soft tissue, myofascial release), TENS, ultrasound, NMES/FES, laser/low-level light therapy, diathermy, cryotherapy/heat, iontophoresis/phonophoresis. Vestibular rehabilitation (BPPV repositioning, habituation, gaze stabilization). Pelvic floor PT (biofeedback, manual, electrical stimulation). Lymphedema therapy (manual lymphatic drainage, compression bandaging). Pulmonary rehabilitation (exercise + education). Wound care (debridement, dressings, negative pressure/VAC).

Occupational therapy: ADL retraining, adaptive equipment, home/environment modification, energy conservation, work simplification, joint protection, cognitive rehabilitation, sensory integration, hand therapy/splinting, vision rehabilitation.

Speech-language pathology: dysphagia therapy (swallowing exercises, maneuvers, diet modification), aphasia therapy (post-stroke), voice therapy (muscle tension dysphonia, vocal fold paralysis), cognitive-communication therapy (TBI, dementia), AAC devices, LSVT (Parkinson's).

Respiratory therapy: supplemental O#sub[2], CPAP/BiPAP/ASV, mechanical ventilation, airway clearance techniques (chest PT, PEP, flutter valve, HF chest wall oscillation, autogenic drainage — CF, bronchiectasis), nebulizer/MDI, pulmonary function testing.

Cardiac/pulmonary rehabilitation: structured exercise + education post-MI, post-CABG, HF, transplant.

=== Device-Based Interventions

Cardiovascular: pacemakers (single, dual, biventricular/CRT), ICD, CRT-D, LVAD, ECMO, temporary pacing, IABP, Impella.

Neurological/sensory: cochlear implant, BAHA, retinal implant, responsive neurostimulation, intrathecal baclofen pump, VNS.

Metabolic/endocrine: insulin pump (CSII), CGM, closed-loop/artificial pancreas, ambulatory infusion pumps.

Respiratory: CPAP/APAP (OSA), BiPAP (neuromuscular, COPD, obesity hypoventilation), ASV (central/complex sleep apnea, Cheyne-Stokes), HFNC, mechanical ventilator, oxygen concentrator.

Genitourinary: urinary catheters (Foley, suprapubic, intermittent), ureteral stent, nephrostomy tube, penile implant, pessary.

Orthotics/prosthetics: AFO/KAFO, wrist/hand splints, spinal braces/TLSO/cervical collar/halo, upper/lower limb prosthetics (body-powered, myoelectric, microprocessor, osseointegration).

Dialysis/renal replacement: hemodialysis, peritoneal dialysis (CAPD, APD), CRRT, hemoperfusion, hemofiltration.

=== Dietary / Nutritional Interventions

Therapeutic diets: ketogenic (epilepsy, GLUT1 deficiency, PDH deficiency, metabolic syndrome), gluten-free (celiac disease, NCGS), low-FODMAP (IBS), exclusive enteral nutrition (pediatric Crohn's), low-histamine (histamine intolerance, MCAS), elimination diet (food intolerance identification), low-oxalate (enteric hyperoxaluria), tyramine-free (MAOI therapy), low-protein (CKD, urea cycle disorders), PKU diet, galactosemia diet, DASH (HTN), Mediterranean (CV, cognitive, anti-inflammatory), anti-inflammatory/AIP (autoimmune — weak evidence), elemental diet (CD, eosinophilic esophagitis, SIBO eradication).

Medical nutrition support: enteral nutrition (NG/ND, PEG/PEJ), parenteral nutrition (TPN/PPN), oral nutritional supplements, micronutrient repletion.

Provocative dietary testing: lactose/fructose/lactulose/glucose breath tests, DBPC food challenge, elimination-rechallenge.

=== Psychological / Behavioral Interventions

#figure(
  table(
    columns: (1.2fr, 1.3fr, 2.5fr),
    align: horizon,
    table.header([Modality], [Core Mechanism], [Conditions with Evidence]),
    [CBT (cognitive behavioral therapy)], [Restructuring maladaptive thoughts and behaviors], [Depression, anxiety, PTSD, insomnia (CBT-I), chronic pain, IBS],
    [DBT (dialectical behavior therapy)], [Emotion regulation, distress tolerance, interpersonal effectiveness], [Borderline personality disorder, self-harm, emotion dysregulation],
    [ACT (acceptance and commitment therapy)], [Psychological flexibility: acceptance + values-based action], [Chronic pain, anxiety, depression, psychosis],
    [Exposure therapy / ERP], [Habituation to feared stimuli; extinction learning], [OCD, phobias, PTSD (prolonged exposure)],
    [EMDR], [Bilateral stimulation + trauma processing], [PTSD],
    [IPT (interpersonal therapy)], [Improving interpersonal relationships and social functioning], [Depression],
    [MBCT / MBSR], [Mindfulness-based cognitive/relapse prevention and stress reduction], [Depression relapse prevention, anxiety, chronic pain],
    [MI (motivational interviewing)], [Client-centered exploration of ambivalence $arrow$ behaviour change], [Substance use, medication adherence, health behavior change],
    [Biofeedback], [Real-time physiological feedback (HR, HRV, muscle, skin temp, EEG)], [Headache, chronic pain, anxiety, urinary incontinence, hypertension],
    [HRV biofeedback], [Slow-paced breathing at resonance frequency $arrow$ $arrow$ baroreflex gain], [Anxiety, depression, PTSD, asthma (moderate evidence)],
    [Neurofeedback (EEG biofeedback)], [Operant conditioning of EEG frequency bands], [ADHD (moderate), anxiety, PTSD (limited)],
    [Family/couples therapy], [Systemic approach to relational dysfunction], [Family conflict, relationship distress, adolescent behavioral problems],
  ),
  kind: "table",
  supplement: [Table],
  caption: [Psychological and behavioral interventions: evidence-supported psychotherapies and biofeedback techniques.],
) <tbl:psychological>

=== Cellular / Regenerative Therapies

HSCT (hematologic malignancy, aplastic anemia, experimental for severe autoimmune — MS, scleroderma, SLE, CIDP).
CAR-T cell therapy (CD19/CD22/BCMA targeting — B-cell malignancies; emerging in autoimmune — SLE, myositis, scleroderma).
Mesenchymal stem cells (MSCs — experimental: GVHD, Crohn's fistulas, emerging autoimmune, orthopedic).
iPSC-derived cell therapies (experimental — retinal, cardiac, neural replacement).
PRP (platelet-rich plasma — tendinopathy, OA, wound — limited evidence).
Exosome/extracellular vesicle therapy (experimental — regenerative signaling).
Gene-modified cell therapy (gene-corrected HSCs beyond CAR-T).

=== Environmental / External Interventions

Phototherapy: narrowband UVB/PUVA (psoriasis, vitiligo, eczema, CTCL), blue light (neonatal jaundice), bright light therapy (SAD, circadian disorders).
Hyperbaric oxygen therapy (HBOT): decompression sickness, CO poisoning, problematic wounds, radiation tissue injury; experimental for TBI, inflammation, mitochondrial.
ECT: severe treatment-resistant depression, catatonia, mania.
TMS: rTMS/deep TMS/theta burst — depression (FDA-approved), OCD, smoking cessation, emerging anxiety/PTSD/pain.
tDCS/tACS: experimental — cognitive enhancement, depression, pain, stroke (weak evidence).
Radiation therapy: external beam, brachytherapy, proton therapy, SRS/SBRT — cancer curative/palliative; SRS — brain mets, AVM, trigeminal neuralgia, tremor.
Other: cryotherapy (acute injury), heat therapy (chronic pain/stiffness), sauna/infrared sauna, whole-body cryotherapy, music therapy, art/dance/movement therapy, hippotherapy/equine therapy, hydrotherapy/aquatic therapy.

=== Lifestyle Modifications

Exercise prescription: aerobic, resistance, flexibility, balance — FITT principle, tailored to condition.
Sleep hygiene + CBT-I (first-line for chronic insomnia).
Stress reduction: relaxation techniques, time management, social support.
Smoking cessation: pharmacotherapy + behavioral (NRT, varenicline, bupropion).
Alcohol reduction/abstinence.
Weight management: caloric restriction, bariatric surgery, GLP-1 pharmacotherapy.
Sun protection, fall prevention, occupational ergonomics.
