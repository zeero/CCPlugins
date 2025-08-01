# Smart Test Runner

I'll intelligently run tests and actively help fix failures using advanced analysis.

**Phase 1: Deep Project Analysis**
Using native tools to understand your testing setup:
- **Glob** to find configuration files in project root
- **Read** test configurations and CI/CD workflows
- **Grep** test patterns to understand testing style
- **Read** documentation for test instructions

I'll detect:
- Test frameworks and runners
- Test file patterns and locations
- Coverage requirements
- Integration vs unit test separation
- CI/CD test commands

**Phase 2: Intelligent Test Execution**
I'll run tests with appropriate flags for maximum insight based on your project's testing framework, using verbose output and fail-fast when available to quickly identify issues.

**Build & Compilation Check:**
- Verify project builds successfully before running tests
- Watch console output for compilation errors
- Capture and analyze build warnings that might affect tests
- Check for missing dependencies or version conflicts

**Real-time Monitoring:**
```bash
# Monitor test execution with timestamps
# Capture both stdout and stderr
# Watch for timeout patterns
# Track memory usage if tests hang
```

**Phase 3: Failure Analysis & Auto-Fix**
When tests fail, I'll:

1. **Parse failure output** to understand exact issues
2. **Read failing test** to understand expectations
3. **Read implementation** to find the bug
4. **Analyze patterns** from similar tests that pass
5. **Apply fixes** when confident

**Common fixes I'll attempt:**
- Async/await timing issues
- Mock/stub configuration
- Import path problems
- Type mismatches
- Null/undefined handling
- Off-by-one errors
- Environment variable issues

**Phase 4: Advanced Diagnostics**
For complex failures:
- Run single test in isolation
- Add debug logging strategically
- Check test dependencies and setup/teardown
- Verify test data and fixtures
- Analyze flaky test patterns

**Log Analysis:**
- **Read** test output logs for hidden errors
- **Grep** for common error patterns in console output
- Analyze stack traces to pinpoint exact failure location
- Check for environment-specific issues in logs
- Identify resource conflicts (ports, files, databases)

**Console Pattern Detection:**
- Memory leaks ("JavaScript heap out of memory")
- Port conflicts ("address already in use")
- Permission errors ("EACCES", "Permission denied")
- Timeout issues ("Timeout - Async callback")
- Module resolution failures
- Database connection issues

**Phase 5: Coverage & Quality**
After fixing tests:
- Run coverage report if available
- Identify untested code paths
- Suggest critical missing tests
- Check for test anti-patterns

When I find multiple issues, I'll create a todo list to fix them systematically.

**Build Failure Recovery:**
If build fails before tests:
- Analyze compilation errors in detail
- Check for missing dependencies
- Verify environment setup
- Suggest specific fixes based on error patterns
- Offer to install missing packages if detected

**Integration with other commands:**
- After `/test` failures → `/create-todos` to track fixes
- Complex failures → `/explain-like-senior` for deep analysis
- Test improvements → `/review` for quality check

**Important**: I will NEVER:
- Modify tests to pass incorrectly
- Remove failing tests without fixing
- Reduce test coverage
- Compromise test integrity

This ensures your tests truly validate your code while maximizing development speed.