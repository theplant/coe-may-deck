---
layout: default
title: feedback loops — tdd + diagnose
class: slide-page feedback-loops
---

<div class="eyebrow-top">反馈回路 · /tdd · /diagnose</div>

<h1 class="headline">
  Build the loop. <span class="rust">AI runs the laps.</span>
</h1>

<div class="cn">你搭回路，AI 一圈一圈跑。</div>

<div class="loops-two-col">
  <div class="loops-card">
    <div class="loops-card-tag">/tdd · vertical, not horizontal</div>
    <div class="loops-card-pre" v-pre>
<pre>  <span class="loops-wrong">WRONG (horizontal)</span>  <span class="loops-dim">— all tests first, then all impl</span>
  RED   ✗ test  listGhostCarts()
        ✗ test  sendReminder(cart)     <span class="loops-dim">← sits idle</span>
  GREEN ✓ impl  listGhostCarts
        ✗ impl  sendReminder needs an email service,
                 not just the cart object
  <span class="loops-dim">→ test 2 was guessing. rewrite.</span>
&nbsp;
  <span class="loops-right">RIGHT (vertical)</span>  <span class="loops-dim">— finish one interface, then start the next</span>
  <span class="loops-num">①</span> listGhostCarts
       write test    ✗ RED
       write impl  → run test    ✓ GREEN     <span class="loops-dim">shipped</span>
  <span class="loops-num">②</span> sendReminder
       write test    ✗ RED
       write impl  → run test    ✓ GREEN     <span class="loops-dim">shipped</span>
  <span class="loops-dim">→ no test ever sits there without its impl.</span></pre>
    </div>
    <div class="loops-card-note">
      one test &mdash; one implementation &mdash; repeat.<br/>
      <span class="cn">一次一片，纵向切。</span>
    </div>
  </div>

  <div class="loops-card">
    <div class="loops-card-tag">/diagnose · build a loop first</div>
    <div class="loops-card-pre" v-pre>
<pre>  <span class="loops-dim">phase 1 ladder &mdash; pick the cheapest that works</span>
  <span class="loops-num">1</span> failing test at the right seam
  <span class="loops-num">2</span> curl / HTTP script
  <span class="loops-num">3</span> CLI fixture &mdash; diff vs known-good
  <span class="loops-num">4</span> headless browser script
  <span class="loops-num">5</span> replay a captured trace
  <span class="loops-num">6</span> throwaway harness
  <span class="loops-num">7</span> property / fuzz loop
  <span class="loops-num">8</span> bisection harness (<span class="loops-mono">git bisect run</span>)
  <span class="loops-num">9</span> differential: old vs new
  <span class="loops-num">10</span> HITL bash &mdash; last resort</pre>
    </div>
    <div class="loops-card-note">
      then: reproduce &middot; <span class="rust">3-5 falsifiable hypotheses</span> &middot; instrument &middot; fix &middot; regression-test.<br/>
      <span class="cn">先把回路搭好，再开始猜。</span>
    </div>
  </div>
</div>

<div class="loops-footnote">
  if you can't <span class="rust">run it</span>, you can't see it. reading code is just guessing.<br/>
  <span class="cn">不能跑就看不见 —— 看代码是在猜。</span>
</div>


<!--
Failure three — the code doesn't work. The fix isn't a smarter
agent. It's a tighter loop.

Imagine you're building two interfaces: listGhostCarts() and
sendReminder(cart).

LEFT (horizontal) — write tests for BOTH before any code. Then
write impl for BOTH. interfaceA's test passes. interfaceB's test
fails — turns out sendReminder needs an email service, not just
the cart you imagined. Test 2 was guessing. You rewrite it. The
whole second test sat idle for a day, testing imagined behavior.

RIGHT (vertical) — finish ONE interface end-to-end before touching
the next. Step ① — listGhostCarts: write its test, write its impl,
run the test, see green. Shipped. THEN step ② — sendReminder:
write its test (and now you know what cart actually looks like
because ① is real), write the impl, run, green. Shipped.

The rule is brutally simple: no test ever sits there without its
implementation. Each interface lands fully before the next starts.

When something's broken, Matt has a 10-step ladder. Start with #1, the
failing test. Drop down the ladder until you find the cheapest loop
that actually triggers the bug. HITL bash at #10 is last resort.

Once you have the loop: reproduce, three to five falsifiable
hypotheses BEFORE testing any of them, instrument, fix, regression.

If you can't run it, you can't see it. Reading code is just guessing.
-->
