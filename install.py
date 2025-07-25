#!/usr/bin/env python3
"""
CCPlugins Installer
Copies command files to ~/.claude/commands/
"""

import os
import shutil
import sys
from pathlib import Path
from datetime import datetime

def main():
    # Determine paths
    script_dir = Path(__file__).parent.absolute()
    commands_source = script_dir / "commands"
    claude_dir = Path.home() / ".claude"
    commands_dest = claude_dir / "commands"
    
    print("🚀 CCPlugins Installer")
    print("=" * 40)
    
    # Check source directory exists
    if not commands_source.exists():
        print(f"❌ Error: Commands directory not found at {commands_source}")
        sys.exit(1)
    
    # Create destination directory
    commands_dest.mkdir(parents=True, exist_ok=True)
    print(f"✓ Target directory: {commands_dest}")
    
    # Backup existing commands if any exist
    existing_files = list(commands_dest.glob("*.md"))
    if existing_files:
        backup_dir = commands_dest / f"backup_{datetime.now().strftime('%Y%m%d_%H%M%S')}"
        backup_dir.mkdir(exist_ok=True)
        print(f"\n📦 Backing up {len(existing_files)} existing commands to {backup_dir.name}")
        for file in existing_files:
            shutil.copy2(file, backup_dir)
    
    # Copy command files
    command_files = list(commands_source.glob("*.md"))
    if not command_files:
        print(f"❌ Error: No .md files found in {commands_source}")
        sys.exit(1)
    
    print(f"\n📄 Installing {len(command_files)} commands:")
    for file in command_files:
        dest_file = commands_dest / file.name
        shutil.copy2(file, dest_file)
        print(f"  ✓ {file.name}")
    
    print("\n✨ Installation complete!")
    print("\n📖 Usage:")
    print("  1. Open Claude Code CLI")
    print("  2. Type / to see available commands")
    print("  3. Use /cleanproject, /commit, etc.")
    print("\n💡 Tip: These commands will save you 2-3 hours per week!")

if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print(f"\n❌ Installation failed: {e}")
        sys.exit(1)