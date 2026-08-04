# MCP Server Integration

## Recommended Servers

### TexLab (LaTeX LSP)

Real-time syntax check · completion · go-to-definition.

```json
{"mcpServers": {"texlab": {"command": "texlab", "args": []}}}
```

### LTeX (Grammar/Spelling)

LaTeX-aware grammar check.

```json
{"mcpServers": {"ltex": {"command": "ltex-ls", "args": []}}}
```

