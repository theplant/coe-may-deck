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
Section title for Case 2. Frame:
  "You finish a chat session. You have a markdown draft. But your PM lives
   in Google Docs. Your designer lives in Google Docs. Your stakeholders
   live in Google Docs. The chat output is stuck."
-->

---
layout: moment
eyebrow: case 2 · the gap
size: md
bg: sage
cn: 你的 markdown 在聊天里 —— 但你团队读的是 Google Docs。
---

The artifact is **here**.<br/>
Your team reads it **there**.

<!--
Land the gap. Everyone in the room — engineer or not — knows this gap.
Then transition: "Here's the boring, beautiful answer."
-->

---
layout: moment
eyebrow: case 2 · demo
size: md
bg: sage
footnote: "command: mds README.md gdoc:1Ab…/PRD"
status: "roll demo · md-to-gdoc-tab · ~3 min recording"
cn: 一条命令。同步到指定的 tab。可反复跑、不改坏。
---

One **command**. One **tab**. **Idempotent**.

<!--
Show the recording: change markdown locally → run mds → tab updates.
Run it again → no change. Run it after editing → just the diff.

Punchline (verbal):
  "AI doesn't have to escape the chat window through Git. It can also
   escape through your team's everyday tools — Docs, Sheets, Notion,
   Slack canvases. Wherever the team already lives."
-->

---
layout: moment
eyebrow: case 2 · landing
size: md
cn: AI 的稿子 → 直接落到团队每天看的地方。
status: 'next: case 3 — system-monitor'
---

AI's draft lands **where the team already lives**.

<!--
Quick beat. Then advance to Case 3.
-->

---
layout: case-cover
num: 3
total: 3
name: system-monitor
cn: 屏幕 + 系统音频 → whisper.cpp 转录 → Claude 每 3 分钟概括
repo: sunfmin/system-monitor
runtime: 6 min
proves: AI builds the missing tools
bg: blue
---

Screen + audio → whisper.cpp → Claude reads & summarizes.

<!--
Frame:
  "You're in a Zoom. Two hours later you have nothing — no transcript,
   no summary, no record of what was decided. Sound familiar?"

  "Now: a Claude Code skill that watches your screen and listens to the
   system audio. Transcribes in real time with whisper.cpp on Metal GPU.
   Every 3 minutes, Claude reads the screenshots + transcripts and writes
   a running summary."

  "Here's what's wild. Look at the architecture."
-->

---
layout: default
class: bg-blue
---

<div class="arch-eyebrow mb-3">
  <span class="prompt">❯</span> case 3 · the architecture
</div>

<div class="arch-card">

```text
ScreenCaptureKit ──► whisper.cpp C API (Metal GPU)
                            │
                  ┌─────────┴──────────┐
                  │                    │
            2s partials           20s finals
          (streaming text)     (full sentences)
                  │                    │
                  └────────┬───────────┘
                           │
                   WebSocket push :8421
                           ▼
                   Live web dashboard
                           ▼
              Claude reads + summarizes every 3 min
```

</div>

<div v-click class="arch-callout mt-8">
  This binary — <code>stream-audio-whisper</code> — is <strong>Swift</strong>.<br/>
  <span class="arch-cn">这个二进制是 <strong>Claude 写的</strong>。</span>
</div>

<style scoped>
.arch-eyebrow {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
}
.arch-eyebrow .prompt { color: var(--c-dusty); font-weight: 700; }

.arch-card :deep(pre) {
  background: rgba(255, 255, 255, 0.5) !important;
  border: 1px solid rgba(79, 102, 120, 0.25) !important;
  font-size: 0.78rem !important;
  line-height: 1.35 !important;
  padding: 1rem 1.4rem !important;
  margin: 0 !important;
}

