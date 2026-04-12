// Index du dossier de santé — Christine Andres (CAN)
// Préparé pour : RDV Clinique du Sommeil, Saint-Luc, Bouge, Namur
// Date : 2026-04-07
// Source : /home/nicky/sync/10-19 - Personnes et Animaux/11 - Christine/11.001 Santé/
// Note : Dossier partagé de la famille — 694 fichiers identifiés comme concernant CAN
//        (121 autres fichiers concernent Sven, Aaron, ou YLO — exclus de cet index)

#set document(
  title: "Index dossier de santé — Christine Andres (CAN)",
  date: datetime(year: 2026, month: 4, day: 7),
)

#set page(
  paper: "a4",
  margin: 2cm,
  footer: context [
    #set text(size: 9pt, fill: rgb("666666"))
    #h(1fr)
    #counter(page).display("1 / 1", both: true)
  ],
)
#set text(font: "New Computer Modern", size: 10pt, lang: "fr")
#set par(justify: true)
#set heading(numbering: "1.")
#show table: set text(size: 8.5pt)

#align(center)[
  #text(size: 16pt, weight: "bold")[Index du dossier de santé]
  #v(4pt)
  #text(size: 13pt)[Christine Andres (CAN) — Née le 8 septembre 1988]
  #v(2pt)
  #text(size: 11pt)[Préparé pour le RDV à la Clinique du Sommeil — Saint-Luc, Bouge, Namur]
  #v(2pt)
  #text(size: 10pt, style: "italic")[Document de travail — 2026-04-07]
]

#v(1em)

#block(
  fill: rgb("d4edda"),
  stroke: (left: 3pt + rgb("28a745"), rest: 0.5pt + rgb("28a745")),
  radius: 2pt,
  inset: (left: 10pt, rest: 8pt),
  width: 100%,
)[
  #text(weight: "bold", fill: rgb("28a745"))[Contexte du RDV]
  #v(4pt)
  RDV avec le *Dr Cécile Dusart* à la *Clinique du Sommeil, CHU Saint-Luc, Bouge, Namur* pour fatigue chronique et pattern narcoleptique à la polysomnographie.
  Motif principal : fatigue constante, somnolence diurne, possible narcolepsie ou suppression orexinergique dans le contexte d'EM/SFC.

  Voir le document complémentaire : *`20260322 narcolepsy-pattern sleep.aeiuno.typ`* — analyse clinique détaillée du pattern PSG.
]

#v(0.5em)

#outline(indent: 1em)

#pagebreak()

// =============================================================================
= Documents prioritaires pour le RDV sommeil
// =============================================================================

