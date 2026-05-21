---
layout: default
title: shared language — grill-with-docs
class: slide-page shared-language
---

<div class="eyebrow-top">共同语言 · /grill-with-docs · /grill-me</div>

<h1 class="headline">
  One word. <span class="rust">One paragraph saved.</span>
</h1>

<div class="cn">教会 AI 一个词，省下一段话。下一次开始，就不必再解释。</div>

<div class="lang-compare-wrap">
  <div class="lang-card lang-before">
    <div class="lang-tag">before</div>
    <div class="lang-quote">
      "There's a spike in carts<br/>
      with items in them, untouched<br/>
      for over an hour &mdash; not checked<br/>
      out, not cleared."
    </div>
    <div class="lang-meter">21 words · re-explained every session</div>
  </div>
  <div class="lang-arrow">→</div>
  <div class="lang-card lang-after">
    <div class="lang-tag">after</div>
    <div class="lang-quote">
      "There's a spike in<br/>
      <span class="rust">ghost carts.</span>"
    </div>
    <div class="lang-meter">5 words · written once, in <span class="path">CONTEXT.md</span></div>
  </div>
</div>

<div class="lang-glossary" v-pre>
<pre class="lang-glossary-pre">  <span class="g-file">CONTEXT.md</span>  <span class="g-dim">— a glossary, not a spec</span>
&nbsp;
  <span class="g-term">Ghost cart</span>
  A <span class="g-term-inline">Cart</span> with items in it, untouched by the
  <span class="g-term-inline">Customer</span> for &gt; 60 min. Not checked out,
  not cleared. <span class="g-avoid">Avoid</span>: abandoned cart, stale cart.
&nbsp;
  <span class="g-term">Issue tracker</span>
  The tool hosting a repo's issues — GitHub, Linear,
  local <span class="path">.scratch/</span> files. <span class="g-avoid">Avoid</span>: backlog, host.</pre>
</div>

<div class="lang-skills">
  <span class="lang-skills-tag">skills</span>
  <code>/grill-with-docs</code> interviews you · writes <code>CONTEXT.md</code> inline ·
  drops <code>docs/adr/*.md</code> when a decision is load-bearing.
  <code>/grill-me</code> is the same, without the file side-effects.
</div>


<!--
Failure two — twenty words where one will do. The fix is a
shared language. A glossary.

"There's a spike in carts with items in them, untouched for over an
hour — not checked out, not cleared." Twenty-one words. And the
agent will re-explain it every session.

"There's a spike in ghost carts." Five words. Written ONCE, in
CONTEXT.md. Every session after that, agent and human both speak
the same word.

A term has a definition AND an 'Avoid' list — rejected synonyms.
'Avoid: abandoned cart' is the discipline: an abandoned cart is when
the customer has left for good. A ghost cart is still warm —
different thing, different code path.

CONTEXT.md is a GLOSSARY, not a spec. No implementation details.

/grill-with-docs runs the interview AND writes the glossary inline as
decisions crystallize. /grill-me is the same conversation without the
file artifacts — for non-code work.
-->
