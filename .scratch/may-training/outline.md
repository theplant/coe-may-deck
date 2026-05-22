# AI Escapes the Chatbox / AI 走出聊天框

> Subtitle: From chat sessions to versioned, team-shared capabilities

**Status**: re-synced 2026-05-22. Deck has grown to 33 slides, three live demos, and a new Skills block (24–31) after the e-commerce reframe. Total run-time ≈ 65–70 min — over the 40–60 min budget; trim candidates listed below. See *Appendix · what was cut and why* at the bottom.

## Audience & format

- **Audience**: mixed engineers + non-engineers, bilingual (CN + EN).
- **Format**: 40–60 min live talk, **three** live demos.
- **Slide language**: English-primary; CN gloss on key concepts. Code / terminal / git stays English-only. Spoken delivery CN/EN free.

## Main thesis

> **AI moves out of the chatbox into your working environment.**
> （AI 从聊天框走出来，进入你平时工作的环境）

Everything else is evidence for this.

## Thematic blocks (the spine)

Three core blocks. Each ends in a *feeling*, not an artifact:

| Block | Audience feels | Earned by | Demo |
|---|---|---|---|
| **A · History** | "Six months from now I can still read what the AI was thinking." | git log of a real Claude-built repo + one full commit body | Demo A (live) |
| **B · Files-as-memory** | "The AI doesn't restart from zero. My repo is its memory." | `CLAUDE.md` + the three-layer mental model, inline | (none — static) |
| **C · Capabilities** | "A workflow is a file. I can ship it to my team like code." | live-edit *this deck* in front of the room | Demo B (live, meta) |

After the three blocks, the deck zooms out → in → deeper → ours (Closing arc, slots 16–23), then drills into **how to make agentic AI reliable in practice** (Skills block, 24–31), then closes with Demo C + CTA.

The 8 axes (lives-where-you-work, files-as-memory, git-as-history, CLI ecosystem, capabilities-as-artifacts, real environment, composable+async, autonomy horizon) surface *inside* the blocks. No enumeration slide.

## Locked framings (phrases that recur on slides + in the talk)

- **F1** · "Assistants answer questions. Agents **complete tasks**." → Decoder slide headline (slide 6). Speaker repeats once before Demo A.
- **F2** · "Every chat is a clean slate. Every repo is not." → Block B opener (slide 10).
- **F3** · The **agentic REPL** — *reason → tool → observe → continue*. → Block A opener (slide 7), rendered visually as a loop.
- **F4** · The **lethal trifecta** (Willison) — *private data + untrusted content + external write*. → Q&A planted answer only, NOT a slide.
- **F5** · "Tools stay. The model travels." → Where-the-work-lives slide (slide 5). Pre-empts *"why not just use ChatGPT in a browser"*.

## Running order (33 slides + verbal Q&A · ~65–70 min)

| # | Slide | Block | Status | ≈ min |
|---|---|---|---|---|
| 1 | Title | Opening | ✓ | 1 |
| 2 | Setup — "chatbox is a window" | Opening | ✓ | 1 |
| 3 | Contrast — chat window vs terminal | Opening | ✓ | 2 |
| 4 | Principle — "AI works with text" | Opening | ✓ | 2 |
| 5 | **Where the work lives** — tools stay, model travels (F5) | Opening | ✓ | 2 |
| 6 | **Decoder — chat vs agent** (F1) | Opening | ✓ | 2 |
| 7 | Block A opener — the **agentic REPL** (F3) | History | ✓ | 2 |
| 8 | Demo A cue — git log reveal | History | ✓ | 1 |
| 9 | Demo A echo — `f026554` | History | ✓ | 3 (+ demo) |
| 10 | Block B opener — **"clean slate vs repo"** (F2) | Memory | ✓ | 2 |
| 11 | `CLAUDE.md` inline (real) | Memory | ✓ | 3 |
| 12 | **Three layers of memory** — context · files · git | Memory | ✓ | 3 |
| 13 | Demo B cue — meta live-edit | Capabilities | ✓ | 1 |
| 14 | Demo B LIVE placeholder — *switching to terminal* | Capabilities | ✓ | (held during demo) |
| 15 | Demo B echo — see the commit (live link) | Capabilities | ✓ | 1 (+ demo total ~5–7) |
| 16 | **Artifacts — every format** (divergence) | Closing arc | ✓ | 3 |
| 17 | **CLI — the door** (mechanism) | Closing arc | ✓ | 2 |
| 18 | **Proof — OpenSCAD → STL** (concrete worked example) | Closing arc | ✓ | 2 |
| 19 | **Thought — GUIs are for humans** (reframe) | Closing arc | ✓ | 1 |
| 20 | **Why CLI** — LLMs output text; CLIs talk back (mechanical principle) | Closing arc | ✓ | 2 |
| 21 | **想象 — the shop owner you sell to** (e-comm reframe) | Closing arc | ✓ | 1.5 |
| 22 | **推断 — what the system has to expose** (e-comm reframe) | Closing arc | ✓ | 1.5 |
| 23 | **所以 — the platform we build** (e-comm reframe) | Closing arc | ✓ | 2 |
| 24 | Skills — meet the repo (small, composable) | Skills | ✓ | 1.5 |
| 25 | Four failures — what skills fix | Skills | ✓ | 1.5 |
| 26 | Shared language — `/grill-with-docs` · `/grill-me` | Skills | ✓ | 1.5 |
| 27 | Feedback loops — `/tdd` · `/diagnose` | Skills | ✓ | 1.5 |
| 28 | Deep vs shallow — Ousterhout's modules | Skills | ✓ | 1.5 |
| 29 | Deep vs shallow — same yardstick, applied to people | Skills | ✓ | 1.5 |
| 30 | Design discipline — `/to-prd` · `/to-issues` · `/improve-codebase-architecture` | Skills | ✓ | 1.5 |
| 31 | Skill scope — global vs project | Skills | ✓ | 1.5 |
| 32 | Demo C cue — `/write-a-skill` (live) | Demo C | ✓ | 1 (+ demo ~5) |
| 33 | CTA — install / clone / try this week | Closing | ✓ | 2 |

