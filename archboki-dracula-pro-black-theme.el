;;; archboki-dracula-pro-black-theme.el --- Dracula Pro Black (free) -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-emacs-themes
;; Package-Requires: ((emacs "27.1"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A port of the "Dracula Pro Black" variant of Caio Vellani's free
;; "Dracula Pro Version" VS Code theme
;; (https://github.com/caiovellani/dracula-pro), thanks to Caio for
;; publishing it. This is an independently authored free theme
;; "inspired by" the paid Dracula Pro product, not a port of the
;; paid product's own palette -- that upstream repo lists no
;; explicit license file. Its accent colors are the same hues as the
;; original free Dracula theme, over a true-black background.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-dracula-pro-black
  "Dracula Pro Black theme: true-black background, classic Dracula accents.
Palette ported from Caio Vellani's free Dracula Pro Version VS Code theme.")

(archboki-themes--set-faces
 'archboki-dracula-pro-black
 '((background   . "#000000")
   (foreground   . "#F8F8F2")
   (red          . "#FF5555")
   (green        . "#50FA7B")
   (yellow       . "#F1FA8C")
   (blue         . "#383549")
   (darkblue     . "#21222C")
   (magenta      . "#FF79C6")
   (cyan         . "#8BE9FD")
   (gray         . "#6272A4")
   (orange       . "#FFB86C")
   (hint         . "#BD93F9")
   (cursorline   . "#44475A")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-dracula-pro-black)

;;; archboki-dracula-pro-black-theme.el ends here
