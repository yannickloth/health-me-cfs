#import "../../../shared/environments.typ": *

== Summary: Integrated Model of Immune Dysfunction
<sec:immune-summary>

The immune abnormalities in ME/CFS form a coherent, if complex, picture @walitt2024deep:

    - *Triggering event*: Infection or other immune challenge initiates the process

    - *Innate immune dysfunction*: NK cells and other innate effectors fail to clear the pathogen or control reactivation

    - *Chronic antigenic stimulation*: Persistent infection or autoimmunity drives ongoing B cell activation, producing the characteristic naïve B cell expansion and switched memory B cell depletion documented by the NIH study

    - *Autoantibody development*: Aberrant B cell responses generate autoantibodies targeting receptors and other self-antigens

    - *T cell exhaustion*: Chronic stimulation exhausts T cell responses

    - *Cytokine dysregulation*: Ongoing inflammation produces symptom-causing cytokines

    - *Sex-specific patterns*: Men and women show different immune abnormalities, suggesting distinct pathophysiological pathways

    - *Neuroinflammation*: Peripheral immune signals affect brain function, contributing to fatigue and cognitive symptoms

    - *Mast cell involvement*: Mast cell activation may amplify symptoms in susceptible individuals

This sequence represents one plausible ordering of events; many steps may occur in parallel, and the sequence may vary between patients or subgroups. For example, autoantibody development (step 4) could precede, follow, or coincide with T cell exhaustion (step 5), and sex-specific immune patterns (step 7) likely influence all stages rather than emerging at a discrete point.

This model provides multiple potential therapeutic targets: antiviral agents for persistent infection, immunomodulators for autoimmunity, mast cell stabilizers for those with MCAS, and anti-inflammatory approaches for cytokine-mediated symptoms. The recognition of sex-specific immune patterns may eventually enable personalized treatment selection.

#open-question(title: [The Paradox of Invisible Immunity])[

The integrated model above presents a coherent narrative, but it must be reconciled with a striking pattern of null results from well-powered studies. Comprehensive viral screening (Lipkin: 391 patients, no pathogen differences; Davis/Stanford: 185 viruses in severe patients, more viruses in _controls_), broad autoantibody profiling (Germain 2025: 7,542 interactions, complete null ), cytokine meta-analysis (Corbitt 2019: "of 64 cytokines, none differ consistently" @Corbitt2019), and multi-site NK assessment (MCAM: $p = 0.79$ @Querec2023MCAM) have all failed to find systemic immune signatures proportionate to the severity of disability.

This generates a fundamental puzzle: _what immune mechanism is potent enough to cause extreme disability yet leaves no measurable trace in blood, saliva, or stool?_

Three frameworks can account for this paradox:

    - *Compartmentalised immunity:* The pathology resides in tissues that blood sampling cannot access---gut mucosa, dorsal root ganglia, brain parenchyma, lymph node microenvironments. Peluso et al.\ (2024) demonstrated SARS-CoV-2 viral persistence in gut tissue biopsies of Long COVID patients with no detectable virus in blood, proving this is biologically possible @Peluso2024ViralPersistence. Further supporting this compartmentalised pathology model, Eberhardt et al.\ (2023) found SARS-CoV-2 spike protein persisting in coronary plaque macrophages with pro-atherogenic gene activation, and viral RNA was detected in plaques two years post-infection @Eberhardt2023CoronaryPlaque. Blood-based studies may be systematically missing the relevant compartment.

    - *The exhaustion interpretation:* Hornig et al.\ documented that cytokine elevations occur in early ME/CFS ($<$3 years) but normalize in chronic disease . By the time patients enter research studies (often after years of illness), the inflammatory fire has burned out. The null results in chronic cohorts may accurately reflect late-stage immunology while missing the critical early window.

    - *Post-immune damage:* The immune trigger was transient but caused permanent downstream damage---metabolic reprogramming, epigenetic changes, structural neurological alterations---that persists independently of ongoing immune activity. In this framework, the immune system is now _genuinely normal_, and the null results are correct; the damage is done and self-sustaining through non-immune mechanisms.

These frameworks make different predictions. Compartmentalised immunity predicts tissue biopsy abnormalities with normal blood values. Exhaustion predicts that early-onset patients ($<$3 years) will show blood abnormalities that chronic patients lack. Post-immune damage predicts that even early-onset patients will show normal blood immunity if studied _after_ the acute trigger resolves, but will show metabolic or structural changes detectable by non-immune assays. Distinguishing among these is among the highest priorities in ME/CFS research.
] <oq:invisible-immunity>

#speculation(title: [The Cellular Fog: Normal Army, Broken Soldiers])[

*Certainty: 0.35.* Integrative framework consistent with the overall pattern of null blood-level results alongside positive functional results. Not directly tested as a unified hypothesis.

The pattern of immune findings in ME/CFS is not one of immune activation or immune suppression---it is one of immune cell _incompetence_. Individual immune cells are structurally present in normal numbers and proportions but functionally impaired at the level of intracellular machinery:

    - *NK cells*: Normal counts, impaired cytotoxicity (Hedges' g = 0.96 )
    - *T cells*: Normal proportions, reduced glycolysis and metabolic dysfunction 
    - *B cells*: Normal counts, skewed repertoire without adaptive signatures @Ryback2025BCR
    - *Cytokines*: Normal circulating levels, but individual cells may fail to produce appropriate bursts upon stimulation
    - *Autoantibodies*: Not detectable by broad screening , yet functional assays and treatment responses suggest pathology

This framework---"normal army, broken soldiers"---predicts that _functional_ assays (cytotoxicity, proliferation upon stimulation, class switching capacity, metabolic flux) will consistently show abnormalities even when _phenotypic_ assays (cell counts, surface markers, resting cytokine levels) are normal. The TRPM3 calcium channel dysfunction (Section @sec:trpm3-dysfunction) provides a concrete molecular mechanism: if calcium signaling is globally impaired in immune cells, every downstream function---degranulation, proliferation, cytokine burst, metabolic activation---is compromised. The cell is present but cannot execute its programs.

*Therapeutic implication:* If verified, this framework redirects therapeutic strategy from immunosuppression (which has consistently failed: anakinra, rituximab in the RCT) toward _immune cell repair_---restoring intracellular signaling capacity (TRPM3 modulators), metabolic rescue (CoQ10, NAD+ precursors), and mitochondrial support rather than dampening immune output that is already inadequate.

*Falsification:* The framework would be falsified if large studies using standardized _functional_ assays (not just phenotypic counts) consistently find normal immune cell function in ME/CFS, or if a systemic circulating signal (cytokine, autoantibody, pathogen) is identified that fully explains the disability.
] <spec:cellular-fog>

