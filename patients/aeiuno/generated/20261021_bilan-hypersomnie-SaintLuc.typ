// Analyse du bilan d'hypersomnie — Christine Andres (CAN)
// Clinique Saint-Luc, Bouge — 21–22 septembre 2026
// Document préparé le 2026-10-21

#set document(
  title: "Bilan d'hypersomnie — analyse et proposition diagnostique",
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

// ── Palette accessible (contraste ≥ 4.5:1) ───────────────────────────────────
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

// ── Titre ────────────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Bilan d'hypersomnie — analyse et proposition diagnostique]
  #v(4pt)
  #text(size: 12.5pt)[Christine Paula Andres]
  #v(2pt)
  #text(size: 10.5pt)[Clinique Saint-Luc, Bouge --- 21 et 22 septembre 2026]
  #v(2pt)
  #text(size: 9.5pt, style: "italic")[Document de travail préparé par la patiente --- 21 octobre 2026]
]

#v(0.6em)

#caution("Document de travail — ne remplace pas l'avis médical")[
  Cette analyse reformule les résultats du bilan et propose une hiérarchie diagnostique à discuter avec le Dr Dusart et les médecins traitants. Elle ne pose pas de diagnostic définitif. Les traitements évoqués sont des pistes à valider par un médecin. Les données sources sont listées en annexe.
]

#v(0.4em)

#outline(indent: 1em)

#pagebreak()

// =============================================================================
= Résumé exécutif
// =============================================================================

#keyfinding("Le bilan ne confirme ni narcolepsie ni hypersomnie idiopathique — mais il ne dit pas « tout est normal »")[
  Trois résultats objectifs dominent :

  + *Sommeil fragmenté et non réparateur* : index d'éveils/micro-éveils à 18,9/h (nuit PSG) et 20,9/h (bedrest), 30 puis 67 éveils complets, 108 puis 274 changements de stade.
  + *Mouvements périodiques des membres inférieurs très élevés* : 76,5/h et 55,5/h (norme : < 15/h). Ferritine à 57 µg/L.
  + *Dissociation subjectif–objectif* : Epworth à 18/24 (somnolence subjective sévère), mais latence moyenne au TILE à 10,8 min (pas de somnolence objective).

  Le tableau ne correspond pas à une hypersomnie centrale primaire. Il correspond à un *sommeil non réparateur avec fragmentation, probable syndrome des jambes sans repos, et fatigue chronique d'allure EM/SFC*.
]

#v(0.4em)

#mechanism("Les quatre chiffres à retenir")[
  - *18 h 31* de sommeil sur 32 h au bedrest (1111 min) — et non 18 h 21 comme écrit dans le rapport.
  - *10,8 min* de latence moyenne au TILE — au-dessus du seuil de 8 min.
  - *0* SOREMP sur la PSG et sur les cinq siestes.
  - *76,5/h* d'index de mouvements périodiques — le principal stigmate objectif.
]

#pagebreak()

// =============================================================================
= Les données de l'examen
// =============================================================================

== Agenda du sommeil (21 jours)

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
  table.header([*Paramètre*], [*Valeur*]),
  [Coucher], [22 h 00 – 00 h 00],
  [Lever], [07 h 00 – 10 h 00],
  [Temps passé au lit], [8 h 48 en moyenne],
  [Temps de sommeil], [8 h 00 en moyenne],
  [Efficacité], [91 %],
  [Journée], [somnolence excessive ; siestes irrégulières de 30 min à 2 h 30],
)

#v(0.3em)

