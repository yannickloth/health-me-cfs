#import "../../../../shared/environments.typ": *


Standard allergy doses of antihistamines are often insufficient for mast cell activation syndrome (MCAS). The EAACI/GA#super[2]LEN/EuroGuiDerm/APAAACI international urticaria guideline recommends *up to fourfold doses* of second-generation H1 antihistamines as Step 2 treatment when standard doses fail after 2–4 weeks @Zuberbier2022urticaria. MCAS specialists (Afrin, Molderings) have adopted and extended this principle for MCAS management @Afrin2013MCAS @Molderings2016pharmacological.

#warning-env(title: [Guideline Origin and Extrapolation])[
The fourfold up-dosing recommendation originates from *chronic spontaneous urticaria (CSU)* guidelines, not MCAS-specific trials. A systematic review found only five small, mostly historical trials of H1 antihistamines in primary mast cell activation syndromes @Nurmatov2015H1systematic. The application to MCAS is based on shared pathophysiology (histamine-mediated symptoms from mast cell degranulation) and expert clinical practice, not direct randomized evidence in MCAS populations.
]

=== Safety of Higher-Than-Standard Doses

A study of 59 patients receiving *above-fourfold doses* (median 8$times$, range 5–12$times$ standard) found that only 10% reported side effects, predominantly somnolence, with *no serious adverse events* @VandenElzen2017updosing. A systematic review of up-dosing across multiple second-generation antihistamines confirmed that higher doses increase drowsiness (9.5–59% of patients) but produce no dose-dependent systemic complications @Podder2023updosing.

=== H1 Antihistamine Dosing: Standard vs.\ MCAS
<sec:h1-updosing>



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),

    [*Drug*], [*Standard*], [*MCAS initial*], [*MCAS max (4$times$)*], [*Evidence*], [*Responder rate*],

    [Cetirizine], [10 mg/day], [10 mg BID], [40 mg/day], [Grade A#super[a]], [54%#super[b]],

    [Fexofenadine], [180 mg/day], [180 mg BID], [720 mg/day], [Grade A#super[a]], [83%#super[b]],

    [Loratadine], [10 mg/day], [10 mg 2–3$times$/day], [40 mg/day], [Limited#super[c]], [—],

    [Rupatadine], [10 mg/day], [20 mg/day], [40 mg/day], [Cold urticaria#super[d]], [—],
  ),
  caption: [H1 antihistamine dosing: standard allergy vs.\ MCAS therapeutic range],
) <tab:h1-updosing>

{
#super[a] Grade A recommendation from CSU up-dosing review @Podder2023updosing. #super[b] Responder rate among patients uncontrolled at standard dose @Podder2023updosing. #super[c] Fourfold guideline applies class-wide, but direct loratadine trial data above 20 mg/day are lacking; desloratadine at 4$times$ showed 30% response (Grade B) @Podder2023updosing. #super[d] Studied in chronic cold urticaria at 20 mg and 40 mg; somnolence universal at 40 mg @Magerl2015rupatadine.
}


*Drug-specific notes.*

*Cetirizine*: MCAS dosing per Afrin: 10 mg every 12 hours, escalating to 20 mg BID if needed @Afrin2013MCAS. Maximum studied in clinical trials: 20 mg/day (matching the 2$times$ dose used in the severe protocol in Chapter @ch:urgent-action-severe).

*Fexofenadine*: Highest responder rate among all second-generation antihistamines at up-dosing (83%) @Podder2023updosing. Maintains cardiac safety at 4$times$ doses; does not cause tachyphylaxis. MCAS dosing per Afrin: 180 mg every 12 hours @Afrin2013MCAS. Stepwise escalation: 240$arrow.r$360$arrow.r$540$arrow.r$720 mg/day at 1–2 week intervals. In long COVID, fexofenadine 180 mg + famotidine 40 mg daily for 20 days resolved fatigue in 43% and brain fog in 43% of patients @Salvucci2023antihistamineLongCOVID.

*Loratadine*: The fourfold recommendation applies class-wide, but direct clinical trial data for loratadine above 20 mg/day are limited. Its active metabolite desloratadine at 4$times$ showed only 30% response in CSU @Podder2023updosing. MCAS dosing per Afrin: 10 mg two to three times daily @Afrin2013MCAS.

*Rupatadine*: Unique dual action (H1 antagonist + PAF antagonist) makes it particularly relevant for MCAS, where mast cells release both histamine and PAF (see Section @sec:h1-updosing-rupatadine below). Studied at 20 mg and 40 mg in cold urticaria @Magerl2015rupatadine; dose-dependent somnolence at 40 mg. In mastocytosis, 20 mg produced significant reductions in Darier's sign, flushing, tachycardia, and headache @Izquierdo2024rupatadine. No formal CSU up-dosing recommendation exists specifically for rupatadine.

==== Rupatadine: Special Considerations for MCAS
<sec:h1-updosing-rupatadine>

Rupatadine occupies a unique position among H1 antihistamines due to its triple mechanism: H1 antagonism, PAF antagonism (31$times$ more potent than loratadine), and direct mast cell stabilization (inhibits IL-8 release by 80%, VEGF by 73%, histamine by 88%) @Pinero-Gonzalez2024. This multi-target profile means that rupatadine at standard doses may already provide mast cell control that other H1 antihistamines only achieve at higher doses.



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),

    [*Step*], [*Dose*], [*Context*],

    [Standard], [10 mg once daily (10 mg/day)], [Initial trial; allergy-equivalent dose],

    [Step 1], [20 mg/day (once or BID split)], [Insufficient response after 2–4 weeks],

    [Step 2], [20 mg BID (40 mg/day)], [Refractory MCAS; monitor for somnolence],
  ),
  caption: [Rupatadine dose escalation protocol for MCAS],
) <tab:rupatadine-escalation>


