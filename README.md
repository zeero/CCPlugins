```
 ██████╗██╗      █████╗ ██╗   ██╗██████╗ ███████╗     ██████╗ ██████╗ ██████╗ ███████╗
██╔════╝██║     ██╔══██╗██║   ██║██╔══██╗██╔════╝    ██╔════╝██╔═══██╗██╔══██╗██╔════╝
██║     ██║     ███████║██║   ██║██║  ██║█████╗      ██║     ██║   ██║██║  ██║█████╗  
██║     ██║     ██╔══██║██║   ██║██║  ██║██╔══╝      ██║     ██║   ██║██║  ██║██╔══╝  
╚██████╗███████╗██║  ██║╚██████╔╝██████╔╝███████╗    ╚██████╗╚██████╔╝██████╔╝███████╗
 ╚═════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝     ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝
                                                                                         
██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗                               
██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝                               
██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗                               
██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║                               
██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║                               
╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝                               
```

# Claude Code Plugins
[![Version](https://img.shields.io/badge/version-1.6.0-blue.svg)](https://github.com/brennercruvinel/CCPlugins)
[![Claude Code CLI](https://img.shields.io/badge/for-Claude%20Code%20CLI-purple.svg)](https://docs.anthropic.com/en/docs/claude-code)
[![Works with](https://img.shields.io/badge/works%20with-Opus%204%20%26%20Sonnet%204-orange.svg)](https://claude.ai)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/brennercruvinel/CCPlugins/blob/main/CONTRIBUTING.md)


## What is CCPlugins?

Productivity commands for Claude Code CLI that save 2-3 hours per week on repetitive tasks.

### You know the drill...

🤦 Ask Claude to fix a bug, get 15 test files  
😤 Request a simple refactor, receive a dissertation on clean code  
🙄 "Please add a button" → Complete UI framework rewrite  
😭 Every conversation: "Act like a google engineer who doesn't overengineer"

CCPlugins is a curated set of commands that extend Claude Code Cli with common development workflows. These commands handle the boring stuff, since the agent already knows your codebase, they just tell it what to do with that knowledge.


*Built for developers tired of typing "please act like a senior engineer" in every conversation.*

## Installation

### Quick Install

**Mac/Linux:**
```bash
curl -sSL https://raw.githubusercontent.com/brennercruvinel/CCPlugins/main/install.sh | bash
```

**Windows/Cross-platform:**
```bash
python install.py
```

### Manual Install
```bash
git clone https://github.com/brennercruvinel/CCPlugins.git
cd CCPlugins
python install.py
```

## Commands
Pre-configured commands that make Claude Code work like the senior engineer you keep asking for.

### Development Workflow

```
/cleanproject
```
Remove debug artifacts and clean up after development sessions

```
/commit
```  
Analyze changes and create conventional commit messages

```
/format
```
Auto-detect and run the project's code formatter

```
/test
```
Run tests and automatically fix simple failures

### Code Quality

```
/review
```
Comprehensive code review for bugs, security, and performance

```
/remove-comments
```
Remove obvious comments while preserving valuable documentation

```
/cleanup-types
```
Remove TypeScript 'any' types and suggest proper types

```
/fix-imports
```
Fix broken imports after moving or renaming files

```
/find-todos
```
Find all TODO, FIXME, and HACK comments in your codebase

### Session Management

```
/session-start
```
Begin a documented coding session with goals tracking

```
/session-end
```
Summarize accomplishments and prepare handoff notes

## Real World Example

### Before `/cleanproject`:
```
src/
├── UserService.js
├── UserService.test.js
├── UserService_backup.js    # Old version
├── debug.log               # Debug output
├── test_temp.js           # Temporary test
└── notes.txt              # Dev notes
```

### After `/cleanproject`:
```
src/
├── UserService.js          # Clean production code
└── UserService.test.js     # Actual tests preserved
```

## How It Works

CCPlugins are markdown files that provide intelligent instructions to Claude Code. When you type a command:

1. Claude reads the command definition from `~/.claude/commands/`
2. Analyzes your project context
3. Executes the appropriate actions
4. Provides clear feedback

No configuration required. Commands adapt to your project's structure and conventions.

## Technical Notes

### Command Philosophy
Commands are written in **first person** ("I'll help you...") rather than imperative ("Do this..."). This design choice transforms Claude Code from a command executor into a **collaborative assistant**, creating a more conversational and helpful interaction.

```markdown
✅ Good: "I'll analyze your code and fix broken imports..."
❌ Avoid: "Analyze code and fix broken imports..."
```

This approach:
- Makes Claude feel like a partner, not a tool
- Sets clear expectations about what will happen
- Creates a more natural, human-like interaction
- Reduces the intimidation factor for new users

### User Commands Indicator
Custom commands appear with a `(user)` tag in Claude Code CLI to distinguish them from built-in commands. This is normal and indicates your commands are properly installed.

```
/commit
    Smart Git Commit (user)    ← Your custom command
/help
    Show help                  ← Built-in command
```

## Time Savings

| Task | Manual Time | With Commands | Time Saved |
|------|------------|---------------|------------|
| Git commits | 5-10 min | 30 sec | ~9 min |
| Code cleanup | 20-30 min | 1 min | ~25 min |
| Test fixes | 15-20 min | 2-5 min | ~15 min |
| Code review | 20 min | 2 min | ~18 min |

**Average: 1-3 hours saved per week**

## Requirements

- Claude Code CLI
- Python 3.6+ (for installer)
- Git (for version control commands)

## Contributing

We welcome contributions that help developers save time. See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

MIT License - see [LICENSE](LICENSE) file for details.

---

*Built for developers tired of typing "please act like a senior engineer" in every conversation.*
