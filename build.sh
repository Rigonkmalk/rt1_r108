#!/usr/bin/env bash
#
# build.sh — Conversion unifiée Markdown -> PDF pour tous les TP du dépôt.
#            pandoc écrit du LaTeX, tectonic le compile.
#
# Usage :
#   ./build.sh                      # tous les .md du dépôt (sauf exclusions)
#   ./build.sh tp3                  # tous les .md du dossier tp3
#   ./build.sh tp3/tp3_scripts.md   # un fichier précis
#   ./build.sh -f                   # force la recompilation (ignore les dates)
#   ./build.sh -t breezedark tp4    # autre thème de coloration syntaxique
#   ./build.sh -m 2cm               # autre marge
#
set -euo pipefail

# Le script travaille toujours depuis la racine du dépôt (son propre dossier).
cd "$(dirname "${BASH_SOURCE[0]}")"
ROOT="$PWD"

STYLE="$ROOT/style-code.tex"
THEME="tango"          # voir : pandoc --list-highlight-styles
MARGIN="2.5cm"
FORCE=0

# Fichiers jamais compilés automatiquement (compilables en les nommant explicitement).
EXCLUDE=("README.md")

usage() { sed -n '3,13p' "$0" | sed 's/^# \{0,1\}//'; exit "${1:-0}"; }

while getopts ":ft:m:h" opt; do
  case "$opt" in
    f) FORCE=1 ;;
    t) THEME="$OPTARG" ;;
    m) MARGIN="$OPTARG" ;;
    h) usage 0 ;;
    \?) echo "Option inconnue : -$OPTARG" >&2; usage 1 ;;
  esac
done
shift $((OPTIND - 1))

command -v pandoc   >/dev/null || { echo "pandoc introuvable : brew install pandoc" >&2; exit 1; }
command -v tectonic >/dev/null || { echo "tectonic introuvable : brew install tectonic" >&2; exit 1; }
[ -f "$STYLE" ]                || { echo "Feuille de style manquante : $STYLE" >&2; exit 1; }

# --- Constitution de la liste des sources ---------------------------------
files=()
if [ $# -gt 0 ]; then
  for arg in "$@"; do
    if [ -d "$arg" ]; then
      while IFS= read -r f; do files+=("$f"); done \
        < <(find "$arg" -name '*.md' -not -path '*/.git/*' | sed 's|^\./||' | sort)
    elif [ -f "$arg" ]; then
      files+=("$arg")
    else
      echo "  ! $arg introuvable, ignoré" >&2
    fi
  done
else
  while IFS= read -r f; do
    base="$(basename "$f")"
    skip=0
    for ex in "${EXCLUDE[@]}"; do [ "$base" = "$ex" ] && skip=1; done
    [ "$skip" -eq 0 ] && files+=("$f")
  done < <(find . -name '*.md' -not -path './.git/*' | sed 's|^\./||' | sort)
fi

[ ${#files[@]} -gt 0 ] || { echo "Aucun fichier .md à compiler." >&2; exit 1; }

# --- Compilation -----------------------------------------------------------
built=0; skipped=0; failed=0

for src in "${files[@]}"; do
  out="${src%.md}.pdf"

  # Recompile seulement si le .md est plus récent que le .pdf (sauf -f).
  if [ "$FORCE" -eq 0 ] && [ -f "$out" ] && [ "$out" -nt "$src" ]; then
    printf '  =  %-34s (à jour)\n' "$src"
    skipped=$((skipped + 1))
    continue
  fi

  printf '  -> %-34s => %s\n' "$src" "$out"
  pandoc "$src" -o "$out" \
    --pdf-engine=tectonic \
    -H "$STYLE" \
    --syntax-highlighting="$THEME" \
    -V geometry:margin="$MARGIN" \
    2>&1 | grep -viE 'lineno\.sty|ToUnicode CMap|warnings were issued|build may not be reproducible' || true

  if [ -f "$out" ] && [ "$out" -nt "$src" ]; then
    built=$((built + 1))
  else
    echo "     ! échec de compilation" >&2
    failed=$((failed + 1))
  fi
done

echo
echo "Terminé : $built compilé(s), $skipped à jour, $failed échec(s)."
[ "$failed" -eq 0 ]
