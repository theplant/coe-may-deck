---
theme: default
title: AI Escapes the Chatbox
info: |
  ## AI Escapes the Chatbox / AI 走出聊天框
  From chat sessions to versioned, team-shared capabilities.

  May CoE training — see ../.scratch/may-training/outline.md
transition: fade
mdc: true
layout: title
vol: '01'
date: may 2026
deckId: coe-may-deck
org: coe
speaker: felix
fonts:
  provider: none
---

From chat sessions to versioned, team-shared capabilities.

<div class="cn-sans mt-3 text-[color:var(--c-ink-mute)] text-base">
聊天会话 → 版本化的、可团队共享的能力。
</div>

<!--
TITLE — vol. 01 magazine-cover treatment
Open beat: read title in both languages. Pause.
"What we're going to do today is not show you a new chatbot. We're going to show
 you AI moving out of the chat window and into the place you actually work."
Don't preview the agenda. The opening comparison demo IS the agenda.
-->

---
layout: moment
eyebrow: setup · the wrong expectation
cn: 今天不是介绍新的聊天 AI。
---

Today is **not** about a new chat AI.

<!--
1 sentence, big pause. Set expectations against the room's default.
"Watch this." → transition to the side-by-side comparison.
-->

---
layout: moment
eyebrow: demo · 0 / 1
footnote: "task: summarize today's #engineering Slack channel"
cn: 同一个任务，两种 AI 的工作方式。
status: "roll demo · split-screen · chat (left) vs. slackwiki (right)"
---

Watch **this**.

<!--
Cue the side-by-side recording (block 1 from outline).
Left: chat AI doing it — copy/paste, output trapped in chat history.
Right: slackwiki GitHub Action running daily, committing to wiki repo.
~4–5 min. Narrate while it plays.
End on the git log of sunfmin/slackwiki — let the room read 2–3 commit
messages on screen before moving on.
-->

---
layout: default
class: bg-paper
---

<div class="eyebrow mb-6">what just happened</div>

<h2 class="mb-8">What you just saw</h2>

<v-clicks>

- Left: AI's work **vanishes** when the tab closes
- Right: AI's work **stays** — in Git, forever
- Same model. Same prompt. **Different working environment.**

</v-clicks>

<div class="status-line-static mt-12">
  <span class="prompt">❯</span>
  <span>same model</span>
  <span class="sep">·</span>
  <span>different environment</span>
  <span class="sep">·</span>
  <span>different outcome</span>
</div>

<style scoped>
.status-line-static {
  font-family: var(--f-mono);
  font-size: 0.85rem;
  color: var(--c-ink-mute);
  border-top: 1px solid var(--c-rule);
  padding-top: 0.7rem;
  display: flex;
  gap: 0.7rem;
  letter-spacing: 0.04em;
}
.status-line-static .prompt { color: var(--c-rust); font-weight: 700; }
.status-line-static .sep { color: var(--c-rule); }
</style>

<!--
Land the contrast. Don't list features.
Use the word "environment" — it's our thesis word.
Transition: "Are you telling me to abandon ChatGPT?" — next slide answers.
-->

---
layout: two-cols
class: gap-8 reassurance
---

<div class="eyebrow mb-5">reassurance</div>

<h2 class="mb-2">When chat AI still wins</h2>

<div class="reassurance-cn mb-8">聊天式 AI 仍然胜任的场景</div>

<v-clicks>

- **Exploring unknowns** — "how does X work?"
- **Brainstorming / writing** — design docs, naming, prose
- **Idle thinking** — no artifact required

</v-clicks>

::right::

<div v-click class="pull-quote">
  <div class="quote-mark">"</div>
  <div class="quote-en">
    Don't throw away your chatbot.<br/>
    <strong>Add agents next to it.</strong>
  </div>
  <div class="quote-cn">不是抛弃聊天 AI ——<br/>是在它旁边加一个 agent。</div>
</div>

<style scoped>
.reassurance-cn {
  font-family: var(--f-display-cn);
  font-size: 1.15rem;
  color: var(--c-ink-soft);
  font-weight: 400;
}
.pull-quote {
  margin-top: 6rem;
  padding-left: 2rem;
  border-left: 2px solid var(--c-rust);
  max-width: 28ch;
}
.quote-mark {
  font-family: var(--f-display);
  font-size: 4rem;
  color: var(--c-rust);
  line-height: 0.4;
  margin-bottom: 1.2rem;
  font-weight: 800;
}
.quote-en {
  font-family: var(--f-display);
  font-style: italic;
  font-size: 1.65rem;
  color: var(--c-ink);
  line-height: 1.3;
  font-variation-settings: 'opsz' 144, 'SOFT' 70, 'wght' 500;
}
.quote-en :deep(strong) {
  color: var(--c-rust);
  font-weight: 700;
  font-style: normal;
}
.quote-cn {
  margin-top: 1rem;
  font-family: var(--f-display-cn);
  font-size: 1rem;
  color: var(--c-ink-soft);
  line-height: 1.5;
}
</style>

