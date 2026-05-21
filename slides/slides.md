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
Then transition to Block B — clean slate vs repo.
-->

---
layout: default
title: block B — clean slate vs repo
class: block-b-opener-slide
---

<div class="eyebrow-top">block B · memory · 记忆</div>

<h1 class="block-b-headline">
  Every chat is <span class="muted">a clean slate.</span><br/>
  Every repo <span class="rust">is not.</span>
</h1>

<div class="block-b-cn">每次对话都是白纸。Repo 不是。</div>

<div class="contrast-wrap">
  <div class="t-card t-chat">
    <div class="t-title">CHAT</div>
    <div class="t-track">
      <span class="t-dash">───</span>
      <span class="t-step">open</span>
      <span class="t-dash">───</span>
      <span class="t-step">you type</span>
      <span class="t-dash">───</span>
      <span class="t-step">close</span>
      <span class="t-dash">───</span>
    </div>
    <div class="t-down t-dim">│<br/>▼</div>
    <div class="t-after t-dim">[ nothing ]</div>
  </div>

  <div class="t-card t-repo">
    <div class="t-title">REPO</div>
    <div class="t-track">
      <span class="t-dash">───</span>
      <span class="t-step">open</span>
      <span class="t-dash">───</span>
      <span class="t-step">you work</span>
      <span class="t-dash">───</span>
      <span class="t-step">close</span>
      <span class="t-dash">───</span>
    </div>
    <div class="t-down">│<br/>▼</div>
    <ul class="t-files">
      <li>CLAUDE.md</li>
      <li>docs/adr/&hellip;</li>
      <li>.scratch/feature-x/</li>
      <li>.git/log + N commits</li>
    </ul>
    <div class="t-up"><span class="rust">↑</span> <span class="rust">tomorrow reads all of this</span></div>
  </div>
</div>

<div class="block-b-footnote">
  the AI doesn't restart from zero. it starts from <span class="rust">what you left behind</span>.<br/>
  <span class="cn">AI 不是从零开始的。它从你昨天留下的文件开始。</span>
</div>

<style>
.block-b-opener-slide { padding: 1.4rem 4rem 1rem; display: flex; flex-direction: column; }
.block-b-opener-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 0.7rem;
}
.block-b-opener-slide .block-b-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 1.9rem !important;
  line-height: 1.15 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.block-b-opener-slide .block-b-headline .rust { color: var(--c-rust); }
.block-b-opener-slide .block-b-headline .muted { color: var(--c-ink-mute); }
.block-b-opener-slide .block-b-cn {
  margin-top: 0.45rem;
  font-family: var(--f-display-cn);
  font-size: 1rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.block-b-opener-slide .contrast-wrap {
  margin-top: 1rem;
  display: grid;
  grid-template-columns: 1fr 1.2fr;
  gap: 1.6rem;
  align-items: start;
}
.block-b-opener-slide .t-card {
  background: var(--c-paper-warm);
  border: 1px solid var(--c-rule);
  border-radius: 6px;
  padding: 0.9rem 1.2rem 1rem;
  font-family: var(--f-mono);
  font-size: 0.86rem;
  line-height: 1.5;
  color: var(--c-ink);
  display: flex;
  flex-direction: column;
  align-items: center;
}
.block-b-opener-slide .t-card.t-repo {
  border-left: 3px solid var(--c-rust);
}
.block-b-opener-slide .t-card.t-chat {
  border-left: 3px solid var(--c-ink-mute);
}
.block-b-opener-slide .t-title {
  font-family: var(--f-mono);
  font-size: 0.85rem;
  font-weight: 700;
  letter-spacing: 0.22em;
  color: var(--c-ink-soft);
  margin-bottom: 0.6rem;
  align-self: flex-start;
}
.block-b-opener-slide .t-track {
  display: flex;
  align-items: center;
  gap: 0.35rem;
  font-family: var(--f-mono);
  font-size: 0.82rem;
  color: var(--c-ink);
  flex-wrap: nowrap;
}
.block-b-opener-slide .t-dash {
  color: var(--c-ink-mute);
  letter-spacing: -0.1em;
}
.block-b-opener-slide .t-step {
  padding: 0.1rem 0.4rem;
  background: rgba(26, 22, 17, 0.04);
  border-radius: 3px;
  color: var(--c-ink);
}
.block-b-opener-slide .t-down {
  margin-top: 0.5rem;
  text-align: center;
  font-family: var(--f-mono);
  font-size: 0.82rem;
  line-height: 1.1;
  color: var(--c-ink);
}
.block-b-opener-slide .t-down.t-dim {
  color: var(--c-ink-mute);
}
.block-b-opener-slide .t-after {
  margin-top: 0.4rem;
  font-family: var(--f-mono);
  font-size: 0.95rem;
  color: var(--c-ink-mute);
  letter-spacing: 0.02em;
}
.block-b-opener-slide .t-files {
  margin: 0.5rem 0 0;
  padding: 0;
  list-style: none;
  text-align: center;
}
.block-b-opener-slide .t-files li {
  font-family: var(--f-mono);
  font-size: 0.84rem;
  line-height: 1.55;
  color: var(--c-ink);
  padding-left: 0;
  margin: 0;
}
.block-b-opener-slide .t-files li::before {
  content: none;
}
.block-b-opener-slide .t-up {
  margin-top: 0.6rem;
  font-family: var(--f-mono);
  font-size: 0.86rem;
  text-align: center;
}
.block-b-opener-slide .t-up .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.block-b-opener-slide .block-b-footnote {
  margin-top: 0.8rem;
  font-family: var(--f-mono);
  font-size: 0.85rem;
  line-height: 1.55;
  color: var(--c-ink-soft);
  padding-top: 0.7rem;
  border-top: 1px solid var(--c-rule);
}
.block-b-opener-slide .block-b-footnote .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.block-b-opener-slide .block-b-footnote .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-mute);
}
</style>

<!--
BLOCK B OPENER — F2: "Every chat is a clean slate. Every repo is not."
Beat 1: short pause after Demo A echo. Then headline slow, both langs.
  "Every chat is a clean slate. Every repo is not."
Beat 2: walk the two timelines.
  CHAT: "Open. You type. Close. Nothing left."
  REPO: "Open. You work. Close. And tomorrow morning, your CLAUDE.md is
   still there. Your ADRs are still there. Your .scratch notes are still
   there. Your git log has 17 new commits with full reasoning in them.
   Tomorrow's session reads all of this — before you say a word."
Beat 3: footnote, slow:
  "The AI doesn't restart from zero. It starts from what you left behind."
