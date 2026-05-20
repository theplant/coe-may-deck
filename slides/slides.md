---
theme: seriph
title: AI Escapes the Chatbox
info: |
  ## AI Escapes the Chatbox / AI 走出聊天框
  From chat sessions to versioned, team-shared capabilities.

  May CoE training — see ../.scratch/may-training/outline.md
class: text-center
transition: fade
mdc: true
---

# AI Escapes the Chatbox

## AI 走出聊天框

<div class="opacity-70 mt-8">
From chat sessions to versioned, team-shared capabilities
</div>

<div class="opacity-50 mt-16 text-sm">
May 2026 — CoE
</div>

<!--
Open beat — read the title aloud in both languages. Pause. Then:

  "What we're going to do today is not show you a new chatbot.
   We're going to show you AI moving out of the chat window
   and into the place you actually work."

Don't preview the agenda. The opening comparison demo is the agenda.
-->

---
layout: center
class: text-center
---

# Today is **not** about a new chat AI.

<div v-click class="opacity-70 mt-8 text-2xl">
今天不是介绍新的聊天 AI。
</div>

<!--
1 sentence, big pause. Set expectations against the room's default.
Then: "Watch this."  → transition to the side-by-side comparison.
-->

---
layout: cover
class: text-center
---

# Watch this.

<div class="opacity-70 mt-8 text-2xl">
同一个任务，两种 AI 的工作方式
</div>

<div class="opacity-50 mt-12 text-base">
Task: summarize today's <code>#engineering</code> Slack channel
</div>

<!--
Cue the side-by-side recording (block 1 from the outline).

Left pane: chat AI doing it — copy/paste, output trapped in chat history.
Right pane: slackwiki — GitHub Action runs daily, commits to wiki repo.

Length: 4-5 min. Narrate while it plays.
End on the git log of sunfmin/slackwiki — let the room read 2-3 commit
messages on screen before moving on.
-->

---
layout: center
---

# What you just saw

<v-clicks>

- Left: AI's work **vanishes** when the tab closes
- Right: AI's work **stays** — in Git, forever
- Same model. Same prompt. **Different working environment.**

</v-clicks>

<!--
Land the contrast. Don't list features.

Use the word "environment" — it's our thesis word.

If you sense the room thinking "are you telling me to abandon
ChatGPT?" — the next slide answers that.
-->

---
layout: two-cols
class: gap-8
---

# When chat AI still wins

<div class="opacity-70 text-xl mb-6">
聊天式 AI 仍然胜任的场景
</div>

<v-clicks>

- **Exploring unknowns** — "how does X work?"
- **Brainstorming / writing** — design docs, naming, prose
- **Idle thinking** — no artifact required

</v-clicks>

::right::

<div v-click class="mt-32 text-2xl opacity-70 italic">
"Don't throw away your chatbot.<br/>
Add agents next to it."
</div>

<!--
Reassurance slide. ~90 seconds.

Read each bullet. Slow down on "no artifact required" — it's the
defining feature of when chat wins. The audience will recognize
their own use cases here.

Land the quote: chat is for thinking, agent is for shipping.

Transition: "OK. Now let me show you what 'agent' looks like in
practice. Three real examples from my own repos."
-->

---
layout: section
---

# Three real cases

<div class="opacity-70 mt-4 text-2xl">
来自我个人仓库的三个真实案例
</div>

<div v-click class="mt-12 grid grid-cols-3 gap-8 text-lg">
  <div>
    <div class="opacity-50 text-sm">CASE 1</div>
    <div class="font-bold mt-2">slackwiki</div>
    <div class="opacity-70 mt-1">AI in your CLI + Git + CI</div>
  </div>
  <div>
    <div class="opacity-50 text-sm">CASE 2</div>
    <div class="font-bold mt-2">md-to-gdoc-tab</div>
    <div class="opacity-70 mt-1">AI's output reaches your everyday tools</div>
  </div>
  <div>
    <div class="opacity-50 text-sm">CASE 3</div>
    <div class="font-bold mt-2">system-monitor</div>
    <div class="opacity-70 mt-1">AI builds the missing tools</div>
  </div>
</div>

<!--
Set up the structure. Don't promise the punchline at the end yet —
that's the closing surprise.

Click reveal each case label as you say it. Move to Case 1.
-->

---
layout: cover
class: text-center
---

<div class="opacity-50 text-sm uppercase tracking-widest">Case 1</div>

# slackwiki

<div class="opacity-70 mt-4 text-xl">
Slack → Claude Code → markdown wiki → GitHub
</div>

<!--
Section title for Case 1. Pause. Then:

  "I have a Slack workspace. Engineering channel. 200 messages a day.
   Nobody scrolls back. Nobody remembers what was decided yesterday."

(Read the room: every non-engineer just nodded. Hook landed.)

  "Here's what I built — or rather, here's what Claude Code built
   with me, every day, in the background."

Then play the slackwiki recording (block 3 from the outline).
~10 min total for this case.
-->

---
layout: center
---

# The trick is not what it does.

<div v-click class="opacity-70 mt-8 text-2xl">
The trick is <strong>where the work lives</strong>.
</div>

<div v-click class="opacity-50 mt-12 text-xl italic">
关键不是它做了什么，而是 <strong>这些工作沉淀在哪里</strong>。
</div>

<!--
Bridge slide between "what slackwiki does" and "the git log reveal."

Big pause after the click. Let the audience sit with it.

Next slide: the git log itself.
-->

---
layout: default
---

<div class="opacity-50 text-sm uppercase tracking-widest mb-4">
github.com/sunfmin/slackwiki — commits
</div>

```text {all|1|2|3|4|5}
2026-05-14  Add CONTEXT.md + 5 ADRs; split portraits from monthly logs
2026-05-12  Split commit (claude) from push (python); enrich fallback
2026-05-12  Allow git commit/push in claude-settings; deny destructive
2026-05-12  Drop --allowedTools flag; rely on prompt-level guardrails
2026-05-12  Let Claude run git commit + push; Python verifies HEAD moved
```

<div v-click="6" class="opacity-70 mt-8 text-2xl">
This is the AI <strong>thinking through trade-offs</strong>.<br/>
Forever readable. Forever revertable.
</div>

<!--
The headline reveal of Case 1.

Click through commit messages one at a time. Read each aloud,
in plain language:

  - "Here, Claude and I added a glossary and decided to split the logs."
  - "Here, we figured out separation: commits vs push, who does what."
  - "Here, we tightened security."
  - "Here, we removed a permissions hack."
  - "And here, the original moment — letting Claude run git commit."

Then click to the closing line.

Bridge: "This is what chat AI can't give you. Now let's see what else
this enables. Case 2."
-->

---
layout: cover
class: text-center
---

<div class="opacity-50 text-sm uppercase tracking-widest">Case 2</div>

# md-to-gdoc-tab

<div class="opacity-70 mt-4 text-xl">
Chat artifacts → Google Doc tabs, idempotent
</div>

<!--
TODO: storyboard the rest of Case 2 (4 min), Case 3 (6 min), and
the live closing block (18-22 min).

See outline.md → .scratch/may-training/outline.md
-->
