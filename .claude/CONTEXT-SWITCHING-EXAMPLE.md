# Context Switching Example

## Scenario: Context at 75% (150,000 / 200,000 tokens)

### Cost Analysis

**Option A: Continue and auto-compact at 95%**
- Current tokens: 150,000
- Will reach 95% (190,000 tokens) in ~10-15 more exchanges
- Compaction will process all 190,000 tokens
- Estimated cost: ~$0.30-0.40 (processing + summary generation)

**Option B: Switch to new session now**
- System prompt + CLAUDE.md: ~5,000 tokens (cached, reduced cost)
- Continuation prompt: ~5,000-7,500 tokens (5% of current context)
- Total for new session: ~10,000-12,500 tokens
- Estimated cost: ~$0.05-0.08

**Decision: Switch now (saves ~$0.25)**

---

## Automatic Response Example

When I detect we're at 75% context:

### Context Optimization Alert

We're at 75% context usage (150,000/200,000 tokens). Starting a new session would be more cost-effective than continuing to auto-compact.

**Here's your continuation prompt for the new session:**

> Continue ME/CFS documentation project with context monitoring system.
>
> **Current State:** Implemented automatic context cost monitoring system with both CLAUDE.md instructions and PostToolUse hook. System now automatically detects when session switching is cheaper than compacting and generates continuation prompts.
>
> **Files Modified:**
>
> - `.claude/CLAUDE.md` (lines 22-73): Added "Context and Cost Management" section
> - `.claude/hooks/context-cost-monitor.sh`: Hook script that counts tool calls
> - `.claude/settings.json`: Added PostToolUse hook configuration (matcher: "*")
>
> **Key Decisions:**
>
> - Monitor threshold: 70% context usage
> - Hook reminder: Every 10 tool calls
> - Target continuation prompt size: <5% of current context
> - Changed from "ask user" to "automatically generate" when switching is cheaper
>
> **Next Steps:**
>
> - Test the system in practice as context grows
> - Refine thresholds based on actual cost patterns
> - Consider adding cost estimation logic to hook script
>
> **Technical Context:**
>
> - Project uses Nix build system for LaTeX compilation
> - Heavy use of subagents for specialized tasks (see CLAUDE.md agent tables)
> - Literature management system tracks research papers in Literature/ folder
> - Medical case management agents for ME/CFS patient tracking

**To continue:**

1. Copy the prompt above (everything in the quote block)
2. Run: `/rename "mecfs-context-monitoring-v1"`
3. Run: `/clear`
4. Start new session and paste the prompt

This saves approximately $0.25 compared to continuing to auto-compact.

---

## How It Works

1. **Periodic Checking**: Hook reminds me every 10 tool calls
2. **Context Monitoring**: I check `<system_warning>` tags for token usage
3. **Cost Evaluation**: Compare compaction cost vs fresh start cost
4. **Automatic Generation**: When switching is cheaper, immediately generate prompt
5. **User Action**: User copies prompt, renames session, clears, and pastes

---

## Benefits

- **Cost Savings**: ~$0.20-0.30 per switch when done at optimal time
- **No Context Loss**: Continuation prompt preserves all critical information
- **Seamless Workflow**: User just copy/paste, no manual summarization needed
- **Proactive**: System monitors automatically, user doesn't need to think about it
- **Transparent**: Clear explanation of cost savings and reasoning