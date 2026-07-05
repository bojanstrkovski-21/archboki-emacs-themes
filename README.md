# archboki-themes-2026

A small collection of colorful, legible themes for GNU Emacs, ported from
my [archboki_nvim](https://github.com/bojanstrkovski-21/archboki_nvim)
Neovim colorscheme.

## Themes

| Name       | Style | Description                                              |
|------------|-------|-----------------------------------------------------------|
| `archboki` | dark  | Slate-blue background with green foreground and neon cyan/magenta/yellow accents |
| `archboki-light` | light | White/grey background (from `default_light.xaml`) with Everforest Light accent colors |

More variants may be added over time (see [Adding a new theme](#adding-a-new-theme) below).

## Installation

### Doom Emacs

In `packages.el`:

```elisp
(package! archboki-themes
  :recipe (:host github :repo "bojanstrkovski-21/archboki-emacs-themes"))
```

In `config.el`:

```elisp
(setq doom-theme 'archboki)
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
  (load-theme 'archboki t))
```

### Manual

Clone this repo somewhere on your `custom-theme-load-path`:

```bash
git clone https://github.com/bojanstrkovski-21/archboki-emacs-themes.git ~/.config/doom/themes/archboki-emacs-themes
```

```elisp
(add-to-list 'custom-theme-load-path "~/.config/doom/themes/archboki-emacs-themes/")
(load-theme 'archboki t)
```

## Adding a new theme

Every theme in this collection shares one engine (`archboki-themes.el`),
which turns a palette alist into every face mapping. To add a new theme:

1. Copy `archboki-theme.el` to `archboki-<name>-theme.el`.
2. Rename the `deftheme`/`provide-theme` symbol to `archboki-<name>`.
3. Change the palette values in the `archboki-themes--set-faces` call.
4. Update the table above in this README.

No face-mapping logic needs to change — it all lives in `archboki-themes.el`.

## License

GPL-3.0 (see `COPYING`).
