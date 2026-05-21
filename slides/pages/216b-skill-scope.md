---
layout: default
title: skill scope — global vs project
class: slide-page skill-scope
---

<div class="eyebrow-top">作用域 · global vs project · where skills live</div>

<h1 class="headline">
  Two places. <span class="rust">Two purposes.</span>
</h1>

<div class="cn">技能放两个地方，各干各的活。</div>

<div class="ss-grid">
  <div class="ss-side ss-global">
    <div class="ss-tag">global</div>
    <div class="ss-path" v-pre><pre>~/.claude/skills/</pre></div>
    <div class="ss-line">
      your <span class="rust">personal toolkit.</span><br/>
      follows you into every repo.<br/>
      <span class="ss-dim">install once. use everywhere.</span>
    </div>
    <div class="ss-examples">
      <div class="ss-ex"><span class="tool">/handoff</span> <span class="ss-dim">— end a session</span></div>
      <div class="ss-ex"><span class="tool">/grill-me</span> <span class="ss-dim">— stress-test a plan</span></div>
      <div class="ss-ex"><span class="tool">/write-a-skill</span> <span class="ss-dim">— write the next one</span></div>
      <div class="ss-ex"><span class="tool">/caveman</span> <span class="ss-dim">— compress tokens</span></div>
    </div>
    <div class="ss-why">
      <span class="ss-why-label">good for</span>
      habits that travel with <span class="rust">you</span>, not the codebase.<br/>
      <span class="cn">跟着人走的习惯。</span>
    </div>
  </div>

  <div class="ss-side ss-project">
    <div class="ss-tag">project</div>
    <div class="ss-path" v-pre><pre>&lt;repo&gt;/.claude/skills/</pre></div>
    <div class="ss-line">
      the team's <span class="rust">shared muscle.</span><br/>
      checked into git, reviewed in PRs.<br/>
      <span class="ss-dim">clone the repo → get the skills.</span>
    </div>
    <div class="ss-examples">
      <div class="ss-ex"><span class="tool">/deploy-staging</span> <span class="ss-dim">— our exact steps</span></div>
      <div class="ss-ex"><span class="tool">/run-migrations</span> <span class="ss-dim">— our DB conventions</span></div>
      <div class="ss-ex"><span class="tool">/pr-checklist</span> <span class="ss-dim">— our review bar</span></div>
      <div class="ss-ex"><span class="tool">/seed-fixtures</span> <span class="ss-dim">— our test data</span></div>
    </div>
    <div class="ss-why">
      <span class="ss-why-label">good for</span>
      knowledge that belongs to the <span class="rust">repo</span>, not the person.<br/>
      <span class="cn">跟着仓库走的知识。</span>
    </div>
  </div>
</div>

<div class="ss-callout">
  rule of thumb: <span class="rust">project skills keep this repo's context WITH the repo</span> —
  switch projects, none of it follows you. come back, it's all here.
  global skills are habits that <span class="rust">follow you.</span><br/>
  <span class="cn">项目技能把仓库的上下文留在仓库里 —— 切项目不会带走，回来还在。全局技能跟着你走。</span>
</div>


<!--
Skills live in two places. Both matter — for different reasons.

Global: ~/.claude/skills/ — your personal toolkit. Install once, every
repo you open inherits it. /handoff, /grill-me, /write-a-skill — these
follow ME across projects. Habits that travel with the person.
全局技能跟着人走 —— /handoff /grill-me /write-a-skill 这些。

Project: <repo>/.claude/skills/ — the team's shared muscle. Checked
into git. Reviewed in PRs. Clone the repo, you get the skills.
/deploy-staging is exactly OUR deploy. /run-migrations is OUR DB
conventions.
项目技能跟着仓库走 —— 部署步骤、迁移脚本、PR 检查表。

Here's the key part — project skills KEEP CONTEXT WITH THE REPO.
When I switch to another project, none of this repo's clutter follows
me. When I come back, it's all here, waiting. The context doesn't
live in my head, doesn't pollute other projects — it lives where it's
used.
关键在这 —— 项目技能把上下文留在仓库里。切项目不会带走，
回来还在。上下文不在脑子里，不会污染别的项目，只在该用的地方。

Most teams under-invest in the project side. That's where the
leverage is.
-->