Transitions to CLAUDE.md inline.
-->

---
layout: default
title: CLAUDE.md inline
class: claude-md-slide
---

<div class="eyebrow-top">long-term memory · CLAUDE.md · 长期记忆</div>

<h1 class="claude-md-headline">
  Before you say anything,<br/>
  the AI <span class="rust">already knows this.</span>
</h1>

<div class="claude-md-cn">你还没开口，它就已经知道的东西。</div>

<div class="claude-md-grid">
  <div class="claude-md-file">
    <div class="file-tab">~/coe-may-deck/CLAUDE.md</div>
    <div class="file-content">
      <div class="ln"><span class="h1"># CLAUDE.md</span></div>
      <div class="ln blank"></div>
      <div class="ln"><span class="h2">## Agent skills</span></div>
      <div class="ln blank"></div>
      <div class="ln"><span class="h3">### Issue tracker</span></div>
      <div class="ln blank"></div>
      <div class="ln">Issues live as local markdown files</div>
      <div class="ln">under <span class="inl">.scratch/&lt;feature&gt;/</span>.</div>
      <div class="ln">See <span class="inl">docs/agents/issue-tracker.md</span>.</div>
      <div class="ln blank"></div>
      <div class="ln"><span class="h3">### Triage labels</span></div>
      <div class="ln blank"></div>
      <div class="ln">Five canonical triage roles, default</div>
      <div class="ln">vocabulary (labels = role names).</div>
      <div class="ln">See <span class="inl">docs/agents/triage-labels.md</span>.</div>
      <div class="ln blank"></div>
      <div class="ln"><span class="h3">### Domain docs</span></div>
      <div class="ln blank"></div>
      <div class="ln">Single-context: one <span class="inl">CONTEXT.md</span> and</div>
      <div class="ln"><span class="inl">docs/adr/</span> at the repo root.</div>
      <div class="ln">See <span class="inl">docs/agents/domain.md</span>.</div>
    </div>
  </div>
  <div class="claude-md-notes">
    <div class="note">
      <span class="note-label">auto-loaded</span>
      every session, every turn, before turn 1.<br/>
      <span class="cn">每个 session 开始就在 context 里。</span>
    </div>
    <div class="note">
      <span class="note-label">scoped</span>
      project: <code>./CLAUDE.md</code> · user: <code>~/.claude/CLAUDE.md</code>.<br/>
      <span class="cn">项目级 / 用户级 / 嵌套都可以。</span>
    </div>
    <div class="note">
      <span class="note-label">selective</span>
      every token here costs context. keep <span class="rust">invariants</span>, not details.<br/>
      <span class="cn">只放不变量，不放细节。</span>
    </div>
    <div class="note">
      <span class="note-label">linked</span>
      points <em>at</em> docs/skills — doesn't inline them.<br/>
      <span class="cn">指路 · 不全文复制。</span>
    </div>
  </div>
</div>

<style>
.claude-md-slide { padding: 1.4rem 4rem 1rem; display: flex; flex-direction: column; }
.claude-md-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 0.7rem;
}
.claude-md-slide .claude-md-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 1.8rem !important;
  line-height: 1.15 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.claude-md-slide .claude-md-headline .rust { color: var(--c-rust); }
.claude-md-slide .claude-md-cn {
  margin-top: 0.4rem;
  font-family: var(--f-display-cn);
  font-size: 1rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.claude-md-slide .claude-md-grid {
  margin-top: 0.9rem;
  display: grid;
  grid-template-columns: 1fr 1.05fr;
  gap: 1.2rem;
  align-items: start;
}
.claude-md-slide .claude-md-file {
  background: #1A1611 !important;
  color: #F4EFE3 !important;
  border: 1px solid #2A2418 !important;
  border-radius: 6px;
  overflow: hidden;
}
.claude-md-slide .file-tab {
  background: #2A2418;
  color: rgba(244, 239, 227, 0.7);
  font-family: var(--f-mono);
  font-size: 0.7rem;
  letter-spacing: 0.04em;
  padding: 0.35rem 0.8rem;
  border-bottom: 1px solid #1A1611;
}
.claude-md-slide .file-content {
  font-family: var(--f-mono);
  font-size: 0.74rem;
  line-height: 1.5;
  color: #F4EFE3;
  background: transparent;
  border: none;
  padding: 0.7rem 0.9rem;
  margin: 0;
}
.claude-md-slide .file-content .ln {
  white-space: pre;
}
.claude-md-slide .file-content .ln.blank {
  height: 0.7em;
}
.claude-md-slide .file-content .h1 {
  color: #E8C547;
  font-weight: 700;
}
.claude-md-slide .file-content .h2 {
  color: #E07A2D;
  font-weight: 700;
}
.claude-md-slide .file-content .h3 {
  color: var(--c-rust);
  font-weight: 700;
}
.claude-md-slide .file-content .inl {
  color: #E8C547;
  background: rgba(244, 239, 227, 0.07);
  padding: 0 0.18rem;
  border-radius: 2px;
}
.claude-md-slide .claude-md-notes {
  display: flex;
  flex-direction: column;
  gap: 0.55rem;
}
.claude-md-slide .note {
  font-family: var(--f-mono);
  font-size: 0.82rem;
  line-height: 1.5;
  color: var(--c-ink);
  background: var(--c-paper-warm);
  border: 1px solid var(--c-rule);
  border-left: 3px solid var(--c-rust);
  border-radius: 4px;
  padding: 0.5rem 0.8rem;
}
.claude-md-slide .note .note-label {
  color: var(--c-rust);
  font-weight: 700;
  letter-spacing: 0.02em;
  margin-right: 0.5rem;
  text-transform: lowercase;
}
.claude-md-slide .note .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.claude-md-slide .note .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-mute);
  font-size: 0.78rem;
}
.claude-md-slide .note code {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  background: rgba(26, 22, 17, 0.05);
  padding: 0 0.25rem;
  border-radius: 3px;
}
</style>

<!--
CLAUDE.md INLINE — the concrete artifact for "memory."
Beat 1: "OK so what does 'leave something behind' actually look like?
  Start with the simplest one: CLAUDE.md."
Beat 2: point at the left card.
  "This is the real CLAUDE.md from THIS deck — the repo you're looking at.
   It's not big. It's a few section headers and a few one-line pointers."
