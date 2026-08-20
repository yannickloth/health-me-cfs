// Document de travail — Amy Cordy (PSEUDONYME — identité réelle non divulguée)
// EM sévère — gastroparesis — alimentation liquide — inquiétudes urgentes et vitales
// Préparé à partir d'informations relayées par une proche. À valider avec la patiente.
// Date : 2026-08-19
// Priorité : traiter d'abord les inquiétudes urgentes et vitales (sections 1–3).

#set document(
  title: "Amy Cordy — Urgences vitales et gastroparesis",
  date: datetime(year: 2026, month: 8, day: 19),
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
#set text(font: "STIX Two Text", size: 11pt, lang: "fr")
#set par(justify: true)
#set heading(numbering: "1.")
#show table: set text(size: 9pt)

// ── Palette couleur (contraste WCAG AA, fonds pastel lisibles N&B) ─────────
#let urgent-bg     = rgb("f8d7da")  // rouge pastel  → gris ~88%
#let urgent-border = rgb("7f1d1d")  // rouge foncé   → gris ~15%
#let keyfinding-bg     = rgb("d4edda")  // vert pastel  → gris ~88%
#let keyfinding-border = rgb("155724")  // vert foncé   → gris ~22%
#let question-bg     = rgb("fff3cd")  // jaune pastel → gris ~94%
#let question-border = rgb("78350f")  // brun foncé   → gris ~19%
#let mechanism-bg     = rgb("e8e8e8")  // gris clair   → gris ~91%
#let mechanism-border = rgb("2d2d2d")  // gris foncé   → gris ~18%

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

#let urgent(title, body)    = make-box("URGENT / VITAL : " + title, urgent-bg,    urgent-border,    body)
#let keyfinding(title, body) = make-box("Constat clé : " + title,  keyfinding-bg, keyfinding-border, body)
#let question(title, body)  = make-box("À clarifier : " + title,   question-bg,   question-border,   body)
#let mechanism(title, body) = make-box(title,                      mechanism-bg,  mechanism-border,  body)

// ── Bloc titre ──────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Amy Cordy (pseudonyme)]
  #v(4pt)
  #text(size: 13pt)[EM sévère --- Gastroparesis --- Inquiétudes urgentes et vitales]
  #v(2pt)
  #text(size: 11pt)[Document de travail préparé à partir d'informations relayées par une proche]
  #v(2pt)
  #text(size: 10pt, style: "italic")[2026-08-19 --- patiente française]
]

#v(0.5em)

#urgent("Lire d'abord --- équilibre entre l'urgence vitale signalée et la protection PEM")[
  Le service d'urgence (SAMU / "le 15") a indiqué une *urgence vitale*. Ce signal doit être *évalué*, pas écarté. En parallèle, la patiente refuse l'hôpital pour éviter un *crash PEM* — une préoccupation réelle et légitime en EM sévère (un transfert et une attente aux urgences sont des déclencheurs PEM connus).

  *Voie médiane recommandée :* ne pas ignorer le signal, mais ne pas imposer un passage aux urgences.
  - Demander une *évaluation à domicile ou en téléconsultation* via la *SAS (Service d'Accès aux Soins)* — l'outil d'aval du 15, qui peut proposer un avis sans déplacement.
  - Demander un *bilan biologique* : ionogramme (Na/K), *thiamine (B1)*, albumine, créatinine — pour objectiver déshydratation et carence, et surveiller un risque de syndrome de re-feeding.
  - Établir par écrit des *critères d'alerte objectifs* : si l'un survient, l'urgence devient nécessaire malgré le PEM.
]

#v(0.5em)

#urgent("Critères d'alerte --- quand l'urgence devient nécessaire malgré le PEM")[
  - Absence ou forte diminution des urines
  - Somnolence inhabituelle, malaise, pré-syncope ou syncope
  - Incapacité à boire ne serait-ce que des liquides
  - Confusion ou altération de la conscience
  - Perte de poids rapide et marquée
  - Pouls ou tension très instables

  Avoir ces critères par écrit aide la patiente à savoir *quand* elle irait, et à rester chez elle en sécurité jusque-là.
]

#pagebreak()

// =============================================================================
// 1. ALIMENTATION LIQUIDE — combien de temps sans carence ?
// =============================================================================

#heading[Alimentation liquide --- combien de temps sans carence ?]

