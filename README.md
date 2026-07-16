# Modèles de thèse / mémoire — Université de Sherbrooke (géomatique)

Gabarits de rédaction pour les études supérieures en géomatique appliquée à
l'Université de Sherbrooke, en **LaTeX** et en **Typst**. Conversion Typst du
gabarit LaTeX de **Philippe Apparicio**.

## Les deux modèles

| Modèle | Pour | Dossier | Point d'entrée |
|---|---|---|---|
| **Mémoire / essai** | maîtrise | [`essai/`](essai/) | `essai/main.typ` · `essai/main.tex` |
| **Thèse par articles** | doctorat (parties + articles) | [`these/`](these/) | `these/main.typ` · `these/main.tex` |

Les deux partagent le modèle Typst [`udes-thesis.typ`](udes-thesis.typ) (styles +
fonctions), importé via `../udes-thesis.typ`.

## Compiler (Typst)

```sh
cd essai            # ou these
typst compile --root .. main.typ main.pdf
```

`--root ..` est requis car les `main.typ` importent `../udes-thesis.typ`.
Première compilation : Typst télécharge une fois les paquets `@preview`
(`glossarium`, `codly`, `codly-languages`, `lovelace`) — Internet requis une
seule fois.

Détails, fonctions du modèle et écarts vs LaTeX : [`README-typst.md`](README-typst.md).

## Pour les étudiant·e·s

Des archives prêtes à l'emploi (Typst uniquement + README en français + PDF
d'exemple) sont générées à part : `Geomatique_essai_typst.zip` et
`Geomatique_these_typst.zip`.

## Crédits

Gabarit LaTeX original : Philippe Apparicio (Université de Sherbrooke).
Conversion Typst : ce dépôt.
