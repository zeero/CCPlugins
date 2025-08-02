# Fix TODOs

I'll find and intelligently fix TODO comments in your codebase with contextual understanding.

## Strategic Thinking Process

<think>
Before implementing any TODO, I must analyze:

1. **TODO Context Understanding**
   - What is the TODO actually asking for?
   - Why was it left as a TODO (complexity, time, uncertainty)?
   - What's the surrounding code trying to accomplish?
   - Are there similar implementations elsewhere I can reference?

2. **Implementation Options**
   - What are the possible ways to implement this?
   - Which approach best fits the existing architecture?
   - What are the trade-offs of each approach?
   - Which solution is most maintainable?

3. **Risk Assessment**
   - Could this fix break existing functionality?
   - Are there hidden dependencies?
   - Will this change require updates elsewhere?
   - Do I need additional error handling?

4. **Quality Criteria**
   - Does my solution follow project patterns?
   - Is it tested or testable?
   - Will it handle edge cases?
   - Is the code self-documenting?
</think>

Based on this thinking framework, I'll proceed with:

**Phase 1: Discovery & Analysis**
Using native tools to find and understand TODOs:
- **Grep** to locate all TODO/FIXME/HACK markers
- **Read** to analyze surrounding code context
- **Glob** to understand project structure
- **Grep** to find related implementations

I'll categorize TODOs by type:
- **Bug fixes** - Missing error handling, null checks
- **Features** - Unimplemented functionality
- **Refactoring** - Code improvements needed
- **Performance** - Optimization opportunities
- **Security** - Validation or sanitization needed

**Phase 2: Context Understanding**
For each TODO, I'll:
1. Read the entire file to understand purpose
2. Analyze function/class containing the TODO
3. Search for similar patterns already implemented
4. Check tests to understand expected behavior
5. Review related files for integration points

**Phase 3: Smart Resolution**
I'll resolve TODOs based on patterns and best practices:

**Resolution approach:**
I'll analyze your project's patterns and implement fixes that match your codebase style:
- For error handling TODOs: Add appropriate try/catch or error boundaries
- For validation TODOs: Implement input checking based on your validation patterns
- For performance TODOs: Apply optimization techniques suitable for your stack
- For security TODOs: Add sanitization and permission checks following your security model

**Phase 4: Implementation Strategy**
- **Simple TODOs** (null checks, validation): Fix immediately
- **Complex TODOs** (new features): Implement with tests
- **Architecture TODOs**: Analyze impact before changing
- **Performance TODOs**: Measure before optimizing
- **Unclear TODOs**: Show options and ask for guidance

When I find multiple TODOs, I'll create a todo list to resolve them systematically.

**Resolution patterns I'll apply:**
- Error handling: try/catch, error boundaries, fallbacks
- Validation: Input sanitization, type checking, bounds
- Performance: Caching, memoization, lazy loading
- Security: Escape inputs, validate permissions, sanitize outputs
- Refactoring: Extract methods, reduce complexity, improve naming

**Phase 5: Verification**
After each resolution:
- Ensure code still works correctly
- Check for test coverage
- Verify no new issues introduced
- Update related documentation if needed

**Safety measures:**
```bash
git add -A
git commit -m "Pre-TODO-fix checkpoint" || echo "No changes to commit"
```

**Important**: I will NEVER:
- Remove TODOs without implementing solutions
- Make changes that break existing functionality
- Add "Resolved by Claude" or AI attribution
- Add "Co-authored-by" or any Claude signatures
- Include "Generated with Claude Code" or similar messages
- Modify git config or user credentials
- Implement security-sensitive code without review

**Integration with other commands:**
- Complex resolutions → `/test` to verify
- New implementations → `/review` for quality check
- Remaining TODOs → `/create-todos` with better context

This transforms technical debt into clean, working code systematically.