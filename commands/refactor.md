# Intelligent Refactoring Engine

I'll help you restructure your code while preserving functionality and following your project's established patterns.

Arguments: `$ARGUMENTS` - files, directories, refactoring scope, or session control commands

## Session Detection & Control

First, let me check if there's an existing refactoring session:

```bash
# Check for existing refactoring session
REFACTOR_STATE="$HOME/.claude/refactor_state.json"
REFACTOR_PLAN="$HOME/.claude/refactor_plan.md"
```

**MANDATORY FIRST STEP: Session Detection**

I'll check for existing refactoring sessions:

1. **Read** `$HOME/.claude/refactor_state.json` to check for active session
2. **Read** `$HOME/.claude/refactor_plan.md` to check for execution plan

If session exists:
- Load previous state and continue from checkpoint
- Show resume summary with progress
- Continue from where left off

If no session exists:
- Create new session with current timestamp
- **Write** initial `refactor_state.json` with session info
- **Write** initial `refactor_plan.md` with execution plan
- Begin fresh analysis

**Command Usage Modes:**
- `/refactor` - Auto-detect: resume existing session or start new refactoring
- `/refactor resume` - Explicitly resume existing session  
- `/refactor continue` - Same as resume (alternative syntax)
- `/refactor status` - Show current session progress without continuing
- `/refactor new [scope]` - Force start new session (archiving any existing)
- `/refactor [files/dirs]` - Start focused refactoring on specific scope

**Session State Management:**
Before any refactoring work, I'll:
1. Check `$ARGUMENTS` for session control commands
2. Use **Read** tool to detect existing session files
3. Either resume existing session or create new one
4. Create/update state files using **Write** tool
5. Only then proceed with actual refactoring work

## Strategic Thinking Process

<think>
Before starting any refactoring, I need to carefully analyze:

1. **Refactoring Scope Assessment**
   - Is this a simple cleanup or major architectural change?
   - What's the risk level of proposed changes?
   - How will I preserve functionality during transformation?
   - Are there natural breaking points for large refactors?

2. **Context Understanding**
   - What refactoring patterns does this project already use?
   - Are there existing architectural decisions I should respect?
   - What's the current test coverage for areas I'll modify?
   - Are there integration points that could break?

3. **Execution Strategy**
   - Should I start with low-risk extractions or tackle architecture?
   - How can I validate each step doesn't break functionality?
   - What's the optimal order to minimize risk?
   - How do I handle dependencies between refactored components?

4. **Long-term Sustainability**
   - Will this refactoring make the code more maintainable?
   - Does it align with the project's evolution direction?
   - Am I introducing patterns that the team can continue?
   - How does this impact future development velocity?
</think>

Based on this analysis, I'll create a comprehensive refactoring plan that maintains safety while achieving meaningful improvements.

## Session State Management

For complex refactoring operations, I'll maintain persistent state across context windows:

**State Persistence:**
```bash
# Create refactoring session directory
REFACTOR_SESSION="$HOME/.claude/refactor_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$REFACTOR_SESSION"

# Initialize state tracking
echo "Creating refactoring session state..."
```

I'll track progress in:
- `refactor_state.json` - Current session progress and decisions
- `refactor_plan.md` - Human-readable execution plan and checklist
- `architecture_decisions.md` - Key choices made during refactoring

## Safety-First Approach

```bash
# Mandatory safety checkpoint
git add -A
git commit -m "Pre-refactor checkpoint" || echo "No changes to commit"

# Create backup for complex refactorings
BACKUP_DIR="$REFACTOR_SESSION/backup"
mkdir -p "$BACKUP_DIR"
echo "Backup location: $BACKUP_DIR"
```

**Important**: I will NEVER:
- Add "Co-authored-by" or any Claude signatures
- Include "Generated with Claude Code" or similar messages
- Modify git config or user credentials
- Add any AI/assistant attribution to commits

## Phase 1: Project Analysis & Planning

Using native tools for comprehensive understanding:
- **Glob** to map entire project structure and identify refactoring targets
- **Read** key files to understand current architecture and patterns
- **Grep** to find code duplication, anti-patterns, and refactoring opportunities
- **Read** test files to understand behavior expectations and coverage

