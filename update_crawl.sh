#!/bin/bash

# ── SD Book Crawl 2026 — one-click updater ──
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "Staging changes..."
git add -A

echo "Committing..."
git commit -m "update $(date '+%Y-%m-%d %H:%M')" --allow-empty

echo "Pushing to GitHub..."
git push --set-upstream origin main

echo ""
echo "Done! Files updated on GitHub."
