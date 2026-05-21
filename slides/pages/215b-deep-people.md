---
layout: default
title: deep vs shallow — people
class: slide-page deep-modules deep-people
---

<div class="eyebrow-top">同一把尺子 · the deletion test, applied to you</div>

<h1 class="headline">
  Are you <span class="rust">deep</span>,<br/>
  or <span class="rust">shallow</span>?
</h1>

<div class="cn">你够厚，还是单薄？同一把尺子，也量人。</div>

<div class="dm-compare">
  <div class="dm-side dm-shallow">
    <div class="dm-tag">shallow · the relay</div>
    <div class="dm-art" v-pre>
<pre>┌────────────┐
│   in  →    │
├────────────┤
│   →   out  │
└────────────┘</pre>
    </div>
    <div class="dm-line">
      passes the message through.<br/>
      both sides could talk directly.<br/>
      <span class="dm-dim">"the meeting could have been an email."</span>
    </div>
  </div>

  <div class="dm-side dm-deep">
    <div class="dm-tag">deep · earns the seat</div>
    <div class="dm-art" v-pre>
<pre>┌────────────┐
│   in       │
├────────────┤
│   filter   │
│   decide   │
│   translate│
│   protect  │
│       out  │
└────────────┘</pre>
    </div>
    <div class="dm-line">
      absorbs the noise. makes the call.<br/>
      both sides see a simpler interface.<br/>
      <span class="rust">this is the value you add.</span>
    </div>
  </div>
</div>

<div class="dm-deletion">
  <div class="dm-deletion-tag">same test, applied to you</div>
  <div class="dm-deletion-body">
    delete yourself from the chain &mdash; in your head.
    <span class="rust">do both sides slow down</span>, or <span class="rust">do they finally talk directly?</span><br/>
    <span class="dm-dim">slow down = you were earning your seat. talk directly = you were a tax.</span><br/>
    <span class="cn">把自己从链条上删掉。两边变慢了 —— 你在做事。两边直接对话 —— 你在收税。</span>
  </div>
</div>

<div class="dm-footnote">
  same rule. modules &middot; managers &middot; middleware &middot; meetings.
  <span class="rust">depth is what makes any of them worth keeping.</span><br/>
  <span class="cn">同一条规律。模块、经理、中间件、会议 —— 有深度才有存在的价值。</span>
</div>


<!--
Are you deep, or shallow? 你够厚，还是单薄？

If you sit between two people and just pass the message along — you are
a shallow module. The two sides could talk directly. Delete you, nothing
gets worse. "The meeting could have been an email" is exactly this.

But if you absorb the noise — filter what's important, make the call,
translate between two vocabularies, protect each side from the other's
complexity — both sides see a simpler interface because YOU are doing
work. That is the value you add.

Same heuristic. Imagine deleting yourself from the chain. Do both sides
slow down? You were earning your seat. Do they finally talk directly
and move faster? You were a tax. Pause on yourself sometimes.

Same rule. Modules. Managers. Middleware. Meetings. Depth is what makes
any of them worth keeping.
-->
