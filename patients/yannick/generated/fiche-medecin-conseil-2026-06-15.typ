#set document(
  title: "Fiche synthétique — Médecin-conseil Mutualité Libre",
  author: "Yannick Loth",
  date: datetime(year: 2026, month: 6, day: 15),
)

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 3cm),
  numbering: "1",
)

#set text(font: "Linux Libertine", size: 11pt, lang: "fr")
#set par(justify: true, leading: 0.65em)
#set heading(numbering: none)

#show heading.where(level: 1): it => {
  v(1.2em)
  text(size: 14pt, weight: "bold", it)
  v(0.4em)
}
#show heading.where(level: 2): it => {
  v(0.8em)
  text(size: 12pt, weight: "bold", it)
  v(0.3em)
}
#show heading.where(level: 3): it => {
  v(0.5em)
  text(size: 11pt, weight: "bold", it)
  v(0.2em)
}

#let emph-box(body) = rect(
  width: 100%,
  inset: 10pt,
  radius: 3pt,
  stroke: (left: 3pt + rgb("#4a7c9e"), rest: 0.5pt + rgb("#cccccc")),
  fill: rgb("#f5f8fb"),
)[#body]

#let warning-box(body) = rect(
  width: 100%,
  inset: 10pt,
  radius: 3pt,
  stroke: (left: 3pt + rgb("#cc6600"), rest: 0.5pt + rgb("#cccccc")),
  fill: rgb("#fffaf5"),
)[#body]

// ── Header ───────────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 16pt, weight: "bold")[
    Fiche synthétique — Médecin-conseil
  ]
  #v(0.2em)
  #text(size: 10pt, style: "italic")[
    Arguments pour l'incapacité totale — EM/SFC
  ]
  #v(0.2em)
  #text(size: 10pt, fill: rgb("#666666"))[
    Patient Yannick Loth · 45 ans · 2026-06-15
  ]
]

#v(0.8em)
#line(length: 100%, stroke: 0.5pt + rgb("#aaaaaa"))
#v(0.8em)

// ── 1. Incapacité totale — argumentation structurée ──────────────────────────

= 1. Incapacité totale — argumentation structurée

== A. Le malaise post-effort (PEM) rend tout engagement professionnel impossible

Le PEM n'est pas une « fatigue » — c'est un crash physiologique multi-systémique différé. Toute activité dépassant le seuil énergétique déclenche une cascade de symptômes (migraines sévères, brouillard mental, douleurs diffuses, jambes sans repos, insomnie, état grippal) durant *5 à 7 jours ou plus*.

#emph-box[
*Données objectives récentes :*

#v(0.4em)
#table(
  columns: (auto, auto, auto, auto, auto),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Date*], [*Déclencheur*], [*Durée effort*], [*Sévérité PEM*], [*Récupération*],
  ),
  [22 mai 2026], [Tonte de pelouse (2×20min)], [40 min], [9/10], [5-7 jours],
  [9 juin 2026], [Rameur modéré], [20 min], [7-8/10], [≥5 jours (en cours)],
  [16-17 mai 2026], [Événement social (enterrement + communion)], [une journée], [Extrême], [Plusieurs jours],
)
]

Le seuil d'activité est documenté : 20 minutes de rameur modéré a déclenché un PEM de 5+ jours. 40 minutes de tonte a produit un PEM 9/10.

#warning-box[
*Élément clé :* le PEM est *différé* (12-48h après l'effort) et *imprévisible* dans sa durée et sa sévérité. Aucun planning professionnel n'est compatible avec des crashes imprévisibles de 5-7 jours. Le sommeil est non réparateur (alpha-intrusion documentée par PSG 2019 : 5,6 % en N3, 9,6 arousals/h) — le repos ne restaure pas l'énergie.
]

== B. Le pacing — seule stratégie de gestion — est structurellement incompatible avec l'emploi

Le pacing consiste à rester strictement sous le seuil énergétique pour éviter le PEM. Cela exige :

- *Contrôle autonome du rythme :* pouvoir s'arrêter immédiatement dès les premiers signes d'épuisement
- *Absence de deadlines externes :* les échéances imposées forcent à dépasser le seuil → crash
- *Absence d'interruptions non contrôlées :* chaque interaction non planifiée consomme de l'énergie hors budget
- *Repos non différé :* obligation de se reposer quand le corps l'exige, pas quand l'agenda le permet

#warning-box[
*L'emploi retire ces quatre conditions.* Un employeur, par définition, contrôle le temps, les tâches, les deadlines et les interruptions.
]

== C. Toute interaction humaine est une exertion coûteuse

Documenté depuis *plus de 20 ans* (antérieur au burnout de 2018) :

- L'interaction sociale est vécue comme *douloureuse et épuisante*, pas agréable — le cerveau la traite comme un effort au-delà des réserves énergétiques
- *Affect plat observable :* absence d'expression positive visible — interprétée à tort comme du mépris par les collègues, créant des tensions relationnelles
- *Coût métabolique du masquage :* sourire, contact visuel, maintien de l'apparence sociale = consommation d'énergie qui accélère le crash
- Les *salamalecs* (conversations informelles, small talk) sont un drain énergétique immédiat

#warning-box[
*Conséquence :* tout lieu de travail — même sédentaire et solitaire — implique nécessairement des interactions avec collègues, hiérarchie, clients. Ces interactions ne sont pas « difficiles » — elles déclenchent le PEM.
]

== D. Toute activité cognitive soutenue déclenche le PEM

Le brouillard cognitif est documenté depuis l'adolescence (±13-15 ans), aggravé progressivement sur 30+ ans :

