// Synthèse du dossier — Christine Andres (aeiuno)
// 2026-10-21
// Document de travail — à discuter avec les médecins

#set document(
  title: "Synthèse du dossier — Christine Andres (aeiuno)",
  date: datetime(year: 2026, month: 10, day: 21),
)

#set page(
  paper: "a4",
  margin: 2.2cm,
  footer: context [
    #set text(size: 9pt, fill: rgb("666666"))
    #h(1fr)
    #counter(page).display("1 / 1", both: true)
  ],
)
#set text(font: ("STIX Two Text", "STIX Two Math", "Libertinus Serif"), size: 10.5pt, lang: "fr")
#show math.equation: set text(font: ("STIX Two Math", "STIX Two Text"))
#set par(justify: true, leading: 0.62em)
#set heading(numbering: "1.")
#show table: set text(size: 9pt)

#let keyfinding-bg     = rgb("d4edda")
#let keyfinding-border = rgb("155724")
#let hypothesis-bg     = rgb("d9edf7")
#let hypothesis-border = rgb("0c4a6e")
#let caution-bg        = rgb("f8d7da")
#let caution-border    = rgb("7f1d1d")
#let mechanism-bg      = rgb("e8e8e8")
#let mechanism-border  = rgb("2d2d2d")
#let question-bg       = rgb("fff3cd")
#let question-border   = rgb("78350f")

#let make-box(title, bg, border, body) = block(
  width: 100%,
  breakable: false,
  fill: bg,
  stroke: (left: 3pt + border, rest: 0.5pt + border),
  radius: 2pt,
  inset: (left: 10pt, rest: 8pt),
)[
  #text(weight: "bold", fill: border)[#title]
  #v(4pt)
  #body
]

#let keyfinding(title, body) = make-box("Constat clé : " + title, keyfinding-bg, keyfinding-border, body)
#let hypothesis(title, body) = make-box("Hypothèse : " + title, hypothesis-bg, hypothesis-border, body)
#let caution(title, body)    = make-box("Attention : " + title, caution-bg, caution-border, body)
#let mechanism(title, body)  = make-box(title, mechanism-bg, mechanism-border, body)
#let question(title, body)   = make-box("À clarifier : " + title, question-bg, question-border, body)

#align(center)[
  #text(size: 16pt, weight: "bold")[Synthèse du dossier — Christine Andres (aeiuno)]
  #v(4pt)
  #text(size: 11pt)[Ce que nous savons, ce que nous ne savons pas, et comment avancer]
  #v(2pt)
  #text(size: 9.5pt, style: "italic")[Document de travail préparé par la patiente et son entourage --- 21 octobre 2026]
]

#v(0.6em)

#caution("Statut du document")[
  Cette synthèse rassemble les données du dossier et propose une hiérarchie diagnostique à discuter. Elle ne pose pas de diagnostic définitif. Les traitements cités sont des pistes à valider par un médecin. Les sources sont listées en annexe.
]

#mechanism("Contexte du dossier — à lire avant la conclusion")[
  aeiuno n'est pas dans ce dépôt *parce qu'elle aurait une EM/SFC*. Elle y est parce qu'elle présente un *problème d'énergie et de fatigue persistante*, et parce que ce dépôt rassemble une documentation étendue sur ce sujet. La présence dans le dépôt n'est pas un argument diagnostique. L'EM/SFC est une hypothèse à évaluer, pas le point de départ.
]

#v(0.4em)

#outline(indent: 1em)

#pagebreak()