Ces documents sont les plus directement pertinents pour la Clinique du Sommeil.

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier / Description*],
  ),
  [2018-10-26], [2018-10\_Sleep],
  [2018-10-26\_DrPincherle\_Ordonnance\_PSG-MSLT\_Christine.pdf \ _Ordonnance pour PSG + MSLT (Dr Pincherle, neurologue)_],

  [2018-10-26], [2018-10\_Sleep],
  [2018-10-26\_Ordonnance\_Polysomnographie\_Christine.pdf \ _Ordonnance polysomnographie_],

  [2026-01-09], [Ketterthill],
  [2026-01-09\_Synlab\_Fatigue.pdf \ _Bilan sanguin orienté fatigue (le plus récent)_],

  [2024-04-19], [2024],
  [2024-04-19\_Labo\_Synlab\_resultats.pdf \ _Résultats labo Synlab 2024_],

  [2023-07-10], [Ketterthill],
  [2023-07-10\_ASRD\_Rapport\_LaboPriseDeSang\_KetterThil\_Christine\_232810254.pdf \ _Rapport labo complet_],

  [2024-04-05], [2024],
  [2024-04-05\_LU\_CAN\_Pincherle.pdf \ _Consultation Dr Pincherle (neurologue, Luxembourg) 2024_],

  [2023-08-08], [2023],
  [2023-08-08\_LU\_CAN\_Pincherle.pdf \ _Consultation Dr Pincherle 2023_],

  [2022-09-23], [2022NEW],
  [2022-09-23\_LU\_Pincherle.pdf \ _Consultation Dr Pincherle 2022_],

  [2021-04-26], [root],
  [2021-04-26\_Ordonnance\_Pincherle\_Christine.pdf \ _Ordonnance Dr Pincherle (Modafinil/Provigil ?)_],

  [2021-04-26], [root],
  [2021-04-26\_Honoraires\_Pincherle\_Christine.pdf \ _Justificatif honoraires Pincherle_],

  [2020-02-03], [Medical\_Krankenkasse/2020],
  [2020-02-03\_Neur\_Pincherle\_Attestation\_Concerta-Provigil.pdf \ _Attestation Pincherle : Concerta + Provigil (!)_],

  [2020-02-03], [Medical\_Krankenkasse/2020],
  [2020-02-03\_LU\_Neur\_Pincherle.pdf \ _Consultation Pincherle 2020_],

  [2020-09-01], [Medical\_Krankenkasse/2020],
  [2020-09-01\_LU\_Pincherle.pdf \ _Consultation Pincherle sept. 2020_],

  [2022-10-04], [2022NEW],
  [2022-10-04\_BE\_Apotheke\_Concerta-Provigil.pdf \ _Délivrance Concerta + *Provigil* (modafinil) en Belgique_],
)

// =============================================================================
= Documents neurologiques / ADHD (chronologique)
// =============================================================================

Suivi neurologique, prescriptions Concerta (méthylphénidate), attestations ADHD.

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2013-11-14], [2013], [2013-11-14\_Neurologe-Heusbourg.PDF],
  [2013-11-14], [2013], [2013-11-14\_PrescriptionConcerta.PDF],
  [2013-11-28], [2013], [2013-11-28\_Neurologe-Heusbourg.PDF],
  [2013-12-20], [2013], [2013-12-20\_Neurologe-Heusbourg.PDF],
  [2014-03-21], [2014], [2014-03-21\_Neurologe-Heusbourg.PDF],
  [2015-07-20], [2015], [2015-07-20\_Neurologe-Bolyn.pdf],
  [2016-04-14], [2016], [2016-04-14\_OrdonnanceConcerta.png],
  [2016-12-19], [2016], [2016-12-19\_Neurologe\_Bolyn.pdf],
  [2017-03-24], [Medical\_Krankenkasse/2017], [2017-03-24\_Bolyn.pdf],
  [2018-03-01], [Medical\_Krankenkasse/2018], [2018-03-01\_Bolyn.pdf],
  [2018-04-25], [Medical\_Krankenkasse/2018], [2018-04-25\_Neuro\_Bolyn\_AttestationBesoinConcerta.pdf],
  [2018-04-25], [root], [2018-04-25\_Certificat\_ADHD\_SBolyn\_CA.pdf _*Certificat ADHD officiel*_],
  [2018-08-30], [Medical\_Krankenkasse/2018], [2018-08-30\_LU\_Neur\_Bolyn.pdf],
  [2021-04-26], [Medical\_Krankenkasse/2021], [2021-04-26\_LU\_Pincherle\_CAN.pdf],
  [2021-05-03], [2022NEW], [2021-05-03\_BE\_Apotheke\_Concerta.pdf],
)