== Nuit de polysomnographie et bedrest de 32 heures

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Paramètre*], [*PSG1*], [*Bedrest 32 h*]),
  [Temps de sommeil total], [406 min (6 h 46)], [1111 min (18 h 31)],
  [Temps d'éveil], [137 min], [799 min (13 h 19)],
  [Efficacité du sommeil], [74,7 %], [58,2 %],
  [Continuité du sommeil], [79,5 %], [58,7 %],
  [N1], [7,7 %], [7,2 %],
  [N2], [50,2 %], [48,1 %],
  [N3], [18,8 %], [20,3 %],
  [REM], [23,2 %], [24,4 %],
  [Latence REM], [211,5 min], [78,5 min],
  [Éveils complets], [30], [67],
  [Changements de stade], [108], [274],
  [Index éveils + micro-éveils], [18,9/h], [20,9/h],
  [Index MPMS], [76,5/h], [55,5/h],
  [Index apnées/hypopnées], [2,7/h], [4,5/h],
  [IAH dorsal], [7,5/h], [7,7/h],
  [IAH REM], [3,2/h], [8,0/h],
  [SpO2 moyenne], [95,6 %], [95,0 %],
  [SpO2 minimale], [93,0 %], [71,8 % #text(size: 8pt)[\*]],
)

#v(2pt)
#text(size: 8.5pt)[\* Le nadir à 71,8 % contredit l'absence de temps sous 90 % : probable artefact ou échantillon isolé. À faire confirmer par le laboratoire.]

#v(0.3em)

== Test itératif de latence d'endormissement (TILE)

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
  table.header([*Sieste*], [*1*], [*2*], [*3*], [*4*], [*5*]),
  [Heure], [08:31], [10:31], [12:32], [14:32], [16:32],
  [Latence (min)], [12,0], [5,5], [8,0], [20,0], [8,3],
)

#v(2pt)
Latence moyenne : *10,8 min*. Nombre de SOREMP : *0*. Deux siestes ont une latence ≤ 8 min, mais la moyenne reste au-dessus du seuil. Le TILE ne met pas en évidence d'hypersomnie.

#v(0.3em)

== Évaluation cognitive (T.E.A.)

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
  table.header([*Épreuve*], [*Résultat*], [*Percentile*]),
  [Alerte phasique (sans avertisseur)], [281 ms], [18],
  [Alerte phasique (avec avertisseur)], [273 ms], [14],
  [Attention soutenue — omissions], [12], [10],
  [Vigilance — temps de réaction], [1269 ms], [4],
  [Go/No Go], [433 ms], [31],
)

#v(2pt)
Profil *dans la norme inférieure*, avec ralentissement psychomoteur et dégradation de l'attention soutenue (omissions 1 → 4 → 7). Ce profil est compatible avec une *fatigue cognitive* objectivée, pas avec une simple plainte subjective.

#v(0.3em)

== Questionnaires

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
  table.header([*Échelle*], [*Score*], [*Lecture*]),
  [Epworth (ESS)], [18/24], [somnolence subjective sévère],
  [Index de sévérité de l'insomnie (ISI)], [17/28], [insomnie clinique modérée],
  [HAD — anxiété], [11], [anxiété modérée],
  [HAD — dépression], [13], [dépression modérée],
  [Claustrophobie], [54], [souffrance 21 ; restriction 33],
)

#pagebreak()

// =============================================================================
= Trois incohérences internes du rapport
// =============================================================================

Ces points ne sont pas des détails : ils changent la lecture du résultat.

#caution("1. « Absence de somnolence diurne excessive » — contredit par l'Epworth à 18/24")[
  Le rapport conclut à l'absence de somnolence diurne excessive. Or l'Epworth est à *18/24*, ce qui correspond à une somnolence subjective sévère. Ce qui est absent, c'est la somnolence *objective* au TILE (10,8 min). La formulation correcte est : *dissociation subjectif–objectif*, pas absence de somnolence.
]

#caution("2. « Pas de clinique RLS typique » — contredit par les plaintes enregistrées")[
  Le rapport note « pas de clinique compatible avec un syndrome de jambes sans repos ». Mais la section des plaintes décrit : *sensations désagréables dans les jambes, soulagées par le mouvement, débutant au repos ou à l'inactivité*. Ce sont les critères cardinaux du RLS. L'entretien clinique URGE doit trancher.
]

#caution("3. « 18 h 21 » — le calcul donne 18 h 31")[
  1111 min = *18 h 31*, pas 18 h 21. La somme des stades (79 + 535 + 225 + 271 = 1110 min) confirme 1111 min. L'écart de 10 min ne change pas la conclusion, mais il doit être corrigé : 18 h 31 est à 29 min du seuil de 19 h, pas à 39 min.
]

