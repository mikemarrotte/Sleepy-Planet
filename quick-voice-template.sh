#!/bin/bash

# Quick Voice Memo Template Creator
# Usage: ./quick-voice-template.sh "Your memo title"

TITLE="${1:-Voice Memo}"
DATE=$(date '+%Y-%m-%d %H:%M')
FILENAME="content/Voice Memo - $(date '+%Y-%m-%d_%H-%M').md"

echo "🎙️ Creating voice memo template: $FILENAME"

cat > "$FILENAME" << EOF
---
title: $TITLE - $DATE
draft: false
tags: [voice-memo, transcript, $(date '+%Y-%m-%d')]
---

# $TITLE

## Recording Details
- Date: $DATE
- Duration: [Add duration here]
- Quality: [Good/Fair/Poor]

## Transcript
[Paste your voice memo transcript here]

## Key Points
- 
- 
- 

## Follow-up Actions
- [ ] 
- [ ] 
- [ ] 

## Related Notes
- [[]]
- [[]]

---
*Created from voice memo on $DATE*
EOF

echo "✅ Template created: $FILENAME"
echo "📝 Open in Obsidian to add your content!"
echo "🚀 Run ./publish.sh when ready to publish"