// =============================================================================
= Médecin généraliste — Belgique
// =============================================================================

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2014-09-10], [2014], [2014-09-10\_MedecinGeneral.PDF],
  [2014-09-16], [2014], [2014-09-16\_MedecinGeneral.PDF],
  [2015-09-29], [2015], [2015-09-29\_Hausarzt\_Lux\_Saberin.pdf _(Dr Saberin, MG LU)_],
  [2015-10-01], [2015], [2015-10-01\_Be\_Hausarzt\_Genin.png _(Dr Genin, MG BE)_],
  [2016-02-10], [2016 / Medical\_Krankenkasse/2016], [2016-02-10\_Hausarzt\_LU.pdf],
  [2016-04-16], [2016 / Medical\_Krankenkasse/2016], [2016-04-16\_Hausarzt.pdf],
  [2016-05-19], [2016 / Medical\_Krankenkasse/2016], [2016-05-19\_Hausarzt.pdf],
  [2016-06-24], [2016 / Medical\_Krankenkasse/2016], [2016-06-24\_Hausarzt.pdf],
  [2016-08-12], [2016 / Medical\_Krankenkasse/2016], [2016-08-12-Hausarzt\_LU.pdf],
  [2016-12-09], [2016 / Medical\_Krankenkasse/2016], [2016-12-09\_BE\_Hausarzt\_Peters.pdf _(Dr Peters, MG BE)_ + attestation + ordonnance],
  [2016-12-30], [2016 / Medical\_Krankenkasse/2016], [2016-12-30\_BE\_Hausarzt\_Bechet.pdf _(Dr Bechet)_],
  [2017-04-11], [Medical\_Krankenkasse/2017], [2017-04-11\_LU\_Hausarzt\_Burton.pdf _(Dr Burton, MG LU)_],
  [2017-05-28], [Medical\_Krankenkasse/2017], [2017-05-28\_BE\_Hausarzt\_Regout.pdf _(Dr Regout, MG BE)_],
  [2017-05-30], [Medical\_Krankenkasse/2017], [2017-05-30\_BE\_Hausarzt\_Genin.pdf + attestation],
  [2017-07-24], [Medical\_Krankenkasse/2017], [2017-07-24\_BE\_Hausarzt\_Genin.pdf + attestation],
  [2017-11-09], [Medical\_Krankenkasse/2017], [2017-11-09\_BE\_Hausarzt\_Genin.pdf],
  [2018-01-18], [Medical\_Krankenkasse/2018], [2018-01-18\_Generaliste.pdf],
  [2018-05-08], [Medical\_Krankenkasse/2018], [2018-05-08\_Generaliste.pdf],
  [2018-06-18], [Medical\_Krankenkasse/2018], [2018-06-18\_Generaliste.pdf],
  [2018-09-14], [Medical\_Krankenkasse/2018], [2018-09-14\_BE\_Hausarzt\_Genin.pdf],
  [2018-10-15], [Medical\_Krankenkasse/2018], [2018-10-15\_BE\_Genin.pdf],
  [2018-11-27], [Medical\_Krankenkasse/2018], [2018-11-27\_BE\_Genin.pdf],
  [2018-12-21], [Medical\_Krankenkasse/2018], [2018-12-21\_LU\_Hausarzt\_Verbeke.pdf _(Dr Verbeke, MG LU)_],
  [2020-08-24], [Medical\_Krankenkasse/2020], [2020-08-24\_BE\_Genin\_DemandeImagerie.pdf _(demande imagerie Dr Genin)_],
  [2021-11-25], [2022NEW], [2021-11-25\_BE\_Vivalia\_Jean.pdf],
  [2021-12-27], [2022NEW], [2021-12-27\_BE\_Vivalia\_Jean.pdf],
  [2022-01-28], [2022NEW], [2022-01-28\_BE\_Vivalia\_Jean.pdf],
  [2022-02-25], [2022NEW], [2022-02-25\_BE\_Vivalia\_Jean.pdf],
  [2022-03-25], [2022NEW], [2022-03-25\_BE\_Vivalia\_Jean.pdf],
  [2022-04-25], [2022NEW], [2022-04-25\_BE\_Vivalia\_Jean.pdf],
  [2022-04-30], [2022NEW], [2022-04-30\_BE\_Vivalia\_Jean.pdf],
  [2022-06-27], [2022NEW], [2022-06-27\_BE\_Vivalia\_Jean.pdf],
  [2022-08-01], [2022NEW], [2022-08-01\_BE\_Vivalia\_Jean.pdf],
  [2022-09-02], [2022NEW], [2022-09-02\_BE\_Heintz.pdf _(Dr Albert Heintz)_],
  [2022-09-26], [root], [2022-09-26\_BE\_Attestation\_Christine\_DrAlbertHeintz.pdf],
  [2022-05-10], [root], [2022-05-10\_BE\_Attestation\_Christine\_DrBourlond.pdf],
  [2024-05-15], [2024], [2024-05-15\_BE\_CAN\_Generaliste-Copus.pdf _(Dr Copus, MG actuel BE)_],
  [2024-02-23], [2024], [Attestation-20240223-Copus.pdf],
  [2024-10-07], [2024], [2024-10-07\_Attestation-Copus.pdf],
  [2024-03-18], [2024], [Attestation-20240318-Genin.pdf _(Dr Genin, MG LU)_],
  [2024-04-15], [2024], [Attestation-20240415-Genin.pdf],
  [2025-04-01], [2025], [Attestation-20250401-Copus.pdf],
  [2025-06-16], [2025], [Attestation-20250616-Genin.pdf],
  [2025-06-20], [2025], [Attestation-20250620-Genin.pdf],
  [2025-09-23], [2025], [Attestation-20250923-Genin.pdf],
)

