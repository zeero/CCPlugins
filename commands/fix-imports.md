# Fix Broken Imports

I'll help fix import statements that broke after moving or renaming files.

First, let me analyze your project structure and identify any broken imports. I'll:

1. **Detect your project type** from file patterns and configurations
2. **Identify import/include patterns** specific to your language
3. **Check which imports are broken** by verifying if referenced files exist
4. **Find where files were moved** by searching for matching filenames

Based on what I find, I'll handle imports for:

**JavaScript/TypeScript:**
- ES6 imports: `import X from './path'`
- CommonJS: `require('./path')`
- Dynamic imports: `import('./path')`

**Python:**
- Module imports: `import module`
- From imports: `from package import module`
- Relative imports: `from . import module`

**Java/Kotlin:**
- Package imports: `import com.example.Class`
- Static imports: `import static com.example.Class.*`

**Go:**
- Package imports: `import "path/to/package"`
- Aliased imports: `import alias "path"`

**C/C++:**
- Include directives: `#include "file.h"`
- System includes: `#include <file>`

**Rust:**
- Use statements: `use crate::module`
- External crates: `use external_crate::module`

**Other Languages:**
- I'll detect and handle language-specific import patterns

For each broken import, I'll:
1. Show you the broken import with its location
2. Search for the moved/renamed file
3. Calculate the correct new path
4. Update the import statement
5. Verify the fix doesn't break other references

This ensures your code continues to work after file reorganization.