#keyfinding("Ce qui compte, c'est ce que contiennent les liquides, pas seulement la durée")[
  Une semaine de liquides ne crée pas de carence immédiate et catastrophique *si* l'apport est suffisant en volume et riche. La limite de sécurité dépend du contenu :
  - *Thiamine (B1)* : le risque le plus important à court terme avec un faible apport (risque neurologique) ; le risque de *syndrome de re-feeding* apparaît dès qu'on re-alimente vite après une période de faible apport.
  - *Protéines, sodium, potassium, magnésium* : les liquides clairs (bouillon, jus) n'en apportent pas assez ; les *liquides nutritionnels complets* (hyperprotéinés, enrichis en vitamines) en apportent beaucoup plus.
  - *Liquides riches* (protéines + électrolytes + vitamines, dont B1) : quelques jours à ~1--2 semaines tenables.
  - *Liquides clairs seuls* : à limiter ; au-delà d'une semaine, ou avec perte de poids marquée, il faut un bilan et un plan d'apport supervisé.
]

#keyfinding("Recommandation pour le rendez-vous de demain")[
  Demander une *évaluation de l'état nutritionnel et hydrique* : bilan biologique (électrolytes, B1, albumine) et plan d'apport liquide *riche* (protéines + vitamines), plutôt que de "tenir" aveuglément. En France, les *compléments nutritionnels oraux (CNO)* sont délivrés en pharmacie et souvent pris en charge par l'Assurance Maladie sur prescription.
]

#pagebreak()

// =============================================================================
// 2. GASTROPARESIS — traitement sûr d'abord
// =============================================================================

#heading[Traitement de la gastroparesis --- approche sûre d'abord]

#keyfinding("La nutrition et l'alimentation passent avant les médicaments")[
  Pour une gastroparesis modérée à sévère, l'adaptation alimentaire est l'intervention de première ligne, la moins risquée :
  - Repas petits et fréquents
  - Repas pauvres en graisses et en fibres (moins de charge mécanique gastrique)
  - Options liquides ou semi-liquides enrichies quand la vidange des solides est lente

  Ces mesures ne corrigent pas la cause (dysautonomie/vagale), mais elles protègent le poids et l'énergie, et évitent les risques des prokinétiques.
]

#mechanism("Pourquoi la patiente a raison de se méfier des prokinétiques précédents")[
  La patiente a eu des traitements de motilité gastrique qui ont posé problème et ne veut pas réitérer — c'est un signal clinique légitime, pas de la résistance. Plusieurs prokinétiques ont des risques sérieux en EM sévère :
  - *Métoclopramide* : seul approuvé pour la gastroparesis, mais *avertissement "black box"* au-delà de 12 semaines (risque de dyskinésie tardive, possiblement irréversible) ; somnolence, agitation, hyperprolactinémie.
  - *Domperidone* : risque d'allongement du QT ; un ECG/QTc de base et une surveillance sont prudents.
  - *Érythromycine* (faible dose, motiline) : perd son efficacité avec le temps ; risque QT, interactions.
  - *Agonistes GLP-1* (semaglutide, etc.) : *CONTRE-INDIQUÉS en cas de gastroparesis* — ils ralentissent la vidange, coupent l'appétit et aggravent la perte de poids. Vérifier que la liste de médicaments n'en contient aucun.
  - *Mestinon (pyridostigmine)* : son intolérance est une contre-indication pratique valide (agent cholinergique ; peut aggraver nausées, crampes, sueurs, diarrhée). Ne pas réintroduire.
]

#keyfinding("Si un prokinétique est jugé utile : option la plus sûre, limitée dans le temps")[
  Aucun prokinétique n'a d'essai contrôlé en EM, donc le dosage est extrapolé. Si un prokinétique est réellement indiqué, privilégier une option à plus faible risque (ex. *prucalopride*, agoniste 5-HT4, hors-AMM pour la gastroparesis mais avec un signal cardiovasculaire/QT faible), à *dose limitée dans le temps* et sous surveillance — pas en continu. La décision revient au médecin référent du rendez-vous de demain.
]

#pagebreak()

// =============================================================================
// 2.5 RÉPONDRE AUX ANGOISSES
// =============================================================================

#heading[Répondre aux angoisses --- la peur de manger, la peur de l'hôpital]

