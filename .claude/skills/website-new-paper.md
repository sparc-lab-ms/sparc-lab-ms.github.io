---
name: website-new-paper
description: Use when the user shares a newly published paper (PDF) and wants to add it to the SPARC lab website. Handles creating a news post, adding to publications list, optionally adding to a project page, and drafting a LinkedIn post. Trigger on: "new paper", "just published", "add this paper", "add to publications", "write a news post about this paper", or any time a PDF of an academic paper is supplied with intent to post about it.
---

# Adding a New Paper to the SPARC Website

The user has shared a PDF of a newly published paper. Follow these steps in order.

## Step 1 — Extract paper details

Read the PDF (first 5 pages are usually enough) to find:
- Full title
- Authors in order (note which is Krukar)
- Journal or conference name, volume, issue, pages if available
- DOI
- Publication date (use online-first date if in press)
- Abstract / key findings — what is the single most important take-home message?

Also check if there is a supplementary website, data repo, or interactive demo linked in the paper (often in "Data availability" or "Supplementary material" sections).

## Step 2 — Draft the news blog post

Blog posts live in `content/blog/YYYY-MM-DD-short-title/index.md`. Follow the existing format exactly:

```markdown
---
title: [Short punchy title for the post]
date: 'YYYY-MM-DD'
author: SPARC Lab
description: [One sentence summary for SEO/preview]
draft: false
layout: single
categories:
- news
---

[Body text — see style notes below]
```

**Style notes for the body:**
- Open with a link to the paper (journal name in italics)
- State the core finding in plain language — what does this mean for someone in architecture, GIS, or spatial cognition?
- 2–4 short paragraphs or bullet points max; this is a news item, not a summary
- Thank collaborators if the paper has co-authors from outside SPARC
- If there's a project page this belongs to, link to it
- If there's supplementary data/demo, link to it

**Before creating the file**, show the draft body text to the user and ask them to confirm or edit it. Wait for their OK before proceeding.

## Step 3 — Add to publications list

Publications are in `content/publications/_index.md`. Add a new `<li class="pub">` entry inside the correct year's `<ul class="pub-list">`. If the year doesn't exist yet, add a new `<h2 id="yYYYY">YYYY</h2>` section before the 2026 one.

Format exactly like existing entries:
```html
<li class="pub">
<div class="pub-title">Full paper title</div>
<div class="pub-authors">Last, F., Last, F., &amp; <strong>Krukar, J.</strong>, ...</div>
<div class="pub-venue"><em>Journal Name</em>, vol(issue), pages.</div>
<div class="pub-links"><a href="https://doi.org/...">open access PDF</a> · <a href="...">data &amp; code</a></div>
</li>
```

Rules:
- **Krukar, J.** is always wrapped in `<strong>` tags
- Use `&amp;` for `&` in HTML
- If open access, link text is "open access PDF"; if paywalled, use "doi"
- Only include data/code/demo link if one exists
- Add to the TOP of the correct year's list (newest first)

## Step 4 — Check project relevance

List the projects in `content/projects/` (just `ls` the directory) and ask the user:

> "Does this paper belong to any of these projects? [list them]. If yes, I'll add it to the Articles section of that project page."

If yes, add the citation to the `### Articles` list in that project's `index.md`, at the TOP (most recent first), following the existing citation format there (author–year–title–journal–doi).

## Step 5 — LinkedIn post

Draft a short LinkedIn post in the chat. One key message, conversational tone, no jargon. Include the DOI link. End with a brief thanks to collaborators. 3–5 short paragraphs or a mix of prose and bullets. Don't start with "Excited to share" — find a more direct hook.

## Step 6 — Commit and push

Once the user has confirmed the news text (Step 2) and you've completed Steps 3–4:

```bash
cd /Users/kubakrukar/sciebo/sparc-website/sparc-github-page
git add [all changed files]
git commit -m "Add news post and publication entry for [short title]

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>"
git push
```

No PR needed — push directly to main.
