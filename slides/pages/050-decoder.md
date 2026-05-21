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
DECODER — the audience's reference card for the next 40 minutes.
Beat 1: "One more thing before any code.
Assistants answer questions. Agents complete tasks."
(Pause. Read CN aloud.)
Beat 2: walk DOWN the five rows. Don't explain each one — the audience can read mono fonts.
Beat 3: on the SPEED row, small pause — "yes, minutes. Because it's actually doing the work."
Beat 4: "Hold this picture. I'll come back to it twice."
Transitions into Block A — git log / history.
-->
