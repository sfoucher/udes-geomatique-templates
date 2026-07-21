# Modèle Typst — Mémoire de maîtrise par article

Modèle **Typst** pour la rédaction d'un mémoire de maîtrise **par article** au
Département de géomatique appliquée de l'Université de Sherbrooke. Adapté du
modèle LaTeX de Philippe Apparicio. Conversion réalisée par Samuel Foucher.

> Typst est une alternative moderne à LaTeX : compilation instantanée, syntaxe
> plus simple, aucune installation LaTeX requise. Ce dossier est autonome.

---

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

**Option C — Avec Visual Studio Code (recommandé pour un usage avancé)**

1.  Installez Typst en ligne de commande (voir Option B) et [Visual
    Studio Code](https://code.visualstudio.com/).
2.  Dans VS Code, ouvrez l'onglet *Extensions* (`Ctrl+Shift+X` /
    `Cmd+Shift+X`) et installez **Tinymist Typst** (extension
    officielle, maintenue par l'équipe Typst — recherchez « Typst » dans
    le Marketplace).
3.  Ouvrez ce dossier du projet typst dans VS Code (*File → Open
    Folder…*).
4.  Ouvrez `main.typ`.
5.  Installer le [plugin Tinymist
    Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist)
    dans Visual Studio Code.
6.  Pour obtenir l'aperçu du PDF, menu View / Command Palette / Typst et
    choisir Typst Preview.

> **Astuce :** l'aperçu en ligne (Option A) reste utile pour partager
> rapidement le PDF ou travailler depuis un poste sans installation,
> mais VS Code + Tinymist offre une meilleure expérience pour la
> rédaction au long cours (fichiers multiples, recherche, Git, etc.).

---

## 2. Que faut-il modifier ?

| Pour changer… | Fichier |
|---|---|
| Titre et auteur | `main.typ` (bloc `#show: thesis.with(...)`) |
| Page titre (bandeau, grade, date) | `fichiers_introductifs/page_titre.typ` |
| Jury, résumé, remerciements… | `fichiers_introductifs/*.typ` |
| L'**article** (revue, auteurs, résumé, contributions) | `chapitres/4_article.typ` |
| sigle (`#gls("clé")`) | `auxiliaires/sigles.typ` |
| Bibliographie | `bibliographie.bib` (BibTeX ; style APA-fr via le fichier `.csl`) |
| Contenu des chapitres | `chapitres/1_introduction.typ`, … |

Le texte de remplissage `#lorem(...)` est du faux latin : remplacez-le par le vôtre.
Pour un article rédigé en anglais : `#set text(lang: "en")` au début du chapitre.

## 3. Aide-mémoire

- **Renvoi :** étiquette `<sec:x>` puis `@sec:x`
- **Citation :** `#cite(<clé>)` ou `#cite(<clé>, form: "prose")`
- **Sigle :** `#gls("ndvi")` (1re fois : nom complet, ensuite : sigle)
- **Figure :** `#figure(image("figures/kernels.png"), caption: [Légende]) <fig:x>`
- **Code (annexe) :** `#code-source(read("Scripts_Programmes/CodePython1.py"), "python", [Légende], etiquette: <code:py>)`

## 4. Structure

```
main.typ                    Point d'entrée (ordre des chapitres)
styles.typ                  Feuille de style (ne pas modifier en principe)
universite-de-montreal-apa.csl   Style bibliographique APA (français)
auxiliaires/sigles.typ      Liste des acronymes
fichiers_introductifs/      Page titre, jury, résumé, etc.
chapitres/                  Introduction, revue, méthodo, article, discussion, conclusion, annexes
figures/  logoUdes/  Scripts_Programmes/  bibliographie.bib
```

Documentation Typst : <https://typst.app/docs/>. Bonne rédaction !