// =============================================================================
= Bilans biologiques / Laboratoire
// =============================================================================

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2026-01-09], [Ketterthill], [2026-01-09\_Synlab\_Fatigue.pdf _(plus récent — orienté fatigue)_],
  [2024-04-19], [2024], [2024-04-19\_Labo\_Synlab\_resultats.pdf],
  [2024-08-29], [2024], [2024-08-29\_BE\_PriseDeSang.pdf],
  [2023-07-10], [Ketterthill], [2023-07-10\_ASRD\_Rapport\_LaboPriseDeSang\_KetterThil\_Christine\_232810254.pdf],
  [2023-07-10], [Ketterthill], [2023-07-10\_ASRD\_Rapport\_LaboPriseDeSang\_KetterThil\_Christine\_232810254\_REDACTED.pdf],
  [2016-05-03], [2016 / Medical\_Krankenkasse/2016], [2016-05-03\_Blutprobe\_Resultat.pdf],
  [n/d], [Ketterthill], [143640128.pdf],
  [n/d], [Ketterthill], [144240161.pdf],
  [n/d], [Ketterthill], [184030541.pdf],
  [n/d], [Ketterthill], [212640309.pdf],
  [n/d], [Ketterthill], [230840284.pdf],
)

// =============================================================================
= Hospitalisations et consultations hospitalières
// =============================================================================

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2014-05-11], [2014/2014-05-11\_Hospitalia], [2014-05-11\_Hospitalia\_1-Christine.pdf],
  [2014-05-11], [2014/2014-05-11\_Hospitalia], [2014-05-11-Hospitalia\_questionnaire-Christine.pdf],
  [2017-08-16], [Medical\_Krankenkasse/2017/2017-08-16\_...], [2017-08-16\_Appendicite\_Grandjean\_Attest.pdf _(appendicectomie)_],
  [2019-08-06], [root], [2019-08-06\_Vivalia\_Henner.pdf],
  [2022-11-14], [2022NEW], [2022-11-14\_BE\_CAN\_Vivalia\_Hosp\_NaissanceAaron.pdf _(naissance Aaron)_],
)

// =============================================================================
= Cardiologie
// =============================================================================

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2014-10-22], [2014], [2014-10-22\_Kardiologe.PDF],
  [2014-12-29], [2014], [2014-12-29\_Kardiologe.pdf],
)

// =============================================================================
= Gynécologie / Obstétrique
// =============================================================================

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2015-06-02], [2015], [2015-06-02\_Gynaekologe\_Claudot.png],
  [2016-07-13], [2016], [2016-07-13\_Gynecologue.pdf],
  [2016-10-25], [2016], [2016-10-25\_Gynaekologe\_Fivet.pdf],
  [2017-03→07], [2017-03\_Grossesse\_Christine], [_Dossier grossesse complet (échographies, attestations)_],
  [2022-07-15], [2022NEW/2022-07-15\_Schwangerschaft], [_Dossier grossesse 2022 (Aaron)_],
)

