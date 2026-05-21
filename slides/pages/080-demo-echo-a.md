---
layout: default
title: demo A echo — one real commit
class: slide-page demo-echo
---

<div class="eyebrow-top">echo · 2 months ago · sunfmin/system-monitor@f026554</div>

<div class="commit-block" v-pre>
  <div class="commit-meta">
    <span class="commit-hash">commit f026554</span>
    <span class="commit-author">Felix Sun &lt;sunfmin@gmail.com&gt;</span>
    <span class="commit-date">2026-03-24</span>
  </div>

  <div class="commit-title">Single-process streaming transcription with WebSocket push and sentence segmentation</div>

  <pre class="commit-body">Major rewrite of the transcription pipeline:

- New stream-audio-whisper.swift: single Swift binary combining
  ScreenCaptureKit audio capture + whisper.cpp C API inference +
  WebSocket server (Network.framework)
- No more multi-process pipeline (capture-audio | python | whisper-cli)
- Model loaded once at startup, stays warm in GPU memory (~0.1s load)
- Two-tier transcription: 2s partial chunks for streaming,
  20s re-transcription for complete sentences with punctuation
- initial_prompt guides Chinese punctuation output
- Sentence boundary detection with carryover: incomplete sentences
  carried to next round using precise whisper segment timestamps
- WebSocket (port 8421) pushes partial/final/clear_partial messages
- Dashboard updated: WebSocket primary, HTTP polling as fallback</pre>

  <div class="commit-coauthor">Co-Authored-By: Claude Opus 4.6 (1M context) &lt;noreply@anthropic.com&gt;</div>
</div>

<div class="echo-footnote">
  <span class="rust">↑</span> two months old. <span class="cm-fn">git blame</span> it, revert it, learn from it. <span class="cn">— 永远在那里。</span>
</div>

<!--
OK — switching back. What did we just look at?
A single Swift binary, ScreenCaptureKit + whisper.cpp + WebSocket,
two months ago. And the AI wrote this with me.

The reasoning is right here — auditable, blame-able, forever.
-->
