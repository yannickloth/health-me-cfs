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


## Biomedical MCP Servers

Wired in `opencode.json` under `mcp` (NOT `.mcp.json` — opencode ignores that file).
Local servers are Nix-hermetic (packaged in `flake.nix`, on PATH via `nix develop`).
Bare command names resolve only when opencode is launched from `nix develop` (direnv).

| Server | Type | Source | Auth |
|--------|------|--------|------|
| `biomcp` | local | `biomcp serve` — prebuilt `biomcp-linux-x86_64.tar.gz` via `fetchurl` + autoPatchelfHook | optional keys (`NCBI_API_KEY`, `S2_API_KEY`) |
| `scite` | remote OAuth | `https://api.scite.ai/mcp` | paid plan + `opencode mcp auth scite` — `enabled: false` (no subscription yet) |

Notes:
- biomcp already covers PubMed, cBioPortal, ClinicalTrials.gov, OpenFDA, Semantic Scholar — avoid double-tooling these.
- cBioPortal deliberately NOT wired (cancer-genomics, off-domain for ME/CFS).
- `pubmed` (pubmed-mcp-server, @cyanheads) removed from `opencode.json` 2026-11-06: redundant with biomcp's PubMed coverage. Flakes package + `nix/pubmed-mcp-server/` src remain for possible re-wiring.
- biomcp is not in nixpkgs (verified); it ships prebuilt artifacts, so no dependency resolution needed.
