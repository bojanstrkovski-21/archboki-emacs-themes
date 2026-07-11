;;; archboki-evergarden-fall-theme.el --- Evergarden fall -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-emacs-themes
;; Package-Requires: ((emacs "27.1"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A port of the "fall" variant of the Evergarden colorscheme
;; (https://codeberg.org/evergarden/nvim), thanks to its authors for
;; designing and maintaining that palette. Colors are taken verbatim
;; from `lua/evergarden/palettes/fall.lua' in that repo. `blue' and
;; `darkblue' here map onto Evergarden's `surface2'/`mantle' rather
;; than its named `blue' hue, since the raw hue is too close in
;; lightness to `text' to work as a selection/panel background.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-evergarden-fall
  "Evergarden fall theme: cool dark background, pastel accents.
Palette ported from evergarden/nvim (codeberg.org/evergarden/nvim).")

(archboki-themes--set-faces
 'archboki-evergarden-fall
 '((background   . "#232a2e")
   (foreground   . "#f8f9e8")
   (red          . "#f57f82")
   (green        . "#cbe3b3")
   (yellow       . "#f5d098")
   (blue         . "#4a585c")
   (darkblue     . "#1c2225")
   (magenta      . "#d2bdf3")
   (cyan         . "#b3e3ca")
   (gray         . "#839e9a")
   (orange       . "#f7a182")
   (hint         . "#b2caed")
   (cursorline   . "#2b3337")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-evergarden-fall)

;;; archboki-evergarden-fall-theme.el ends here
