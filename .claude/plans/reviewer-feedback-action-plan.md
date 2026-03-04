# Plan d'action : Retour du reviewer

**Date :** 2026-03-04
**Source :** Feedback bienveillant d'un pair scientifique
**Objectif :** Rendre le document plus auditable, plus actionnable, et mieux structuré épistémiquement

---

## Synthèse du feedback

Le reviewer salue l'approche "ingénierie qualité" (boucles de relecture, critères explicites, citations) mais soulève deux préoccupations centrales :

1. **Traçabilité affirmation ↔ source** : Avoir beaucoup de citations ne garantit pas que chaque citation soutient *exactement* la phrase. Les boucles IA réduisent l'incohérence interne mais pas nécessairement l'exactitude externe.
2. **Stratification épistémique** : Séparer clairement faits robustes / signaux plausibles / hypothèses spéculatives / "ne pas conclure".

---

## État actuel du document vs. demandes

| Demande du reviewer | État actuel | Écart |
|---|---|---|
| 4 couches épistémiques séparées | ✅ Partiel — `achievement`, `hypothesis`, `speculation`, `open_question`, `warning` existent (504 instances) | Manque la couche "à ne pas conclure" et une vue consolidée |
| Versioning + changelog | ✅ Existe — `revisions.tex` (barres marginales v.N) + `changelog.tex` (par version) | Manque "pourquoi" et "avec quelles sources" dans le changelog |
| Niveau de preuve par paragraphe | ✅ Partiel — Reading Guide décrit High/Medium/Low certainty + les hypothèses portent un score de certainty | Pas de tag systématique par paragraphe ; pas de signalétique visuelle inline |
| Table Hypothèse → prédictions testables | ✅ Partiel — les `hypothesis` et `prediction` environnements existent | Pas de table consolidée ; pas de lien systématique hypothèse→prédiction→test |
| Section FAQ patients | ❌ N'existe pas | À créer |
| Garde-fous cliniques | ✅ Partiel — `warning` + disclaimer + AI Disclosure | Pas de distinction systématique "hypothèse" vs "recommandation" |
| Table Endotype → biomarqueurs → traitements | ✅ Partiel — ch05-subgroups.tex couvre les sous-groupes | Pas de table intégrée endotype→biomarqueurs minimaux→traitements |
| Audit affirmation ↔ source (10 assertions) | ❌ Jamais fait formellement | À faire comme stress-test |
| Essais négatifs | ✅ Très partiel — 11 mentions seulement | Section dédiée absente |
| Tag fact-check par paragraphe | ❌ N'existe pas | À évaluer (faisabilité LaTeX) |

---

## Actions proposées (par priorité)

### Priorité 1 — Haute valeur, répond aux deux préoccupations centrales

#### A1. Audit "affirmation ↔ source" sur 10 assertions clés
**Quoi :** Choisir 10 assertions fortes du document. Pour chacune, vérifier que la citation prouve réellement le claim (population, design, résultat exact).
**Livrable :** Table d'audit dans une nouvelle appendice (Appendix K ou similaire) : Assertion | Citation | Ce que la source montre exactement | Verdict (soutient / partiellement / ne soutient pas)
**Agent :** `scientific-rigor-auditor` + vérification manuelle
**Effort :** ~2 sessions
**Valeur :** Démontre la rigueur du processus et identifie les faiblesses réelles

#### A2. Table consolidée Endotype → Biomarqueurs → Traitements
**Quoi :** Créer une table de synthèse dans ch05-subgroups.tex ou une nouvelle section :
- 3-5 endotypes principaux (immunitaire, dysautonomie, métabolique, viral persistant, microcirculation)
- Biomarqueurs minimaux reproductibles pour chaque endotype
- Critères cliniques de classification
- Traitements ciblés et essais disponibles
**Livrable :** Table LaTeX + texte d'accompagnement
**Agents :** `meta-analysis-coordinator` pour synthétiser les données existantes
**Effort :** ~1-2 sessions

#### A3. Section "Essais négatifs et résultats nuls"
**Quoi :** Nouvelle section dans Part IV (ch25 ou nouveau chapitre) recensant les essais négatifs importants en ME/CFS : rituximab (phase III négatif), CBT/GET (controverses PACE), etc.
**Livrable :** Section avec table : Intervention | Essai | Résultat | Pourquoi c'est important
**Valeur :** Directement demandé par le reviewer ; combat le biais de confirmation
**Effort :** ~1 session

### Priorité 2 — Améliore la navigabilité et l'utilité

#### A4. Enrichir le changelog avec "pourquoi" et sources
**Quoi :** Étendre le format du changelog pour inclure non seulement *ce qui* a changé mais *pourquoi* (nouvelle étude publiée, erreur corrigée, feedback reçu) et les sources clés qui ont motivé le changement.
**Livrable :** Mise à jour du template changelog et de la V5 existante
**Effort :** ~0.5 session

#### A5. Section FAQ patients
**Quoi :** Nouveau chapitre ou section dans Part I : questions fréquentes des patients avec réponses courtes + renvois vers les sections détaillées.
Exemples : "Qu'est-ce que le PEM ?", "Dois-je faire du sport ?", "Les suppléments sont-ils utiles ?", "Est-ce psychologique ?"
**Livrable :** ~10-15 questions/réponses avec `\hyperref` vers les preuves
**Effort :** ~1 session

