// Document d'information et de synthèse — Amy Cordy (PSEUDONYME)
// Gastroparesis et EM sévère : comprendre le phénomène, et les pistes pour en sortir.
// Date : 2026-08-20. À valider par un médecin référent.

#set document(
  title: "Amy Cordy — Gastroparesis et EM : comprendre et agir",
  date: datetime(year: 2026, month: 8, day: 20),
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

// ── Palette couleur ─────────────────────────────────────────────────────────
#let strong-bg       = rgb("d4edda")  // vert pastel  → gris ~88%
#let strong-border   = rgb("155724")  // vert foncé   → gris ~22%
#let moderate-bg     = rgb("d9edf7")  // bleu pastel  → gris ~91%
#let moderate-border = rgb("0c4a6e")  // bleu foncé   → gris ~18%
#let weak-bg         = rgb("fff3cd")  // jaune pastel → gris ~94%
#let weak-border     = rgb("78350f")  // brun foncé   → gris ~19%
#let caution-bg      = rgb("f8d7da")  // rouge pastel → gris ~88%
#let caution-border  = rgb("7f1d1d")  // rouge foncé  → gris ~15%
#let mechanism-bg    = rgb("e8e8e8")  // gris clair   → gris ~91%
#let mechanism-border = rgb("2d2d2d") // gris foncé   → gris ~18%

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

// Niveau de potentiel d'efficacité : vert = bon, bleu = modéré, jaune = faible/spéculatif
#let strong_eff(title, body)   = make-box("Potentiel BON  —  " + title, strong-bg,   strong-border,   body)
#let moderate_eff(title, body) = make-box("Potentiel MODÉRÉ  —  " + title, moderate-bg, moderate-border, body)
#let weak_eff(title, body)     = make-box("Potentiel FAIBLE/SPÉCULATIF  —  " + title, weak-bg,     weak-border,     body)
#let caution(title, body)      = make-box("ATTENTION : " + title,  caution-bg,  caution-border,  body)
#let mechanism(title, body)    = make-box(title,                   mechanism-bg, mechanism-border, body)

// ── Titre ───────────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Gastroparesis et EM sévère]
  #v(4pt)
  #text(size: 13pt)[Comprendre le phénomène et les pistes pour en sortir]
  #v(2pt)
  #text(size: 10pt, style: "italic")[Amy Cordy (pseudonyme) — 2026-08-20]
]

#v(0.5em)

#caution("Important à lire avant")[
  Ce document explique ce que l'on sait de la gastroparesis en EM/CFS et les pistes pour en sortir, avec pour chaque piste un *niveau de potentiel d'efficacité* qui reflète l'état des preuves et la plausibilité mécanistique. Il distingue ce qui est *établi* de ce qui est *spéculatif* (hypothèses à tester). *Rien ici ne remplace un avis médical* — toute intervention doit être validée par le médecin référent, en particulier pour une patiente sévère.
]

#v(0.5em)

#outline(indent: 1em)

#pagebreak()

// =============================================================================
// PARTIE 1 — COMPRÉHENSION DU PHÉNOMÈNE
// =============================================================================

#heading[Comprendre le phénomène]

#mechanism("La gastroparesis en EM : un ralentissement gastrique mesurable, lié au système nerveux autonome")[
  Dans l'EM/CFS, la gastroparesis (vidange gastrique ralentie) est *réelle et mesurable*, pas un simple inconfort subjectif. Deux cohortes le documentent :
  - 23/32 (72 %) des patients présentent une vidange liquide retardée et 12/32 (38 %) une vidange solide retardée, corrélée à la sévérité des symptômes (étude de 2004).
  - Une étude 2023 (n=40) retrouve ~72 % de vidange liquide retardée et ~38 % de vidange solide, avec corrélation à la sévérité et une accommodation de l'estomac réduite (hypersensibilité viscérale).

  *La vidange ralentie n'est pas universelle* : un cas isolé montre une vidange normale. Le mécanisme est un *dysfonctionnement du nerf vague (système nerveux autonome)* qui contrôle la motricité gastrique.

  *Mais la cause profonde reste une question ouverte.* Trois possibilités ne sont pas encore tranchées :
  - *Perte structurelle* (cellules pacemaker / nerfs intestinaux, comme dans la gastroparesis diabétique) — probablement non réversible.
  - *Blocage auto-immun* des ganglions vagaux (anticorps anti-récepteur acétylcholine) — potentiellement réversible par immunothérapie.
  - *Échec fonctionnel vagal* (sans lésion structurelle) — plus réversible.
]