// =============================================================================
= Ophtalmologie / Chirurgie réfractive
// =============================================================================

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2014-06-14], [2014], [2014-06-14\_Brille.PDF _(lunettes)_],
  [2014-06-17], [2014], [2014-06-17\_Augenarzt.PDF _(ophtalmo)_],
  [2018-10-04], [2018-10-04\_ChirurgieRefractive], [2018-10-04\_CertificatJustificatif\_ChirurgieRefractive\_Christine.pdf],
  [2019-02-12], [2018-10-04\_ChirurgieRefractive], [2019-02-12\_DeclHospitalisation\_OpOeuil\_2019-02-13\_C.pdf],
  [2019-02-12], [2018-10-04\_ChirurgieRefractive], [2019-02-12\_DeclHospitalisation\_OpOeuil\_2019-02-27\_C.pdf],
  [2024-02-06], [2024], [2024-02-06\_BE\_CAN\_Ophtalmo.pdf],
)

// =============================================================================
= Dermatologie
// =============================================================================

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2015-12-21], [2015], [2015-12-21\_Hautarzt-Koch.pdf],
  [2015-12-21], [2015], [2015-12-21\_OrdonnaceMedicale\_Hautarzt.pdf],
  [2018-01-16], [Medical\_Krankenkasse/2018], [2018-01-16\_Bourlond\_Hautarzt\_Apotheke.pdf _(Dr Bourlond)_],
  [2021-09-14], [2021NEW], [2021-09-14\_BE\_CAN\_Dermato.pdf],
  [2026-02-08], [patients/aeiuno], [20260208 prurit visage.aeiuno.pdf _(document médical: prurit visage)_],
)

// =============================================================================
= Dentisterie
// =============================================================================

Dentistes principaux : *Dr Hogard* (Luxembourg) et *Dr Veche* (2015). Nombreuses consultations, prothèses dentaires (2015), remboursements Freie Krankenkasse / CNS / CMFEP.

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2014-02-17], [2014], [2014-02-17\_Zahnarzt.PDF],
  [2014-12-19], [2014], [2014-12-19\_Zahnarzt.PDF],
  [2015-01-20], [2015], [2015-01-20\_Zahnarzt\_Veche.pdf _(Dr Veche)_],
  [2015-01-26], [2015], [2015-01-26\_Zahnarzt\_Hogard\_Acompte.pdf],
  [2015-02-02], [2015], [2015-02-02\_Zahnarzt\_RechnungDevis.pdf],
  [2015-02-03], [2015], [2015-02-03\_Zahnarzt\_Hogard\_DevisProteseDentaire.pdf _(devis prothèse)_],
  [2015-02-06], [2015], [2015-02-06\_CNS\_DevisDentaire.pdf _(devis CNS)_],
  [2015-02-11], [2015], [2015-02-11\_Zahnarzt\_Hogard.pdf],
  [2015-02-20], [2015], [2015-02-20\_Zahnarzt\_Hogard.pdf],
  [2015-03-13], [2015], [2015-03-13\_Zahnarzt\_Hogard\_Acompte.pdf],
  [2015-04-27], [2015], [2015-04-27\_Zahnarzt\_Hogard.pdf],
  [2015-05-08], [2015], [2015-05-08\_Zahnarzt\_Hogard.pdf],
  [2015-11-20], [2015], [2015-11-20\_Zahnarzt-Hogard.pdf + ordonnance médicale],
  [2016-04-01], [2016 / Medical\_Krankenkasse/2016], [2016-04-01\_Ordonnance\_Zahnarzt.pdf],
  [2016-11-16], [2016 / Medical\_Krankenkasse/2016], [2016-11-16\_Zahnarzt\_Hogard.pdf],
  [2017-10-04], [Medical\_Krankenkasse/2017], [2017-10-04\_Zahnarzt\_Hogard.pdf],
  [2017-11-15], [Medical\_Krankenkasse/2017], [2017-11-15\_Zahnarzt\_Hogard.pdf],
  [2018-12-21], [Medical\_Krankenkasse/2018], [2018-12-21\_LU\_Dentiste\_Hogard.pdf],
  [2019-04-05], [Medical\_Krankenkasse/2019], [2019-04-05\_LU\_Dentiste\_Hogard.pdf],
  [2019-12-18], [Medical\_Krankenkasse/2019], [2019-12-18\_LU\_Dentiste\_Hogard.pdf],
  [2020-06-04], [Medical\_Krankenkasse/2020/Freie], [2020-06-04\_Freie\_DentaliaPlus.pdf + facture],
  [2020-12-18], [Medical\_Krankenkasse/2020], [2020-12-18\_LU\_Dentiste.pdf],
  [2021-05-05], [Medical\_Krankenkasse/2021], [2021-05-05\_LU\_Dentiste.pdf],
  [2021-06-01], [2021NEW], [2021-06-01\_CMFEP\_Dentiste.pdf _(remboursement CMFEP)_],
  [2021-06-07], [2022NEW], [2021-06-07\_LU\_Hogard.pdf],
  [2022-03-07], [2022NEW], [2022-03-07\_LU\_CAN\_Hogard.pdf + doublon],
  [2022-11-09], [2022NEW/Freie], [2022-11-09\_Dentalia\_Abrechnung.pdf _(décompte Dentalia)_],
  [2023-02-10], [2023], [2023-02-10\_LU\_CAN\_Hogard.pdf],
  [2024-03-06], [2024], [2024-03-06\_LU\_CAN\_Hogard.pdf],
  [n/d], [Medical\_Krankenkasse], [Formular\_Freie\_Dentalia.pdf _(formulaire remboursement)_],
)

