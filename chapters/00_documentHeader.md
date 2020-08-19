---
# this file sets many typesetting preferences for your document output, it also controls some things relating to the way the infrastructure of the document behaves when ported to HTML, pdf and other formats. The list of settings starts with the document-specific things and works its way down to less-important matters relating to the look and feel of the document such as line spacing and font choice.

# if you add a colon or other special punctuation to your title, please put it inside "" or you'll get an error.

# About your project
title: "Title for the project: non-negotiable, you must have a title"
subtitle: |
  Submitted in accordance with the requirements for the degree of
  - MSc Sound Design
  - Reid School of Music
  - Edinburgh College of Art
  - University of Edinburgh
author: Your NAME
abstract: |  
  An overview of your project, what's been achieved and what can we look forward to. This won't show up in your html output, but will show up in the pdf

keywords: [markdown, pandoc, academic writing, final projects, typesetting for artists]
subject: Exploring a way to make writing multifaceted documents more straightforward for students and staff.
thanks: not required unless you want to have something here on the first page, but thanks a lot Internet, you were very helpful.
# about you
email: your@email
affiliation: University of Edinburgh
date: \today

# data and style information relating to the document
bibliography: "bibliography/bibliography.bib"
csl: styling/journal-of-new-music-research.csl
css: styling/pandoc-TOC.css # from here, https://gist.github.com/killercup/5917178 and hacked by MP to give a contents page sidebar

# setup the look and feel of the pdf version of the document:
documentclass: report # a latex specific setting that makes the PDF behave
papersize: a4 # change when you want it in US legal etc.
linestretch: 1.2  # set your line spacing preferences
fontsize: 11pt

# These are all fonts that are shared by windows and MacOS. Change them as you prefer
mainfont: "Georgia"
sansfont: "Courier New"
# the font that shows your code quotes etc.
monofont: "Trebuchet MS"
geometry: "left=4cm, right=3cm, top=2.5cm, bottom=2.5cm"

# table of contents and other behaviours in your PDF and elsewhere.

toc-title: "My title" # change that if you want a different title on your TOC
lof: true
lot: true
link-citations: true
---