Beat 3: walk the four notes on the right.
  · auto-loaded: "every time I open Claude Code in this repo, this file is
   already in the context window. Before turn 1."
  · scoped: "Project-level here. There's also a ~/.claude/CLAUDE.md for
   anything I want everywhere."
  · selective: "Every token here lives in context — so keep INVARIANTS:
   our conventions, our vocabulary, where things live. Not details."
  · linked: "Notice — it POINTS AT docs/agents/*.md. Doesn't paste them.
   The AI walks the link only if it needs to."
Beat 4: closing line as you turn to next slide:
  "CLAUDE.md is layer one. There are two more."
Transitions to 3-layer architecture.
-->

---
layout: default
title: three layers of memory
class: memory-layers-slide
---

<div class="eyebrow-top">三层记忆 · context · files · git</div>

<h1 class="layers-headline">
  Three layers of memory.<br/>
  <span class="rust">Now. Latest. Over time.</span>
</h1>

<div class="layers-cn">三层记忆：现在 · 最近 · 历来。</div>

<div class="layers-diagram-wrap" v-pre>
<pre class="layers-diagram">  ┌───────────────────────────────────────────┐
  │  <span class="layer-name">CONTEXT WINDOW</span>       <span class="layer-when">now · this turn</span>     │  <span class="dim">volatile</span>
  │  ─ what the AI sees right now             │  <span class="dim">bounded</span>
  └────────────────<span class="arrow">▲</span>──────────────────────────┘
                   <span class="arrow">│</span> <span class="rust">read · write</span>
  ┌────────────────<span class="arrow">┴</span>──────────────────────────┐
  │  <span class="layer-name">LOCAL FILES</span>          <span class="layer-when">latest state</span>        │  <span class="dim">durable</span>
  │  ─ source · CLAUDE.md · docs · .scratch   │  <span class="dim">complete</span>
  └────────────────<span class="arrow">▲</span>──────────────────────────┘
                   <span class="arrow">│</span> <span class="rust">commit · blame · revert</span>
  ┌────────────────<span class="arrow">┴</span>──────────────────────────┐
  │  <span class="layer-name">GIT HISTORY</span>          <span class="layer-when">over time</span>           │  <span class="dim">versioned</span>
  │  ─ every change with the reason           │  <span class="dim">auditable</span>
  └───────────────────────────────────────────┘</pre>
</div>

<div class="layers-grid-wrap" v-pre>
<pre class="layers-grid">  context window 是<span class="rust">工作台</span>   ·   local files 是<span class="rust">书架</span>   ·   git 是<span class="rust">档案馆</span>
  workbench                  bookshelf                archive</pre>
</div>

<div class="layers-footnote">
  context is finite · files modularize it · git makes it travel through time.<br/>
  <span class="cn">Context 是有限的，文件让它模块化，git 让它穿越时间。</span>
</div>

<style>
.memory-layers-slide { padding: 1.2rem 4rem 0.9rem; display: flex; flex-direction: column; }
.memory-layers-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 0.6rem;
}
.memory-layers-slide .layers-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 1.7rem !important;
  line-height: 1.15 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.memory-layers-slide .layers-headline .rust { color: var(--c-rust); }
.memory-layers-slide .layers-cn {
  margin-top: 0.35rem;
  font-family: var(--f-display-cn);
  font-size: 0.95rem;
  color: var(--c-ink-soft);
}
.memory-layers-slide .layers-diagram-wrap {
  margin-top: 0.7rem;
  display: flex;
  justify-content: center;
}
.memory-layers-slide .layers-diagram {
  font-family: var(--f-mono) !important;
  font-size: 0.82rem !important;
  line-height: 1.4 !important;
  color: var(--c-ink) !important;
  background: var(--c-paper-warm) !important;
  border: 1px solid var(--c-rule) !important;
  border-radius: 6px;
  padding: 0.8rem 1.2rem !important;
  margin: 0;
  white-space: pre;
  overflow: visible;
}
.memory-layers-slide .layers-diagram .layer-name {
  color: var(--c-rust);
  font-weight: 700;
  letter-spacing: 0.02em;
}
.memory-layers-slide .layers-diagram .layer-when {
  color: var(--c-ink-soft);
  font-style: italic;
}
.memory-layers-slide .layers-diagram .dim {
  color: var(--c-ink-mute);
}
.memory-layers-slide .layers-diagram .arrow {
  color: var(--c-rust);
  font-weight: 700;
}
.memory-layers-slide .layers-diagram .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.memory-layers-slide .layers-grid-wrap {
  margin-top: 0.7rem;
  display: flex;
  justify-content: center;
}
.memory-layers-slide .layers-grid {
  font-family: var(--f-mono) !important;
  font-size: 0.82rem !important;
  line-height: 1.55 !important;
  color: var(--c-ink) !important;
  background: transparent !important;
  border: none !important;
  padding: 0 !important;
  margin: 0;
  white-space: pre;
}
.memory-layers-slide .layers-grid .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.memory-layers-slide .layers-footnote {
  margin-top: 0.7rem;
  font-family: var(--f-mono);
  font-size: 0.85rem;
  line-height: 1.55;
  color: var(--c-ink-soft);
  padding-top: 0.6rem;
  border-top: 1px solid var(--c-rule);
}
.memory-layers-slide .layers-footnote .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-mute);
}
</style>

<!--
THREE LAYERS OF MEMORY — the architecture diagram.
Beat 1: "CLAUDE.md was layer one. Zoom out — there are three layers of memory."
Beat 2: walk the diagram top to bottom, slow.
  TOP — Context window:
    "What the AI sees RIGHT NOW. Volatile. Bounded. When this session ends, it's gone."
  MIDDLE — Local files:
    "Latest state. CLAUDE.md, source files, docs, .scratch. Durable. Complete.
     The AI reads pieces of this into the context window on demand."
  BOTTOM — Git history:
    "Every state, over time. Versioned. Auditable. The AI can `git show` a commit
     from 2 months ago and read the reasoning that landed it — same as Demo A."
Beat 3: hold on the arrows between the layers.
  "Up: read/write. Down: commit/blame/revert. These aren't metaphors — they're
   the actual operations the AI runs."
Beat 4: short pause. Then the trio line:
  "Context window is your workbench. Local files are your bookshelf.
   Git is your archive. Three layers, each bounded, none replaces the other."
Beat 5: footnote:
  "Context is finite. Files modularize it. Git makes it travel through time."
Transitions to Demo B cue (this deck was built with Claude Code → meta).
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
title: demo B echo — see the commit
class: live-link-slide
---

<div class="eyebrow-top">echo · theplant/coe-may-deck · live link</div>

