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

<div class="loop-wrap">
<pre class="loop-diagram">┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐
│  reason  │ <span class="arr">→</span>  │   act    │ <span class="arr">→</span>  │ observe  │ <span class="arr">→</span>  │  verify  │ <span class="arr">→</span>  │ continue │
└──────────┘    └──────────┘    └──────────┘    └──────────┘    └──────────┘
     <span class="arr">↑</span>                                       <span class="arr">red</span>  <span class="arr">│</span>                <span class="arr">│</span>
     <span class="arr">└────────────────── loop on red ────────┘</span>                <span class="arr">▼</span>
                                                            <span class="rust">git commit</span></pre>
</div>

<div class="loop-legend">
<pre>1 · reason       what should I do next?
2 · act          Read · Edit · Bash · Grep · Git
3 · observe      diff · stdout · file content
4 · verify       tests · build · lint · screenshot — the gate
5 · continue     loop on red · commit on green</pre>
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

Every iteration of that loop becomes a line in your git history.
You're about to scroll a real one.
-->