#mechanism("Le rôle central du nerf vague (cascade vagale)")[
  Une cascade vagale relie l'intestin au cerveau :
  dysbiose intestinale → baisse du butyrate → baisse de la sérotonine des cellules entérochromaffines → réduction du signal du nerf vague → baisse du tonus vagal efférent → (a) trouble de la motricité gastrique (gastroparesis), (b) baisse de la variabilité cardiaque, (c) inflammation systémique non freinée (voie anti-inflammatoire cholinergique).

  Trois niveaux de lésion possibles, distinguables par les traitements :
  - *Entérique* (intestin → nerf vague) : dysbiose, SIBO.
  - *Central* (noyaux vagaux du tronc cérébral) : neuro-inflammation.
  - *Ganglionnaire / périphérique* (anticorps anti-ganglion ou lésion nerveuse).
]

#mechanism("Le lien SIBO : un cercle vicieux intestin-motricité")[
  La motilité réduite favorise la prolifération bactérienne du petit intestin (SIBO) : le complexe moteur migrant (MMC), qui "balaye" les bactéries pendant le jeûne, fonctionne mal. La SIBO est fréquente en EM (~48 %). C'est un *cercle vicieux* :
  motricité réduite → SIBO → perméabilité intestinale + inflammation (LPS) → comportement de maladie → aggravation autonome → motricité encore réduite.

  *Point clé :* la motricité de l'intestin grêle dépend du *système nerveux entérique* (pas du vague), ce qui oriente le traitement vers la correction de la dysbiose et l'entretien de la motricité, en plus des prokinétiques gastriques.
]

#mechanism("PEM et cas sévères : pourquoi éviter le crash est vital")[
  Le PEM (malaise post-effort) apparaît avec retard (12–72 h), est disproportionné, et peut persister des semaines en cas sévère. *Chaque crash répété risque une dégradation irréversible* ; chez les très sévères, il ne reste que peu de tentatives de traitement tolérables avant une perte fonctionnelle définitive. *Éviter le crash n'est pas du déni — c'est une protection vitale.* En très sévère, l'énergie limitée restreint le cerveau aux fonctions de survie (tronc cérébral, sensoriel, moteur de base) — il faut en tenir compte dans toute approche.
]

#mechanism("Ce que l'on ne sait pas encore (transparence)")[
  - On ne tranche pas entre les trois mécanismes de la gastroparesis (structurel vs auto-immun vs fonctionnel) — c'est une *question ouverte*.
  - La gastroparesis auto-immune en EM n'est *jamais démontrée* (le test d'anticorps anti-ganglion n'a jamais été fait en EM).
  - Aucun prokinétique n'a d'essai contrôlé en EM — tous les dosages sont extrapolés.
]

#heading[Le cas d'Amy : ce que chaque élément signifie]

#mechanism("Mestinon (pyridostigmine) — ce que dit l'intolérance")[
  Le Mestinon (pyridostigmine) est un agent *cholinergique* qui augmente l'acétylcholine pour stimuler la transmission vagale/parasympathique (motricité gastrique, tonus cardiaque). Il est souvent utilisé comme *sonde* pour tester si la voie vagale efférente fonctionne.

  *L'intolérance d'Amy au Mestinon est un signal documenté et légitime* — ne pas réintroduire. Deux lectures possibles, toutes deux utiles :
  - Un sondage à 17–21 % des patients rapporte que certains traitements (dont le Mestinon) ont *aggravé* leur état — Amy fait peut-être partie de cette minorité. C'est une raison valide de l'éviter.
  - Une *crampe abdominale* à faible dose peut refléter une *hypersensibilité cholinergique intestinale* (l'intestin réagit fortement à l'acétylcholine) — une information *diagnostique* qui suggère une atteinte cholinergique au niveau intestinal, pas un danger.

  *Conséquence pratique :* le Mestinon ne doit pas être réintroduit. Mais le fait qu'Amy y soit sensible aide à situer la lésion (probablement au niveau cholinergique/entérique plutôt que purement structurel ou central) — utile pour le médecin.
]

