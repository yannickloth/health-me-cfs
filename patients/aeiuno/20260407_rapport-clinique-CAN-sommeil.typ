// Rapport clinique de synthèse — Christine Andres (CAN)
// À destination de : Clinique du Sommeil, CHU Saint-Luc, Bouge, Namur, Belgique
// Date : 2026-04-07
// Motif : Fatigue chronique depuis des décennies — bilan préparatoire au RDV

#set document(
  title: "Rapport clinique de synthèse — Christine Andres — Clinique du Sommeil",
  date: datetime(year: 2026, month: 4, day: 7),
)

#set page(
  paper: "a4",
  margin: 2.5cm,
  footer: context [
    #set text(size: 9pt, fill: rgb("666666"))
    #h(1fr)
    #counter(page).display("1 / 1", both: true)
  ],
)
#set text(font: "New Computer Modern", size: 11pt, lang: "fr")
#set par(justify: true)
#set heading(numbering: "1.")
#show table: set text(size: 9pt)

// ── Color palette ────────────────────────────────────────────────────────────
// Fonds : couleurs pastel (claires), lisibles en couleur
// Bordures/titres : assombries pour contraste ≥ 4.5:1 sur fond blanc et sur leurs fonds respectifs (WCAG AA)
// En impression N&B, les fonds pastel se distinguent par leurs niveaux de gris différents (25–92%)
#let keyfinding-bg     = rgb("d4edda")  // vert pastel  → gris ~88%
#let keyfinding-border = rgb("155724")  // vert foncé   → gris ~22% (était #28a745 ~43%)
#let hypothesis-bg     = rgb("d9edf7")  // bleu pastel  → gris ~91%
#let hypothesis-border = rgb("0c4a6e")  // bleu foncé   → gris ~18% (était #17a2b8 ~40%)
#let caution-bg        = rgb("f8d7da")  // rouge pastel → gris ~88%
#let caution-border    = rgb("7f1d1d")  // rouge foncé  → gris ~15% (était #dc3545 ~40%)
#let mechanism-bg      = rgb("e8e8e8")  // gris clair   → gris ~91%
#let mechanism-border  = rgb("2d2d2d")  // gris très foncé → gris ~18% (était #6c757d ~46%)
#let question-bg       = rgb("fff3cd")  // jaune pastel → gris ~94%
#let question-border   = rgb("78350f")  // brun foncé   → gris ~19% (était #ffc107 ~75% — illisible N&B)

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

#let keyfinding(title, body)  = make-box("Constat clé : " + title,  keyfinding-bg,  keyfinding-border,  body)
#let hypothesis(title, body)  = make-box("Hypothèse : " + title,    hypothesis-bg,  hypothesis-border,  body)
#let caution(title, body)     = make-box("Attention : " + title,     caution-bg,     caution-border,     body)
#let mechanism(title, body)   = make-box(title,                      mechanism-bg,   mechanism-border,   body)
#let question(title, body)    = make-box("À clarifier : " + title,   question-bg,    question-border,    body)

// Document reference: renders as superscript link to annex row
#let r(lbl) = super(link(label(lbl), "[" + lbl + "]"))

// ── Title block ───────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 16pt, weight: "bold")[Rapport clinique de synthèse]
  #v(4pt)
  #text(size: 13pt)[Christine Andres (CAN) --- Fatigue chronique]
  #v(2pt)
  #text(size: 11pt)[À destination du *Dr Cécile Dusart*, Clinique du Sommeil, CHU Saint-Luc, Bouge, Namur]
  #v(6pt)
  #text(size: 10pt, style: "italic")[Document préparé par la patiente et son entourage --- 2026-04-07]
]

#v(0.5em)

#caution("Document préliminaire — à lire avant la consultation")[
  Ce rapport est préparé par la patiente à titre de synthèse pour *optimiser le dialogue médical dans le temps limité de la consultation*. Il ne se substitue pas à un dossier médical complet et ne contient aucun diagnostic définitif. *Toutes les hypothèses diagnostiques ci-dessous nécessitent une évaluation médicale approfondie.* Les protocoles médicamenteux proposés (chapitres 11–12) sont des *propositions fondées sur la littérature*, à valider par le médecin traitant — ils ne doivent pas être initiés sans avis médical préalable et, pour certains, pas avant confirmation diagnostique (ex. : narcolepsie avant oxybate ; MCAS avant introduction des stabilisateurs mastocytaires). Les documents sources sont listés en annexe.
]

#v(0.5em)

#outline(indent: 1em)

#pagebreak()

// =============================================================================
// CHECKLIST — À utiliser pendant la consultation
// =============================================================================

#block(
  fill: rgb("fff3cd"),
  stroke: (left: 4pt + rgb("ffc107"), rest: 0.5pt + rgb("ffc107")),
  radius: 3pt,
  inset: (left: 12pt, rest: 10pt),
  width: 100%,
)[
  #text(size: 13pt, weight: "bold", fill: rgb("856404"))[✓ Checklist — Consultation Dr Dusart, Clinique du Sommeil]
  #v(3pt)
  #text(size: 9pt, style: "italic", fill: rgb("856404"))[Apporter ce document + liste écrite de tous les médicaments et compléments actuels (nom, dose, fréquence)]
  #v(8pt)

  // ── Avant la consultation ────────────────────────────────────────────────
  #text(size: 10pt, weight: "bold")[À préparer avant d'entrer]
  #grid(columns: (1.2em, 1fr), gutter: 5pt,
    [☐], [Liste écrite de tous les médicaments actuels (Concerta, modafinil, vitamine D…) + doses],
    [☐], [Liste des compléments alimentaires en cours (CoQ10, magnésium, fer…) + doses],
    [☐], [Questions personnelles prioritaires : noter les 2--3 qui comptent le plus],
  )

  #v(8pt)
  // ── Périmètre Clinique du Sommeil ────────────────────────────────────────
  #text(size: 10pt, weight: "bold")[Questions pour la Clinique du Sommeil]
  #v(3pt)
  #text(size: 9pt, style: "italic")[Ces questions relèvent directement de l'expertise du Dr Dusart.]
  #v(4pt)

  _Diagnostic_
  #grid(columns: (1.2em, 1fr), gutter: 5pt,
    [☐], [Y a-t-il une narcolepsie ? Si oui, type 1 (NT1) ou type 2 (NT2) ou hypersomnie idiopathique ?],
    [☐], [PSG + TILE/MSLT : à programmer si non encore fait — résultats attendus dans quel délai ?],
    [☐], [Typage HLA-DQB1\*06:02 — à demander en même temps que le bilan sanguin],
    [☐], [Dosage hypocrétine-1 dans le LCR — nécessaire ? Risques de la ponction lombaire à discuter],
    [☐], [OSAS résiduel à exclure (ronflements, apnées) ?],
  )

  #v(6pt)
  _Traitement — dans le périmètre sommeil_
  #grid(columns: (1.2em, 1fr), gutter: 5pt,
    [☐], [Modafinil (Provigil) : dose actuelle optimale ? Horaire à ajuster ?],
    [☐], [Pitolisant (Wakix) : alternative ou complément au modafinil — disponible en BE ?],
    [☐], [Oxybate de sodium (Xyrem) : envisager si sommeil nocturne fragmenté documenté à la PSG],
    [☐], [Modafinil + méthylphénidate (Concerta) : la combinaison actuelle est-elle optimale ? Effets secondaires ?],
    [☐], [Si NT2 ou hypersomnie idiopathique confirmée : quelles options thérapeutiques en Belgique ?],
  )

  #v(6pt)
  _Bilans relevant de la Clinique du Sommeil_
  #grid(columns: (1.2em, 1fr), gutter: 5pt,
    [☐], [Hypocrétine-1 LCR (seulement si NT1 fortement suspecté après PSG/MSLT)],
    [☐], [Tilt test — la clinique peut-elle le réaliser, ou orienter vers cardiologie ?],
    [☐], [HLA-DQB1\*06:02 (sur prise de sang)],
  )

  #v(6pt)
  _Organisation et suivi_
  #grid(columns: (1.2em, 1fr), gutter: 5pt,
    [☐], [Qui coordonne le dossier multi-spécialiste ? (généraliste / Dr Pincherle / Dr Dusart)],
    [☐], [Courrier de synthèse au Dr Genin ou Dr Copus (MG) après cette consultation ?],
    [☐], [Délai avant prochain RDV de suivi — prise de sang étendue à prévoir avant],
    [☐], [Quels traitements peut-on commencer maintenant, sans attendre les résultats ?],
  )

  #v(10pt)
  // ── À orienter vers d'autres spécialistes ───────────────────────────────
  #text(size: 10pt, weight: "bold")[À discuter avec le Dr Dusart — orientation vers d'autres spécialistes]
  #v(3pt)
  #text(size: 9pt, style: "italic")[Ces questions dépassent le périmètre d'une clinique du sommeil. Demander à Dr Dusart vers qui s'orienter.]
  #v(4pt)

  _Allergie / Immunologie (suspicion MCAS)_
  #grid(columns: (1.2em, 1fr), gutter: 5pt,
    [☐], [Orienter vers allergologue/immunologue pour explorer la suspicion MCAS (dermatose 17 ans, fatigue)],
    [☐], [Bilan MCAS à faire prescrire : tryptase basale, N-méthylhistamine urinaire, prostaglandine D2],
    [☐], [Test thérapeutique antihistaminiques H1+H2 : qui peut le prescrire ? (MG ou allergologue)],
  )

  #v(6pt)
  _Médecine interne / Métabolisme_
  #grid(columns: (1.2em, 1fr), gutter: 5pt,
    [☐], [Bilan métabolique : thiamine (B1), acylcarnitines, lactate/pyruvate, homocystéine, B12, folates — à prescrire par MG ou interniste],
    [☐], [Ferritine et vitamine D : contrôle dans 3 mois — à coordonner avec le MG],
    [☐], [Compléments en cours (CoQ10, magnésium, NAC…) : interactions à vérifier avec MG ou pharmacien],
  )

  #v(6pt)
  _Cardiologie / Dysautonomie_
  #grid(columns: (1.2em, 1fr), gutter: 5pt,
    [☐], [Symptômes orthostatiques (tachycardie en position debout, brouillard cérébral debout) — à signaler],
    [☐], [Tilt test si non disponible à la clinique du sommeil : orienter vers cardiologie],
    [☐], [Pyridostigmine (Mestinon) pour POTS : décision cardiologique, pas sommeil],
  )

  #v(6pt)
  _Recherche clinique (à explorer séparément)_
  #grid(columns: (1.2em, 1fr), gutter: 5pt,
    [☐], [Essais cliniques oveporexton / alixorexton accessibles en Belgique ? (à vérifier via Dr Pincherle ou clinicaltrials.gov)],
  )
]

#pagebreak()

// =============================================================================
= Données démographiques et administratives
// =============================================================================

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  table.header([*Paramètre*], [*Valeur*]),
  [Nom], [Christine Paula Andres],
  [Date de naissance], [8 septembre 1988 (37 ans)],
  [NISS (Belgique)], [88090842681],
  [Adresse], [Rue des Tilleuls, Buvange 31, 6780 Messancy (BE)],
  [Médecins généralistes], [Dr Liblanc Sorenza, Dr Copus, Dr Genin A-G — Maison de santé de Habay (Belgique)],
  [Neurologue], [Dr Alexander Pincherle],
  [Médecin du sommeil], [Dr Cécile Dusart — Clinique du Sommeil, CHU Saint-Luc, Bouge, Namur],
  [Motif du RDV], [Fatigue chronique invalidante, somnolence diurne, bilan clinique du sommeil],
)

// =============================================================================
= Plainte principale : la fatigue chronique
// =============================================================================

#keyfinding("Fatigue sévère depuis des décennies")[
  La patiente présente une *fatigue chronique sévère et invalidante depuis de nombreuses années*, probablement depuis l'enfance ou l'adolescence. Cette fatigue est le symptôme central qui impacte l'ensemble de son fonctionnement quotidien : activités professionnelles, parentales et sociales.

  - *Durée* : depuis l'adolescence — début *avec certitude avant 20 ans* (≥ 18 ans de fatigue persistante)
  - *Caractère* : persistante, non résolue par le sommeil (PSG : sommeil objectivement non réparateur), fatigue rapide en cours de journée même après longue nuit
  - *Impact* : significatif sur la qualité de vie ; attestations d'incapacité documentées #r("attest-copus-2024") #r("attest-genin-2024")
  - *Bilan standard* : réalisé à plusieurs reprises, sans cause évidente identifiée à ce jour (thyroïde, anémie, infection : tous négatifs) #r("synlab-2026") #r("synlab-2024")
]

#caution("Aggravation significative depuis septembre–octobre 2025")[
  *Contexte :* CAN souffre d'une fatigue chronique importante et persistante depuis l'adolescence (avant 20 ans — avec certitude), avec un sommeil *chroniquement non réparateur* documenté par la polysomnographie. Ce n'est pas un phénomène récent. Ce qui est nouveau depuis l'automne 2025, c'est une *aggravation nette et persistante* de cet état de base.

  *Depuis septembre–octobre 2025 (observation du mari et de la patiente) :*

  - *Fatigue encore plus profonde* : l'état de fond, déjà sévère, s'est intensifié de manière marquée — somnolence diurne importante malgré Provigil + Concerta
  - *Réveils nocturnes récents* : depuis une dizaine de jours (au moment de la rédaction), inhabituels pour la patiente
  - *Céphalées récurrentes* (non quotidiennes) : quand elles surviennent, elles persistent plusieurs jours à plusieurs semaines, résistantes au paracétamol ; douleurs cervicales associées
  - *Récupération insuffisante* : la patiente se fatigue rapidement en cours de journée, alors que même auparavant le sommeil ne restaurait pas pleinement sa capacité
  - *Troubles cognitifs marqués (description de la patiente)* : difficulté à se concentrer, oubli du contenu de conversations en cours, difficulté à se souvenir d'échanges datant de 1--2 jours — impact sur le travail et la vie familiale (_brain fog_)
  - *Impact professionnel* : plusieurs congés maladie pour fatigue au cours des derniers mois, dont un d'environ une semaine en mars 2026 — état de fatigue trop profond pour maintenir l'activité professionnelle
  - *Facteurs aggravants identifiés par la patiente* : stress très élevé (travail, charge mentale, situation familiale) ; besoin accru de sucre ; sommeil jamais réparateur ; difficulté à perdre du poids

  *Hypothèse de l'entourage :* ces épisodes de céphalées prolongées et cette non-récupération aggravée évoquent un possible *malaise post-effort (MPE/PEM)* de bas grade — l'un des critères cardinaux de l'EM/SFC. Le MPE ne se manifeste pas toujours comme un "crash" brutal ; il peut se présenter comme une fatigue de fond inextinguible avec des épisodes de céphalées durables après tout effort ordinaire (activités professionnelles, parentales, cognitives).

  *Ce tableau justifie une évaluation formelle des critères EM/SFC* lors de la consultation (voir section 4.1).
]

