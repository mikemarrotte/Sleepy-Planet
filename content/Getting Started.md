---
title: Getting Started with Your Publishing System
draft: false
tags: [guide, setup, tutorial]
---

# Getting Started with Your Publishing System

This guide will help you start using your new Obsidian-to-Quartz publishing system effectively.

## Opening in Obsidian

1. Open Obsidian
2. Click "Open folder as vault"
3. Navigate to and select: `/Users/michaelmarrotte/Desktop/Sleepy Planet/SP OBSIDIAN VAULT/SP Repo Builder/sp-obsidian-publish`
4. Click "Open"

## Creating Your First Note

1. In Obsidian, create a new note in the `content` folder
2. Use the [[Templates/Note Template]] for consistent formatting
3. Add frontmatter with title, draft status, and tags
4. Write your content using standard Markdown

## Linking Between Notes

- Use `[[Note Name]]` to create links between notes
- Links will automatically work on your published site
- Create connections to build your knowledge graph

## Publishing Changes

When you're ready to publish:

```bash
cd "/Users/michaelmarrotte/Desktop/Sleepy Planet/SP OBSIDIAN VAULT/SP Repo Builder/sp-obsidian-publish"
npx quartz sync
```

Your changes will automatically deploy to: https://mikemarrotte.github.io/Sleepy-Planet

## Recommended Obsidian Plugins

- **Templater** - For advanced templates
- **Tag Wrangler** - Better tag management  
- **Graph Analysis** - Enhanced graph view
- **Quick Switcher++** - Improved navigation

## Tips for Success

- Keep notes in the `content` folder
- Use descriptive titles and tags
- Create index pages for major topics
- Link generously between related notes
- Test locally before publishing

Happy writing! 📝