Total ≈ 65–70 min including the three demos. This is **over** the 40–60 min budget by ~10–25 min. Trim candidates, in order:

1. **Skills block (24–31)** — 8 slides × ~1.5 min = 12 min. The block is internally tight, but cutting any 2–3 slides (likely 28+29 *deep vs shallow* or 30 *design discipline*) saves 3–5 min without losing the arc.
2. **Slide 12** (three layers) — conceptual frame, can be told verbally over slide 11 if pressed.
3. **Slide 23 (所以)** — strategic line, can be compressed into 22's closing.
4. **Demo C** — if running long at slot 31, skip the cue and land directly on CTA. /write-a-skill could become a homework prompt instead of a live demo.

### Block B · what changed (2026-05-21)

Slide 12 was originally scoped as ".scratch/ or docs/adr/ as recall" — a concrete artifact slide pairing with the CLAUDE.md inline. It was promoted to **"three layers of memory"** instead: an ASCII architecture diagram (context window / local files / git history) with the workbench · bookshelf · archive metaphor. Rationale: the conceptual frame ties Block B to the e-commerce reframe trio later (slot 22 — owner ↔ tool ↔ git) and directly answers the discussion "本地文件和 git 和 context 是怎么配合怎么相关的". A concrete `.scratch/` or `docs/adr/` artifact can be added later as slide 12.5 if Block B feels too abstract in rehearsal — but rehearsal-first.

### Slide 5 added (2026-05-22) · why-not-ChatGPT-in-a-browser pre-empt

Inserted between Principle (4) and Decoder (6) to do a job neither neighbour does: name the asymmetry *"tools stay, model travels"* and earn *why agentic AI is non-optional*. Left box is explicitly labelled `chatbox in a browser · behind a window · — and a wall between it and your work —` so the audience sees what the slide is arguing against. Conclude carries a second persuasive line — *"which is why the chatbox can't follow you here"* / *所以聊天框走不到这里。* Verbal handoff to Decoder (notes in slide file) binds 5+6 as one WHERE → WHO unit.

### Closing arc · zoom in → out → deeper → concrete → reframe → mechanism → ours

The Closing arc pulses the audience's focus across the full zoom range — and lands the abstraction in our specific business (e-commerce platform):

