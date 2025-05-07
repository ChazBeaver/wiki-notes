#!/usr/bin/env bash
set -euo pipefail

# Get the root of the repo relative to this script
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Find all Markdown files in docs/ and examples/
FILE=$(find "$ROOT_DIR/docs" "$ROOT_DIR/examples" -type f -name "*.md" 2>/dev/null | fzf --prompt="wikinotes (lite) > ")

# Show matching preview using grep/cat and open if selected
if [[ -n "$FILE" ]]; then
  echo "================= Preview: $FILE ================="
  grep -E '^#|^##|^###' "$FILE" || cat "$FILE"
  echo "=================================================="
  read -rp "Open in editor? [y/N]: " CONFIRM
  if [[ "$CONFIRM" =~ ^[Yy]$ ]]; then
    ${EDITOR:-nvim} "$FILE"
  fi
fi
