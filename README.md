```
 ██████╗ ██████╗██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
██╔════╝██╔════╝██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
██║     ██║     ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
██║     ██║     ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
╚██████╗╚██████╗██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
 ╚═════╝ ╚═════╝╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝
```

# CCPlugins
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/brennercruvinel/CCPlugins)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/brennercruvinel/CCPlugins/blob/main/CONTRIBUTING.md)

Productivity commands for Claude Code CLI that save 2-3 hours per week on repetitive tasks.

*Built for developers tired of typing "please act like a senior engineer" in every conversation.*

## What is CCPlugins?

A curated set of commands that extend Claude Code with common development workflows. Each command uses Claude's context awareness to intelligently handle tasks that normally require manual work.

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

### Development Workflow
**`/cleanproject`** - Remove debug artifacts and clean up after development sessions  
**`/commit`** - Analyze changes and create conventional commit messages  
**`/format`** - Auto-detect and run the project's code formatter  
**`/test`** - Run tests and automatically fix simple failures

### Code Quality
**`/review`** - Comprehensive code review for bugs, security, and performance  
**`/remove-comments`** - Remove obvious comments while preserving valuable documentation

### Session Management
**`/session-start`** - Begin a documented coding session with goals tracking  
**`/session-end`** - Summarize accomplishments and prepare handoff notes

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
