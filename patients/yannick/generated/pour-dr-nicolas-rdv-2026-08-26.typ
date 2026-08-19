#set document(
  title: "Note pour Dr J-B Nicolas — Agenda de consultation",
  author: "Yannick Loth",
  date: datetime(year: 2026, month: 8, day: 19),
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

#let prio(level) = {
  if level == "haute" { text(fill: rgb("#cc0000"))[haute] }
  else if level == "moyenne" { text(fill: rgb("#cc6600"))[moyenne] }
  else if level == "basse" { text(fill: rgb("#888888"))[basse] }
  else { text[#level] }
}

// ── Header ───────────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 16pt, weight: "bold")[
    Note pour Dr J-B Nicolas
  ]
  #v(0.2em)
  #text(size: 10pt, style: "italic")[
    Agenda de consultation — 26/08/2026
  ]
  #v(0.2em)
  #text(size: 10pt, fill: rgb("#666666"))[
    Patient Yannick Loth · Rendez-vous 26/08/2026 · Note préparée 19/08/2026
  ]
]

#v(0.8em)
#line(length: 100%, stroke: 0.5pt + rgb("#aaaaaa"))
#v(0.8em)

// ── Traitements en cours ─────────────────────────────────────────────────────

= Traitements en cours au moment de la consultation

#v(0.4em)
#table(
  columns: (28%, 22%, 50%),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Médicament*], [*Dose*], [*Statut*],
  ),
  [Aripiprazole (LDA)], [1 mg/jour], [Actif — contrôle PEM, brouillard, migraine. *#strong[Conservé à 1 mg]* : 0,5 mg/jour n'élimine pas le PEM. N'aide pas au sommeil.],
  [Rupatadine (Rupatall)], [20–30 mg/jour], [Actif — protocole mastocytaire],
  [Famotidine], [20 mg/jour], [Actif — protocole mastocytaire],
  [Montelukast], [10 mg/jour], [Actif — protocole mastocytaire],
  [Pyridostigmine (Mestinon)], [1 comprimé/jour], [*Relancé 19/08* — essai basse dose à confirmer],
  [Ritalin MR], [10 mg (intermittent)], [Actif — usage selon besoin],
  [Modafinil], [au besoin], [Actif — usage situationnel],
  [LDN], [4 mg/jour], [*Relancé 10/08* — interruption brève (~4-5 j après arrêt 02/08)],
)

// ── 1. Panel EBV ─────────────────────────────────────────────────────────────

= 1. Analyses à prescrire — panel EBV

Priorité : #prio("haute")

*Contexte :* VCA IgG >750 U/mL (oct. 2025) = exposition passée confirmée. La question non résolue est : *#strong[réactivation active ou non ?]* Jamais testée.

#emph-box[
*Demande (à écrire sur la demande de laboratoire) :*

#v(0.4em)
#strong[Sérodiagnostic EBV] : VCA IgG, EA-IgG, EBNA-1 IgG — et *#strong[EBV PCR ADN (plasma)]*.
]

#v(0.4em)
#table(
  columns: (30%, 30%, 40%),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Analyse*], [*Rôle*], [*Signification si positif*],
  ),
  [*EA-IgG*], [Réactivation récente], [Le virus s'est répliqué],
  [*EBNA-1 IgG*], [Latence (dormant)], [Réservoir établi ; permet le suivi de tendance],
  [*EBV PCR ADN plasmatique*], [Réactivation active EN COURS], [Preuve directe de particules virales en circulation],
)

*Point technique :* l'ADN plasmatique (libre) n'est présent que lors de la réplication active — c'est le test le plus décisif. L'ADN cellulaire n'est pas informatif (toujours présent chez les porteurs).

*Timing :* les EA-IgG et l'ADN viral retombent entre les poussées. Si possible, faire le prélèvement pendant une période de fatigue accrue / après effort (fenêtre du 19/08, post-jardinage).

*Si le résultat est négatif :* ne pas conclure à l'absence — refaire pendant une crise.

#warning-box[
*Conséquence possible si positif :* discuter cimetidine 200 mg ×2/jour (levée de l'immunosuppression H2-médiée, renforcement T/NK contre l'EBV). Profil de sécurité favorable ; hors AMM ; à valider.
]

// ── 2. Gabapentine ───────────────────────────────────────────────────────────

= 2. Gabapentine pour l'alpha-intrusion *(option secondaire)*

Priorité : #prio("basse")

#warning-box[
*Position du patient :* la gabapentine est mise en parenthèses. Le patient n'est pas sûr d'avoir encore un aussi mauvais sommeil *#strong[quand il arrive à dormir]*. Ce n'est donc pas une priorité de la consultation — à n'aborder que si le sommeil reste un problème persistant.
]

*Contexte (si reprise) :* alpha-intrusion 5,6 % N3, WASO 86 min, mouvements périodiques 13,3/h (PSG 2019). L'aripiprazole n'aide pas au sommeil. Une période de dettes de sommeil (coucher ~3:00, 4,5–6 h/nuit) a été observée en 2026-07/08.

*Proposition (si discussion) :* gabapentine *#strong[100–300 mg au coucher]*, dose minimale, pour alpha-intrusion + mouvements périodiques, sans supprimer le N3.

*Risques à considérer (si discussion) :*

- *Sédation / aggravation de la somnolence diurne* — préoccupation n°1 (hypersomnie idiopathique préexistante).
- *Tremblements, ataxie* — superposition avec les tremblements documentés.
- *Œdème, prise de poids, confusion* — à surveiller.
- *Rare :* idéation suicidaire en début de traitement.
- *Sevrage* — arrêt progressif obligatoire, jamais brutal.
- *Sommeil :* peut aggraver un trouble respiratoire du sommeil non détecté — vérifier ce point avant l'essai.

