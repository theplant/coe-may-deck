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
title: block A — the agentic loop
class: block-a-opener-slide
---

<div class="eyebrow-top">block A · history · 历史</div>

<h1 class="block-headline">
  The AI works in a loop.<br/>
  <span class="rust">The loop becomes your git log.</span>
</h1>

<div class="block-cn">AI 在循环里工作。循环就是你的 git log。</div>

<div class="loop-wrap">
<pre class="loop-diagram">┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐
│  reason  │ <span class="arr">→</span>  │   tool   │ <span class="arr">→</span>  │ observe  │ <span class="arr">→</span>  │ continue │
└──────────┘    └──────────┘    └──────────┘    └──────────┘
     <span class="arr">↑</span>                                                <span class="arr">│</span>
     <span class="arr">└───────────────────── loop ─────────────────────┘</span></pre>
</div>

<div class="loop-legend">
<pre>1 · reason       what should I do next?
2 · tool         Read · Edit · Bash · Grep · Git
3 · observe      diff · stdout · file content
4 · continue     loop, or stop and commit</pre>
</div>

<div class="block-footnote">
  next: the git log of a repo Claude helped build.
</div>

<style>
.block-a-opener-slide { padding: 2.4rem 4rem 1.6rem; display: flex; flex-direction: column; }
.block-a-opener-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 1.2rem;
}
.block-a-opener-slide .block-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 2.4rem !important;
  line-height: 1.1 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.block-a-opener-slide .block-headline .rust { color: var(--c-rust); }
.block-a-opener-slide .block-cn {
  margin-top: 0.7rem;
  font-family: var(--f-display-cn);
  font-size: 1.15rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.block-a-opener-slide .loop-wrap {
  margin-top: 1.8rem;
  display: flex;
  justify-content: center;
}
.block-a-opener-slide .loop-diagram {
  font-family: var(--f-mono) !important;
  font-size: 0.95rem !important;
  line-height: 1.45 !important;
  color: var(--c-ink) !important;
  background: transparent !important;
  border: none !important;
  padding: 0 !important;
  margin: 0;
  white-space: pre;
  overflow: visible;
}
.block-a-opener-slide .loop-diagram .arr {
  color: var(--c-rust);
  font-weight: 700;
}
.block-a-opener-slide .loop-legend {
  margin-top: 1.4rem;
  display: flex;
  justify-content: center;
}
.block-a-opener-slide .loop-legend pre {
  font-family: var(--f-mono) !important;
  font-size: 0.95rem !important;
  line-height: 1.7 !important;
  color: var(--c-ink) !important;
  background: var(--c-paper-warm) !important;
  border: 1px solid var(--c-rule) !important;
  border-radius: 6px;
  padding: 1.1rem 1.4rem !important;
  margin: 0;
  white-space: pre;
}
.block-a-opener-slide .block-footnote {
  margin-top: 1.4rem;
  font-family: var(--f-mono);
  font-size: 0.85rem;
  color: var(--c-ink-mute);
  letter-spacing: 0.01em;
  padding-top: 0.8rem;
  border-top: 1px solid var(--c-rule);
}
</style>

<!--
BLOCK A OPENER — the agentic REPL.
Beat 1: "Before we look at the git log of a real repo, here's what the AI is
  doing inside one. It's not generating a paragraph. It's running a loop."
Beat 2: walk the four phases — reason, tool, observe, continue.
  "Look at what it can call: read a file, edit a file, run a shell command,
  search, use git. Real tools. Then it looks at what came back —
  the diff, the stdout — and decides what to do next."
Beat 3: "Every iteration of that loop becomes a line in your git history.
  You're about to scroll a real one."
Transitions to Demo A cue.
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

---
layout: default
title: artifacts — every format
class: artifacts-slide
---

<div class="eyebrow-top">成果 · artifacts in every format</div>

<div class="artifacts-leadin">
  Status updates and bedtime stories — sure.<br/>
  <span class="cn">周报、release notes、睡前故事——当然。</span>
</div>

<h1 class="artifacts-headline">
  The same loop also writes <span class="rust">file formats</span><br/>
  you didn't think AI could touch.
</h1>

<div class="artifacts-cn">同一个循环，也能写你以为 AI 写不了的文件格式。</div>

<div class="artifacts-grid-wrap">
<pre class="artifacts-grid">  EVERYDAY                          UNEXPECTED
  ──────────                        ──────────
  a slide deck <span class="fmt">.pptx</span>                a 3D-printable phone stand <span class="fmt">.stl</span>
  a Mac or iOS app <span class="fmt">.app</span>             a KiCad PCB schematic <span class="fmt">.kicad_sch</span>
  a personal website <span class="fmt">.html</span>          a CNC toolpath for a part <span class="fmt">.gcode</span>
  a quarterly report <span class="fmt">.pdf</span>           a podcast with intro music <span class="fmt">.mp3</span>
  an XLSX with live formulas <span class="fmt">.xlsx</span>  a tutorial video with narration <span class="fmt">.mp4</span></pre>
</div>

<div class="artifacts-footnote">
  <span class="rust">AI writes the text.</span> The tool builds the file.<br/>
  <span class="cn">AI 写文本，工具生成文件。</span>
</div>

<style>
.artifacts-slide { padding: 1.8rem 4rem 1.2rem; display: flex; flex-direction: column; }
.artifacts-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 0.9rem;
}
.artifacts-slide .artifacts-leadin {
  font-family: var(--f-mono);
  font-size: 0.95rem;
  color: var(--c-ink-mute);
  line-height: 1.55;
  margin-bottom: 0.7rem;
}
.artifacts-slide .artifacts-leadin .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-mute);
}
.artifacts-slide .artifacts-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 2rem !important;
  line-height: 1.15 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.artifacts-slide .artifacts-headline .rust { color: var(--c-rust); }
