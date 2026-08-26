#set document(
  title: "Note pour Dr J-B Nicolas — Agenda de consultation",
  author: "Yannick Loth",
  date: datetime(year: 2026, month: 8, day: 26),
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
    Patient Yannick Loth · Rendez-vous 26/08/2026 · Note préparée 19 & 26/08/2026
  ]
  #v(0.2em)
  #text(size: 9pt, fill: rgb("#4a7c9e"))[
    Site : #link("https://yannickloth.github.io/health-me-cfs")[https://yannickloth.github.io/health-me-cfs] · Blog : #link("https://yannickloth.github.io/health-me-cfs/fr/blog/")[https://yannickloth.github.io/health-me-cfs/fr/blog/]
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
  [Aripiprazole (LDA)], [1 mg ×1/jour], [Actif — contrôle PEM, brouillard, migraine. *#strong[Conservé à 1 mg]* : 0,5 mg/jour n'élimine pas le PEM. N'aide pas au sommeil.],
  [Rupatadine (Rupatall)], [10 mg ×3/jour], [Actif — protocole mastocytaire],
  [Famotidine], [20 mg ×1/jour], [Actif — protocole mastocytaire],
  [Montelukast], [10 mg ×1/jour], [Actif — protocole mastocytaire],
  [Pyridostigmine (Mestinon)], [10 mg ×1/jour], [*Relancé 19/08* — essai basse dose à confirmer],
  [L-Carnitine (Biotary)], [750 mg ×2/jour], [Actif — support mitochondrial. *Passage à 750 mg ×4/jour dès 26/08.*],
  [Ritalin MR], [10 mg (tous les quelques jours)], [Actif — usage intermittent selon besoin],
  [LDN], [4 mg ×1/jour], [*Relancé 10/08* — interruption brève (~4-5 j après arrêt 02/08)],
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

*Timing :* les EA-IgG et l'ADN viral retombent entre les poussées. Si possible, faire le prélèvement pendant une période de fatigue accrue / après effort. *Fenêtre actuelle :* poussée de fatigue + douleurs aux jambes après le trajet Auchan du 26/08 (cf. dossier patient) — c'est la période de prélèvement la plus informative.

*Si le résultat est négatif :* ne pas conclure à l'absence — refaire pendant une crise.

#warning-box[
*Conséquence possible si positif :* discuter cimetidine 200 mg ×2/jour (levée de l'immunosuppression H2-médiée, renforcement T/NK contre l'EBV). Profil de sécurité favorable ; hors AMM ; à valider.

*Interactions à vérifier avant tout essai :* la cimetidine inhibe CYP3A4/2D6/1A2. Avec l'aripiprazole (LDA, substrat CYP2D6, déjà en place) l'interaction est *prédite* (élévation des taux → risque d'akathisie) mais #strong[jamais étudiée] — revoir la dose. Avec l'ivabradine (substrat CYP3A4) : éviter la combinaison (risque de bradycardie) — voir point 5.
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

#warning-box[
*Caveat important (document principal) :* l'ivabradine peut #strong[aggraver] les symptômes dans le POTS à faible volume d'éjection (hypovolémique/neuropathique) — réduire la FC d'un patient dont la tachycardie compense un faible volume abaisse le débit cardiaque. Une mesure du volume d'éjection pré-thérapeutique aide à stratifier : POTS hyperadrénergique (VES préservé) → bénéfice ; POTS à bas VES → risque de dégradation. #strong[Interaction CYP3A4 :] l'ivabradine est un substrat du CYP3A4 — la cimetidine (inhibiteur) augmente nettement ses taux et le risque de bradycardie ; #strong[éviter la combinaison] si les deux sont envisagés (voir point 1).
]

// ── 6. LDN hormesis ──────────────────────────────────────────────────────────

= 6. LDN — essai de dosages alternatifs (hormesis)

Priorité : #prio("moyenne")

*Contexte :* le LDN est actif à 4 mg/jour. La question : tester si un autre dosage apporte un bénéfice supérieur. Le LDN suit une courbe dose-réponse non monotone (hormesis) : chaque mécanisme d'action a son propre optimum de dose. #strong[Le dosage optimal est donc individuel — il révèle quel mécanisme domine.]

*Les 3 zones low-dose et leur mécanisme dominant :*

#v(0.4em)
#table(
  columns: (30%, 70%),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Zone de dose*], [*Mécanisme dominant*],
  ),
  [0,5–1,5 mg], [TLR4/Nrf2 — amorçage anti-inflammatoire de la microglie (fenêtre hormétique)],
  [1,5–3,0 mg], [Compensatoire opioïde — upregulation des endorphines],
  [3,0–4,5 mg], [TRPM3 — restauration du flux calcique (cellules NK, vascular, neuronal)],
)

