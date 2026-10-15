#!/usr/bin/env bash
# Run locally in an environment with a full TeX installation. No network or data IO.
set -euo pipefail
ROOT="$(CDPATH='' cd -- "$(dirname -- "$0")/.." && pwd)"
for cmd in xelatex biber; do
  command -v "$cmd" >/dev/null 2>&1 || { echo "Missing command: $cmd" >&2; exit 1; }
done
cd "$ROOT/paper"
xelatex -interaction=nonstopmode -halt-on-error main.tex
biber main
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
printf '\nCompiled: %s/paper/main.pdf\n' "$ROOT"
