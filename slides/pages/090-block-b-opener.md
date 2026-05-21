---
layout: default
title: block B — clean slate vs repo
class: slide-page block-b-opener
---

<div class="eyebrow-top">block B · memory · 记忆</div>

<h1 class="headline">
  Every chat is <span class="muted">a clean slate.</span><br/>
  Every repo <span class="rust">is not.</span>
</h1>

<div class="cn">每次对话都是白纸。Repo 不是。</div>

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
