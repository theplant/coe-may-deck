---
layout: default
title: block A — the agentic loop
class: slide-page block-a-opener
---

<div class="eyebrow-top">block A · history · 历史</div>

<h1 class="headline">
  The AI works in a loop.<br/>
  <span class="rust">The loop becomes your git log.</span>
</h1>

<div class="cn">AI 在循环里工作。循环就是你的 git log。</div>

<div class="loop-stage">

  <div class="loop-row">
    <div class="loop-step">reason</div>
    <span class="loop-arrow">→</span>
    <div class="loop-step">act</div>
    <span class="loop-arrow">→</span>
    <div class="loop-step">observe</div>
    <span class="loop-arrow">→</span>
    <div class="loop-step loop-step-gate">
      verify
      <span class="loop-gate-tag">the gate</span>
    </div>
  </div>

  <div class="loop-outcomes">
    <div class="outcome">
      <span class="outcome-mark">✗</span>
      <span class="outcome-name">red</span>
      <span class="outcome-sep">→</span>
      <span class="outcome-action">↺ loop back to reason</span>
    </div>
    <div class="outcome-divider"></div>
    <div class="outcome">
      <span class="outcome-mark outcome-mark-green">✓</span>
      <span class="outcome-name">green</span>
      <span class="outcome-sep">→</span>
      <span class="outcome-action">↓ git commit</span>
    </div>
  </div>

</div>

<div class="loop-legend">
<pre>reason       what should I do next?
act          Read · Edit · Bash · Grep · Git
observe      diff · stdout · file content
verify       tests · build · lint · screenshot</pre>
</div>

<div class="block-footnote">
  next: the git log of a repo Claude helped build.
</div>


<!--
Before we look at the git log of a real repo, here's what the AI is
doing inside one. It's not generating a paragraph. It's running a loop.

Look at what it can call: read a file, edit a file, run a shell command,
search, use git. Real tools. Then it looks at what came back —
the diff, the stdout — and decides what to do next.

Verify is the gate. Red — something failed — loop back. Green — commit.
Every green commit becomes a line in your git history.
You're about to scroll a real one.
-->
