# Understand Project

I'll analyze your entire application to understand its architecture, patterns, and how everything works together.

**Phase 1: Project Discovery**
Using native tools for comprehensive analysis:
- **Glob** to map entire project structure
- **Read** key files (README, docs, configs)
- **Grep** to identify technology patterns
- **Read** entry points and main files

I'll discover:
- Project type and main technologies
- Architecture patterns (MVC, microservices, etc.)
- Directory structure and organization
- Dependencies and external integrations
- Build and deployment setup

**Phase 2: Code Architecture Analysis**
- **Entry points**: Main files, index files, app initializers
- **Core modules**: Business logic organization
- **Data layer**: Database, models, repositories
- **API layer**: Routes, controllers, endpoints
- **Frontend**: Components, views, templates
- **Configuration**: Environment setup, constants
- **Testing**: Test structure and coverage

**Phase 3: Pattern Recognition**
I'll identify established patterns:
- Naming conventions for files and functions
- Code style and formatting rules
- Error handling approaches
- Authentication/authorization flow
- State management strategy
- Communication patterns between modules

**Phase 4: Dependency Mapping**
- Internal dependencies between modules
- External library usage patterns
- Service integrations
- API dependencies
- Database relationships
- Asset and resource management

**Phase 5: Documentation Synthesis**
After analysis, I'll provide:
- **Architecture diagram** (in text/markdown)
- **Key components** and their responsibilities
- **Data flow** through the application
- **Important patterns** to follow
- **Tech stack summary**
- **Development workflow**

**Integration Points:**
I'll identify how components interact:
- API endpoints and their consumers
- Database queries and their callers
- Event systems and listeners
- Shared utilities and helpers
- Cross-cutting concerns (logging, auth)

**Output Format:**
```
PROJECT OVERVIEW
├── Architecture: [Type]
├── Main Technologies: [List]
├── Key Patterns: [List]
└── Entry Point: [File]

COMPONENT MAP
├── Frontend
│   └── [Structure]
├── Backend
│   └── [Structure]
├── Database
│   └── [Schema approach]
└── Tests
    └── [Test strategy]

KEY INSIGHTS
- [Important finding 1]
- [Important finding 2]
- [Unique patterns]
```

When the analysis is large, I'll create a todo list to explore specific areas in detail.

**Use cases:**
- Onboarding to new projects
- Before major refactoring
- Understanding inherited codebases
- Documenting project architecture
- Finding inconsistencies

This gives you a complete mental model of how your application works.

**Phase 6: Actionable Insights**
After understanding your project, I'll:

1. **Create CLAUDE.md** with project knowledge:
   - Architecture decisions and patterns
   - Key conventions to follow
   - Important files and their purposes
   - Team-specific workflows

2. **Identify improvement opportunities:**
   - Inconsistent patterns that need alignment
   - Missing critical components (tests, docs, error handling)
   - Performance bottlenecks from architecture
   - Security concerns in the structure

3. **Suggest next commands:**
   - `/security-scan` for vulnerabilities found
   - `/test` to verify test coverage gaps
   - `/predict-issues` for architectural concerns
   - `/scaffold` to add missing components
   - `/make-it-pretty` for inconsistent code

4. **Generate quick reference:**
   ```
   QUICK START GUIDE
   - Main entry: [file]
   - Run locally: [command]
   - Run tests: [command]
   - Key configs: [files]
   - Deploy: [process]
   ```

**Decision point:** "What would you like to explore deeper?"
- Focus on specific component analysis
- Run security scan on concerning areas
- Create todos for improvements
- Generate architecture documentation
- Start fixing identified issues

This transforms analysis into actionable development work.