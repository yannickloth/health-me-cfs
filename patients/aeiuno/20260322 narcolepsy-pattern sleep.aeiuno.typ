// Étude de cas : Sommeil à pattern narcoleptique sur polysomnographie
// Patiente : aeiuno
// Créé : 2026-03-22
// Confidentialité : Anonymisé avec consentement de la patiente
// Statut : Bilan complémentaire proposé — à discuter avec neurologue/somnologue

#set document(
  title: "Étude de cas : Sommeil à pattern narcoleptique — Aeiuno",
  date: datetime(year: 2026, month: 3, day: 22),
)

#set page(paper: "a4", margin: 2.5cm)
#set text(font: "New Computer Modern", size: 11pt, lang: "fr")
#set par(justify: true)
#set heading(numbering: "1.")

// ── Color palette ────────────────────────────────────────────────────────────
#let keyfinding-bg     = rgb("d4edda")
#let keyfinding-border = rgb("28a745")
#let hypothesis-bg     = rgb("d9edf7")
#let hypothesis-border = rgb("17a2b8")
#let caution-bg        = rgb("f8d7da")
#let caution-border    = rgb("dc3545")
#let mechanism-bg      = rgb("e8e8e8")
#let mechanism-border  = rgb("6c757d")
#let question-bg       = rgb("fff3cd")
#let question-border   = rgb("ffc107")

// ── Box helpers ───────────────────────────────────────────────────────────────
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

#let keyfinding(title, body)  = make-box("Constat clé : " + title,   keyfinding-bg,  keyfinding-border,  body)
#let hypothesis(title, body)  = make-box("Hypothèse : " + title,     hypothesis-bg,  hypothesis-border,  body)
#let caution(title, body)     = make-box("Attention : " + title,      caution-bg,     caution-border,     body)
#let mechanism(title, body)   = make-box(title,                       mechanism-bg,   mechanism-border,   body)
#let question(title, body)    = make-box("À clarifier : " + title,    question-bg,    question-border,    body)

// ── Title block ───────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Étude de cas : Sommeil à pattern narcoleptique]
  #v(4pt)
  #text(size: 13pt)[Aeiuno --- Polysomnographie évocatrice de narcolepsie]
  #v(2pt)
  #text(size: 11pt)[Contexte d'EM/SFC --- Bilan complémentaire proposé]
  #v(6pt)
  #text(size: 10pt, style: "italic")[Document de travail --- À discuter avec un neurologue / somnologue]
  #v(2pt)
  #text(size: 10pt)[22 mars 2026]
]

#v(1em)

#caution("Document préliminaire")[
  Cette étude de cas repose sur des données *limitées*. Les recommandations ci-dessous orientent la démarche diagnostique et thérapeutique et ne doivent pas être interprétées comme des conclusions définitives. *Toutes les recommandations nécessitent une validation par le médecin traitant.*
]

#outline(indent: 1em)

#pagebreak()

// =============================================================================
= Contexte clinique
// =============================================================================

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Paramètre*], [*Valeur*],
  ),
  [Pseudonyme],          [Aeiuno],
  [Sexe],                [Femme],
  [Date de naissance],   [8 septembre 1988],
  [Âge],                 [37 ans],
  [Diagnostic principal],[Encéphalomyélite myalgique / Syndrome de fatigue chronique (EM/SFC)],
  [Examen en question],  [Polysomnographie (PSG)],
  [Résultat],            [Pattern de sommeil évocateur de narcolepsie],
)
#v(4pt)
#align(center)[_Tableau 1 : Résumé clinique_]

// =============================================================================
= Constat polysomnographique
// =============================================================================

#keyfinding("Pattern narcoleptique à la PSG")[
  La polysomnographie montre des anomalies compatibles avec un diagnostic de narcolepsie : latence de sommeil paradoxal (REM) raccourcie et/ou endormissements en sommeil paradoxal (SOREMP). Ces anomalies, chez une patiente atteinte d'EM/SFC, posent la question d'une narcolepsie de type 1 comorbide versus une suppression fonctionnelle du système orexinergique liée à la neuroinflammation de l'EM/SFC.
]