// =============================================================================
= Histoire clinique en dix lignes
// =============================================================================

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Période*], [*Événement*]),
  [Enfance / adolescence], [Fatigue chronique, début avec certitude avant 20 ans],
  [~2008], [Dermatose faciale récidivante, résistante aux corticoïdes],
  [2013], [TDAH diagnostiqué ; début du Concerta (méthylphénidate)],
  [2018], [Dr Pincherle : suspicion d'hypersomnie / narcolepsie ; PSG],
  [2020], [Modafinil (Provigil) attesté en plus du Concerta],
  [Nov. 2023], [Angine exceptionnellement sévère ; séquelles persistantes],
  [Juin 2025], [COVID-19 avec perte de goût et d'odorat],
  [Sept.–oct. 2025], [Aggravation nette et persistante de la fatigue],
  [Janv. 2026], [17 h de sommeil sur 24 h lors d'un épisode aigu],
  [Mars 2026], [Céphalées prolongées, fatigue intense, congé maladie],
  [Avr. 2026], [Consultation sommeil ; crash post-effort le lendemain],
  [Sept. 2026], [Bilan d'hypersomnie : PSG, TILE, T.E.A., bedrest 32 h],
)

#v(0.3em)

#mechanism("Contexte actuel")[
  - Traitement habituel : Concerta + modafinil. *Arrêt complet pendant au moins 3 semaines* avant le bilan de septembre. Statut actuel à confirmer.
  - TDAH confirmé (2013, 2018). Suivi neurologique Dr Pincherle jusqu'en 2024.
  - Pas de cataplexie connue. Paralysie du sommeil et hallucinations hypnagogiques rapportées en 2018.
  - Vertiges au lever de longue date ; inconfort en station debout.
  - Hypermobilité segmentaire (dos très flexible), dysfonction de l'ATM droite.
]

#pagebreak()

// =============================================================================
= Données objectives
// =============================================================================

== Sommeil : agenda de 21 jours

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
  table.header([*Paramètre*], [*Valeur*]),
  [Temps passé au lit], [8 h 48 en moyenne],
  [Temps de sommeil], [8 h 00 en moyenne],
  [Efficacité], [91 %],
  [Journée], [somnolence diurne ; siestes irrégulières de 30 min à 2 h 30],
)

#v(0.2em)

== Nuit de polysomnographie et bedrest de 32 heures

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Paramètre*], [*PSG1*], [*Bedrest 32 h*]),
  [Temps de sommeil total], [406 min (6 h 46)], [1111 min (18 h 31)],
  [Efficacité du sommeil], [74,7 %], [58,2 %],
  [N3], [18,8 %], [20,3 %],
  [REM], [23,2 %], [24,4 %],
  [Latence REM], [211,5 min], [78,5 min],
  [Éveils complets], [30], [67],
  [Changements de stade], [108], [274],
  [Index éveils + micro-éveils], [18,9/h], [20,9/h],
  [Index MPMS], [76,5/h], [55,5/h],
  [IAH total], [2,7/h], [4,5/h],
  [IAH dorsal], [7,5/h], [7,7/h],
  [IAH REM], [3,2/h], [8,0/h],
  [SpO2 minimale], [93,0 %], [71,8 % #text(size: 8pt)[\*]],
)

#v(2pt)
#text(size: 8.5pt)[\* Nadir incohérent avec l'absence de temps sous 90 % : probable artefact. À confirmer.]

#v(0.2em)

== TILE et cognition

#table(
  columns: (auto, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
  table.header([*Mesure*], [*Résultat*]),
  [Latences des 5 siestes], [12,0 / 5,5 / 8,0 / 20,0 / 8,3 min],
  [Latence moyenne], [10,8 min (> 8 min)],
  [SOREMP], [0],
  [Vigilance (T.E.A.)], [1269 ms, percentile 4],
  [Omissions en attention soutenue], [1 → 4 → 7],
)

#v(0.2em)

#pagebreak()

== Questionnaires et biologie

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
  table.header([*Paramètre*], [*Valeur*], [*Lecture*]),
  [Epworth (ESS)], [18/24], [somnolence subjective sévère],
  [ISI], [17/28], [insomnie modérée],
  [HAD-A / HAD-D], [11 / 13], [anxiété et dépression modérées],
  [Ferritine], [57 µg/L], [bas-normale ; cible > 75--100],
  [B12], [188--241 ng/L], [bas de gamme, non recontrôlée],
  [Vitamine D], [43 ng/mL], [insuffisante, cible > 60],
  [TSH / T4L], [normales], [thyroïde exclue],
  [Hémoglobine], [13,4 g/dL], [pas d'anémie],
  [CRP], [0,7 mg/L], [pas d'inflammation systémique],
)

// =============================================================================
= Ce qui est exclu, et ce qui reste ouvert
// =============================================================================

== Exclu de façon robuste

#keyfinding("Narcolepsie : exclue")[
  - Aucun SOREMP sur la PSG (latence REM 211,5 min) ni sur les cinq siestes.
  - Latence moyenne au TILE : 10,8 min (> 8 min).
  - Pas de cataplexie.
  - *Aucun médicament pendant au moins 3 semaines* avant le bilan : le TILE est valide.

  Réserve : si la PSG de 2018--2019 montrait un SOREMP véritable, le dossier mérite une réévaluation. Le bilan de 2026 ne le confirme pas.
]