#v(0.3em)

#question("Autres points à faire préciser")[
  - La latence d'endormissement de la PSG1 est indiquée à *31,5 min* dans le tableau et à *14 min* dans la conclusion.
  - La latence du bedrest est indiquée à *18,5 min* dans le tableau et à *20 min* dans la conclusion.
  - Le rapport mentionne une « double polysomnographie » mais ne présente qu'une nuit et le bedrest. Où est la seconde nuit ?
  - L'index MPMS est à 76,5/h avec *0,0/h associé à un micro-éveil*. C'est inhabituel. L'association a-t-elle été cotée ?
]

#pagebreak()

// =============================================================================
= Ce que l'examen exclut, et ce qu'il n'exclut pas
// =============================================================================

== Narcolepsie : très probablement exclue

#keyfinding("Pas de narcolepsie sur ce bilan")[
  - Aucun SOREMP sur la PSG (latence REM 211,5 min) ni sur les cinq siestes.
  - Latence moyenne au TILE : 10,8 min (> 8 min).
  - Pas de cataplexie rapportée.

  *Validité du TILE* : le bilan a été réalisé *sans aucun médicament pendant au moins 3 semaines* avant la polysomnographie. Le TILE est donc valide, et l'exclusion de la narcolepsie est *robuste*. Un effet rebond résiduel des stimulants est peu probable à 3 semaines, mais il peut majorer la fatigue de fond.
]

#v(0.2em)

#question("Et le « pattern narcoleptique » de 2018 ?")[
  Le motif de l'examen est « réévaluation d'une narcolepsie ». Le bilan actuel ne reproduit pas de pattern narcoleptique. Il faut obtenir le rapport brut de la PSG de 2018–2019 et comparer : y avait-il un SOREMP véritable, ou seulement une latence REM courte non spécifique ? Si le SOREMP de 2018 était réel, une narcolepsie de type 2 reste possible malgré un TILE négatif — mais elle n'est plus soutenue par les données actuelles.
]

#v(0.2em)

== Apnées du sommeil : exclues par l'index

L'IAH total est de 2,7/h et 4,5/h, sous le seuil de 5/h. Il n'y a pas d'apnée obstructive significative. Deux nuances : l'IAH dorsal (7,5–7,7/h) et l'IAH REM (8,0/h) montrent une *tendance positionnelle et REM*, insuffisante pour un diagnostic mais à revoir si le poids augmente ou si un ronflement apparaît.

#v(0.2em)

== Hypersomnie idiopathique : non confirmée, pas exclue

#hypothesis("Hypersomnie idiopathique — probabilité faible à modérée")[
  *Arguments contre* : TILE à 10,8 min ; sommeil habituel de 8 h par nuit à l'agenda ; bedrest à 18 h 31, sous la convention de 19 h/32 h utilisée par le laboratoire.

  *Arguments pour / réserves* : la convention 19 h/32 h n'est pas un critère ICSD-3. L'ICSD-3 retient un temps de sommeil total sur 24 h ≥ 11 h. Le bedrest correspond à environ *13 h 53 pour 24 h*, ce qui est élevé. Il n'existe pas de mesure directe du TST sur 24 h.

  *Conclusion* : le diagnostic n'est pas retenu sur ce bilan, mais il n'est pas formellement exclu. Une actigraphie de 2 semaines, incluant des jours libres, est l'examen qui trancherait.
]

#v(0.2em)

== Ce que le bilan ne mesure pas

#mechanism("Angles morts")[
  - *UARS* : pas de mesure des RERA ni de pression œsophagienne ; ronflement non documenté.
  - *Sommeil habituel réel* : l'agenda donne 8 h, mais l'actigraphie n'a pas été faite.
  - *Besoin individuel de sommeil* : 8 h peut être insuffisant pour cette patiente ; le bedrest montre une capacité à 13,9 h/24 h.
  - *Microstructure du sommeil* : pas d'analyse spectrale (densité de fuseaux, ondes lentes).
  - *Chronotype* : pas d'actigraphie ni de mesure de mélatonine.
  - *Médicaments* : arrêt complet depuis ≥ 3 semaines avant l'examen. Le TILE est donc valide. Un rebond résiduel des stimulants est peu probable à 3 semaines, mais peut majorer la fatigue de fond.
]