(La désinhibition de l'orexine suit l'effet TLR4 hypothalamique de la microglie.)

*Interprétation diagnostique :* le dosage auquel le bénéfice est maximal identifie le mécanisme limitant. Un patient optimal à 0,5–1,5 mg a un mécanisme TLR4/Nrf2 dominant ; un patient optimal vers 1,5–3,0 mg a un mécanisme opioïde dominant ; un patient qui ne répond que vers 3,0–4,5 mg a un mécanisme TRPM3 dominant. *#strong[Non-réponse testée uniquement en dose haute (3,0–4,5 mg) est non interprétable] — les deux fenêtres basses (TLR4/Nrf2 et opioïde) peuvent être la zone thérapeutique, jamais testées.*

*Proposition :* le patient est à 4 mg (zone TRPM3). Un essai structuré testerait les deux fenêtres basses #strong[non couvertes par le 4 mg actuel] : la fenêtre TLR4/Nrf2 (ex. 1 mg) *et* la fenêtre opioïde (ex. 2–2,5 mg), chaque palier maintenu plusieurs semaines pour atteindre l'état stable et juger l'effet, avant de revenir au dosage optimal. Le 4 mg actuel n'évalue qu'une zone sur trois — les deux autres restent #strong[non testées].

*Contexte patient :* le dosage a historiquement alterné entre 3 mg et 4 mg — alternance qui empêche la pharmacocinétique à l'état stable et ne teste que la zone haute (TRPM3). Les deux fenêtres basses (TLR4/Nrf2 et opioïde) n'ont #strong[jamais été testées]. Stabiliser puis tester chaque zone une par une.

#warning-box[
*Position :* la réponse du LDN est non monotone dans la fenêtre clinique 0,5–4,5 mg. Un essai structuré par zones est plus informatif qu'une dose unique fixe — et le dosage actuel à 4 mg ne couvre qu'une zone sur trois : les deux fenêtres basses restent #strong[non testées]. Aucun essai de dose-réponse intra-fenêtre n'existe pour l'EM/SFC ; l'essai LIFT en cours utilise une dose unique fixe et ne comblera pas ce manque.
]

*Références laissant penser que cela peut fonctionner :*

- *Polo et al. (2019)* — revue rétrospective de dossiers : le LDN améliore la fatigue, le sommeil et la douleur dans l'EM/SFC. Limites : pas de contrôle placebo, pas de validation RCT.
- *Bolton et al. (2020)* — rapports de cas BMJ décrivant le LDN comme traitement du SFC.
- *Cabanas et al. (2021)* — étude pilote (n=9 EM/SFC sous LDN, n=9 témoins) : restauration de la fonction du canal ionique TRPM3 dans les cellules tueuses naturelles — le mécanisme de la zone haute (3,0–4,5 mg).
- *Essais RCT en cours (2024–2026)* — Life Improvement Trial (OMF), essai British Columbia (n=160), essai ME Association UK (208 pré-recrutés en sept 2025) : résultats attendus 2026, pourront guider le choix de dosage.

*Qualité des preuves :* moyenne — preuves observationnelles positives ; résultats RCT en attente. La structure de dosage par zones reste un cadre de recherche (certitude ~0,30), pas une validation clinique.

// ── 7. Myéline ───────────────────────────────────────────────────────────────

= 7. Myéline / membrane-énergie — mentionné pour ne pas en discuter

Priorité : #prio("basse")

*Pourquoi ce point est mentionné :* uniquement pour #strong[prévenir] le Dr Nicolas que ce sujet est étudié dans le dossier mais #strong[volontairement non actionnable] — afin qu'il ne soit ni ignoré s'il est évoqué, ni considéré comme une piste thérapeutique.

