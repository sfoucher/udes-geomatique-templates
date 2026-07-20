# Modèle Typst — Essai de maîtrise (UdeS, géomatique appliquée)

Modèle **Typst** pour la rédaction d'un essai de maîtrise au
Département de géomatique appliquée de l'Université de Sherbrooke. Adapté du
modèle LaTeX de Philippe Apparicio.
Conversionr réalisée par Samuel Foucher

> Typst est une alternative moderne à LaTeX : compilation instantanée, syntaxe
> plus simple. Aucune installation LaTeX n'est requise.

---

## 1. Démarrage rapide

### Option A — En ligne (le plus simple, rien à installer)

1. Créez un compte gratuit sur **<https://typst.app>**.
2. *New project* → *Upload files* → glissez **tout le contenu de ce dossier**.
3. Ouvrez `main.typ`. L'aperçu PDF se met à jour automatiquement à droite.

### Option B — Sur votre ordinateur

1. Installez Typst : <https://github.com/typst/typst/releases> (ou
   `winget install Typst.Typst` sous Windows, `brew install typst` sous macOS).
2. Dans un terminal, placez-vous dans ce dossier et lancez :

   ```sh
   typst compile main.typ            # produit main.pdf
   # ou, pour recompiler à chaque sauvegarde :
   typst watch main.typ
   ```

> **Première compilation :** Typst télécharge automatiquement quatre extensions
> (`glossarium`, `codly`, `codly-languages`, `lovelace`). Une connexion Internet
> est nécessaire **une seule fois** ; ensuite, tout fonctionne hors ligne.

---

## 2. Que faut-il modifier ?

| Vous voulez changer… | Fichier à ouvrir |
|---|---|
| Le **titre** et l'**auteur** | `main.typ` (bloc `#show: thesis.with(...)`) |
| La **page titre** (bandeau, date, grade) | `fichiers_introductifs/page_titre.typ` |
| Le **jury** | `fichiers_introductifs/jury.typ` |
| Le **résumé** / *abstract* | `fichiers_introductifs/resume_abstract.typ` |
| Les **acronymes** | `auxiliaires/acronymes.typ` |
| La **bibliographie** | `bibliographie.bib` (format BibTeX standard) |
| Le **contenu des chapitres** | `chapitres/1_introduction.typ`, etc. |

Le texte de remplissage (`#lorem(80)`) est du faux latin : **supprimez-le** au
fur et à mesure de votre rédaction.

---

## 3. Comment faire les choses courantes

### Titres
```typ
= Titre de chapitre
== Section
=== Sous-section
==== Sous-sous-section
```

### Renvois (références croisées)
Posez une étiquette avec `<...>` puis renvoyez-y avec `@...` :
```typ
== Mise en contexte <sec:contexte>
Comme vu à la section~@sec:contexte, ...      // affiche « section 1.1 »
```
Conventions d'étiquettes : `chap:`, `sec:`, `subsec:`, `fig:`, `tab:`, `eq:`, `algo:`, `code:`.

### Citations (bibliographie)
```typ
#cite(<bonn1992precis>)                       // (Bonn & Rochon, 1992)
#cite(<bonn1992precis>, form: "prose")        // Bonn et Rochon (1992)
#cite(<bonn1992precis>, supplement: [p.~69])  // ajoute la page
```

### Acronymes
Définis dans `auxiliaires/acronymes.typ`, insérés avec `#gls("clé")`. La première
occurrence affiche le nom complet, les suivantes seulement le sigle :
```typ
Le #gls("ndvi") est un indice de végétation.  // 1re fois : « … (NDVI) », ensuite : « NDVI »
```

### Figure
```typ
#figure(
  image("figures/kernels.png", width: 80%),
  caption: [Ma légende],
) <fig:kernels>
```

### Tableau
```typ
#figure(
  caption: [Ma légende],
  table(
    columns: 3,
    table.hline(),
    [*Col A*], [*Col B*], [*Col C*],
    table.hline(),
    [x], [y], [z],
    table.hline(),
  ),
) <tab:mon_tableau>
```

### Équation
```typ
$ "RMSE" = sqrt(frac(sum_(i=1)^n (y_i - hat(y)_i)^2, n)) $ <eq:rmse>
```

### Code source (annexes)
```typ
#code-source(read("Scripts_Programmes/CodePython1.py"), "python",
  [Ma légende], etiquette: <code:py1>)
```
Le `read("...")` doit être écrit dans le **même fichier** que l'appel (chemin relatif à ce fichier).

### Algorithme
```typ
#algorithme([Ma légende], pseudocode-list(booktabs: true)[
  + *pour chaque* élément *faire*
    + traiter l'élément
  + *retourner* résultat
]) <algo:mon_algo>
```

---

## 4. Structure des fichiers

```
main.typ                    Point d'entrée — l'ordre des chapitres est ici
feuille_style.typ             Feuille de style (à ne pas modifier en principe)
auxiliaires/acronymes.typ   Liste des acronymes
fichiers_introductifs/      Page titre, jury, résumé, remerciements, etc.
chapitres/                  Introduction, méthodo, résultats, … , annexes
figures/                    Images
logoUdes/                   Logos officiels
Scripts_Programmes/         Codes source affichés en annexe
bibliographie.bib           Références (BibTeX)
```

---

## 5. Astuces

- **Erreur de compilation ?** Le message indique le fichier et la ligne. Souvent
  une accolade `{}` ou un crochet `[]` non fermé.
- **Une liste optionnelle est vide** (aucun algorithme, aucun script) ? Mettez en
  commentaire les lignes correspondantes dans `main.typ` (préfixe `//`).
- **Documentation Typst :** <https://typst.app/docs/>

Bonne rédaction!