<div class="live-link-body">
  <h1 class="live-link-headline">
    That commit is <span class="rust">real.</span><br/>
    Click it.
  </h1>

  <div class="live-link-cn">刚才那个 commit，是真的。点开看。</div>

  <a class="live-link-card"
     href="https://github.com/theplant/coe-may-deck/commits/main"
     target="_blank"
     rel="noopener">
    <span class="live-link-prompt">❯</span>
    <span class="live-link-url">github.com/theplant/coe-may-deck/commits/main</span>
    <span class="live-link-arrow">↗</span>
  </a>

  <div class="live-link-footnote">
    <span class="rust">↑</span> top of the list is what Claude just pushed. <span class="cn">— 列表最上面那条就是。</span>
  </div>
</div>

<style>
.live-link-slide { padding: 2.4rem 4rem 1.6rem; display: flex; flex-direction: column; height: 100%; }
.live-link-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 1.4rem;
}
.live-link-slide .live-link-body {
  display: flex;
  flex-direction: column;
  justify-content: center;
  flex: 1;
  gap: 0;
}
.live-link-slide .live-link-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 2.8rem !important;
  line-height: 1.15 !important;
  letter-spacing: -0.025em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.live-link-slide .live-link-headline .rust { color: var(--c-rust); }
.live-link-slide .live-link-cn {
  margin-top: 0.9rem;
  font-family: var(--f-display-cn);
  font-size: 1.25rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.live-link-slide .live-link-card {
  margin-top: 2.2rem;
  display: inline-flex;
  align-items: center;
  gap: 0.9rem;
  align-self: flex-start;
  font-family: var(--f-mono);
  font-size: 1.3rem;
  font-weight: 600;
  text-decoration: none;
  color: var(--c-ink);
  background: var(--c-paper-warm);
  border: 1px solid var(--c-rule);
  border-radius: 8px;
  padding: 0.9rem 1.4rem;
  transition: transform 0.15s ease, border-color 0.15s ease, background 0.15s ease;
}
.live-link-slide .live-link-card:hover {
  transform: translateY(-1px);
  border-color: var(--c-rust);
  background: #FFFFFF;
}
.live-link-slide .live-link-prompt { color: var(--c-rust); font-weight: 800; }
.live-link-slide .live-link-url { letter-spacing: 0.01em; }
.live-link-slide .live-link-arrow { color: var(--c-rust); font-weight: 800; }
.live-link-slide .live-link-footnote {
  margin-top: 1.8rem;
  font-family: var(--f-mono);
  font-size: 0.95rem;
  line-height: 1.55;
  color: var(--c-ink-soft);
}
.live-link-slide .live-link-footnote .rust { color: var(--c-rust); font-weight: 700; margin-right: 0.3rem; }
.live-link-slide .live-link-footnote .cn { font-family: var(--f-display-cn); color: var(--c-ink-mute); }
</style>

<!--
DEMO B — ECHO (live link variant)
After Claude finishes the live commit, switch back to the deck and advance to this slide.
The card is a real anchor: clicking it opens GitHub /commits/main in a new tab so the
audience can see the freshly-pushed commit sitting at the top of the list. No mockups,
no placeholders — the proof is one click away.

Beat 1: read the headline slow. EN, CN.
  "That commit is real. Click it."
  "刚才那个 commit，是真的。点开看。"
Beat 2: actually click it during the talk. New tab opens, GitHub commits page loads,
  the top entry is the one Claude just made. Point at it.
  "Top of the list. Authored by me, co-authored by Claude. Permanent."
Beat 3: back to the slide. The footnote reinforces:
  "Top of the list is what Claude just pushed."
Pause. End of Block B.
-->

---
layout: default
title: artifacts — every format
class: artifacts-slide
---

<div class="eyebrow-top">成果 · text it edits · binary it builds</div>

<div class="artifacts-leadin">
  AI can't open a .pptx. It can't directly edit a .pdf.<br/>
  <span class="cn">AI 打不开 .pptx，也改不动 .pdf。</span>
</div>

<h1 class="artifacts-headline">
  But the <span class="rust">recipe is text</span> —<br/>
  and the same loop writes recipes for any file.
</h1>

<div class="artifacts-cn">可是配方是文本。同一个循环，也能写出任何文件的配方。</div>

<div class="artifacts-grid-wrap">
<pre class="artifacts-grid">  AI EDITS DIRECTLY · text          TOOLS BUILD · binary
  ──────────                        ──────────
  this very deck <span class="fmt">slides.md</span>          a slide deck <span class="fmt">.pptx</span>
  agent memory <span class="fmt">CLAUDE.md</span>            a Word doc <span class="fmt">.docx</span>
  source code <span class="fmt">.ts</span> <span class="fmt">.py</span>                 a quarterly report <span class="fmt">.pdf</span>
  an OpenSCAD recipe <span class="fmt">.scad</span>          an XLSX with live formulas <span class="fmt">.xlsx</span>
  config &amp; shell <span class="fmt">.yml</span> <span class="fmt">.sh</span>            a 3D-printable phone stand <span class="fmt">.stl</span></pre>
</div>

<div class="artifacts-footnote">
  <span class="rust">AI writes the recipe.</span> The tool builds the file.<br/>
  <span class="cn">AI 写配方，工具生成文件。</span>
</div>

<style>
.artifacts-slide { padding: 1.4rem 4rem 0.8rem; display: flex; flex-direction: column; }
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
  font-size: 0.9rem !important;
  line-height: 1.55 !important;
  color: var(--c-ink) !important;
  background: var(--c-paper-warm) !important;
  border: 1px solid var(--c-rule) !important;
  border-radius: 6px;
  padding: 0.8rem 1.3rem !important;
  margin: 0;
  white-space: pre;
  overflow: visible;
}
.artifacts-slide .artifacts-grid .fmt {
  color: var(--c-rust);
  font-weight: 700;
}
.artifacts-slide .artifacts-footnote {
  margin-top: 0.7rem;
  font-family: var(--f-mono);
  font-size: 0.9rem;
  line-height: 1.5;
  color: var(--c-ink-soft);
  letter-spacing: 0.01em;
  padding-top: 0.55rem;
  border-top: 1px solid var(--c-rule);
}
.artifacts-slide .artifacts-footnote .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.artifacts-slide .artifacts-footnote .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-mute);
}
</style>

<!--
ARTIFACTS · TEXT vs BINARY — make the editing distinction explicit.

