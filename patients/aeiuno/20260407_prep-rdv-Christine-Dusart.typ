// Préparation RDV — Christine Andres avec Dr Dusart
// Clinique du Sommeil, CHU Saint-Luc, Bouge, Namur
// 2026-04-07

#set document(
  title: "Préparation RDV Dr Dusart — Christine",
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
#set text(font: "New Computer Modern", size: 11pt, lang: "fr")
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

#let box-green(body) = block(
  width: 100%, fill: rgb("d4edda"),
  stroke: (left: 3pt + rgb("155724"), rest: 0.5pt + rgb("155724")),
  radius: 2pt, inset: (left: 10pt, rest: 8pt),
)[#body]

#let box-blue(body) = block(
  width: 100%, fill: rgb("d9edf7"),
  stroke: (left: 3pt + rgb("0c4a6e"), rest: 0.5pt + rgb("0c4a6e")),
  radius: 2pt, inset: (left: 10pt, rest: 8pt),
)[#body]

#let box-orange(body) = block(
  width: 100%, fill: rgb("fff3cd"),
  stroke: (left: 3pt + rgb("78350f"), rest: 0.5pt + rgb("78350f")),
  radius: 2pt, inset: (left: 10pt, rest: 8pt),
)[#body]

#let box-red(body) = block(
  width: 100%, fill: rgb("f8d7da"),
  stroke: (left: 3pt + rgb("7f1d1d"), rest: 0.5pt + rgb("7f1d1d")),
  radius: 2pt, inset: (left: 10pt, rest: 8pt),
)[#body]

#align(center)[
  #text(size: 15pt, weight: "bold")[Ce que je veux dire au Dr Dusart aujourd'hui]
  #v(3pt)
  #text(size: 11pt, style: "italic")[Christine Andres — RDV Clinique du Sommeil, 7 avril 2026]
]

#v(0.8em)

= RDV très espacés — comment agir entre deux consultations ?

#box-orange[
  - Qu'est-ce qu'on peut commencer *maintenant*, sans attendre les résultats ?
  - Mon généraliste peut-il prescrire les traitements intermédiaires sur votre recommandation ?
  - Peut-on établir un plan de route à 3 mois : si pas de résultat, on fait quoi ?
  - Si mes symptômes s'aggravent entre deux RDV, qui je contacte ?
]

= Priorité 1 — Retrouver un niveau d'énergie

#box-blue[
  Ma fatigue a plusieurs causes qui se renforcent mutuellement. Trois mécanismes "volent" de l'énergie en permanence — et on peut agir sur les trois en parallèle :
  + *Mitochondries* : produisent trop peu d'énergie → compléments ciblés
  + *Mastocytes* hyperactifs : inflammation silencieuse en continu → antihistaminiques (SAMA)
  + *Circulation* inadaptée en position debout (POTS) : le corps compense en permanence → sel, hydratation, Mestinon
]

#v(0.3em)

*Axe 1 — Énergie cellulaire (sans ordonnance)*

#box-green[
  *Déficits documentés par mes bilans :*
  - *Vitamine D* 43 ng/mL (cible >60) → D3 4 000 UI + K2, contrôle 3 mois
  - *Ferritine* 52 µg/L (cible >80 fatigue+TDAH) → fer bisglycinate 25 mg + vit. C matin à jeun
  - *B12* bas de gamme (2016, 2024) → méthylcobalamine 1 000 µg/j sublinguale

  *Compléments mitochondriaux :*
  - *CoQ10 ubiquinol 200--400 mg/j* avec repas gras — le plus documenté dans ce type de fatigue. *Commencer par celui-ci.*
  - *Magnésium bisglycinate 300--400 mg le soir* — cofacteur de l'énergie + améliore le sommeil profond
  - *Complexe B* (B1, B2, B3, B6, B12, folates) — sans eux les mitochondries ne tournent pas
  - *NAC 600 mg/j* — protège les mitochondries du stress oxydatif (dose utile en pharmacie française)
  - *Oméga-3 (EPA+DHA) 2--3 g/j* — réduit l'inflammation qui vole l'énergie

  _Un seul complément à la fois, espacer de 2--4 semaines._
]

#v(0.3em)

*Axe 2 — Mastocytes / MCAS (sur ordonnance)*

Depuis 20 ans : éruption récurrente autour du nez résistante aux corticoïdes, fatigue profonde, impression de "réagir" à tout. Les mastocytes hyperactifs libèrent en continu des substances inflammatoires qui épuisent l'organisme.

#box-green[
  *Ce que je demande — test diagnostique 4--6 semaines :*
  - *Rupatadine (Rupatal) 20 mg le matin* — H1 + anti-PAF (bloque deux voies inflammatoires). Escalade à 30--40 mg/j si réponse partielle à S4. _(ECG souhaitable avant d'aller au-delà de 20 mg — à coordonner avec le MG.)_
  - *Famotidine 20 mg matin + 20 mg soir* — bloque les récepteurs H2 (complémentaires aux H1, non substituables). Disponible en pharmacie française sur ordonnance belge.

  Si réponse partielle : *Montélukast (Singulair) 10 mg le soir* peut s'ajouter — bloque les leucotriènes et aide à rétablir un niveau de base immunitaire plus calme. ⚠ Mise en garde FDA : risque neuropsychiatrique majoré avec le TDAH — monitoring humeur/rêves obligatoire, arrêt au moindre signe.
]

#v(0.3em)

*Axe 3 — POTS / circulation (sans et sur ordonnance)*

Vertiges au lever progressivement croissants ; sensation de vide debout. Le cerveau sous-irrigué force le corps à compenser en permanence — source de fatigue constante.

#box-green[
  *Sans ordonnance (à commencer immédiatement) :*
  - *Sel +3--5 g/j* (≈ 1 c. à café dans les repas) — augmente le volume sanguin
  - *2--3 L d'eau/j*, dont *500 mL d'eau froide avant de se lever*
  - *Boisson électrolytique* (LMNT, Precision Hydration, ou maison) en cas d'aggravation
  - *Bas de contention classe 2* dès le matin

  *Ce que je demande :* commencer *Mestinon (pyridostigmine) 30 mg, 1 à 3×/j* en attendant le tilt-test. Effets secondaires légers (transit). _Pouvez-vous écrire au Dr Copus/Genin pour le tilt-test et l'initiation ?_
]

= Autres points

*Modafinil + Concerta insuffisants depuis oct. 2025.* Dose/horaire à ajuster ? Le *Pitolisant (Wakix)*, approuvé en Belgique, est-il une option ?

#box-red[
  *EM/SFC possible :* mon entourage soupçonne ce diagnostic. Si confirmé, modafinil + Concerta *sans pacing* peuvent aggraver les crashes en masquant le signal de fatigue. Peut-on évaluer ce critère aujourd'hui et m'orienter vers un spécialiste pacing en Belgique ?
]

#box-orange[
  *Coordination :* courrier au MG (Dr Copus/Genin) avec ce qu'il peut prescrire dans l'intervalle ? Délai prochain RDV + examens à préparer (prise de sang étendue, MSLT — PSG déjà réalisée) ?
]

#v(1em)
#align(center)[
  #text(size: 9pt, style: "italic", fill: rgb("666666"))[
    Document préparé par la famille — 2026-04-07 — Usage personnel pour ce RDV uniquement
  ]
]
