;;; archboki-evergarden-summer-theme.el --- Evergarden summer -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-emacs-themes
;; Package-Requires: ((emacs "27.1"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A port of the "summer" (light) variant of the Evergarden
;; colorscheme (https://codeberg.org/evergarden/nvim), thanks to its
;; authors for designing and maintaining that palette. Colors are
;; taken verbatim from `lua/evergarden/palettes/summer.lua' in that
;; repo. Note: in the source palette itself the accent colors (red,
;; orange, yellow, green, aqua, purple) only reach ~2-2.6:1 contrast
;; against `base' -- a soft, low-contrast pastel look that is a
;; deliberate characteristic of this variant, not a porting mistake.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-evergarden-summer
  "Evergarden summer theme: warm light background, soft pastel accents.
Palette ported from evergarden/nvim (codeberg.org/evergarden/nvim).")

(archboki-themes--set-faces
 'archboki-evergarden-summer
 '((background   . "#F5EFE6")
   (foreground   . "#2B3034")
   (red          . "#C58687")
   (green        . "#91A77A")
   (yellow       . "#C4AA80")
   (blue         . "#CECCBD")
   (darkblue     . "#F2EAE1")
   (magenta      . "#A897B8")
   (cyan         . "#74A48B")
   (gray         . "#707D76")
   (orange       . "#C69883")
   (hint         . "#8294AD")
   (cursorline   . "#EDE8DD")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-evergarden-summer)

;;; archboki-evergarden-summer-theme.el ends here