// =============================================================================
= Pharmacie / Ordonnances
// =============================================================================

Ordonnances et reçus de pharmacie (hors médicaments déjà documentés dans d'autres sections).

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2014-09-16], [2014], [2014-09-16\_OrdonnanceMedicale.PDF],
  [2015-10-01], [2015], [2015-10-01\_Pharmacie\_Divers.png],
  [2016-04-11], [2016 / Medical\_Krankenkasse/2016], [2016-04-11\_Apotheke.pdf],
  [2016-05-18], [2016 / Medical\_Krankenkasse/2016], [2016-05-18\_Apotheke.pdf + Apotheke2.pdf],
  [2016-07-25], [2016 / Medical\_Krankenkasse/2016], [2016-07-25\_Apotheke.pdf],
  [2016-08-12], [2016 / Medical\_Krankenkasse/2016], [2016-08-12\_Apotheke.pdf],
  [2016-12-09], [2016 / Medical\_Krankenkasse/2016], [2016-12-09\_BE\_Hausarzt\_Peters\_Apotheke.pdf],
  [2017-05-30], [Medical\_Krankenkasse/2017], [2017-05-30\_BE\_Hausarzt\_Genin\_Apotheke.pdf],
  [2017-08-17], [Medical\_Krankenkasse/2017/...Appendisectomie], [2017-08-17\_Appendicite\_Apotheke.pdf _(post-appendicectomie)_],
  [2017-11-08], [Medical\_Krankenkasse/2017], [2017-11-08\_BE\_Hausarzt\_Genin\_Apotheke.pdf],
  [2018-01-19], [Medical\_Krankenkasse/2018], [2018-01-19\_Generaliste\_Peeters\_Apotheke.pdf],
  [2018-03-05], [Medical\_Krankenkasse/2018], [2018-03-05\_Apotheke.pdf],
  [2018-05-08], [Medical\_Krankenkasse/2018], [2018-05-08\_Apotheke.pdf],
  [2018-06-18], [Medical\_Krankenkasse/2018], [2018-06-18\_Apotheke.pdf],
  [2018-07-16], [Medical\_Krankenkasse/2018], [2018-07-16\_Apotheke.pdf],
  [2018-09-01], [Medical\_Krankenkasse/2018], [2018-09-01\_Apotheke.pdf],
  [2018-09-03], [Medical\_Krankenkasse/2018], [2018-09-03\_Apotheke.pdf],
  [2018-09-14], [Medical\_Krankenkasse/2018], [2018-09-14\_Apotheke.pdf],
  [2018-11-22], [Medical\_Krankenkasse/2018], [2018-11-22\_Apotheke.pdf],
  [2018-11-26], [Medical\_Krankenkasse/2018], [2018-11-26\_Apotheke.pdf],
  [2019-01-23], [Medical\_Krankenkasse/2019], [2019-01-23\_Apotheke.pdf],
  [2019-01-29], [Medical\_Krankenkasse/2019], [2019-01-29\_Apotheke.pdf],
  [2019-02-13], [Medical\_Krankenkasse/2019], [2019-02-13\_Apotheke.pdf],
  [2019-02-18], [Medical\_Krankenkasse/2019], [2019-02-18\_Apotheke.pdf],
  [2019-03-26], [Medical\_Krankenkasse/2019], [2019-03-26\_1\_Apotheke.pdf + \_2\_Apotheke.pdf],
  [2019-07-12], [Medical\_Krankenkasse/2019], [2019-07-12\_Apotheke.pdf],
  [2019-12-20], [Medical\_Krankenkasse/2019], [2019-12-20\_Apotheke\_Generaliste.pdf],
  [2020-02-03], [Medical\_Krankenkasse/2020], [2020-02-03\_Apotheke\_Neur.pdf _(neurologie)_],
  [2020-06-12], [Medical\_Krankenkasse/2020], [2020-06-12\_BE\_Apotheke.pdf + prescription magen],
  [2020-06-16], [Medical\_Krankenkasse/2020], [2020-06-16\_BE\_Apotheke.pdf],
  [2020-09-07], [Medical\_Krankenkasse/2020], [2020-09-07\_BE\_Apotheke.pdf],
  [2020-10-23], [Medical\_Krankenkasse/2020], [2020-10-23\_BE\_Apotheke.pdf],
  [2022-09-13], [2022NEW], [2022-09-13\_BE\_Apotheke.pdf],
  [2022-11-05], [2022NEW], [2022-11-05\_BE\_CAN\_Apotheke.pdf + Grippeimpfung],
  [2022-11-18], [2022NEW], [2022-11-18\_BE\_CAN\_Apotheke.pdf],
  [2023-02-13], [2023], [2023-02-13\_BE\_CAN\_Apotheke.pdf],
  [2023-02-17], [2023], [2023-02-17\_BE\_CAN\_Apotheke.pdf],
  [2023-03-13], [2023], [2023-03-13\_BE\_CAN\_Apotheke.pdf],
  [2023-08-02], [2023], [2023-08-02\_BE\_CAN\_Apotheke.pdf],
  [2023-08-08], [2023], [2023-08-08\_BE\_CAN\_Apotheke.pdf],
  [2024-03-18], [2024], [2024-03-18\_BE\_CAN\_Apotheke.pdf],
)