Two columns. Two different mechanisms.
  LEFT  — AI edits the file directly: markdown, source code, configs, OpenSCAD,
          even this deck (slides.md) and its own memory (CLAUDE.md). Plain text in,
          plain text out, AI is the editor.
  RIGHT — AI cannot edit the file at all: .pptx, .docx, .pdf, .xlsx, .stl are
          binary. AI writes the *recipe* (python-pptx code, an OpenSCAD .scad,
          a LaTeX source, openpyxl calls) and a tool builds the binary.

Beat 1: leadin as honest concession.
  "AI can't open a .pptx. It can't directly edit a .pdf. That's true."
Beat 2: headline, the flip:
  "But the recipe is text — and the same loop writes recipes for any file."
Beat 3: walk LEFT column first, fast.
  "Things AI edits directly: this very deck — slides.md you're looking at.
   CLAUDE.md — its own memory. Source code. An OpenSCAD recipe. Configs and shell.
   All plain text. AI is literally the editor."
Beat 4: shift to RIGHT column, slower — this is the surprising part.
  "Things AI cannot open or edit: a .pptx, a Word doc, a PDF, an XLSX,
   a 3D-printable .stl. Binary files. But python-pptx, python-docx, weasyprint,
   openpyxl, OpenSCAD — those are tools that take TEXT in and emit BINARY out.
   AI writes the recipe. The tool builds the file."
Beat 5: closing principle:
  "AI writes the recipe. The tool builds the file."
  Pause. Transition: "And here's *why* all of that works."
Goes to CLI · the door, then the OpenSCAD proof.
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
Transitions to the OpenSCAD proof slide.
-->

---
layout: default
title: proof — OpenSCAD to STL
class: stl-proof-slide
---

<div class="eyebrow-top">证据 · OpenSCAD → STL</div>

<h1 class="stl-headline">
  AI did not <span class="muted">draw</span> a 3D model.<br/>
  It wrote <span class="rust">text</span> for one.
</h1>

<div class="stl-cn">AI 没有画一个 3D 模型。它写了一段可读的设计稿。</div>

<div class="stl-proof-grid">
<div class="stl-code-card">
<div class="code-line dim">// phone-stand.scad</div>
<div class="code-line">module phone_stand() {</div>
<div class="code-line indent">rounded_box([86, 76, 6], 5);</div>
<div class="code-gap"></div>
<div class="code-line indent">translate([11, 10, 6])</div>
<div class="code-line indent2">rounded_box([64, 9, 14], 2);</div>
<div class="code-gap"></div>
<div class="code-line indent">slanted_bar(11, 52, 6, 31, 88,</div>
<div class="code-line indent3">64, 7, 5);</div>
<div class="code-line">}</div>
</div>

<div class="stl-pipeline">
<div class="terminal-card">
<div class="term-line"><span class="prompt">❯</span> claude "make a phone stand"</div>
<div class="term-line out">writes phone-stand.scad</div>
<div class="term-gap"></div>
<div class="term-line"><span class="prompt">❯</span> openscad -o phone-stand.stl</div>
<div class="term-line indent">phone-stand.scad</div>
<div class="term-line out">binary STL generated</div>
</div>

<div class="stl-preview">
<img :src="'demos/phone-stand.png'" alt="perspective view" />
<img :src="'demos/phone-stand-front.png'" alt="front view" />
<img :src="'demos/phone-stand-side.png'" alt="side view" />
<img :src="'demos/phone-stand-top.png'" alt="top view" />
<div class="preview-caption">phone-stand.stl · 4 views from one source</div>
</div>
</div>
</div>

<div class="stl-footnote">
  <span class="rust">AI writes the recipe.</span> OpenSCAD builds the printable file.
  <span class="cn">AI 写配方，CLI 生成机器能用的文件。</span>
</div>

<style>
.stl-proof-slide {
  padding: 1.4rem 4rem 1rem;
  display: flex;
  flex-direction: column;
}
.stl-proof-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 0.6rem;
}
.stl-proof-slide .stl-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 1.8rem !important;
  line-height: 1.14 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.stl-proof-slide .stl-headline .rust { color: var(--c-rust); }
.stl-proof-slide .stl-headline .muted { color: var(--c-ink-mute); }
.stl-proof-slide .stl-cn {
  margin-top: 0.4rem;
  font-family: var(--f-display-cn);
  font-size: 0.98rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.stl-proof-slide .stl-proof-grid {
  margin-top: 0.8rem;
  display: grid;
  grid-template-columns: 1fr 1.05fr;
  gap: 1rem;
  align-items: stretch;
}
.stl-proof-slide .stl-code-card,
.stl-proof-slide .terminal-card {
  background: #1A1611 !important;
  color: #F4EFE3 !important;
  border: 1px solid #2A2418 !important;
  border-radius: 6px;
}
.stl-proof-slide .stl-code-card {
  padding: 0.9rem 1.1rem;
  min-height: 13rem;
}
.stl-proof-slide .code-line,
.stl-proof-slide .term-line {
  font-family: var(--f-mono);
  font-size: 0.76rem;
  line-height: 1.58;
  color: inherit;
  white-space: nowrap;
}
.stl-proof-slide .code-line.indent { padding-left: 1.2rem; }
.stl-proof-slide .code-line.indent2 { padding-left: 2.4rem; }
.stl-proof-slide .code-line.indent3 { padding-left: 3.6rem; }
.stl-proof-slide .term-line.indent { padding-left: 1.8rem; }
.stl-proof-slide .code-gap,
.stl-proof-slide .term-gap {
  height: 0.62rem;
}
.stl-proof-slide .dim,
.stl-proof-slide .out {
  color: rgba(244, 239, 227, 0.48);
}
.stl-proof-slide .prompt {
  color: var(--c-rust);
  font-weight: 700;
}
.stl-proof-slide .stl-pipeline {
  display: grid;
  grid-template-rows: auto 1fr;
  gap: 0.8rem;
}
.stl-proof-slide .terminal-card {
  padding: 0.9rem 1.05rem;
}
.stl-proof-slide .stl-preview {
  background: var(--c-paper-warm);
  border: 1px solid var(--c-rule);
  border-radius: 6px;
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-template-rows: 3.8rem 3.8rem auto;
  gap: 0.3rem;
  padding: 0.35rem;
  overflow: hidden;
}
.stl-proof-slide .stl-preview img {
  width: 100%;
  height: 100%;
  max-height: 3.8rem;
  object-fit: contain;
  display: block;
  padding: 0;
  border-radius: 2px;
}
.stl-proof-slide .preview-caption {
  grid-column: 1 / -1;
  border-top: 1px solid var(--c-rule);
  padding: 0.3rem 0.5rem 0.1rem;
  font-family: var(--f-mono);
  font-size: 0.65rem;
  color: var(--c-ink-mute);
  letter-spacing: 0.02em;
  text-align: center;
}
.stl-proof-slide .stl-footnote {
  margin-top: 0.8rem;
  font-family: var(--f-mono);
  font-size: 0.84rem;
  line-height: 1.55;
  color: var(--c-ink-soft);
  letter-spacing: 0.01em;
  padding-top: 0.65rem;
  border-top: 1px solid var(--c-rule);
}
.stl-proof-slide .stl-footnote .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.stl-proof-slide .stl-footnote .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-mute);
  margin-left: 0.35rem;
}
</style>