I'll analyze:
- **Code complexity hotspots** requiring simplification
- **Duplication patterns** that can be extracted
- **Architecture inconsistencies** needing alignment
- **Dependency relationships** and coupling issues
- **Performance bottlenecks** in current structure
- **Maintainability pain points** affecting development velocity

## Phase 2: Refactoring Strategy Planning

Based on project analysis, I'll create a structured execution plan:

**Refactoring Modes:**
- **Conservative**: Only safe, low-risk improvements (extract methods, rename variables)
- **Balanced**: Structural improvements with good test coverage
- **Architectural**: Major pattern applications and structural changes
- **Migration**: Large-scale technology or pattern transitions

**Work Package Creation:**
For large refactorings, I'll break work into manageable chunks:
- Each package: 50-100 files maximum
- Natural dependency boundaries
- Independent validation possible
- Clear success criteria
- Rollback points defined

When I find complex refactoring work, I'll create a todo list to track systematic progress.

## Phase 3: Incremental Execution

**Smart Execution Order:**
1. **Low-risk improvements first** - naming, extraction, simplification
2. **Dependency resolution** - fix coupling issues
3. **Pattern application** - apply design patterns consistently
4. **Architecture alignment** - major structural changes
5. **Performance optimization** - improve bottlenecks
6. **Final cleanup** - remove temporary code, finalize structure

**Continuous Validation:**
After each refactoring step:
- Verify compilation/syntax correctness
- Run affected tests to ensure functionality preservation
- Check for new linting errors or warnings
- Validate integration points still work correctly
- Confirm no regressions in behavior

## Phase 4: Quality Assurance & Documentation

**Refactoring Metrics:**
- **Complexity reduction**: Cyclomatic complexity before/after
- **Duplication elimination**: Duplicate code lines removed
- **Maintainability improvement**: Architecture pattern compliance
- **Test coverage**: Ensure coverage maintained or improved
- **Performance impact**: Measure any performance changes

**Documentation Updates:**
- Update architecture documentation if patterns changed
- Refresh README if public interfaces modified
- Update CHANGELOG with refactoring benefits
- Document new patterns for team consistency

## Context-Aware Operation Modes

**Auto-Detection Based on Context:**

**Fresh Analysis Mode** (no previous context):
- Complete project architecture analysis
- Comprehensive refactoring opportunity identification
- Create full execution plan with priority ranking

**Resume Mode** (continuing previous session):
- Automatically detect if `$ARGUMENTS` contains "resume", "continue", or if auto-detection finds existing session
- Load previous refactor_state.json and execution plan with **Read** tool
- Parse refactor_plan.md to understand completed vs pending work
- Analyze recent git commits for refactoring progress
- Understand architecture decisions already made
- Continue from exact checkpoint with full context
- Show session summary before continuing:
  ```
  RESUMING REFACTORING SESSION
  ├── Session ID: refactor_2025_08_02_14_30
  ├── Progress: Phase 2 - Component Conversion (60%)
  ├── Last Modified: src/components/UserDashboard.tsx
  ├── Next Action: Convert event handlers to target patterns
  └── Estimated Remaining: 2-3 hours
  
  Continuing refactoring from checkpoint...
  ```

**Focused Mode** (specific files/directories provided):
- Analyze only specified scope and dependencies
- Create targeted refactoring plan
- Maintain consistency with broader codebase patterns

**Post-Command Mode** (after other CCPlugins commands):
- After `/review`: Focus on architectural issues identified
- After `/security-scan`: Prioritize security-related refactoring
- After `/predict-issues`: Address predicted maintainability problems

## Advanced Refactoring Capabilities

**Pattern Recognition & Application:**
- **Design Patterns**: Strategy, Factory, Observer, Decorator based on usage
- **Architectural Patterns**: MVC, Clean Architecture, Hexagonal based on project structure
- **Code Patterns**: DRY violations, single responsibility improvements
- **Language Patterns**: Idiomatic usage for detected technology stack