// =============================================================================
= Kinésithérapie
// =============================================================================

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2021-11-19], [2022NEW], [2021-11-19\_Kine\_Urologie.pdf _(kinésithérapie urologique)_],
  [2022-10-03], [root], [2022-10-03\_Kine.pdf],
)

// =============================================================================
= COVID-19 / Vaccinations
// =============================================================================

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header(
    [*Date*], [*Dossier*], [*Fichier*],
  ),
  [2021-03-12], [2021-03-12\_DepistageCovid19], [afspraak-...-Christine.pdf _(dépistage)_],
  [2021-05-29], [2021NEW], [2021-05-29\_1353\_Pfizer1CAN.pdf _(1ère dose)_],
  [2021-07-03], [2021NEW], [2021-07-03\_1351\_Pfizer2CAN.pdf _(2ème dose)_],
)

// =============================================================================
= Dossiers administratifs (assurances, mutuelles)
// =============================================================================

Non détaillés dans cet index (68 fichiers classés Insurance/Admin). Dossiers principaux :
- *Freie Krankenkasse* (Luxembourg) : remboursements 2015–2025
- *CNS* (Luxembourg) : remboursements 2013–2016
- *CMFEP* (Belgique) : fiches de remboursement 2023–2024
- *CAE* (Belgique) : fiches de remboursement 2023–2024
- *Henner* : dossier Medical\_Krankenkasse/Henner

