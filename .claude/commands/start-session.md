---
description: Start a work session on archboki-emacs-themes — loads project memory and confirms today's task
---

Read `memory/overview.md` and the most recent entry (topmost, under
"## Session log" ordering — newest first) in `memory/session-log.md`
in this repo, so you have full context on the project's architecture,
the current theme list, and what changed last session.

Then check `git status` and `git log -3 --oneline` to see if anything
changed on disk since that log entry was written (e.g. via a push/pull
outside this session).

Give the user a brief (2-4 sentence) recap: what state the project is
in, and anything left unfinished or uncommitted from last session
(check the log's "State at end of session" line).

Then: if the user's message that invoked this command already states
what they want to work on today, proceed with that. If it does NOT
(e.g. they just ran `/start-session` with no other instruction), ask
them directly: "What are you working on today?" — do not guess or
start work on your own initiative.