#v(0.2em)

#keyfinding("Apnées obstructives : exclues par l'index")[
  IAH total 2,7/h et 4,5/h. Pas d'apnée obstructive significative. Mais l'IAH dorsal (7,5--7,7/h) et l'IAH REM (8,0/h) montrent une tendance positionnelle et REM, insuffisante pour un diagnostic.
]

#v(0.2em)

== Non confirmé

#hypothesis("Hypersomnie idiopathique — probabilité faible à modérée")[
  Arguments contre : TILE à 10,8 min ; sommeil habituel de 8 h ; bedrest à 18 h 31, sous la convention de 19 h/32 h.

  Réserve : la convention 19 h/32 h n'est pas un critère ICSD-3. L'ICSD-3 retient un TST sur 24 h ≥ 11 h. Le bedrest correspond à environ 13 h 53 pour 24 h. Il n'existe pas de mesure directe du TST sur 24 h. Une actigraphie trancherait.
]

#v(0.2em)

#caution("Trois incohérences du rapport à corriger")[
  + *1111 min = 18 h 31*, pas 18 h 21.
  + *« Absence de somnolence diurne excessive »* contredit l'Epworth à 18/24. La formulation correcte est : dissociation subjectif--objectif.
  + *« Pas de clinique RLS typique »* contredit les plaintes enregistrées : sensations désagréables dans les jambes, soulagées par le mouvement, au repos. Ce sont les critères cardinaux du RLS.
]

#v(0.2em)

== Reste ouvert

#question("UARS")[
  Le bilan ne mesure ni les RERA, ni la pression œsophagienne, ni la limitation de débit. Le champ « ronflement » est vide. L'index de désaturation en sommeil au bedrest (8,5/h) est supérieur à l'IAH (4,5/h). Le nadir à 71,8 % en REM est incohérent avec l'absence de temps sous 90 %. *UARS non exclu.*
]

#question("Autres angles morts")[
  - TST réel sur 24 h (actigraphie absente).
  - POTS (pas de tilt test).
  - MCAS (pas de tryptase ni de médiateurs urinaires).
  - hEDS / CCI (pas de Beighton ni d'évaluation cervicale).
  - Maladie cœliaque, B12/folates, homocystéine.
  - Dépression / anxiété (scores seulement, pas d'évaluation clinique).
  - PSG de 2018--2019 (SOREMP ?).
  - Seconde nuit de PSG annoncée mais non présentée.
]

// =============================================================================
= Conclusion : hiérarchie diagnostique
// =============================================================================

#caution("Ce que ce dossier permet d'affirmer, et ce qu'il ne permet pas")[
  Le bilan exclut la narcolepsie et l'OSA. Il montre un sommeil fragmenté, non réparateur, des MPMS très nombreux et une insuffisance martiale. Il *ne prouve pas* le diagnostic d'EM/SFC. Mais il *ne l'exclut pas* non plus : l'EM/SFC reste une hypothèse ouverte, et l'exclusion des autres causes n'est pas complète.
]