*Pourquoi il ne faut pas en parler :* le signal de myéline altéré (Thapaliya 2025) est une observation de recherche seule, #strong[non répliquée], et son substrat est irrésolu — remyélinisation, gliosis ou fer donnent tous un signal IRM similaire. C'est un proxy IRM sans validation clinique : il n'existe aucune conclusion thérapeutique à en tirer. Le discuter impliquerait un IRM à but clinique non indiqué et un traitement "remyélinisation" qui n'existe pas.

*Contexte :* signal de myéline altéré (Thapaliya 2025, recherche seule, substrat irrésolu : remyélinisation vs gliosis vs fer). Non répliqué, proxy IRM.

#warning-box[
*Position claire :* aucun IRM T1w/T2w à prescrire à but clinique, aucun traitement "remyélinisation" validé. Information de contexte pour comprendre la maladie, pas une cible thérapeutique. #strong[Aucune action demandée — rien à discuter.] Cette ligne sert uniquement à lever l'ambiguïté si le sujet est évoqué.
]

// ── 8. Médicaments testés ────────────────────────────────────────────────────

= 8. Médicaments testés — ce qu'on en déduit sur les mécanismes

Priorité : #prio("haute")

Cette section consolide l'historique pharmacologique du patient et les conclusions mécanistiques qu'il permet — dans la logique de la matrice pharmacodiagnostique du document de recherche principal (la réponse d'un médicament contraint les mécanismes candidats) : chaque réponse (positive, nulle, effet indésirable) restreint les mécanismes possibles.

#v(0.4em)
#table(
  columns: (18%, 20%, 30%, 32%),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Médicament*], [*Dose / période*], [*Réponse*], [*Conclusion mécanistique*],
  ),
  [LDN (naltrexone)], [3,5–4 mg, ~6 mois], [Non-réponse], [TLR4 n'est pas le senseur microglial dominant de ce patient. Les deux fenêtres basses (~1 mg TLR4/Nrf2 et ~2–2,5 mg opioïde, pharmacologies distinctes) restent #strong[jamais testées].],
  [Aripiprazole (LDA)], [1 mg/jour], [Protège PEM, brouillard, concentration, migraine], [Réponse compatible avec une implication microgliale D2 — mais le LDA agit aussi sur D2 mésocorticolimbique et 5-HT1A/5-HT2A : la réponse seule ne distingue pas ces cibles (cf. document principal). Le contraste LDN⁻/LDA⁺ plaide pour une microglie non-TLR4, sans identifier la cible exacte.],
  [Mestinon (pyridostigmine)], [3×1/jour, arrêt 30/06; relance 19/08 1 cp/jour], [Arrêt pour motilité GI (M3); bénéfice avant-bras non établi], [Question non résolue : bénéfice vascular/POTS vs effet GI. À évaluer.],
  [Ritalin MR / Concerta / Provigil], [MR 10 mg; 30 mg induisait PEM], [Excitation/manie en ME/SFC non traité; PEM à 30 mg], [Les stimulants ne protègent pas le PEM — axe distinct de la protection LDA.],
  [Protocole mastocytaire (Rupatall, famotidine, montélukast)], [actif], [Réduit la pression de base], [Agit en amont de la microglie : mastocytes → histamine/PAF/leucotriènes → pression d'entrée réduite.],
)

#v(0.4em)
*Architecture en 3 couches — déduite des réponses :*

#v(0.4em)
#table(
  columns: (14%, 34%, 36%, 16%),
  stroke: 0.5pt,
  inset: 6pt,
  table.header(
    [*Couche*], [*Domaines*], [*Mécanisme*], [*Sensible au LDA ?*],
  ),
  [Couche 1], [PEM, brouillard, concentration, migraine], [Microglial/dopaminergique (microglie sensibilisée, seuil D2 — ou D2 mésocorticolimbique / 5-HT1A, indissociables au LDA)], [*Oui* — protégé],
  [Couche 2], [Acouphènes], [Thalamo-cortical / GABAergique (échec de filtrage)], [*Non*],
  [Couche 3], [Crampes spontanées], [Hyperexcitabilité motoneuronale/spinale (canal ionique, TRPM3)], [*Non*],
)

#emph-box[
*Lecture pharmacodiagnostique (cadre du document principal) :*

