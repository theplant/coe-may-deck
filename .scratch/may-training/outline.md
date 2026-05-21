# AI Escapes the Chatbox / AI 走出聊天框

> Subtitle: From chat sessions to versioned, team-shared capabilities

**Status**: rescoped 2026-05-21. Thematic blocks replace named cases (slackwiki / md-to-gdoc-tab / system-monitor). Two live demos only. See *Appendix · what was cut and why* at the bottom.

## Audience & format

- **Audience**: mixed engineers + non-engineers, bilingual (CN + EN).
- **Format**: 40–60 min live talk, two live demos.
- **Slide language**: English-primary; CN gloss on key concepts. Code / terminal / git stays English-only. Spoken delivery CN/EN free.

## Main thesis

> **AI moves out of the chatbox into your working environment.**
> （AI 从聊天框走出来，进入你平时工作的环境）

Everything else is evidence for this.

## Thematic blocks (the spine)

Three blocks. Each ends in a *feeling*, not an artifact:

| Block | Audience feels | Earned by | Demo |
|---|---|---|---|
| **A · History** | "Six months from now I can still read what the AI was thinking." | git log of a real Claude-built repo + one full commit body | Demo A (live) |
| **B · Files-as-memory** | "The AI doesn't restart from zero. My repo is its memory." | `CLAUDE.md` + a real `.scratch/` or `docs/adr/` snippet, inline | (none — static) |
| **C · Capabilities** | "A workflow is a file. I can ship it to my team like code." | `SKILL.md` inline, then live-edit *this deck* in front of the room | Demo B (live, meta) |

The 8 axes (lives-where-you-work, files-as-memory, git-as-history, CLI ecosystem, capabilities-as-artifacts, real environment, composable+async, autonomy horizon) surface *inside* the three blocks. No enumeration slide.

## Locked framings (phrases that recur on slides + in the talk)

- **F1** · "Assistants answer questions. Agents **complete tasks**." → Decoder slide headline (slide 5). Speaker repeats once before Demo A.
- **F2** · "Every chat is a clean slate. Every repo is not." → Block B opener (slide 9).
- **F3** · The **agentic REPL** — *reason → tool → observe → continue*. → Block A opener (slide 6), rendered visually as a loop.
- **F4** · The **lethal trifecta** (Willison) — *private data + untrusted content + external write*. → Q&A planted answer only, NOT a slide.

## Running order (23 slides + verbal Q&A · ~52 min)

| # | Slide | Block | Status | ≈ min |
|---|---|---|---|---|
| 1 | Title | Opening | ✓ | 1 |
| 2 | Setup — "chatbox is a window" | Opening | ✓ | 1 |
| 3 | Contrast — chat window vs terminal | Opening | ✓ | 2 |
| 4 | Principle — "AI works with text" | Opening | ✓ | 2 |
| 5 | **Decoder — chat vs agent** (F1) | Opening | ✓ | 2 |
| 6 | Block A opener — the **agentic REPL** (F3) | History | ✓ | 2 |
| 7 | Demo A cue — git log reveal | History | ✓ | 1 |
| 8 | Demo A echo — `f026554` | History | ✓ | 3 (+ demo) |
| 9 | Block B opener — **"clean slate vs repo"** (F2) | Memory | ✓ | 2 |
| 10 | `CLAUDE.md` inline (real) | Memory | ✓ | 3 |
| 11 | **Three layers of memory** — context · files · git | Memory | ✓ | 3 |
| 12 | Block C opener — "a workflow is a file" | Capabilities | to build | 2 |
| 13 | `SKILL.md` inline (real) | Capabilities | to build | 4 |
| 14 | Demo B cue — meta live-edit | Capabilities | ✓ | 1 |
| 15 | Demo B echo — fresh commit | Capabilities | ✓ | 6 (+ demo) |
| 16 | **Artifacts — every format** (divergence) | Closing | ✓ | 3 |
| 17 | **CLI — the door** (mechanism) | Closing | ✓ | 2 |
| 18 | **Proof — OpenSCAD → STL** (concrete worked example) | Closing | ✓ | 2 |
| 19 | **Thought — GUIs are for humans** (reframe) | Closing | ✓ | 1 |
| 20 | **想象 — the shop owner you sell to** (e-comm reframe) | Closing | ✓ | 1.5 |
| 21 | **推断 — what the system has to expose** (e-comm reframe) | Closing | ✓ | 1.5 |
| 22 | **所以 — the platform we build** (e-comm reframe) | Closing | ✓ | 2 |
| 23 | CTA — install / clone / try this week | Closing | to build | 2 |

Total ≈ 52 min, leaving ~3–8 min slack for Q&A. If overrun, the most cuttable rows are slide 11 (three layers — the conceptual frame, can be told verbally over slide 10) or `所以` (22).

### Block B · what changed (2026-05-21)