#table(
  columns: (auto, 1.4fr, auto, 1.5fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Rang*], [*Hypothèse*], [*Probabilité*], [*Base*]),
  [1], [*RLS / PLMD* avec insuffisance martiale], [élevée #text(size: 8pt)[\*]], [MPMS 76,5/h et 55,5/h ; plaintes RLS ; ferritine 57 ; fragmentation],
  [2], [*EM/SFC*], [modérée à élevée], [hypothèse non exclue ; fatigue depuis l'adolescence, sommeil non réparateur, MPE, troubles cognitifs, intolérance orthostatique],
  [3], [*Dépression atypique / anxiété*], [modérée], [HAD-D 13 ; HAD-A 11 ; insomnie],
  [4], [*Insomnie*], [modérée], [ISI 17 ; réveils ; « sensation de ne pas dormir »],
  [5], [*UARS*], [faible à modérée], [IAH dorsal/REM ~8/h ; ODI 8,5/h ; pas de RERA mesurés],
  [6], [*Hypersomnie idiopathique*], [faible à modérée], [TILE 10,8 min ; TST habituel 8 h ; bedrest 18 h 31],
  [7], [*POTS / MCAS / hEDS-CCI*], [suspectés], [vertiges au lever ; dermatose ; hypermobilité],
  [8], [*Narcolepsie*], [exclue], [aucun SOREMP ; TILE 10,8 min ; sans médicament],
  [9], [*OSA*], [exclue], [IAH 2,7 et 4,5/h],
)

#v(2pt)
#text(size: 8.5pt)[\* Signal objectif le plus fort. Certitude modérée pour le *PLMD* : l'association MPMS--micro-éveil est cotée à 0,0/h.]

#v(0.4em)

#keyfinding("La conclusion en une phrase")[
  Le problème clinique est un *problème d'énergie et de fatigue persistante*. Le diagnostic le plus solidement étayé par les données objectives est le *RLS/PLMD avec ferritine basse* --- et c'est aussi le plus facile à traiter. L'*EM/SFC ne peut pas être exclue* : elle reste l'hypothèse intégrative principale, mais elle n'est pas confirmée. Il faut traiter le concret, documenter le MPE et l'intolérance orthostatique, puis réévaluer.
]

#v(0.3em)

#caution("Pourquoi je ne dis pas « EM/SFC certain »")[
  - La présence dans ce dépôt n'est pas une preuve : le dépôt est une base de connaissances sur la fatigue et l'énergie, pas un critère diagnostique.
  - Le diagnostic d'EM/SFC était déjà posé dans le dossier avant le bilan. Risque de biais de confirmation.
  - Le MPE est suggéré, pas formellement documenté : le crash du 8 avril 2026 est coté à ~0 h de délai, alors que le MPE classique est différé de 12 à 72 h.
  - La dépression atypique est un concurrent sérieux.
  - L'exclusion n'est pas complète : UARS, maladie cœliaque, B12, POTS, MCAS, hEDS/CCI.
]

// =============================================================================
= Où chercher la confirmation
// =============================================================================

