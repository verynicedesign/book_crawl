#!/bin/bash

# ── SD Book Crawl 2026 — one-click updater ──
# Place this script in your repo folder and double-click to run.
# Before running: put the new joyce_2026.html and elvira_2026.html
# into the same folder as this script.

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "Copying updated files..."
# Files are already in the repo folder — nothing to copy

echo "Staging changes..."
git add joyce_2026.html elvira_2026.html

echo "Committing..."
git commit -m "update book crawl files $(date '+%Y-%m-%d %H:%M')"

echo "Pushing to GitHub..."
git push

echo ""
echo "Done! Files updated on GitHub."
