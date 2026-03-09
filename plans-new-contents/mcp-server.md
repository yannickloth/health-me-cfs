# MCP Server: ME/CFS Knowledge Base

An MCP server that exposes the paper's content and structure as queryable tools, allowing any MCP client to ask questions about ME/CFS pathophysiology, treatment, research, and the document itself.

## TODO

- Structure our knowledge such that it's easy to identify what's speculation from fact.
- Ask Claude how to best structure the knowledge, given the usage as MCP contents as well.
- Maybe plan for usage of knowledge to generate a searchable website, full of cross-references between articles.
- Ask Claude to identify all the kinds of contents we have (like in maths: definition, thm, corollary, lemma etc.)
- Ask Claude which killer features this MCP server could have.

## Design Decisions

| Decision | Choice | Rationale |
|----------|--------|-----------|
| Language | Java 25+ | Project convention |
| MCP library | Official Java MCP SDK | Maintained by MCP project, no Spring needed |
| Transport | STDIO | Standard for local MCP servers |
| Content embedding | Baked in at build time | No runtime file access needed; self-contained artifact |
| Primary distribution | Nix flake output in this repo | Fits existing build system |
| Secondary distribution | GraalVM native image (GitHub release) | Zero-dependency binary for widest reach |
| Build tool | Gradle (Kotlin DSL) | Lighter than Maven, good GraalVM/Nix support |

## Content to Index

Extracted from `.tex` files at build time into structured internal representation.

### Structured Data

| Data type | Source | Count (approx) | Fields |
|-----------|--------|-----------------|--------|
| Chapters | `contents/part*/ch*.tex` | ~40 | id, title, part, full text |
| Sections | `\section{}` / `\subsection{}` | ~300+ | id, title, chapter, text |
| Hypotheses | `\begin{hypothesis}` | ~100 | title, certainty, body, predictions, citations |
| Speculations | `\begin{speculation}` | ~100 | title, certainty, body, citations |
| Achievements | `\begin{achievement}` | ~50 | title, body, citations |
| Open questions | `\begin{open_question}` | ~50 | title, body |
| Predictions | `\begin{prediction}` | ~30 | title, body, testable criteria |
| Bibliography | `references.bib` | ~500+ | key, authors, title, year, journal, doi |
| Document outline | `\part`, `\chapter`, `\section` | full tree | hierarchy with titles |

### Excluded from Public Server

- `patients/` directory (personal medical data)
- `appendix-i-*.tex` (personal case data)
- `.claude/case-data/` (private case data)

## MCP Tool Surface

### Search & Retrieval

| Tool | Parameters | Returns | Description |
|------|-----------|---------|-------------|
| `search_content` | `query: string`, `part?: string` | Matching passages with chapter/section context | Full-text search across all chapters |
| `get_chapter` | `chapter_id: string` | Chapter content (cleaned of LaTeX markup) | Retrieve a full chapter |
| `get_section` | `chapter_id: string`, `section: string` | Section content | Retrieve a specific section |
| `get_document_outline` | — | Structured TOC (parts → chapters → sections) | Document structure overview |

### Hypotheses & Scientific Claims

| Tool | Parameters | Returns | Description |
|------|-----------|---------|-------------|
| `list_hypotheses` | `min_certainty?: float`, `part?: string` | List of hypotheses with certainty levels | Browse all hypotheses/speculations |
| `get_hypothesis` | `id: string` | Full hypothesis with certainty, predictions, citations | Detailed hypothesis view |
| `list_open_questions` | `chapter?: string` | Open questions in the document | Unresolved research questions |
| `list_predictions` | — | Testable predictions from hypotheses | Falsifiable claims |

### Bibliography

| Tool | Parameters | Returns | Description |
|------|-----------|---------|-------------|
| `search_bibliography` | `query: string` | Matching references with metadata | Search by author, title, keyword |
| `get_reference` | `cite_key: string` | Full bibliographic entry | Look up a specific citation |

### Environments & Structure

| Tool | Parameters | Returns | Description |
|------|-----------|---------|-------------|
| `list_environments` | `type: string` | All instances of that environment type | Find all hypothesis/achievement/warning/etc |
| `get_treatment_info` | `condition?: string` | Treatment protocols and evidence | Query Part III content |
| `get_pathophysiology` | `system?: string` | Pathophysiology by body system | Query Part II content |

### Meta

| Tool | Parameters | Returns | Description |
|------|-----------|---------|-------------|
| `get_document_info` | — | Title, author, version, part count, stats | Document metadata and statistics |
| `get_certainty_summary` | — | Distribution of certainty levels across hypotheses | Evidence confidence overview |

## LaTeX Parsing Strategy

**Approach:** Regex-based extraction (not a full LaTeX parser). Sufficient for structured environments and sectioning commands.

