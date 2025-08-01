# Security Analysis

I'll perform a contextual security analysis of your project.

First, let me create a safety checkpoint:
```bash
git add -A
git commit -m "Security scan checkpoint" || echo "No changes to commit"
```

I'll detect your project structure automatically and apply appropriate security analysis:
- Credential exposure detection across all file types
- Dependency vulnerability scanning based on your package managers
- Code pattern security review for your technology stack
- Configuration security assessment

I'll use native tools for comprehensive analysis:
- **Grep tool** to search for credential patterns and security issues
- **Glob tool** to find configuration and sensitive files
- **Read tool** to analyze security-critical configurations

When I find multiple vulnerabilities, I'll create a todo list to track remediation systematically.

For each finding, I'll:
- Show exact location and file reference
- Explain the vulnerability and risk level (Critical/High/Medium/Low)
- Provide specific remediation steps
- Reference security documentation when applicable

I'll analyze patterns like:
- Hardcoded secrets (API keys, passwords, tokens)
- Insecure configurations
- Dependency vulnerabilities
- Input validation issues
- Authentication/authorization weaknesses

After analysis, I'll ask: "Create GitHub issues for these vulnerabilities?"
- Yes: I'll create prioritized issues with remediation guidance
- Todos only: I'll maintain local tracking for resolution
- Summary: I'll provide actionable security report

This provides actionable security improvements tailored to your project without overwhelming detail.