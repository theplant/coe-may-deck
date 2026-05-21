---
theme: default
title: AI Escapes the Chatbox
info: |
  ## AI Escapes the Chatbox / AI 走出聊天框
  Into your terminal, your files, your git log, your team.

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

Into your terminal, your files, your git log, your team.

<div class="cn-sans mt-3 text-[color:var(--c-ink-mute)] text-base">
走进你的终端、你的文件、你的 git 记录、你的团队。
</div>

<!--
TITLE — vol. 01 magazine-cover treatment
Open beat: read title in both languages. Pause.
"What we're going to do today is not show you a new chatbot. We're going to show
 you AI moving out of the chat window — into your terminal, your files, your git log,
 your team."
Don't preview the agenda. The opening comparison demo IS the agenda.
-->

---
layout: moment
title: setup — the shape of the problem
eyebrow: setup · the shape of the problem
size: md
cn: 聊天框是一个窗口。你不在窗口里工作。
---

The chatbox is a window.

<div class="mt-6">You don't work in one.</div>

<!--
SETUP — name the limitation in one image.
Beat 1: "The chatbox is a window." (pause, let it land)
Beat 2: "You don't work in one." (pause again)
Don't explain. The next 40 minutes are the explanation.
Transitions straight into the side-by-side comparison demo.
-->

---
layout: default
title: shape — chatbox vs working environment
class: contrast-slide
---

<div class="eyebrow-top">before · after · 形状</div>

<div class="contrast-grid">
  <div class="panel chat-panel">
    <div class="panel-label">chatbox</div>
    <div class="window">
      <div class="window-bar">
        <span class="dot dot-red"></span>
        <span class="dot dot-yellow"></span>
        <span class="dot dot-green"></span>
        <span class="window-title">chat</span>
      </div>
      <div class="window-body">
        <div class="msg you">you: summarize today's #eng</div>
        <div class="msg ai">AI:  here's a summary…</div>
        <div class="msg you">you: now translate it</div>
        <div class="msg ai">AI:  …</div>
        <div class="msg you">you: send it to the team</div>
        <div class="msg ai">AI:  (I can't reach Slack)</div>
        <div class="window-prompt">› _</div>
      </div>
    </div>
    <div class="panel-note">one window · session-scoped · output dies on close</div>
  </div>

  <div class="panel env-panel">
    <div class="panel-label">your environment</div>
    <pre class="env-tree">~/myrepo  <span class="muted">felix@mac</span>
├── src/                     <span class="muted">— real files</span>
├── CLAUDE.md                <span class="rust">— memory</span>
├── .claude/skills/          <span class="rust">— capabilities</span>
├── docs/adr/                <span class="rust">— decisions</span>
├── .scratch/                <span class="muted">— working notes</span>
└── .git/log                 <span class="rust">— history, forever</span>

<span class="rust">❯</span> claude "summarize #eng → wiki"
<span class="rust">❯</span> gh pr create
<span class="rust">❯</span> ./scripts/deploy.sh
<span class="rust">❯</span> ssh prod tail -f /var/log/app
</pre>
    <div class="panel-note">terminal · files · git · team · everything you already use</div>
  </div>
</div>

<style>
.contrast-slide { padding: 3.5rem 5rem; }
.contrast-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 2.2rem;
}
.contrast-grid {
  display: grid;
  grid-template-columns: 1fr 1.55fr;
  gap: 3rem;
  align-items: start;
}
.panel-label {
  font-family: var(--f-mono);
  font-size: 0.8rem;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 0.7rem;
}
.panel-note {
  margin-top: 0.9rem;
  font-family: var(--f-mono);
  font-size: 0.8rem;
  color: var(--c-ink-mute);
  letter-spacing: 0.02em;
}

