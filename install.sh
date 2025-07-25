#!/bin/bash
# Claude Commands Installer for Mac/Linux

set -e
COMMANDS_DIR="$HOME/.claude/commands"
mkdir -p "$COMMANDS_DIR"

if [ -n "$(ls -A "$COMMANDS_DIR"/*.md 2>/dev/null)" ]; then
    BACKUP_DIR="$COMMANDS_DIR/backup_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$BACKUP_DIR"
    cp "$COMMANDS_DIR"/*.md "$BACKUP_DIR/" 2>/dev/null || true
fi

cp "$(dirname "$0")/commands"/*.md "$COMMANDS_DIR/"
echo "✨ Claude Commands installed to $COMMANDS_DIR"
echo "📖 Type / in Claude Code to see available commands"