<!--
OPENSCAD → STL PROOF — make the CLI claim concrete with a complex file
format. Now lives AFTER the CLI mechanism slide, so it functions as a
worked example: "you just heard the abstract claim; here it is, real."

The audience does not need to understand CAD; they need to see that a
binary 3D-printing artifact can start as readable text, and that the
SAME source produces multiple ready-to-print views.

Beat 1: ground the CLI claim with one example.
  "Let me make that CLI claim concrete. Take one row from the artifacts
   slide: .stl. Watch how AI reaches it."
Beat 2: read the headline slowly, both languages.
  "AI did not draw a 3D model. It wrote text for one."
Beat 3: point left at the code.
  "This is the source file: dimensions, lip, slant, supports. Reviewable
   text. It can be diffed. It can be committed."
Beat 4: point right at the multi-view grid.
  "Then the CLI compiles it: openscad in, STL out. Four views, same
   source, one printable file. No mouse touched it. The printer never
   saw the prompt — it saw the artifact."
Beat 5: pause on the renders, quiet.
  "Same source. Four views. One STL. So..."
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
Beat 5: quiet transition: "So — what does that mean for what *we* build?"
Transitions to the e-commerce reframe trio (想象 / 推断 / 所以).
-->

---
layout: default
title: why CLI — the mechanical principle
class: why-cli-slide
---

<div class="eyebrow-top">the mechanism · 原理</div>

<h1 class="why-headline">
  LLMs output <span class="rust">text.</span><br/>
  CLIs speak <span class="rust">text.</span>
</h1>

<div class="why-cn">LLM 的输出是 token（文字）。CLI 的接口也是文字。这是最直接的匹配。</div>

<div class="why-rule"></div>

<div class="why-closer">
  GUIs need cursor, pixel, visual layout —<br/>
  things LLMs can't see. <span class="rust">CLIs need none of that.</span><br/>
  <span class="cn">GUI 是人类专用的翻译层。AI 不需要翻译。</span>
</div>

<style>
.why-cli-slide { padding: 3rem 4rem; display: flex; flex-direction: column; justify-content: center; align-items: flex-start; }
.why-cli-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 1.6rem;
}
.why-cli-slide .why-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 2.4rem !important;
  line-height: 1.15 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.why-cli-slide .why-headline .rust { color: var(--c-rust); }
.why-cli-slide .why-cn {
  margin-top: 0.9rem;
  font-family: var(--f-display-cn);
  font-size: 1.25rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.why-cli-slide .why-rule {
  margin-top: 2.2rem;
  width: 4rem;
  height: 2px;
  background: var(--c-rust);
  display: block;
}
.why-cli-slide .why-closer {
  margin-top: 2.2rem;
  font-family: var(--f-mono);
  font-size: 1.05rem;
  line-height: 1.75;
  color: var(--c-ink);
}
.why-cli-slide .why-closer .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.why-cli-slide .why-closer .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-soft);
}
</style>

<!--
THE MECHANISM — why CLI is the AI-native interface.

Not "CLI is cooler" — it's a mechanical fit. LLMs produce tokens (text).
CLIs accept stdin (text) and return stdout (text). Perfect match.
GUIs require visual perception: cursor position, pixel reading, menu
navigation, layout parsing. LLMs have none of those affordances.

Beat 1: "Let me explain WHY — not as a preference, as a mechanism."
Beat 2: read the headline slow. "LLMs output text. CLIs speak text."
  "This isn't a coincidence. It's the same data type."
Beat 3: the closer. "GUIs need cursor, pixel, visual layout — things
  LLMs literally cannot see. CLIs need none of that."
Beat 4: CN. "GUI 是人类专用的翻译层。AI 不需要翻译。"
Beat 5: quick cut to next → the shop owner is who we're building for.
-->

---
layout: default
title: 想象 · the shop owner you sell to
class: shop-owner-slide
---

<div class="eyebrow-top">想象 · our customer · the shop owner</div>

<h1 class="shop-owner-headline">
  Today they click <span class="muted">47 screens.</span><br/>
  Soon they say <span class="rust">one sentence.</span>
</h1>

<div class="shop-owner-cn">今天点 47 个屏幕。很快只说一句话。</div>

<div class="shop-owner-terminal" v-pre>
<pre class="shop-owner-term">~/acme-shop                                <span class="dim">shop-owner@mac</span>
<span class="prompt">❯</span> shop <span class="quote">"summer collection 15% off · Fri→Sun · home banner"</span>

  reading    catalog.yml · promos/ · theme/home.tsx
  matched    247 SKUs            <span class="dim">(tag: summer)</span>
  drafted    promos/2027-06-04-summer-flash.yml
  scheduled  Fri 00:00 → Sun 23:59 JST
  preview    dev.acme-shop.com   <span class="dim">(banner + tagged prices)</span>
  commit     <span class="quote">"summer flash 15% · 247 SKUs · req by owner"</span>

  apply and ship?  <span class="rust">[y/n]</span> <span class="caret">_</span>
</pre>
</div>

<div class="shop-owner-footnote">
  no menus. no wizard. a sentence and a confirmation.<br/>
  <span class="cn">没有菜单，没有向导，一句话加一个确认。</span>
</div>

<style>
.shop-owner-slide { padding: 1.2rem 4rem 0.6rem; display: flex; flex-direction: column; }
.shop-owner-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 0.7rem;
}
.shop-owner-slide .shop-owner-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 1.9rem !important;
  line-height: 1.15 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.shop-owner-slide .shop-owner-headline .rust { color: var(--c-rust); }
