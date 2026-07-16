# Modèles Typst — thèse / mémoire / essai UdeS (géomatique)

Conversion Typst des deux modèles LaTeX de Philippe Apparicio (Université de
Sherbrooke, géomatique appliquée).

## Structure

```
udes-thesis.typ        ← modèle partagé (styles + fonctions) importé par les deux
essai/                 ← mémoire / essai de maîtrise
  main.typ             ← point d'entrée
  auxiliaires/acronymes.typ
  fichiers_introductifs/*.typ
  chapitres/*.typ
  figures/  logoUdes/  Scripts_Programmes/  bibliographie.bib   (réutilisés du LaTeX)
these/                 ← thèse par articles (mêmes styles + pages de « Partie » + articles)
  main.typ, ...
```

## Compilation

Les deux `main.typ` importent `../udes-thesis.typ`, il faut donc pointer la
racine du projet sur le dossier parent :

```sh
# depuis essai/  (ou these/)
typst compile --root .. main.typ main.pdf
# ou en watch
typst watch --root .. main.typ
```

Première compilation : Typst télécharge les paquets `@preview` utilisés
(glossarium, codly, codly-languages, lovelace) — connexion Internet requise une
seule fois, ensuite tout est en cache.

## Ce qu'il faut modifier

- **Page titre** : `fichiers_introductifs/page_titre.typ` (titre, auteur, date, option du bandeau).
- **Métadonnées** : `titre` / `auteur` dans `main.typ` (`#show: thesis.with(...)`).
- **Acronymes** : `auxiliaires/acronymes.typ` (liste de dictionnaires). Usage dans le texte : `#gls("ndvi")`.
- **Bibliographie** : `bibliographie.bib` (BibTeX standard, style APA).
- **Contenu** : `chapitres/*.typ`. Le texte de remplissage utilise `#lorem(n)`.

## Fonctions du modèle (`udes-thesis.typ`)

| Fonction | Rôle |
|---|---|
| `thesis(titre, auteur, body)` | règle `#show:` principale (polices, page, titres, couleurs) |
| `page-titre(...)` | page de titre avec bandeau vert |
| `partie(numero, titre)` | page de « Partie » (thèse par articles) |
| `chapitre-nn(titre)` | chapitre non numéroté, présent dans la table des matières |
| `code-source(read("..."), langue, légende, etiquette: <...>)` | bloc de code (liste des scripts) |
| `algorithme(légende, pseudocode-list(...), etiquette: <...>)` | algorithme numéroté (liste des algorithmes) |
| `citation-bloc(body)` | citation en retrait |

Renvois : `@etiquette` (numéro seul, comme `\ref`). Citations : `#cite(<clé>)` ou
`#cite(<clé>, form: "prose")` (équivaut à `\textcite`).

## Écarts connus vs. LaTeX

- Les mots-clés d'algorithme sont en français (« Entrée / pour chaque / tant que »).
  Le modèle LaTeX affichait l'anglais (algorithm2e non localisé).
- Numéros de page ± quelques unités : `#lorem` ne produit pas exactement le même
  volume de texte que `\lipsum`.
- Chaînes bibliographiques issues du style APA de Typst (CSL) plutôt que de
  biblatex — quasi identiques.
- Police mathématique : New Computer Modern Math (Libertinus Math non fournie
  avec Typst).