// =============================================================================
= Antécédents médicaux significatifs
// =============================================================================

== Neurologie et sommeil

#keyfinding("Symptômes évocateurs de narcolepsie (depuis ≥ 2018)")[
  En octobre 2018, le *Dr Alexander Pincherle, neurologue* aux Hôpitaux Robert Schuman (Luxembourg), prescrit une *polysomnographie nocturne (PSG) et un test MSLT* #r("pincherle-ordonnance-2018") avec la justification suivante :

  #block(
    fill: rgb("f0f0f0"),
    stroke: 0.5pt,
    inset: 8pt,
    radius: 2pt,
  )[
    _« Hypersomnie d'origine X --- pas de cataplexie, mais épisodes de paralysie atypiques pendant le sommeil, impression de rêver à l'endormissement --- si non pas d'arguments pour PLM, OSAS, RLS »_
    #align(right)[--- Dr A. Pincherle, 26/10/2018 #r("pincherle-ordonnance-2018")]
  ]

  Cette description regroupe trois des symptômes cardinaux de la narcolepsie :
  + *Hypersomnie diurne* (somnolence excessive)
  + *Paralysie du sommeil* (épisodes de paralysie atypiques pendant le sommeil)
  + *Hallucinations hypnagogiques* (impression de rêver à l'endormissement)

  La cataplexie est absente, ce qui oriente davantage vers une *narcolepsie de type 2* ou une autre hypersomnie centrale, plutôt que la narcolepsie de type 1 classique. Les hypothèses de SAOS (OSAS), mouvements périodiques des membres (PLM) et syndrome des jambes sans repos (RLS) ont été mentionnées comme diagnostics différentiels à exclure.
]

La PSG a été réalisée et a montré un *pattern de sommeil évocateur de narcolepsie* #r("psg-vivalia-2019") (voir document d'analyse complémentaire #r("narco-doc")). Le suivi neurologique auprès du Dr Pincherle s'est poursuivi jusqu'en 2024 #r("pincherle-2024").

== TDAH (Trouble du Déficit de l'Attention avec Hyperactivité)

Le TDAH a été diagnostiqué en *novembre 2013* par le *Dr Heusbourg, neurologue* (Luxembourg) #r("neurologue-heusbourg-2013"). Un traitement par *Concerta (méthylphénidate)* a été initié à cette occasion #r("prescription-concerta-2013").

Le diagnostic a été *confirmé et certifié* en avril 2018 par le *Dr Bolyn, neurologue* (Luxembourg) #r("certificat-adhd-2018"). Le suivi neurologique a ensuite été transféré au Dr Pincherle à partir de ~2019--2020.

En 2020, le Dr Pincherle atteste du *traitement combiné Concerta + Provigil (modafinil)* #r("pincherle-attestation-2020"), ce qui suggère que le modafinil a été introduit en lien avec la somnolence diurne (hypersomnie), en complément du traitement TDAH. La délivrance de Concerta et Provigil en pharmacie belge est documentée en 2022 #r("apotheke-concerta-provigil-2022").

#mechanism("Relation TDAH ↔ Hypersomnie")[
  Le TDAH et les hypersomnie centrales (narcolepsie, idiopathique) sont fréquemment comorbides et partagent des mécanismes neurobiologiques communs (dysrégulation dopaminergique, orexinergique). Chez CAN :
  - Le méthylphénidate traite l'attention mais peut masquer partiellement la somnolence
  - L'ajout de modafinil suggère que le méthylphénidate seul était insuffisant pour la somnolence
  - La coexistence TDAH + hypersomnie doit faire rechercher activement une narcolepsie sous-jacente
]

== Cardiologie (2014)

Deux consultations cardiologiques sont documentées en octobre et décembre 2014 #r("kardiologe-2014"). Le contexte et les conclusions ne sont pas connus dans le détail de ce document de synthèse, mais leur existence dans le dossier de la patiente est notable dans le contexte de la fatigue chronique (POTS, dysautonomie ?).

La patiente présente de longue date des *vertiges au lever* (sensation de tête qui tourne en position debout ou lors du passage couché→debout) et un inconfort en station debout prolongée. Ces symptômes sont antérieurs à l'aggravation de 2025 et suggèrent une *intolérance orthostatique chronique* (hypotension orthostatique, POTS ou dysautonomie légère non diagnostiquée).

== Chirurgie et interventions

- *Appendicectomie* : août 2017 (Dr Mauel, Vivalia Arlon ; Dr Grandjean assistant, attestation disponible) #r("appendicite-2017")
- *Chirurgie réfractive oculaire* : octobre 2018 et février 2019 #r("chir-refractive-2018")
- *Amygdales et végétations retirées* (dans l'enfance)

== Grossesses

- *Première grossesse* : 2017 (dossier complet disponible) #r("grossesse-2017")
- *Deuxième grossesse* : 2022 (naissance d'Aaron, juillet 2022, Vivalia) #r("naissance-aaron-2022")

== Dermatologie : dermatose récidivante chronique

Depuis l'âge d'environ 20 ans (~2008--2009), la patiente présente une *dermatose récidivante chronique du visage* #r("prurit-visage-2026"). Initialement diagnostiquée comme maladie de Gibert (pityriasis rosea), ce diagnostic est *incompatible* avec l'évolution observée (récidives annuelles depuis ~17 ans, épisode actuel persistant > 3 mois, extension aux muqueuses nasales, propagation centrifuge séquentielle avec résolution centrale).

Épisode actuel (depuis octobre 2025) : *éruption prurigineuse autour du nez et de la bouche, résistante aux corticoïdes topiques.* La résistance aux corticoïdes est un argument supplémentaire contre un simple eczéma et en faveur d'une origine mastocytaire ou auto-immune.

Antécédents allergiques associés : épisodes d'eczéma (chaleur, soleil) ; rhinite allergique — *symptômes récents évoquant une allergie au bouleau* (présents au moment de la rédaction, avril 2026).

Les diagnostics différentiels à considérer incluent : érythème annulaire centrifuge (EAC), psoriasis, lichen plan, mycosis fongoïde, pityriasis lichénoïde chronique. Ce tableau clinique est *directement pertinent pour l'hypothèse MCAS* (voir section 4).

== Autres symptômes rapportés par la patiente

*Vertiges :* deux types coexistent :
- *Vertiges au lever* : épisodes de vertige bref au moment de se lever, *en aggravation progressive* — environ 1--2 fois par mois, sans être présents chaque matin. Ce tableau est évocateur d'une *intolérance orthostatique* (chute de pression à la position debout) — cohérent avec la suspicion de dysautonomie / POTS (voir section M7). L'aggravation progressive mérite un suivi actif et justifie la réalisation d'un tilt test.
- *Vertiges positionnels récurrents* : soulagés par les *manœuvres d'Epley*, suggérant une composante de VPPB (vertige positionnel paroxystique bénin). Les deux mécanismes peuvent coexister.

*Douleurs articulaires :* douleurs aux articulations des doigts, apparues pendant la première grossesse (2017) ; aujourd'hui plus rares mais toujours présentes par moments. Pertinence potentielle : hypermobilité articulaire (hEDS), MCAS, ou séquelles post-infectieuses.

*Troubles digestifs :* épisodes récurrents de troubles gastro-intestinaux, souvent déclenchés ou aggravés par le stress. Pertinent dans le contexte MCAS (dégranulation mastocytaire gastro-intestinale) et du dysfonctionnement de l'axe intestin-cerveau.

== Épisodes intercurrents récents (2025–2026)

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Période*], [*Épisode*]),
  [Novembre 2023], [*Angine exceptionnellement sévère* — douleurs pharyngées d'une intensité jamais ressentie auparavant. *Séquelle persistante depuis* : les maux de gorge habituels sont devenus systématiquement plus intenses qu'avant cet épisode. Cet épisode constitue un possible *événement déclencheur ou aggravant* à explorer (streptocoque ? réactivation EBV ? primo-infection autre virus herpétique ?). Amygdales absentes (retirées dans l'enfance) — l'angine sévère sans amygdales mérite une attention particulière.],
  [16--20 juin 2025], [*COVID-19* — symptômes plus sévères que lors des infections précédentes, incluant *perte de goût et d'odorat* (non vaccinée pour cette souche). Contexte : l'aggravation générale de septembre--octobre 2025 survient ~3 mois après cet épisode — possible contribution post-COVID à l'aggravation.],
  [2--4 décembre 2025], [Douleurs gastriques, nausées, maux de tête, fatigue.],
  [7--9 janvier 2026], [*Fatigue extrême* : 17 heures de sommeil sur 24 le premier jour. Maux de tête. Profil compatible avec un épisode de MPE ou de post-infection aiguë.],
  [18--24 mars 2026], [Fortes céphalées, fatigue intense. Correspond à la période du congé maladie d'environ une semaine (voir section 2).],
)

== Antécédents familiaux

La patiente mentionne les antécédents familiaux suivants. Leur pertinence directe pour le tableau clinique actuel est incertaine, mais ils sont fournis pour exhaustivité :

- *Mère* : cancer du poumon
- *Grand-mère maternelle ou paternelle* : SLA (sclérose latérale amyotrophique) et infarctus du myocarde
- *Grand-père* : accident vasculaire cérébral (AVC)

Note : les antécédents de SLA dans la famille sont à mentionner au médecin ; bien que non directement liés à la fatigue chronique, ils peuvent avoir une pertinence pour l'évaluation neurologique.

// =============================================================================
= Bilans biologiques — Résultats clés
// =============================================================================

== Bilan Synlab 2026-01-09 (le plus récent) #r("synlab-2026")

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
  table.header([*Paramètre*], [*Résultat · Référence · Commentaire*]),
  [Hémoglobine], [13.4 g/dL (réf. 12--15.5) — Normale],
  [Ferritine], [52 µg/L (réf. 12--150) — Normale (était 28 en avr.2024 — tendance à la hausse)],
  [CRP], [0.7 mg/L (réf. \<8.5) — Normale — pas d'inflammation systémique],
  [Vitesse de sédimentation], [3 mm/h 2023 (réf. \<20) — Très basse — milite contre inflammation active],
  [TSH], [2.11 mU/L (réf. 0.3--4.2) — Normale (était 0.68 en avr.2024 — variabilité)],
  [T4 libre], [13.3 pmol/L 2024 (réf. 10.3--20.6) — Normale],
  [Ac anti-TPO], [\<0.1 U/mL 2024 (réf. \<5.6) — Normale — auto-immunité thyroïdienne exclue],
  [Vitamine D], [43 ng/mL (réf. 30--60) — Bas-normale (était 28 en avr.2024 — insuffisant)],
  [LDH], [163 U/L (réf. 125--220) — Normale],
  [Créatinine / DFG], [0.63 / 115 — Normale],
  [Glycémie à jeun], [87 mg/dL (réf. 70--100) — Normale],
  [Cholestérol LDL], [121 mg/dL (réf. \<100 risque faible) — Légèrement élevé — à surveiller],
  [CMV IgG], [9.7 U/mL (réf. \<6 N, 6--15 Doute) — *Zone de doute* — infection ancienne possible],
  [EBV IgG (VCA)], [>750 U/mL (réf. \<10 N) — *Très positif* — infection ancienne (EBV passé)],
  [EBV IgM], [Négatif (réf. \<30) — Pas de réactivation active],
  [Borrelia (Lyme)], [Négatif — Lyme exclu],
  [Hépatites B, C / VIH (2023)], [Négatifs — Normaux],
)

#keyfinding("Bilan biologique : normal en snapshot, mais tendances longitudinales significatives")[
  Le bilan 2026 est normal en valeurs absolues (pas d'anémie, CRP 0.7, TSH normale) — ce qui est fréquemment observé dans les hypersomnies centrales et les pathologies neuro-immunes où le bilan standard ne reflète pas les dysfonctions fonctionnelles. Cette normalité *ne confirme pas* les hypothèses, mais *ne les exclut pas non plus* : c'est la clinique et les examens spécialisés (PSG, LCR, tilt test) qui permettront de les valider ou invalider. L'analyse longitudinale sur 9 bilans (2014–2026) révèle cependant plusieurs tendances à discuter.
]

== Évolution longitudinale des bilans (2014–2026)

Neuf bilans disponibles couvrant 12 ans permettent une lecture en tendance, plus informative qu'un snapshot unique.

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 4pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Date*], [*Vit D*\ ng/mL], [*Ferritine*\ µg/L], [*LDL*\ mg/dL], [*TSH*\ mU/L], [*CRP*\ mg/L], [*B12*\ ng/L], [*Notes*]),
  [Sep 2014], [*14* ⚠], [37], [92], [1.8], [5 ⚠], [—], [Vit D déficiente],
  [Mai 2016], [*8.5* 🔴], [41], [113], [1.79], [2.7], [*188* ⚠], [Carence sévère D ; B12+folates bas],
  [Oct 2018], [—], [49], [—], [0.80], [1], [241], [Bilan Pincherle — normal],
  [Juil 2021], [*30.7* ⚠], [—], [—], [1.7], [\<1], [—], [D à la limite],
  [Juil 2023], [—], [—], [*143*], [—], [*9* 🔴], [—], [*Chlamydia pneum. IgG positif* — LDL au plus haut + inflammation active],
  [Avr 2024], [*28* ⚠], [*28* ⚠], [133], [0.68], [0.8], [209 ⚠], [D + ferritine insuffisants],
  [Août 2024], [—], [—], [—], [0.94], [—], [209 ⚠], [B12 bas de gamme],
  [Jan 2026], [43], [52], [121], [2.11], [0.7], [—], [Amélioration D et ferritine],
)

