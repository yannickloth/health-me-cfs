---
title: "My AI Deleted Important Files, So I Added Model Routing"
published: false
description: "Haiku nuked my docs because I didn't think about which model should handle deletions. Now I route tasks based on risk."
tags: ai, claudecode, architecture, productivity
cover_image:
canonical_url:
---

Last week I asked Claude Code to "clean up the old summary files" and it deleted documentation I actually needed. Git saved me, but when I looked at the diff I noticed something important: the session was running on Haiku, which I'd forgotten I'd switched to. Haiku did exactly what I asked — and that was precisely the problem. I had given a vague deletion request to a model that doesn't stop to consider what "old" might mean in context.

## The actual problem

Claude offers three models, each with different capabilities and costs:

| Model | Cost | Good at |
|-------|------|---------|
| Haiku | cheap | fast, mechanical stuff |
| Sonnet | 10x | thinking things through |
| Opus | 75x | heavy reasoning |

Haiku works fine for tasks like "change this variable name" or "add a semicolon." However, it falls apart when you ask it to "delete the old files" — because "old" means whatever Haiku decides it means, and Haiku doesn't pause to question its interpretation.

## What I changed

To fix this, I added routing rules to my global `~/.claude/CLAUDE.md` (which applies to all projects, unless a project defines its own routing rules). The key change is that a dedicated router agent — running on Sonnet — now examines every request first and decides where to send it:

1. **Parse intent**: What does this request actually mean?
2. **Assess risk**: Is it going to delete or overwrite something?
3. **Match to agents**: Is there a specialized agent for this exact task?
4. **Choose model tier**: If not specialized, which model tier makes sense?
5. **Route immediately**: Delegate to the chosen agent without attempting the task itself

In other words, Sonnet reads the request, applies these rules, and then routes to the appropriate agent. It never executes the task itself.

### Why Sonnet does the routing

Every request goes through `router` first — no exceptions, regardless of what model the session runs on or how obvious the task seems. This might seem like unnecessary overhead, so let me explain why it matters.

**The core rationale:**

- **Cost efficiency**: Without a dedicated router, capable models tend to handle tasks themselves. If you start a session on Opus, Opus will eventually decide "I can do this" for some request — even trivial ones that Haiku could handle for 1/75th the cost. By forcing everything through `router`, execution always goes to the cheapest model that can actually handle the task.
- **Consistency**: Because all routing decisions flow through one component, you get predictable behavior regardless of your session model.
- **Simplicity**: The architecture stays clean — just one hop (router → executor) rather than chains of delegation.

Yes, spawning an agent adds latency. But the alternative is Opus burning tokens on tasks Haiku could handle just as well. In practice, the routing overhead pays for itself many times over.

**Important caveat:** CLAUDE.md instructions are advisory, not mechanically enforced. The model may still decide to handle simple tasks directly. That said, the routing works best when the model recognizes it should delegate — and in my experience, it usually does.

**The "no direct agent spawning" rule:** This is perhaps the most important constraint: the main session model must NEVER spawn agents directly. The ONLY valid flow is `User request → router → agent`. This applies even when the task seems obvious.

Why so strict? Because without this rule, capable models will rationalize shortcuts. They'll think: "This is clearly an Explore task, I'll just spawn the Explore agent directly." But that defeats the entire routing system. The router exists precisely to make these decisions — not the main session model. Put differently: the extra hop through router is not optional overhead — it IS the system.

There's also a fallback for edge cases. When Sonnet isn't sure how to route something, it delegates to `router-escalation` (which runs on Opus). This escalation agent analyzes the ambiguous request and spawns the appropriate agent directly. In practice, Sonnet handles 95%+ of routing decisions correctly; the remaining cases get escalated before anything runs.

## How the routing works

Here's the actual decision flow. Every request goes to a `router` agent first, which interprets the request, assesses risk, and decides where to send it:

