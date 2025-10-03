#!/bin/zsh

# Morning Claude execution script
# Executes Claude with morning message then puts system to sleep
#
# Luanchd
# ~/Library/LaunchAgents/com.user.morning.claude.plist
# status:
#   $ launchctl list | grep com.user.morning.claude
# stop:
#   $ launchctl unload ~/Library/LaunchAgents/com.user.morning.claude.plist
# reload
#   $ launchctl load ~/Library/LaunchAgents/com.user.morning.claude.plist
# Log file for debugging
LOG_FILE="$HOME/.launchd/scripts/morning_claude.log"

# Function to log with timestamp
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S'): $1" >> "$LOG_FILE"
}

log "Starting morning Claude execution"

export PATH="/opt/homebrew/bin:$PATH"

# Execute Claude with the morning message
/Users/gy/.claude/local/claude -p "morning! don't need response" >> "$LOG_FILE" 2>&1

# Check if Claude executed successfully
if [ $? -eq 0 ]; then
    log "Claude executed successfully"
else
    log "Claude execution failed with exit code $?"
fi

# Wait a moment to ensure Claude completes
sleep 5

# Put system to sleep
log "Putting system to sleep"
pmset sleepnow

log "Script completed"
