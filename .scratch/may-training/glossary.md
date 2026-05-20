# Deck Glossary (audience-facing terms)

Terms the audience needs to internalize during the talk. Each term gets a Chinese gloss on first appearance on slides.

## Chat AI (聊天式 AI)

Conversational AI accessed through a chat window. Each interaction is one prompt in, one response out. The output lives inside the chat history. Examples: ChatGPT, Claude.ai, Gemini chat.

**Still good for**: exploring unknowns, brainstorming, drafting prose, thinking through a problem with no artifact requirement.

## Agent AI (代理式 AI / 能调用工具的 AI)

AI that runs in your working environment and can:

- Read your files
- Run shell commands and CLI tools
- Edit code and commit it
- Be invoked from CI / scripts / hooks

The AI's actions and reasoning are observable and preservable (logs, commits, PRs). Example: Claude Code.

**Best for**: anything where the output needs to be reproduced, audited, shared, or built upon.

## Skill (技能 / 可调用的 AI 能力)

A markdown file that describes a specific procedure for an AI agent to follow. Lives in a Git repo. Invoked by name (e.g. `/grill-with-docs`). Reviewable as a PR, evolvable as a commit history, sharable across a team.

A skill is **not** a model, **not** a plugin, **not** a tool — it's a packaged set of instructions + reference files that any compatible agent can pick up and execute.

Example: [mattpocock/skills](https://github.com/mattpocock/skills) is a repository of skills authored by Matt Pocock and contributors.

## CLI ecosystem (命令行生态)

The 30+ years of accumulated, composable, single-purpose command-line tools: `git`, `gh`, `jq`, `ffmpeg`, `imagemagick`, `pandoc`, `whisper.cpp`, etc. Agent AI can use these as building blocks instead of reimplementing them.

The reason this matters: **chat AI can describe how to use these tools; agent AI can actually run them**.

## Repository as memory (仓库即记忆)

When AI actions happen in a Git repository, the repo becomes a permanent record of:

- What was tried
- What worked, what didn't
- The reasoning behind each change (commit messages, PR discussions)
- Who (human or AI) made each change

Contrast: chat sessions disappear or get lost in history.