.shop-owner-slide .shop-owner-headline .muted { color: var(--c-ink-mute); }
.shop-owner-slide .shop-owner-cn {
  margin-top: 0.45rem;
  font-family: var(--f-display-cn);
  font-size: 1rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.shop-owner-slide .shop-owner-terminal {
  margin-top: 1rem;
  display: flex;
  justify-content: center;
}
.shop-owner-slide .shop-owner-term {
  font-family: var(--f-mono) !important;
  font-size: 0.85rem !important;
  line-height: 1.55 !important;
  color: #F4EFE3 !important;
  background: #1A1611 !important;
  border: 1px solid #2A2418 !important;
  border-radius: 6px;
  padding: 1rem 1.3rem !important;
  margin: 0;
  white-space: pre;
  overflow: visible;
}
.shop-owner-slide .shop-owner-term .prompt {
  color: var(--c-rust);
  font-weight: 700;
}
.shop-owner-slide .shop-owner-term .quote {
  color: #E8C547;
}
.shop-owner-slide .shop-owner-term .dim {
  color: rgba(244, 239, 227, 0.48);
}
.shop-owner-slide .shop-owner-term .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.shop-owner-slide .shop-owner-term .caret {
  color: var(--c-rust);
  animation: blink 1.1s steps(1) infinite;
}
@keyframes blink { 50% { opacity: 0; } }
.shop-owner-slide .shop-owner-footnote {
  margin-top: 0.5rem;
  font-family: var(--f-mono);
  font-size: 0.85rem;
  line-height: 1.5;
  color: var(--c-ink-soft);
  padding-top: 0.5rem;
  border-top: 1px solid var(--c-rule);
}
.shop-owner-slide .shop-owner-footnote .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-mute);
}
</style>

<!--
想象 — the future shop owner.
The thought-experiment slide ends with silence. Use that silence.
Then: "So — what does any of this mean for us? We sell e-commerce systems.
Picture the shop owner we'll be selling to next year."
Beat 1: read headline slow. EN then CN.
Beat 2: walk the terminal mockup line by line.
  "One sentence. The system reads the catalog, matches 247 SKUs,
   drafts a promo file, schedules it, previews it, writes the commit message.
   The owner says y. Ship."
Beat 3: footnote, slow:
  "No menus. No wizard. A sentence and a confirmation."
  Pause. Let it land. Then: "OK — so what does THAT mean we have to build?"
Transitions to 推断.
-->

---
layout: default
title: 推断 · what the system has to expose
class: shop-system-slide
---

<div class="eyebrow-top">推断 · what we have to build</div>

<h1 class="system-headline">
  Every sentence the owner says<br/>
  needs <span class="rust">a tool</span> on the other side.
</h1>

<div class="system-cn">店主说的每一句话，背后都得有一个工具能接住。</div>

<div class="system-grid-wrap" v-pre>
<pre class="system-grid">  THE OWNER SAYS                        THE SYSTEM EXPOSES
  ──────────────                        ──────────────────
  <span class="said">"lower this price 15%"</span>                shop product price <span class="tool">set</span>
  <span class="said">"flash sale this weekend"</span>             shop promo <span class="tool">schedule</span>
  <span class="said">"why did Tuesday drop?"</span>               shop <span class="tool">analyze</span>
  <span class="said">"refund the wrong-size orders"</span>        shop order <span class="tool">refund</span> --batch
  <span class="said">"translate to Japanese"</span>               shop catalog <span class="tool">translate</span>
  <span class="said">"reorder the homepage"</span>                shop theme <span class="tool">edit</span>
  <span class="said">"VIPs get a 10% code"</span>                 shop <span class="tool">segment</span> + shop <span class="tool">promo</span>
  <span class="said">"roll back yesterday's price"</span>         shop <span class="tool">revert</span>  <span class="dim">— a commit</span>
</pre>
</div>

<div class="system-footnote">
  catalog as text · config as files · every change a commit<br/>
  GUI is just one client among many.<br/>
  <span class="cn">商品是文本，配置是文件，每次改动都是一次提交。GUI 只是众多客户端之一。</span>
</div>

<style>
.shop-system-slide { padding: 1.4rem 4rem 1rem; display: flex; flex-direction: column; }
.shop-system-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 0.7rem;
}
.shop-system-slide .system-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 1.8rem !important;
  line-height: 1.15 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.shop-system-slide .system-headline .rust { color: var(--c-rust); }
.shop-system-slide .system-cn {
  margin-top: 0.4rem;
  font-family: var(--f-display-cn);
  font-size: 1rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.shop-system-slide .system-grid-wrap {
  margin-top: 0.9rem;
  display: flex;
  justify-content: center;
}
.shop-system-slide .system-grid {
  font-family: var(--f-mono) !important;
  font-size: 0.84rem !important;
  line-height: 1.55 !important;
  color: var(--c-ink) !important;
  background: var(--c-paper-warm) !important;
  border: 1px solid var(--c-rule) !important;
  border-radius: 6px;
  padding: 0.85rem 1.3rem !important;
  margin: 0;
  white-space: pre;
  overflow: visible;
}
.shop-system-slide .system-grid .said {
  color: var(--c-ink-soft);
}
.shop-system-slide .system-grid .tool {
  color: var(--c-rust);
  font-weight: 700;
}
.shop-system-slide .system-grid .dim {
  color: var(--c-ink-mute);
}
.shop-system-slide .system-footnote {
  margin-top: 0.8rem;
  font-family: var(--f-mono);
  font-size: 0.85rem;
  line-height: 1.55;
  color: var(--c-ink-soft);
  padding-top: 0.7rem;
  border-top: 1px solid var(--c-rule);
}
.shop-system-slide .system-footnote .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-mute);
}
</style>

<!--
推断 — inference: from the owner's one sentence, infer what our system must look like.
Beat 1: "Every sentence the owner says needs a tool on the other side.
  If the system doesn't expose it, the AI can't reach it."
Beat 2: walk the grid in TWO passes.
  Pass 1 (LEFT): read three or four owner sentences out loud, fast.
   "Lower this price. Flash sale this weekend. Why did Tuesday drop. Refund the wrong-size orders."
  Pass 2 (RIGHT): point at the rust-colored verbs.
   "set. create. analyze. refund. translate. edit. segment. revert.
    These are TOOLS. Not menu items. Not modal dialogs. Tools the AI can call."
Beat 3: hold on the last row — `shop revert` — it's a commit.
  "Notice this one. Rolling back a price change isn't a special feature.
   It's the same git revert you already know. Because every change is already a commit."
Beat 4: footnote, slow:
  "Catalog as text. Config as files. Every change a commit. GUI is just one client among many."
Transitions to 所以.
-->

---
layout: default
title: 所以 · the platform we build
class: platform-reframe-slide
---