```text
router receives request
    ↓
1. Parse intent: What is the user asking?
2. Assess risk: Deletion? Major changes? Significant consequences?
3. Match to agents: Is there a specialized agent for this exact task?

Priority 1: Project-specific specialized agent exists?
    → route to project agent (.claude/agents/)

Priority 2: No specialized agent - route to general agent:
    Mechanical + explicit paths + reversible?
        → haiku-general

    Ambiguous OR destructive OR needs judgment?
        → sonnet-general

    Math proofs, logic verification, high-stakes?
        → opus-general

Priority 3: Main Claude (no agent spawn):
    Conversation/coordination only
    Questions about the system itself
    Tasks requiring no tool use

Uncertain about routing decision?
    → escalate to router-escalation (Opus) first
```

**Key insight:** The router agent is critical because without it, whatever model is active interprets the routing rules. If your session runs on Haiku, then Haiku decides where to route — which completely defeats the purpose. By contrast, using a dedicated router ensures consistent routing logic regardless of what model the session happens to be running.

## Why it has to be agents

You might wonder why I'm using agents at all rather than just having the model switch modes. The reason is architectural: Claude Code can't switch models mid-conversation. If you start a session on Haiku, everything runs on Haiku until the session ends. There's no built-in way to say "this looks risky, bump up to Sonnet for this part."

Spawning an agent is the only mechanism to use a different model. Agents run as subprocesses with their own model setting, which means if you need Sonnet to handle a deletion while your main session runs on Haiku, you have to spawn a Sonnet agent.

This leads to an important realization: agents aren't just for organizing specialized tasks — they're the only way to get the right model on the right task. The routing system depends entirely on this capability.

## The five agents

The system uses two router agents for routing decisions, plus three general agents for execution.

**router (Sonnet)** serves as the entry point for all requests. It interprets intent, assesses risk, and routes to the appropriate agent. Crucially, it never executes tasks itself — it always spawns another agent (either project-specific or general). When uncertain about a routing decision, it escalates to router-escalation.

**router-escalation (Opus)** handles the edge cases where router isn't confident. It analyzes the ambiguous request, makes the routing decision, and spawns the appropriate agent directly. Like router, it never executes tasks itself.

The remaining three agents are general-purpose executors for tasks that don't match any specialized agent:

**haiku-general (Haiku)** handles mechanical operations with no judgment needed — find-replace, pattern matching, simple transforms. It's fast and cheap for explicit operations.

**sonnet-general (Sonnet)** is the default for tasks requiring reasoning, analysis, or judgment calls. Anything that needs a second thought before executing lands here.

**opus-general (Opus)** tackles complex reasoning: mathematical proofs, detecting subtle logical flaws, high-stakes decisions with significant consequences.

One important distinction: general agents are endpoints. They execute tasks themselves and do NOT further route to specialized agents. Only the router knows about project-specific agents.

## Project-specific specialized agents

Beyond the five core agents, the router also checks a project's `.claude/agents/` directory for specialized agents tailored to that project's domain.

To give a concrete example, one of my research projects includes agents like `tikz-illustrator` (creates diagrams), `literature-researcher` (finds and integrates research papers), and `math-verifier` (validates mathematical models). This particular project to date has 42 such agents.

The key architectural principle here is that project-specific agents are the ONLY specialized agents in the system. General agents like haiku-general, sonnet-general, and opus-general do NOT route to them — only the router knows about project agents.

This explains why the "no direct spawning" rule is so important: if the main session model could spawn agents directly, it might bypass the router entirely and miss project-specific agents that would be better suited for the task.

## Risk assessment for deletions

For any task involving file deletion or major changes, the router performs a quick risk assessment: What's the scope? Does the content look valuable? Did the user give exact paths or just patterns? Is this reversible?

Based on these factors, it routes defensively:

- High risk → `sonnet-general` or `opus-general`
- Low risk + explicit paths → `haiku-general`
- Any uncertainty → `sonnet-general` for analysis first

