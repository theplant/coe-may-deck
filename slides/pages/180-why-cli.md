---
layout: default
title: why CLI — the mechanical principle
class: slide-page why-cli
---

<div class="eyebrow-top">the mechanism · 原理</div>

<h1 class="headline">
  LLMs output <span class="rust">text.</span><br/>
  CLIs speak <span class="rust">text.</span>
</h1>

<div class="cn">LLM 的输出是 token（文字）。CLI 的接口也是文字。这是最直接的匹配。</div>

<div class="why-rule"></div>

<div class="why-closer">
  GUIs need cursor, pixel, visual layout —<br/>
  things LLMs can't see. <span class="rust">CLIs need none of that.</span><br/>
  <span class="cn">GUI 是人类专用的翻译层。AI 不需要翻译。</span>
</div>


<!--
THE MECHANISM — why CLI is the AI-native interface.

Not "CLI is cooler" — it's a mechanical fit. LLMs produce tokens (text).
CLIs accept stdin (text) and return stdout (text). Perfect match.
GUIs require visual perception: cursor position, pixel reading, menu
navigation, layout parsing. LLMs have none of those affordances.

Beat 1: "Let me explain WHY — not as a preference, as a mechanism."
Beat 2: read the headline slow. "LLMs output text. CLIs speak text."
  "This isn't a coincidence. It's the same data type."
Beat 3: the closer. "GUIs need cursor, pixel, visual layout — things
  LLMs literally cannot see. CLIs need none of that."
Beat 4: CN. "GUI 是人类专用的翻译层。AI 不需要翻译。"
Beat 5: quick cut to next → the shop owner is who we're building for.
-->
