---
layout: default
title: decoder — chat vs agent
class: slide-page decoder
---

<div class="eyebrow-top">decoder · 对照表</div>

<h1 class="headline">
  Assistants answer questions.<br/>
  Agents <span class="rust">complete tasks.</span>
</h1>

<div class="cn">助手回答问题。智能体完成任务。</div>

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


<!--
One more thing before any code.
Assistants answer questions. Agents complete tasks.

Yes, minutes. Because it's actually doing the work.

Hold this picture. I'll come back to it twice.
-->