#table(
  columns: (auto, 1.5fr, 1.5fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Hypothèse*], [*Examen*], [*Ce que cela changerait*]),
  [RLS / PLMD], [Ferritine, saturation de la transferrine, CRP ; entretien URGE ; essai de fer], [confirme l'insuffisance martiale ; traite la fragmentation],
  [EM/SFC], [Agenda PEM prospectif ; tilt test ; critères ICC 2011], [documente le MPE et l'intolérance orthostatique],
  [UARS], [Relire la PSG brute : RERA, RDI, limitation de débit, règle des hypopnées ; ± Pes], [exclut ou confirme une cause respiratoire],
  [Hypersomnie idiopathique], [Actigraphie 2 semaines avec jours libres], [mesure le TST réel sur 24 h],
  [POTS], [Tilt test ou active stand], [confirme la dysautonomie],
  [MCAS], [Tryptase basale, N-méthylhistamine et PGD2 urinaires], [confirme ou exclut le MCAS],
  [hEDS / CCI], [Score de Beighton ; évaluation cervicale], [confirme l'hypermobilité et le CCI],
  [Maladie cœliaque], [Anti-tTG IgA + IgA totales], [exclut une cause digestive],
  [Carence B12 / folates], [B12, folates, MMA, homocystéine], [corrige un déficit fonctionnel],
  [Dépression / anxiété], [Évaluation clinique ; risque suicidaire], [traite un concurrent sérieux],
  [Narcolepsie (histoire)], [Rapport brut PSG 2018--2019], [réconcilie le motif « réévaluation »],
)

// =============================================================================
= Comment agir
// =============================================================================

== Maintenant (sans attendre)

#mechanism("Mesures à faible risque, à valider avec le médecin traitant")[
  - *Fer* : fer bisglycinate 25 mg + vitamine C, à jeun, à distance du magnésium et du café. Cible ferritine > 75--100 µg/L. Contrôle à 3 mois.
  - *Vitamine D3 + K2* : 3 000--4 000 UI/j, cible > 60 ng/mL.
  - *B12* : méthylcobalamine si le dosage confirme un déficit fonctionnel (MMA, homocystéine).
  - *Rhinite allergique* : corticoïde nasal ± antihistaminique ; réduit la résistance nasale.
  - *Sommeil* : horaires réguliers, lumière matinale, chambre fraîche et sombre ; éviter l'alcool et la caféine tardive.
  - *Pacing* : respecter l'enveloppe énergétique ; éviter l'effort brutal ; journal de symptômes et de MPE.
]

#v(0.2em)

== Avec les spécialistes

#table(
  columns: (auto, 1.4fr, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Interlocuteur*], [*Demande*], [*Pourquoi*]),
  [Dr Dusart (sommeil)], [Relire la PSG brute : RERA/RDI, règle des hypopnées, nadir SpO2 ; recoter les MPMS ; discuter une 2e PSG], [UARS, PLMD, cohérence du rapport],
  [Dr Dusart], [Discuter le TST sur 24 h et l'actigraphie ; le cas échéant, répéter le TILE], [hypersomnie idiopathique],
  [Neurologue], [Rapport PSG 2018--2019 ; HLA-DQB1*06:02 seulement si cataplexie], [histoire de narcolepsie],
  [Cardiologie], [Tilt test / active stand], [POTS],
  [Allergologie / immunologie], [Tryptase, médiateurs urinaires ; test H1 + H2], [MCAS],
  [Rhumatologie / génétique], [Beighton ; évaluation cervicale], [hEDS / CCI],
  [Gastro-entérologie], [Sérologie cœliaque], [cause digestive],
  [Psychiatrie / psychologie], [Évaluation de l'humeur ; CBT-I adaptée ; claustrophobie], [dépression, insomnie],
)

#v(0.2em)

== Ce qu'il faut éviter

#caution("À ne pas faire sans avis")[
  - *GET* (thérapie par l'exercice gradué) si le MPE est confirmé.
  - *Restriction agressive du sommeil* en CBT-I : peut aggraver le MPE.
  - *Agonistes dopaminergiques* avant correction du fer : risque d'augmentation.
  - *Benzodiazépines et sédatifs à demi-vie longue* : majorent la somnolence diurne.
  - *Antagonistes de l'orexine (DORA)* sans diagnostic clair : peuvent aggraver une somnolence centrale.
  - *Psychostimulants sans pacing* : masquent la fatigue et peuvent favoriser le MPE.
]

#v(0.2em)

#mechanism("Suivi proposé")[
  - Journal quotidien : sommeil, siestes, douleur, humeur, MPE (délai et durée).
  - Ferritine et vitamine D à 3 mois.
  - Réévaluation des MPMS et de la fragmentation après correction du fer.
  - Réévaluation du diagnostic après traitement des causes concrètes : si la fatigue persiste et que le MPE/OI sont documentés, l'EM/SFC devient l'hypothèse principale non exclue.
]

// =============================================================================
= Questions ouvertes et signaux d'alerte
// =============================================================================

#question("Questions à trancher")[
  + Le jeûne médicamenteux de 3 semaines couvrait-il aussi les questionnaires et le bedrest ?
  + Où est la seconde polysomnographie annoncée ?
  + L'index MPMS de 76,5/h avec 0,0/h de micro-éveil a-t-il été recoté ?
  + Le nadir de SpO2 à 71,8 % est-il réel ?
  + La PSG de 2018--2019 montrait-elle un SOREMP véritable ?
  + Quel est le TST réel sur 24 h, jours libres inclus ?
  + Le RLS est-il retenu cliniquement malgré la conclusion du rapport ?
]

