---
name: website-new-student
description: Use when a new student assistant or thesis student (BSc or MSc) is joining SPARC and needs to be listed on the website — but does NOT need a full team page or news post. Trigger on: "new student assistant", "new thesis student", "add student", "student joined", "MSc thesis student", "BSc thesis", or when the user mentions someone starting a student role at SPARC that is not a PhD.
---

# Adding a New Student to the SPARC Website

Student assistants and thesis students get a single bullet point in the team listing — no individual page, no news post.

## The only file to edit

`content/team/assistants/index.md`

Add a new bullet point in the list body:

```markdown
- **[Full Name]** — [role description]
```

Role description examples from existing entries:
- `ongoing MSc thesis (Topic title in title case)`
- `student assistant`
- `BSc thesis`
- `Erasmus+ intern`

Match the style and brevity of existing entries.

## Commit and push

```bash
cd /Users/kubakrukar/sciebo/sparc-website/sparc-github-page
git add content/team/assistants/index.md
git commit -m "Add [Name] to student assistants

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>"
git push
```

No PR needed — push directly to main.
