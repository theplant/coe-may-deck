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
| 1 | **Opening: side-by-side comparison** — left: chat AI doing "summarize today's #engineering"; right: same task done by `slackwiki` GitHub Action, output committed to wiki repo. Show real `git log` from `sunfmin/slackwiki`. | 4–5 min | **recorded** (split-screen video) | Visceral "this is different" moment |
| 2 | **"When chat AI still wins"** — single slide, 3 bullets: exploring unknowns, brainstorming / writing design, idle thinking with no artifact need. | 2 min | static | Reassurance — preempt "are you telling us to abandon ChatGPT" |
| 3 | **Case 1 — slackwiki (headline)**: walk through what it does, then open the `sunfmin/slackwiki` git log and read 4–5 Claude-coauthored commit messages aloud. Punchline: "the AI's reasoning, the trade-offs, the failed attempts — all here, forever." | 10 min | recorded terminal + screenshots | Proves: AI in CLI + Git history + collab |
| 4 | **Case 2 — md-to-gdoc-tab**: chat-room artifact → Google Doc tab, idempotent. Most relatable for PM/ops. | 4 min | recorded | Proves: AI output goes back into everyday tools |
| 5 | **Case 3 — system-monitor**: skill that records screen + audio, transcribes via whisper.cpp, then Claude summarizes every 3 min. Punchline: "Claude didn't just glue tools together — it wrote the Swift binary that uses ScreenCaptureKit + whisper.cpp's C API with Metal GPU." | 6 min | recorded dashboard clip + architecture diagram | Proves: AI builds the missing tools, not just integrates existing ones |
| 6 | **Closing punchline — mattpocock/skills LIVE**: take an audience-suggested one-liner → run `/to-prd` → run `/to-issues` → show PRD committed to `theplant/coe-may-deck` + GitHub Issues created. Backup topic in pocket: "May training follow-up — feedback questionnaire + 4 after-action items." | 10–12 min | **LIVE** | Proves: AI capabilities are a versioned team asset; closes the loop in real time |
| 7 | **CTA**: install Claude Code + clone mattpocock/skills + run `/grill-with-docs` tonight on one thing you've been putting off. | 2 min | static | Make tomorrow morning's action obvious |
| 8 | Q&A | remainder | live | — |

Target total: ~45 min talk + ~10 min Q&A.

## Bilateral structure: every case must hit both audiences

Each of the 3 main cases (slackwiki, md-to-gdoc-tab, system-monitor) is selected because:

- An **engineer-flavored hook** is visible (git log, build tools, code)
- A **non-engineer-relatable pain** is visible (Slack overload, Google Doc handoffs, meeting recordings)

If a case loses one of the two during storyboarding, replace it.

## Live demo: closing block — execution plan

### The drama

The talk has been telling the audience for 30+ minutes about "AI moves into your working environment." Block 6 makes it happen in front of them, in a repo (`theplant/coe-may-deck`) that they can verify after they leave.

### Flow

1. Ask the room: "Give me one sentence — something you'd want to build, propose, or improve."
2. Pick a reasonable suggestion (or pull backup if none / weird).
3. Run `/to-prd "<that sentence>"` in Claude Code, in the `theplant/coe-may-deck` clone. Narrate what it's doing.
4. Show the PRD it produces. Read 2–3 highlights aloud.
5. Run `/to-issues` on that PRD. It creates real GitHub Issues in `theplant/coe-may-deck`.
6. Switch to a browser tab → refresh `github.com/theplant/coe-may-deck/issues` → "these are real, you can look at them after this talk."

### Backup topic (pocket)

> **"After-action items for the May CoE training itself — send a feedback questionnaire, identify the people most likely to try it, schedule pairing sessions, schedule a 30-day check-in."**

Use when: room doesn't volunteer in 15s / suggestion is too vague / suggestion is too narrow to produce 3+ issues.

### Plan B (live failure)

Pre-record the **full** /to-prd → /to-issues run on the backup topic ahead of time. Keep it cued in a hidden tab.

Switch trigger: if any single step hangs >60s OR produces something that would embarrass.

Switch narration: "OK, while that's churning — here's one I ran 20 minutes before this talk." Don't apologize. Play the recording. Resume narrative.

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
| Closing punchline | `/to-prd → /to-issues` LIVE in `theplant/coe-may-deck` |
| Topic for closing demo | Audience-sourced + pocket backup (training feedback + after-actions) |
| Live/recorded mix | Only closing is LIVE; everything else recorded/static |
| Plan B for live failure | Pre-recorded full closing run on backup topic, cued in hidden tab; switch if hang >60s |
| CTA | Install Claude Code + clone mattpocock/skills + run `/grill-with-docs` tonight |
| Slide language | English primary, CN gloss on key concepts |
| Q&A plants | 3 plants — non-engineer / engineer / leadership |

## Next steps (post-outline)

1. Storyboard each block — slide-by-slide, exact text, exact terminal output to show.
2. Record the 3 case demo videos (slackwiki, md-to-gdoc-tab, system-monitor) at the right pacing.
3. Pre-record the Plan B closing run with backup topic.
4. Rehearse the live closing 3× minimum on a clean machine.
5. Build the slide deck (Keynote / Slidev / etc — TBD).
