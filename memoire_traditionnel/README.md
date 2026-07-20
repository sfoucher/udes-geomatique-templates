# Modèle Typst — Mémoire de maîtrise (traditionnel)

Modèle **Typst** pour la rédaction d'un mémoire de maîtrise (format traditionnel)
au Département de géomatique appliquée de l'Université de Sherbrooke. Adapté du
modèle LaTeX de Philippe Apparicio.

> Typst est une alternative moderne à LaTeX : compilation instantanée, syntaxe
> plus simple, aucune installation LaTeX requise. Ce dossier est autonome.

## 1. Démarrage rapide

**Option A — En ligne (rien à installer)**
1. Créez un compte gratuit sur <https://typst.app>.
2. *New project* → *Upload files* → glissez **tout le contenu de ce dossier**.
3. Ouvrez `main.typ` ; l'aperçu PDF se met à jour automatiquement.

**Option B — Sur votre ordinateur**
1. Installez Typst : <https://github.com/typst/typst/releases>
   (`winget install Typst.Typst` sous Windows, `brew install typst` sous macOS).
2. Dans ce dossier :
   ```sh
   typst compile main.typ      # produit main.pdf
   typst watch main.typ        # recompile à chaque sauvegarde
   ```

> **Première compilation :** Typst télécharge une fois les extensions
> (`glossarium`, `codly`, `codly-languages`, `lovelace`). Internet requis une
> seule fois, ensuite tout fonctionne hors ligne.

## 2. Que faut-il modifier ?

| Pour changer… | Fichier |
|---|---|
| Titre et auteur | `main.typ` (bloc `#show: thesis.with(...)`) |
| Page titre (bandeau, grade, date) | `fichiers_introductifs/page_titre.typ` |
| Jury, résumé, remerciements… | `fichiers_introductifs/*.typ` |
| Acronymes (`#gls("clé")`) | `auxiliaires/sigles.typ` |
| Bibliographie | `bibliographie.bib` (BibTeX ; style APA-fr via le fichier `.csl`) |
| Contenu des chapitres | `chapitres/1_introduction.typ`, … |

Le texte de remplissage `#lorem(...)` est du faux latin : remplacez-le par le vôtre.

## 3. Aide-mémoire

- **Renvoi :** étiquette `<sec:x>` puis `@sec:x`
- **Citation :** `#cite(<clé>)` ou `#cite(<clé>, form: "prose")`
- **Acronyme :** `#gls("ndvi")` (1re fois : nom complet, ensuite : sigle)
- **Figure :** `#figure(image("figures/kernels.png"), caption: [Légende]) <fig:x>`
- **Code (annexe) :** `#code-source(read("Scripts_Programmes/CodePython1.py"), "python", [Légende], etiquette: <code:py>)`

## 4. Structure

```
main.typ                    Point d'entrée (ordre des chapitres)
styles.typ                  Feuille de style (ne pas modifier en principe)
universite-de-montreal-apa.csl   Style bibliographique APA (français)
auxiliaires/sigles.typ      Liste des acronymes
fichiers_introductifs/      Page titre, jury, résumé, etc.
chapitres/                  Introduction … conclusion, annexes
figures/  logoUdes/  Scripts_Programmes/  bibliographie.bib
```

Documentation Typst : <https://typst.app/docs/>. Bonne rédaction !