Haiku only touches destructive operations when the user provided exact file paths, the files are clearly disposable, and the operation is easily reversible. Everything else goes to Sonnet, which examines what matches, checks if it looks important, and asks before deleting.

## Some examples

`"Change 'colour' to 'color' in src/utils.ts"` → **Haiku**. The file is explicit, the change is non-destructive, and the intent is clear.

`"Clean up the old files in this directory"` → **Sonnet**. Both "old" and "clean up" are ambiguous, so this needs judgment before execution.

`"Check if the proof in section 3.2 is valid"` → **Opus**. Verifying math proofs is exactly where you don't want mistakes.

## Built-in guardrails

Each general agent has rules baked into its definition: read files before touching them, don't delete based on patterns alone, and if uncertain, ask or escalate. These aren't suggestions — they're part of the agent specification.

## Before and after

**Before:**

"Delete the old implementation files" → Haiku (session model) → wrong files gone

**After:**

"Delete the old implementation files" → router → sonnet-general → "these 3 files match, they contain X, want me to proceed?"

## Results

I haven't had an accidental deletion since. Costs went down too, because right-sizing models saves money. And perhaps most importantly, I actually trust the system now — something I didn't realize was missing until I had it.

## If you want to try this

Ask Claude Code to set it up. Here's roughly what I used:

```text
Create routing and general-purpose agents in ~/.claude/agents/:

Router agents (ensure routing happens on the right model):
1. router (Sonnet) - entry point for all requests; interprets intent,
   assesses risk, routes to project-specific or general agents
2. router-escalation (Opus) - handles edge cases when router is uncertain;
   makes routing decision and spawns agent directly

General agents (for tasks without specialized agents):
3. haiku-general (Haiku) - mechanical operations, no judgment needed
4. sonnet-general (Sonnet) - default for reasoning, analysis, judgment calls
5. opus-general (Opus) - complex reasoning, proofs, high-stakes decisions

Then add routing rules to ~/.claude/CLAUDE.md:
- If a project has its own routing rules in .claude/CLAUDE.md, use those instead
  (project-specific configuration takes precedence over global rules)
- EVERY request goes through router first, no exceptions
  (even if session runs on Opus, even if task seems obvious)
- The main session model MUST NOT spawn agents directly
  (ONLY valid flow: user request → router → agent)
- router follows this decision tree:
  1. Parse intent: What is the user asking?
  2. Assess risk: Deletion? Major changes? Consequences?
  3. Match to agents: Check project's .claude/agents/ first
  4. Choose model tier: Haiku/Sonnet/Opus based on complexity
  5. Route immediately: Delegate without attempting task
- Project-specific agents (Priority 1): Route when exact match exists
- General agents (Priority 2): Execute tasks themselves - they do NOT
  further route to specialized agents
- Main Claude (Priority 3): Conversation/coordination/system questions only
- Risk assessment for destructive operations:
  - Never route to haiku-general unless explicit paths + disposable + reversible
  - High risk → sonnet-general or opus-general
  - Any uncertainty → sonnet-general for analysis
- If router is uncertain about routing decision → escalate to router-escalation

Include examples showing when to use each tier and the risk assessment rules.

Context for Claude (why this matters):

Without explicit routing through router, behavior depends on session model.
Haiku might misroute deletions. Opus might handle everything itself.
By forcing every request through router, routing logic is consistent
regardless of session model.

The "no direct spawning" rule prevents shortcuts: without it, capable
models rationalize "this is obviously task X, I'll spawn agent Y directly."
The extra hop through router is not overhead - it IS the system.

Claude Code can't switch models mid-session. Spawning an agent is the
only way to use a different model. Router isn't optional - it's the
mechanism that guarantees consistent routing behavior.
```

Claude will generate the agent files and update your global configuration. Since it's in `~/.claude/`, it applies to all your projects by default.

---

If you've tried something similar or have a different approach, I'd be interested to hear about it.