.arch-callout {
  font-family: var(--f-display);
  font-size: 1.7rem;
  font-weight: 600;
  line-height: 1.35;
  color: var(--c-ink);
  font-variation-settings: 'opsz' 144, 'SOFT' 50;
  letter-spacing: -0.01em;
}
.arch-callout :deep(strong) {
  color: var(--c-dusty);
  font-weight: 800;
}
.arch-callout :deep(code) {
  font-family: var(--f-mono);
  font-size: 0.9em;
  background: rgba(79, 102, 120, 0.12);
  color: var(--c-ink);
  padding: 0.05em 0.4em;
  border-radius: 3px;
  border: 1px solid rgba(79, 102, 120, 0.2);
}
.arch-cn {
  display: block;
  margin-top: 0.5rem;
  font-family: var(--f-display-cn);
  font-size: 1.05rem;
  color: var(--c-ink-soft);
  font-weight: 400;
}
.arch-cn :deep(strong) {
  color: var(--c-dusty);
  font-weight: 600;
}
</style>

<!--
Walk the diagram top to bottom:
  - ScreenCaptureKit is Apple's screen+audio framework.
  - whisper.cpp transcribes via C API, accelerated on Metal GPU.
  - Two cadences: 2s partials for streaming subtitles, 20s finals with
    punctuation and sentence segmentation.
  - WebSocket pushes to a local dashboard. Claude reads the screenshots
    + transcripts every 3 min and writes a summary.

THEN click to reveal the punchline:
  "This binary — stream-audio-whisper — is Swift. Claude wrote it."
  
Pause. Repeat in plain language:
  "Claude didn't import a library. It wrote a Swift program that calls
   ScreenCaptureKit and pipes audio into whisper.cpp's C API with Metal.
   It built the missing tool."
-->

---
layout: moment
eyebrow: case 3 · landing
size: md
cn: AI 不只是用工具 —— 它还会造工具。
status: 'three cases · one more thing'
---

AI doesn't just **use** tools.<br/>
AI **builds** them.

<!--
Big pause. Land the escalation:
  Case 1 — AI uses your CLI + Git + CI
  Case 2 — AI's output reaches your everyday tools
  Case 3 — AI builds the tools it needs

Then bridge: "Three cases. One more thing."
-->

---
layout: moment
eyebrow: interlude
size: md
cn: 三个案例。还有最后一件事。
---

Three cases.<br/>
**One more thing.**

<!--
Steve Jobs beat. Don't apologize for it.
Advance to the mattpocock/skills section cover.
-->

---
layout: case-cover
num: "★"
total: "—"
name: mattpocock/skills
cn: AI 的能力本身 —— 也是 Git 仓库里的 markdown 文件。
repo: mattpocock/skills
runtime: live
proves: AI capabilities ARE versioned team assets
---

Skills as Git-tracked, PR-reviewable, team-shared assets.

<!--
This is the climax section. Frame:

  "So far: AI uses tools. AI integrates with tools. AI builds tools.
   But here's the thing nobody told you yet — the AI's own capabilities
   can be packaged AS files. In a Git repo. Reviewed in PRs. Shared
   across a team. Evolved through commit history."

  "This is what Matt Pocock has been building at github.com/mattpocock/skills.
   And we're going to use four of them, live, right now, in a fresh empty repo."
-->

---
layout: moment
eyebrow: closing · the live arc
size: sm
cn: '安装 skills · 用 grill 把想法磨清楚 · 生成 PRD · 拆成 GitHub Issues'
status: 'sunfmin/coe-may-demo · empty repo · ~18 min'
---

/setup-matt-pocock-skills → /grill-with-docs<br/>
→ /to-prd → /to-issues

<!--
This slide tells the audience what's about to happen LIVE. Read each
skill aloud:

  - /setup-matt-pocock-skills  — scaffold the repo for agent work
  - /grill-with-docs           — interview a one-liner into substance
  - /to-prd                    — produce a PRD
  - /to-issues                 — open real GitHub Issues

Then:
  "I need one sentence from this room. Something you'd want to build,
   propose, or improve. We'll turn it — together, live — into a tracked
   piece of work in a public repo. You can verify it after this talk."

