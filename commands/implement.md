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

## IMPORTANT: Complete File Reading

I will ALWAYS read files completely:
- **Read tool**: Used WITHOUT limit parameter = reads ENTIRE file
- **WebFetch tool**: Explicitly instructed to read ALL content
- **No summarization**: I get COMPLETE code, not snippets
- **Full analysis**: Every import, every function, every line

## Source Analysis - COMPLETE CODE EXAMINATION

I'll analyze EVERYTHING, not just docs:

**STEP 1: Find ALL Source Files**
Using Glob to locate:
- Common source directories (src/, lib/, app/, core/)
- All code files regardless of language
- Component/module directories
- Service/API directories
- Any custom project structure

**STEP 2: Read ACTUAL Implementation**
For EACH core file found:
- Read COMPLETE file content (no limits)
- Understand HOW it works, not just what docs say
- Analyze actual functions, classes, algorithms
- Map data flow and architecture

**STEP 3: Deep Feature Analysis**
- What does each component/function ACTUALLY do?
- How do they interact with each other?
- What's the real architecture (not what README claims)?
- What patterns and techniques are used?

**STEP 4: Only THEN Check Documentation**
- package.json for dependencies
- README for context
- But REAL understanding comes from CODE

## Project Understanding

First, I'll analyze your project to understand:
- File organization patterns
- Naming conventions
- Technology stack
- Code style preferences
- **COMPLETE package.json** (Read tool without limit - gets ALL dependencies)
- **FULL lock files** (package-lock.json, yarn.lock - ENTIRE content)
- **Build configuration** (webpack.config.js, tsconfig.json - COMPLETE files)
- **ALL documentation** (README.md, CONTRIBUTING.md - EVERY line)

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
- Read ENTIRE package.json/lock files (no line limits)
- Analyze COMPLETE dependency tree
- Check FULL documentation of existing packages
- Read ALL config files completely (no truncation)

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
   - Old date library → Your existing date solution
   - Legacy HTTP calls → Your HTTP client
   - Outdated patterns → Modern equivalents
   - Old module system → Your module system
   ```

3. **Quality Assurance**
   - Match your project's type system (if any)
   - Follow your linting rules
   - Use your test patterns
   - Apply your code formatting

4. **Best Practices Application**
   - Language-appropriate modern syntax
   - Proper error handling for your stack
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

**For Multiple Repositories:**
- Analyze EACH repository's core functionality
- Read main source files, not just README
- Understand how each works internally
- Find best parts of each to combine
- Create unified implementation

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

1. **CODE FIRST Analysis (Not Just Docs!)**
   - Use Glob to find ALL source files
   - Read ACTUAL implementation files
   - Understand algorithms and logic
   - See how features REALLY work
   - THEN check package.json/docs

2. **Intelligent Fetch**
   - Use WebFetch for URLs with prompt: "Read ENTIRE file content, ALL lines, no summarization"
   - Read local files with Read tool WITHOUT limit parameter (reads entire file)
   - Extract COMPLETE code, not summaries or snippets
   - Analyze FULL documentation, package.json, README, etc.

3. **Dependency Resolution**
   ```
   Generic approach:
   - Source needs library X → You have library Y → Use Y
   - Source uses old patterns → Convert to your patterns
   - Source needs utility Z → You have equivalent → Use yours
   - Source uses deprecated features → Use modern alternatives
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

## CRITICAL: Analyzing Multiple Cloned Repositories

When you provide multiple cloned repos, I will:

1. **Explore Each Repository's CODE**:
   ```
   repo1/
   ├── src/          ← Read ALL source files
   ├── components/   ← Understand EACH component
   └── lib/          ← Analyze core logic
   
   repo2/
   ├── src/          ← Read implementation
   ├── api/          ← Understand endpoints
   └── utils/        ← Check utilities
   ```

2. **Deep Dive into Functionality**:
   - NOT just "repo1 has authentication, repo2 has UI"
   - BUT: "repo1 implements token-based auth with automatic refresh"
   - AND: "repo2 uses performance optimization for large lists"

3. **Extract and Combine Best Parts**:
   - Take auth logic from repo1
   - Take UI components from repo2
   - Merge data handling from repo3
   - Create unified, optimized implementation

4. **No Superficial Analysis**:
   - ❌ "This repo seems to handle authentication"
   - ✅ "This repo implements secure token-based authentication with automatic session management"