=== H2 Antihistamine Dosing: Standard vs.\ MCAS
<sec:h2-updosing>

#warning-env(title: [No Formal H2 Up-Dosing Guideline])[
Unlike H1 antihistamines, there is *no equivalent formal guideline* recommending H2 up-dosing for MCAS. Higher H2 doses are based on MCAS specialist clinical practice @Afrin2013MCAS @Molderings2016pharmacological and extrapolation from FDA-approved doses for pathological hypersecretory conditions (e.g., Zollinger-Ellison syndrome). The H1+H2 combination is standard MCAS practice, but H2 dose escalation is expert opinion, not guideline-driven.
]



#figure(
  table(
    columns: (auto, auto, auto, auto, auto),

    [*Drug*], [*Standard (GI)*], [*MCAS initial*], [*MCAS max*], [*Notes*],

    [Famotidine], [20 mg/day], [20 mg BID], [40 mg BID#super[a]], [Preferred: minimal CYP interaction],

    [Cimetidine], [400 mg BID], [400 mg BID], [800 mg BID#super[b]], [CYP450 inhibitor; immunomodulatory],
  ),
  caption: [H2 antihistamine dosing: standard vs.\ MCAS therapeutic range],
) <tab:h2-updosing>

{
#super[a] Afrin protocol: 20–40 mg every 12 hours, up to 80 mg every 12 hours in severe cases @Afrin2013MCAS. #super[b] FDA-approved for pathological hypersecretory conditions at 800 mg BID or 400 mg QID (1600 mg/day total). See Section @sec:h2-comparison for cimetidine vs.\ famotidine trade-offs.
}


*Famotidine dose escalation.* Start 20 mg once daily; increase to 20 mg BID after 1–2 weeks; if insufficient, increase to 40 mg BID @Afrin2013MCAS. Drying effects may increase at higher doses; titrate slowly. In long COVID, famotidine 40 mg daily combined with fexofenadine 180 mg reduced tachycardia in 57% of patients @Salvucci2023antihistamineLongCOVID.

*Cimetidine dose escalation.* Standard MCAS dose is 400 mg BID (800 mg/day). Can escalate to 800 mg BID for refractory symptoms. Cimetidine retains unique immunomodulatory properties (T-cell enhancement, NK cell activation) not shared by famotidine @Goldstein1986CimetidineEBV, making it the preferred H2 blocker when immunomodulation is desired (see Section @sec:cimetidine-antiviral-synergy). However, strong CYP450 inhibition (1A2, 2D6, 3A4) requires careful drug interaction review before dose escalation.

=== Practical Up-Dosing Protocol for ME/CFS Patients
<sec:updosing-protocol>