Slide 11 was originally scoped as ".scratch/ or docs/adr/ as recall" — a concrete artifact slide pairing with the CLAUDE.md inline. It was promoted to **"three layers of memory"** instead: an ASCII architecture diagram (context window / local files / git history) with the workbench · bookshelf · archive metaphor. Rationale: the conceptual frame ties Block B to the e-commerce reframe trio later (slot 21 — owner ↔ tool ↔ git) and directly answers the discussion "本地文件和 git 和 context 是怎么配合怎么相关的". A concrete `.scratch/` or `docs/adr/` artifact can be added later as slide 11.5 if Block B feels too abstract in rehearsal — but rehearsal-first.

### Closing arc · zoom in → out → deeper → concrete → reframe → ours → home

The last nine slides pulse the audience's focus across the full zoom range — and the final three land the abstraction in our specific business (e-commerce platform):

- **15 · Demo B echo** — zoom IN: Claude just edited *this very deck*.
- **16 · Artifacts** — zoom OUT: *the same loop also writes file formats you didn't think AI could touch.* Concession line acknowledges the markdown-laundry stuff (status updates, bedtime stories), then a two-column grid contrasts **EVERYDAY** (a slide deck, a Mac/iOS app, a personal website, a quarterly report PDF, an XLSX with live formulas) against **UNEXPECTED** (`.stl`, `.kicad_sch`, `.gcode`, `.mp3`, `.mp4`). Closing principle: *AI writes the text. The tool builds the file.*
- **17 · CLI is the door** — zoom DEEPER: explains *why* artifacts in any format are reachable. *AI lives in text. CLIs talk back. GUIs don't.* Comparison grid (CLI vs GUI: exit codes vs dialogs, pipes vs walls, `--help` vs YouTube, headless vs display-bound, stable-flags vs redesigned-yearly). Closing line: *every artifact on the last slide was built by a CLI tool.*
- **18 · OpenSCAD → STL proof** — zoom CONCRETE: takes one row from the artifacts slide (`.stl`) and demonstrates the CLI claim from slide 17 with a worked example. AI writes `phone-stand.scad`, `openscad` CLI emits `phone-stand.stl`, and a 2×2 grid of renders (perspective + front + side + top) proves the same source produces a real 3D object. This makes "AI writes the text; the tool builds the file" observable instead of abstract.
- **19 · Thought experiment** — zoom REFRAME: *if only AI used computers, GUIs wouldn't exist.* The philosophical reveal — GUIs are a HUMAN accessibility layer, not a fundamental computing necessity. CLIs are how computers actually talk. Designed for a long pause (~5 sec of silence after the headline). Lots of whitespace. The audience does the work.
- **20 · 想象 (shop owner)** — zoom OURS · vivid: lands the abstract CLI-future on our customer. *Today they click 47 screens. Soon they say one sentence.* Terminal mockup of a shop owner saying `shop "summer collection 15% off · Fri→Sun · home banner"` — and the system reads the catalog, matches 247 SKUs, drafts a promo file, schedules it, previews it, writes the commit message. *No menus. No wizard. A sentence and a confirmation.*
- **21 · 推断 (system exposes)** — zoom OURS · mechanism: from the owner's one sentence, infer what the system must look like. *Every sentence the owner says needs a tool on the other side.* Two-column grid maps owner phrases (`"lower this price 15%"`, `"flash sale this weekend"`, …) to CLI tools (`shop product price set`, `shop promo schedule`, …). Last row: `"roll back yesterday's price"` → `shop revert — a commit`. *Catalog as text. Config as files. Every change a commit. GUI is just one client among many.*
- **22 · 所以 (platform reframe)** — zoom OURS · strategy: the company-level reframe. *The admin GUI is no longer the product. The toolbox is.* Two-column table maps yesterday's platform shapes (admin GUI, DB rows, wizards, form submissions, Slack threads, tribal knowledge, SOPs in Confluence) to tomorrow's (a toolbox of CLIs, diff-able text, files in git, commits with reasons, reasoning in `.git/log`, `CLAUDE.md` per shop, skills in `.claude/skills/`). Last row says it plainly — yesterday the CLI was driven by nobody; tomorrow it's driven by the owner *and their AI*. Closing strategic line: *we don't build a better admin panel. We build a shop our customers' AI can drive.*
- **23 · CTA** — zoom HOME: *this week, pick ONE.*

## Live demos (two, both LIVE)

### Demo A · `git log` of `sunfmin/system-monitor` (~3 min)

Switch projector to terminal. Run `git log --oneline -20`. Click into 2–3 commits and read their reasoning aloud. Echo slide loads after switch-back, showing `f026554` rendered large.

### Demo B · meta — edit this deck in front of the audience (~5–7 min)

Side-by-side: Claude Code in terminal, Slidev dev server in browser. Ask audience for a one-line addition. Have Claude insert a new slide block into `slides/slides.md`. Watch it hot-reload in the browser tab. Echo slide shows the commit hash + topic (speaker manually updates placeholders post-demo).

**Backup topic** (audience silent ≥15s) — say to Claude verbatim:

> *"Add a 'what to try this week' CTA slide near the end of slides.md. Three concrete actions for the audience, bilingual EN + CN."*