#mechanism("Prokinétiques antérieurs qui ont posé problème — ce que ça signifie")[
  Amy a eu des traitements de motilité gastrique qui ont posé problème et ne veut pas réitérer — *c'est un signal clinique légitime, pas de la résistance*. Ce que cela indique :
  - Si un prokinétique a provoqué des *effets extrapyramidaux* (impatience, mouvements involontaires) ou une *dyskinésie*, alors *tous les antagonistes D2* (métoclopramide, et dans une moindre mesure domperidone) sont *contre-indiqués* — il faut se tourner vers des options non-D2 (prucalopride 5-HT4, ou érythromycine motiline).
  - Si un prokinétique a donné une *crampe abdominale* ou une nausée, cela peut refléter une hypersensibilité cholinergique (comme pour le Mestinon) plutôt qu'un danger.
  - La réponse (ou non-réponse) à un prokinétique est *diagnostique* : elle aide à savoir si la lésion est au niveau des récepteurs (réversible) ou plus en aval (structurelle).

  *Conséquence pratique :* ne pas réintroduire ce qui a posé problème, mais ne pas renoncer à toutes les options — privilégier l'option la plus sûre (prucalopride) si le médecin juge un prokinétique utile, à dose limitée dans le temps.
]

#mechanism("Alimentation liquide depuis ~1 semaine — ce que ça implique")[
  Une semaine de liquides n'est pas dangereuse en soi *si* les liquides sont riches (protéines, électrolytes, vitamines, dont B1/thiamine). Le risque n'est pas la durée mais le contenu :
  - *Thiamine (B1)* : le risque le plus important à court terme avec un faible apport ; le *syndrome de re-feeding* apparaît si on re-nourrit trop vite après.
  - *Électrolytes (sodium, potassium, magnésium)* et *protéines* : les liquides clairs n'en apportent pas assez.
  - *Liquides clairs seuls* : à limiter au-delà d'une semaine ; il faut un bilan et un plan d'apport.

  *Conséquence pratique :* demander un bilan (électrolytes, B1, albumine) et privilégier des liquides nutritionnels riches (compléments nutritionnels oraux) plutôt que de "tenir" avec des liquides clairs.
]

#mechanism("Refus des urgences + urgence vitale signalée — l'équilibre")[
  Le refus d'aller à l'hôpital pour éviter un *crash PEM* est une préoccupation réelle et légitime en EM sévère (un transfert + une attente aux urgences sont des déclencheurs PEM connus). Mais un signal d'*urgence vitale* doit être *évalué*, pas écarté.

  *Voie médiane :* évaluation à domicile / téléconsultation via la SAS (Service d'Accès aux Soins) ; bilan biologique ; critères d'alerte objectifs écrits (absence d'urines, somnolence inhabituelle, incapacité à boire, confusion, perte de poids rapide, pouls/tension très instables) — sachant que si l'un se déclenche, l'urgence devient nécessaire malgré le PEM.
]

#mechanism("SAMA — à clarifier")[
  La signification de "SAMA" n'a pas pu être établie de façon fiable dans ce contexte. *À confirmer avec la patiente ou son médecin* avant toute interprétation clinique. Ce document ne suppose pas sa signification.
]

