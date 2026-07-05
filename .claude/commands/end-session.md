---
description: End a work session on archboki-emacs-themes — writes memory, syncs to Claude's cross-session memory, signs off
---

Review what changed this session: `git status`, `git diff`, and your
own conversation context.

1. **Update project memory (in this repo, versioned):**
   - Append a new dated entry (newest at top, under the `---`
     separator) to `memory/session-log.md`, following the format of
     existing entries: what changed, why, and any state/gotchas
     worth knowing next time. Be concrete (file names, symbol
     renames, hex values changed) but concise — this is a changelog,
     not a transcript.
   - If anything changed about the project's architecture,
     conventions, theme list, or gotchas (not just one-off palette
     tweaks), update the relevant section of `memory/overview.md` to
     match current reality.

2. **Sync durable facts to your own cross-session memory** (the
   `type: project`/`type: feedback` memory files outside this repo,
   per your memory-system instructions) — anything from this session
   that would help a *future conversation with no access to this
   repo's `memory/` folder*: e.g. corrections the user gave about
   your approach, non-obvious preferences, or major unresolved state.
   Don't duplicate what's already faithfully captured in this repo's
   own memory files if a future session would have this repo open
   anyway — the cross-session memory is for context that survives
   even without it.

3. **Do not commit or push anything yourself** — that is the user's
   call, not an automatic part of ending a session.

4. Tell the user the session has ended, give a one-line summary of
   what got written to memory, and let them know they can push online
   now if they want to.