.artifacts-slide .artifacts-cn {
  margin-top: 0.5rem;
  font-family: var(--f-display-cn);
  font-size: 1.05rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.artifacts-slide .artifacts-grid-wrap {
  margin-top: 1.1rem;
  display: flex;
  justify-content: center;
}
.artifacts-slide .artifacts-grid {
  font-family: var(--f-mono) !important;
  font-size: 0.92rem !important;
  line-height: 1.65 !important;
  color: var(--c-ink) !important;
  background: var(--c-paper-warm) !important;
  border: 1px solid var(--c-rule) !important;
  border-radius: 6px;
  padding: 1rem 1.4rem !important;
  margin: 0;
  white-space: pre;
  overflow: visible;
}
.artifacts-slide .artifacts-grid .fmt {
  color: var(--c-rust);
  font-weight: 700;
}
.artifacts-slide .artifacts-footnote {
  margin-top: 1rem;
  font-family: var(--f-mono);
  font-size: 0.95rem;
  line-height: 1.6;
  color: var(--c-ink-soft);
  letter-spacing: 0.01em;
  padding-top: 0.8rem;
  border-top: 1px solid var(--c-rule);
}
.artifacts-slide .artifacts-footnote .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.artifacts-slide .artifacts-footnote .cn {
  font-family: var(--f-display-cn);
}
</style>

<!--
ARTIFACTS · EVERY FORMAT — challenge the audience's assumption that AI is
"just for text." Show file formats they didn't think AI could touch:
STL, PPTX, XLSX, KiCad, G-code. These aren't text — but their RECIPE is.

The slide pivots from "AI helps with the obvious markdown stuff" to "AI's
real reach is into binary formats via text-first generators."

Beat 1: read the lead-in as concession, almost throwaway.
  "Yes — AI writes status updates, release notes, bedtime stories.
   You already know that."
Beat 2: pause. then the headline, slower:
  "But the same loop also writes file formats you didn't think AI could
   touch."
Beat 3: walk the grid in TWO passes.
  LEFT (EVERYDAY): point to the SLIDE DECK row first — "yes, like the one
   you're looking at right now." (Audience just watched Demo B prove this.)
   Then Mac app (point at the system-monitor repo from Demo A), website,
   PDF report, XLSX with live formulas.
  RIGHT (UNEXPECTED): pick 2-3 surprising ones.
   Engineer-leaning room: emphasize KiCad, G-code, CNC.
   Non-engineer room: emphasize STL, podcast audio, tutorial video.
   "An STL file for your 3D printer. A KiCad schematic for a circuit
    board. G-code for a CNC machine. A podcast with intro music. A
    tutorial video with narration. None of these are markdown."
Beat 4: the closing principle, slow:
  "AI writes the text. The tool builds the file."
  This reinforces the agentic REPL (slide 6) — AI calls tools (OpenSCAD,
  Mermaid, python-pptx, openpyxl, KiCad CLI, CAM software, LilyPond,
  TTS APIs, ffmpeg) that take text input and emit any binary format.
Beat 5: pause. then transition: "And here's *why* all of that works."
Audience leans in. Goes to slide 17 (CLI · the door).
-->

---
layout: default
title: CLI — the door
class: cli-slide
---

<div class="eyebrow-top">工具 · the CLI is the door</div>

<h1 class="cli-headline">
  AI lives in <span class="rust">text.</span><br/>
  CLIs <span class="rust">talk back.</span> GUIs <span class="muted">don't.</span>
</h1>

<div class="cli-cn">AI 在文字里。CLI 会回话，GUI 不会。</div>

<div class="cli-compare-wrap" v-pre>
<pre class="cli-compare">  CLI talks back:                     GUI doesn't:
  ────────────────                    ────────────────
  exit codes you can parse            error dialogs in pixels
  pipes that chain tools              windows that don't talk
  stable flags for decades            menus redesigned yearly
  runs headless in CI                 requires a display
  --help is documentation             YouTube is documentation</pre>
</div>

<div class="cli-footnote">
  every artifact on the last slide — <span class="rust">.stl · .kicad_sch · .gcode · .mp3 · .mp4</span> —<br/>
  was built by a CLI tool.<br/>
  <span class="cn">这就是 AI 住在终端、不住在菜单栏的原因。</span>
</div>

<style>
.cli-slide { padding: 2.2rem 4rem 1.4rem; display: flex; flex-direction: column; }
.cli-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 1rem;
}
.cli-slide .cli-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 2.2rem !important;
  line-height: 1.2 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.cli-slide .cli-headline .rust { color: var(--c-rust); }
