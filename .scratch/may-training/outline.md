# AI Escapes the Chatbox / AI 走出聊天框

> Subtitle: From chat sessions to versioned, team-shared capabilities

Status: post-grill (all structural decisions locked), pre-storyboard

## Audience & format

- **Audience**: mixed engineers + non-engineers, bilingual (CN + EN)
- **Format**: 40–60 min live talk + live demo
- **Slide language**: English-primary; key concepts get a Chinese gloss in parentheses on first appearance (e.g. `Agent AI (能调用工具的 AI)`). Code, terminal output, GitHub screenshots stay English-only. Spoken delivery: CN/EN free.

## Main thesis (the one takeaway)

> **AI moves out of the chatbox into your working environment.**
> （AI 从聊天框走出来，进入你平时工作的环境）

Everything else is evidence for this.

## Running order

| # | Block | Time | Mode | Purpose |
|---|---|---|---|---|
| 0 | Title slide + hook line | 1 min | static | Anchor the thesis |
| 1 | **Opening: side-by-side comparison** — left: chat AI doing "summarize today's #engineering"; right: same task done by `slackwiki` GitHub Action, output committed to wiki repo. Show real `git log` from `sunfmin/slackwiki`. | 4–5 min | **live** (two windows, split-screen) | Visceral "this is different" moment |
| 2 | **"When chat AI still wins"** — single slide, 3 bullets: exploring unknowns, brainstorming / writing design, idle thinking with no artifact need. | 2 min | static | Reassurance — preempt "are you telling us to abandon ChatGPT" |
| 3 | **Case 1 — slackwiki (headline)**: walk through what it does, then open the `sunfmin/slackwiki` git log and read 4–5 Claude-coauthored commit messages aloud. Punchline: "the AI's reasoning, the trade-offs, the failed attempts — all here, forever." | 10 min | **live** (browser + terminal) | Proves: AI in CLI + Git history + collab |
| 4 | **Case 2 — md-to-gdoc-tab**: chat-room artifact → Google Doc tab, idempotent. Most relatable for PM/ops. | 4 min | **live** (edit md → `mds` → refresh Doc) | Proves: AI output goes back into everyday tools |
| 5 | **Case 3 — system-monitor**: skill that records screen + audio, transcribes via whisper.cpp, then Claude summarizes every 3 min. Punchline: "Claude didn't just glue tools together — it wrote the Swift binary that uses ScreenCaptureKit + whisper.cpp's C API with Metal GPU." | 6 min | **live** (start app pre-talk; open dashboard) + architecture diagram | Proves: AI builds the missing tools, not just integrates existing ones |
| 6 | **Closing punchline — mattpocock/skills LIVE**: take an audience-suggested one-liner → run all 4 skills end-to-end in a fresh empty repo `sunfmin/coe-may-demo`: **`/setup-matt-pocock-skills`** (scaffold CLAUDE.md + docs/agents/) → **`/grill-with-docs`** (interview the audience-sourced one-liner into something substantive) → **`/to-prd`** (produce PRD.md) → **`/to-issues`** (create real GitHub Issues). Backup topic: "May training follow-up — feedback questionnaire + 4 after-action items." | 18–22 min | **LIVE** | Proves: AI capabilities are a versioned team asset; closes the loop in real time, from zero to issues |
| 7 | **CTA**: install Claude Code + clone mattpocock/skills + run `/grill-with-docs` tonight on one thing you've been putting off. | 2 min | static | Make tomorrow morning's action obvious |
| 8 | Q&A | remainder | live | — |

> **Timing risk note**: with every block live, the talk is more vulnerable to overrun than the original recorded-cases plan. Rehearse on a clean machine and time each case end-to-end; if you blow past 50 min in rehearsal, trim a case before trimming the closing.

Target total: ~50 min talk + ~10 min Q&A (60 min hard cap).

## Bilateral structure: every case must hit both audiences

