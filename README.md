# Modèles de thèse / mémoire — Université de Sherbrooke (géomatique)

Gabarits de rédaction pour les études supérieures en géomatique appliquée à
l'Université de Sherbrooke, en **LaTeX** et en **Typst**. Conversion Typst du
gabarit LaTeX de **Philippe Apparicio**.

📦 **[Télécharger les modèles Typst prêts à l'emploi (dernière version)](https://github.com/sfoucher/udes-geomatique-templates/releases/latest)** — archives avec README français et PDF d'exemple.

## Les modèles

| Modèle | Pour | Dossier | Compilation |
|---|---|---|---|
| **Mémoire traditionnel** | maîtrise | [`memoire_traditionnel/`](memoire_traditionnel/) | `typst compile main.typ` |
| **Mémoire par article** | maîtrise | [`memoire_par_article/`](memoire_par_article/) | `typst compile main.typ` |
| **Thèse traditionnelle** | doctorat | [`these_traditionnelle/`](these_traditionnelle/) | `typst compile main.typ` |
| **Thèse par articles** | doctorat (parties + articles) | [`these_par_articles/`](these_par_articles/) | `typst compile --root .. main.typ` |
| Essai de maîtrise | maîtrise (essai) | [`essai/`](essai/) | `typst compile --root .. main.typ` |

Les trois premiers modèles sont **autonomes** : chaque dossier embarque sa propre
feuille de style `styles.typ` et son style bibliographique APA français
(`universite-de-montreal-apa.csl`) — il se compile seul avec `typst compile main.typ`.

`essai/` et `these_par_articles/` partagent le modèle [`udes-thesis.typ`](udes-thesis.typ) à la
racine, importé via `../udes-thesis.typ` ; ils demandent donc l'option `--root ..`.

## Compiler (Typst)

```sh
cd memoire_traditionnel      # modèle autonome
typst compile main.typ
```

Première compilation : Typst télécharge une fois les paquets `@preview`
(`glossarium`, `codly`, `codly-languages`, `lovelace`) — Internet requis une
seule fois.

Détails, fonctions du modèle et écarts vs LaTeX : [`README-typst.md`](README-typst.md).

## Pour les étudiant·e·s

Des archives prêtes à l'emploi (Typst uniquement + README en français + PDF
d'exemple) sont disponibles dans la
[dernière version (*release*)](https://github.com/sfoucher/udes-geomatique-templates/releases/latest) :
`Geomatique_memoire_traditionnel_typst.zip`, `Geomatique_memoire_par_article_typst.zip`,
`Geomatique_these_traditionnelle_typst.zip`, ainsi que
`Geomatique_essai_typst.zip` et `Geomatique_these_par_articles_typst.zip`.

## Crédits

Gabarit LaTeX original : Philippe Apparicio (Université de Sherbrooke).
Conversion Typst : ce dépôt.
