# Fix Broken Imports

I'll help fix import statements that broke after moving or renaming files.

## Strategic Thinking Process

<think>
To fix imports effectively, I need to consider:

1. **Import Analysis**
   - What type of imports are broken (relative, absolute, aliased)?
   - Were files moved, renamed, or deleted?
   - Are there multiple possible matches for the import?
   - Could the import be from external packages?

2. **Resolution Strategy**
   - Search for exact filename matches first
   - Check for similar names (might be typos)
   - Look for the exported symbols in other files
   - Consider if the import should be removed entirely

3. **Project Import Patterns**
   - Does the project use path aliases (@/, ~/, etc)?
   - Are there barrel exports (index files)?
   - What's the convention for internal vs external imports?
   - Are there any import sorting rules?

4. **Safety Considerations**
   - Could fixing this import break other imports?
   - Are there circular dependency risks?
   - Should I update all instances at once?
   - Do test files need different handling?
</think>

Based on this analysis, I'll use native tools to analyze your project systematically:
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

**Important**: I will NEVER:
- Add "Co-authored-by" or any Claude signatures
- Include "Generated with Claude Code" or similar messages
- Modify git config or user credentials
- Add any AI/assistant attribution to the commit

After fixing imports:
- Verify syntax correctness for your project
- Use Grep to ensure no new conflicts
- Report summary of all changes made

**Error handling:**
- If an import can't be resolved, I'll report why
- Continue with other fixable imports
- Suggest manual investigation for complex cases

This ensures your code works after reorganization while maintaining safety and precision.