Each of the 3 main cases (slackwiki, md-to-gdoc-tab, system-monitor) is selected because:

- An **engineer-flavored hook** is visible (git log, build tools, code)
- A **non-engineer-relatable pain** is visible (Slack overload, Google Doc handoffs, meeting recordings)

If a case loses one of the two during storyboarding, replace it.

## Live demo: closing block — execution plan

### The drama

The talk has been telling the audience for 30+ minutes about "AI moves into your working environment." Block 6 makes it happen in front of them — starting from a **truly empty Git repo** (`sunfmin/coe-may-demo`, pre-created public, zero commits) and ending with a fully scaffolded repo plus a PRD and tracked GitHub Issues, all from one audience-supplied sentence.

### Pre-talk prep (do this once, days before)

1. Pre-create `sunfmin/coe-may-demo` as public, empty, no README, no commits.
2. Clone it locally on the demo machine.
3. Have Claude Code installed and authenticated on that machine.
4. Have `mattpocock/skills` set up so the 4 skills are invocable: `/setup-matt-pocock-skills`, `/grill-with-docs`, `/to-prd`, `/to-issues`.
5. Pre-stage the three case demos on the same machine: clone `sunfmin/slackwiki` + have its GitHub Action tab ready; install `md-to-gdoc-tab` + have a target Google Doc bookmarked; install `system-monitor` and start it ~15 min before the talk so the dashboard already has transcripts to show.

### Live flow (18–22 min)

1. **(30s)** Open a terminal in the cloned empty repo. Show `ls -la` — nothing but `.git`. Show `gh browse` proving the repo is empty on GitHub too.
2. **(15s)** Ask the room: "Give me one sentence — something you'd want to build, propose, or improve at work."
3. **(15s)** Pick a reasonable suggestion. Repeat it back clearly so everyone hears. If none / weird, deploy backup (see below) with no apology.
4. **(~2 min) /setup-matt-pocock-skills** — narrate as it asks the 1 question (CLAUDE.md vs AGENTS.md), pick CLAUDE.md. Show `CLAUDE.md` and `docs/agents/` files appearing. Commit + push. Now the repo has its first commit live in front of the audience.
5. **(~6–8 min) /grill-with-docs "<that sentence>"** — let the skill interview live. Narrate while it thinks. Pick options when it asks. The audience sees the AI sharpening a vague idea into specifics. End with `.scratch/<feature>/glossary.md` + `outline.md` committed.
6. **(~3–4 min) /to-prd** — produce `PRD.md`. Read 2–3 highlights aloud. Commit + push.
7. **(~3–4 min) /to-issues** — generate real GitHub Issues. Switch to browser tab → refresh `github.com/sunfmin/coe-may-demo/issues` → "these are real. You can open them after this talk."
8. **(~30s)** Final beat: `git log --oneline` — show the entire arc of commits live. "Twenty minutes ago this repo was empty. Now there's a glossary, a PRD, and 5 tracked issues. The AI's reasoning is in the commits, forever."

### Backup topic (pocket)

> **"After-action items for the May CoE training itself — send a feedback questionnaire, identify the people most likely to try it, schedule pairing sessions, schedule a 30-day check-in."**

Use when: room doesn't volunteer in 15s / suggestion is too vague / suggestion is too narrow to produce 3+ issues / suggestion is awkward to ship as a public artifact.

### Plan B (live failure) — narrate from artifacts

No recordings. If a live demo hangs, breaks, or produces unusable output, fall back to the **already-public artifact** that proves the same point, and narrate over it:

