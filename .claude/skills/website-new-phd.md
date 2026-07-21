---
name: website-new-phd
description: Use when a new PhD student is joining SPARC and needs to be added to the website. The user will provide a photo and bio text. Creates a team member page and a news post. Trigger on: "new phd student", "joins sparc", "add to team", "new team member", or when a photo + bio description are shared for someone described as a PhD candidate or PhD student.
---

# Adding a New PhD Student to the SPARC Website

The user is adding a new PhD student to the team. You'll need a photo and bio text — if either is missing, ask before proceeding.

## Step 1 — Gather required information

You need:
- **Full name** (for page title and directory name)
- **Bio text** (provided by user — use exactly as given)
- **Photo** (user will point you to the file path)
- **Joining date** (for the news post — ask explicitly: "What date did they join?")
- **Email address** (ask explicitly if not provided — do not guess)
- **Weight** (order on the Team page) — check `content/team/` to see what weights exist and pick the next available one

Do NOT invent email addresses or other contact details.

## Step 2 — Create the team member page

Directory: `content/team/[firstname-lastname]/`

**index.md** — follow the existing format:

```markdown
---
title: [Full Name]
subtitle: PhD candidate
excerpt: [One sentence distilled from their bio — what do they study?]
date: 'YYYY-MM-DD'
author: [Full Name]
draft: false
weight: [N]
layout: single
links:
- icon: envelope
  icon_pack: fas
  name: email
  url: mailto:[email]
---

[Bio text exactly as provided by the user]
```

**Photo:** Copy the user's photo file to `content/team/[firstname-lastname]/featured.jpg` (or `.png` if the original is PNG). The filename must be `featured.jpg` / `featured.png` for it to display as the team card image.

Check existing team pages (e.g., `content/team/ahmed-aly/`, `content/team/jung-won-lee/`) for reference.

## Step 3 — Create the news blog post

Directory: `content/blog/YYYY-MM-DD-[firstname]-[lastname]-joins-sparc/`

**index.md:**

```markdown
---
title: [Full Name] joins SPARC
date: 'YYYY-MM-DD'
author: SPARC Lab
description: [Full Name] joins SPARC as a PhD candidate[, working on PROJECT if known].
draft: false
layout: single
categories:
- news
---

[Full Name] has joined SPARC as a PhD candidate[working on the [PROJECT](link) project]. Welcome [First name]!
```

**Photo:** Copy the same photo to `content/blog/YYYY-MM-DD-.../featured.jpg`. This makes it appear as a thumbnail on the news list page.

Use the joining date (from Step 1) as the post date and directory prefix.

## Step 4 — Commit and push

```bash
cd /Users/kubakrukar/sciebo/sparc-website/sparc-github-page
git add content/team/[name]/ content/blog/[post-dir]/
git commit -m "Add [Name] to team and news post

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>"
git push
```

No PR needed — push directly to main.
