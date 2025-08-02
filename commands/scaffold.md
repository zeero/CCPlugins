# Intelligent Scaffolding

I'll create a complete feature structure based on your project patterns.

Arguments: `$ARGUMENTS` - feature name or component to scaffold

## Strategic Thinking Process

Before scaffolding, I'll use structured thinking to ensure the best implementation:

<think>
Let me analyze the critical decisions for scaffolding:

1. **Project Architecture Discovery**
   - What patterns exist in the codebase?
   - Is there a dominant architectural style (MVC, Component-based, Layered)?
   - How are similar features currently organized?

2. **Naming Conventions**
   - File naming: camelCase, PascalCase, kebab-case, or snake_case?
   - Directory structure: by feature, by type, or mixed?
   - Are there prefixes/suffixes patterns (e.g., .service, .controller)?

3. **Technology Stack Patterns**
   - What testing framework patterns exist?
   - How are dependencies typically imported?
   - What build/bundling patterns are used?

4. **Integration Approach**
   - Where should this feature fit in the existing structure?
   - What existing code might need to be modified?
   - How will this feature interact with others?
</think>

Based on my analysis, I'll proceed to analyze your project architecture:
- Existing code organization patterns using Glob and Read tools
- File naming conventions and directory structures
- Testing approaches and documentation patterns
- Configuration and build patterns

I'll scaffold the feature following your established patterns:
- Generate all necessary files (logic, tests, documentation)
- Create contextual tests based on your testing frameworks and patterns
- Generate intelligent documentation following your docs structure
- Apply consistent naming conventions from your codebase
- Include appropriate boilerplate based on existing code
- Maintain architectural consistency

When creating multiple components, I'll use a todo list to track progress systematically.

I'll detect and follow your project's patterns for:
- File organization and naming
- Import/export structures
- Testing frameworks and patterns
- Documentation standards
- Configuration approaches

After scaffolding, I'll create a commit:
```bash
git add -A
git commit -m "Scaffold: $ARGUMENTS feature structure"
```

**Important**: I will NEVER:
- Add "Co-authored-by" or any Claude signatures
- Include "Generated with Claude Code" or similar messages
- Modify git config or user credentials
- Add any AI/assistant attribution to the commit

The scaffolded feature will be:
- Immediately functional with basic implementation
- Following your project's established conventions
- Including appropriate tests and documentation
- Ready for development without configuration

If no patterns are detected, I'll use modern best practices while asking for guidance on project-specific preferences.

This creates complete, consistent features that integrate seamlessly with your existing codebase.