.cli-slide .cli-headline .muted { color: var(--c-ink-mute); }
.cli-slide .cli-cn {
  margin-top: 0.6rem;
  font-family: var(--f-display-cn);
  font-size: 1.1rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.cli-slide .cli-compare-wrap {
  margin-top: 1.4rem;
  display: flex;
  justify-content: center;
}
.cli-slide .cli-compare {
  font-family: var(--f-mono) !important;
  font-size: 0.92rem !important;
  line-height: 1.65 !important;
  color: var(--c-ink) !important;
  background: var(--c-paper-warm) !important;
  border: 1px solid var(--c-rule) !important;
  border-radius: 6px;
  padding: 1.1rem 1.4rem !important;
  margin: 0;
  white-space: pre;
  overflow: visible;
}
.cli-slide .cli-footnote {
  margin-top: 1.2rem;
  font-family: var(--f-mono);
  font-size: 0.9rem;
  line-height: 1.65;
  color: var(--c-ink-soft);
  letter-spacing: 0.01em;
  padding-top: 0.8rem;
  border-top: 1px solid var(--c-rule);
}
.cli-slide .cli-footnote .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.cli-slide .cli-footnote .cn {
  font-family: var(--f-display-cn);
}
</style>

<!--
CLI — THE DOOR. Answers the "but how??" the audience felt looking at
the artifacts slide. Pays off the format-reach claim with a mechanism.

Beat 1: brief pause after artifacts. Then:
  "Why does any of that work? Why can AI produce a 3D-printer file,
   a circuit board schematic, an Excel sheet with live formulas?"
Beat 2: read the headline both languages:
  "AI lives in text. The CLI talks back. The GUI doesn't."
Beat 3: walk the comparison grid. Don't read every row — pick 2-3:
  Mixed-audience favourite: `--help` vs YouTube — AI can read `man ffmpeg`,
   it can't watch a YouTube tutorial.
  Engineer-leaning room: stable flags, pipes, exit codes.
Beat 4: pause on PIPES row.
  "Pipes are the superpower. AI can chain  `claude` → `openscad` →
   `ffmpeg`  in one line, and produce a 3D-printable phone stand
   with a custom song narrated over it. No GUI tool can do that."
Beat 5: the footnote, slow and final:
  "Every artifact on the last slide was built by a CLI tool.
   That's why AI lives in the terminal — not in a menu bar."
Transitions to the thought experiment.
-->

---
layout: default
title: thought — GUIs are for humans
class: thought-slide
---

<div class="eyebrow-top">设想 · a thought experiment</div>

<h1 class="thought-headline">
  If only AI used computers,<br/>
  GUIs <span class="rust">wouldn't exist.</span>
</h1>

<div class="thought-cn">如果只有 AI 用电脑，GUI 根本就不会存在。</div>

<div class="thought-rule"></div>

<div class="thought-closer">
  GUIs are a layer <span class="rust">for humans.</span><br/>
  CLIs are how computers <span class="rust">actually talk.</span><br/>
  <span class="cn">GUI 是给人看的。CLI 才是计算机原本的语言。</span>
</div>

<style>
.thought-slide { padding: 3rem 4rem; display: flex; flex-direction: column; justify-content: center; align-items: flex-start; }
.thought-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 1.6rem;
}
.thought-slide .thought-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 2.4rem !important;
  line-height: 1.15 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.thought-slide .thought-headline .rust { color: var(--c-rust); }
.thought-slide .thought-cn {
  margin-top: 0.9rem;
  font-family: var(--f-display-cn);
  font-size: 1.25rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.thought-slide .thought-rule {
  margin-top: 2.4rem;
  width: 4rem;
  height: 2px;
  background: var(--c-rust);
  display: block;
}
.thought-slide .thought-closer {
  margin-top: 2.4rem;
  font-family: var(--f-mono);
  font-size: 1.05rem;
  line-height: 1.75;
  color: var(--c-ink);
}
.thought-slide .thought-closer .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.thought-slide .thought-closer .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-soft);
}
</style>

<!--
THOUGHT EXPERIMENT — the philosophical reframe of the CLI/GUI argument.
GUIs aren't a "different kind of interface" — they're a HUMAN accessibility
layer. If humans vanished, GUIs would vanish with them. CLIs would
remain — because that's how computers natively talk to each other.

This slide is meant to be PAUSED on and DIGESTED, not read fast. Lots of
whitespace. The audience does the work.

Beat 1: pause longer than usual after the CLI slide. Then read the
  headline very slow, both languages.
  "Think about this for a second. If only AI used computers — if humans
   didn't exist at all — GUIs wouldn't exist either."
Beat 2: another full pause. ~5 seconds of silence.
Beat 3: read the closer slow.
  "GUIs are a layer for humans. CLIs are how computers actually talk."
Beat 4: pause. Don't explain. The thought lands by itself.
Beat 5: quiet transition: "So — what will you build with it this week?"
Transitions to CTA.
-->