### What to parse:
- `\part{}`, `\chapter{}`, `\section{}`, `\subsection{}` → document hierarchy
- `\begin{hypothesis}[Title]` ... `\end{hypothesis}` → structured environments
- `\cite{}`, `\citep{}`, `\citet{}` → citation references
- `\label{}` → cross-reference anchors
- BibTeX entries from `references.bib` → bibliography

### What to strip for output:
- Formatting commands: `\textit{}`, `\textbf{}`, `\emph{}`
- Layout commands: `\vspace`, `\medskip`, `\noindent`
- Comments: `% ...`
- Complex macros: simplify or remove

### Parser implementation:
- Java `Pattern`/`Matcher` for extraction
- Recursive descent for nested braces
- BibTeX parser (simple custom or existing library like JBibTeX)

## Project Structure

```
mcp-server/
├── build.gradle.kts
├── settings.gradle.kts
├── src/
│   └── main/
│       └── java/
│           └── mecfs/
│               └── mcp/
│                   ├── Main.java              # Entry point, server setup
│                   ├── LatexParser.java        # .tex file parsing
│                   ├── BibParser.java          # references.bib parsing
│                   ├── ContentIndex.java       # In-memory searchable index
│                   ├── model/
│                   │   ├── Chapter.java        # Chapter record
│                   │   ├── Section.java        # Section record
│                   │   ├── Hypothesis.java     # Hypothesis/speculation record
│                   │   ├── Environment.java    # Generic environment record
│                   │   ├── Reference.java      # Bibliography entry record
│                   │   └── DocumentOutline.java
│                   └── tools/
│                       ├── SearchTools.java    # search_content, get_chapter, etc.
│                       ├── HypothesisTools.java
│                       ├── BibliographyTools.java
│                       ├── StructureTools.java
│                       └── MetaTools.java
├── content/                                   # Populated at build time
│   ├── tex/                                   # Copied .tex files (excluding private)
│   └── references.bib
└── graalvm-config/                            # Native image configuration
    ├── reflect-config.json
    └── resource-config.json
```

## Build & Packaging

### Nix Integration

Add to `flake.nix`:

```nix
packages.mcp-server = pkgs.stdenvNoCC.mkDerivation {
  name = "mecfs-mcp-server";
  src = ./mcp-server;
  # Copy .tex content (excluding private data) into the build
  # Build with Gradle
  # Output: runnable JAR or native image
};

apps.mcp-server = {
  type = "app";
  program = "${packages.mcp-server}/bin/mecfs-mcp-server";
};
```

Usage: `nix run .#mcp-server` or `nix build .#mcp-server`

### GraalVM Native Image

- Configure reflection for MCP SDK classes
- Embed content files as resources
- Build via Gradle plugin or Nix derivation
- Publish Linux/macOS/Windows binaries as GitHub releases

### GitHub Actions

```yaml
on:
  release:
    types: [published]
jobs:
  build-native:
    strategy:
      matrix:
        os: [ubuntu-latest, macos-latest, windows-latest]
    steps:
      - uses: graalvm/setup-graalvm@v1
      - run: ./gradlew nativeCompile
      - upload release artifacts
```

## Client Configuration

Users add to their MCP client config:

```json
{
  "mcpServers": {
    "mecfs-knowledge": {
      "command": "mecfs-mcp-server"
    }
  }
}
```

Or with Nix:

```json
{
  "mcpServers": {
    "mecfs-knowledge": {
      "command": "nix",
      "args": ["run", "github:yannickloth/health-me-cfs#mcp-server"]
    }
  }
}
```

## Implementation Phases

### Phase 1: Core Infrastructure
- [ ] Set up Gradle project with MCP SDK dependency
- [ ] Implement `Main.java` with STDIO transport and server bootstrap
- [ ] Implement basic `LatexParser` (sections, chapters, plain text extraction)
- [ ] Implement `ContentIndex` with in-memory full-text search
- [ ] Expose `search_content`, `get_chapter`, `get_document_outline`
- [ ] Manual testing with Claude Code

### Phase 2: Structured Content
- [ ] Parse hypothesis/speculation/achievement/open_question/prediction environments
- [ ] Parse certainty levels from environment bodies
- [ ] Implement `HypothesisTools` (list, get, filter by certainty)
- [ ] Implement `list_environments`
- [ ] BibTeX parsing and `BibliographyTools`

### Phase 3: Domain-Specific Tools
- [ ] `get_treatment_info` — structured access to Part III
- [ ] `get_pathophysiology` — structured access to Part II
- [ ] `get_certainty_summary` — aggregate statistics
- [ ] `get_document_info` — metadata

### Phase 4: Nix Packaging
- [ ] Content copying step (exclude private data)
- [ ] Nix derivation for building the server
- [ ] `nix run .#mcp-server` integration
- [ ] Test with Claude Desktop MCP config

### Phase 5: Distribution
- [ ] GraalVM native-image configuration and testing
- [ ] GitHub Actions workflow for release builds
- [ ] Documentation (README with setup instructions)