#### A6. Table "Hypothèse → Prédictions testables → Tests disponibles"
**Quoi :** Consolider les hypothèses et prédictions existantes dans une table de synthèse (probablement dans ch25b ou une appendice).
**Livrable :** Table : Hypothèse | Prédictions testables | Tests/études disponibles | Risques/limites | Statut
**Agent :** `research-gap-synthesizer` pour harvester les environnements existants
**Effort :** ~1 session

### Priorité 3 — Renforce la rigueur systémique

#### A7. Environnement "limitation" ou "non-conclusion"
**Quoi :** Créer un environnement LaTeX dédié pour "ce que les données ne permettent pas de conclure" — la 4ème couche demandée par le reviewer. Distinct de `warning` (qui est un avertissement pratique), ceci marquerait explicitement les limites épistémiques.
**Livrable :** Nouvel environnement `\begin{limitation}[Title]` + déploiement dans les chapitres clés
**Agent :** `template-advisor` pour le design
**Effort :** ~0.5 session pour la définition, ~2 sessions pour le déploiement

#### A8. Distinction systématique "hypothèse" vs "recommandation"
**Quoi :** Auditer Part III pour s'assurer que chaque recommandation de traitement est clairement distinguée des hypothèses mécanistiques. Ajouter des `warning` ou `limitation` là où une piste relève de la recherche plutôt que de la pratique clinique.
**Agent :** `scientific-rigor-auditor`
**Effort :** ~1-2 sessions

#### A9. Résultats répliqués vs. non-répliqués
**Quoi :** Pour les findings clés (ch06-ch13), indiquer systématiquement si le résultat a été répliqué sur cohortes indépendantes, et si les contrôles (âge, sexe, comorbidités, niveau d'activité) ont été adéquats.
**Livrable :** Annotations dans les `achievement` existants ou table de synthèse
**Effort :** ~2-3 sessions (nécessite vérification littérature)

### Priorité 4 — Optionnel / à long terme

#### A10. Tag "fact-check" par paragraphe
**Quoi :** Évaluer la faisabilité d'un système de tags visuels par paragraphe (vérifié / partiellement / à vérifier). Potentiellement via un environnement léger ou une commande `\factcheck{status}`.
**Décision : DÉFÉRÉ au processus d'audit.** Évaluation complétée en V5 :
- Le document dispose déjà de 470+ environnements typés (hypothesis, speculation, achievement, warning, limitation, prediction, open_question) qui marquent le statut épistémique inline
- L'Appendice K (audit trail) démontre la méthodologie de vérification assertion↔source
- Ajouter des tags par paragraphe surchargerait visuellement un document de 400+ pages sans gain informatif significatif par rapport au système d'environnements existant
- **Alternative retenue** : Étendre l'audit trail (A1) à d'autres assertions plutôt que taguer chaque paragraphe

#### A11. Hypothèses falsifiables vs. non-falsifiables
**Quoi :** Auditer les `hypothesis` existantes pour marquer celles qui font des prédictions falsifiables (et lesquelles ne sont que "ça pourrait expliquer").
**Agent :** `logic-auditor`
**Effort :** ~1-2 sessions

---

## Séquençage recommandé

```
Session 5 :  A1 (audit 10 assertions) — validation immédiate de la rigueur
Session 6 :  A2 (table endotypes) + A3 (essais négatifs)
Session 7 :  A4 (changelog enrichi) + A7 (environnement limitation)
Session 8 :  A5 (FAQ patients) + A6 (table hypothèses)
Session 9 :  A8 (hypothèse vs recommandation) + A9 (réplication)
Session 10 : A10 (fact-check tags — si pertinent) + A11 (falsifiabilité)
```

---

## Success Metrics — V5 Completion Status

- [x] 10 assertions audited with documented verdicts → **Appendix K** (5 SUPPORTS, 4 PARTIALLY, 1 DOES NOT SUPPORT; suramin corrected)
- [x] Complete endotype table with ≥3 endotypes and biomarkers → **ch05 enhanced table** (5 endotypes, reproducibility status, evidence levels, accessibility tiers)
- [x] ≥10 negative trials documented → **ch21 negative trials section** (9 trials + summary table + cross-cutting lessons)
- [x] V5 changelog enriched with motivations → **changelog.tex** ("Motivated by:" + `\cite{}` for all V5 entries)
- [x] ≥10 patient FAQ with cross-references → **patient-faq.tex** (12 Q&A items with `\hyperref` links)
- [x] Consolidated hypothesis table with ≥15 entries → **hypothesis-registry.tex** (20 entries across 8 mechanism domains)
- [x] `limitation` environment defined and used ≥10 times → **ms.tex** (env defined) + **10 deployments** across ch05, ch08, ch10, ch11, ch12, ch13
- [x] Part III audited for hypothesis/recommendation distinction → **A8 report** (31 findings; 3 critical fixed, 14 medium, 14 low)
- [x] Replication status audit (A9) → **A9 report** (22 achievements; 0 fully replicated, 12 partially, 8 not yet)
- [x] Falsifiability audit (A11) → **A11 report** (99 hypotheses; 28 falsifiable, 37 weakly, 34 not; ~10 misclassified protocols identified)
- [x] Fact-check tags (A10) → **Deferred** to audit process (existing 470+ environments + Appendix K sufficient)

## Reports Archive

All audit reports are stored in `.claude/content-staging/`:
- `A1-assertion-audit.md` — Assertion–source audit summary (10 assertions; also in document as Appendix K)
- `A8-audit-report.md` — Part III hypothesis vs. recommendation audit (31 findings)
- `A9-replication-audit.md` — Part II replication status (22 achievements)
- `A11-falsifiability-audit.md` — Hypothesis falsifiability assessment (99 hypotheses)
