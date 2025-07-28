#!/bin/bash
# CCPlugins Installer for Mac/Linux

set -e
COMMANDS_DIR="$HOME/.claude/commands"
mkdir -p "$COMMANDS_DIR"

if [ -n "$(ls -A "$COMMANDS_DIR"/*.md 2>/dev/null)" ]; then
    BACKUP_DIR="$HOME/.claude/commands_backup_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$BACKUP_DIR"
    cp "$COMMANDS_DIR"/*.md "$BACKUP_DIR/" 2>/dev/null || true
fi

# Download commands from GitHub
REPO_URL="https://raw.githubusercontent.com/brennercruvinel/CCPlugins/main/commands"
COMMANDS=(
    "cleanproject.md"
    "cleanup-types.md"
    "commit.md"
    "context-cache.md"
    "find-todos.md"
    "fix-imports.md"
    "format.md"
    "remove-comments.md"
    "review.md"
    "session-end.md"
    "session-start.md"
    "test.md"
    "undo.md"
)

echo "📥 Downloading commands..."
for cmd in "${COMMANDS[@]}"; do
    curl -sSL "$REPO_URL/$cmd" -o "$COMMANDS_DIR/$cmd"
done
echo "✨ CCPlugins installed to $COMMANDS_DIR"
echo "📖 Type / in Claude Code to see available commands"