#caution("Ce qui est CONTRE-INDIQUÉ dans le cas d'Amy — à vérifier absolument")[
  - *Agonistes GLP-1* (semaglutide, liraglutide) : *contre-indiqués en gastroparesis* — ils ralentissent la vidange, coupent l'appétit, aggravent la perte de poids. *Vérifier que la liste de médicaments d'Amy n'en contient aucun.*
  - *Mestinon (pyridostigmine)* : ne pas réintroduire (intolérance documentée).
  - *Métoclopramide en continu* (et tous D2 si effet extrapyramidal passé) : risque de dyskinésie tardive > 12 semaines ; à éviter en chronique.
  - Ne *jamais retarder la nutrition* en attendant un avis psychiatrique quand une patiente très sévère ne peut plus s'alimenter — la malnutrition aggrave tout.
]

#pagebreak()

// =============================================================================
// PARTIE 1.5 — ANALYSE MÉCANISTIQUE DU CAS D'AMY
// =============================================================================

#heading[Analyse mécanistique : ce que les indices d'Amy suggèrent]

#caution("Comment lire cette section")[
  Cette analyse est *hypothétique* : elle interprète les quelques indices connus d'Amy à la lumière des mécanismes (cholinergique, vagal, dopaminergique D2, entérique, auto-immun). Elle ne pose *pas* de diagnostic — chaque interprétation est une *piste* à confirmer par un test ou un essai clinique. Les indices sont peu nombreux, donc plusieurs lectures restent possibles et concurrentes.
]

#mechanism("Intolérance au Mestinon (pyridostigmine) — l'indice cholinergique le plus informatif")[
  Le Mestinon augmente l'acétylcholine en bloquant sa dégradation. Il a donc un effet *cholinergique diffus* (nerf vague, intestin, cœur, glandes). La réaction d'Amy est l'indice le plus informatif qu'on ait. Trois interprétations mécanistiques possibles :

  - *Hypersensibilité cholinergique par dénervation (le plus probable).* Quand des terminaisons nerveuses cholinergiques sont perdues ou affaiblies (dénervation), les récepteurs restants compensent en *augmentant en nombre et en sensibilité*. Résultat : un agent cholinergique (comme le Mestinon) qui, normalement, serait bien toléré, provoque une *réaction exagérée* — crampes, nausée, sueurs. C'est exactement la signature d'une *atteinte cholinergique intestinale* : l'intestin d'Amy est probablement *partiellement dénervé* au niveau cholinergique, et y est devenu hypersensible. Cela oriente vers une lésion *entérique/cholinergique* plutôt que purement centrale ou vasculaire.

  - *Rôle du système nerveux entérique.* L'intestin possède son propre réseau nerveux (entérique). S'il est touché (neuropathie entérique), la réponse aux agents cholinergiques devient irrégulière ou exagérée. Cohérent avec la motricité ralentie.

  - *Concurrence : vulnérabilité générale aux agents cholinergiques.* Sans pouvoir mesurer, on ne peut pas exclure une simple sensibilité individuelle. Mais le couplage avec une gastroparesis rend la lecture "dénervation → hypersensibilité" la plus plausible.

  *En pratique :* l'intolérance d'Amy au Mestinon est non seulement légitime, mais *diagnostiquement utile* : elle est un signal indirect d'une *hypersensibilité cholinergique d'origine dénervationnelle* — une pièce du puzzle qui oriente vers une atteinte du système nerveux autonome/entérique, pas vers une cause structurelle purement gastrique.
]

#mechanism("Prokinétiques antérieurs qui ont posé problème — l'indice dopaminergique / récepteur")[
  Les prokinétiques classiques agissent principalement sur deux cibles : les récepteurs *dopaminergiques D2* (métoclopramide, domperidone) et *motiline/5-HT4* (érythromycine, prucalopride). La façon dont ils ont posé problème est informative :

  - *Si effets extrapyramidaux* (impatience, mouvements involontaires, agitation) : cela trahit une action centrale sur le système dopaminergique D2. Cela rend *tous les antagonistes D2* contre-indiqués et oriente vers une hypersensibilité dopaminergique. À ne pas réintroduire.

  - *Si crampes/nausées abdominales* : comme pour le Mestinon, cela évoque une *hypersensibilité cholinergique intestinale* (la motricité stimulée déclenche une réponse exagérée). Cohérent avec la lecture de dénervation ci-dessus.

  - *Si simple inefficacité* (aucun effet) : cela suggérerait que la lésion est *en aval des récepteurs* — c'est-à-dire non pas un défaut de signal (récepteur) mais une perte structurelle (cellules pacemaker/nerfs intestinaux) ou un blocage ganglionnaire, auquel cas les prokinétiques stimulant les récepteurs n'ont que peu d'effet.

  *En pratique :* le *type* d'effet indésirable (extrapyramidal vs crampe vs inefficacité) permet au médecin de situer le niveau de la lésion et de choisir la classe la plus adaptée. Si c'était une crampe/hypersensibilité, l'option 5-HT4 (prucalopride) ou motiline (érythromycine) peut être mieux tolérée que les D2.
]

