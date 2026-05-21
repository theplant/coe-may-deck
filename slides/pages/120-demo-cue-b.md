---
layout: default
title: demo B cue — meta
class: slide-page demo-cue
---

<div class="eyebrow-top">demo · 2 / 2 · live</div>

<div class="cue-body">
  <div class="headline">
    This deck was built<br/>with <span class="rust">Claude Code.</span>
  </div>
  <div class="cn">这个 deck 就是用 Claude Code 做的。</div>
</div>

<div class="cue-subline">
  Let's add a slide <span class="rust">right now</span> — what should it say?
</div>

<div class="cue-tree" v-pre>
<pre>~/coe-may-deck                  felix@mac
├── CLAUDE.md
└── slides/
    ├── slides.md       ← we're going to edit this
    ├── style.css
    └── layouts/</pre>
</div>

<!--
DEMO B — CUE
Beat: "This whole deck — the slide you're looking at now — was built with Claude Code.
Let me show you. I'm going to ask the audience for a one-line addition,
and we'll edit this very deck while you watch. The new slide will appear in seconds."
Then: switch to terminal + browser side-by-side. Take an audience suggestion.
Ask Claude to add the slide. Watch it appear. ~5-7 min.

BACKUP TOPIC (use if audience is silent ≥15s, or the suggestion is too vague/risky):
Say to Claude (out loud, into Claude Code, audience watching):
  "Add a 'what to try this week' CTA slide near the end of slides.md.
   Three concrete actions for the audience, bilingual EN + CN."

Let Claude pick the three actions, draft the bilingual line, choose the
layout, and write the commit message. The point of the demo is the
audience watching Claude *generate* — don't dictate the content yourself.
-->