// =============================================================================
= Fichiers hors CAN (exclus de l'index principal)
// =============================================================================

121 fichiers du dossier partagé concernent d'autres membres de la famille :

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  table.header(
    [*Personne*], [*Description*],
  ),
  [YLO], [Consultations Dr Reding (2023), pharmacies, Pincherle 2023-08-08],
  [Sven], [Pharmacies 2023–2024, Dr Hubaux, Dr Pekus],
  [Aaron], [Naissance (2022-11-14 Vivalia), pharmacies 2023],
)

// =============================================================================
= Documents patients/aeiuno (dans ce projet)
// =============================================================================

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("fff3cd") } else { white },
  table.header(
    [*Fichier*], [*Description*],
  ),
  [20260208 prurit visage.aeiuno.typ/.tex/.pdf],
  [Document médical sur le prurit facial — consultation 2026-02-08],

  [20260322 narcolepsy-pattern sleep.aeiuno.typ/.tex],
  [*Étude de cas détaillée : pattern narcoleptique à la PSG.* \ Analyse diagnostique différentielle (narcolepsie type 1 vs. suppression orexinergique EM/SFC). \ Recommandations : hypocrétine LCR, typage HLA-DQB1\*06:02, TILE/MSLT. \ *Document clé pour le RDV à la Clinique du Sommeil.*],
)

// =============================================================================
= Synthèse pour le RDV sommeil
// =============================================================================

#block(
  fill: rgb("fff3cd"),
  stroke: (left: 3pt + rgb("ffc107"), rest: 0.5pt + rgb("ffc107")),
  radius: 2pt,
  inset: (left: 10pt, rest: 8pt),
  width: 100%,
)[
  #text(weight: "bold", fill: rgb("856404"))[Documents à apporter / à transmettre au médecin du sommeil]
  #v(4pt)

  *Documents prioritaires (sommeil et fatigue) :*
  + `20260322 narcolepsy-pattern sleep.aeiuno.pdf` — analyse clinique préparée
  + `2026-01-09_Synlab_Fatigue.pdf` — bilan sanguin le plus récent
  + `2023-07-10_ASRD_Rapport_LaboPriseDeSang_KetterThil_Christine_232810254.pdf` — labo complet
  + `2024-04-05_LU_CAN_Pincherle.pdf` — dernier suivi neurologique
  + `2020-02-03_Neur_Pincherle_Attestation_Concerta-Provigil.pdf` — attestation traitement actuel
  + `2022-10-04_BE_Apotheke_Concerta-Provigil.pdf` — délivrance Concerta + Provigil (modafinil)
  + `2018-04-25_Certificat_ADHD_SBolyn_CA.pdf` — certificat ADHD officiel
  + `2018-10-26_DrPincherle_Ordonnance_PSG-MSLT_Christine.pdf` — ordonnance PSG/MSLT originale

  *Contexte diagnostique :*
  - Diagnostic ADHD : Dr Heusbourg (Luxembourg, 2013), confirmé Dr Bolyn (2018)
  - Suivi neurologique : Dr Bolyn (Luxembourg) → Dr Pincherle (Luxembourg, depuis ~2019)
  - Traitement actuel (à confirmer) : Concerta (méthylphénidate) + Provigil/Modafinil
  - PSG antérieure réalisée en 2018–2019 (sur ordonnance Dr Pincherle)
  - Médecin généraliste Belgique actuel : Dr Copus
  - Médecin généraliste Luxembourg : Dr Genin
]