#pagebreak()

// =============================================================================
= Lecture clinique : que raconte ce sommeil ?
// =============================================================================

#keyfinding("Le sommeil est long, mais il n'est pas réparateur — et il est fragmenté")[
  La patiente peut dormir 18 h 31 en 32 h. Ce n'est pas un sommeil « normal » : c'est un sommeil de grande capacité, mais avec 67 éveils, 274 changements de stade et un index d'éveils/micro-éveils de 20,9/h. Autrement dit, *la quantité est là, la qualité ne l'est pas*.

  Le sommeil lent profond (20,3 %) et le REM (24,4 %) sont conservés en pourcentage. Le problème n'est donc pas un déficit de stades, mais une *continuité* insuffisante et une fragmentation excessive.
]

#v(0.2em)

#mechanism("Trois mécanismes plausibles, non exclusifs")[
  + *MPMS / RLS* : index à 76,5/h, ferritine à 57 µg/L. Les mouvements fragmentent le sommeil et empêchent la récupération. C'est le mécanisme le plus facilement traitable.
  + *Hyperarousal / anxiété / claustrophobie* : HAD-A 11, claustrophobie 54, ISI 17. L'environnement de laboratoire et l'hypervigilance peuvent majorer la fragmentation.
  + *Sommeil non réparateur central (EM/SFC)* : même en dehors des MPMS, le sommeil ne restaure pas. C'est le cœur du tableau EM/SFC, et cela ne se corrige pas par une simple augmentation de la durée.
]

#v(0.2em)

#keyfinding("La dissociation subjectif–objectif est le signe le plus intéressant")[
  Epworth 18/24 + TILE 10,8 min = la patiente *se sent* très somnolente, mais *ne s'endort pas* anormalement vite au laboratoire. Ce profil est compatible avec l'EM/SFC et documenté dans la littérature : la somnolence est réelle pour la patiente, mais elle n'est pas médiée par une pression de sommeil anormale. Il explique aussi pourquoi les psychostimulants peuvent décevoir : ils traitent l'éveil, pas la cause de la fatigue.
]

#v(0.2em)

#caution("Ce que cela ne veut pas dire")[
  Une dissociation subjectif–objectif ne signifie pas que la plainte est psychologique. Elle signifie que *le test ne capture pas le mécanisme*. L'EM/SFC est précisément une condition où les tests standards de sommeil sont souvent normaux alors que le sommeil n'est pas réparateur.
]

#pagebreak()

// =============================================================================
= Proposition diagnostique
// =============================================================================

#caution("Proposition — à valider par le médecin")[
  La hiérarchie ci-dessous est une proposition de lecture, pas un diagnostic posé. Elle est ordonnée par probabilité et par utilité thérapeutique.
]

