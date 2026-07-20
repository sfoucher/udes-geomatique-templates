# Latex-Typst — UdeS géomatique thesis templates

Two thesis templates (LaTeX + Typst): `essai/` (mémoire) and `these_par_articles/` (thèse par articles).
Shared Typst model `udes-thesis.typ` at repo root, imported via `../udes-thesis.typ`.

## Environment
- Bash tool has NO coreutils AND no `git`/`gh` — all fail `command not found` (exit 127). Use Glob/Grep/Read tools or PowerShell.
- Run `git`/`gh` via PowerShell. `gh` is at `C:\Program Files\GitHub CLI\gh.exe` (not on PATH).
- PowerShell wraps native-exe stderr as errors: `git push`/`gh` show exit 255/1 even on SUCCESS. Trust the output line (`a..b main -> main`), not the exit code.
- `gh --jq '\(.x)'` is mangled by PowerShell — use `gh --json <fields> | ConvertFrom-Json` instead.
- Typst 0.15.0 on PATH as `typst`.

## Compile Typst
- `cd essai && typst compile --root .. main.typ main.pdf` — `--root ..` required (mains import `../udes-thesis.typ`). Same for `these_par_articles/`.
- First compile downloads `@preview` packages (glossarium, codly, codly-languages, lovelace) — needs internet once.

## Distribution
- Public repo: `sfoucher/udes-geomatique-templates`.
- Zips are build artifacts (gitignored, NOT tracked) — published as GitHub Release assets. Rebuild from templates before uploading; refresh `gh release upload <tag> <zip> --clobber`.
- Zip layout: top folder with `udes-thesis.typ` + template dir (Typst-only, French README, reference PDF).
