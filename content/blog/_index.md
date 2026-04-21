---
title: "News"
description: |
  Announcements, publications, talks, and lab updates from SPARC.
author: "SPARC Lab"
show_post_thumbnail: false
thumbnail_left: false
show_author_byline: true
show_post_date: true
show_button_links: false
layout: list-sidebar

sidebar:
  title: "SPARC news"
  description: |
    Announcements, papers, talks, hires, and other lab updates.

    Lab members can add a post by creating a Markdown file in
    `content/blog/` and opening a pull request — see the README.
  author: "SPARC Lab"
  text_link_label: Subscribe via RSS
  text_link_url: /blog/index.xml
  categories_link: true
  tags_link: true
  show_sidebar_adunit: false

cascade:
  author: "SPARC Lab"
  show_author_byline: true
  show_post_date: true
  show_comments: false
  # Individual blog pages aren't rendered: full post bodies appear inline on the home page.
  # Resources (e.g. featured.jpg) are still published and available to the home layout.
  _build:
    render: "never"
    list: "local"
  sidebar:
    text_link_label: View all posts
    text_link_url: /blog/
    show_sidebar_adunit: false
---
