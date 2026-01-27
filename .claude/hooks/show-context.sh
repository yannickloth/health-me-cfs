#!/bin/bash
# Show Context Hook
# Automatically displays context usage at the start of Claude's response

# This hook would need to run PreResponse or PostUserMessage
# to inject context info before Claude responds

# Read the hook input
input=$(cat)

# Try to extract context info from environment or hook input
# Note: Claude Code may not expose this in the current hook system
# This is a placeholder for when/if the functionality becomes available

# For now, output a message that Claude should see and respond to
cat <<EOF
{
  "hookSpecificOutput": {
    "hookEventName": "PreResponse",
    "message": "📊 [Context Monitor] Display current context percentage at start of response"
  }
}
EOF