<div class="eyebrow-top">所以 · the reframe</div>

<h1 class="reframe-headline">
  The admin GUI is <span class="muted">no longer the product.</span><br/>
  The <span class="rust">toolbox</span> is.
</h1>

<div class="reframe-cn">后台不再是产品。工具箱才是。</div>

<div class="reframe-table-wrap" v-pre>
<pre class="reframe-table">  YESTERDAY'S PLATFORM                  TOMORROW'S PLATFORM
  ────────────────────                  ───────────────────
  product = an admin GUI                product = a toolbox of CLIs
  catalog as DB rows                    catalog as diff-able text
  changes = form submissions            changes = commits with reasons
  ops convo in Slack                    ops reasoning in <span class="path">.git/log</span>
  memory = tribal knowledge             memory = <span class="path">CLAUDE.md</span> per shop
  workflow = SOP in Confluence          workflow = <span class="path">.claude/skills/*.md</span>
  CLI driven by <span class="dim">— nobody —</span>             CLI driven by the owner <span class="rust">+ AI</span>
</pre>
</div>

<div class="reframe-footnote">
  <span class="rust">we don't build a better admin panel.</span> we build a shop our customers' AI can drive.<br/>
  <span class="cn">我们要做的，不是更好的后台，而是 AI 也能驾驭的店铺。</span>
</div>

<style>
.platform-reframe-slide { padding: 1.4rem 4rem 1rem; display: flex; flex-direction: column; }
.platform-reframe-slide .eyebrow-top {
  font-family: var(--f-mono);
  font-size: 0.78rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--c-ink-mute);
  margin-bottom: 0.7rem;
}
.platform-reframe-slide .reframe-headline {
  font-family: var(--f-display) !important;
  font-weight: 700 !important;
  font-size: 1.8rem !important;
  line-height: 1.15 !important;
  letter-spacing: -0.02em !important;
  color: var(--c-ink);
  margin: 0 !important;
}
.platform-reframe-slide .reframe-headline .rust { color: var(--c-rust); }
.platform-reframe-slide .reframe-headline .muted { color: var(--c-ink-mute); }
.platform-reframe-slide .reframe-cn {
  margin-top: 0.4rem;
  font-family: var(--f-display-cn);
  font-size: 1rem;
  color: var(--c-ink-soft);
  letter-spacing: 0.02em;
}
.platform-reframe-slide .reframe-table-wrap {
  margin-top: 0.9rem;
  display: flex;
  justify-content: center;
}
.platform-reframe-slide .reframe-table {
  font-family: var(--f-mono) !important;
  font-size: 0.82rem !important;
  line-height: 1.55 !important;
  color: var(--c-ink) !important;
  background: var(--c-paper-warm) !important;
  border: 1px solid var(--c-rule) !important;
  border-radius: 6px;
  padding: 0.85rem 1.3rem !important;
  margin: 0;
  white-space: pre;
  overflow: visible;
}
.platform-reframe-slide .reframe-table .path {
  color: var(--c-rust);
  font-weight: 700;
}
.platform-reframe-slide .reframe-table .dim {
  color: var(--c-ink-mute);
}
.platform-reframe-slide .reframe-table .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.platform-reframe-slide .reframe-footnote {
  margin-top: 0.8rem;
  font-family: var(--f-mono);
  font-size: 0.9rem;
  line-height: 1.55;
  color: var(--c-ink-soft);
  padding-top: 0.7rem;
  border-top: 1px solid var(--c-rule);
}
.platform-reframe-slide .reframe-footnote .rust {
  color: var(--c-rust);
  font-weight: 700;
}
.platform-reframe-slide .reframe-footnote .cn {
  font-family: var(--f-display-cn);
  color: var(--c-ink-mute);
}
</style>

<!--
所以 — the platform-level reframe. Closes the e-commerce trio.
This is the slide that should *change a few people's roadmap*.

Beat 1: read headline slow, both languages.
  "So — the admin GUI is no longer the product. The toolbox is."
Beat 2: walk the table top-to-bottom. Don't read every row — pick four:
  · product:        "we used to ship an admin panel. We're going to ship a toolbox."
  · catalog:        "rows in a DB → diff-able text. DB becomes a cache."
  · ops convo:      "the reason a price changed used to live in a Slack thread.
                     Now it lives in .git/log — forever, searchable, blame-able."
  · who drives CLI: "yesterday nobody. Tomorrow: the owner *and their AI*. That row is the whole talk."
Beat 3: footnote, slow and final:
  "We don't build a better admin panel. We build a shop our customers' AI can drive."
  (CN: 我们要做的，不是更好的后台，是 AI 也能驾驭的店铺。)
Pause. Let it land. This is the strategic line.
Transitions to CTA.
-->

---
layout: moment
title: what to try this week
eyebrow: this week · 本周试试
size: sm
cn: 三件事，对应今天三个 demo。本周做一次。
footnote: github.com/theplant/coe-may-deck
---

<div class="cta-items">
  <div class="cta-item"><span class="n">1</span><strong>Claude Code</strong> in your own repo.</div>
  <div class="cta-item"><span class="n">2</span><strong>One real commit.</strong> Read the diff.</div>
  <div class="cta-item"><span class="n">3</span>Ask: <strong>give me a CLI artifact.</strong></div>
</div>

<style>
.cta-items { display: flex; flex-direction: column; gap: 0.45em; font-size: 2rem; line-height: 1.3; }
.cta-item { display: block; }
.cta-item .n { color: var(--c-rust); font-weight: 800; display: inline-block; min-width: 1.4em; }
</style>

<!--
CTA — the actionable closer.
Three steps. Each one mirrors a demo we just did:
  1. Block A opener — "open Claude Code in a repo"
  2. Block A echo — the "one real commit" beat
  3. Slide 16 proof — `claude "make a phone stand"` → CLI produces the file
No grand vision. Just: replay today, once, this week.

Beat 1: read the three lines slow, like instructions. Tie each back:
  "One — open Claude Code in a repo you already maintain.
       That's literally what we did at the start of Block A.
   Two — have it make one real commit. Read the diff before you say y.
       That's the Block A echo. The one real commit.
   Three — ask it for a CLI artifact. A script, an STL, an ffmpeg line.
       That's the OpenSCAD proof. Recipe in, artifact out, no GUI."
Beat 2: CN, slow.
  "三件事，对应今天三个 demo。本周做一次，下周一你就有故事。"
Beat 3: point at the footnote.
  "The repo for this deck is public. Pull it. The history IS the talk."
Pause. End.
-->