#caution("Tendances à discuter avec le Dr Dusart")[
  + *Vitamine D — carence chronique depuis ≥ 2014* : 14 → 8.5 → 30.7 → 28 → 43 ng/mL sur 12 ans. La valeur actuelle (43 ng/mL) est dans la norme de laboratoire standard (>30) mais reste *en-dessous de la cible fonctionnelle de >60 ng/mL recommandée dans le contexte de fatigue chronique et de dysrégulation immunitaire* (cette cible est supérieure au minimum conventionnel). La carence sévère documentée en 2016 (8.5 ng/mL) et les valeurs basses persistantes constituent un facteur aggravant structurel.

  + *LDL cholestérol — élévation structurelle depuis 2016* : 92 (2014) → 113 (2016) → 143 (juil 2023) → 133 (avr 2024) → 121 (jan 2026). Jamais sous le seuil optimal de 100 mg/dL depuis 10 ans. La baisse progressive récente (143→133→121) est favorable mais le niveau reste au-dessus du seuil. À surveiller dans le contexte cardiovasculaire.

  + *Ferritine — persistamment basse* : 37 → 41 → 49 → *28* → 52 µg/L. Chute notable à 28 en avril 2024, remontée à 52 en janvier 2026. La norme de laboratoire standard descend à 12 µg/L, mais *dans le contexte de fatigue chronique et TDAH, une cible >70--80 µg/L est recommandée par plusieurs experts* pour optimiser la synthèse de dopamine et les complexes mitochondriaux — valeur non atteinte sur l'ensemble de la période documentée.

  + *CRP juillet 2023 = 9 mg/L (élevée) + Chlamydia pneumoniae IgG positif* #r("ketterthill-2023") : inflammation systémique documentée à ce moment, associée à une infection intracellulaire ancienne probable. *Chlamydia pneumoniae* est un pathogène intracellulaire capable de persistance chronique et a été impliqué dans des syndromes de fatigue post-infectieux. Revenu à la normale depuis — mais la fenêtre 2023 coïncide avec la période précédant l'aggravation de 2025.

  + *Vitamine B12 — bas de gamme récurrent* : 188 (2016, sous la norme), 241 (2018), 209 (août 2024). Jamais élevée, tendance basse. Cofacteur essentiel de la chaîne respiratoire mitochondriale et de la synthèse des neurotransmetteurs.
]

// =============================================================================
= Hypothèses diagnostiques pour la fatigue chronique
// =============================================================================

#caution("Hypothèses — pas de diagnostic définitif")[
  Les hypothèses ci-dessous sont proposées à titre de pistes diagnostiques pour le dialogue médical. Elles ne sont pas exclusives et peuvent coexister.
]

== EM/SFC — Encéphalomyélite Myalgique / Syndrome de Fatigue Chronique

#hypothesis("EM/SFC — forme modérée suspectée (hypothèse principale de l'entourage)")[
  *Probabilité : modérée à élevée — hypothèse prioritaire selon l'entourage*

  La fatigue chronique de CAN présente un profil compatible avec une *forme modérée d'EM/SFC* : sommeil non réparateur depuis de nombreuses années (documenté par la PSG), fatigue constante malgré le repos, troubles cognitifs, intolérance orthostatique chronique — avec une *aggravation nette depuis septembre–octobre 2025* (céphalée quotidienne, récupération insuffisante même après longue nuit, brain fog). L'EBV IgG >750 U/mL #r("synlab-2026") documente une infection passée par un déclencheur EM/SFC connu (note : l'IgG EBV est positif chez >90% des adultes ; c'est l'association clinique qui lui donne sa pertinence ici, pas la positivité seule).

  *Critères diagnostiques ICC 2011 — état actuel de CAN :*

  #table(
    columns: (auto, 1fr, auto),
    stroke: 0.5pt,
    inset: 5pt,
    fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
    table.header([*Critère*], [*Observation chez CAN*], [*Statut*]),
    [Fatigue sévère ≥6 mois], [Présente depuis des décennies ; sommeil non réparateur chronique (documenté PSG) ; *aggravation profonde depuis sept.–oct. 2025*], [✓ Présent],
    [Non résolue par le repos], [Fatigue constante même après longue nuit et siestes, depuis longtemps — aggravée depuis 2025 ; *PSG objective un sommeil non réparateur*], [✓ Présent — documenté],
    [Malaise post-effort (MPE)], [Pas de crash brutal documenté ; épisodes de céphalées prolongées (plusieurs jours à semaines) + fatigue inextinguible malgré repos = MPE de bas grade possible (hypothèse entourage)], [⚠ Possible — à évaluer],
    [Troubles cognitifs], [_Brain fog_, difficulté à trouver ses mots, incapacité à se concentrer (travail + maison) — depuis plusieurs mois], [✓ Présent],
    [Intolérance orthostatique], [Vertiges au lever réguliers, inconfort en station debout — *symptôme chronique de longue date*, antérieur à 2025], [✓ Présent (chronique)],
  )

  *Arguments supplémentaires (incluant données longitudinales) :*
  - EBV passé documenté (déclencheur EM/SFC connu dans ~10% des mononucléoses infectieuses — l'IgG positif seul est très fréquent chez l'adulte ; c'est l'association avec la clinique qui lui donne sa valeur ici)
  - *Carence chronique en vitamine D depuis ≥ 2014* (12 ans) : facteur aggravant de la neuroinflammation et de la dysrégulation immunitaire
  - *CRP élevée (9 mg/L) + Chlamydia pneumoniae IgG positif en juillet 2023* : inflammation systémique documentée ~26 mois avant l'aggravation de 2025 — infection intracellulaire persistante possible comme cofacteur déclenchant
  - *B12 bas de gamme récurrent* (2016, 2024) : cofacteur mitochondrial et neurologique insuffisant de façon chronique
  - MCAS souvent comorbide avec l'EM/SFC (activation immune chronique → neuroinflammation → fatigue)
  - Modafinil nécessaire depuis 2020 : compatible avec un seuil énergétique abaissé chroniquement

  *Questions à poser lors de la consultation :*
  - Après un effort inhabituel (sortie, réunion, activité physique), la fatigue s'aggrave-t-elle le lendemain ou surlendemain de manière disproportionnée ?
  - Y a-t-il des périodes de plusieurs jours où tout effort est impossible ?

  *Implication thérapeutique critique :* L'EM/SFC n'est pas un diagnostic d'exclusion — c'est un diagnostic clinique. Il peut coexister avec la narcolepsie, le MCAS et la dysautonomie. *Si l'EM/SFC est confirmé*, le pacing (gestion stricte de l'enveloppe énergétique) devient la mesure centrale. *Le modafinil et le méthylphénidate sans pacing peuvent aggraver le MPE* en masquant le signal de fatigue d'alerte et en permettant de dépasser le seuil énergétique sans le ressentir. Le GET (graded exercise therapy) est *contre-indiqué* si le MPE est présent.
]

== Narcolepsie / Hypersomnie centrale

#hypothesis("Narcolepsie ou hypersomnie centrale idiopathique")[
  *Probabilité : élevée* — Soutenue par le tableau clinique documenté par le Dr Pincherle en 2018 : hypersomnie, paralysie du sommeil, hallucinations hypnagogiques #r("pincherle-ordonnance-2018"). Le pattern PSG évocateur de narcolepsie #r("narco-doc") est le point de départ du présent RDV. Cette hypothèse *peut coexister* avec une forme modérée d'EM/SFC — les deux ne s'excluent pas.

  *Arguments pour :*
  - Somnolence diurne excessive documentée depuis au moins 2018
  - Paralysie du sommeil et hallucinations hypnagogiques (critères de narcolepsie)
  - PSG avec pattern narcoleptique
  - Traitement par modafinil (Provigil) initié par Dr Pincherle #r("pincherle-attestation-2020") #r("apotheke-concerta-provigil-2022")

  *Questions ouvertes :* Narcolepsie type 1 (hypocrétine basse dans LCR) vs. type 2 vs. suppression fonctionnelle du système orexinergique par neuroinflammation chronique (EBV, EM/SFC) ? Un dosage d'hypocrétine-1 dans le LCR et un typage HLA-DQB1\*06:02 permettraient de trancher (voir document complémentaire #r("narco-doc")).
]

== MCAS (Syndrome d'Activation des Mastocytes)

#hypothesis("MCAS — Syndrome d'Activation des Mastocytes")[
  *Probabilité : modérée à élevée* — Le tableau clinique de CAN présente plusieurs critères d'orientation vers le MCAS :

  *Arguments cliniques :*
  - *Dermatose récidivante chronique depuis ~17 ans* #r("prurit-visage-2026") : lésions cutanées récurrentes, prurit intense, extension aux muqueuses nasales — tous compatibles avec une activation mastocytaire locale (histamine, médiateurs mastocytaires)
  - *Fatigue chronique sévère* : le MCAS est une cause fréquemment méconnue de fatigue chronique
  - *Contexte allergique* (à préciser avec la patiente) : le MCAS est souvent associé à des allergies multiples, une intolérance aux aliments/médicaments/parfums
  - *EBV passé* : les infections virales (EBV en particulier) peuvent déclencher ou amplifier le MCAS

  *Définition MCAS (critères de consensus) :*
  + Symptômes récurrents compatibles avec la libération de médiateurs mastocytaires
  + Réponse à des traitements anti-histaminiques ou inhibiteurs mastocytaires
  + Élévation de marqueurs mastocytaires (tryptase sérique dans les 4h d'une crise, prostaglandine D2 urinaire, N-méthylhistamine urinaire)

  *Points à clarifier avec la patiente :*
  - Existe-t-il des crises : flush (rougeur soudaine), urticaire, oedème, troubles digestifs, palpitations après certains aliments, médicaments, stress, températures ?
  - A-t-elle des allergies connues (médicamenteuses, alimentaires) ?
  - Les poussées de dermatose sont-elles associées à d'autres symptômes (digestifs, cardiovasculaires) ?

  *Bilan à proposer :*
  - Tryptase basale sérique (hors crise)
  - N-méthylhistamine urinaire sur 24h
  - Prostaglandine D2 urinaire
  - IgE totales et spécifiques
  - Test thérapeutique : antihistaminiques (H1 + H2) ± cromoglycate de sodium
]

== Infection intracellulaire persistante (Chlamydia pneumoniae)

#hypothesis("Chlamydia pneumoniae — cofacteur inflammatoire possible")[
  *Probabilité : faible à modérée — donnée objective à ne pas ignorer*

  Le bilan de juillet 2023 #r("ketterthill-2023") montre une *CRP élevée à 9 mg/L* (ref \<5) associée à un *Chlamydia pneumoniae IgG positif (52 UA/mL, ref \<16)*. Ce résultat indique une infection ancienne documentée, voire persistante.

  *Contexte d'exposition (précisé par la patiente) :* ce bilan a été réalisé au moment où son conjoint (Sven) souffrait d'une pneumonie documentée. CAN présentait alors des *douleurs thoraciques* et a été radiographiée — la radio s'est révélée normale, sans infiltrat visible. Une infection à *Chlamydia pneumoniae* cliniquement atypique (sans condensation radiologique) est compatible avec ce tableau : la bactérie provoque souvent des pneumonies atypiques peu visibles à la radiographie standard. *L'exposition directe au conjoint infecté renforce la plausibilité d'une infection contemporaine de CAN.*

  *Pertinence clinique :*
  - *Chlamydia pneumoniae* est un pathogène intracellulaire obligatoire capable de persistance chronique dans les macrophages et cellules endothéliales
  - Des études l'associent à des syndromes de fatigue post-infectieux, à une activation immune chronique de bas grade, et potentiellement à des pathologies neuroinflamma­toires
  - La CRP élevée à ce moment (seule valeur anormale dans tout l'historique biologique) documente une réponse inflammatoire systémique en 2023 — *environ 26 mois avant l'aggravation de 2025* (cause non déterminable depuis le bilan seul)
  - Revenu à CRP normale ensuite — mais *Chlamydia pneumoniae* peut persister sans signe biologique évident

  *Lien possible avec les autres hypothèses :*
  - Peut amplifier l'activation mastocytaire (MCAS)
  - Peut contribuer à la neuroinflammation et à la suppression orexinergique (narcolepsie secondaire)
  - Compatible avec le tableau EM/SFC post-infectieux

  *À clarifier :* Un dosage IgA (marqueur d'infection active/persistante, contrairement aux IgG seuls) permettrait de préciser si l'infection est résolue ou toujours active. À discuter avec le Dr Dusart ou un interniste.
]

== Insuffisance en vitamine D

#keyfinding("Vitamine D — carence chronique depuis ≥ 12 ans")[
  L'analyse longitudinale révèle une carence en vitamine D *persistante depuis au moins 2014* — pas un épisode isolé :

  - Sep 2014 : 14 ng/mL (insuffisant, ref >30)
  - Mai 2016 : *8.5 ng/mL* (carence sévère)
  - Juil 2021 : 30.7 ng/mL (à la limite)
  - Avr 2024 : 28 ng/mL (insuffisant)
  - Jan 2026 : 43 ng/mL (normal-bas — amélioré mais insuffisant, cible >60)

  La vitamine D est un modulateur immunitaire majeur, un régulateur des mastocytes, un cofacteur de la synthèse de sérotonine, et un facteur protecteur contre la neuroinflammation. Une carence de cette durée et de cette profondeur est un facteur aggravant structurel — pas accessoire. La supplémentation en cours doit viser *>60 ng/mL* et être maintenue indéfiniment.
]

== Défaillance de production d'énergie cellulaire

#hypothesis("Dysfonction mitochondriale / insuffisance métabolique énergétique")[
  *Probabilité : modérée — à explorer activement*

  La fatigue chronique de CAN est sévère et non résolue par le repos, avec un bilan standard entièrement normal. Ce profil est caractéristique des pathologies où la défaillance se situe au niveau de la *production cellulaire d'énergie* plutôt que dans les systèmes explorés par les bilans courants.

  *Mécanismes de production d'énergie pouvant être défaillants :*

  + *Chaîne respiratoire mitochondriale (complexes I-IV)* : production d'ATP par phosphorylation oxydative. Des dysfonctions des complexes I et IV ont été documentées dans l'EM/SFC post-EBV. Le LDH normal (163 U/L) #r("synlab-2026") exclut une destruction cellulaire massive mais pas un déficit fonctionnel subtil.

  + *Bêta-oxydation des acides gras* : dépend de la L-carnitine pour le transport des acides gras dans la mitochondrie. Un déficit fonctionnel en carnitine (non dosé chez CAN) peut réduire significativement la production d'énergie.

  + *Cycle de Krebs* : cofacteurs essentiels : thiamine (B1), riboflavine (B2), niacine (B3), acide pantothénique (B5), magnésium. Un déficit en thiamine (non dosée) peut mimer une fatigue sévère et un dysfonctionnement cognitif.

  + *Glycolyse et régulation glycémique* : la glycémie de CAN est normale (87 mg/dL à jeun) #r("synlab-2026"), mais des hypoglycémies réactionnelles post-prandiales (non explorées) peuvent contribuer à la fatigue post-repas.

  + *Stress oxydatif chronique* : l'EBV et la neuroinflammation chronique augmentent la production de ROS (espèces réactives de l'oxygène), qui endommagent les mitochondries et réduisent leur capacité de production d'ATP.

  *Arguments pour CAN (renforcés par les données longitudinales) :*
  - Fatigue importante et persistante depuis l'adolescence, non résolue par le repos
  - Contexte post-EBV (déclencheur mitochondrial documenté)
  - *Ferritine jamais optimale sur 12 ans* (max 52 µg/L) : cofacteur des complexes I, II, IV déficient de façon chronique
  - *B12 bas de gamme récurrent* (2016 : 188 ng/L — sous la norme ; 2024 : 209 ng/L — bas de gamme) : cofacteur du cycle de méthylation et de la chaîne respiratoire
  - *Folates bas en 2016* (3.5 µg/L, ref >3.9) : cofacteur du cycle de méthylation
  - *Carence sévère en vitamine D de 2014 à 2021* : rôle mitochondrial indirect via le stress oxydatif
  - Les dysfonctions mitochondriales fonctionnelles ne sont pas visibles sur un bilan standard — l'absence d'anomalie n'exclut pas le mécanisme

  *Examens complémentaires à envisager :*
  - *Lactate et pyruvate à l'effort* (rapport L/P : explore le complexe I)
  - *Acylcarnitines plasmatiques* (explore la bêta-oxydation)
  - *Dosage de la thiamine* (B1) sérique ou érythrocytaire
  - *Acide organique urinaire* (profil métabolique : acide méthylmalonique, homocystéine, succinate)
  - *Homocystéine* (marqueur de déficit en B12/folates/B6 et cofacteur du cycle de méthylation)

  *Voir section 6 (M8) pour les traitements détaillés.*
]

