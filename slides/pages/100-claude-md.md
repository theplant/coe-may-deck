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