// ── 3. Pyridostigmine ────────────────────────────────────────────────────────

= 3. Pyridostigmine (Mestinon) — relance à valider

Priorité : #prio("haute")

*Statut :* relancé le 19/08 par le patient à 1 comprimé/jour (essai basse dose à durée limitée). Arrêté fin juin 2026 pour hypermotilité intestinale (M3-muscarinique GI).

*Ce qu'il faut décider :* l'essai est-il approprié ? Quel est le critère d'arrêt si la motilité GI revient ?

*Objet de la relance :* tester si 1 comprimé/jour apporte un bénéfice vascular/POTS à la douleur des avant-bras *#strong[sans]* le problème d'hypermotilité intestinale (M3-muscarinique GI) qui avait motivé l'arrêt fin juin. *#strong[Aucun bénéfice n'est établi ni revendiqué — l'essai est en cours et son résultat à évaluer.]* La relance a été initiée par le patient le 19/08.

#warning-box[
*Précautions :* hypersensibilité vagale documentée + antécédent vasovagal → prudence. Surveillance : bénéfice vascular/POTS vs effet GI.
]

// ── 4. Crampes ───────────────────────────────────────────────────────────────

= 4. Crampes — EMG / électroneuromyogramme et sérum électrolytes

Priorité : #prio("moyenne")

*Contexte :* crampes spontanées persistantes sous LDA, non résolues. Caractéristiques : durée 10–15 min (≥45 min le 18/08), *#strong[crossover antagoniste à l'étirement]* (étirer le muscle crampé déclenche une crampe dans l'antagoniste), soulagement partiel par l'eau froide. Signatures d'une hyperexcitabilité motoneuronale/spinale, non d'une déplétion simple.

*Demande :*

- *Sérum K⁺ et Mg²⁺* — pour écarter une contribution électrolytique simple. #strong[Caveat important :] un taux sérique NORMAL n'exclut pas un problème de canal/transport (le problème est un canal, pas un niveau). C'est le point clé à ne pas mal interpréter.
- *EMG / électroneuromyogramme* (si cliniquement indiqué) — discrimine neurogène (décharges ectopiques, hyperexcitabilité nerveuse) vs musculaire (sarcolemme/pompe). C'est le seul test discriminant entre les deux mécanismes candidats.

*Petite-fibre neuropathy :* à envisager dans le contexte de la dysautonomie (souvent manquée, traitable).

// ── 5. Ivabradine ────────────────────────────────────────────────────────────

= 5. Option autonomique — ivabradine

Priorité : #prio("moyenne")

*Contexte :* intolérance orthostatique, pouls élevé debout, douleurs avant-bras vascular. Test de table inclinante non réalisé.

*Proposition :* si le profil est type POTS hyperadrénergique, *#strong[ivabradine 2,5 mg ×2/jour]* (titration) — abaisse la FC sans abaisser la TA, mieux tolérée que les bêta-bloquants.

*Pourquoi pas le propranolol en premier :* risque d'aggraver la fatigue et de masquer les symptômes pseudo-hypoglycémiques. Le propranolol reste une option si tremblements dominants.

*Prérequis :* une caractérisation formelle de la dysautonomie (test de table inclinante) aiderait à choisir entre ivabradine, midodrine, fludrocortisone ou propranolol.

// ── 6. Myéline ───────────────────────────────────────────────────────────────

= 6. Myéline / membrane-énergie — à NE PAS traiter comme actionnable

*Contexte :* signal de myéline altéré (Thapaliya 2025, recherche seule, substrat irrésolu : remyélinisation vs gliosis vs fer). Non répliqué, proxy IRM.

#warning-box[
*Position claire :* aucun IRM T1w/T2w à prescrire à but clinique, aucun traitement "remyélinisation" validé. Information de contexte pour comprendre la maladie, pas une cible thérapeutique. Aucune action demandée.
]

// ── 7. Signaux à confirmer ───────────────────────────────────────────────────

= 7. Signaux à confirmer

- *Relance Mestinon* : décision médicale (point 3).
- *Panel EBV* : prescription (point 1).
- *Gabapentine* *(secondaire)* : à n'aborder que si le sommeil reste un problème (point 2).
- *LDA 1 mg/jour* : conservé (0,5 mg n'élimine pas le PEM).

// ── Résumé ──────────────────────────────────────────────────────────────────

= Résumé pour la consultation

#v(0.4em)
#set par(spacing: 0.4em)

1. *#strong[Prescrire]* panel EBV : EA-IgG + EBNA-1 + EBV PCR ADN plasmatique (idéalement en période de poussée).
2. *#strong[Valider]* la relance Mestinon 1 cp/jour et définir le critère d'arrêt GI.
3. *#strong[Confirmer]* le maintien de LDA 1 mg/jour (0,5 mg insuffisant contre le PEM).
4. *#strong[Prescrire/évaluer]* sérum K⁺/Mg²⁺ + envisager EMG pour discriminer le mécanisme des crampes.
5. *#strong[Évaluer]* l'opportunité d'un test de table inclinante pour orienter le choix autonomique (ivabradine vs autres).
6. *(Secondaire)* Gabapentine pour l'alpha-intrusion — seulement si le sommeil reste un problème persistant.

#v(0.8em)
#line(length: 100%, stroke: 0.5pt + rgb("#aaaaaa"))
#v(0.4em)

#text(size: 9pt, fill: rgb("#999999"))[
  Document préparé à partir de l'analyse du dossier patient et de la littérature. Il constitue un ordre du jour préliminaire pour discussion, *pas une prescription*. Chaque option (panel EBV, gabapentine, relance Mestinon, EMG, ivabradine) doit être validée et approuvée par le médecin traitant avant mise en œuvre.
]
