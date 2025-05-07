#!/usr/bin/env bash
set -euo pipefail

# Set repo root relative to this script’s location
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Find markdown files and launch fzf
FILE=$(find "$ROOT_DIR/docs" "$ROOT_DIR/examples" -type f -name "*.md" 2>/dev/null | fzf --prompt="wikinotes > ")

# Open in Neovim or fallback to $EDITOR
if [[ -n "$FILE" ]]; then
  ${EDITOR:-nvim} "$FILE"
fi