- **15 · Demo B echo (live-link)** — zoom IN: Claude just edited *this very deck*.
- **16 · Artifacts** — zoom OUT: *the same loop also writes file formats you didn't think AI could touch.* Concession line acknowledges the markdown-laundry stuff, then a two-column grid contrasts **EVERYDAY** (a slide deck, a Mac/iOS app, a personal website, a quarterly report PDF, an XLSX with live formulas) against **UNEXPECTED** (`.stl`, `.kicad_sch`, `.gcode`, `.mp3`, `.mp4`). Closing principle: *AI writes the text. The tool builds the file.*
- **17 · CLI is the door** — zoom DEEPER: explains *why* artifacts in any format are reachable. *AI lives in text. CLIs talk back. GUIs don't.* Comparison grid (CLI vs GUI: exit codes vs dialogs, pipes vs walls, `--help` vs YouTube, headless vs display-bound, stable-flags vs redesigned-yearly). Closing line: *every artifact on the last slide was built by a CLI tool.*
- **18 · OpenSCAD → STL proof** — zoom CONCRETE: takes one row from the artifacts slide (`.stl`) and demonstrates the CLI claim from slide 17 with a worked example. AI writes `phone-stand.scad`, `openscad` CLI emits `phone-stand.stl`, and a 2×2 grid of renders (perspective + front + side + top) proves the same source produces a real 3D object.
- **19 · Thought experiment** — zoom REFRAME: *if only AI used computers, GUIs wouldn't exist.* The philosophical reveal — GUIs are a HUMAN accessibility layer, not a fundamental computing necessity. Designed for a long pause (~5 sec silence after the headline).
- **20 · Why CLI** — zoom MECHANISM: *LLMs output text. CLIs talk back.* The clean mechanical principle behind the whole arc — pairs with slide 17 as the *why* to its *what*.
- **21 · 想象 (shop owner)** — zoom OURS · vivid: lands the abstract CLI-future on our customer. *Today they click 47 screens. Soon they say one sentence.* Terminal mockup of a shop owner saying `shop "summer collection 15% off · Fri→Sun · home banner"` — and the system reads the catalog, matches 247 SKUs, drafts a promo file, schedules it, previews it, writes the commit message.
- **22 · 推断 (system exposes)** — zoom OURS · mechanism: from the owner's one sentence, infer what the system must look like. *Every sentence the owner says needs a tool on the other side.* Two-column grid maps owner phrases to CLI tools. Last row: `"roll back yesterday's price"` → `shop revert — a commit`.
- **23 · 所以 (platform reframe)** — zoom OURS · strategy: *The admin GUI is no longer the product. The toolbox is.* Closing strategic line: *we don't build a better admin panel. We build a shop our customers' AI can drive.*

### Skills block · how to make agentic AI reliable (slides 24–31)

After the e-commerce reframe says *what the platform becomes*, the Skills block answers *how engineers in the room actually make it good*. Each slide pairs a failure mode with the skill(s) that fix it.

- **24 · Skills — meet the repo** — small, composable, ship like code. Anchors the rest by introducing the skills repo as a concrete artifact (matt-pocock style).
- **25 · Four failures** — the skill spine. Four ways the agent fails you: no shared language, no feedback loop, shallow design, undisciplined process. Each subsequent slide maps to one failure.
- **26 · Shared language — `/grill-with-docs` · `/grill-me`** — the *missing-glossary* failure. AI guesses when terms aren't pinned; these skills force the conversation that produces the glossary.
- **27 · Feedback loops — `/tdd` · `/diagnose`** — the *no-rubric* failure. AI can't tell if it's done unless there's a test or a repro. These skills install the rubric.
- **28 · Deep vs shallow modules — Ousterhout** — the *shallow-design* failure (technical). Small interfaces, deep implementations. The deletion test.
- **29 · Deep vs shallow — applied to people** — same yardstick, applied to humans. Are *you* deep or shallow? Are your skills deep or shallow? Pairs philosophically with slide 28.
- **30 · Design discipline — `/to-prd` · `/to-issues` · `/improve-codebase-architecture`** — the *undisciplined-process* failure. Skills that make design a daily habit, not a quarterly meeting.
- **31 · Skill scope — global vs project** — practical: where do skills live? `~/.claude/skills/` for cross-project reflexes, `<repo>/.claude/skills/` for project-specific procedures.

The Skills block is the most cuttable section if the talk runs long — but it's also where the audience (especially engineers) learns *how to do this on Monday*. Cutting 2–3 slides is fine; cutting the whole block loses the actionable layer.

## Live demos (three, all LIVE)

### Demo A · `git log` of `sunfmin/system-monitor` (~3 min)

Switch projector to terminal. Run `git log --oneline -20`. Click into 2–3 commits and read their reasoning aloud. Echo slide loads after switch-back, showing `f026554` rendered large.

### Demo B · meta — edit this deck in front of the audience (~5–7 min)

Side-by-side: Claude Code in terminal, Slidev dev server in browser. Ask audience for a one-line addition. Have Claude insert a new slide block into `slides/slides.md`. Watch it hot-reload in the browser tab. Echo slide (15) is `live-link` to the resulting commit.

**Backup topic** (audience silent ≥15s) — say to Claude verbatim:

> *"Add a 'what to try this week' CTA slide near the end of slides.md. Three concrete actions for the audience, bilingual EN + CN."*

Let Claude pick the actions, draft the bilingual line, and choose the layout. The point of the demo is the audience watching Claude *generate* — speaker shouldn't dictate the content.

### Demo C · `/write-a-skill` — author a new skill in front of the room (~5 min)