#table(
  columns: (auto, 1.3fr, auto, 1.5fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Niveau*], [*Diagnostic proposé*], [*Probabilité*], [*Base*]),
  [1], [*EM/SFC* (encéphalomyélite myalgique / syndrome de fatigue chronique)], [modérée à élevée], [hypothèse non exclue ; fatigue chronique, sommeil non réparateur, MPE, troubles cognitifs, intolérance orthostatique ; diagnostic d'exclusion, exclusion incomplète],
  [2], [*RLS / PLMD* avec insuffisance martiale], [élevée #text(size: 8pt)[\*\*]], [MPMS 76,5/h et 55,5/h ; plaintes RLS ; ferritine 57 µg/L ; fragmentation],
  [3], [*Insomnie* avec dissociation subjectif–objectif], [modérée], [ISI 17 ; efficacité 74,7 % à la PSG1 ; réveils de fin de nuit ; « sensation de ne pas dormir »],
  [4], [*Anxiété / dépression* comorbide], [modérée], [HAD-A 11 ; HAD-D 13 ; claustrophobie 54],
  [5], [*POTS / intolérance orthostatique*], [suspectée], [vertiges au lever ; à confirmer par tilt test],
  [6], [*MCAS* / *hEDS-CCI*], [suspectées], [dermatose corticorésistante ; hypermobilité segmentaire ; céphalées posturales],
  [7], [*Narcolepsie*], [exclue #text(size: 8pt)[\*]], [aucun SOREMP ; TILE 10,8 min ; pas de cataplexie],
  [8], [*Apnées du sommeil*], [exclues], [IAH 2,7 et 4,5/h],
  [9], [*Hypersomnie idiopathique*], [non confirmée], [TILE 10,8 min ; TST habituel 8 h ; bedrest 18 h 31],
)

#v(2pt)
#text(size: 8.5pt)[\* Exclusion robuste : aucun médicament depuis ≥ 3 semaines avant la PSG ; TILE valide.]
#text(size: 8.5pt)[\*\* Le signal objectif le plus fort. La certitude sur le *PLMD* est modérée, car l'association MPMS–micro-éveil est cotée à 0,0/h.]

#v(0.3em)

#caution("Ce que ce bilan ne permet pas d'affirmer")[
  Le ME/CFS est la *meilleure hypothèse intégrative*, mais ce n'est pas un diagnostic confirmé par ce bilan. Le bilan exclut la narcolepsie et l'OSA, et montre une fragmentation. Il ne prouve pas le ME/CFS. Le ME/CFS reste un diagnostic d'exclusion, et l'exclusion n'est pas complète (UARS, maladie cœliaque, B12, POTS, MCAS, hEDS/CCI). La dépression atypique reste un concurrent sérieux.
]

#v(0.4em)

#keyfinding("Hypothèse intégrative principale : EM/SFC, avec RLS/PLMD traitable en comorbidité")[
  Le bilan d'hypersomnie ne montre pas d'hypersomnie centrale primaire. Il montre un sommeil fragmenté, non réparateur, avec des MPMS très nombreux et une insuffisance martiale. Le tableau clinique — fatigue depuis l'adolescence, sommeil non réparateur, MPE, brouillard cognitif, intolérance orthostatique — correspond à l'EM/SFC. Le RLS/PLMD est le facteur le plus directement traitable.
]

#v(0.3em)

#question("Pourquoi pas une narcolepsie, malgré le motif de l'examen ?")[
  Parce que les trois marqueurs clés manquent : pas de SOREMP, latence moyenne > 8 min, pas de cataplexie. Le motif « réévaluation d'une narcolepsie » doit être réconcilié avec le rapport de 2018–2019. Si le SOREMP de 2018 était réel, le dossier mérite une discussion, mais le bilan de 2026 ne le confirme pas.
]

#v(0.3em)

#question("Pourquoi pas une hypersomnie idiopathique ?")[
  Parce que le TILE est normal et que le sommeil habituel est de 8 h. Le bedrest à 18 h 31 est élevé mais reste sous la convention du laboratoire, et il peut refléter une capacité de sommeil plutôt qu'un besoin pathologique. Le diagnostic n'est pas exclu : une actigraphie de 24 h trancherait.
]

// =============================================================================
= Prochaines étapes
// =============================================================================

== À faire en priorité

#table(
  columns: (auto, 1.5fr, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
  table.header([*Priorité*], [*Action*], [*Pourquoi*]),
  [1], [Confirmer la date exacte du dernier comprimé (≥ 3 semaines) et documenter le jeûne médicamenteux], [validité du TILE],
  [2], [Obtenir le rapport brut de la PSG 2018–2019], [comparer le SOREMP],
  [3], [Actigraphie 2 semaines + agenda, jours libres inclus], [TST réel sur 24 h],
  [4], [Ferritine, saturation de la transferrine, CRP], [confirmer l'insuffisance martiale],
  [5], [Entretien URGE pour le RLS], [critères cliniques],
  [6], [Tilt test ou active stand], [POTS],
  [7], [Évaluation de l'humeur et du risque suicidaire], [HAD-D 13],
  [8], [CBT-I adaptée + gestion de la claustrophobie], [insomnie, laboratoire],
)

#v(0.3em)

== Traitement — pistes à discuter

#mechanism("Fer et RLS/PLMD")[
  - Cible de ferritine : *> 75–100 µg/L* (la valeur actuelle est 57).
  - Fer oral avec vitamine C, à distance du magnésium et du café ; contrôle à 3 mois.
  - Si malabsorption ou intolérance : fer IV, sur avis médical.
  - Après correction du fer, réévaluer les MPMS et la fragmentation.
]

#mechanism("Sommeil et EM/SFC")[
  - *Pacing* : priorité absolue. Les psychostimulants masquent la fatigue et peuvent favoriser le MPE.
  - *CBT-I adaptée* : pas de restriction agressive du sommeil en EM/SFC.
  - *Environnement* : gérer la claustrophobie (lumière, porte, surveillance) pour les examens futurs.
  - *Horaires réguliers* et lumière matinale ; mélatonine basse dose si phase retardée confirmée.
]