== TDAH et fatigue cognitive

#mechanism("TDAH — Contribution à la fatigue")[
  Le TDAH entraîne une *fatigue cognitive élevée* par surcompensation constante (effort d'attention, contrôle inhibiteur, régulation émotionnelle). Cette fatigue cognitive est distincte de la fatigue physique mais contribue à la perception globale d'épuisement. Le traitement par méthylphénidate (Concerta) atténue cet aspect mais ne résout pas les causes sous-jacentes de l'hypersomnie.
]

// =============================================================================
= Stratégie dans l'attente du prochain RDV
// =============================================================================

#caution("Note : prochain RDV dans plusieurs mois — peut-on agir maintenant ?")[
  Le prochain RDV aura probablement lieu dans *plusieurs mois*, et sera probablement précédé d'une prise de sang étendue. Dans l'intervalle, il est raisonnable d'envisager, en accord avec le médecin généraliste, d'initier certaines mesures à faible risque. Celles-ci permettront :

  - soit d'*exclure* des mécanismes par absence d'effet (test thérapeutique négatif),
  - soit de les *confirmer* par amélioration objective des symptômes.

  *Compléments pour la production d'énergie (M8) — sans ordonnance :*
  + *CoQ10 / Ubiquinol* 200 mg/j — chaîne respiratoire mitochondriale.
  + *Magnésium bisglycinate* 300--400 mg/soir — cofacteur ATP, améliore le sommeil profond.
  + *Complexe B* : B1 thiamine 50--100 mg/j, B2, B3, B6, B12 méthylcobalamine, folates 5-MTHF. _(Note : la réglementation belge des compléments recommande \<5 mg/j de thiamine ; des doses thérapeutiques \>50 mg s'obtiennent via des produits pharmaceutiques — à discuter avec le médecin.)_
  + *NAC* — précurseur du glutathion, antioxydant mitochondrial. _(Note : en Belgique, la dose maximale autorisée en complément alimentaire est de 299 mg/j. Pour 600 mg/j, il faut une spécialité pharmaceutique sur ordonnance ou un produit importé légalement via pharmacie française.)_

  Ces compléments ne présentent pas d'interactions connues significatives avec le Concerta ou le modafinil pour les doses citées ; le médecin traitant reste l'interlocuteur pour confirmer l'absence de contre-indication individuelle.

  *Compléments anti-inflammatoires (M5, M2) — sans ordonnance :*
  + *Oméga-3 (EPA+DHA)* 2--3 g/j — anti-inflammatoire (neuroinflammation M5, MCAS M2).
  + *Quercétine* 500 mg/j — stabilisateur mastocytaire si MCAS suspecté (M2).

  *À optimiser sans attendre :*
  + *Vitamine D3 + K2* 3000--4000 UI/j — cible 60--80 ng/mL (actuellement 43 ng/mL).
  + *Fer bisglycinate* 25 mg + vitamine C 250 mg — ferritine cible >80 µg/L (actuellement 52). Espacer du magnésium de 2--3h. *Contrôle ferritine dans 3 mois.*

  *Traitements SAMA (stabilisation mastocytaire, M2) — à discuter avec le médecin généraliste :*

  Proposition de démarrer directement la couverture H1 + H2 combinée, sans attendre le prochain RDV :

  - *Rupatadine (Rupatal) 10 mg/j* (H1 + anti-PAF) : antihistaminique H1 de 2ème génération avec activité anti-PAF — plus complet que la cétirizine ou la loratadine pour le MCAS. Sur ordonnance en Belgique. _Si escalade dose envisagée (>20 mg) : ECG de base souhaitable (cf. section 10, M2)._
  - *Famotidine 20--40 mg/j* (H2) : à associer d'emblée au rupatadine pour couvrir les récepteurs H2 (digestifs, cutanés). Les H1 et H2 sont complémentaires et non substituables. Sur ordonnance. _Non commercialisée en Belgique — accessible en pharmacie française (CAN habite à Messancy, à la frontière). Prescription belge valable en France._

  Cette combinaison rupatadine + famotidine constitue le *traitement de première intention du MCAS* selon les consensus actuels. *Note : le MCAS n'est pas encore confirmé biologiquement (bilan tryptase/N-méthylhistamine/PGD2 à réaliser — section 11) ; ces médicaments constituent un test thérapeutique diagnostique, à initier sur accord du médecin.* Si réponse partielle :

  - *Cromoglycate de sodium oral (Nalcrom)* : stabilisateur mastocytaire intestinal — à ajouter si symptômes digestifs prédominants. Sur ordonnance. _(Disponibilité BE variable — vérifier en pharmacie ; sinon disponible en France.)_
  - *Kétotifène oral* : stabilisateur mastocytaire direct — palier suivant si rupatadine + famotidine insuffisants. Sur ordonnance. *Sédatif les 2 premières semaines.* _(Disponibilité BE incertaine — vérifier en pharmacie hospitalière ou commander via pharmacie française.)_

  *Sommeil et synchronisation circadienne (M1) — sans ordonnance :*
  - *Mélatonine* 0,5--1 mg, 1h avant coucher — synchronisation de l'horloge circadienne. Dose basse suffisante ; pas d'interaction connue aux doses physiologiques avec Concerta ou modafinil.
  - *Luminothérapie matinale* (lampe 10 000 lux, 20--30 min au réveil) — efficace dans les hypersomnies centrales et le TDAH pour ancrer le rythme circadien. Aucune contre-indication, aucune prescription.

  *Axe intestin-cerveau (M5) — sans ordonnance :*
  - *Probiotiques* (Lactobacillus rhamnosus GG, Bifidobacterium longum) — soutien du microbiote, pertinent pour la neuroinflammation post-EBV et le MCAS.

  *Cofacteurs thyroïdiens et antioxydants supplémentaires — sans ordonnance :*
  - *Sélénium* 100--200 µg/j — cofacteur de la conversion T4→T3 et de la glutathion peroxydase ; utile même avec TSH dans la norme si fatigue persistante.
  - *Vitamine C* 500--1000 mg/j — antioxydant, soutien immunitaire post-EBV, cofacteur de l'absorption du fer (peut être pris séparément du fer bisglycinate si besoin).

  *Mesures diététiques — sans coût ni risque :*
  - Régime à *index glycémique bas*, repas fractionnés — réduit les pics glycémiques et la somnolence post-prandiale, fréquente dans les hypersomnies centrales. À tester comme "journal symptômes vs repas" sur 4 semaines.

  *Principe :* introduire *un complément à la fois*, espacer de 2--4 semaines, pour identifier ce qui aide. Informer le Dr Genin/Copus de toute initiation.
]

// =============================================================================
= Médicaments actuels (à confirmer avec la patiente)
// =============================================================================

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else { white },
  table.header([*Médicament*], [*Indication*], [*Contexte et sources*]),

  [Concerta (méthylphénidate)],
  [TDAH],
  [Prescrit depuis 2013 (Dr Heusbourg), suivi Dr Bolyn puis Dr Pincherle. Sources : #r("prescription-concerta-2013") #r("certificat-adhd-2018")],

  [Provigil / Modafinil],
  [Hypersomnie],
  [Attesté par Dr Pincherle depuis 2020 ; délivré en pharmacie belge en 2022. Sources : #r("pincherle-attestation-2020") #r("apotheke-concerta-provigil-2022")],

  [Vitamine D],
  [Insuffisance documentée],
  [Supplémentation en cours (à optimiser). Sources : #r("synlab-2024") #r("synlab-2026")],
)

// =============================================================================
= Priorités thérapeutiques proposées
// =============================================================================

#keyfinding("Deux priorités, dans cet ordre")[
  Quelle que soit l'origine exacte de la fatigue — narcolepsie, EM/SFC, MCAS, dysautonomie, ou combinaison — la stratégie thérapeutique proposée suit deux axes séquentiels :

  #table(
    columns: (auto, 1fr),
    stroke: 0.5pt,
    inset: 8pt,
    fill: (col, row) => if row == 0 { rgb("d4edda") } else { white },
    table.header([*Priorité*], [*Objectif*]),
    [*1. Restaurer les niveaux d'énergie*],
    [Agir sur les mécanismes de production d'énergie cellulaire, *quelle que soit la cause sous-jacente*. La patiente doit retrouver une capacité fonctionnelle suffisante pour mener une vie quotidienne et pour que les investigations diagnostiques et les traitements de fond puissent être tolérés.

    *La restauration des niveaux d'énergie est essentielle pour une meilleure qualité de vie*, indépendamment du diagnostic final. C'est également la condition préalable pour que les traitements de fond (priorité 2) puissent être tolérés et efficaces.

    Leviers immédiats : CoQ10 + NADH (mitochondries), fer (cofacteur enzymatique), magnésium (cofacteur ATP), complexe B (cycle de Krebs), pacing strict (préserver l'enveloppe énergétique), optimisation du sommeil.],

    [*2. Traiter la cause profonde*],
    [Une fois le niveau d'énergie stabilisé, s'attaquer aux mécanismes sous-jacents : confirmer et traiter la narcolepsie/hypersomnie centrale (orexine), explorer et traiter le MCAS (H1+H2+stabilisateurs mastocytaires), évaluer formellement l'EM/SFC et mettre en place le pacing, explorer la dysautonomie (tilt test, pyridostigmine).

    *Sans l'étape 1*, les traitements de fond risquent d'être mal tolérés ou insuffisamment efficaces faute d'énergie de base.],
  )
]

// =============================================================================
= Questions pour le médecin de la Clinique du Sommeil
// =============================================================================

#question("Narcolepsie : compléter le bilan diagnostique")[
  + Le résultat de la PSG réalisée après l'ordonnance du Dr Pincherle (2018) est-il disponible dans le système ? Peut-on en obtenir le rapport complet ?
  + Un *dosage d'hypocrétine-1 dans le LCR* a-t-il été réalisé ? Si non, est-il indiqué ?
  + Un *typage HLA-DQB1\*06:02* a-t-il été effectué ?
  + Un *test MSLT* formel a-t-il été réalisé ?
  + Le modafinil actuel est-il la meilleure option, ou faut-il envisager une réévaluation du traitement ?
]

#question("EM/SFC : évaluation formelle et pacing")[
  + Les critères ICC 2011 de l'EM/SFC sont-ils présents chez cette patiente ? (fatigue ≥6 mois non résolue par le repos ✓, troubles cognitifs ✓, intolérance orthostatique ✓, MPE à évaluer)
  + Si EM/SFC confirmé ou suspecté : le *pacing* (gestion de l'enveloppe énergétique) doit-il être introduit ? Le GET (graded exercise therapy) est contre-indiqué en présence de MPE.
  + *Le modafinil et le méthylphénidate sans pacing aggravent le MPE* en supprimant le signal de fatigue d'alerte et en permettant de dépasser le seuil énergétique sans le ressentir — le méthylphénidate potentiellement encore davantage, par son action dopaminergique plus directe sur la motivation et la résistance à la fatigue perçue. Comment adapter la prise en charge en conséquence ?
  + Un suivi spécialisé EM/SFC est-il disponible en Belgique (CHU, centres de référence) ?
]

#question("MCAS : orientation diagnostique")[
  + La Clinique du Sommeil peut-elle orienter vers une exploration du MCAS, ou vers un allergologue/immunologue compétent en MCAS ?
  + Faut-il réaliser une tryptase basale, N-méthylhistamine urinaire, prostaglandine D2 urinaire ?
]

#question("Vitamine D et fatigue")[
  + Quelle est la cible de vitamine D recommandée dans ce contexte ? Faut-il augmenter la supplémentation ?
]

#question("Ferritine basse-normale")[
  + La ferritine à 52 µg/L est-elle suffisante pour une femme souffrant de fatigue chronique ? Faut-il envisager une supplémentation en fer ?
]

// =============================================================================
= Documents complémentaires disponibles
// =============================================================================

Le document *`20260322 narcolepsy-pattern sleep.aeiuno.pdf`* (#r("narco-doc")) contient une analyse clinique détaillée du pattern narcoleptique, incluant :
- Diagnostic différentiel narcolepsie type 1 vs. suppression orexinergique
- Protocole de bilan recommandé (hypocrétine LCR, HLA, MSLT)
- Options thérapeutiques selon le diagnostic
- Contexte scientifique récent (Shan et al. 2026, _Annals of Neurology_)

// =============================================================================
= Mécanismes biologiques défaillants et options thérapeutiques
// =============================================================================

#caution("Section hypothétique")[
  Les mécanismes ci-dessous sont des hypothèses basées sur le tableau clinique de CAN. Ils ne sont pas confirmés par des examens spécifiques et nécessitent une évaluation médicale. Cette section vise à structurer la discussion avec le Dr Dusart et à identifier les examens complémentaires pertinents.
]

Les mécanismes sont présentés par ordre de pertinence clinique, du plus documenté au plus hypothétique.

#mechanism("Légende — colonne « Niveau de preuve »")[
  La colonne *Niveau* indique la solidité des données disponibles *pour ce traitement dans ce contexte spécifique*, pas dans la pathologie en général :

  #table(
    columns: (auto, 1fr),
    stroke: none,
    inset: (x: 6pt, y: 3pt),
    [★★★★], [*Très solide* — essais contrôlés randomisés (RCT) de bonne qualité, méta-analyses, ou usage approuvé dans l'indication],
    [★★★],  [*Solide* — RCT de taille modérée, ou données d'observatoire robustes, ou approbation dans indication proche],
    [★★],   [*Modéré* — études pilotes contrôlées, séries de cas, usage clinique établi hors AMM avec rationnel mécanistique fort],
    [★],    [*Préliminaire* — données anecdotiques, études non contrôlées, extrapolation mécanistique, ou usage expérimental],
  )
]

