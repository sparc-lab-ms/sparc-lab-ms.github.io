#!/bin/bash
# Double-click this in Finder to stage, commit and push the SPARC site.
# Renames the .command extension so macOS opens it in Terminal automatically.

set -e
cd "$(dirname "$0")"

echo "==> Working in $(pwd)"

# Clean up stale git locks and oversized artefacts
rm -f .git/index.lock
rm -f static/img/banner-gallery.png     # keep only the optimised .jpg

if [ -z "$(git status --porcelain)" ]; then
  echo "Nothing to commit. Tree is clean."
  read -n 1 -s -r -p "Press any key to close..."
  exit 0
fi

git status --short

MSG=${1:-"site update $(date +'%Y-%m-%d %H:%M')"}
git add -A
git commit -m "$MSG"
git push origin main

echo
echo "==> Pushed. GitHub Actions will rebuild in ~1 minute."
echo "    https://github.com/sparc-lab-ms/sparc-lab-ms.github.io/actions"

read -n 1 -s -r -p "Press any key to close..."
