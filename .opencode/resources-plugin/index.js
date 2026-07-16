import { tool } from "../node_modules/@opencode-ai/plugin/dist/tool.js";
import { readFileSync, existsSync } from "node:fs";
import path from "node:path";

const INDEX_REL = "web/_site/resource-index.json";
let _index = null;

function loadIndex(worktree) {
  if (_index) return _index;
  const ip = path.join(worktree, INDEX_REL);
  if (!existsSync(ip)) throw new Error(`Index not found at ${ip}`);
  _index = JSON.parse(readFileSync(ip, "utf-8"));
  return _index;
}

export default async function () {
  return {
    tool: {
      "resources/list": tool({
        description: "List every page in the ME/CFS Quarto web: id, title, section_path (part/chapter), headings, source_file, word_count.",
        args: {},
        async execute(_args, ctx) {
          const idx = loadIndex(ctx.worktree);
          return JSON.stringify(
            idx.map((e) => ({
              id: e.id,
              title: e.title,
              section_path: (e.part || "") + (e.chapter ? " / " + e.chapter : ""),
              headings: e.headings,
              source_file: e.source_file,
              word_count: e.word_count,
            })),
            null,
            2,
          );
        },
      }),
      "resources/read": tool({
        description: "Return full markdown content (frontmatter + body) of a page by id.",
        args: {
          id: tool.schema
            .string()
            .describe(
              "Page id, e.g. part1-clinical/ch01-introduction/01-overview-and-terminology",
            ),
        },
        async execute(args, ctx) {
          const idx = loadIndex(ctx.worktree);
          const m = idx.find((e) => e.id === args.id);
          if (!m) return `ERROR: page id '${args.id}' not found`;
          const fp = path.join(ctx.worktree, m.source_file);
          if (!existsSync(fp)) return `ERROR: file not found ${m.source_file}`;
          return readFileSync(fp, "utf-8");
        },
      }),
      "resources/search": tool({
        description:
          "Search page titles, headings, or body content. Returns matching pages with snippet context and hit location.",
        args: {
          query: tool.schema.string().describe("Search query"),
          scope: tool.schema
            .string()
            .default("all")
            .describe("Scope: 'title', 'headings', 'content', or 'all'"),
        },
        async execute(args, ctx) {
          const idx = loadIndex(ctx.worktree);
          const q = args.query.toLowerCase();
          const scope = args.scope || "all";
          const results = [];

          for (const e of idx) {
            const matches = [];
            if (scope === "all" || scope === "title") {
              if (e.title.toLowerCase().includes(q))
                matches.push({ field: "title", snippet: e.title });
            }
            if (scope === "all" || scope === "headings") {
              for (const h of e.headings) {
                if (h.toLowerCase().includes(q))
                  matches.push({ field: "heading", snippet: h });
              }
            }
            if (scope === "all" || scope === "content") {
              const fp = path.join(ctx.worktree, e.source_file);
              if (existsSync(fp)) {
                const text = readFileSync(fp, "utf-8").toLowerCase();
                if (text.includes(q)) {
                  const i = text.indexOf(q);
                  const start = Math.max(0, i - 60);
                  const end = Math.min(text.length, i + args.query.length + 60);
                  matches.push({
                    field: "content",
                    snippet: text.slice(start, end).replace(/\n/g, " ").trim(),
                  });
                }
              }
            }
            if (matches.length)
              results.push({ id: e.id, title: e.title, matches });
          }
          return JSON.stringify(results, null, 2);
        },
      }),
    },
  };
}
