# May Training Deck — Outline

Status: drafting (post-grill, pre-storyboard)

## Audience & format

- **Audience**: mixed engineers + non-engineers, bilingual (CN + EN)
- **Format**: 40–60 min live talk + live demo
- **Slide language**: English-primary; key concepts get a Chinese gloss in parentheses on first appearance (e.g. `Agent AI (能调用工具的 AI)`). Code, terminal output, GitHub screenshots stay English-only. Spoken delivery: CN/EN free.

## Main thesis (the one takeaway)

> **AI moves out of the chatbox into your working environment.**
> （AI 从聊天框走出来，进入你平时工作的环境）

Everything else is evidence for this.

## Running order

| # | Block | Time | Purpose |
|---|---|---|---|
| 0 | Title + hook line | 1 min | Anchor the thesis |
| 1 | **Opening: side-by-side comparison** — left: chat AI doing "summarize today's #engineering"; right: same task done by `slackwiki` GitHub Action, output committed to wiki repo. Show real `git log` from `sunfmin/slackwiki`. | 4–5 min | Visceral "this is different" moment |
| 2 | **"When chat AI still wins"** — single slide, 3 bullets: exploring unknowns, brainstorming / writing design, idle thinking with no artifact need. | 2 min | Reassurance — preempt "are you telling us to abandon ChatGPT" |
| 3 | **Case 1 — slackwiki (headline)**: walk through what it does, then open the `sunfmin/slackwiki` git log and read 4–5 Claude-coauthored commit messages aloud. Punchline: "the AI's reasoning, the trade-offs, the failed attempts — all here, forever." | 10 min | Proves: AI in CLI + Git history + collab |
| 4 | **Case 2 — md-to-gdoc-tab**: chat-room artifact → Google Doc tab, idempotent. Most relatable for PM/ops. | 4 min | Proves: AI output goes back into everyday tools |
| 5 | **Case 3 — system-monitor**: skill that records screen + audio, transcribes via whisper.cpp, then Claude summarizes every 3 min. Punchline: "Claude didn't just glue tools together — it wrote the Swift binary that uses ScreenCaptureKit + whisper.cpp's C API with Metal GPU." | 6 min | Proves: AI builds the missing tools, not just integrates existing ones |
| 6 | **Closing punchline — mattpocock/skills**: live-run one skill in front of the audience. Frame: "AI capabilities themselves are markdown files in a Git repo — team-versioned, PR-reviewable, sharable." Show what we just did earlier today with `/setup-matt-pocock-skills` writing `CLAUDE.md` and `docs/agents/`. | 10–12 min | Proves: AI capabilities are a versioned team asset |
| 7 | **CTA**: install Claude Code + clone mattpocock/skills + run one skill tonight. Concrete first skill suggestion: TBD (see open question below). | 2 min | Make tomorrow morning's action obvious |
| 8 | Q&A | remainder | — |

Target total: ~45 min talk + ~10 min Q&A.

## Bilateral structure: every case must hit both audiences

Each of the 3 main cases (slackwiki, md-to-gdoc-tab, system-monitor) is selected because:

- An **engineer-flavored hook** is visible (git log, build tools, code)
- A **non-engineer-relatable pain** is visible (Slack overload, Google Doc handoffs, meeting recordings)

If a case loses one of the two during storyboarding, replace it.

## Open questions (next pass)

1. **Which mattpocock/skill to run live for the closing punchline?** Candidates: `/grill-with-docs` (visible "AI interviews me" interaction), `/setup-matt-pocock-skills` (already known, low risk, but already used here), `/to-prd` or `/to-issues`. Decide based on which most clearly shows "an AI capability is a Git-tracked markdown file."
2. **Live vs pre-recorded demo segments.** Live = drama, but git log scrolling and terminal output is fragile. Plan B clips required. Likely mix: opening comparison live, case walkthroughs use prepared terminal sessions / screenshots, closing live with rollback recording.
3. **Title.** Working title only. Candidates to grill later: "AI in your working environment", "AI escapes the chatbox", "From prompt to repo", "Your AI's commits are forever."
4. **Q&A seeding.** Three plant questions for if the room is shy — one per audience type.

## Locked decisions

| Decision | Choice | Why locked |
|---|---|---|
| Audience | Mixed (engineers + non-engineers), bilingual | User confirmed |
| Format | Live 40–60 min talk + demo | User confirmed |
| Main thesis | "AI moves out of chatbox into your working environment" | User confirmed |
| Opening hook | Side-by-side comparison (slackwiki task) | User confirmed |
| Reassurance placement | One slide right after opening | User confirmed |
| CTA | Install Claude Code + run a mattpocock/skills skill | User confirmed |
| Closing punchline | `mattpocock/skills` live demo | User confirmed |
| Case selection | slackwiki, md-to-gdoc-tab, system-monitor | User confirmed |
| Slide language | English primary, CN gloss on key concepts | User confirmed |
