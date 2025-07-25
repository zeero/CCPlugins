# Contributing to Claude Commands

Thanks for your interest in improving Claude Commands! This project helps developers save time with practical automation.

## How to Contribute

### 1. New Commands
We welcome commands that solve real developer problems. Good commands:
- Save at least 5 minutes of repetitive work
- Are language/framework agnostic when possible
- Use context analysis rather than rigid rules

**To add a command:**
1. Create `commands/yourcommand.md`
2. Follow the existing command structure
3. Test it solves a real problem
4. Submit a PR with a clear use case

### 2. Improving Existing Commands
Found a bug or have an enhancement? Great! Please:
- Describe the current vs desired behavior
- Include examples if relevant
- Keep changes focused and minimal

### 3. Bug Reports
Open an issue with:
- What command failed
- What you expected
- Error message (if any)
- Your OS and Claude Code version

## Development Setup

```bash
git clone https://github.com/[user]/claude-commands
cd claude-commands
python install.py  # Test your changes
```

## Pull Request Guidelines

1. **One command per PR** - Makes review easier
2. **Test your changes** - Ensure the installer works and commands run
3. **Keep it simple** - This project values pragmatism over perfection
4. **Update README** - Add your command to the table with a one-line description

## Command Quality Checklist

- [ ] Saves real time (5+ minutes)
- [ ] Works without configuration
- [ ] Handles common edge cases
- [ ] Clear, actionable output
- [ ] Under 100 lines

## What We're Looking For

**Yes:**
- Commands that automate tedious tasks
- Cross-platform compatibility improvements  
- Real-world workflow optimizations

**No:**
- Framework-specific tools (unless very popular)
- Commands requiring external dependencies
- Overly complex multi-step wizards

## Questions?

Not sure if your idea fits? Open an issue to discuss before coding. We're friendly and want to help you contribute successfully.

Remember: Every command should make a developer's day a little easier.