#keyfinding("L'angoisse est une réponse compréhensible, pas un signe de faiblesse")[
  Il est tout à fait normal d'être angoissée dans cette situation. Trois peurs se superposent, et chacune est légitime :
  - *Peur de la nourriture* : après des semaines difficiles et des médicaments de motilité qui ont posé problème, manger peut faire peur — on craint la nausée, la douleur, la sensation de "trop plein", ou une rechute.
  - *Peur de l'hôpital* : pour une EM sévère, l'hôpital = PEM, = sur-stimulation, = risque de dégradation. Refuser l'hôpital n'est pas du déni, c'est une *protection*.
  - *Peur de faire le mauvais choix* : ne pas savoir si "tenir" est dangereux ou si c'est le bon choix crée une angoisse permanente.

  Le but de ce document n'est pas de forcer un choix, mais de *lever l'ambiguïté* : savoir quand c'est sûr, quand il faut agir, et comment reprendre le contrôle par petites étapes.
]

#keyfinding("Déculpabiliser : personne ne gère mal une gastroparesis")[
  La gastroparesis n'est pas une question de volonté. C'est un ralentissement mécanique de l'estomac lié au système nerveux autonome — on ne peut pas "forcer" l'estomac à se vider avec de la détermination. Si la patiente ne mange que des liquides, ce n'est pas un échec : *c'est la bonne réponse de survie* à un estomac qui ne tolère pas le solide. Se féliciter d'avoir maintenu un apport liquide pendant une semaine, plutôt que de se reprocher de ne pas "mieux faire".
]

#keyfinding("Reprendre le contrôle : l'angoisse baisse quand on a un plan")[
  L'angoisse est souvent amplifiée par l'incertitude. Un plan simple, écrit, redonne un sentiment de contrôle :
  - *Un objectif à la fois*, pas tout d'un coup.
  - *Des critères clairs* pour savoir quand agir (cf. critères d'alerte).
  - *Une permission* de ne pas aller à l'hôpital tant que les critères d'alerte ne sont pas déclenchés — et une permission d'y aller *si* ils se déclenchent, sans culpabilité.
  - *Ne pas rester seule* : avoir une personne de confiance qui connaît le plan, qui peut aider à décider objectivement quand l'angoisse brouille le jugement.
]

#pagebreak()

// =============================================================================
// 2.6 COMMENT RECOMMENCER À MANGER MIEUX — REPRISE PROGRESSIVE
// =============================================================================

#heading[Comment recommencer à manger mieux --- reprise progressive et sans forcer]

#keyfinding("Principe : reconstruire par paliers, pas tout d'un coup")[
  L'objectif n'est pas de repasser au solide normal immédiatement, mais de *progresser par petites étapes tolérables*. Chaque palier doit être confortable avant de passer au suivant. On ne force jamais — forcer un estomac qui ne vide pas déclenche nausée, douleur et rejette tout. Le rythme est celui de la tolérance, pas de la motivation.
]

#mechanism("Paliers de reprise alimentaire (du plus doux au plus solide)")[
  *Palier 1 — Liquides riches (en cours).* Bouillons enrichis, boissons nutritionnelles complètes (CNO), smoothies très lisses, eau avec électrolytes. Objectif : maintien des apports (protéines, vitamines, dont B1) sans déclencher la nausée.

  *Palier 2 — Semi-liquides / textures lisses.* Soupes mixées épaissies, purées très lisses, compotes, yaourt, flans, œufs brouillés bien cuits. Petites quantités, fréquentes (toutes les 2--3 h plutôt que trois gros repas).

  *Palier 3 — Aliments mous, pauvres en graisses et en fibres.* Poisson blanc cuit, riz bien cuit, banane mûre, courgettes cuites, avoine fine. Toujours en petites portions.

  *Palier 4 — Repas normaux progressifs.* Retour progressif à des repas équilibrés, en respectant la règle : *pauvre en graisses, pauvre en fibres, petits repas fréquents* — car gras et fibres ralentissent la vidange gastrique.
]

