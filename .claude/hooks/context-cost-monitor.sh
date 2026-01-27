#!/bin/bash
# Context Cost Monitor Hook
# Monitors token usage and warns when session switching would be more cost-effective

# Read the hook input (contains tool use information)
input=$(cat)

# Extract context usage from recent system warnings (if available in environment)
# Note: This is a simplified version. In practice, Claude sees the warnings directly.
# This hook primarily serves as a counter and periodic reminder.

# Configuration
STATE_FILE="${HOME}/.claude/context-monitor-state"
TOOL_CALL_THRESHOLD=10  # Check every N tool calls
CONTEXT_THRESHOLD=70    # Warn at 70% usage

# Initialize or read state
if [[ ! -f "$STATE_FILE" ]]; then
    echo "0" > "$STATE_FILE"
fi

tool_count=$(cat "$STATE_FILE")
tool_count=$((tool_count + 1))
echo "$tool_count" > "$STATE_FILE"

# Check every TOOL_CALL_THRESHOLD calls
if (( tool_count % TOOL_CALL_THRESHOLD == 0 )); then
    # Output a reminder for Claude to check context
    # Claude will see this in the hook output and can check the actual token usage
    cat <<EOF
{
  "hookSpecificOutput": {
    "hookEventName": "PostToolUse",
    "permissionDecision": "allow",
    "message": "[Context Monitor] ${tool_count} tool calls completed. Claude should check token usage and evaluate if session switching would be cost-effective."
  }
}
EOF
else
    # No action needed yet
    echo "{}"
fi