/* Left — bounded chat window */
.chat-panel .window {
  background: #FFFFFF;
  border: 1px solid var(--c-rule);
  border-radius: 8px;
  box-shadow: 0 4px 16px rgba(26, 22, 17, 0.06);
  overflow: hidden;
  width: 100%;
  max-width: 22rem;
}
.window-bar {
  display: flex;
  align-items: center;
  gap: 0.4rem;
  padding: 0.55rem 0.8rem;
  background: #EBE3D0;
  border-bottom: 1px solid var(--c-rule);
}
.dot { width: 10px; height: 10px; border-radius: 50%; display: inline-block; }
.dot-red    { background: #E07A2D; }
.dot-yellow { background: #E8C547; }
.dot-green  { background: #5B7A6F; }
.window-title {
  margin-left: 0.5rem;
  font-family: var(--f-mono);
  font-size: 0.75rem;
  color: var(--c-ink-mute);
}
.window-body {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  line-height: 1.7;
  color: var(--c-ink);
  padding: 0.9rem 1rem 1.2rem;
}
.msg.you { color: var(--c-ink); }
.msg.ai  { color: var(--c-ink-soft); }
.window-prompt {
  margin-top: 0.8rem;
  font-family: var(--f-mono);
  font-size: 0.85rem;
  color: var(--c-rust);
}

/* Right — open environment */
.env-panel .env-tree {
  font-family: var(--f-mono);
  font-size: 0.88rem;
  line-height: 1.65;
  color: #F4EFE3 !important;
  background: #1A1611 !important;
  border: 1px solid #2A2418 !important;
  padding: 1.4rem 1.6rem !important;
  border-radius: 6px;
  margin: 0;
  white-space: pre;
  overflow: visible;
}
.env-tree .muted { color: rgba(244, 239, 227, 0.45); }
.env-tree .rust  { color: var(--c-rust); font-weight: 700; }
</style>

<!--
CONTRAST — the visual thesis before any demo.
Beat: "Left: what a chatbox is — one window, text in, text out, dies on close.
Right: what 'work' is — your terminal, your files, your git log, your team.
The talk for the next 40 minutes is about moving the AI from the left side to the right side."
Don't read the labels aloud. Let the picture do it.
-->

---
layout: default
title: principle — AI works with plain text
class: principle-slide
---

<div class="eyebrow-top">principle · 原则</div>

<h1 class="principle-headline">AI works with<br/>what it can <span class="rust">read.</span></h1>

<div class="principle-cn">AI 喜欢它能读懂的东西。</div>

<div class="principle-yes" v-pre>
  <span class="yes-label">— it reads</span>
  plain text · markdown · code · JSON · YAML · shell pipes
  · git diffs · commit messages · <span class="emph">images / screenshots</span>
</div>

<div class="principle-no" v-pre>
  <span class="no-label">— it can't</span>
  Word · Excel · PowerPoint · Sketch · Figma · proprietary GUIs · binary blobs
</div>

<div class="principle-bridge" v-pre>
  <span class="bridge-label">→ but</span>
  convert any of those to text or a screenshot,
  and AI can read it again.
</div>

<div class="principle-footnote">
  the chatbox blocks all of this.<br/>the terminal lets all of it in.
</div>

<style>
.principle-slide { padding: 2.6rem 4rem 1.8rem; display: flex; flex-direction: column; }
.principle-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 1.4rem;
}
.principle-slide .principle-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 2.8rem !important;
  line-height: 1.1 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.principle-slide .principle-headline .rust { color: var(--c-rust); }
.principle-slide .principle-cn {
  margin-top: 0.8rem;
  font-family: var(--f-display-cn);
  font-size: 1.25rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.principle-slide .principle-yes {
  margin-top: 1.8rem;
  font-family: var(--f-mono);
  font-size: 1.05rem;
  line-height: 1.6;
  color: var(--c-ink);
  max-width: 58rem;
}
.principle-slide .principle-yes .yes-label {
  display: inline-block;
  color: var(--c-rust);
  font-weight: 700;
  margin-right: 0.5rem;
  letter-spacing: 0.01em;
}
.principle-slide .principle-no {
  margin-top: 1rem;
  font-family: var(--f-mono);
  font-size: 1.05rem;
  line-height: 1.6;
  color: var(--c-ink-mute);
  max-width: 58rem;
  text-decoration: line-through;
  text-decoration-color: rgba(138, 128, 115, 0.4);
}
.principle-slide .principle-no .no-label {
  display: inline-block;
  color: var(--c-ink-soft);
  font-weight: 700;
  margin-right: 0.5rem;
  letter-spacing: 0.01em;
  text-decoration: none;
}
.principle-slide .principle-yes .emph {
  color: var(--c-rust);
  font-weight: 600;
}
.principle-slide .principle-bridge {
  margin-top: 1rem;
  font-family: var(--f-mono);
  font-size: 1.05rem;
  line-height: 1.6;
  color: var(--c-ink-soft);
  max-width: 58rem;
  font-style: italic;
}
.principle-slide .principle-bridge .bridge-label {
  display: inline-block;
  color: var(--c-rust);
  font-weight: 700;
  margin-right: 0.5rem;
  letter-spacing: 0.01em;
  font-style: normal;
}
.principle-slide .principle-footnote {
  margin-top: 1.6rem;
  font-family: var(--f-mono);
  font-size: 0.85rem;
  color: var(--c-ink-mute);
  letter-spacing: 0.01em;
  padding-top: 0.9rem;
  border-top: 1px solid var(--c-rule);
  line-height: 1.6;
}
</style>

<!--
PRINCIPLE — why the migration works at all.
Beat: "Here's the why. AI works with what it can read.
Plain text. Markdown. Shell pipes. Git diffs. Source code.
It doesn't work with Word, Excel, Sketch — closed binary formats it can't read.
That's why moving AI from the chatbox to the terminal is possible:
the terminal is the place where everything is text."
Pause on the slash-through on the right column — emphasize "these are walls, not docs."
-->

---
layout: default
title: decoder — chat vs agent
class: decoder-slide
---

<div class="eyebrow-top">decoder · 对照表</div>

<h1 class="decoder-headline">
  Assistants answer questions.<br/>
  Agents <span class="rust">complete tasks.</span>
</h1>

<div class="decoder-cn">助手回答问题。智能体完成任务。</div>

<div class="decoder-table-wrap" v-pre>
<pre class="decoder-table">                  chat            agent
─────────────────────────────────────────────────────────────────
input             questions       goals
state             session         repo
output            text            files · commits · PRs
memory            window          CLAUDE.md · .scratch · docs/adr
speed             seconds         minutes (because it's working)</pre>
</div>

<div class="decoder-footnote">
  hold this picture for the next 40 minutes.
</div>

<style>
.decoder-slide { padding: 2.6rem 4rem 1.8rem; display: flex; flex-direction: column; }
.decoder-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 1.4rem;
}
.decoder-slide .decoder-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 2.6rem !important;
  line-height: 1.1 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.decoder-slide .decoder-headline .rust { color: var(--c-rust); }
.decoder-slide .decoder-cn {
  margin-top: 0.8rem;
  font-family: var(--f-display-cn);
  font-size: 1.2rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.decoder-slide .decoder-table-wrap {
  margin-top: 2rem;
}
.decoder-slide .decoder-table {
  font-family: var(--f-mono) !important;
  font-size: 1.0rem !important;
  line-height: 1.7 !important;
  color: var(--c-ink) !important;
  background: var(--c-paper-warm) !important;
  border: 1px solid var(--c-rule) !important;
  border-radius: 6px;
  padding: 1.3rem 1.6rem !important;
  margin: 0;
  white-space: pre;
  overflow: visible;
}
.decoder-slide .decoder-footnote {
  margin-top: 1.6rem;
  font-family: var(--f-mono);
  font-size: 0.85rem;
  color: var(--c-ink-mute);
  letter-spacing: 0.01em;
  padding-top: 0.9rem;
  border-top: 1px solid var(--c-rule);
}
</style>

<!--
DECODER — the audience's reference card for the next 40 minutes.
Beat 1: "One more thing before any code.
Assistants answer questions. Agents complete tasks."
(Pause. Read CN aloud.)
Beat 2: walk DOWN the five rows. Don't explain each one — the audience can read mono fonts.
Beat 3: on the SPEED row, small pause — "yes, minutes. Because it's actually doing the work."
Beat 4: "Hold this picture. I'll come back to it twice."
Transitions into Block A — git log / history.
-->

---
layout: default
title: demo A cue — git log
class: demo-cue-slide
---

<div class="eyebrow-top">demo · 1 / 2 · live</div>

<div class="cue-body">
  <div class="cue-headline">
    Six months from now,<br/>can you still read<br/><span class="rust">the AI's reasoning?</span>
  </div>
  <div class="cue-cn">六个月后，你还能读到 AI 的思路吗？</div>
</div>

<div class="cue-terminal">
  <div class="cue-terminal-header">~/code/system-monitor  felix@mac</div>
  <div class="cue-terminal-body"><span class="rust">❯</span> git log --oneline -20<span class="caret">_</span></div>
</div>

<div class="cue-footnote">a real Claude-built repo · <span class="mono">github.com/sunfmin/system-monitor</span></div>

<!--
DEMO A — CUE
Beat: "I'm going to switch to my terminal in a second. What I want you to watch for —
when you scroll a git log of a real Claude-built repo, what do you see?
We'll find out together."
Then: switch projector input to terminal. Run git log. Click into 2-3 commits and read aloud.
After ~3 min, switch back. Echo slide loads.
-->

---
layout: default
title: demo A echo — one real commit
class: demo-echo-slide
---

<div class="eyebrow-top">echo · 2 months ago · sunfmin/system-monitor@f026554</div>

<div class="commit-block" v-pre>
  <div class="commit-meta">
    <span class="commit-hash">commit f026554</span>
    <span class="commit-author">Felix Sun &lt;sunfmin@gmail.com&gt;</span>
    <span class="commit-date">2026-03-24</span>
  </div>

  <div class="commit-title">Single-process streaming transcription with WebSocket push and sentence segmentation</div>

  <pre class="commit-body">Major rewrite of the transcription pipeline:

- New stream-audio-whisper.swift: single Swift binary combining
  ScreenCaptureKit audio capture + whisper.cpp C API inference +
  WebSocket server (Network.framework)
- No more multi-process pipeline (capture-audio | python | whisper-cli)
- Model loaded once at startup, stays warm in GPU memory (~0.1s load)
- Two-tier transcription: 2s partial chunks for streaming,
  20s re-transcription for complete sentences with punctuation
- initial_prompt guides Chinese punctuation output
- Sentence boundary detection with carryover: incomplete sentences
  carried to next round using precise whisper segment timestamps
- WebSocket (port 8421) pushes partial/final/clear_partial messages
- Dashboard updated: WebSocket primary, HTTP polling as fallback</pre>

  <div class="commit-coauthor">Co-Authored-By: Claude Opus 4.6 (1M context) &lt;noreply@anthropic.com&gt;</div>
</div>

<div class="echo-footnote">
  <span class="rust">↑</span> two months old. <span class="cm-fn">git blame</span> it, revert it, learn from it. <span class="cn">— 永远在那里。</span>
</div>

<!--
DEMO A — ECHO
Beat: "OK — switching back. What did we just look at?
A single Swift binary, ScreenCaptureKit + whisper.cpp + WebSocket,
two months ago. And the AI wrote this with me.
The reasoning is right here — auditable, blame-able, forever."
Pause. Let it sit. Don't read the whole commit out — they can read.
Then transition to the case-tour artifacts.
-->

---
layout: default
title: demo B cue — meta
class: demo-cue-slide
---

<div class="eyebrow-top">demo · 2 / 2 · live</div>

<div class="cue-body">
  <div class="cue-headline">
    This deck was built<br/>with <span class="rust">Claude Code.</span>
  </div>
  <div class="cue-cn">这个 deck 就是用 Claude Code 做的。</div>
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

---
layout: default
title: demo B echo — the commit you just watched
class: demo-echo-slide
---

<div class="eyebrow-top">echo · sunfmin/coe-may-deck@HEAD · just now</div>

<div class="commit-block" v-pre>
  <div class="commit-meta">
    <span class="commit-hash">commit &lt;new&gt;</span>
    <span class="commit-author">Felix Sun &lt;sunfmin@gmail.com&gt;</span>
    <span class="commit-fresh">90 seconds ago</span>
  </div>

  <div class="commit-title">Add audience-suggested slide: &lt;topic&gt;</div>

  <pre class="commit-body">Added during the May CoE training, in front of a live audience.
The audience said: "&lt;their suggestion&gt;".

Claude edited slides/slides.md, inserted a new ---slide--- block
with a moment layout, drafted the bilingual text, and the Slidev
dev server hot-reloaded the browser tab next to my terminal.

The commit you're looking at landed about 90 seconds ago.
It is now part of this repo's permanent history.

diff --git a/slides/slides.md b/slides/slides.md
+++++++++++++++++++++++++++  (a new ---slide--- block)</pre>

  <div class="commit-coauthor">Co-Authored-By: Claude Opus 4.7 (1M context) &lt;noreply@anthropic.com&gt;</div>
</div>

<div class="echo-footnote">
  <span class="rust">↑</span> <span class="cm-fn">git pull</span> after the talk and you can read it too. <span class="cn">— 你也可以拉下来读。</span>
</div>

<!--
DEMO B — ECHO
Beat: "OK — switching back. That commit is permanent.
A minute ago this deck didn't have that slide. Now it does — and that's true forever.
Pull the repo after the talk. The reasoning is in the commit body, like every other commit
the AI has helped me make."
NOTE: Speaker should manually edit this slide's placeholder text after the demo to fill in:
  - &lt;new&gt; → the actual short hash
  - &lt;topic&gt; → the audience suggestion
  - &lt;their suggestion&gt; → quoted verbatim
This makes the echo feel real, not generic. If short on time, leave placeholders — punchline still lands.
-->