- Difficultés de concentration, ralentissement du traitement mental, troubles de la mémoire à court terme
- Aggravation avec l'effort (PEM cognitif)
- Même avec stimulants (méthylphénidate), l'énergie cognitive reste limitée et les crashes surviennent
- La natation pendant 4-5 mois en 2025/26 → brouillard mental constant → *perte d'emploi*

#emph-box[
*Le paradoxe :* les seules professions compatibles avec le profil socio-professionnel (IT, développement) sont cognitives, donc précisément le type d'activité qui déclenche le PEM.
]

== E. Le répertoire des professions compatibles est vide

#v(0.4em)
#table(
  columns: (25%, 8%, 67%),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Type de profession*], [*OK ?*], [*Raison*],
  ),
  [Physique / debout], [Non], [Intolérance orthostatique ; seuil ≤30 min debout, FC 105-115 bpm],
  [Cognitive (IT, bureau)], [Non], [Déclenche PEM cognitif + brouillard mental],
  [Relationnelle / sociale], [Non], [Interaction humaine = exertion douloureuse → crash],
  [Sédentaire solo avec autonomie], [Non], [N'existe pas comme emploi — tout emploi a un employeur, donc des deadlines, des interruptions, des collègues],
)

#v(0.4em)

#emph-box[
*Conclusion structurelle :* le pacing — seule stratégie de prévention du PEM — exige le contrôle total de son temps, de ses interactions et de ses efforts. Ce sont des conditions qu'aucun emploi, même adapté, ne peut fournir. La question n'est pas le pourcentage de capacité : c'est que la structure même de l'emploi est le déclencheur du crash.
]

// ── 2. Antécédents médicaux ──────────────────────────────────────────────────

= 2. Antécédents médicaux

- *Déficit énergétique à vie :* tremblements des mains dès l'adolescence (≤16 ans), crampes musculaires depuis ±25 ans, brouillard cognitif depuis ±13-15 ans
- *Burnout professionnel :* 2018 — effondrement après des décennies de compensation par cycles crash-récupération du week-end
- *Diagnostic EM/SFC :* établi par spécialistes
- *Dysfonctionnement mitochondrial documenté :* défaillance navette carnitine, dysfonctionnement PDH, glycolyse anaérobie compensatoire
- *Perte auditive neurosensorielle bilatérale* (2024) : cohérente avec dysfonctionnement mitochondrial
- *Progression visuelle rapide* (presbytie précoce, aggravée en 5 ans) : cohérente avec dysfonctionnement métabolique
- *Alpha-intrusion sommeil* (PSG 2019) : sommeil non réparateur documenté
- *Dysrégulation autonome :* épisodes documentés (février 2026 : faiblesse, tremblements, tachycardie, intolérance posturale)

// ── 3. Traitement en cours ───────────────────────────────────────────────────

= 3. Traitement en cours

#v(0.4em)
#table(
  columns: (30%, 20%, 50%),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Médicament*], [*Posologie*], [*Rôle*],
  ),
  [LDN (naltrexone low dose)], [Variable], [Immunomodulateur],
  [Pyridostigmine (Mestinon)], [30 mg/jour], [Support autonome],
  [Rupatadine + Famotidine], [Standard], [Antihistaminiques (MCAS suspecté)],
  [Montélukast], [Standard], [Antileucotriène],
  [Méthylphénidate (Rilatine MR)], [Occasionnel], [Support cognitif],
  [CoQ10, L-Carnitine, Riboflavine, Mg, NAD+...], [Quotidiens], [Support mitochondrial],
)

// ── 4. État actuel ───────────────────────────────────────────────────────────

= 4. État actuel

- *Isolement quasi-total :* « trop fatigué pour être humain »
- *Seuil d'activité :* ≤10-15 minutes d'effort continu avant déclenchement PEM
- *Récupération :* 5-7 jours par crash ; sommeil non réparateur
- *Dernier certificat médical :* incapacité totale, Dr. Nicolas, valide jusqu'au 30 juin 2026
- *Couverture continue :* depuis le 16 février 2026

// ── 5. Points à souligner oralement ──────────────────────────────────────────

= 5. Points à souligner oralement

#v(0.4em)
#set par(spacing: 0.4em)

1. *Le PEM n'est pas de la fatigue.* C'est un effondrement multi-systémique. 20 minutes de rameur modéré → 5+ jours de migraines, brouillard mental, insomnie, douleurs diffuses, jambes sans repos.

2. *Le pacing est la seule parade.* Sans contrôle autonome du rythme (arrêt immédiat, repos non différé, zéro interruption), le PEM est inévitable. L'emploi retire ce contrôle.

3. *L'interaction sociale est un déclencheur.* Toute conversation mobilise une énergie que je n'ai pas. Les « salamalecs » ne sont pas désagréables — ils sont physiologiquement coûteux.

4. *L'affect plat est un symptôme, pas une attitude.* L'absence de sourire ou d'enthousiasme visible n'est pas de l'hostilité — c'est l'incapacité métabolique à générer ces expressions.

5. *Même 10-20% d'un temps plein est incompatible.* Le PEM n'est pas proportionnel au temps travaillé. Un crash de 5 jours efface tout gain. La seule stratégie viable est la prévention totale.

6. *À demander au médecin-conseil :* sur quels guides cliniques standardisés l'évaluation EM/SFC est-elle basée ? Y a-t-il une reconnaissance spécifique du PEM comme critère d'incapacité dans les référentiels utilisés ?

#v(0.8em)
#line(length: 100%, stroke: 0.5pt + rgb("#aaaaaa"))
#v(0.4em)

#text(size: 9pt, fill: rgb("#999999"))[
  Document préparé à partir des données médicales du patient : consultations (Drs Nicolas, Genin), suivi symptomatique quotidien (76 fichiers, mars–juin 2026), polysomnographie (2019), PEM log, rapports spécialisés.
]
