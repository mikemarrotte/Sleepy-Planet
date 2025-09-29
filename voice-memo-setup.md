# 🎙️ Voice Memo to Published Site Workflow

## Complete Setup Guide

### Option 1: Obsidian Mobile + Auto-Sync (Recommended)

#### What You Need:
- **Obsidian Mobile** (free app)
- **Obsidian Sync** ($4/month) OR **iCloud sync** (free)
- **Voice recording app** with transcription

#### The Workflow:
1. **Record Voice Memo** → iPhone Voice Memos app
2. **Get Transcript** → Copy from Voice Memos transcription
3. **Create Note** → Paste into Obsidian Mobile
4. **Auto-Sync** → Syncs to your laptop vault
5. **Auto-Publish** → Run the auto-publish script (see below)

### Option 2: Working Copy App (Advanced)

The [Working Copy](https://workingcopyapp.com/) iOS app can run Git commands directly from your phone!

#### Setup:
1. Install Working Copy app
2. Clone your repository: `https://github.com/mikemarrotte/Sleepy-Planet.git`
3. Edit files directly in the app
4. Commit and push changes
5. GitHub Actions automatically publishes

## 🤖 Auto-Publishing Options

### Method 1: Auto-Watch Script (Run Once)
```bash
cd "/Users/michaelmarrotte/Desktop/Sleepy Planet/SP OBSIDIAN VAULT/SP Repo Builder/sp-obsidian-publish"
./auto-publish.sh
```

This watches for file changes and auto-publishes immediately!

### Method 2: Manual Publish (When Ready)
```bash
cd "/Users/michaelmarrotte/Desktop/Sleepy Planet/SP OBSIDIAN VAULT/SP Repo Builder/sp-obsidian-publish"
./publish.sh
```

## 📱 Mobile Publishing Solutions

### iPhone Voice Memo → Obsidian → Published Site

1. **Record** voice memo in iPhone Voice Memos
2. **Transcribe** - Voice Memos now has built-in transcription
3. **Copy transcript** and paste into new Obsidian note
4. **Add frontmatter**:
   ```yaml
   ---
   title: Voice Memo - [Date]
   draft: false
   tags: [voice-memo, transcript]
   ---
   ```
5. **Save** in Obsidian Mobile
6. **Sync** automatically happens
7. **Publish** - auto-publish script detects changes

## 🔧 Recommended Mobile Apps

### For iOS:
- **Obsidian Mobile** - Main note-taking
- **Working Copy** - Git operations
- **Voice Memos** - Recording with transcription
- **Shortcuts** - Automation (can create quick voice→note workflows)

### For Android:
- **Obsidian Mobile** - Main note-taking
- **MGit** - Git operations
- **Recorder** - Voice recording
- **Tasker** - Automation

## 🚀 Quick Start Commands

### Start Auto-Publishing (watches for changes):
```bash
cd "/Users/michaelmarrotte/Desktop/Sleepy Planet/SP OBSIDIAN VAULT/SP Repo Builder/sp-obsidian-publish"
./auto-publish.sh
```

### Manual Publish:
```bash
./publish.sh
```

### Create Voice Memo Template:
```bash
# This creates a quick template for voice memos
echo "---
title: Voice Memo - $(date '+%Y-%m-%d %H:%M')
draft: false
tags: [voice-memo, transcript, $(date '+%Y-%m-%d')]
---

# Voice Memo - $(date '+%Y-%m-%d %H:%M')

## Original Recording
- Date: $(date '+%Y-%m-%d %H:%M')
- Duration: [Add duration]

## Transcript
[Paste your transcript here]

## Key Points
- 
- 
- 

## Follow-up Actions
- [ ] 
- [ ] 
- [ ] 

---
*Auto-generated voice memo template*" > "content/Voice Memo - $(date '+%Y-%m-%d_%H-%M').md"
```

## 💡 Pro Tips

1. **Use Tags** - Tag voice memos for easy filtering
2. **Consistent Naming** - Use date-based naming for voice memos
3. **Quick Templates** - Create templates for different types of voice memos
4. **Auto-Publish** - Leave the auto-publish script running for instant updates
5. **Mobile Shortcuts** - Create iOS/Android shortcuts for quick voice→note creation

Your voice memos can now flow seamlessly from phone → Obsidian → published site! 🎉
