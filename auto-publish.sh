#!/bin/bash

# Auto-publish script for Sleepy Planet
# This watches for changes and auto-publishes

VAULT_PATH="/Users/michaelmarrotte/Desktop/Sleepy Planet/SP OBSIDIAN VAULT/SP Repo Builder/sp-obsidian-publish"
CONTENT_PATH="$VAULT_PATH/content"

echo "🔄 Starting auto-publish watcher for Sleepy Planet..."
echo "📁 Watching: $CONTENT_PATH"
echo "🌐 Will publish to: https://mikemarrotte.github.io/Sleepy-Planet"
echo "⏹️  Press Ctrl+C to stop"
echo ""

# Function to publish changes
publish_changes() {
    echo "📝 Changes detected! Publishing..."
    cd "$VAULT_PATH"
    npx quartz sync --no-pull
    echo "✅ Published! Changes will be live in 2-3 minutes"
    echo "⏰ $(date): Waiting for more changes..."
    echo ""
}

# Watch for changes in the content directory
fswatch -o "$CONTENT_PATH" | while read f; do
    # Wait 10 seconds to allow for multiple quick changes
    sleep 10
    publish_changes
done
