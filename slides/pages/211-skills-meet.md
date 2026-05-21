---
layout: default
title: skills — meet the repo
class: slide-page skills-meet
---

<div class="eyebrow-top">技能仓库 · skills for real engineers</div>

<h1 class="headline">
  Small. Composable.<br/>
  <span class="rust">Not vibe coding.</span>
</h1>

<div class="cn">小颗粒，可拼装。不是 vibe coding。</div>

<div class="skills-meet-grid">
  <div class="skills-meet-tree" v-pre>
<pre>mattpocock/skills/
└── skills/
    ├── engineering/    ← daily code work
    │   ├── grill-with-docs/
    │   ├── tdd/
    │   ├── diagnose/
    │   ├── improve-codebase-architecture/
    │   ├── to-prd/  ├── to-issues/
    │   ├── triage/  ├── zoom-out/
    │   └── prototype/
    ├── productivity/   ← non-code workflow
    │   ├── grill-me/
    │   ├── handoff/
    │   ├── caveman/
    │   └── write-a-skill/
    └── misc/           ← occasional</pre>
  </div>
  <div class="skills-meet-notes">
    <div class="sm-note">
      <span class="sm-label">against frameworks</span>
      not GSD, not BMAD, not Spec-Kit.<br/>
      <span class="rust">these own the process.</span><br/>
      <span class="cn">不替你做决定，只给你工具。</span>
    </div>
    <div class="sm-note">
      <span class="sm-label">composable</span>
      each skill = one <code>SKILL.md</code> + maybe<br/>
      a few reference docs. <span class="rust">read it. fork it.</span><br/>
      <span class="cn">每个技能就是一个 markdown 文件。</span>
    </div>
    <div class="sm-note">
      <span class="sm-label">model-agnostic</span>
      Claude Code, Codex, anything.<br/>
      <span class="cn">不绑模型。</span>
    </div>
    <div class="sm-note">
      <span class="sm-label">install</span>
      <code>npx skills@latest add mattpocock/skills</code><br/>
      <span class="cn">一行命令装好。</span>
    </div>
  </div>
</div>

<div class="skills-meet-footnote">
  <span class="rust">github.com/mattpocock/skills</span> &middot;
  Matt Pocock &middot; "Skills For Real Engineers".<br/>
  <span class="cn">「给真正工程师用的技能集」— 作者 Matt Pocock。</span>
</div>


<!--
Before we close — one more thing. The skills idea is real, and
someone has shipped a public library of them. Meet mattpocock/skills.

Engineering bucket — daily code work. Productivity — non-code workflow.
Each folder is one skill. One markdown file plus maybe a few reference docs.

Matt is explicit: this is NOT a framework. Not GSD, not BMAD, not Spec-Kit.
Those own the process. These give you tools and stay out of your way.

Each skill is a markdown file. You read it. You fork it. You make it yours.

And it's one command to install. We'll spend the next four slides looking at
the four failure modes these skills fix.
-->