#mechanism("Ce qu'il faut éviter")[
  - Le *GET* (thérapie par l'exercice gradué) si le MPE est confirmé.
  - Les *agonistes dopaminergiques* sans correction préalable du fer (risque d'augmentation et d'effets indésirables).
  - Les *benzodiazépines* et les sédatifs à demi-vie longue, qui majorent la somnolence diurne.
  - Les *antagonistes de l'orexine* (DORA) sans diagnostic clair : ils peuvent aggraver une somnolence centrale.
]

#pagebreak()

// =============================================================================
= Questions pour le Dr Dusart
// =============================================================================

#question("Questions à poser lors de la consultation")[
  + Confirmer la date exacte du dernier comprimé (≥ 3 semaines) et l'absence de tout autre médicament.
  + Le rapport mentionne une « double polysomnographie » : où est la seconde nuit ?
  + Le jeûne médicamenteux de 3 semaines couvrait-il aussi les questionnaires et le bedrest ?
  + L'index MPMS de 76,5/h avec 0,0/h de micro-éveil associé a-t-il été recoté ?
  + Le nadir de SpO2 à 71,8 % en REM est-il réel ou artéfactuel ?
  + Le rapport de 2018–2019 montrait-il un SOREMP véritable ?
  + Faut-il refaire un TILE, ou passer à une actigraphie de 24 h ?
  + Le RLS est-il retenu cliniquement malgré la conclusion du rapport ?
  + Quel est le plan pour la ferritine (oral vs IV, cible, contrôle) ?
  + Faut-il traiter l'insomnie et l'anxiété avant de conclure sur la somnolence ?
  + Quels traitements peut-on initier maintenant sans interférer avec le diagnostic ?
]

#v(0.5em)

