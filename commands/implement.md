# Smart Implementation Engine

I'll intelligently implement features from any source - GitHub, CodePen, local folders, or multiple references - adapting them perfectly to your project's architecture.

Arguments: `$ARGUMENTS` - URLs, paths, or descriptions of what to implement

## Strategic Analysis

<think>
Let me analyze what type of implementation this is:

1. **Source Type Detection**
   - Is this a GitHub URL? (github.com, raw.githubusercontent.com)
   - Is this a CodePen/JSFiddle/CodeSandbox URL?
   - Is this a local path? (starts with ./ or ../ or /)
   - Is this a description for me to research?
   - Are there multiple sources to combine?

2. **Implementation Approach**
   - Single file to adapt?
   - Multiple files to integrate?
   - Pattern to implement?
   - Library to migrate?

3. **My Capabilities**
   - I can fetch web content with WebFetch
   - I can read local files with Read
   - I can analyze code patterns with Grep
   - I can create adapted implementations

4. **Project Context Needed**
   - What's the target location?
   - What patterns should I follow?
   - What to avoid or replace?
</think>

Based on what you've provided, I'll analyze and adapt the implementation:

## Source Analysis

I'll start by examining the source using my available tools:

**For Web Sources (GitHub, CodePen, etc):**
Using WebFetch to get the content and analyze:
- Code structure and patterns
- Dependencies and imports
- Core functionality
- Integration points

**For Local Sources:**
Using Read and Glob to understand:
- File organization
- Code patterns
- Dependencies
- Architecture

**For Descriptions:**
I'll search for best practices and proven implementations

## Project Understanding

First, I'll analyze your project to understand:
- File organization patterns
- Naming conventions
- Technology stack
- Code style preferences
- **Installed packages** (package.json, requirements.txt, go.mod, etc.)
- **Version compatibility** 
- **Build configuration**
- **Established best practices**

## Dependency & Compatibility Analysis

<think>
Critical checks before implementation:

1. **Package Compatibility**
   - What versions are already installed?
   - Will new dependencies conflict?
   - Are there better alternatives already in the project?
   - Can I reuse existing packages instead of adding new ones?

2. **Best Practices Alignment**
   - Does this follow current industry standards?
   - Are there security concerns with dependencies?
   - Is this pattern still recommended or deprecated?
   - What do the official docs suggest now?

3. **Performance Considerations**
   - Bundle size impact?
   - Runtime performance implications?
   - Better native alternatives available?
   - Tree-shaking compatibility?
</think>

I'll check your current dependencies and ensure compatibility:
- Read package.json/lock files for exact versions
- Identify if similar functionality already exists
- Check for known vulnerabilities or deprecations
- Suggest modern alternatives when appropriate

## Adaptation Strategy

<think>
Based on the source and target analysis, I need to:

1. **Smart Dependency Mapping**
   - Source uses lodash.debounce → You already have lodash 4.x
   - Source uses axios → You have fetch wrapper utilities
   - Source uses old React patterns → Convert to your hooks
   - Source has X dependency → Check if you have equivalent

2. **Transform Code**
   - Match your established patterns
   - Use your existing utilities
   - Follow your error handling approach
   - Maintain your state management style

3. **Ensure Quality**
   - Follow your TypeScript strictness level
   - Match your testing patterns
   - Use your linting rules
   - Apply your security practices
</think>

## Implementation Process

I'll adapt the source code by:

1. **Pre-Implementation Checks**
   - Verify all dependencies are compatible
   - Check for duplicate functionality
   - Validate against your lint rules
   - Ensure no security issues

2. **Smart Adaptation**
   ```
   Example transformations:
   - moment() → dateFns.format() (you have date-fns)
   - $.ajax() → fetch() with your error handler
   - class Component → function Component with hooks
   - require() → ES6 imports matching your style
   ```

3. **Quality Assurance**
   - Match your TypeScript configs
   - Follow your ESLint rules
   - Use your test patterns
   - Apply your code formatting

4. **Best Practices Application**
   - Modern syntax (optional chaining, nullish coalescing)
   - Proper error boundaries
   - Accessibility considerations
   - Performance optimizations

## Execution Approach

I'll proceed step by step:

1. **Fetch and analyze** the source
2. **Understand** your project patterns
3. **Create** adapted implementation
4. **Verify** it fits your architecture
5. **Test** the integration

## Common Use Cases

### 1. Single Source Implementation
```bash
/implement https://github.com/tanstack/table/tree/main/examples/react/sorting
```
I'll fetch, analyze, and adapt the sorting example to your project.

### 2. Multiple Sources Combination
```bash
/implement https://github.com/user/auth https://codepen.io/user/pen/xyz
```
I'll intelligently merge features from multiple sources.

### 3. Research and Implement
```bash
/implement "infinite scroll with virtual list"
```
I'll research best practices and implement an optimized version.

### 4. Local Folder Integration
```bash
/implement ./examples/payment-flow/
```
I'll analyze and integrate local example code.

### 5. Library Migration
```bash
/implement migrate-from moment.js migrate-to date-fns
```
I'll help migrate from one library to another.

## What I Actually Do

1. **Comprehensive Analysis**
   - Read your package.json/requirements.txt/go.mod
   - Check installed versions and lock files
   - Identify existing utilities and helpers
   - Understand your established patterns

2. **Intelligent Fetch**
   - Use WebFetch for URLs with smart prompts
   - Read local files with full context
   - Extract not just code but understand intent
   - Check official docs for current best practices

3. **Dependency Resolution**
   ```
   Real examples:
   - Source needs moment.js → You have date-fns → Use date-fns
   - Source uses class components → You use hooks → Convert to hooks
   - Source needs lodash.merge → You have native spread → Use native
   - Source uses deprecated API → Find modern equivalent
   ```

4. **Quality Implementation**
   - No unnecessary dependencies
   - Reuse your existing utilities
   - Follow your exact patterns
   - Modern, secure, performant code

5. **Validation**
   - Would this pass your CI/CD?
   - Does it match your code review standards?
   - Is it using best practices from 2025?
   - Will it scale with your application?

## Example Scenarios

```bash
# Scenario 1: Source uses outdated patterns
/implement https://github.com/old/jquery-plugin
# I'll convert jQuery to vanilla JS using your existing DOM utils

# Scenario 2: Source has security issues  
/implement https://github.com/example/auth-system
# I'll fix SQL injection risks and use your auth middleware

# Scenario 3: Source is bloated
/implement "rich text editor"
# I'll find lightweight alternative matching your bundle size goals
```

The key difference: I don't just adapt code - I ensure it fits perfectly with your existing setup, uses what you already have, and follows current best practices.