**Dependency Management:**
- **Coupling Reduction**: Extract interfaces, apply dependency injection
- **Cohesion Improvement**: Group related functionality
- **Circular Dependency Resolution**: Restructure problematic dependencies
- **Dead Code Elimination**: Remove unused functions, imports, files

**Performance-Oriented Refactoring:**
- **Algorithmic Improvements**: Replace O(n²) with O(n log n) where possible
- **Memory Optimization**: Reduce object creation, improve garbage collection
- **Caching Opportunities**: Identify expensive operations for memoization
- **Lazy Loading**: Convert eager loading to on-demand where appropriate

## Cross-Session Continuity

**State Recovery System:**
When resuming refactoring across context windows:

**Automatic Session Detection:**
```bash
# I'll first check for existing sessions
if [ -f "$HOME/.claude/refactor_state.json" ]; then
    echo "Found existing refactoring session. Loading state..."
    # Load and continue automatically
fi
```

**Recovery Process:**
1. **Session Detection** - Check for refactor_state.json and refactor_plan.md
2. **State Loading** - **Read** complete state files to understand progress
3. **Plan Analysis** - **Read** refactor_plan.md to see completed vs pending items
4. **Git History Review** - **Grep** recent commits for "refactor-checkpoint" patterns
5. **Current State Validation** - Ensure codebase matches expected state
6. **Seamless Continuation** - Pick up exactly where previous session ended

**Usage Examples:**
```bash
# After context window expires, simply run:
/refactor              # Auto-detects and resumes existing session

# Or be explicit:
/refactor resume       # Explicitly resume session
/refactor continue     # Same as resume
/refactor status       # Check progress without continuing

# Force new session:
/refactor new          # Archive old session, start fresh
```

**Progress Checkpoints:**
```bash
# Automatic checkpoints every major phase
git add -A
git commit -m "refactor-checkpoint: $(cat $REFACTOR_SESSION/current_phase.txt)"
git tag "refactor-checkpoint-$(date +%s)"
```

## Rollback & Recovery

**Granular Rollback Options:**
- **Step rollback**: Undo last refactoring operation
- **Phase rollback**: Return to previous major checkpoint
- **Complete rollback**: Return to pre-refactor state
- **Selective rollback**: Keep some changes, revert others

**Recovery Strategies:**
- **Git-based recovery**: Use commits and tags for restoration
- **File-based recovery**: Restore from backup directory
- **Incremental recovery**: Rebuild state from operation logs

## Integration with CCPlugins Ecosystem

**Natural Command Chaining:**
```bash
/review           # Identify architectural issues
/refactor         # Apply structural improvements
/test             # Validate functionality preserved
/security-scan    # Ensure no security regressions
/commit           # Commit refactored code
```

**Workflow Integration:**
- **Before refactoring**: `/understand` to map current architecture
- **During refactoring**: Continuous validation and checkpointing
- **After refactoring**: `/docs` to update documentation, `/review` for final validation

## Output & Reporting

**Structured Progress Reports:**
```
REFACTORING SESSION SUMMARY
├── Files Modified: 47
├── Functions Extracted: 12
├── Classes Reorganized: 8
├── Complexity Reduced: 34%
├── Duplications Removed: 15
└── Patterns Applied: 6

ARCHITECTURE IMPROVEMENTS
- UserService: Applied Repository pattern
- PaymentProcessor: Extracted Strategy pattern
- DatabaseConnector: Reduced coupling with interfaces
- AuthenticationModule: Simplified with Facade pattern

QUALITY METRICS
- Cyclomatic Complexity: 8.2 → 5.1 (38% improvement)
- Code Duplication: 12% → 3% (75% reduction)
- Test Coverage: 78% → 82% (maintained + improved)
- Build Time: No regression detected
```

**Session Handoff Documentation:**
For team environments, I'll create handoff notes explaining:
- Architectural decisions made and rationale
- Patterns introduced and how to continue them
- Areas requiring additional attention
- Recommended next steps for team members

This provides enterprise-grade refactoring capabilities while maintaining the safety, intelligence, and contextual awareness that defines the CCPlugins standard.