// =============================================================================
= Diagnostic différentiel : narcolepsie vraie vs. suppression fonctionnelle
// =============================================================================

Le pattern narcoleptique à la PSG peut refléter deux mécanismes distincts avec des implications thérapeutiques différentes :

#v(6pt)

#hypothesis("Narcolepsie de type 1 comorbide")[
  Destruction auto-immune des neurones à hypocrétine/orexine dans l'hypothalamus latéral. Shan et al. (2026, _Annals of Neurology_) ont confirmé que les lymphocytes T CD4+ ciblent sélectivement les neurones producteurs d'hypocrétine, avec une densité 11 fois supérieure aux autres types de lymphocytes T dans la zone atteinte. La narcolepsie de type 1 est fréquemment post-infectieuse (H1N1, streptocoque) et fortement associée au HLA-DQB1\*06:02.

  *Arguments pour :*
  - Pattern PSG spécifique (SOREMPs, latence REM courte)
  - Contexte post-infectieux compatible (l'EM/SFC et la narcolepsie partagent ce mode de déclenchement)
  - Cas documenté de comorbidité EM/SFC + POTS + narcolepsie (Liao et al. 2021)
]

#v(6pt)

#hypothesis("Suppression fonctionnelle du système orexinergique")[
  Inhibition des neurones à orexine par les cytokines inflammatoires, sans destruction neuronale. La PGE#sub[2] produite lors de la neuroinflammation supprime l'activité des neurones orexinergiques via les récepteurs EP3/EP4. Des taux réduits d'orexine-A ont été rapportés dans l'EM/SFC (López-Amador 2025, revue systématique de 27 études).

  *Arguments pour :*
  - Contexte d'EM/SFC avec neuroinflammation documentée
  - Taux d'orexine-A réduits mais non effondrés dans l'EM/SFC
  - Mécanisme réversible (contrairement à la destruction neuronale)
]

// =============================================================================
= Bilan complémentaire recommandé
// =============================================================================

#mechanism("Examens pour trancher entre les deux hypothèses")[
  + *Hypocrétine-1 dans le LCR* --- Examen de référence
    - $< 110$ pg/mL $=$ narcolepsie de type 1 confirmée (critère ICSD-3 suffisant à lui seul)
    - Normal ou bas-normal $=$ suppression fonctionnelle probable

  + *Typage HLA-DQB1\*06:02*
    - Présent chez ~98 % des narcolepsies de type 1
    - Si négatif : narcolepsie de type 1 très peu probable
    - Examen simple (prise de sang), à réaliser en premier

  + *Test itératif de latence d'endormissement (TILE / MSLT)* si non réalisé
    - Critères narcolepsie : latence moyenne $≤ 8$ min et $≥ 2$ SOREMPs
    - Un SOREMP dans les 15 min sur la PSG nocturne précédente peut remplacer un SOREMP du TILE

  *Critères ICSD-3 pour la narcolepsie de type 1 :*
  + Somnolence diurne excessive quotidienne depuis $≥ 3$ mois
  + Un ou les deux critères suivants :
    - Cataplexie + TILE positif (latence $≤ 8$ min, $≥ 2$ SOREMPs)
    - Hypocrétine-1 dans le LCR $< 110$ pg/mL (ou $< 1/3$ des valeurs normales moyennes)

  Le critère LCR est suffisant à lui seul : la cataplexie et le TILE ne sont pas nécessaires si l'hypocrétine est basse.
]

// =============================================================================
= Stratégie thérapeutique selon le diagnostic
// =============================================================================

