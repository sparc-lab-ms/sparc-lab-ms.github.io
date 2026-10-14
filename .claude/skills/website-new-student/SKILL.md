---
name: website-new-student
description: Use when a new student assistant, thesis student (BSc or MSc), intern or affiliated researcher is joining SPARC and needs to be listed on the website, but does NOT need a full team page or news post. Trigger on "new student assistant", "new thesis student", "add student", "student joined", "MSc thesis student", "BSc thesis", "affiliated researcher", or when the user mentions someone starting a student role at SPARC that is not a PhD.
---

# Adding a New Student to the SPARC Website

Student assistants, thesis students, interns and affiliated researchers get a single bullet point in the team listing. No individual page, no news post.

## The file to edit

- Student assistants, thesis students, interns: `content/team/assistants/index.md`
- Affiliated researchers (e.g. a PhD student based elsewhere): `content/team/affiliated/index.md`
- Alumni: `content/team/alumni/index.md`

Add a new bullet point in the list body:

```markdown
- **[Full Name]** — [role description]
```

Role description examples from existing entries:
- `ongoing MSc thesis (Topic title in title case)`
- `student assistant`
- `BSc thesis`
- `Erasmus+ intern`
- `affiliated PhD student, Télécom Paris`

Match the style and brevity of existing entries. To move someone to Alumni, remove their line from the current list and add it to the Alumni list with the past-tense role (e.g. `MSc thesis`, `student assistant`).

## Commit and push

Run from the repository root:

```bash
git add content/team/
git commit -m "Add [Name] to student assistants

Co-Authored-By: Claude <noreply@anthropic.com>"
git push origin main
```

No PR needed. Push directly to main.