<!--
~90 seconds. Slow down on "no artifact required" — the defining feature of
when chat wins. Land the quote: chat is for thinking, agent is for shipping.
Transition: "OK. Now let me show you what 'agent' looks like in practice.
Three real examples from my own repos."
-->

---
layout: cases-overview
---

<!--
Click reveal isn't needed — the page is the agenda.
Let the audience read all three. Then say each case slug aloud, in order.
Move to Case 1.
-->

---
layout: case-cover
num: 1
total: 3
name: slackwiki
cn: Slack 历史 → Claude → 仓库化的 wiki
repo: sunfmin/slackwiki
runtime: 10 min
proves: AI in your CLI + Git + CI
---

Slack → Claude Code → markdown wiki → GitHub.

<!--
Section title for Case 1. Pause. Then:

  "I have a Slack workspace. Engineering channel. 200 messages a day.
   Nobody scrolls back. Nobody remembers what was decided yesterday."

(Read the room: every non-engineer just nodded.)

  "Here's what I built — or rather, what Claude Code built with me,
   every day, in the background."

Play the slackwiki recording. ~10 min for this case.
-->

---
layout: moment
eyebrow: case 1 · bridge
size: md
cn: 关键不是它做了什么 —— 而是这些工作沉淀在哪里。
status: 'next: open the git log'
---

The trick is not what it does. The trick is **where the work lives**.

<!--
Bridge slide. Big pause after each beat. Then advance to the git log.
-->

---
layout: default
class: bg-paper
---

<div class="gitlog-eyebrow mb-3">
  <span class="prompt">❯</span> case 1 · the headline reveal
</div>

<GitLog
  repo="sunfmin/slackwiki"
  :commits="[
    { date: '2026-05-14', msg: 'Add CONTEXT.md + 5 ADRs; split portraits from monthly logs' },
    { date: '2026-05-12', msg: 'Split commit (claude) from push (python); enrich fallback' },
    { date: '2026-05-12', msg: 'Allow git commit/push in claude-settings; deny destructive' },
    { date: '2026-05-12', msg: 'Drop --allowedTools flag; rely on prompt-level guardrails' },
    { date: '2026-05-12', msg: 'Let Claude run git commit + push; Python verifies HEAD moved' },
  ]"
/>

<div v-click class="punchline mt-10">
  This is the AI <strong>thinking through trade-offs</strong>.<br/>
  <span class="punchline-cn">这是 AI 在 <span class="kw">权衡决策</span>，被永久记下。</span>
</div>

<div v-click class="punchline-sub mt-4">
  Forever readable. Forever revertable.
</div>

<style scoped>
.gitlog-eyebrow {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
}
.gitlog-eyebrow .prompt { color: var(--c-rust); font-weight: 700; }

.punchline {
  font-family: var(--f-display);
  font-size: 2rem;
  font-weight: 600;
  line-height: 1.35;
  color: var(--c-ink);
  font-variation-settings: 'opsz' 144, 'SOFT' 50, 'wght' 600;
  letter-spacing: -0.015em;
}
.punchline :deep(strong) {
  color: var(--c-rust);
  font-weight: 800;
}
.punchline-cn {
  display: block;
  margin-top: 0.6rem;
  font-family: var(--f-display-cn);
  font-size: 1.1rem;
  color: var(--c-ink-soft);
  font-weight: 400;
}
.punchline-cn .kw { color: var(--c-rust); font-weight: 600; }

.punchline-sub {
  font-family: var(--f-mono);
  font-size: 1rem;
  color: var(--c-ink-mute);
  letter-spacing: 0.02em;
}
</style>

<!--
Click through commit messages one at a time. Read each aloud in plain language.
Then click to the closing line. Bridge: "Chat AI can't give you this. Case 2."
-->

---
layout: case-cover
num: 2
total: 3
name: md-to-gdoc-tab
cn: 本地 markdown → Google Doc 某个 tab（幂等）
repo: sunfmin/md-to-gdoc-tab
runtime: 4 min
proves: AI's output reaches your everyday tools
bg: sage
---

Chat artifacts → Google Doc tabs, idempotent.

<!--
TODO: storyboard the rest of Case 2 (4 min), Case 3 (6 min), and
the live closing block (18–22 min).
See outline.md → .scratch/may-training/outline.md
-->