== Si narcolepsie de type 1 confirmée

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Indication*], [*Traitement*],
  ),
  [Somnolence diurne],
  [Modafinil 100--200 mg/j (active les neurones à orexine ; pas de tolérance documentée jusqu'à 40 semaines)],

  [Consolidation du sommeil],
  [Oxybate de sodium (Xyrem®) --- traitement de référence de la narcolepsie],

  [Immunothérapie précoce],
  [À discuter : IgIV, étant donné la confirmation récente du mécanisme auto-immun. Pourrait prévenir la destruction neuronale si prise en charge précoce],

  table.cell(fill: rgb("f8d7da"))[*Contre-indication*],
  table.cell(fill: rgb("f8d7da"))[*Antagonistes des récepteurs de l'orexine (DORA)* --- suvorexant, lemborexant, daridorexant. Bloquer un système orexinergique déjà détruit est contre-indiqué],
)
#v(4pt)
#align(center)[_Tableau 2 : Traitement si narcolepsie de type 1_]

== Si suppression fonctionnelle (EM/SFC)

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Indication*], [*Traitement*],
  ),
  [Somnolence diurne],
  [Modafinil 100--200 mg/j (même justification : activation des neurones à orexine)],

  [Consolidation du sommeil],
  [Daridorexant 25--50 mg --- les DORA sont appropriés ici car les neurones sont supprimés, pas détruits],

  [Mécanisme sous-jacent],
  [Cibler la neuroinflammation responsable de la suppression orexinergique],
)
#v(4pt)
#align(center)[_Tableau 3 : Traitement si suppression fonctionnelle_]

== Dans les deux cas

#keyfinding("Premier pas pragmatique")[
  Le modafinil est le traitement de première ligne quel que soit le diagnostic final. Commencer à 100 mg, titrer progressivement. *Surveiller l'apparition d'un malaise post-effort (MPE/PEM)* : tous les psychostimulants comportent ce risque dans le contexte de l'EM/SFC.
]

// =============================================================================
= Contexte scientifique récent
// =============================================================================

#mechanism("Narcolepsie confirmée auto-immune (Shan et al. 2026)")[
  Shan et al. (_Annals of Neurology_, mars 2026) ont analysé du tissu cérébral post-mortem via la Netherlands Brain Bank et confirmé que la narcolepsie de type 1 résulte d'une réponse auto-immune chronique :

  - Les lymphocytes T CD4+ sont 11 fois plus nombreux dans la région des neurones à hypocrétine que les autres types de lymphocytes T
  - Ces cellules immunitaires ciblent sélectivement et détruisent les neurones producteurs d'hypocrétine/orexine
  - Les signatures immunitaires sont détectables des *décennies* après la destruction initiale
  - Implication : une immunothérapie préventive pourrait stopper la perte neuronale si mise en place précocement
]

#v(6pt)

#mechanism("Pertinence pour l'EM/SFC")[
  - *Système orexinergique :* Des taux réduits d'orexine-A sont rapportés dans l'EM/SFC (López-Amador 2025, 27 études)
  - *Déclencheur auto-immun post-infectieux :* Les deux pathologies surviennent après infection via attaque auto-immune sur des cibles du SNC
  - *Comorbidité documentée :* Cas d'EM/SFC + POTS + narcolepsie avec mutations MTHFR (Liao et al. 2021)
  - *Chevauchement thérapeutique :* L'immunomodulation (IgIV, rituximab) est étudiée dans les deux conditions
]

// =============================================================================
= Références
// =============================================================================

+ Shan L et al. (2026). Elevated CD4+ T-cells in the hypocretin-producing region confirm autoimmune pathogenesis in type-1 narcolepsy. _Annals of Neurology_.
+ López-Amador N et al. (2025). Orexin System Dysfunction in ME/CFS. Revue systématique de 27 études.
+ Liao Y et al. (2021). Comorbidity of CFS, POTS, and narcolepsy with MTHFR mutation. _Chinese Medical Journal_, 134(12):1495--1497.
+ American Academy of Sleep Medicine (2014). International Classification of Sleep Disorders, 3rd ed. (ICSD-3). Critères diagnostiques de la narcolepsie de type 1.