#mechanism("Gastroparesis + EM sévère — le couplage autonome")[
  La présence d'une gastroparesis chez une patiente EM sévère est cohérente avec le modèle *vagal* : le nerf vague, qui pilote la vidange gastrique, fait partie du même système autonome défaillant qui explique la fatigue sévère et l'intolérance à l'effort. Ce n'est pas deux maladies séparées, mais deux manifestations d'un même dysfonctionnement du système nerveux autonome / de la voie cholinergique anti-inflammatoire.

  *En pratique :* traiter la gastroparesis isolément (avec des prokinétiques) sans adresser le terrain autonome serait incomplet. Mais inversement, la nutrition et la protection PEM (qui protègent le terrain) aident aussi la motricité.
]

#mechanism("SIBO probable / motilité ralentie — le cercle vicieux")[
  La motricité ralentie (gastroparesis + possible atteinte de l'intestin grêle) prédispose à la *SIBO* (prolifération bactérienne). Chez Amy, si la SIBO est présente, elle *aggrave* la motricité et la nausée, créant un cercle vicieux : motricité ↓ → SIBO ↑ → inflammation ↑ → motricité ↓. Casser ce cercle (traiter la SIBO puis prévenir la récidive par la motricité) peut améliorer la tolérance alimentaire.
]

#mechanism("La question auto-immune reste ouverte pour Amy")[
  Une cause *auto-immune réversible* (anticorps anti-ganglions vagaux) est possible mais *non démontrée* — le test n'a jamais été fait en EM. Pour Amy, ce test sanguin (anticorps anti-récepteur acétylcholine α3/β4 des ganglions) est *peu risqué et falsifiable* : s'il est positif, il ouvrirait une voie d'immunothérapie ; s'il est négatif, il écarte ce mécanisme et oriente vers le fonctionnel ou le structurel. À discuter avec le médecin. *Noter toutefois :* l'hypersensibilité cholinergique (lue ci-dessus) est plus compatible avec une dénervation/atteinte périphérique qu'avec un blocage auto-immun pur, sans toutefois les exclure l'un l'autre.
]

#mechanism("Interprétation d'ensemble — le profil mécanistique le plus cohérent")[
  En mettant les indices bout à bout (gastroparesis + EM sévère + hypersensibilité au Mestinon évoquant une hypersensibilité cholinergique de dénervation), le profil le plus cohérent est :

  *une dysfonction du système nerveux autonome périphérique à composante cholinergique/entérique*, où la motricité gastrique et intestinale est ralentie par une perte ou un affaiblissement de l'innervation cholinergique, avec hypersensibilité compensatrice des récepteurs restants.

  C'est une hypothèse de travail, pas un diagnostic. Elle implique : (1) privilégier les interventions non cholinergiques ou à faible dose pour la motricité ; (2) la nutrition et la protection PEM restent le socle ; (3) la cause structurelle pure (perte de cellules pacemaker) n'est ni confirmée ni exclue ; (4) la cause auto-immune est à écarter ou confirmer par le test sanguin.
]

#pagebreak()

// =============================================================================
// PARTIE 2 — PISTES POUR EN SORTIR (avec niveau de potentiel d'efficacité)
// =============================================================================

#heading[Pistes pour en sortir — avec niveau de potentiel d'efficacité]