#keyfinding("Règles pratiques pour manger mieux sans déclencher les symptômes")[
  - *Petites quantités, souvent* : 6--8 petits apports par jour plutôt que 3 gros repas.
  - *Manger lentement* et *bien mâcher* (la digestion commence dans la bouche).
  - *Éviter les aliments gras et très riches en fibres* (ils ralentissent encore l'estomac) : fritures, crudités, aliments très fibreux, produits très sucrés.
  - *Privilégier les textures lisses et les aliments cuits* : plus faciles à digérer.
  - *Ne pas boire de grandes quantités en mangeant* : boire entre les repas plutôt qu'avec, pour ne pas surcharger l'estomac.
  - *Position assise ou semi-allongée pendant et après* les repas (la gravité aide la vidange) ; éviter de s'allonger à plat juste après.
  - *Enrichir* les liquides et purées (protéines en poudre, lait, huile en petite quantité) pour augmenter les apports sans augmenter le volume.
  - *Noter ce qui passe et ce qui ne passe pas* : un petit carnet alimentaire aide à repérer les aliments déclencheurs et à rassurer (on voit la progression).
]

#keyfinding("Gérer la reprise de poids et le syndrome de re-feeding")[
  Si la patiente a perdu du poids, il faut *réintroduire les aliments progressivement* pour éviter le *syndrome de re-feeding* (risque de déséquilibres électrolytiques et de thiamine quand on re-nourrit vite après une période de faible apport). Les CNO et la thiamine aident à sécuriser cette reprise. Ne pas "rattraper" le retard d'un coup — la reprise lente et régulière est plus sûre.
]

#v(0.5em)

#question("Pour le rendez-vous de demain --- au sujet de la reprise alimentaire")[
  - Demander un *plan d'apport progressif* personnalisé et un *bilan* (électrolytes, thiamine B1, albumine) avant de reprendre une alimentation plus solide.
  - Demander si des *CNO (compléments nutritionnels oraux)* sont appropriés et prescriptibles pour sécuriser l'apport.
  - Demander des conseils sur la *reprise de poids* sans risque de syndrome de re-feeding.
  - Si la patiente souhaite de l'aide *psychologique / de gestion de l'angoisse* autour de l'alimentation et de l'hôpital, mentionner le besoin — c'est légitime et utile.
]

#pagebreak()

// =============================================================================
// 3. QUESTIONS À POSER AU RENDEZ-VOUS DE DEMAIN
// =============================================================================

#heading[Questions à poser au rendez-vous de demain]

#block(
  fill: rgb("fff3cd"),
  stroke: (left: 4pt + rgb("ffc107"), rest: 0.5pt + rgb("ffc107")),
  radius: 3pt,
  inset: (left: 12pt, rest: 10pt),
  width: 100%,
)[
  #text(size: 12pt, weight: "bold", fill: rgb("856404"))[Checklist --- rendez-vous de demain]
  #v(8pt)
  - Demander un *bilan biologique* : ionogramme (Na/K), *thiamine (B1)*, albumine, créatinine.
  - Demander si une *évaluation à domicile / téléconsultation via la SAS* est possible plutôt que l'hôpital.
  - Demander les *critères d'alerte* par écrit (déshydratation, anurie, somnolence inhabituelle, incapacité à boire, confusion).
  - *Revérifier la liste de médicaments* : exclure tout *agoniste GLP-1* (contre-indiqué en gastroparesis) ; ne pas réintroduire le *Mestinon* (intolérance documentée).
  - Discuter, *si nécessaire*, d'une option prokinétique à plus faible risque (ex. *prucalopride*), limitée dans le temps et surveillée.
  - Poser tôt la question d'un *plan d'apport* (CNO riches, voire nutrition entérale à domicile pour les cas très sévères qui ne peuvent pas s'alimenter) — ne pas attendre l'épuisement.
]

#v(0.5em)

#question("Points à confirmer avec la patiente (non vérifiés)")[
  - *Signification de "SAMA"* : l'acronyme n'a pas pu être établi de façon fiable dans ce contexte. À confirmer avant toute interprétation clinique.
  - *Médicaments de motilité précis* déjà essayés et leurs effets indésirables exacts : non confirmés.
  - *Diagnostic de la gastroparesis* : confirmé par scintigraphie ou clinique ? Non précisé.
  - *Poids et évolution* : chiffres non disponibles.
]

#v(0.5em)

#mechanism("Rappel de sécurité important")[
  Ce document est préparé par une proche à partir d'informations relayées, à titre de synthèse pour faciliter le dialogue médical. Il ne remplace pas un dossier médical, ne contient aucun diagnostic, et ne se substitue pas à un avis médical. Les propositions de traitement sont des orientations fondées sur la littérature, à valider par le médecin référent — en particulier *le point d'urgence vitale signalé par le 15 doit être évalué*, pas écarté.
]
