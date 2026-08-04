> **Style rule:** All config files in this directory must use schematic, telegraphic style — tables/lists/symbols > prose, short phrases, filler words dropped. Goal: minimize context window consumption.

# Security and Risk Rules

Scope: file operations + destructive commands.

---

## Risk Assessment Protocol

**Before ANY file deletion or major change:**

| # | Step | Question |
|---|------|----------|
| 1 | Scope | Which files/content affected? |
| 2 | Value | Content important/valuable? |
| 3 | Specificity | Exact paths given, or patterns? |
| 4 | Reversibility | Easily undone? |
| 5 | Approach | See table below |

**Approach selection:**

| Condition | Action |
|-----------|--------|
| High risk | Careful analysis; consider user confirmation |
| Low risk + explicit paths | Proceed with confidence |
| ANY uncertainty | Analyze thoroughly before acting |

---

## Protected Files — Extra Care Required

### 1. Agent Configuration (ALL paths)

```
~/.config/opencode/opencode.json   - Global configuration
~/.config/opencode/AGENTS.md       - Global instructions
~/.agents/**/.opencode/**          - All global config files
AGENTS.md                          - Project configuration
.opencode/agents/*.md              - Agent definitions
.opencode/skills/**                - Skills
.agents/context/**                 - Context / doctrine files
```

**Pattern:** ANY file matching `AGENTS.md` | `.opencode/**` | `.agents/context/**` | `~/.config/opencode/**`

### 2. System Configuration Files

```
~/.bashrc, ~/.zshrc, ~/.profile  - Shell configs
~/.ssh/config                    - SSH configuration
~/.gitconfig                     - Git configuration
/etc/**/*                        - System-wide configs
```

### 3. Build and Project Configuration

```
package.json, package-lock.json  - Node.js
Cargo.toml, Cargo.lock           - Rust
pyproject.toml, setup.py         - Python
pom.xml, build.gradle            - Java/Kotlin
Makefile, CMakeLists.txt         - Build systems
flake.nix, default.nix           - Nix
```

**Rationale:** Config files require understanding of system/project architecture → assess impact before changes.

---

## Destructive Operations — Strict Rules

Extreme caution required.

### Extra Care Triggers

- File deletion
- Bulk modifications
- Irreversible changes
- Multiple files at once
- Pattern-based operations

### Rare Exception — Proceed with confidence ONLY if ALL met

- ✓ User provided exact file path (e.g., `/tmp/temp-12345.txt`)
- ✓ File obviously temporary (in `/tmp/` | matches temp pattern)
- ✓ Single file only (not multiple)
- ✓ Trivially reversible (git-tracked | recreatable)
- ✓ Zero uncertainty about safety

### Default Behavior — Analyze for ALL destructive ops

- What files affected
- Whether they contain valuable content
- Whether reversible
- Whether user intent clear

### Examples

**Require careful analysis:**

| Request | Reason |
|---------|--------|
| "Delete test files" | Pattern-based; identify which |
| "Remove old logs" | Value uncertain; assess age |
| "Clean up temp directories" | Multiple files; ambiguous |
| "Delete unused imports" | Requires code analysis |
| `rm -rf node_modules` | Large scope; important for builds |

**Lower risk (still verify):**

| Request | Reason |
|---------|--------|
| "Delete /tmp/temp-12345.txt" | Explicit path, clearly temp, single |
| `rm /tmp/test-output-2026-01-31.log` | Explicit, temp, single |

### Risk Checklist — ANY ✓ → Extra caution

- [ ] File value uncertain
- [ ] Pattern-based (not explicit paths)
- [ ] Irreversible
- [ ] Multiple files (>1)
- [ ] No exact paths from user
- [ ] ANY hesitation about safety

---

## Model Selection — Task Tool Delegation

| Context | Model | Notes |
|---------|-------|-------|
| Protected files | `deepseek/deepseek-v4-pro` | Careful reasoning required |
| Destructive ops | `deepseek/deepseek-v4-pro` | Careful reasoning required |
| Judgment needed | NOT `deepseek-v4-flash` | Avoid flash for judgment |
| In doubt | More capable | Default upward |
| Safe + mechanical | `deepseek/deepseek-v4-flash` | Only with explicit paths + clear safety |

---

## Security Principles

| # | Principle | Rule |
|---|-----------|------|
| 1 | Fail safe | Uncertain → ask | use more careful analysis |
| 2 | Defense in depth | Multiple checks before destructive ops |
| 3 | Explicit over implicit | Require explicit paths for destructive ops |
| 4 | Audit trail | Important ops logged/trackable |
| 5 | Reversibility preference | Prefer reversible ops |
