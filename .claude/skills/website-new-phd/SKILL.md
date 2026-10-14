---
name: website-new-phd
description: Use when a new PhD student is joining SPARC and needs to be added to the website. The user will provide a photo and bio text. Creates a team member page and a news post. Trigger on "new phd student", "joins sparc", "add to team", "new team member", or when a photo and bio description are shared for someone described as a PhD candidate or PhD student.
---

# Adding a New PhD Student to the SPARC Website

The user is adding a new PhD student to the team. You need a photo and bio text. If either is missing, ask before proceeding.

## Step 1: gather required information

You need:
- **Full name** (for page title and directory name)
- **Bio text** (provided by user; use exactly as given)
- **Photo** (the user supplies the file; in a cloud session ask them to upload it or commit it to the repo first)
- **Joining date** (for the news post; ask explicitly: "What date did they join?")
- **Email address** (ask explicitly if not provided; do not guess)
- **Weight** (order on the Team page): check `content/team/` to see what weights exist and pick the next available one

Do NOT invent email addresses or other contact details.

## Step 2: create the team member page

Directory: `content/team/[firstname-lastname]/`

**index.md**, following the existing format:

```markdown
---
title: [Full Name]
subtitle: PhD candidate
excerpt: [One sentence distilled from their bio: what do they study?]
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

**Photo:** copy the photo to `content/team/[firstname-lastname]/featured.jpg` (or `.png` if the original is PNG). The filename must be `featured.jpg` / `featured.png` for it to display as the team card image.

Check existing team pages (e.g. `content/team/ahmed-aly/`, `content/team/jung-won-lee/`) for reference.

## Step 3: create the news blog post

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

[Full Name] has joined SPARC as a PhD candidate[, working on the [PROJECT](link) project]. Welcome [First name]!
```

**Photo:** copy the same photo to `content/blog/YYYY-MM-DD-.../featured.jpg` so it appears as a thumbnail on the news list page.

Use the joining date (from Step 1) as the post date and directory prefix.

## Step 4: commit and push

Run from the repository root:

```bash
git add content/team/[name]/ content/blog/[post-dir]/
git commit -m "Add [Name] to team and news post

Co-Authored-By: Claude <noreply@anthropic.com>"
git push origin main
```

No PR needed. Push directly to main.
