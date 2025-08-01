# Fix Broken Imports

I'll help fix import statements that broke after moving or renaming files.

I'll use native tools to analyze your project systematically:
- **Glob tool** to find files with import patterns
- **Grep tool** to search for broken import references
- **Read tool** to analyze import syntax and context

First, I'll detect your project structure and import patterns automatically without assuming specific technologies.

When I find multiple broken imports, I'll create a todo list to fix them systematically.

For each broken import, I'll:
1. Show the broken import with exact file location
2. Use Glob to search for moved/renamed files
3. Analyze context to determine correct target

**For ambiguous cases:**
- If multiple files could match the import
- I'll list all possible options with context
- Show you the usage patterns
- Ask which file is the correct target
- Never guess when uncertain

**Safety measures:**
```bash
git add -A
git commit -m "Pre-import-fix checkpoint" || echo "No changes to commit"
```

After fixing imports:
- Verify syntax correctness for your project
- Use Grep to ensure no new conflicts
- Report summary of all changes made

**Error handling:**
- If an import can't be resolved, I'll report why
- Continue with other fixable imports
- Suggest manual investigation for complex cases

This ensures your code works after reorganization while maintaining safety and precision.