After the Skills block (24–31), slide 32 cues a third live demo. Open a terminal, run `/write-a-skill`, and walk through the interview as Claude produces a new skill file. The skill itself doesn't have to be useful — the point is the audience watches a *new capability* get committed to a repo in five minutes. Lands directly on CTA (33).

**Backup topic** (audience can't suggest a skill) — say to Claude verbatim:

> *"Write a skill called `/standup-prep` that interviews me about what I shipped yesterday, what's blocking me, and what I'm picking up today, and outputs a Slack-formatted standup note."*

## Plan B for live failure (no recordings)

If a demo hangs, breaks, or produces unusable output, fall back to the **already-public artifact** and narrate over it:

| Demo | Live failure | Fallback |
|---|---|---|
| A — git log | Terminal slow, projector flakes | Stay on the echo slide. The `f026554` commit body alone tells the story — read it aloud, commit-message style. |
| B — meta live-edit | Slidev breaks, Claude hangs >60s, audience suggestion is too vague or risky | Switch to backup topic mid-run, no apology. If that *also* breaks: open this repo's `git log` for the past week and walk a few real Claude-coauthored commits — the punchline (*capabilities ship like code*) still lands. |
| C — `/write-a-skill` | Claude hangs, audience silent, terminal flakes | Switch to backup `/standup-prep` topic. If that breaks: open `~/.claude/skills/` or `matt-pocock/skills` on GitHub and read one SKILL.md aloud — same message (*a skill is a file you can read*), narrated instead of generated. |

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
| Format | 40–60 min live talk, three live demos |
| Main thesis | "AI moves out of chatbox into your working environment" |
| Structure | Three thematic blocks (History → Memory → Capabilities) + Closing arc + Skills block + Demo C + CTA |
| Demos | Three LIVE — A (git log), B (meta live-edit), C (/write-a-skill) |
| Locked framings | F1 / F2 / F3 / F4 / F5 above |
| Reassurance slide | Dropped (Contrast + Principle do the rhetorical work) |
| Cases | Dropped (no slackwiki / md-to-gdoc-tab / system-monitor as headers) |
| Plan B for live failure | Narrate from artifact (echo slide / recent git log / SKILL.md aloud) |
| CTA | Install Claude Code + install the skills + clone something + try `/grill-with-docs` tonight |
| Slide language | English primary, CN gloss on key concepts |
| Q&A plants | 3 plants — non-engineer / engineer / leadership |
| Typography | JetBrains Mono + Noto Sans SC only |

## Pre-talk prep

1. Clone `sunfmin/system-monitor` on the demo machine. Pre-test `git log --oneline -20`.
2. This repo (`coe-may-deck`) cloned, dev server runnable from `slides/` (`npm run dev`).
3. Claude Code installed + authenticated on the demo machine. `/write-a-skill` skill installed and tested.
4. Bookmarks: `github.com/sunfmin/system-monitor`, this deck's repo, `http://localhost:3030/` already loaded.
5. Rehearse the full talk 2× on a clean machine. Time each block. **Likely over budget — pre-decide which Skills slides to cut** (candidates: 28, 29, or 30) before going live.

## Next steps

1. Rehearse end-to-end. Time each block. If over 60 min, cut 2–3 Skills slides before cutting Demo C.
2. Manually update Demo B echo (slide 15 / live-link) placeholders post-demo on the day (commit hash + audience topic + suggestion).
3. Demo C dry-run on the demo machine — verify `/write-a-skill` produces a clean, committable skill file in <5 min.

## Appendix · what was cut and why

- **"When chat AI wins" reassurance slide** — Contrast + Principle make the same point implicitly without slowing the arc.
- **Named cases** (slackwiki, md-to-gdoc-tab, system-monitor):
  - `slackwiki` is Claude-recursive (Claude commit in a Claude pipeline) and confuses audiences.
  - `system-monitor` now lives *inside* Demo A's echo commit — a dedicated case slide would be redundant.
  - `md-to-gdoc-tab` would be a third case-tour without a payoff that matched the others.
- **8-axes enumeration slide** — the axes surface naturally inside the blocks. An explicit list slows pacing and signals "we're about to lecture."
- **4-skill closing live arc** (`/setup-matt-pocock-skills` → `/grill-with-docs` → `/to-prd` → `/to-issues` in an empty repo) — replaced by the Skills block (static slides 24–31) + a single Demo C (`/write-a-skill`). Same "capabilities as files" message; the static slides cover the WHY/HOW, the demo covers the EXPERIENCE.
- **Block C opener + SKILL.md inline (planned slides 12–13 in 2026-05-21 outline)** — cut. The Skills block (24–31) absorbed the role of "show what skills are" with eight focused slides instead of two introductory ones.
