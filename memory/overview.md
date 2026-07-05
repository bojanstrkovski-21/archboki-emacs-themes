# archboki-emacs-themes — project overview

## What this is

A collection of Emacs themes, ported from the `archboki_nvim` Neovim
colorscheme plus several other palettes. All themes share one face
engine (`archboki-themes.el`); each `archboki-<name>-theme.el` file
only supplies a palette alist (background, foreground, red, green,
yellow, blue, darkblue, magenta, cyan, gray, orange, hint,
cursorline) via `archboki-themes--set-faces`.

Repo: https://github.com/bojanstrkovski-21/archboki-emacs-themes
Used in Doom Emacs via `~/.config/doom/packages.el` /
`~/.config/doom/config.el` (`doom-theme`). Doom loads it through
straight.el from a **separate clone** at
`~/.config/emacs/.local/straight/repos/archboki-emacs-themes` — edits
here are NOT live until pushed to GitHub and pulled there (see
"gotchas" below).

## Naming convention

- File: `archboki-<name>-theme.el`
- `deftheme`/`provide-theme` symbol: `archboki-<name>` (must match
  the file name exactly, or Emacs's `load-theme` autodiscovery breaks).
- To add a theme: copy `archboki-dark-theme.el`, rename the symbol,
  change the palette values, update the README table.

## Current themes (16)

| Theme | Style | Source |
|---|---|---|
| `archboki-dark` | dark | original archboki_nvim port (renamed from `archboki` this session) |
| `archboki-light` | light | default_light.xaml UI + Everforest Light accents |
| `archboki-light-2` | light | second light take (renamed from colliding `archboki-light-theme-2.el`) |
| `archboki-everforest-dark-{hard,medium,soft}` | dark | sainnhe/everforest, verbatim |
| `archboki-everforest-light-{hard,medium,soft}` | light | sainnhe/everforest, verbatim |
| `archboki-evergarden-{winter,fall,spring,lunar}` | dark | codeberg.org/evergarden/nvim, verbatim |
| `archboki-evergarden-summer` | light | codeberg.org/evergarden/nvim, verbatim |
| `archboki-dracula-pro` | dark | Caio Vellani's free "Dracula Pro Version", verbatim |
| `archboki-dracula-pro-black` | dark | same, black variant |

## Gotchas / hard-won lessons

1. **Face priority is first-registered-wins, not last.** When a
   theme file calls `custom-theme-set-faces` more than once for the
   same face (e.g. a per-theme override plus the shared engine's
   call), the **first call in file-load order wins**, not the last.
   Any per-theme face override must be placed *before* the
   `archboki-themes--set-faces` call in the file.
2. **Partial face specs don't merge across calls.** If the winning
   (first) `custom-theme-set-faces` call only sets `:background`,
   the `:foreground` is `unspecified` — it does NOT fall through to
   a later call's `:foreground`. Always repeat every attribute you
   need in the override, not just the one you're changing.
3. **The engine's `mode-line` face used to use `.background` as the
   text color** (works only when the modeline's `darkblue` panel is
   *darker* than the frame, as in dark themes). This was fixed to
   use `.foreground` — it was silently producing ~1.15:1 (invisible)
   contrast on every theme, including the original `archboki-dark`,
   until this session.
4. **Ported accent palettes assume their original background.**
   Everforest's accent colors were tuned for a near-white bg; when
   `archboki-light`/`archboki-light-2` moved to a saturated
   olive/sage background, every accent color's contrast collapsed
   (~1.5-2:1). The fix was retuning the accents themselves (darkened
   via HSL to hit ~4.5:1+), not the background. If a future theme's
   background is edited independently of its accent source, check
   contrast — don't assume inherited colors still work.
5. **When porting a third-party palette that uses alpha-transparent
   overlay colors** (e.g. Dracula Pro's `#9580FF95` selection), Emacs
   faces can't alpha-composite — compute the equivalent opaque blend
   over the background instead.
6. **Always credit the source** when porting a palette: name the
   upstream project/author in the file's Commentary and in the
   README, note the license (or its absence), and double-check
   whether something is actually free/open before porting it (e.g.
   the paid Dracula Pro product was correctly declined; Caio
   Vellani's free "Dracula Pro Version" was fine).
7. **`archboki-light`/`archboki-light-2` also have `doom-modeline-*`
   icon face overrides and a `minibuffer-prompt` override**,
   separately tuned against their modeline background (not the main
   background) — don't assume the base palette's `red`/`green`/etc.
   values apply everywhere; some faces are deliberately overridden
   per-theme.

## Session log

See `memory/session-log.md` for a dated history of what changed each
session.
