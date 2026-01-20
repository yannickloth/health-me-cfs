# MCP Server Integration

## Recommended Servers

### TexLab (LaTeX LSP)
Real-time syntax checking, completion, go-to-definition.

```json
{"mcpServers": {"texlab": {"command": "texlab", "args": []}}}
```

### LTeX (Grammar/Spelling)
LaTeX-aware grammar checking.

```json
{"mcpServers": {"ltex": {"command": "ltex-ls", "args": []}}}
```

## Local LLM (Ollama)

Route Haiku-tier tasks to local models for cost savings:

```bash
ollama pull qwen2.5:7b
```

| Task | Local Model |
|------|-------------|
| Syntax/formatting | qwen2.5:7b |
| Content review | qwen2.5:32b |
| Math verification | Cloud only |
