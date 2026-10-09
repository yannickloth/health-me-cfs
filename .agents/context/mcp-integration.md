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
| `pubmed` | local | `pubmed-mcp-server` — `buildNpmPackage`, src `nix/pubmed-mcp-server/` (@cyanheads, PubMed + Europe PMC full-text + MeSH) | none |
| `biomcp` | local | `biomcp serve` — prebuilt `biomcp-linux-x86_64.tar.gz` via `fetchurl` + autoPatchelfHook | optional keys (`NCBI_API_KEY`, `S2_API_KEY`) |
| `scite` | remote OAuth | `https://api.scite.ai/mcp` | paid plan + `opencode mcp auth scite` — `enabled: false` (no subscription yet) |

Notes:
- biomcp already covers PubMed, cBioPortal, ClinicalTrials.gov, OpenFDA, Semantic Scholar — avoid double-tooling these.
- cBioPortal deliberately NOT wired (cancer-genomics, off-domain for ME/CFS).
- Neither biomcp nor pubmed-mcp-server is in nixpkgs (verified); both ship prebuilt artifacts, so no dependency resolution needed.
