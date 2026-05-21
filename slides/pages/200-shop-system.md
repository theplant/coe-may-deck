---
layout: default
title: 推断 · what the system has to expose
class: slide-page shop-system
---

<div class="eyebrow-top">推断 · what we have to build</div>

<h1 class="headline">
  Every sentence the owner says<br/>
  needs <span class="rust">a tool</span> on the other side.
</h1>

<div class="cn">店主说的每一句话，背后都得有一个工具能接住。</div>

<div class="system-grid-wrap" v-pre>
<pre class="system-grid">  THE OWNER SAYS                        THE SYSTEM EXPOSES
  ──────────────                        ──────────────────
  <span class="said">"lower this price 15%"</span>                shop product price <span class="tool">set</span>
  <span class="said">"flash sale this weekend"</span>             shop promo <span class="tool">schedule</span>
  <span class="said">"why did Tuesday drop?"</span>               shop <span class="tool">analyze</span>
  <span class="said">"refund the wrong-size orders"</span>        shop order <span class="tool">refund</span> --batch
  <span class="said">"translate to Japanese"</span>               shop catalog <span class="tool">translate</span>
  <span class="said">"reorder the homepage"</span>                shop theme <span class="tool">edit</span>
  <span class="said">"VIPs get a 10% code"</span>                 shop <span class="tool">segment</span> + shop <span class="tool">promo</span>
  <span class="said">"roll back yesterday's price"</span>         shop <span class="tool">revert</span>  <span class="dim">— a commit</span>
</pre>
</div>

<div class="system-footnote">
  catalog as text · config as files · every change a commit<br/>
  GUI is just one client among many.<br/>
  <span class="cn">商品是文本，配置是文件，每次改动都是一次提交。GUI 只是众多客户端之一。</span>
</div>


<!--
Every sentence the owner says needs a tool on the other side.
If the system doesn't expose it, the AI can't reach it.

Lower this price. Flash sale this weekend. Why did Tuesday drop.
Refund the wrong-size orders.

set. create. analyze. refund. translate. edit. segment. revert.
These are TOOLS. Not menu items. Not modal dialogs. Tools the AI can call.

Notice this one. Rolling back a price change isn't a special feature.
It's the same git revert you already know. Because every change is already a commit.

Catalog as text. Config as files. Every change a commit.
GUI is just one client among many.
-->