- *LDN nul à 4 mg* → élimine TLR4 comme voie dominante — #strong[une seule voie éliminée, pas l'origine] (la matrice nulle: un nul élimine le mécanisme à certitude plus haute que l'origine).
- *LDA positif* → localise le goulot actuel dans l'axe dopaminergique/microglial. #strong[Caveat (document principal) :] la réponse au LDA ne distingue pas microglial D2, dopaminergique mésocorticolimbique ou sérotoninergique 5-HT1A/5-HT2A — le LDA agit sur ces cibles simultanément. Associée au LDN nul, elle plaide pour une implication microgliale via D2 plutôt que TLR4.
- *LDA nul sur acouphènes et crampes* → deux pathologies distinctes, non dopaminergiques — un #strong[échec de cible, pas un échec de dose] (cf. null-subtyping).
- *Stimulants → PEM* → l'axe métabolique/énergétique n'est pas la couche que les stimulants atteignent ; le contraste avec la protection LDA non-excitante est informatif.
- *Limite honnête :* placebo 30–40 %, fluctuation, régression à la moyenne et réponses croisées confondent toute déduction mono-médicament — cadre de recherche (certitude ~0,30), #strong[ni diagnostic validé ni matrice clinique].
]

*Ce que les dosages LDN bas testeraient :* si une des deux fenêtres basses (TLR4/Nrf2 ~1 mg, ou opioïde ~2–2,5 mg, toutes deux jamais testées) répond là où la fenêtre TLR4 4 mg a échoué, cela confirmerait une sensibilisation microgliale non-TLR4 — compatible avec le profil LDN⁻/LDA⁺ actuel (voir point 6).

// ── 9. Signaux à confirmer ───────────────────────────────────────────────────

= 9. Signaux à confirmer

- *Relance Mestinon* : décision médicale (point 3).
- *Panel EBV* : prescription (point 1).
- *Gabapentine* *(secondaire)* : à n'aborder que si le sommeil reste un problème (point 2).
- *LDA 1 mg/jour* : conservé (0,5 mg n'élimine pas le PEM).
- *LDN hormesis* : essai structuré de dosages alternatifs (point 6).
- *Lecture mécanistique des médicaments testés* : synthèse des couches 1–3 (point 8).

// ── Résumé ──────────────────────────────────────────────────────────────────

= Résumé pour la consultation

#v(0.4em)
#set par(spacing: 0.4em)

1. *#strong[Prescrire]* panel EBV : EA-IgG + EBNA-1 + EBV PCR ADN plasmatique (idéalement en période de poussée).
2. *#strong[Valider]* la relance Mestinon 1 cp/jour et définir le critère d'arrêt GI.
3. *#strong[Confirmer]* le maintien de LDA 1 mg/jour (0,5 mg insuffisant contre le PEM).
4. *#strong[Prescrire/évaluer]* sérum K⁺/Mg²⁺ + envisager EMG pour discriminer le mécanisme des crampes.
5. *#strong[Évaluer]* l'opportunité d'un test de table inclinante pour orienter le choix autonomique (ivabradine vs autres).
6. *#strong[Discuter]* un essai structuré de dosages LDN (hormesis) — tester les deux fenêtres basses (1 mg TLR4/Nrf2 et 2–2,5 mg opioïde), jamais testées, en plus du palier actuel 4 mg.
7. *(Secondaire)* Gabapentine pour l'alpha-intrusion — seulement si le sommeil reste un problème persistant.
8. *(Lecture)* Les réponses médicamenteuses (point 8) convergent sur une architecture à 3 couches : microgliale/dopaminergique (protégée), thalamo-corticale/GABAergique (acouphènes), motoneuronale/canal ionique (crampes).

#v(0.8em)
#line(length: 100%, stroke: 0.5pt + rgb("#aaaaaa"))
#v(0.4em)

#text(size: 9pt, fill: rgb("#999999"))[
  Document préparé à partir de l'analyse du dossier patient et de la littérature. Il constitue un ordre du jour préliminaire pour discussion, *pas une prescription*. Chaque option (panel EBV + cimetidine, gabapentine, relance Mestinon, EMG/électrolytes, ivabradine, essai LDN par fenêtres de dose) doit être validée et approuvée par le médecin traitant avant mise en œuvre.
]
