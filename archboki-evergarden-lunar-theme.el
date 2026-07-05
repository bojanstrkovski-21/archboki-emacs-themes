;;; archboki-evergarden-lunar-theme.el --- Evergarden lunar -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-emacs-themes
;; Package-Requires: ((emacs "27.1") (archboki-themes "0.1.0"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A port of the "lunar" variant of the Evergarden colorscheme
;; (https://codeberg.org/evergarden/nvim), thanks to its authors for
;; designing and maintaining that palette. Colors are taken verbatim
;; from `lua/evergarden/palettes/lunar.lua' in that repo -- a bluer,
;; distinct accent set from winter/fall/spring (which all share one
;; accent palette). `blue' and `darkblue' here map onto Evergarden's
;; `surface2'/`mantle' rather than its named `blue' hue, since the
;; raw hue is too close in lightness to `text' to work as a
;; selection/panel background.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-evergarden-lunar
  "Evergarden lunar theme: cool dark background, bluer pastel accents.
Palette ported from evergarden/nvim (codeberg.org/evergarden/nvim).")

(archboki-themes--set-faces
 'archboki-evergarden-lunar
 '((background   . "#1C1D29")
   (foreground   . "#F7F1E6")
   (red          . "#EB7F86")
   (green        . "#C5D9B5")
   (yellow       . "#F7DDAF")
   (blue         . "#4C4F61")
   (darkblue     . "#171923")
   (magenta      . "#A69FD5")
   (cyan         . "#ACD1B6")
   (gray         . "#9EA5C1")
   (orange       . "#F5A58D")
   (hint         . "#99B3D5")
   (cursorline   . "#21232E")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-evergarden-lunar)

;;; archboki-evergarden-lunar-theme.el ends here
