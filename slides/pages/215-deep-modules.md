---
layout: default
title: deep vs shallow — Ousterhout
class: slide-page deep-modules
---

<div class="eyebrow-top">厚 vs 薄 · Ousterhout · A Philosophy of Software Design</div>

<h1 class="headline">
  Deep module: <span class="rust">small interface.</span><br/>
  <span class="rust">Deep implementation.</span>
</h1>

<div class="dm-principle">
  hide the <span class="rust">most complexity</span> behind the <span class="rust">simplest interface.</span>
  <span class="cn">用最简单的接口，隐藏最大的复杂度。</span>
</div>

<div class="dm-compare">
  <div class="dm-side dm-shallow">
    <div class="dm-tag">shallow</div>
    <div class="dm-art" v-pre>
<pre>┌────────────┐
│  interface │  ← about as wide as
├────────────┤    the implementation
│    impl    │
└────────────┘</pre>
    </div>
    <div class="dm-line">
      callers pay the cost of the interface,<br/>
      get almost nothing in return.<br/>
      <span class="dm-dim">a pass-through. a wrapper. a thin slice.</span>
    </div>
  </div>

  <div class="dm-side dm-deep">
    <div class="dm-tag">deep</div>
    <div class="dm-art" v-pre>
<pre>┌────────────┐
│  interface │  ← narrow
├────────────┤
│   impl     │  ← does a lot
│   impl     │     behind it
│   impl     │
└────────────┘</pre>
    </div>
    <div class="dm-line">
      callers learn a small surface,<br/>
      get a lot of behavior.<br/>
      <span class="rust">leverage. locality. a real seam.</span>
    </div>
  </div>
</div>

<div class="dm-deletion">
  <div class="dm-deletion-tag">the deletion test</div>
  <div class="dm-deletion-body">
    delete the module &mdash; in your head.
    <span class="rust">does complexity vanish</span>, or <span class="rust">reappear across N callers?</span><br/>
    <span class="dm-dim">vanish = it was a pass-through. reappear = it was earning its keep.</span><br/>
    <span class="cn">删掉这个模块，复杂度消失了？还是散到 N 个调用点？</span>
  </div>
</div>

<div class="dm-footnote">
  this is the lens <code>/improve-codebase-architecture</code> uses.
  it walks the repo looking for <span class="rust">shallow modules to deepen.</span><br/>
  <span class="cn">/improve-codebase-architecture 用的就是这把尺子。</span>
</div>


<!--
Deep module: small interface, deep implementation.
厚模块：接口窄，内里厚。

Shallow: the interface is about as wide as the implementation. A
wrapper. A pass-through. Callers pay the cost of learning the
interface and get almost nothing in return.

Deep: narrow interface, lots of behavior hiding behind it. Callers
learn a small surface, get a lot of leverage. AND the change
stays local — bugs and edits concentrate in one place.

Here's the heuristic Matt uses. Imagine deleting the module. If
complexity VANISHES, it was a pass-through — delete it. If complexity
REAPPEARS across N callers, it was earning its keep — keep it,
maybe deepen it.

/improve-codebase-architecture walks the codebase with exactly this
lens. It writes an HTML report — before/after diagrams of every
candidate. Run it once a week, take one suggestion.
-->
