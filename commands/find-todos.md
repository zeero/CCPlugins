# Find TODOs

I'll locate all TODO comments and unfinished work markers in your codebase.

First, let me scan for various TODO patterns:

```bash
# Common TODO patterns across different languages
echo "Searching for TODOs, FIXMEs, and other markers..."

# Count different types
TODO_COUNT=$(grep -r "TODO\|Todo\|todo" --exclude-dir=node_modules --exclude-dir=.git --exclude-dir=dist --exclude-dir=build . 2>/dev/null | wc -l)
FIXME_COUNT=$(grep -r "FIXME\|Fixme\|fixme" --exclude-dir=node_modules --exclude-dir=.git --exclude-dir=dist --exclude-dir=build . 2>/dev/null | wc -l)
HACK_COUNT=$(grep -r "HACK\|Hack\|hack" --exclude-dir=node_modules --exclude-dir=.git --exclude-dir=dist --exclude-dir=build . 2>/dev/null | wc -l)
NOTE_COUNT=$(grep -r "NOTE:\|Note:\|XXX" --exclude-dir=node_modules --exclude-dir=.git --exclude-dir=dist --exclude-dir=build . 2>/dev/null | wc -l)

echo "Found: $TODO_COUNT TODOs, $FIXME_COUNT FIXMEs, $HACK_COUNT HACKs, $NOTE_COUNT NOTEs"
```

I'll search for these patterns:
- **TODO/Todo/todo**: General tasks to complete
- **FIXME/Fixme/fixme**: Known issues that need fixing
- **HACK/Hack/hack**: Temporary workarounds
- **XXX**: Warnings or problematic code
- **NOTE/Note**: Important notes that might indicate incomplete work
- **@todo**: JSDoc style todos
- **#TODO**: Python/Shell style todos
- **// TODO**: C-style comment todos

For each marker found, I'll show:
1. **File location** with line number
2. **The full comment** with context
3. **Surrounding code** to understand what needs to be done
4. **Priority assessment** based on the marker type

I'll organize findings by:
- **Critical** (FIXME, HACK, XXX): Issues that could cause problems
- **Important** (TODO): Features or improvements needed
- **Informational** (NOTE): Context that might need attention

I'll also identify:
- TODOs that reference missing implementations
- Placeholder code that needs replacement
- Incomplete error handling
- Stubbed functions awaiting implementation

This helps you track and prioritize unfinished work in your codebase.