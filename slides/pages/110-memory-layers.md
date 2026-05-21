---
layout: default
title: three layers of memory
class: slide-page memory-layers
---

<div class="eyebrow-top">三层记忆 · context · files · git</div>

<h1 class="headline">
  Three layers of memory.<br/>
  <span class="rust">Now. Latest. Over time.</span>
</h1>

<div class="cn">三层记忆：现在 · 最近 · 历来。</div>

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

<div class="layers-grid-wrap">
  <div class="col">
    <div class="en">context window 是<span class="rust">工作台</span></div>
    <div class="role">workbench</div>
  </div>
  <div class="col">
    <div class="en">local files 是<span class="rust">书架</span></div>
    <div class="role">bookshelf</div>
  </div>
  <div class="col">
    <div class="en">git 是<span class="rust">档案馆</span></div>
    <div class="role">archive</div>
  </div>
</div>

<div class="layers-footnote">
  context is finite · files modularize it · git makes it travel through time.<br/>
  <span class="cn">Context 是有限的，文件让它模块化，git 让它穿越时间。</span>
</div>


<!--
CLAUDE.md lives in the middle layer — local files. Zoom out: there are three layers of memory total.

CONTEXT WINDOW: what the AI sees RIGHT NOW. Volatile. Bounded.
When this session ends, it's gone.

LOCAL FILES: latest state. CLAUDE.md, source files, docs, .scratch.
Durable. Complete. The AI reads pieces of this into the context window on demand.

GIT HISTORY: every state, over time. Versioned. Auditable. The AI can
`git show` a commit from 2 months ago and read the reasoning that landed it —
same as Demo A.

Up: read/write. Down: commit/blame/revert. These aren't metaphors —
they're the actual operations the AI runs.

Context window is your workbench. Local files are your bookshelf.
Git is your archive. Three layers, each bounded, none replaces the other.

Context is finite. Files modularize it. Git makes it travel through time.
-->