== M1 — Déficit du système orexinergique (hypocrétine)

*Pertinence pour CAN : élevée* — Soutenu par le pattern PSG et les symptômes documentés par le Dr Pincherle (paralysie du sommeil, hallucinations hypnagogiques, hypersomnie) #r("pincherle-ordonnance-2018") #r("narco-doc").

*Mécanisme :* Les neurones à orexine/hypocrétine de l'hypothalamus latéral régulent l'éveil, le tonus musculaire et la stabilité veille/sommeil. Leur destruction auto-immune (narcolepsie type 1) ou leur suppression fonctionnelle par neuroinflammation (EBV, cytokines) entraîne une instabilité veille/sommeil, une hypersomnie diurne et des intrusions de sommeil paradoxal.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [Modafinil (Provigil)], [Médicament], [Déjà utilisé par CAN. Active les circuits noradrénergiques et dopaminergiques compensant partiellement le déficit orexinergique. Effet sur l'éveil, pas sur la cataplexie.], [★★★★],
  [Armodafinil (Nuvigil)], [Médicament], [Énantiomère R du modafinil, demi-vie plus longue (15h vs 12h). Alternative si somnolence en fin de journée.], [★★★★],
  [Pitolisant (Wakix)], [Médicament], [Agoniste inverse H3 histaminergique. Augmente la libération d'histamine, dopamine, acétylcholine. Approuvé EU. Faible risque d'abus classé. Disponible en Belgique. Efficace sur EDS. *Note : si rupatadine (H1) est associé, les deux médicaments ont des actions histaminergiques opposées — à discuter avec le médecin.*], [★★★★],
  [Solriamfetol (Sunosi)], [Médicament], [Inhibiteur recapture DA+NA. Approuvé EU. Alternative ou complément si modafinil insuffisant. *Même mécanisme que le méthylphénidate (DA+NA) : risque cardiovasculaire additif — à ne pas combiner sans évaluation cardiaque préalable.*], [★★★],
  [Oxybate de sodium\ (Xyrem / Xywav)\ #text(size: 8pt, style: "italic")[⚠ Accès restreint BE — distribution contrôlée, spécialiste requis]], [Médicament], [Consolide le sommeil profond (SWS), réduisant secondairement somnolence et cataplexie. Traitement de référence NT1. À envisager si sommeil nocturne fragmenté documenté.], [★★★★],
  [Oveporexton (TAK-861)], [Médicament (pipeline)], [Premier agoniste OX2R direct, ciblant la cause. NDA FDA examen prioritaire (_Priority Review_), PDUFA T3 2026. Phase 3 : 83-84% normalisation ESS. Pertinent si NT1 confirmée.], [★★★★ (Ph.3)],
  [Alixorexton], [Médicament (pipeline)], [Agoniste OX2R pour NT1/NT2/hypersomnie idiopathique. Breakthrough Therapy FDA jan. 2026. Phase 3 en cours.], [★★★ (Ph.2)],
  [Mélatonine (0.5--1 mg)], [Complément], [Aide à la synchronisation circadienne. À prendre 1--2h avant le coucher. Non spécifique au déficit orexinergique mais améliore la qualité du sommeil.], [★★],
  [Luminothérapie matinale], [Non-médicamenteux], [30 min de lumière vive (≥10 000 lux) au réveil. Renforce le signal circadien, réduit la somnolence matinale. Sans risque.], [★★],
  [Siestes programmées courtes], [Non-médicamenteux], [2 siestes de 15--20 min/jour réduisent significativement la somnolence diurne dans la narcolepsie. Efficacité comparable à certains médicaments pour la qualité de vie.], [★★★],
)

== M2 — Activation des mastocytes (MCAS — hypothèse)

*Pertinence pour CAN : modérée à élevée* — Dermatose récidivante chronique à pattern centrifuge depuis ~17 ans avec atteinte muqueuse nasale #r("prurit-visage-2026"), fatigue chronique inexpliquée, et EBV passé.

*Mécanisme :* En cas d'activation chronique ou anarchique des mastocytes (MCAS), les médiateurs libérés (histamine, tryptase, prostaglandine D2, leucotriènes) provoquent fatigue chronique par neuroinflammation, dysautonomie, éruptions cutanées récurrentes et symptômes gastro-intestinaux.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [*Rupatadine (Rupatal)*\ _Départ :_ 20 mg/j le matin\ _Cible MCAS :_ 20--40 mg/j\ (escalade à S4 si réponse partielle)\ #text(size: 8pt, fill: rgb("7f1d1d"))[⚠ ECG de base avant escalade >20 mg]], [Médicament], [*Triple action* : antihistaminique H1 + antagoniste PAF (facteur d'activation plaquettaire) + stabilisateur mastocytaire. Antagonisme PAF *31× plus puissant* que la loratadine. Inhibe la dégranulation : histamine (88%), IL-8 (80%), VEGF (73%). Méta-analyse réseau : classée 1ère parmi les antihistaminiques (SUCRA 99,7%). Bloque simultanément deux voies d'amplification mastocytaire (H1 + PAF). Non sédative aux doses standard. Disponible en Belgique. *À demander en priorité* — profil optimal pour MCAS. *Posologie dans le MCAS :* départ 20 mg/j ; escalade à 30--40 mg/j si réponse partielle à 4 semaines. Les doses de 20--40 mg sont utilisées hors AMM dans le MCAS sur la base de l'expérience clinique et du profil pharmacologique (demi-vie ~6h, linéarité PK documentée). *Surveillance QTc requise si >20 mg/j*, particulièrement en association avec le méthylphénidate (Concerta) qui allonge légèrement le QTc — ECG de base souhaitable avant escalade.], [★★★★],
  [Famotidine (H2)\ 20 mg matin + 20 mg soir\ (40 mg/j)\ #text(size: 8pt, style: "italic")[Non dispo BE — France (ordonnance belge valide)]], [Médicament], [Bloque les récepteurs H2 systémiques — présents sur les *mastocytes* (pas seulement cellules gastriques). *H1+H2 simultanément requis* dans le MCAS : monothérapie H1 insuffisante (RCT Steinberg 1996). Dose MCAS : 40--80 mg/j. La dose basse standard (20 mg/j) est sous-thérapeutique pour cet usage. Très bonne tolérance jusqu'à 160 mg/j (syndrome de Zollinger-Ellison).], [★★★],
  [Montélukast (Singulair)\ 10 mg/j le soir\ #text(fill: rgb("7f1d1d"))[⚠ Mise en garde FDA]], [Médicament], [Antagoniste des récepteurs Cys-LT1 aux leucotriènes (LTC4, LTD4) — médiateurs mastocytaires proinflammatoires distincts de l'histamine. *Rationnel principal dans ce contexte :* les leucotriènes entretiennent l'hyperactivation immune chronique de bas grade (amplification des mastocytes, recrutement des éosinophiles, neuroinflammation) même quand l'histamine est bloquée par les H1+H2. Le montélukast ferme cette voie complémentaire, contribuant à *rétablir une baseline immunitaire plus basse*. Utilisé hors AMM dans le MCAS et les syndromes inflammatoires chroniques. *Pertinent pour le Dr Dusart (pneumologue)* : familier de cette molécule. *Mise en garde encadrée FDA (2020)* : risque neuropsychiatrique (cauchemars, dépression, idées suicidaires) — *risque majoré chez une patiente avec TDAH.* Ce risque ne contre-indique pas formellement son usage, mais impose une introduction prudente avec monitoring neuropsychiatrique actif (cahier de suivi des rêves et de l'humeur) et arrêt immédiat au moindre signe. À envisager en deuxième intention après stabilisation sur H1+H2, ou d'emblée si composante respiratoire/sinusite associée. Voir section 12.], [★★],
  [*PEA (palmitoylethanolamide)*\ 600 mg 2×/j\ (matin + soir avec repas)], [Complément], [Amide endogène d'acide gras, agoniste des récepteurs *PPAR-α* (noyau) et modulateur indirect des récepteurs cannabinoïdes CB2 (via FAAH). *Mécanisme mastocytaire central :* le PEA inhibe directement la dégranulation mastocytaire et la synthèse de médiateurs proinflammatoires (histamine, tryptase, TNF-α) via PPAR-α — voie distincte et complémentaire des H1, H2 et antileucotriènes. Il agit sur la *cause* de la dégranulation (seuil d'activation) plutôt que sur ses conséquences (les médiateurs déjà libérés). *Rationnel supplémentaire pour CAN :* (1) anti-neuroinflammation microgliale via PPAR-α (pertinent M5 post-EBV) ; (2) effets analgésiques documentés (douleurs articulaires aux doigts) ; (3) données préliminaires positives dans les syndromes de fatigue post-virale. Sans ordonnance. Bonne tolérance, aucune interaction connue avec le Concerta ou le modafinil. *Forme micronisée ou ultramicronisée requise* (PeaPure, Normast, Epitech) : la forme standard en poudre brute est très mal absorbée. Délai d'effet : 4--8 semaines. Disponible en pharmacie française et en ligne (produits CE).], [★★],
  [Cromoglycate de sodium\ (Nalcrom oral)], [Médicament], [Stabilisateur mastocytaire dans le tractus gastro-intestinal. Utile si composante digestive (ballonnements, diarrhée, nausées). Agit localement (mal absorbé). 200 mg 4x/j avant repas.], [★★],
  [Kétotifène\ 0,5--1 mg 2x/j], [Médicament], [Antihistaminique H1 + stabilisateur mastocytaire systémique le plus puissant disponible. Alternative si rupatadine insuffisante. Disponible en Belgique. Sédatif les 2 premières semaines, puis adaptation. *La sédation peut être atténuée par le modafinil/méthylphénidate en cours — surveiller l'équilibre.*], [★★],
  [Quercétine (500--1000 mg/j)], [Complément], [Flavonoïde stabilisateur mastocytaire naturel. Inhibe la dégranulation et la libération d'histamine. Bonne tolérance. Prendre à distance des repas.], [★★],
  [Vitamine C (500--1000 mg/j)], [Complément], [Cofacteur de la dégradation de l'histamine. Réduit la charge histaminique. Synergie avec la quercétine.], [★★],
  [Régime pauvre en histamine], [Diététique], [Réduction des aliments riches en histamine (fromages affinés, vin rouge, charcuteries, tomates). Non curatif mais réduit la charge symptomatique.], [★★],
  [DAO (diamine oxydase)], [Complément], [Enzyme dégradant l'histamine alimentaire intestinale. Utile si intolérance à l'histamine associée. À prendre avant les repas.], [★],
  [Oméga-3 (EPA+DHA, 2--4 g/j)], [Complément], [Réduisent la production de prostaglandines et leucotriènes. Anti-inflammatoire pertinent dans le MCAS. Préférer formes triglycérides.], [★★],
)

== M3 — Dysrégulation dopaminergique / noradrénergique (TDAH)

*Pertinence pour CAN : certaine* — TDAH diagnostiqué et traité depuis 2013 #r("neurologue-heusbourg-2013") #r("certificat-adhd-2018").

*Mécanisme :* Hypofonction des circuits dopaminergiques préfrontaux et striato-corticaux, et dysrégulation noradrénergique. Entraîne une fatigue cognitive élevée par surinvestissement compensatoire permanent et une mauvaise régulation du cycle veille/sommeil.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [Méthylphénidate (Concerta)], [Médicament], [Déjà utilisé. Inhibiteur recapture DA+NA. Améliore l'attention et réduit la fatigue cognitive. Attention : risque d'insomnie si pris trop tard.], [★★★★],
  [Atomoxétine (Strattera)], [Médicament], [Inhibiteur sélectif recapture NA. Alternative si effets indésirables du méthylphénidate. Moins d'effet éveil.], [★★★],
  [Magnésium bisglycinate\ (300--400 mg/soir)], [Complément], [Cofacteur de la transmission dopaminergique et régulation NMDA. Réduit l'hyperactivité neuronale, améliore le sommeil profond. Prendre le soir.], [★★],
  [Zinc (15--25 mg/j)\ + Cuivre 1--2 mg/j], [Complément], [Cofacteur de la synthèse dopaminergique. Des études montrent une amélioration des symptômes TDAH avec le zinc, surtout si niveaux bas. *Associer du cuivre si supplémentation prolongée* (risque de carence cuivre).], [★★],
  [Oméga-3 (EPA prépondérant)], [Complément], [Méta-analyses : réduction modérée des symptômes TDAH. EPA plus actif que DHA pour l'effet TDAH.], [★★],
  [Fer (si ferritine \<70)], [Complément], [La ferritine de CAN est 52 µg/L #r("synlab-2026"). Des études montrent qu'une ferritine \<50--70 aggrave le TDAH et la somnolence diurne (dont syndrome jambes sans repos). Cible >80 chez femme fatiguée avec TDAH.], [★★],
  [TCC-TDAH], [Non-médicamenteux], [Thérapie cognitive comportementale adaptée au TDAH adulte. Réduit la fatigue cognitive par structuration et gestion de l'énergie. Complémentaire aux médicaments.], [★★★],
)

== M4 — Déficit en vitamine D / Dysrégulation immunitaire

*Pertinence pour CAN : certaine* — Vitamine D insuffisante documentée à deux reprises (28 ng/mL en avril 2024, 43 en janvier 2026) #r("synlab-2024") #r("synlab-2026").

*Mécanisme :* La vitamine D est un modulateur immunitaire majeur. Un déficit chronique favorise la neuroinflammation, altère la fonction des cellules NK (pertinent pour l'EBV), réduit la synthèse de sérotonine cérébrale, aggrave la fatigue musculaire et cognitive, et joue un rôle dans la régulation des mastocytes.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [Vitamine D3 (cholécalciférol)\ 3000--4000 UI/j], [Complément], [Déjà en cours chez CAN. Cible : 60--80 ng/mL dans ce contexte (au-dessus des 43 actuels). Prendre avec un repas gras pour absorption optimale.], [★★★],
  [Vitamine K2 (MK-7, 150 µg/j)], [Complément], [Cofacteur essentiel à la vitamine D3 pour diriger le calcium vers les os. Indispensable si D3 >2000 UI/j. Contre-indiquée si anticoagulants.], [★★],
  [Magnésium (voir M3)], [Complément], [Cofacteur de l'activation de la vitamine D (hydroxylation hépatique et rénale). Sans magnésium suffisant, la D3 ne peut être activée efficacement.], [★★],
  [Exposition solaire raisonnée], [Non-médicamenteux], [15--30 min de soleil à midi (avril--septembre, latitude belge) sur bras et visage. Synthèse cutanée de vitamine D3. Complémentaire à la supplémentation orale en hiver.], [★★★],
)

== M5 — Séquelles post-EBV / Neuroinflammation chronique

*Pertinence pour CAN : modérée* — EBV IgG >750 U/mL (infection ancienne certaine) #r("synlab-2026"), fatigue chronique depuis des années.

*Mécanisme :* L'EBV persiste à vie dans les lymphocytes B en latence. Des réactivations subcliniques maintiennent un état neuro-inflammatoire, réduisent l'activité des cellules NK, et altèrent les circuits de régulation du sommeil et de l'énergie. L'EBV est un déclencheur connu d'EM/SFC, de MCAS, et potentiellement de narcolepsie via neuroinflammation orexinergique.

#table(
  columns: (2fr, 1fr, 4fr, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [Valaciclovir / Valganciclovir], [Médicament], [Antiviraux actifs contre l'EBV en phase lytique. Utilisés hors AMM dans les syndromes post-EBV avec réactivation documentée (charge virale ADN EBV positive). *À discuter avec infectiologue ou immunologue.*], [★ (hors AMM)],
  [Vitamine D3 (voir M4)], [Complément], [Améliore la réponse des cellules NK contre l'EBV latent. Rôle immunomodulateur documenté.], [★★],
  [Zinc (15--25 mg/j)\ + Cuivre 1--2 mg/j], [Complément], [Renforce la fonction des cellules T et NK. Réduit les réactivations virales. *Associer du cuivre si supplémentation prolongée* (risque de carence cuivre).], [★★],
  [N-acétylcystéine (NAC)\ 600--1200 mg/j\ #text(size: 8pt, style: "italic")[⚠ Complément BE max 299 mg/j — dose thérapeutique via Rx ou pharmacie FR]], [Complément], [Précurseur du glutathion. Réduit le stress oxydatif induit par la neuroinflammation chronique. Propriétés antivirales indirectes.], [★★],
  [Curcumine + pipérine\ (500--1000 mg/j)], [Complément], [Anti-inflammatoire via inhibition NF-κB. Réduit les cytokines pro-inflammatoires. Faible biodisponibilité : choisir formulation avec pipérine (BioPerine) ou liposomale.], [★★],
  [CoQ10 / Ubiquinol\ (200--400 mg/j)], [Complément], [Réduit le stress oxydatif mitochondrial. Des études montrent une amélioration de la fatigue dans les syndromes post-viraux. Forme ubiquinol recommandée.], [★★],
  [Probiotiques documentés\ (L. rhamnosus, L. reuteri)], [Complément], [Modulent l'axe intestin-cerveau et réduisent la neuroinflammation systémique. Effet bénéfique sur la fatigue chronique post-infectieuse dans plusieurs études.], [★],
  [PEA (palmitoylethanolamide)\ _(voir M2 pour détail)_], [Complément], [Via PPAR-α : inhibe l'activation microgliale et la production de cytokines proinflammatoires (IL-1β, TNF-α, IL-6). Pertinent dans la neuroinflammation chronique post-EBV. Effet complémentaire à la CoQ10 et au NAC pour réduire le stress oxydatif neuronal. Forme micronisée/ultramicronisée obligatoire.], [★★],
)

== M6 — Ferritine basse-normale / Carence fonctionnelle en fer

*Pertinence pour CAN : modérée* — Ferritine 52 µg/L (janv. 2026) #r("synlab-2026"), était 28 µg/L en avril 2024 #r("synlab-2024"). Insuffisant pour une femme avec fatigue chronique et TDAH.

*Mécanisme :* Le fer est un cofacteur essentiel de la synthèse de dopamine, de sérotonine, et des complexes mitochondriaux. Une ferritine \<70 µg/L est associée à une aggravation du TDAH, du syndrome des jambes sans repos, et de la fatigue chronique — même sans anémie franche.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [Fer bisglycinate (25--50 mg/j)], [Complément], [Mieux toléré que le sulfate ferreux (moins de constipation). Absorption bonne. Prendre à distance du café, thé, calcium, magnésium.], [★★],
  [Sulfate ferreux (80 mg Fe élém./j)], [Médicament], [Standard. Prendre à jeun avec vitamine C. Peut causer des troubles digestifs.], [★★★],
  [Vitamine C (250 mg avec le fer)], [Complément], [Augmente l'absorption du fer non-héminique de 2--3x. À prendre systématiquement avec la supplémentation.], [★★★],
  [Aliments riches en fer héminique], [Diététique], [Viande rouge, foie, boudin noir. Absorption 25% vs 5% pour le fer végétal. À favoriser si tolérance digestive.], [★★],
)

*Cible : ferritine > 70--80 µg/L.* Recontrôler après 3 mois de supplémentation.

== M7 — Dysautonomie possible (POTS / hypotension orthostatique)

*Pertinence pour CAN : à explorer* — Consultations cardiologiques en 2014 #r("kardiologe-2014"). Le POTS est fréquemment associé à la narcolepsie, au MCAS et aux syndromes post-EBV.

*Signes évocateurs (à vérifier avec la patiente) :* palpitations en se levant, étourdissements orthostatiques, fatigue aggravée en position debout, intolérance à la chaleur, extrémités froides.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [Apport sodé augmenté\ (3--5 g NaCl/j supplémentaires)], [Diététique], [Augmente le volume plasmatique. Première mesure non-médicamenteuse dans le POTS. Contre-indiqué si HTA.], [★★★],
  [Hydratation (2--3 L/j)], [Non-médicamenteux], [Maintien du volume plasmatique. 500 mL d'eau froide au lever améliore immédiatement la tolérance orthostatique.], [★★★],
  [Bas de contention (classe 2)], [Non-médicamenteux], [Réduisent la stase veineuse des membres inférieurs. Effet immédiat sur la tolérance orthostatique.], [★★★],
  [Fludrocortisone (Astonin)], [Médicament], [Minéralocorticoïde : augmente la rétention sodée et le volume plasmatique. Première ligne POTS. Sur prescription.], [★★★],
  [Midodrine], [Médicament], [Vasoconstricteur alpha-1. Augmente la résistance vasculaire périphérique. Première ligne POTS. Ne pas prendre le soir (risque HTA couchée).], [★★★],
  [Propranolol (faible dose)], [Médicament], [Ralentit la tachycardie réflexe. Utile si composante tachycardique prédominante dans le POTS.], [★★],
  [Électrolytes\ (magnésium + sel)], [Complément], [Maintien de l'équilibre électrolytique. Les boissons électrolytiques (LMNT, Precision Hydration) peuvent aider lors d'épisodes d'aggravation.], [★★],
)

== M8 — Dysfonction mitochondriale (fatigue cellulaire)

*Pertinence pour CAN : modérée, hypothétique* — Cohérente avec une fatigue sévère inexpliquée par le bilan standard dans un contexte post-EBV.

*Mécanisme :* Dans les syndromes de fatigue post-infectieux, des dysfonctions des complexes de la chaîne respiratoire mitochondriale ont été documentées. La résultante est une production insuffisante d'ATP, se manifestant par une fatigue physique et cognitive disproportionnée aux efforts.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [*CoQ10 / Ubiquinol*\ 200 mg/j avec repas gras], [Complément], [Transporteur d'électrons entre les complexes I/II et III de la chaîne respiratoire. Antioxydant lipide-soluble puissant. *RCT le plus large disponible* (Castro-Marrero 2021, n=207) : amélioration significative fatigue cognitive (p\<0,001), fatigue globale (p=0,022), qualité de vie. *Forme ubiquinol recommandée* (meilleure biodisponibilité >40 ans). Ne pas prendre tard le soir (peut causer insomnie).], [★★★],
  [*NADH*\ 20 mg/j à jeun\ (30 min avant petit-déjeuner)], [Complément], [Forme réduite du NAD⁺ — *donneur d'électrons direct au Complexe I* de la chaîne respiratoire. Chaque molécule de NADH produit ~2,5 ATP en phosphorylation oxydative. *RCT Castro-Marrero 2021 (n=207)* : CoQ10 200 mg + NADH 20 mg combinés → améliorations significatives fatigue cognitive, fatigue globale, qualité de vie ET paramètres de sommeil. *À prendre en combinaison avec CoQ10*, pas seul. Prendre à jeun : le NADH est dégradé par l'acidité gastrique.], [★★★],
  [L-carnitine / Acétyl-L-carnitine\ (500--2000 mg/j)], [Complément], [Transporte les acides gras dans la mitochondrie (bêta-oxydation). L'acétyl-L-carnitine traverse la barrière hémato-encéphalique et a des effets neuroprotecteurs supplémentaires. Améliore la fatigue dans plusieurs études sur la fatigue chronique.], [★★],
  [D-Ribose (5 g 3x/j)], [Complément], [Substrat pentose direct de la synthèse d'ATP. Études pilotes positives dans l'EM/SFC (Teitelbaum 2006, 2012 — non contrôlées). *Prendre obligatoirement avec les repas* pour limiter le risque hypoglycémique (le ribose est métabolisé rapidement et peut induire une baisse de glycémie). Utile en urgence post-effort (10--15 g avec aliment glucidique) ; éviter à jeun.], [★],
  [Thiamine B1 haute dose\ (départ 100 mg/j, titration)], [Complément], [Cofacteur essentiel du cycle de Krebs (pyruvate déshydrogénase, alpha-kétoglutarate DH). Séries de cas ouvertes (Costantini) : amélioration de la fatigue chronique. *Débuter à 100 mg/j et titrer progressivement* — un symptôme de recrudescence transitoire à la hausse de dose est décrit (phénomène paradoxal à la titration), ne pas interpréter comme une intolérance. Doses élevées (>300 mg) : dépasser sur plusieurs semaines seulement. Non dosée chez CAN.], [★],
  [Complexe B (B2, B3, B6, B12, folates)], [Complément], [Cofacteurs indispensables à la chaîne respiratoire et aux cycles de méthylation. Privilégier B12 méthylcobalamine et folates actifs (5-MTHF) si polymorphisme MTHFR. Le déficit en B12 ou folates élève l'homocystéine, qui inhibe directement les complexes I--V de la chaîne respiratoire.], [★★],
  [NAC (600 mg 2x/j)], [Complément], [Précurseur du glutathion, principal antioxydant mitochondrial. Protège les mitochondries du stress oxydatif chronique. Synergie avec vitamine C et zinc.], [★★],
)

== M9 — Toxicité calcique post-effort (mécanisme du malaise post-exertion)

*Pertinence pour CAN : modérée — signaux présents* — Fatigue de fond inextinguible, céphalée quotidienne malgré repos, sommeil non réparateur documenté : ce profil est cohérent avec un MPE de bas grade chronique. Un seuil énergétique abaissé expliquerait pourquoi les activités ordinaires (travail, soins des enfants) suffisent à maintenir l'état sous le seuil de récupération.

*Mécanisme (Wirth & Scheibenbogen 2022) :* La pompe Na⁺/K⁺-ATPase consomme 20--40% de l'ATP cellulaire pour maintenir le gradient ionique. Lorsque la production d'ATP est insuffisante (dysfonction mitochondriale), la pompe ralentit → accumulation de Na⁺ intracellulaire → inversion de l'échangeur NCX sodio-calcique → *surcharge calcique intracellulaire* → nécrose fibrillaire musculaire. IRM sodium (études pilotes, données préliminaires) : accumulation post-effort rapportée plus élevée chez ME/CFS que chez les contrôles. Ce phénomène est un *seuil* (non linéaire) : rester sous le seuil aérobie prévient la cascade entière. La récupération post-seuil prend ~13 jours chez ME/CFS vs ~2 jours chez les contrôles sédentaires.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Approche*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [Pacing strict\ (fréquence cardiaque \< seuil AT − 15 bpm)], [Non-médicamenteux], [Prévient l'accumulation de Na⁺ et l'inversion NCX. *Mesure la plus importante* si PEM documenté. Le seuil anaérobie (AT) peut être estimé par CPET ou empiriquement. Le dépasser même brièvement déclenche la cascade.], [★★★★],
  [Repos supine entre activités], [Non-médicamenteux], [Améliore la perfusion musculaire et le fonctionnement de la pompe Na⁺/K⁺. Diviser les activités en petits blocs avec repos allongés intermédiaires.], [★★★],
  [Magnésium (voir M3)], [Complément], [Cofacteur de la Na⁺/K⁺-ATPase. Réduit la crampe et la raideur post-effort. Aussi modulateur calcique (réduit l'entrée cellulaire de Ca²⁺).], [★★],
  [D-Ribose post-effort\ (10--15 g immédiatement)], [Complément], [Substrat direct de la resynthèse d'ATP. Dose d'urgence après un effort déclencheur pour accélérer la récupération énergétique et limiter la durée de la cascade.], [★],
  [Électrolytes\ (Na⁺ + K⁺ + Mg²⁺)], [Complément], [Maintien du gradient ionique extracellulaire, réduisant la charge sur la pompe Na⁺/K⁺.], [★★],
)

== M10 — Déficit en catécholamines centrales (dopamine / norépinéphrine CSF)

*Pertinence pour CAN : élevée* — TDAH (dysrégulation dopaminergique diagnostiquée), modafinil nécessaire (compensation noradrénergique), fatigue cognitive sévère, difficultés de motivation et d'initiation des tâches.

*Mécanisme (NIH Deep Phenotyping, Walitt et al. 2024) :* Étude de phénotypage profond (LCR, n=17 patients ME/CFS) : acide homovanillique (métabolite dopamine) et MHPG (métabolite norépinéphrine) significativement *réduits dans le LCR*. Corrélations directes avec force de préhension, fonction cognitive, et sélection de tâches difficiles. *Ce n'est pas une dépression* : c'est un déficit neurochimique objectif, mesurable. Chez CAN, le méthylphénidate et le modafinil compensent précisément ces déficits --- ce qui explique leur nécessité documentée depuis 2013 et 2020.

*Facteurs aggravants :* stress oxydatif (oxyde le cofacteur BH4 de la tyrosine hydroxylase), ferritine basse (cofacteur de la tyrosine hydroxylase), déficit en vitamine C (cofacteur de la dopamine β-hydroxylase), déficit en zinc/cuivre.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [Méthylphénidate _(déjà prescrit)_], [Médicament], [Inhibe la recapture DA+NA. Traitement en place, cohérent avec le déficit catécholaminergique central.], [★★★★],
  [Modafinil _(déjà prescrit)_], [Médicament], [Active les circuits noradrénergiques et orexinergiques. Compense le déficit.], [★★★★],
  [Fer (voir M6)], [Complément], [Cofacteur de la tyrosine hydroxylase (enzyme limitante, tyrosine → L-DOPA). Ferritine 52 µg/L insuffisante pour synthèse optimale.], [★★],
  [Vitamine C 1000 mg/j], [Complément], [Cofacteur de la dopamine β-hydroxylase (dopamine → norépinéphrine). Double pertinence : dégradation histamine (M2) + synthèse catécholamines (M10).], [★★],
  [Zinc + Cuivre], [Complément], [Cofacteurs de la dopamine β-hydroxylase. Zinc : également anti-EBV (M5) et TDAH (M3). Ne pas dépasser 40 mg/j zinc ; balancer avec cuivre.], [★★],
)

== M11 — WASF3 / Stress du réticulum endoplasmique post-EBV

*Pertinence pour CAN : modérée — plausible via EBV* — Infection EBV ancienne certaine #r("synlab-2026"). Ce mécanisme lie directement le contexte post-EBV à la défaillance mitochondriale.

*Mécanisme (Wang et al. 2023, NIH) :* L'EBV peut déclencher un *stress chronique du réticulum endoplasmique* → surexpression de WASF3 → translocation mitochondriale → *désassemblage des supercomplexes respiratoires* (notamment Complexe IV) → intolérance à l'effort. Confirmé dans biopsies musculaires ME/CFS et Long COVID. *Absent dans le simple déconditionnement.* L'inhibition pharmacologique du stress RE restaure la fonction mitochondriale in vitro. Conséquence clinique : la fatigue n'est pas comportementale. Un programme d'exercice progressif (GET) peut aggraver ce mécanisme si le PEM est présent.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [CoQ10 + NADH _(voir M8)_], [Complément], [Soutient la chaîne respiratoire en aval du blocage WASF3. Apporte des électrons aux complexes fonctionnels restants.], [★★★],
  [NAC _(voir M5)_], [Complément], [Réduit le stress oxydatif qui amplifie le stress RE.], [★★],
  [Curcumine + pipérine\ (500 mg 2x/j)], [Complément], [Inhibe NF-κB et les voies de stress RE (IRE1α, ATF6, PERK). Choisir formulation à biodisponibilité améliorée (BioPerine ou liposomale).], [★★],
  [Éviter les efforts déclencheurs], [Non-médicamenteux], [Les efforts au-delà du seuil aérobie amplifient le stress RE et la fragmentation mitochondriale. *Contre-indication au GET (graded exercise therapy)* si PEM documenté.], [★★★★],
)

== M12 — Déviation du tryptophane / voie kynurénine (sommeil et humeur)

*Pertinence pour CAN : modérée* — L'inflammation chronique (EBV, MCAS) active IDO, déviant le tryptophane de la sérotonine.

*Mécanisme (Walitt et al. 2024, NIH) :* L'inflammation active IDO (indoleamine 2,3-dioxygénase) → *tryptophane détourné vers la voie kynurénine* (au détriment de la sérotonine et de la mélatonine). Résultats : épuisement sérotoninergique (humeur, douleur, sommeil), réduction mélatonine (cycle veille/sommeil perturbé), accumulation d'acide quinolinique (neurotoxique, excitotoxicité NMDA). Ce mécanisme est pertinent pour la narcolepsie : la régulation orexinergique est modulée par le tonus sérotoninergique. L'EBV et le MCAS maintiennent l'activation chronique d'IDO.

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [Traiter l'inflammation\ (M2 MCAS + M5 EBV)], [Indirect], [Réduire l'activation d'IDO en traitant les causes inflammatoires restaure partiellement la voie sérotonine/mélatonine.], [★★],
  [Mélatonine (0,5--1 mg)], [Complément], [Compense directement la réduction de mélatonine. Dose basse recommandée (0,5 mg = physiologique ; doses élevées contre-productives à long terme).], [★★],
  [Vitamine B6 (P5P, 25 mg/j)], [Complément], [Cofacteur de la tryptophane hydroxylase (tryptophane → 5-HTP → sérotonine). Forme active P5P préférable.], [★★],
  [Curcumine _(voir M11)_], [Complément], [Inhibe IDO directement, réduisant la déviation neurotoxique du tryptophane.], [★★],
  [L-tryptophane (500 mg soir)\ _avec précaution_], [Complément], [Substrat direct de la sérotonine. À prendre le soir avec glucides. *Ne pas combiner avec ISRS ou tramadol* (risque syndrome sérotoninergique). *Le modafinil a une activité sérotoninergique faible — vérifier avec le médecin avant d'associer.* À discuter avec le médecin.], [★],
)

== M13 — Dysautonomie et pyridostigmine (Mestinon)

*Pertinence pour CAN : à explorer* — Consultations cardiologiques 2014 #r("kardiologe-2014"). La dysautonomie est fréquemment associée à la narcolepsie, au MCAS et aux syndromes post-EBV. La fatigue aggravée en position debout, les palpitations au lever, les étourdissements orthostatiques sont des signes à documenter.

*Mécanisme :* La pyridostigmine (Mestinon) inhibe l'acétylcholinestérase → prolonge l'action de l'acétylcholine dans les ganglions autonomes → améliore la régulation orthostatique. *Second mécanisme* : activation de la *voie anti-inflammatoire cholinergique* via le nerf vague → modulation immunitaire indirecte (pertinent pour MCAS et neuroinflammation chronique). Essai COVID-19 sévère (Fragoso-Saavedra 2022, n=188, double aveugle) : réduction de moitié de la mortalité à 28 jours par pyridostigmine, *sans modification des marqueurs inflammatoires mesurés* → mécanisme vagal, pas cytokinique.

#caution("Médicament sur prescription — initiation par spécialiste requise")[
  La pyridostigmine doit être *initiée sur décision de la Clinique du Sommeil* (équipe multidisciplinaire incluant cardiologie/neurologie selon le cas). *Les médecins généralistes ne la prescriront pas sans recommandation préalable d'un spécialiste.* Un tilt test préalable est souhaitable pour objectiver l'intolérance orthostatique.
]

#table(
  columns: (auto, auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Traitement*], [*Type*], [*Mécanisme / Commentaire*], [*Niveau*]),
  [Pyridostigmine (Mestinon)\ *Dose ME/CFS* : 15--20 mg 1x/j\ (titrer sur semaines, max 30 mg 3x/j)], [Médicament\ (spécialiste)], [Inhibe l'acétylcholinestérase ganglionnaire. RCT POTS (Raj 2005) : réduit la tachycardie orthostatique. Méta-analyse 6 RCTs (Pavic 2025) : efficace combiné midodrine. *Dose ME/CFS = ¼ à ⅓ des doses standard neurologiques.* Bons répondeurs : dysautonomie légère-modérée avec baroréflexe préservé.], [★★★],
  [Tilt test (bilan préalable)], [Examen], [Confirme l'intolérance orthostatique (POTS, hypotension retardée). Des études (van Campen et al.) rapportent une réduction anormale du débit cérébral au tilt chez une majorité de patients ME/CFS. Prédicteur de réponse à la pyridostigmine.], [Bilan],
  [Hydratation + sel _(voir M7)_], [Diététique], [Mesure de première intention, sans prescription. 2--3 L/j + 3--5 g NaCl/j supplémentaires.], [★★★],
)

== Tableau de synthèse — Compléments prioritaires pour CAN

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Complément*], [*Dose · Mécanisme(s) · Priorité / Commentaire*]),
  [Vitamine D3 + K2], [3000--4000 UI D3 + 150 µg K2 · M4, M5 · *Priorité 1* — déficit documenté. Cible 60--80 ng/mL.],
  [Magnésium bisglycinate], [300--400 mg/soir · M3, M4, M7, M8 · *Priorité 1* — cofacteur universel, améliore le sommeil profond. Prendre le soir.],
  [Fer bisglycinate + Vit C], [25--50 mg Fe + 250 mg C · M6, M3 · *Priorité 1* — ferritine 52, cible >80. Espacer du magnésium. Contrôle dans 3 mois.],
  [Oméga-3 (EPA+DHA)], [2--3 g/j · M2, M5, M3 · *Priorité 2* — anti-inflammatoire polyvalent, bénéfice TDAH documenté.],
  [Quercétine + Vit C], [500 mg + 500 mg/j · M2 · *Priorité 2* — stabilisateur mastocytaire si MCAS suspecté.],
  [CoQ10 / Ubiquinol + NADH], [200 mg CoQ10 + 20 mg NADH/j · M8, M5 · *Priorité 2* — *combinaison à prendre ensemble* (RCT n=207, Castro-Marrero 2021). CoQ10 avec repas gras, NADH à jeun le matin.],
  [Zinc + Cuivre], [Zinc 15--25 mg/j + Cuivre 1--2 mg/j · M3, M5 · *Priorité 2* — cofacteur dopamine, immunité NK/EBV. Ne pas dépasser 40 mg/j zinc. *Associer du cuivre (1--2 mg/j) si supplémentation prolongée* (zinc chronique peut induire une carence en cuivre).],
  [NAC], [600 mg 2x/j · M5, M8 · *Priorité 2* — glutathion, anti-inflammatoire, antiviral indirect.],
  [Mélatonine], [0.5--1 mg, 1h avant coucher · M1 · *Priorité 3* — synchronisation circadienne. Dose basse suffisante.],
  [Thiamine B1], [100--300 mg/j · M8 · *Priorité 3* — essayer si fatigue persistante malgré les autres mesures.],
  [Probiotiques (souches documentées)], [Selon produit · M5 · *Priorité 3* — axe intestin-cerveau.],
)

#caution("Interactions et surveillance importantes")[
  - *Magnésium et fer* : espacer de 2--3h (compétition d'absorption)
  - *Vitamine K2* : contre-indiquée si anticoagulants (warfarine, acenocoumarol) — vérifier avec le médecin
  - *Quercétine* : peut interagir avec cyclosporine, certaines statines — vérifier
  - *NAC + modafinil/méthylphénidate* : pas d'interaction connue significative aux doses proposées
  - *Pitolisant (H3 agoniste inverse) + rupatadine (H1 antagoniste)* : effets histaminergiques opposés — ne pas combiner sans avis médical
  - *Solriamfetol + méthylphénidate* : même mécanisme DA+NA, risque cardiovasculaire additif — combinaison à éviter sans bilan cardiaque
  - *L-tryptophane + modafinil* : activité sérotoninergique faible du modafinil — discuter avec le médecin avant association
  - *Rupatadine > 20 mg/j* : surveiller allongement du QTc, particulièrement avec méthylphénidate
  - *Tous les compléments* : informer le Dr Dusart et le Dr Pincherle de ce que la patiente prend
  - *Ne pas tout commencer simultanément* : introduire un complément à la fois (2--4 semaines d'intervalle) pour identifier ce qui aide
]

// =============================================================================
= Options médicamenteuses — Narcolepsie et hypersomnie centrale
// =============================================================================

Cette section présente les traitements disponibles ou en cours d'évaluation pour la narcolepsie, afin de préparer la discussion avec le Dr Dusart.

== Traitements actuels de la patiente

La patiente est actuellement traitée par *Concerta (méthylphénidate)* pour le TDAH et par *Provigil (modafinil)* pour l'hypersomnie #r("pincherle-attestation-2020") #r("apotheke-concerta-provigil-2022"). Ces deux médicaments ont des effets d'éveil complémentaires, mais s'attaquent aux symptômes sans cibler la cause sous-jacente de la narcolepsie.

== Traitements établis disponibles aujourd'hui

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Médicament*], [*Cible · Indication · Commentaire*]),

  [Modafinil / Armodafinil \ _(Provigil, Nuvigil)_],
  [*EDS — NT1 + NT2.* Déjà utilisé par CAN. Première ligne pour la somnolence diurne. Pas d'effet sur la cataplexie.],

  [Méthylphénidate \ _(Concerta, Ritalin)_],
  [*EDS + TDAH — NT1 + NT2.* Déjà utilisé pour le TDAH. Effet d'éveil secondaire.],

  [Pitolisant \ _(Wakix)_],
  [*EDS + cataplexie — NT1 + NT2.* Agoniste inverse H3 histaminergique. Approuvé EU/US, pas de risque d'abus classé. *Disponible en Belgique — alternative si modafinil insuffisant.*],

  [Solriamfetol \ _(Sunosi)_],
  [*EDS — NT1 + NT2.* Inhibiteur recapture DA + NA. Approuvé EU et US. Alternative ou complément si modafinil insuffisant.],

  [Oxybate de sodium \ _(Xyrem, Lumryz)_],
  [*EDS + cataplexie + sommeil nocturne — NT1 (NT2 off-label).* Traitement de référence NT1. Seul agent traitant simultanément EDS, cataplexie et sommeil nocturne fragmenté. Contraintes REMS.],

  [Oxybate faible Na \ _(Xywav)_],
  [*EDS + cataplexie — NT1 + NT2.* Version faible sodium (92% moins que Xyrem). À préférer si risque cardiovasculaire.],
)

#mechanism("Cataplexie et CAN")[
  L'ordonnance du Dr Pincherle (2018) mentionne *l'absence de cataplexie* #r("pincherle-ordonnance-2018"), orientant davantage vers une *narcolepsie de type 2* ou une hypersomnie idiopathique. Les agonistes orexinergiques (ci-dessous) et le pitolisant méritent une attention particulière dans ce contexte.
]

== Médicaments en cours d'évaluation — Pipeline 2026

#keyfinding("Oveporexton (TAK-861) — Premier agoniste orexinergique en examen prioritaire FDA (Priority Review)")[
  *Le médicament le plus avancé et le plus prometteur pour la narcolepsie de type 1 en 2026.*

  - *Mécanisme :* Agoniste sélectif du récepteur OX2 de l'orexine. Contrairement aux traitements actuels qui *compensent* l'absence d'orexine, l'oveporexton *remplace directement* le signal orexinergique perdu --- premier traitement ciblant la cause.
  - *Développeur :* Takeda
  - *Statut :* NDA accepté par la FDA en *février 2026* avec *examen prioritaire (_Priority Review_)* --- décision FDA attendue en *T3 2026* (juillet--septembre 2026)
  - *Résultats Phase 3 (études FirstLight et RadiantLight) :*
    - 83--84% des patients atteignent une somnolence normale (ESS ≤ 10) vs. 12--17% sous placebo
    - Réduction de 79--80% des attaques de cataplexie hebdomadaires
    - Quasi-normalisation des symptômes dans tous les domaines
    - *Pas d'hépatotoxicité* (contrairement au prédécesseur TAK-994, abandonné pour ce motif)
  - *Effets indésirables principaux :* insomnie (transitoire), urgences urinaires, pollakiurie
  - *Pertinence pour CAN :* Si la narcolepsie de *type 1* est confirmée (hypocrétine basse dans le LCR), l'oveporexton sera probablement le traitement de référence dès son approbation (T3 2026 FDA ; EMA à ~12--18 mois). Des essais cliniques ou un accès compassionnel pourraient être envisagés avant l'approbation européenne.
]

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Médicament*], [*Statut (avril 2026) · Commentaire*]),

  [Oveporexton (TAK-861) \ _Takeda_],
  [*NDA FDA examen prioritaire (_Priority Review_) — PDUFA T3 2026.* Premier agoniste OX2R direct pour NT1. Phase 3 concluante (NEJM 2024) : 83-84% normalisation ESS. Voir détails ci-dessus.],

  [Alixorexton \ _Alkermes_],
  [*Phase 3 en cours — Breakthrough Therapy FDA jan. 2026.* Agoniste OX2R pour NT1, *NT2 ET hypersomnie idiopathique*. Phase 3 Brilliance initiée T1 2026. *Pertinent si CAN a NT2 ou hypersomnie idiopathique.*],

  [TRN-257 (oxybate faible Na ER) \ _Tris Pharma_],
  [*NDA accepté déc. 2025 — PDUFA 20 juin 2026.* Oxybate LP très faible sodium, pour narcolepsie ET hypersomnie idiopathique.],

  [Lumryz (oxybate ER) \ _Avadel_],
  [*Approuvé FDA* (adultes 2023, pédiatrique ≥7 ans oct. 2024). Oxybate libération étendue, prise unique nocturne.],

  [E2086 \ _Eisai_],
  [*Phase 1/2.* Agoniste OX2R. Données World Sleep 2025. Stade précoce.],
)

#question("Questions médicaments à poser au Dr Dusart")[
  + *Oveporexton :* Le médecin est-il informé du statut d'examen prioritaire FDA (_Priority Review_, T3 2026) ? Si NT1 confirmée, peut-on anticiper l'accès (essai clinique, accès compassionnel) ?
  + *Pitolisant (Wakix) :* Disponible en Belgique --- serait-il une alternative ou un complément au modafinil actuel ?
  + *Alixorexton :* Y a-t-il des essais cliniques Brilliance accessibles en Belgique pour NT2 ou hypersomnie idiopathique ?
  + *Oxybate de sodium :* Faut-il l'envisager si le sommeil nocturne est fragmenté, même sans cataplexie ?
  + *Interaction modafinil + méthylphénidate :* Cette combinaison est-elle optimale, ou faut-il réévaluer ?
]

// =============================================================================
= Prescriptions à demander à la Clinique du Sommeil
// =============================================================================

La Clinique du Sommeil (CHU Saint-Luc, Bouge) est une structure *multidisciplinaire* : pneumologie, neurologie, cardiologie, psychiatrie selon les cas. L'objectif est d'obtenir une prise en charge globale de la fatigue sans multiplier les consultations chez différents spécialistes. Les généralistes (Dr Copus, Dr Genin) peuvent relayer les prescriptions initiées ici, mais ne les initieront pas eux-mêmes sans recommandation d'un spécialiste.

#table(
  columns: (38%, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  fill: (col, row) => if row == 0 { rgb("d4edda") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Prescription / Dosage*], [*Justification et condition préalable*]),

  [*Famotidine*\ H2 — dose MCAS\ #v(3pt) _S1 — Départ :_ 20 mg matin + 20 mg soir (40 mg/j)\ _Cible MCAS :_ 40 mg matin + 40 mg soir (80 mg/j)\ (escalade à S3 si toléré)\ #text(size: 8pt, style: "italic")[⚠ Non dispo BE — obtenir en France (Messancy ↔ frontière). Ordonnance belge valable.]],
  [H1 seul insuffisant dans le MCAS : récepteurs H2 présents sur les mastocytes (pas seulement gastriques). Dose GI standard (20 mg/j) sous-thérapeutique. _Justification doses élevées :_ consensus Afrin & Molderings (2014, 2020) : 40--80 mg/j recommandés dans le MCAS. La tolérance jusqu'à 160 mg/j est connue dans le syndrome de Zollinger-Ellison (contexte différent, cité uniquement comme référence de sécurité pharmacologique). *La fonction rénale de CAN est normale (DFG 115) — aucun ajustement requis ; surveiller à renouvellement du bilan.*],

  [*Rupatadine (Rupatal)*\ H1 + anti-PAF + stabilisateur mastocytaire\ #v(3pt) _S2 — Départ :_ 20 mg/j le matin\ _Cible MCAS :_ 40 mg/j\ (escalade si réponse partielle à S4)],
  [Suspicion MCAS : dermatose récidivante (17 ans), fatigue inexpliquée, EBV passé. Triple action : H1 + antagonisme PAF (31× > loratadine) + stabilisation mastocytaire. _Justification doses élevées :_ méta-analyse réseau urticaire (Sharma 2022) — rupatadine 20 mg classée 1ère (SUCRA 99,7%) ; consensus MCAS (Afrin 2020) : ×2--4 la dose standard habituellement nécessaires. Étude sécurité (n=59, doses ×4--12) : 10% somnolence, *aucun événement grave*. *Aux doses élevées (>20 mg), un ECG de base est souhaitable pour exclure un allongement du QTc, particulièrement en association avec le méthylphénidate.*],

  [*Montélukast (Singulair)*\ Antagoniste leucotriènes\ #v(3pt) _S4 :_ 10 mg/j le soir\ (après H1+H2 bien tolérés)],
  [Leucotriènes = médiateurs mastocytaires clés. Médicament familier en pneumologie (asthme, rhinite). *Avertissement mise en garde encadrée FDA* : surveiller humeur, cauchemars, comportement — particulièrement avec le TDAH.],

  [*Pyridostigmine (Mestinon)*\ Dysautonomie / voie cholinergique\ #v(3pt) _S5+ — Départ :_ 15--20 mg/j le matin\ _Max ME/CFS :_ 30 mg 3x/j\ (titration lente sur semaines)],
  [Suspicion dysautonomie (consultations cardiologiques 2014, association narcolepsie-POTS). RCT POTS positif (Raj 2005). Voie anti-inflammatoire cholinergique (nerf vague). *Dose ME/CFS = ¼ à ⅓ des doses standard.* *Initiation sur décision Clinique du Sommeil (équipe multidisciplinaire), idéalement après tilt test.* Effets cholinergiques à surveiller (bradycardie, hypersécrétion) en combinaison avec méthylphénidate (sympathomimétique).],

  [*Bilan MCAS*\ Ordonnance biologie],
  [Tryptase basale sérique, N-méthylhistamine urinaire 24h, prostaglandine D2 urinaire. Confirme ou infirme le MCAS avant escalade du traitement.],

  [*Tilt test*\ Examen cardiologique],
  [Documente l'intolérance orthostatique (POTS, hypotension retardée). Préalable utile à la pyridostigmine.],

  [*Fer*\ Fer bisglycinate 25--50 mg/j\ ou sulfate ferreux 80 mg Fe/j],
  [Ferritine 52 µg/L #r("synlab-2026") : insuffisant (cible >70--80 µg/L). Cofacteur tyrosine hydroxylase (synthèse dopamine), complexes mitochondriaux I/II/IV.],

  [*CoQ10 + NADH*\ (recommandation écrite)\ _S3 :_ CoQ10 200 mg + NADH 20 mg/j],
  [Compléments sans ordonnance. RCT Castro-Marrero 2021 (n=207) : fatigue cognitive ↓ (p\<0,001), fatigue globale ↓ (p=0,022). Aucune interaction avec modafinil ou méthylphénidate.],
)

== Plan d'introduction progressive

#mechanism("Un agent à la fois — 1 semaine d'observation entre chaque ajout")[
  Chez une patiente avec suspicion de MCAS, la progressivité permet d'identifier ce qui aide *et* ce qui pourrait provoquer des réactions. Note : la patiente *n'a jamais présenté de réaction particulière aux excipients médicamenteux* dans son historique — ce qui est un facteur favorable. La progressivité reste recommandée dans le MCAS même en l'absence d'antécédent d'hypersensibilité.
]

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Semaine*], [*Introduction*], [*Surveillance*]),
  [S1], [Famotidine 40 mg/j\ (20 mg matin + 20 mg soir)], [Tolérance digestive, énergie, dermatose.],
  [S2], [+ Rupatadine 20 mg le matin], [Prurit, dermatose, fatigue. Signes d'intolérance aux excipients ?],
  [S3], [Famotidine → 80 mg/j\ (40 mg matin + 40 mg soir) si S1–S2 tolérés\ + CoQ10 200 mg + NADH 20 mg], [Énergie matinale, fatigue cognitive, qualité du sommeil.],
  [S4], [Rupatadine → 40 mg/j si réponse partielle\ + Montélukast 10 mg le soir\ _(si H1+H2 bien tolérés)_], [*Surveiller humeur, cauchemars, comportement.* Arrêter si symptômes neuropsychiatriques.],
  [S5+], [Pyridostigmine 15--20 mg le matin\ _(sur prescription Clinique du Sommeil — cf. section 13)_\ + Magnésium, zinc + cuivre, NAC, vitamine C], [Réévaluation avec Dr Dusart ou généraliste à S8.],
)

#caution("Montélukast — mise en garde encadrée FDA (neuropsychiatrique)")[
  Le montélukast (Singulair) porte un *avertissement de mise en garde encadrée FDA* depuis 2020 pour risque neuropsychiatrique : cauchemars, troubles du sommeil, anxiété, dépression, idées suicidaires. Ce risque est *particulièrement à surveiller chez une patiente avec TDAH* (vulnérabilité neuropsychiatrique préexistante). Introduction uniquement après que les traitements H1+H2 sont bien tolérés (S4 minimum), et arrêt immédiat si tout symptôme neuropsychiatrique apparaît — même mineur. Discuter avec le médecin prescripteur avant introduction.
]

// =============================================================================
= Annexe : Sources et documents utilisés
// =============================================================================

_Les références ci-dessous correspondent aux fichiers du dossier médical de la patiente. Toutes les informations factuelles du présent rapport sont tirées directement de ces documents._

#v(0.5em)

#table(
  columns: (auto, 1fr, auto),
  stroke: 0.5pt,
  inset: 5pt,
  fill: (col, row) => if row == 0 { rgb("e8f4f8") } else if row > 0 and calc.odd(row) { rgb("f8f8f8") } else { white },
  table.header([*Ref*], [*Document*], [*Date*]),

  [[narco-doc] #label("narco-doc")],
  [20260322 narcolepsy-pattern sleep.aeiuno.typ/pdf — Étude de cas pattern narcoleptique],
  [2026-03-22],

  [[prurit-visage-2026] #label("prurit-visage-2026")],
  [20260208 prurit visage.aeiuno.tex/pdf — Évaluation dermatologique (EAC, MCAS)],
  [2026-02-08],

  [[synlab-2026] #label("synlab-2026")],
  [2026-01-09\_Synlab\_Fatigue.pdf (Ketterthill/) — Bilan sanguin complet orienté fatigue],
  [2026-01-09],

  [[synlab-2024] #label("synlab-2024")],
  [2024-04-19\_Labo\_Synlab\_resultats.pdf (2024/) — Bilan sanguin Dr Genin],
  [2024-04-19],

  [[pincherle-2024] #label("pincherle-2024")],
  [2024-04-05\_LU\_CAN\_Pincherle.pdf (2024/) — Consultation Dr Pincherle 2024],
  [2024-04-05],

  [[apotheke-concerta-provigil-2022] #label("apotheke-concerta-provigil-2022")],
  [2022-10-04\_BE\_Apotheke\_Concerta-Provigil.pdf (2022NEW/) — Délivrance Concerta + Provigil],
  [2022-10-04],

  [[ketterthill-2023] #label("ketterthill-2023")],
  [Bilan labo complet Dr Genin\ _(KetterThil 2023-07-10)_],
  [2023-07-10],

  [[pincherle-ordonnance-2018] #label("pincherle-ordonnance-2018")],
  [2018-10-26\_DrPincherle\_Ordonnance\_PSG-MSLT\_Christine.pdf (2018-10\_Sleep/) — Ordonnance PSG+MSLT, justification clinique],
  [2018-10-26],

  [[psg-vivalia-2019] #label("psg-vivalia-2019")],
  [2019-01-11\_BE\_Vivalia\_Polisomn\_Resultats.pdf (Medical\_Krankenkasse/2019/) — Résultats polysomnographie nocturne (Vivalia), pattern narcoleptique],
  [2019-01-11],

  [[pincherle-attestation-2020] #label("pincherle-attestation-2020")],
  [2020-02-03\_Neur\_Pincherle\_Attestation\_Concerta-Provigil.pdf (Medical\_Krankenkasse/2020/) — Attestation traitement Concerta + Provigil],
  [2020-02-03],

  [[certificat-adhd-2018] #label("certificat-adhd-2018")],
  [2018-04-25\_Certificat\_ADHD\_SBolyn\_CA.pdf (root/) — Certificat ADHD officiel Dr Bolyn],
  [2018-04-25],

  [[neurologue-heusbourg-2013] #label("neurologue-heusbourg-2013")],
  [2013-11-14\_Neurologe-Heusbourg.PDF (2013/) — Consultation initiale neurologie, diagnostic TDAH],
  [2013-11-14],

  [[prescription-concerta-2013] #label("prescription-concerta-2013")],
  [2013-11-14\_PrescriptionConcerta.PDF (2013/) — Première prescription Concerta],
  [2013-11-14],

  [[kardiologe-2014] #label("kardiologe-2014")],
  [2014-10-22\_Kardiologe.PDF + 2014-12-29\_Kardiologe.pdf (2014/) — Consultations cardiologiques],
  [2014],

  [[appendicite-2017] #label("appendicite-2017")],
  [2017-08-16\_Appendicite\_Grandjean\_Attest.pdf — Attestation appendicectomie (Dr Mauel, Vivalia Arlon ; Dr Grandjean assistant)],
  [2017-08-16],

  [[grossesse-2017] #label("grossesse-2017")],
  [Dossier 2017-03\_Grossesse\_Christine/ — Première grossesse],
  [2017],

  [[naissance-aaron-2022] #label("naissance-aaron-2022")],
  [2022-11-14\_BE\_CAN\_Vivalia\_Hosp\_NaissanceAaron.pdf (2022NEW/) — Naissance Aaron (Vivalia)],
  [2022-11-14],

  [[attest-copus-2024] #label("attest-copus-2024")],
  [2024-10-07\_Attestation-Copus.pdf + Attestation-20240223-Copus.pdf (2024/) — Attestations Dr Copus],
  [2024],

  [[attest-genin-2024] #label("attest-genin-2024")],
  [Attestation-20240318-Genin.pdf + Attestation-20240415-Genin.pdf (2024/) — Attestations Dr Genin],
  [2024],

  [[chir-refractive-2018] #label("chir-refractive-2018")],
  [2018-10-04\_CertificatJustificatif\_ChirurgieRefractive\_Christine.pdf + 2019-02-12\_DeclHospitalisation\_OpOeuil.pdf],
  [2018--2019],
)