#keyfinding("Le message à retenir")[
  Ce bilan n'est pas « normal ». Il exclut une narcolepsie et des apnées significatives. Il montre un sommeil fragmenté, des MPMS très nombreux, une insuffisance martiale et une dissociation subjectif–objectif. Le problème clinique est un *problème d'énergie et de fatigue persistante*, avec un *RLS/PLMD et une insomnie comorbides*. L'*EM/SFC ne peut pas être exclue*. Le RLS/PLMD est ce qui peut être amélioré le plus vite.
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
  [B12], [cobalamine], [Vitamine importante pour les nerfs et le sang.],
  [CBT-I], [cognitive behavioral therapy for insomnia], [Thérapie cognitivo-comportementale de l'insomnie.],
  [CCI], [craniocervical instability / instabilité cranio-cervicale], [Mobilité excessive à la jonction entre le crâne et la colonne.],
  [CRP], [protéine C-réactive], [Marqueur d'inflammation.],
  [DORA], [dual orexin receptor antagonist], [Médicament qui bloque l'orexine, une substance qui maintient l'éveil.],
  [Dr], [docteur], [Titre du médecin.],
  [EM/SFC], [encéphalomyélite myalgique / syndrome de fatigue chronique], [Maladie chronique : fatigue profonde, malaise après effort, sommeil non réparateur.],
  [ESS], [Epworth Sleepiness Scale], [Échelle de somnolence. Score sur 24.],
  [GET], [graded exercise therapy], [Thérapie par l'exercice gradué. Contre-indiquée si le MPE est présent.],
  [HAD / HAD-A / HAD-D], [Hospital Anxiety and Depression scale], [Échelle anxiété-dépression. Deux scores sur 21 : A = anxiété, D = dépression.],
  [hEDS], [hypermobile Ehlers-Danlos syndrome], [Hypermobilité articulaire d'origine génétique.],
  [IAH], [index d'apnées-hypopnées], [Nombre d'événements respiratoires par heure de sommeil.],
  [ICSD-3], [International Classification of Sleep Disorders, 3e édition], [Classification internationale des troubles du sommeil.],
  [ISI], [Insomnia Severity Index], [Score de sévérité de l'insomnie, sur 28.],
  [IV], [intraveineux], [Voie d'administration par perfusion.],
  [MCAS], [mast cell activation syndrome / syndrome d'activation mastocytaire], [Les mastocytes libèrent trop de médiateurs : allergies, flush, troubles digestifs, fatigue.],
  [ME/CFS], [myalgic encephalomyelitis / chronic fatigue syndrome], [Version anglaise de EM/SFC.],
  [MPE], [malaise post-effort], [Aggravation des symptômes 12 à 72 h après un effort.],
  [MPMS], [mouvements périodiques des membres inférieurs], [Mouvements involontaires des jambes pendant le sommeil.],
  [N1 / N2 / N3], [stades du sommeil lent], [Du sommeil le plus léger (N1) au plus profond (N3).],
  [OSA], [obstructive sleep apnea], [Apnées obstructives du sommeil : la gorge se ferme pendant le sommeil.],
  [PLMD], [periodic limb movement disorder], [MPMS avec retentissement : sommeil non réparateur ou fatigue.],
  [POTS], [postural orthostatic tachycardia syndrome], [Le cœur s'accélère au passage debout, avec symptômes.],
  [PSG / PSG1], [polysomnographie], [Examen du sommeil en laboratoire. PSG1 = première nuit.],
  [REM], [rapid eye movement], [Sommeil paradoxal, phase des rêves.],
  [RERA], [respiratory effort-related arousal], [Micro-éveil causé par un effort respiratoire, sans apnée complète.],
  [RLS], [restless legs syndrome], [Syndrome des jambes sans repos : envie de bouger les jambes au repos, soulagée par le mouvement.],
  [SOREMP], [sleep-onset REM period], [Endormissement direct en sommeil paradoxal. Anormal.],
  [SpO2], [saturation en oxygène], [Pourcentage d'oxygène dans le sang.],
  [T.E.A.], [Test of Attentional Performance], [Batterie informatisée qui mesure l'attention et la vigilance.],
  [TILE], [test itératif de latence d'endormissement], [Cinq siestes pour mesurer le temps d'endormissement.],
  [TST], [total sleep time], [Temps de sommeil total.],
  [UARS], [upper airway resistance syndrome], [Résistance des voies aériennes supérieures, sans apnée complète.],
  [URGE], [Urge, Rest, Gets better, Evening], [Les quatre critères du RLS : envie, repos, soulagement par le mouvement, soirée.],
)

#pagebreak()

// =============================================================================
= Annexe — sources
// =============================================================================

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  table.header([*Document*], [*Contenu*]),
  [evidence/20260921\_Bilan-hypersomnie\_StLucBouge\_ChristineAndres.pdf], [Rapport original du bilan (21–22 septembre 2026)],
  [evidence/20260921\_sleep-study.yaml], [Extraction structurée des données],
  [evidence/diagnoses.yaml], [Synthèse diagnostique structurée],
  [generated/20260407\_rapport-clinique-CAN-sommeil.typ], [Rapport clinique de synthèse antérieur],
  [generated/20260322 narcolepsy-pattern sleep.aeiuno.typ], [Analyse du pattern narcoleptique de 2018–2019],
)

#v(0.4em)

#text(size: 8.5pt, style: "italic")[
  Rappel : ce document est une synthèse préparée par la patiente pour faciliter le dialogue médical. Il ne remplace ni le rapport du laboratoire, ni l'avis du médecin. Les scores et les seuils cités proviennent du rapport original. Les interprétations et la hiérarchie diagnostique sont des propositions à discuter.
]
