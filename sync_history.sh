#!/usr/bin/env bash
set -euo pipefail

# CONFIG
REPO_DIR="/home/manish4051k/projects/linux-notes"
HIST_SRC="${HISTFILE:-$HOME/.zsh_history}"
HIST_DIR="$REPO_DIR/history"
TODAY_FILE="$HIST_DIR/$(date '+%Y-%m-%d').log"
BRANCH="main"

mkdir -p "$HIST_DIR"
cd "$REPO_DIR"

# Ensure history file exists
if [ -f "$HIST_SRC" ]; then
  # Zsh history lines look like ": 1708240000:0;command".
  # This keeps the command portion and filters obvious secrets.[web:22][web:13]
  sed 's/^: [0-9]\+:[0-9]\+;//' "$HIST_SRC" | \
    grep -vi "password" | \
    grep -vi "token" | \
    grep -vi "secret" | \
    grep -vi "apikey" >> "$TODAY_FILE"
fi

# Only commit if there are changes
if ! git diff --quiet; then
  git add history
  git commit -m "Update history $(date '+%F %T')"
  git push origin "$BRANCH"
fi