Wait for a volunteer. Pick a usable one. (If none in 15s, deploy backup:
"feedback questionnaire + after-actions for this very training.")

Switch to the demo machine. Slidev pauses here. Come back to slides
when the demo ends.
-->

---
layout: default
class: bg-paper
---

<div class="recap-eyebrow mb-3">
  <span class="prompt">❯</span> what just happened
</div>

<GitLog
  repo="sunfmin/coe-may-demo"
  :commits="[
    { date: 'just now', msg: 'Initial commit: CLAUDE.md + docs/agents/ scaffold (setup)' },
    { date: 'just now', msg: 'Glossary + outline for <audience topic> (grill-with-docs)' },
    { date: 'just now', msg: 'PRD for <audience topic> (to-prd)' },
    { date: 'just now', msg: 'Opened 5 issues on github.com/sunfmin/coe-may-demo (to-issues)' },
  ]"
/>

<div v-click class="recap-line mt-10">
  Twenty minutes ago this repo was <strong>empty</strong>.
</div>

<div v-click class="recap-line">
  Now there's a glossary, a PRD, and <strong>tracked issues</strong> —<br/>
  shaped by a sentence <span class="kw">someone in this room</span> said.
</div>

<style scoped>
.recap-eyebrow {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
}
.recap-eyebrow .prompt { color: var(--c-rust); font-weight: 700; }

.recap-line {
  font-family: var(--f-display);
  font-size: 1.7rem;
  font-weight: 500;
  line-height: 1.4;
  color: var(--c-ink);
  font-variation-settings: 'opsz' 144, 'SOFT' 50;
  letter-spacing: -0.01em;
  margin-top: 0.4rem;
}
.recap-line :deep(strong) {
  color: var(--c-rust);
  font-weight: 800;
}
</style>

<!--
This slide goes up AFTER the live demo block completes.

The commit messages on this slide are illustrative — the speaker will read
the real git log from the demo machine. Slidev is just visual reinforcement
behind the verbal recap.

Click 1: "Twenty minutes ago this repo was empty."
Click 2: "Now there's a glossary, a PRD, and tracked issues — shaped by a
          sentence someone in this room said."

Pause. Long pause. This is the deck's climax line.
Then advance to the CTA.
-->

---
layout: moment
bg: night
eyebrow: tonight
size: md
cn: 今晚 —— 装好 Claude Code，克隆 mattpocock/skills，对你一直拖着的那件事跑一次 /grill-with-docs。
status: 'github.com/mattpocock/skills'
---

Install Claude Code. Clone mattpocock/skills.<br/>
Run **/grill-with-docs** on the one thing you've been putting off.

<!--
Dark slide. Final CTA. Read it slowly:

  "Tonight. Not next week. Tonight, install Claude Code. Clone
   mattpocock/skills. Pick one thing you've been putting off — a project,
   a design doc, an idea you keep restating in different Slack DMs.
   Run /grill-with-docs on it. See what falls out."

Then advance to Q&A.
-->

---
layout: moment
eyebrow: questions
size: md
cn: 问题？想法？反对？
status: 'github.com/theplant/coe-may-deck'
---

Questions. Pushback. Stories.

<!--
Open the floor. If the room is quiet, deploy a plant in this order:

  1. (non-engineers)  "A question I get a lot is: 'I can't code — is this
                       really for me?' — Skills are markdown describing
                       procedures. Anyone literate can read one. Show
                       /git-for-everyone as a counter-example."

  2. (engineers)      "Another one: 'How do we trust AI commits in
                       production code?' — Same way we trust junior-dev
                       PRs. Review, revert, blame. Git makes AI changes
                       MORE auditable than chat sessions, not less."

  3. (leadership)     "And: 'Where do you start if your codebase is messy
                       or has no docs?' — Start with /grill-with-docs on
                       the one thing you know best. AI helps build the
                       docs; you don't need docs before AI can help."

End by pointing at the deck repo: "Slides, outline, all the cases — public
at github.com/theplant/coe-may-deck. Steal anything."
-->
