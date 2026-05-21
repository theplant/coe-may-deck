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

## Running order (16 slides + verbal Q&A · ~50 min)

| # | Slide | Block | Status | ≈ min |
|---|---|---|---|---|
| 1 | Title | Opening | ✓ | 1 |
| 2 | Setup — "chatbox is a window" | Opening | ✓ | 1 |
| 3 | Contrast — chat window vs terminal | Opening | ✓ | 2 |
| 4 | Principle — "AI works with text" | Opening | ✓ | 2 |
| 5 | **Decoder — chat vs agent** (F1) | Opening | ✓ NEW | 2 |
| 6 | Block A opener — the **agentic REPL** (F3) | History | to build | 2 |
| 7 | Demo A cue — git log reveal | History | ✓ | 1 |
| 8 | Demo A echo — `f026554` | History | ✓ | 3 (+ demo) |
| 9 | Block B opener — **"clean slate vs repo"** (F2) | Memory | to build | 2 |
| 10 | `CLAUDE.md` inline (real) | Memory | to build | 4 |
| 11 | `.scratch/` or `docs/adr/` as recall | Memory | to build | 4 |
| 12 | Block C opener — "a workflow is a file" | Capabilities | to build | 2 |
| 13 | `SKILL.md` inline (real) | Capabilities | to build | 4 |
| 14 | Demo B cue — meta live-edit | Capabilities | ✓ | 1 |
| 15 | Demo B echo — fresh commit | Capabilities | ✓ | 6 (+ demo) |
| 16 | CTA — install / clone / try this week | Closing | to build | 3 |

Total ≈ 40 min, leaving ~10 min for Q&A.

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

1. Build slides **6, 9, 10, 11, 12, 13, 16** (seven slides remaining). Slide 5 (decoder) done.
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
