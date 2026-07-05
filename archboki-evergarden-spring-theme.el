;;; archboki-evergarden-spring-theme.el --- Evergarden spring -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-emacs-themes
;; Package-Requires: ((emacs "27.1") (archboki-themes "0.1.0"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A port of the "spring" variant of the Evergarden colorscheme
;; (https://codeberg.org/evergarden/nvim), thanks to its authors for
;; designing and maintaining that palette. Colors are taken verbatim
;; from `lua/evergarden/palettes/spring.lua' in that repo. `blue' and
;; `darkblue' here map onto Evergarden's `surface2'/`mantle' rather
;; than its named `blue' hue, since the raw hue is too close in
;; lightness to `text' to work as a selection/panel background.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-evergarden-spring
  "Evergarden spring theme: cool dark background, pastel accents.
Palette ported from evergarden/nvim (codeberg.org/evergarden/nvim).")

(archboki-themes--set-faces
 'archboki-evergarden-spring
 '((background   . "#2b3438")
   (foreground   . "#f8f9e8")
   (red          . "#f57f82")
   (green        . "#cbe3b3")
   (yellow       . "#f5d098")
   (blue         . "#4a585c")
   (darkblue     . "#232a2e")
   (magenta      . "#d2bdf3")
   (cyan         . "#b3e3ca")
   (gray         . "#839e9a")
   (orange       . "#f7a182")
   (hint         . "#b2caed")
   (cursorline   . "#343e43")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-evergarden-spring)

;;; archboki-evergarden-spring-theme.el ends here
