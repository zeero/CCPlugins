# Changelog

All notable changes to CCPlugins will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.0] - 2025-08-01

### Added
- **New Commands (5):**
  - `/security-scan` - Comprehensive security analysis with dependency health checking
  - `/scaffold` - Intelligent feature scaffolding with auto-generated tests and docs
  - `/predict-issues` - Proactive problem detection with timeline estimates  
  - `/contributing` - Complete contribution readiness analysis comparing local vs remote
  - `/explain-like-senior` - Senior-level code explanations with architectural context

- **Claude Code CLI Native Integration:**
  - Migration to native tools (Grep, Glob, Read, TodoWrite) across all commands
  - Sub-agent architecture for specialized analysis (security, performance, quality, architecture)
  - CLAUDE.md memory system integration replacing parallel session system
  - Git checkpoint safety replacing custom backup systems

- **Advanced Features:**
  - Multi-step operation tracking with TodoWrite integration
  - GitHub Actions workflow examples for CI/CD integration
  - Hooks configuration examples for automatic formatting
  - Context-aware analysis without technology stack assumptions
  - Intelligent issue creation with duplicate detection

### Changed
- **Performance Optimizations:**
  - Reduced verbosity across all commands for senior developer efficiency
  - Native tool usage for improved performance on large codebases
  - Parallel execution optimization where beneficial
  - Streamlined command outputs with actionable results

- **Architecture Improvements:**
  - `/review` now uses specialized sub-agents (security, performance, quality, architecture)
  - `/session-start` and `/session-end` integrated with Claude Code CLI memory system
  - `/cleanproject` uses git checkpoints instead of custom backup directories
  - `/find-todos` and `/fix-imports` migrated to native Grep/Glob tools
  - All commands follow consistent safety-first design with git checkpoints

- **Documentation:**
  - Complete README overhaul with technical architecture details
  - GitHub Actions integration examples
  - Hooks configuration guidance
  - Performance metrics updated with new command capabilities

### Enhanced
- **Security:**
  - Input validation and sanitization across all commands
  - Safe file operations with proper validation
  - Secure handling of sensitive information detection
  - Security audit of all existing commands

- **Functionality Consolidation:**
  - Dependency health analysis integrated into `/security-scan`
  - Architecture review capabilities added to `/review` sub-agents
  - Auto-documentation and smart test generation integrated into `/scaffold`
  - Improvement suggestions distributed across relevant analysis commands

### Fixed
- Session management system now uses native CLAUDE.md instead of parallel tracking
- Commands no longer use framework-specific detection, rely on intelligent analysis
- Removed all hardcoded technology references for true framework agnosticism
- Git safety operations consistent across all destructive commands
- TodoWrite integration prevents lost progress in multi-step operations

### Removed
- `/context-cache` - Removed as Claude Code already maintains context automatically
- `/cleanup-types` - Merged functionality into `/make-it-pretty`
- Custom backup systems replaced with git checkpoint safety
- Parallel session directory system replaced with CLAUDE.md integration

## [1.6.0] - 2025-01-25

### Added
- Basic testing with Kimi K2 compatibility
- Cross-platform installation support (Windows/Mac/Linux)
- 11 productivity commands for common development workflows
- `/cleanproject` - Remove debug artifacts and clean up after development sessions
- `/commit` - Analyze changes and create conventional commit messages
- `/format` - Auto-detect and run the project's code formatter
- `/test` - Run tests and automatically fix simple failures
- `/review` - Comprehensive code review for bugs, security, and performance
- `/remove-comments` - Remove obvious comments while preserving valuable documentation
- `/cleanup-types` - Remove TypeScript 'any' types and suggest proper types (now part of `/make-it-pretty`)
- `/fix-imports` - Fix broken imports after moving or renaming files
- `/find-todos` - Find all TODO, FIXME, and HACK comments in your codebase
- `/session-start` - Begin a documented coding session with goals tracking
- `/session-end` - Summarize accomplishments and prepare handoff notes

### Changed
- Improved README with better examples and time-saving metrics
- Enhanced installation process with automatic backup of existing commands

### Fixed
- Installation script compatibility across different operating systems

## [1.5.0] - 2025-12-15

### Added
- Initial release with core command set
- Python-based installer
- Shell script for Unix-like systems

[Unreleased]: https://github.com/brennercruvinel/CCPlugins/compare/v2.0.0...HEAD
[2.0.0]: https://github.com/brennercruvinel/CCPlugins/compare/v1.6.0...v2.0.0
[1.6.0]: https://github.com/brennercruvinel/CCPlugins/compare/v1.5.0...v1.6.0
[1.5.0]: https://github.com/brennercruvinel/CCPlugins/releases/tag/v1.5.0
