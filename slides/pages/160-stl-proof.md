---
layout: default
title: proof — OpenSCAD to STL
class: slide-page stl-proof
---

<div class="eyebrow-top">证据 · OpenSCAD → STL</div>

<h1 class="headline">
  AI did not <span class="muted">draw</span> a 3D model.<br/>
  It wrote <span class="rust">text</span> for one.
</h1>

<div class="cn">AI 没有画一个 3D 模型。它写了一段可读的设计稿。</div>

<div class="stl-proof-grid">
<div class="stl-code-card">
<div class="code-line dim">// phone-stand.scad</div>
<div class="code-line">module phone_stand() {</div>
<div class="code-line indent">rounded_box([86, 76, 6], 5);</div>
<div class="code-gap"></div>
<div class="code-line indent">translate([11, 10, 6])</div>
<div class="code-line indent2">rounded_box([64, 9, 14], 2);</div>
<div class="code-gap"></div>
<div class="code-line indent">slanted_bar(11, 52, 6, 31, 88,</div>
<div class="code-line indent3">64, 7, 5);</div>
<div class="code-line">}</div>
</div>

<div class="stl-pipeline">
<div class="terminal-card">
<div class="term-line"><span class="prompt">❯</span> claude "make a phone stand"</div>
<div class="term-line out">writes phone-stand.scad</div>
<div class="term-gap"></div>
<div class="term-line"><span class="prompt">❯</span> openscad -o phone-stand.stl</div>
<div class="term-line indent">phone-stand.scad</div>
<div class="term-line out">binary STL generated</div>
</div>

<div class="stl-preview">
<img :src="'demos/phone-stand.png'" alt="perspective view" />
<img :src="'demos/phone-stand-front.png'" alt="front view" />
<img :src="'demos/phone-stand-side.png'" alt="side view" />
<img :src="'demos/phone-stand-top.png'" alt="top view" />
<div class="preview-caption">phone-stand.stl · 4 views from one source</div>
</div>
</div>
</div>

<div class="stl-footnote">
  <span class="rust">AI writes the recipe.</span> OpenSCAD builds the printable file.
  <span class="cn">AI 写配方，CLI 生成机器能用的文件。</span>
</div>


<!--
OPENSCAD → STL PROOF — make the CLI claim concrete with a complex file
format. Now lives AFTER the CLI mechanism slide, so it functions as a
worked example: "you just heard the abstract claim; here it is, real."

The audience does not need to understand CAD; they need to see that a
binary 3D-printing artifact can start as readable text, and that the
SAME source produces multiple ready-to-print views.

Beat 1: ground the CLI claim with one example.
  "Let me make that CLI claim concrete. Take one row from the artifacts
   slide: .stl. Watch how AI reaches it."
Beat 2: read the headline slowly, both languages.
  "AI did not draw a 3D model. It wrote text for one."
Beat 3: point left at the code.
  "This is the source file: dimensions, lip, slant, supports. Reviewable
   text. It can be diffed. It can be committed."
Beat 4: point right at the multi-view grid.
  "Then the CLI compiles it: openscad in, STL out. Four views, same
   source, one printable file. No mouse touched it. The printer never
   saw the prompt — it saw the artifact."
Beat 5: pause on the renders, quiet.
  "Same source. Four views. One STL. So..."
Transitions to the thought experiment.
-->
