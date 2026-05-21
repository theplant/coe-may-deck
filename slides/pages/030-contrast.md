---
layout: default
title: shape — chatbox vs working environment
class: slide-page contrast
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


<!--
CONTRAST — the visual thesis before any demo.
Beat: "Left: what a chatbox is — one window, text in, text out, dies on close.
Right: what 'work' is — your terminal, your files, your git log, your team.
The talk for the next 40 minutes is about moving the AI from the left side to the right side."
Don't read the labels aloud. Let the picture do it.
-->