#strong_eff("Piste 1 — Nutrition et adaptation alimentaire (première ligne)")[
  *Ce que fait la piste :* adaptation des repas et de la nutrition pour maintenir l'apport malgré la vidange ralentie, sans médicament.

  *Comment :*
  - Petits repas fréquents (5–6/jour) plutôt que 3 gros.
  - Repas pauvres en graisses et en fibres (moins de charge mécanique).
  - Liquides et semi-liquides enrichis quand les solides passent mal.
  - Enrichir les liquides (protéines, vitamines) sans augmenter le volume.
  - Position assise ou semi-allongée pendant/après les repas ; ne pas boire de grandes quantités en mangeant.

  *Potentiel d'efficacité : BON* — c'est la première ligne, la moins risquée, et la plus sûre en cas sévère. Ne corrige pas la cause mais protège le poids et l'énergie. *Sécurité :* attention au *syndrome de re-feeding* si reprise rapide après une période de faible apport — réintroduire progressivement, surveiller électrolytes et thiamine (B1).
]

#strong_eff("Piste 2 — Gestion du PEM et du rythme (protéger les réserves)")[
  *Ce que fait la piste :* éviter les crashes répétés qui risquent une dégradation irréversible.

  *Comment :* rythme agressif sous le seuil de coordination motrice-autonome ; triage énergétique (en très sévère, limiter aux fonctions de survie) ; éviter les tests/efforts qui déclenchent un PEM ; privilégier les activités en position allongée ; préparer les médicaments autonomes avant toute activité.

  *Potentiel d'efficacité : BON* — c'est la base qui protège toutes les autres pistes. Un crash peut faire perdre fonctionnellement plus que n'apporte un traitement.
]

#moderate_eff("Piste 3 — Prokinétiques, choisis avec prudence (option la plus sûre d'abord)")[
  *Ce que fait la piste :* stimuler la motricité gastrique avec des médicaments. *Aucun n'a d'essai contrôlé en EM* — extrapolation nécessaire. *Ne pas traiter la cause autonome* ; à combiner avec la nutrition.

  *Si un prokinétique est réellement utile* (décision du médecin), privilégier l'option à plus faible risque, à dose limitée dans le temps et sous surveillance :

  #table(
    columns: (1.2fr, 2fr, 1.6fr),
    [*Agent*], [*Mécanisme / usage*], [*Risque clé*],
    [*Prucalopride*], [Agoniste 5-HT4 sélectif ; option "la plus sûre" quand la gastroparesis est pilotée par les récepteurs], [Peu de signal QT ; non approuvé pour la gastroparesis partout],
    [*Domperidone*], [Antagoniste D2 périphérique (ne passe pas la barrière cérébrale) ; à tester en premier si métoclopramide a posé problème], [Risque QT — ECG de base + surveillance obligatoires],
    [*Érythromycine* (faible dose)], [Agoniste motiline ; maintient la motricité et prévient la récidive SIBO], [Tolérance (perte d'efficacité) ; risque QT ; interactions],
    [*Métoclopramide*], [Seul approuvé FDA pour gastroparesis], [Avertissement "black box" > 12 semaines (dyskinésie tardive possiblement irréversible) ; à éviter en chronique],
  )

  *Pour Amy :* la méfiance envers les prokinétiques antérieurs est un signal clinique légitime. Si un prokinétique a déjà provoqué des effets extrapyramidaux ou une dyskinésie, *tous les antagonistes D2 sont contre-indiqués* — privilégier domperidone (périphérique) ou prucalopride (5-HT4). La réponse à un prokinétique est *diagnostique* : elle aide à savoir si la lésion est au niveau des récepteurs (réversible) ou plus en aval (structurelle).

  *Potentiel d'efficacité : MODÉRÉ* — efficace dans la population générale, mais aucune donnée EM ; dépend du mécanisme sous-jacent (récepteur vs structurel).
]

