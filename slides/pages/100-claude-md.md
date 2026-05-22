---
layout: default
title: CLAUDE.md inline
class: slide-page claude-md
---

<div class="eyebrow-top">long-term memory · CLAUDE.md · 长期记忆</div>

<h1 class="headline">
  Before you say anything,<br/>
  the AI <span class="rust">already knows this.</span>
</h1>

<div class="cn">你还没开口，它就已经知道的东西。</div>

<div class="claude-md-grid">
  <div class="claude-md-file">
    <div class="file-tab">~/coe-may-deck/CLAUDE.md</div>
    <div class="file-content">
      <div class="ln"><span class="h1"># CLAUDE.md</span></div>
      <div class="ln blank"></div>
      <div class="ln"><span class="h2">## Slides</span></div>
      <div class="ln blank"></div>
      <div class="ln">After editing, from <span class="inl">slides/</span>:</div>
      <div class="ln">1. <span class="inl">npm run build</span></div>
      <div class="ln">2. <span class="inl">npm run export -- --range &lt;N&gt;</span></div>
      <div class="ln">3. Read PNGs · check no clipping.</div>
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


<!--
OK so what does 'leave something behind' actually look like?
Start with the simplest one: CLAUDE.md.

This is the real CLAUDE.md from THIS deck — the repo you're looking at.
Look at the 'Slides' section. I didn't have to tell Claude how to build
this deck today. I told it ONCE in this file, yesterday.

This is the core idea: you aren't just giving the AI context, you are
TEACHING IT THE PROCESS. "After editing, run build, then export."
Because these three lines exist, the AI can finish the task without
asking me "how do I preview this?"

Auto-loaded: every time I open Claude Code in this repo, this file is
already in the context window. Before turn 1.
-->
