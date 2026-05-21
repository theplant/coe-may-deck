---
layout: default
title: 所以 · the platform we build
class: slide-page platform-reframe
---

<div class="eyebrow-top">所以 · the reframe</div>

<h1 class="headline">
  The admin GUI is <span class="muted">no longer the product.</span><br/>
  The <span class="rust">toolbox</span> is.
</h1>

<div class="cn">后台不再是产品。工具箱才是。</div>

<div class="reframe-table-wrap" v-pre>
<pre class="reframe-table">  YESTERDAY'S PLATFORM                  TOMORROW'S PLATFORM
  ────────────────────                  ───────────────────
  product = an admin GUI                product = a toolbox of CLIs
  catalog as DB rows                    catalog as diff-able text
  changes = form submissions            changes = commits with reasons
  ops convo in Slack                    ops reasoning in <span class="path">.git/log</span>
  memory = tribal knowledge             memory = <span class="path">CLAUDE.md</span> per shop
  workflow = SOP in Confluence          workflow = <span class="path">.claude/skills/*.md</span>
  CLI driven by <span class="dim">— nobody —</span>             CLI driven by the owner <span class="rust">+ AI</span>
</pre>
</div>

<div class="reframe-footnote">
  <span class="rust">we don't build a better admin panel.</span> we build a shop our customers' AI can drive.<br/>
  <span class="cn">我们要做的，不是更好的后台，而是 AI 也能驾驭的店铺。</span>
</div>


<!--
So — the admin GUI is no longer the product. The toolbox is.

Product: we used to ship an admin panel. We're going to ship a toolbox.

Catalog: rows in a DB → diff-able text. DB becomes a cache.

Ops convo: the reason a price changed used to live in a Slack thread.
Now it lives in .git/log — forever, searchable, blame-able.

Who drives CLI: yesterday nobody. Tomorrow: the owner and their AI.
That row is the whole talk.

We don't build a better admin panel. We build a shop our customers' AI can drive.
我们要做的，不是更好的后台，是 AI 也能驾驭的店铺。
-->
