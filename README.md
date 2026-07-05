# archboki-themes-2026

A small collection of colorful, legible themes for GNU Emacs, ported from
my [archboki_nvim](https://github.com/bojanstrkovski-21/archboki_nvim)
Neovim colorscheme.

## Themes

| Name       | Style | Description                                              |
|------------|-------|-----------------------------------------------------------|
| `archboki-dark` | dark  | Slate-blue background with green foreground and neon cyan/magenta/yellow accents |
| `archboki-light` | light | White/grey background (from `default_light.xaml`) with Everforest Light accent colors |
| `archboki-light-2` | light | Second take on the light theme: dimmer sage-tinted background, green-tinted modeline |
| `archboki-everforest-dark-hard` | dark | [Everforest](https://github.com/sainnhe/everforest) dark, hard contrast, ported verbatim |
| `archboki-everforest-dark-medium` | dark | Everforest dark, medium contrast, ported verbatim |
| `archboki-everforest-dark-soft` | dark | Everforest dark, soft contrast, ported verbatim |
| `archboki-everforest-light-hard` | light | Everforest light, hard contrast, ported verbatim |
| `archboki-everforest-light-medium` | light | Everforest light, medium contrast, ported verbatim |
| `archboki-everforest-light-soft` | light | Everforest light, soft contrast, ported verbatim |
| `archboki-evergarden-winter` | dark | [Evergarden](https://codeberg.org/evergarden/nvim) winter, ported verbatim |
| `archboki-evergarden-fall` | dark | Evergarden fall, ported verbatim |
| `archboki-evergarden-spring` | dark | Evergarden spring, ported verbatim |
| `archboki-evergarden-lunar` | dark | Evergarden lunar (distinct bluer accents), ported verbatim |
| `archboki-evergarden-summer` | light | Evergarden summer, ported verbatim |
| `archboki-dracula-pro` | dark | [Dracula Pro Version](https://github.com/caiovellani/dracula-pro) (purple), ported verbatim |
| `archboki-dracula-pro-black` | dark | Dracula Pro Version, black variant, ported verbatim |

The `archboki-everforest-*` themes are direct ports of the color
palettes from [sainnhe/everforest](https://github.com/sainnhe/everforest)
(MIT licensed) — huge thanks to sainnhe for designing and maintaining
that colorscheme. Only the mapping onto this collection's shared face
engine is original work here.

The `archboki-evergarden-*` themes are direct ports of the color
palettes from [evergarden/nvim](https://codeberg.org/evergarden/nvim)
(EUPL-1.2 licensed) — huge thanks to its authors for designing and
maintaining that colorscheme. Only the mapping onto this collection's
shared face engine is original work here.

The `archboki-dracula-pro*` themes are direct ports of the color
palettes from Caio Vellani's free
[Dracula Pro Version](https://github.com/caiovellani/dracula-pro) VS
Code theme (no license file is published upstream) — thanks to Caio
for publishing it. Note this is an independently authored *free*
theme "inspired by" the paid Dracula Pro product, not a port of that
paid product's own palette. Only the mapping onto this collection's
shared face engine is original work here.

More variants may be added over time (see [Adding a new theme](#adding-a-new-theme) below).

Also you can find a lot more themes on https://github.com/tinted-theming/base16-emacs

## Installation

### Doom Emacs

In `packages.el`:

```elisp
(package! archboki-themes
  :recipe (:host github :repo "bojanstrkovski-21/archboki-emacs-themes"))
```

In `config.el`:

```elisp
(setq doom-theme 'archboki-dark)
```

Then run:

```
doom sync
```

and restart Emacs.

### use-package / straight.el

```elisp
(use-package archboki-themes
  :straight (:host github :repo "bojanstrkovski-21/archboki-emacs-themes")
  :config
  (load-theme 'archboki-dark t))
```

### Manual

Clone this repo somewhere on your `custom-theme-load-path`:

```bash
git clone https://github.com/bojanstrkovski-21/archboki-emacs-themes.git ~/.config/doom/themes/archboki-emacs-themes
```

```elisp
(add-to-list 'custom-theme-load-path "~/.config/doom/themes/archboki-emacs-themes/")
(load-theme 'archboki-dark t)
```

## Adding a new theme

Every theme in this collection shares one engine (`archboki-themes.el`),
which turns a palette alist into every face mapping. To add a new theme:

1. Copy `archboki-dark-theme.el` to `archboki-<name>-theme.el`.
2. Rename the `deftheme`/`provide-theme` symbol to `archboki-<name>`.
3. Change the palette values in the `archboki-themes--set-faces` call.
4. Update the table above in this README.

No face-mapping logic needs to change — it all lives in `archboki-themes.el`.

## License

GPL-3.0 (see `COPYING`).
