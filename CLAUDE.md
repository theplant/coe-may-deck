# CLAUDE.md

## Agent skills

### Issue tracker

Issues live as local markdown files under `.scratch/<feature>/`. See `docs/agents/issue-tracker.md`.

### Triage labels

Five canonical triage roles, default vocabulary (label strings match role names). See `docs/agents/triage-labels.md`.

### Domain docs

Single-context: one `CONTEXT.md` and `docs/adr/` at the repo root. See `docs/agents/domain.md`.

## Slides

After editing slide content, from `slides/`:

1. `npm run build` — verify the deck builds.
2. `npm run export -- --format png --range <N>` — regenerate only the touched slides (`N` accepts `13`, `13,15`, or `13-15`).
3. Read the PNG(s) in `slides/slides-export/` and confirm nothing is clipped — Slidev silently overflows the 1920×1080 frame. If clipped, shrink, tighten, or split.
