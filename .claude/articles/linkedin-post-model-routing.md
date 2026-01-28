# LinkedIn Post

---

I asked my AI assistant to "clean up the old summary files" and it deleted documentation I actually needed.

The session was running on Haiku — which I'd forgotten I'd switched to. Haiku did exactly what I asked, and that was precisely the problem. I'd given a vague deletion request to a model that doesn't pause to consider what "old" might mean.

So I added routing rules to my global Claude Code config. Now a dedicated router agent (running on Sonnet) examines every request first and decides where to send it. The key insight: Claude Code can't switch models mid-session, so spawning an agent is the only way to get the right model on the right task.

The router checks for project-specific specialized agents first, then falls back to general agents based on complexity. Mechanical tasks with explicit paths go to Haiku. Anything ambiguous or destructive goes to Sonnet. Math proofs and high-stakes decisions go to Opus. If the router is uncertain, it escalates to Opus before anything runs.

One routing hop is cheap insurance. Costs went down (right-sizing models saves money), and I haven't lost files since. More importantly, I actually trust the system now — something I didn't realize was missing until I had it.

Full writeup linked in comments.

---

`#AI` `#DevTools` `#ClaudeCode` `#SoftwareEngineering`

---

**Comment:**

Article here: [https://dev.to/yannick555/my-ai-deleted-important-files-so-i-added-model-routing-50gl]

The routing flow: request → router (Sonnet) → appropriate agent. Project-specific agents get priority, then general agents based on task complexity. The main session model never spawns agents directly — everything goes through the router. This matters because without it, whatever model your session runs on makes the routing decisions, which defeats the purpose.
