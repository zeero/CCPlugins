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

# Automate the `Boring Stuff`
![GitHub Repo stars](https://img.shields.io/github/stars/brennercruvinel/CCPlugins?style=social)
[![Version](https://img.shields.io/badge/version-2.5.1-blue.svg)](https://github.com/brennercruvinel/CCPlugins)
[![Claude Code CLI](https://img.shields.io/badge/for-Claude%20Code%20CLI-purple.svg)](https://docs.anthropic.com/en/docs/claude-code)
[![Tested on](https://img.shields.io/badge/tested%20on-Opus%204%20%26%20Sonnet%204-orange.svg)](https://claude.ai)
[![Also works with](https://img.shields.io/badge/also%20works%20with-Kimi%20K2-1783ff.svg)](https://github.com/MoonshotAI/Kimi-K2)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/brennercruvinel/CCPlugins/blob/main/CONTRIBUTING.md)

## What is `CCPlugins`?

Professional commands for Claude Code CLI that save 2-3 hours per week on repetitive development tasks.

### The Problem

Ask Claude to fix a bug → Get 15 test files  
Request a simple refactor → Receive a dissertation on clean code  
"Please add a button" → Complete UI framework rewrite  
Every conversation → "Act like a senior engineer who doesn't overengineer"

CCPlugins is a curated set of 25 professional commands that extend Claude Code CLI with enterprise-grade development workflows. These commands leverage Claude's contextual understanding while providing structured, predictable outcomes optimized for Opus 4 and Sonnet 4 models.

## Quick Links

- [Installation](#installation) - Get started in 30 seconds
- [Commands](#commands) - See all available commands
- [How It Works](#how-it-works) - Understanding the magic
- [Technical Notes](#technical-notes) - Why conversational design matters
- [Contributing](#contributing) - Help make it better

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

### Uninstall
```bash
# Mac/Linux
./uninstall.sh

# Windows/Cross-platform
python uninstall.py
```

## Commands
25 professional commands optimized for Claude Code CLI's native capabilities.

### Development Workflow

```bash
/cleanproject                    # Remove debug artifacts with git safety
/commit                          # Smart conventional commits with analysis
/format                          # Auto-detect and apply project formatter
/scaffold feature-name           # Generate complete features from patterns
/test                            # Run tests with intelligent failure analysis
/implement url/path/feature      # Import and adapt code from any source (GitHub, CodePen, local)
/refactor                        # Intelligent code restructuring with cross-session continuity
```

### Code Quality & Security

```bash
/review                # Multi-agent analysis (security, performance, quality, architecture)
/security-scan         # Contextual vulnerability analysis with dependency health
/predict-issues        # Proactive problem detection with timeline estimates
/remove-comments       # Clean obvious comments, preserve valuable docs
/fix-imports           # Repair broken imports after refactoring
/find-todos            # Locate and organize development tasks
/create-todos          # Add contextual TODO comments based on analysis results
/fix-todos             # Intelligently implement TODO fixes with context
```

### Advanced Analysis

```bash
/understand            # Analyze entire project architecture and patterns
/explain-like-senior   # Senior-level code explanations with context
/contributing          # Complete contribution readiness analysis
/make-it-pretty        # Improve readability without functional changes
```

### Session & Project Management

```bash
/session-start         # Begin documented sessions with CLAUDE.md integration
/session-end           # Summarize and preserve session context
/docs                  # Smart documentation management and updates
/todos-to-issues       # Convert code TODOs to GitHub issues
/undo                  # Safe rollback with git checkpoint restore
/human-mode            # Switch to pragmatic, less verbose mode
```


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

**Architecture Principles:**
- Commands use Claude Code CLI native tools (Grep, Glob, Read, TodoWrite)
- Sub-agent architecture for specialized analysis  
- Git-based safety with automatic checkpoints
- Framework-agnostic with intelligent auto-detection
- CLAUDE.md memory system integration
- Professional-grade analysis without over-engineering

**Performance Optimizations:**
- Reduced verbosity for senior developer efficiency
- Context-aware analysis without technology assumptions
- Built-in error recovery and alternative suggestions
- Streamlined workflows for maximum productivity

## Technical Notes

### Design Philosophy

**Why This Approach Works** (Based on Anthropic's Research):
- **Conversational Commands**: First-person language ("I'll help...") activates Claude's collaborative reasoning
- **Build-Agnostic Instructions**: No hardcoded tools = works everywhere
- **Think Tool Integration**: Strategic thinking improves decisions by 50%+ (Anthropic, 2025)
- **Native Tools Only**: Uses Claude Code's actual capabilities, not imaginary APIs

**Key Principles:**
- **Simplicity > Complexity**: Start simple, add only when proven necessary
- **Context Awareness**: Commands adapt to YOUR project, not vice versa
- **Safety First**: Git checkpoints before any destructive operation
- **Pattern Recognition**: Learn from your codebase, not assumptions

### Technical Architecture

**Native Tool Integration:**
All commands leverage Claude Code CLI's native capabilities:
- Grep tool for efficient pattern matching
- Glob tool for file discovery
- Read tool for content analysis
- TodoWrite for progress tracking
- Sub-agents for specialized analysis

**Safety-First Design:**
```bash
git add -A
git commit -m "Pre-operation checkpoint" || echo "No changes to commit"
```

**Conversational Interface:**
Commands use first-person collaborative language ("I'll analyze your code...") rather than imperative commands, creating a natural partnership interaction that improves model performance.

**Framework Agnostic:**
Intelligent detection without hardcoded assumptions enables universal compatibility across technology stacks.

### User Commands Indicator
Custom commands appear with a `(user)` tag in Claude Code CLI to distinguish them from built-in commands. This is normal and indicates your commands are properly installed.

```
/commit
    Smart Git Commit (user)    ← Your custom command
/help
    Show help                  ← Built-in command
```

## Performance Metrics

| Task | Manual Time | With CCPlugins | Time Saved |
|------|-------------|----------------|------------|
| Security analysis | 45-60 min | 3-5 min | ~50 min |
| Architecture review | 30-45 min | 5-8 min | ~35 min |
| Feature scaffolding | 25-40 min | 2-3 min | ~30 min |
| Git commits | 5-10 min | 30 sec | ~9 min |
| Code cleanup | 20-30 min | 1 min | ~25 min |
| Import fixing | 15-25 min | 1-2 min | ~20 min |
| Code review | 20-30 min | 2-4 min | ~20 min |
| Issue prediction | 60+ min | 5-10 min | ~50 min |
| TODO resolution | 30-45 min | 3-5 min | ~35 min |
| Code adaptation | 40-60 min | 3-5 min | ~45 min |

**Total: 4-5 hours saved per week with professional-grade analysis**

## Requirements

- Claude Code CLI
- Python 3.6+ (for installer)
- Git (for version control commands)

## Advanced Usage

### Creating Custom Commands
Create your own commands by adding markdown files to `~/.claude/commands/`:

```markdown
# My Custom Command

I'll help you with your specific workflow.

[Your instructions here]
```

### Using Arguments
Commands support arguments via `$ARGUMENTS`:

```bash
/mycommand some-file.js
# $ARGUMENTS will contain "some-file.js"
```

### CI/CD Integration
Use commands in automated workflows:

```bash
# Quality pipeline
claude "/security-scan" && claude "/review" && claude "/test"

# Pre-commit validation  
claude "/format" && claude "/commit"

# Feature development
claude "/scaffold api-users" && claude "/test"

# Complete workflow
claude "/security-scan" && claude "/create-todos" && claude "/todos-to-issues"

# TODO resolution workflow
claude "/find-todos" && claude "/fix-todos" && claude "/test"
```

### Manual Workflow Integration
Perfect for development routines:

```bash
# Morning routine
claude "/session-start"
claude "/security-scan"

# During development
claude "/scaffold user-management"
claude "/review" 
claude "/format"

# End of day
claude "/commit"
claude "/session-end"
```

## Security & Git Instructions

All commands that interact with git include security instructions to prevent AI attribution:

**Commands with git protection:**
- `/commit`, `/scaffold`, `/make-it-pretty`, `/cleanproject`, `/fix-imports`, `/review`, `/security-scan`
- `/contributing`, `/todos-to-issues`, `/predict-issues`, `/find-todos`, `/create-todos`, `/fix-todos`

These commands will NEVER:
- Add "Co-authored-by" or AI signatures
- Include "Generated with Claude Code" messages
- Modify git config or credentials
- Add AI attribution to commits/issues

You can modify these instructions in individual command files if needed.

## Contributing

We welcome contributions that help developers save time. See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

MIT License - see [LICENSE](LICENSE) file for details.
*Built by a developer tired of typing "please act like a senior engineer" in every conversation.*

## Community

[![Star History Chart](https://api.star-history.com/svg?repos=brennercruvinel/CCPlugins&type=Date)](https://star-history.com/#brennercruvinel/CCPlugins&Date)

---

**Last Updated:** August 1, 2025 (Based on Anthropic Claude Code CLI documentation v2025.08.01)
