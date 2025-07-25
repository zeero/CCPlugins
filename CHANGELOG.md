# Changelog

All notable changes to CCPlugins will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

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
- `/cleanup-types` - Remove TypeScript 'any' types and suggest proper types
- `/fix-imports` - Fix broken imports after moving or renaming files
- `/find-todos` - Find all TODO, FIXME, and HACK comments in your codebase
- `/session-start` - Begin a documented coding session with goals tracking
- `/session-end` - Summarize accomplishments and prepare handoff notes

### Changed
- Improved README with better examples and time-saving metrics
- Enhanced installation process with automatic backup of existing commands

### Fixed
- Installation script compatibility across different operating systems

## [1.5.0] - 2024-12-15

### Added
- Initial release with core command set
- Python-based installer
- Shell script for Unix-like systems

[Unreleased]: https://github.com/brennercruvinel/CCPlugins/compare/v1.6.0...HEAD
[1.6.0]: https://github.com/brennercruvinel/CCPlugins/compare/v1.5.0...v1.6.0
[1.5.0]: https://github.com/brennercruvinel/CCPlugins/releases/tag/v1.5.0