---
layout: default
title: artifacts — every format
class: slide-page artifacts
---

<div class="eyebrow-top">成果 · text it edits · binary it builds</div>

<div class="artifacts-leadin">
  AI can't open a .pptx. It can't directly edit a .pdf.<br/>
  <span class="cn">AI 打不开 .pptx，也改不动 .pdf。</span>
</div>

<h1 class="headline">
  But the <span class="rust">recipe is text</span> —<br/>
  and the same loop writes recipes for any file.
</h1>

<div class="cn">可是配方是文本。同一个循环，也能写出任何文件的配方。</div>

<div class="artifacts-grid-wrap">
<pre class="artifacts-grid">  AI EDITS DIRECTLY · text          TOOLS BUILD · binary
  ──────────                        ──────────
  this very deck <span class="fmt">slides.md</span>          a slide deck <span class="fmt">.pptx</span>
  agent memory <span class="fmt">CLAUDE.md</span>            a Word doc <span class="fmt">.docx</span>
  source code <span class="fmt">.ts</span> <span class="fmt">.py</span>                 a quarterly report <span class="fmt">.pdf</span>
  an OpenSCAD recipe <span class="fmt">.scad</span>          an XLSX with live formulas <span class="fmt">.xlsx</span>
  config &amp; shell <span class="fmt">.yml</span> <span class="fmt">.sh</span>            a 3D-printable phone stand <span class="fmt">.stl</span></pre>
</div>

<div class="artifacts-footnote">
  <span class="rust">AI writes the recipe.</span> The tool builds the file.<br/>
  <span class="cn">AI 写配方，工具生成文件。</span>
</div>


<!--
AI can't open a .pptx. It can't directly edit a .pdf. That's true.

But the recipe is text — and the same loop writes recipes for any file.

Things AI edits directly: this very deck — slides.md you're looking at.
CLAUDE.md — its own memory. Source code. An OpenSCAD recipe. Configs and shell.
All plain text. AI is literally the editor.

Things AI cannot open or edit: a .pptx, a Word doc, a PDF, an XLSX,
a 3D-printable .stl. Binary files. But python-pptx, python-docx, weasyprint,
openpyxl, OpenSCAD — those are tools that take TEXT in and emit BINARY out.
AI writes the recipe. The tool builds the file.

AI writes the recipe. The tool builds the file.

And here's why all of that works.
-->