#moderate_eff("Piste 4 — Traiter la SIBO (si présente) puis prévenir la récidive")[
  *Ce que fait la piste :* si la prolifération bactérienne du petit intestin est confirmée (test respiratoire), la traiter pour casser le cercle vicieux inflammation-motricité.

  *Comment :* antibiotiques (rifaximine ; néomycine si méthane) ou antimicrobiens à base de plantes ; régime élémentaire ; puis *prokinétique nocturne à faible dose* (prucalopride en substitut du tegaserod retiré) pour *prévenir la récidive* (le SIBO récidive si la motricité reste faible).

  *Potentiel d'efficacité : MODÉRÉ* — données solides dans la population générale/SIBO (extrapolées à l'EM) ; sans correction de la motricité, la récidive est fréquente.
]

#weak_eff("Piste 5 — Vérifier une cause auto-immune réversible (anticorps anti-ganglion)")[
  *Ce que fait la piste :* si une partie des gastroparesis EM est auto-immune (blocage des ganglions vagaux par des anticorps), elle serait *potentiellement réversible* par immunothérapie.

  *Comment :* test sanguin commercial des anticorps anti-récepteur acétylcholine (α3, β4) des ganglions. *Ce test n'a jamais été fait en EM* — c'est un premier pas *falsifiable* pour Amy.

  *Si positif :* la voie de l'immunothérapie (IVIG ou échange plasmatique) est celle du traitement standard de la neuropathie autonome auto-immune.

  *Potentiel d'efficacité : FAIBLE / SPÉCULATIF* — le mécanisme auto-immun en EM n'est pas démontré (certainté 0,30). *Mais le test est peu risqué et orienterait le diagnostic.* L'immunothérapie elle-même comporte des risques en EM sévère (crash PEM le jour de la perfusion, surcharge métabolique) — à n'envisager que sur preuve biologique.
]

#weak_eff("Piste 6 — Restaurer la fonction vagale/cholinergique (stade entérique/central)")[
  *Ce que fait la piste :* traiter la cascade vagale à son origine.

  *Stade entérique :* butyrate (600–1800 mg/j), 5-HTP, prébiotiques ciblant les producteurs de butyrate — pour rétablir le signal sérotoninergique intestin→vague.

  *Stade central (neuro-inflammation) :* LDN/minocycline puis re-tester la stimulation vagale.

  *Stimulation vagale :* respiration lente (6 cycles/min, coût nul, faible risque) ; taVNS (stimulation vagale auriculaire transcutanée) comme sonde.

  *Potentiel d'efficacité : FAIBLE / SPÉCULATIF* — ce sont des *sondes diagnostiques* dans un cadre mécanistique, pas des traitements établis. La respiration lente est le plus sûr et le plus accessible.
]

#pagebreak()

// =============================================================================
// SYNTHÈSE — COMMENT PRIORISER
// =============================================================================

#heading[Synthèse : comment prioriser les pistes]

#mechanism("Ordre proposé (à adapter avec le médecin)")[
  1. *Sécuriser d'abord* : la nutrition (liquides riches, paliers progressifs) + la protection PEM. C'est le socle qui protège tout le reste.
  2. *Évaluer* : bilan biologique (électrolytes, thiamine B1, albumine) ; test SIBO ; *envisager le test des anticorps anti-ganglion* (falsifiable, peu risqué).
  3. *Traiter ce qui est confirmé* : SIBO si présente (puis prokinétique préventif) ; si cause auto-immune prouvée, discuter immunothérapie.
  4. *Prokinétique prudent* (si utile) : option à plus faible risque (prucalopride ou domperidone), limitée dans le temps, sous surveillance — avec l'information diagnostique que la réponse apporte.
  5. *Stimulation vagale douce* : respiration lente (coût nul) ; taVNS sous encadrement.
]

#v(0.5em)

#mechanism("Rappel")[
  Ce document a un but d'information et de dialogue médical. Il ne remplace pas un avis médical. Le niveau de potentiel d'efficacité reflète les preuves et la plausibilité, pas une garantie. Pour une patiente sévère, chaque intervention doit être minimale, progressive et validée par le médecin référent.
]
