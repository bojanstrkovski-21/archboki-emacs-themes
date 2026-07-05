;;; archboki-dracula-pro-theme.el --- Dracula Pro (free) -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-emacs-themes
;; Package-Requires: ((emacs "27.1") (archboki-themes "0.1.0"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A port of the "Dracula Pro" (purple) variant of Caio Vellani's
;; free "Dracula Pro Version" VS Code theme
;; (https://github.com/caiovellani/dracula-pro), thanks to Caio for
;; publishing it. This is an independently authored free theme
;; "inspired by" the paid Dracula Pro product, not a port of the
;; paid product's own palette -- that upstream repo lists no
;; explicit license file. `blue' and `cursorline' here are opaque
;; equivalents computed from the source theme's semi-transparent
;; selection/line-highlight overlays (`#9580FF95' and `#32304095'
;; over the `#22212C' background), since Emacs faces don't
;; alpha-composite.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-dracula-pro
  "Dracula Pro (purple) theme: dark purple-grey background, neon pastel accents.
Palette ported from Caio Vellani's free Dracula Pro Version VS Code theme.")

(archboki-themes--set-faces
 'archboki-dracula-pro
 '((background   . "#22212C")
   (foreground   . "#F8F8F2")
   (red          . "#FF9580")
   (green        . "#8AFF80")
   (yellow       . "#FFFF80")
   (blue         . "#6559A7")
   (darkblue     . "#151320")
   (magenta      . "#FF80BF")
   (cyan         . "#80FFEA")
   (gray         . "#7970A9")
   (orange       . "#FFCA80")
   (hint         . "#9580FF")
   (cursorline   . "#2B2A38")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-dracula-pro)

;;; archboki-dracula-pro-theme.el ends here
