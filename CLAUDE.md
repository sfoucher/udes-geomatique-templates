# Latex-Typst — UdeS géomatique thesis templates

Two thesis templates (LaTeX + Typst): `essai/` (mémoire) and `these/` (thèse par articles).
Shared Typst model `udes-thesis.typ` at repo root, imported via `../udes-thesis.typ`.

## Environment
- Bash tool has NO coreutils — `ls`/`head`/`cat`/`find|head` fail with `command not found` (exit 127). Use Glob/Grep/Read tools or PowerShell instead.
- Typst 0.15.0 on PATH as `typst`.

## Compile Typst
- `cd essai && typst compile --root .. main.typ main.pdf` — `--root ..` required (mains import `../udes-thesis.typ`). Same for `these/`.
- First compile downloads `@preview` packages (glossarium, codly, codly-languages, lovelace) — needs internet once.

## Distribution zips (repo root)
- LaTeX: `Geomatique_essai.zip`, `Geomatique_these_par_articles.zip`
- Typst (student packages, French README): `Geomatique_essai_typst.zip`, `Geomatique_these_typst.zip`
