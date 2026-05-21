---
layout: default
title: 想象 · the shop owner you sell to
class: slide-page shop-owner
---

<div class="eyebrow-top">想象 · our customer · the shop owner</div>

<h1 class="headline">
  Today they click <span class="muted">47 screens.</span><br/>
  Soon they say <span class="rust">one sentence.</span>
</h1>

<div class="cn">今天点 47 个屏幕。很快只说一句话。</div>

<div class="shop-owner-terminal" v-pre>
<pre class="shop-owner-term">~/acme-shop                                <span class="dim">shop-owner@mac</span>
<span class="prompt">❯</span> shop <span class="quote">"summer collection 15% off · Fri→Sun · home banner"</span>

  reading    catalog.yml · promos/ · theme/home.tsx
  matched    247 SKUs            <span class="dim">(tag: summer)</span>
  drafted    promos/2027-06-04-summer-flash.yml
  scheduled  Fri 00:00 → Sun 23:59 JST
  preview    dev.acme-shop.com   <span class="dim">(banner + tagged prices)</span>
  commit     <span class="quote">"summer flash 15% · 247 SKUs · req by owner"</span>

  apply and ship?  <span class="rust">[y/n]</span> <span class="caret">_</span>
</pre>
</div>

<div class="shop-owner-footnote">
  no menus. no wizard. a sentence and a confirmation.<br/>
  <span class="cn">没有菜单，没有向导，一句话加一个确认。</span>
</div>


<!--
想象 — the future shop owner.
The thought-experiment slide ends with silence. Use that silence.
Then: "So — what does any of this mean for us? We sell e-commerce systems.
Picture the shop owner we'll be selling to next year."
Beat 1: read headline slow. EN then CN.
Beat 2: walk the terminal mockup line by line.
  "One sentence. The system reads the catalog, matches 247 SKUs,
   drafts a promo file, schedules it, previews it, writes the commit message.
   The owner says y. Ship."
Beat 3: footnote, slow:
  "No menus. No wizard. A sentence and a confirmation."
  Pause. Let it land. Then: "OK — so what does THAT mean we have to build?"
Transitions to 推断.
-->