#v(0.2em)

#caution("Signaux d'alerte — consulter sans attendre")[
  - Cataplexie nouvelle, paralysie du sommeil avec chute, ou blessure pendant le sommeil.
  - Déficit neurologique focal, céphalée sévère nouvelle, perte visuelle.
  - Idées suicidaires.
  - Apnée observée avec désaturation, ou hypoxémie nocturne.
]

#v(0.4em)

#keyfinding("Le message final")[
  Ce dossier n'est pas « normal ». Il exclut une narcolepsie et des apnées significatives. Il montre un sommeil fragmenté, des MPMS très nombreux, une insuffisance martiale et une dissociation subjectif--objectif. Le fil le plus solide est le *RLS/PLMD avec ferritine basse* ; l'*EM/SFC ne peut pas être exclue* et reste l'hypothèse intégrative principale. Les deux peuvent coexister. Il faut traiter le premier, documenter la seconde, et réévaluer.
]

// =============================================================================
= Glossaire des sigles utilisés dans ce document
// =============================================================================

Ce document utilise les sigles suivants. Ils sont définis ici une seule fois.

#table(
  columns: (auto, 1fr, 1.5fr),
  stroke: 0.5pt,
  inset: 4pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Sigle*], [*Signification*], [*En clair*]),
  [aeiuno], [pseudonyme], [Nom de code de la patiente. Ce n'est pas un sigle médical.],
  [ATM], [articulation temporo-mandibulaire], [L'articulation de la mâchoire.],
  [B12], [cobalamine], [Vitamine importante pour les nerfs et le sang.],
  [CBT-I], [cognitive behavioral therapy for insomnia], [Thérapie cognitivo-comportementale de l'insomnie.],
  [CCI], [craniocervical instability / instabilité cranio-cervicale], [Mobilité excessive à la jonction entre le crâne et la colonne.],
  [COVID-19], [coronavirus disease 2019], [Maladie à coronavirus 2019.],
  [CRP], [protéine C-réactive], [Marqueur d'inflammation.],
  [D3 / K2], [vitamines D3 / K2], [Vitamines du squelette et de l'immunité.],
  [DORA], [dual orexin receptor antagonist], [Médicament qui bloque l'orexine, une substance qui maintient l'éveil.],
  [DQB1\*06:02], [allèle HLA], [Variante génétique fortement associée à la narcolepsie de type 1.],
  [Dr], [docteur], [Titre du médecin.],
  [EM/SFC], [encéphalomyélite myalgique / syndrome de fatigue chronique], [Maladie chronique : fatigue profonde, malaise après effort, sommeil non réparateur.],
  [ESS], [Epworth Sleepiness Scale], [Échelle de somnolence. Score sur 24.],
  [GET], [graded exercise therapy], [Thérapie par l'exercice gradué. Contre-indiquée si le MPE est présent.],
  [H1 / H2], [récepteurs de l'histamine], [Cibles des antihistaminiques.],
  [HAD-A / HAD-D], [sous-échelles anxiété / dépression de l'échelle HAD], [Deux scores sur 21 : A = anxiété, D = dépression.],
  [hEDS], [hypermobile Ehlers-Danlos syndrome], [Hypermobilité articulaire d'origine génétique.],
  [HLA], [human leukocyte antigen], [Système immunitaire qui présente les antigènes.],
  [IAH], [index d'apnées-hypopnées], [Nombre d'événements respiratoires par heure de sommeil.],
  [ICC], [International Consensus Criteria], [Critères internationaux de l'EM/SFC (2011).],
  [ICSD-3], [International Classification of Sleep Disorders, 3e édition], [Classification internationale des troubles du sommeil.],
  [ISI], [Insomnia Severity Index], [Score de sévérité de l'insomnie, sur 28.],
  [MCAS], [mast cell activation syndrome / syndrome d'activation mastocytaire], [Les mastocytes libèrent trop de médiateurs : allergies, flush, troubles digestifs, fatigue.],
  [MMA], [acide méthylmalonique], [Marqueur d'une carence fonctionnelle en B12.],
  [MPE], [malaise post-effort], [Aggravation des symptômes 12 à 72 h après un effort.],
  [MPMS], [mouvements périodiques des membres inférieurs], [Mouvements involontaires des jambes pendant le sommeil.],
  [N3], [stade 3 du sommeil lent], [Sommeil profond.],
  [ODI], [oxygen desaturation index], [Nombre de baisses d'oxygène par heure.],
  [OI], [intolérance orthostatique], [Symptômes en position debout : vertiges, palpitations, fatigue.],
  [OSA], [obstructive sleep apnea], [Apnées obstructives du sommeil : la gorge se ferme pendant le sommeil.],
  [PEM], [post-exertional malaise], [Version anglaise de MPE.],
  [Pes], [pression œsophagienne], [Mesure de l'effort respiratoire par un petit cathéter.],
  [PGD2], [prostaglandine D2], [Marqueur de l'activation des mastocytes.],
  [PLMD], [periodic limb movement disorder], [MPMS avec retentissement : sommeil non réparateur ou fatigue.],
  [POTS], [postural orthostatic tachycardia syndrome], [Le cœur s'accélère au passage debout, avec symptômes.],
  [PSG / PSG1], [polysomnographie], [Examen du sommeil en laboratoire. PSG1 = première nuit.],
  [RDI], [respiratory disturbance index], [IAH plus les RERA.],
  [REM], [rapid eye movement], [Sommeil paradoxal, phase des rêves.],
  [RERA], [respiratory effort-related arousal], [Micro-éveil causé par un effort respiratoire, sans apnée complète.],
  [RLS], [restless legs syndrome], [Syndrome des jambes sans repos : envie de bouger les jambes au repos, soulagée par le mouvement.],
  [SOREMP], [sleep-onset REM period], [Endormissement direct en sommeil paradoxal. Anormal.],
  [SpO2], [saturation en oxygène], [Pourcentage d'oxygène dans le sang.],
  [T4L], [thyroxine libre], [Hormone thyroïdienne active.],
  [TDAH], [trouble du déficit de l'attention avec ou sans hyperactivité], [Trouble de l'attention et de l'impulsivité.],
  [TILE], [test itératif de latence d'endormissement], [Cinq siestes pour mesurer le temps d'endormissement.],
  [TSH], [thyréostimuline], [Hormone qui commande la thyroïde.],
  [TST], [total sleep time], [Temps de sommeil total.],
  [UARS], [upper airway resistance syndrome], [Résistance des voies aériennes supérieures, sans apnée complète.],
  [URGE], [Urge, Rest, Gets better, Evening], [Les quatre critères du RLS : envie, repos, soulagement par le mouvement, soirée.],
)

// =============================================================================
= Annexe — sources
// =============================================================================

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  table.header([*Document*], [*Contenu*]),
  [evidence/20260921\_Bilan-hypersomnie\_StLucBouge\_ChristineAndres.pdf], [Rapport original du bilan],
  [evidence/20260921\_sleep-study.yaml], [Extraction structurée des données],
  [evidence/diagnoses.yaml], [Synthèse diagnostique structurée],
  [generated/20261021\_bilan-hypersomnie-SaintLuc.typ], [Analyse détaillée du bilan],
  [generated/20260407\_rapport-clinique-CAN-sommeil.typ], [Rapport clinique de synthèse antérieur],
  [generated/20260322 narcolepsy-pattern sleep.aeiuno.typ], [Analyse du pattern narcoleptique de 2018--2019],
  [self-reported/known-features.yaml], [Hypermobilité, ATM, sommeil],
)

#v(0.4em)

#text(size: 8.5pt, style: "italic")[
  Rappel : cette synthèse est préparée par la patiente et son entourage pour faciliter le dialogue médical. Elle ne remplace ni les rapports originaux, ni l'avis des médecins. Les scores et seuils cités proviennent des documents sources. Les interprétations et la hiérarchie diagnostique sont des propositions à discuter.
]