Let Claude pick the actions, draft the bilingual line, and choose the layout. The point of the demo is the audience watching Claude *generate* — speaker shouldn't dictate the content.

## Plan B for live failure (no recordings)

If a demo hangs, breaks, or produces unusable output, fall back to the **already-public artifact** and narrate over it:

| Demo | Live failure | Fallback |
|---|---|---|
| A — git log | Terminal slow, projector flakes | Stay on the echo slide. The `f026554` commit body alone tells the story — read it aloud, commit-message style. |
| B — meta live-edit | Slidev breaks, Claude hangs >60s, audience suggestion is too vague or risky | Switch to backup topic mid-run, no apology. If that *also* breaks: open this repo's `git log` for the past week and walk a few real Claude-coauthored commits — the punchline (*capabilities ship like code*) still lands. |

Universal narration when something breaks: *"OK, while that's churning — let me show you one I ran earlier."* Then artifact. Resume narrative.

## Q&A plants (3)

Used if the room is shy. Ask aloud as *"a question I get a lot is…"*.

| # | Audience | Plant | Answer direction |
|---|---|---|---|
| 1 | Non-engineers | "I can't write code — is this really for me?" | Skills are markdown describing procedures. Show `/grill-with-docs` — it interviews you about a one-liner. No code knowledge required. |
| 2 | Engineers / tech leads | "How do we trust AI commits in production?" | Same as trusting junior-dev PRs — review, revert, blame. Git history makes AI changes *more* auditable than chat sessions. Then name the **lethal trifecta** (F4): the danger pattern is *private data + untrusted content + external write*, and Claude Code's permission gates exist exactly because of it. |
| 3 | Leadership | "Where do you start if our codebase is messy / undocumented?" | Start with `/grill-with-docs` on the one thing you know best. AI helps build the docs; you don't need docs before AI can help. |

## Locked decisions

| Decision | Choice |
|---|---|
| Title | "AI Escapes the Chatbox / AI 走出聊天框" |
| Audience | Mixed engineers + non-engineers, bilingual |
| Format | 40–60 min live talk, two live demos |
| Main thesis | "AI moves out of chatbox into your working environment" |
| Structure | Three thematic blocks: History → Memory → Capabilities |
| Demos | Two LIVE only — A (git log), B (meta live-edit) |
| Locked framings | F1 / F2 / F3 / F4 above |
| Reassurance slide | Dropped (Contrast + Principle do the rhetorical work) |
| Cases | Dropped (no slackwiki / md-to-gdoc-tab / system-monitor as headers) |
| Plan B for live failure | Narrate from artifact (echo slide / recent git log) |
| CTA | Install Claude Code + clone something + try `/grill-with-docs` tonight |
| Slide language | English primary, CN gloss on key concepts |
| Q&A plants | 3 plants — non-engineer / engineer / leadership |
| Typography | JetBrains Mono + Noto Sans SC only |

## Pre-talk prep

1. Clone `sunfmin/system-monitor` on the demo machine. Pre-test `git log --oneline -20`.
2. This repo (`coe-may-deck`) cloned, dev server runnable from `slides/` (`pnpm dev`).
3. Claude Code installed + authenticated on the demo machine.
4. Bookmarks: `github.com/sunfmin/system-monitor`, this deck's repo, `http://localhost:3030/` already loaded.
5. Rehearse the full talk 2× on a clean machine. Time each block. If you blow past 50 min in rehearsal, cut a Block-B slide before cutting either demo.

## Next steps

1. Build slides **12, 13, 23** (three slides remaining: Block C opener, SKILL.md inline, CTA). Done so far: 5 (decoder), 6 (Block A REPL opener), 9 (Block B opener — clean slate vs repo), 10 (CLAUDE.md inline), 11 (three layers of memory), 16 (artifacts), 17 (CLI is the door), 18 (OpenSCAD → STL proof), 19 (thought experiment), 20 (想象 · shop owner), 21 (推断 · system exposes), 22 (所以 · platform reframe).
2. Rehearse. Time each block end-to-end.
3. Manually update Demo B echo placeholders post-demo on the day (commit hash + audience topic + suggestion).

## Appendix · what was cut and why

- **"When chat AI wins" reassurance slide** — Contrast + Principle make the same point implicitly without slowing the arc.
- **Named cases** (slackwiki, md-to-gdoc-tab, system-monitor):
  - `slackwiki` is Claude-recursive (Claude commit in a Claude pipeline) and confuses audiences.
  - `system-monitor` now lives *inside* Demo A's echo commit — a dedicated case slide would be redundant.
  - `md-to-gdoc-tab` would be a third case-tour without a payoff that matched the others.
- **8-axes enumeration slide** — the axes surface naturally inside the three blocks. An explicit list slows pacing and signals "we're about to lecture."
- **4-skill closing live arc** (`/setup-matt-pocock-skills` → `/grill-with-docs` → `/to-prd` → `/to-issues` in an empty repo) — replaced with Demo B (meta edit-this-deck). Same "capabilities as files" message, faster, lower risk, and more memorable because it edits the very thing the audience is watching.