| Block | Live failure | Fallback artifact |
|---|---|---|
| 1 (split-screen opener) | The trigger fails / chat tab won't load | Open `github.com/sunfmin/slackwiki/wiki` directly, walk the markdown, then `git log` — the artifact alone tells the story |
| 3 (Case 1 slackwiki) | Browser/terminal slow, can't navigate | Skip to the next slide (the `GitLog` component already shows real commits with v-click reveals) |
| 4 (Case 2 md-to-gdoc-tab) | `mds` errors, network drops, OAuth times out | Open a Google Doc you previously synced with the skill; walk the tab structure to show the output shape |
| 5 (Case 3 system-monitor) | Dashboard won't open, transcription stalls | Stay on the architecture slide and read the diagram aloud — the punchline ("Claude wrote this Swift binary") doesn't need the live dashboard |
| 6 (closing 4-skill arc) | Any single skill hangs >60s, embarrasses, or the audience topic can't survive going public | Switch to the backup topic mid-run ("the room was quiet — here's the one I prepped"). If that also breaks, abandon the demo and walk a pre-existing repo where the same 4 skills produced their output. Don't apologize. |

Universal narration when something breaks: "OK, while that's churning — let's look at one I ran earlier." Then switch to the artifact. Resume narrative.

## Q&A: 3 planted questions

Used if the room is shy. Ask them aloud yourself as "a question I get a lot is…"

| # | Audience | Plant | Answer direction |
|---|---|---|---|
| 1 | Non-engineers | "I can't write code — is this really for me?" | Skills are markdown describing procedures. Show `/git-for-everyone` as direct counterexample. |
| 2 | Engineers / tech leads | "How do we trust AI commits in production code?" | Same way you trust junior-dev PRs — review, revert, blame. Git history makes AI changes **more** auditable than chat sessions, not less. |
| 3 | Leadership / would-be adopters | "Where do you start if your codebase is messy / has no docs?" | Start with `/grill-with-docs` on the one thing you know best. AI helps build docs; you don't need docs before AI can help. |

## Locked decisions

| Decision | Choice |
|---|---|
| Title | "AI Escapes the Chatbox / AI 走出聊天框" — subtitle "From chat sessions to versioned, team-shared capabilities" |
| Audience | Mixed (engineers + non-engineers), bilingual |
| Format | Live 40–60 min talk + demo |
| Main thesis | "AI moves out of chatbox into your working environment" |
| Opening hook | Side-by-side comparison (slackwiki task), recorded |
| Reassurance placement | One slide right after opening |
| Case selection | slackwiki (headline), md-to-gdoc-tab, system-monitor |
| Closing punchline | LIVE 4-skill arc in fresh empty `sunfmin/coe-may-demo`: `/setup-matt-pocock-skills` → `/grill-with-docs` → `/to-prd` → `/to-issues` |
| Demo repo | `sunfmin/coe-may-demo` (public, personal namespace, pre-created empty before talk) |
| Topic for closing demo | Audience-sourced + pocket backup (training feedback + after-actions) |
| Live/recorded mix | **All demos LIVE** (opener, 3 cases, closing). No recordings. |
| Plan B for live failure | Narrate from already-public artifacts (wiki repo, synced Google Doc, architecture slide). For closing block: switch to backup topic mid-run, then to a pre-existing skills repo if that also breaks. |
| CTA | Install Claude Code + clone mattpocock/skills + run `/grill-with-docs` tonight |
| Slide language | English primary, CN gloss on key concepts |
| Q&A plants | 3 plants — non-engineer / engineer / leadership |

## Next steps (post-outline)

1. **Pre-create `sunfmin/coe-may-demo`** as public, empty, zero commits (do this manually before the talk; not done yet).
2. Storyboard each block — slide-by-slide, exact text, exact terminal output to show. ✅ done (22 slides built in Slidev).
3. Pre-stage all three case demos on the talk machine — installed, authenticated, bookmarks ready, system-monitor pre-started. See Pre-talk prep above.
4. Rehearse the **full talk** (not just the closing) 3× minimum on a clean machine. Time each block. If you blow past 50 min, trim a case before trimming the closing. Reset `sunfmin/coe-may-demo` to empty between rehearsals (`git push --force` an empty branch is the simplest reset).
5. Walk the deck once with a stranger / a non-engineer in the room — flag any slide they don't understand on first read.
