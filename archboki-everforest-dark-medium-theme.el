;;; archboki-everforest-dark-medium-theme.el --- Everforest dark, medium contrast -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-emacs-themes
;; Package-Requires: ((emacs "27.1") (archboki-themes "0.1.0"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A direct port of the Everforest dark (medium contrast) palette by
;; sainnhe (https://github.com/sainnhe/everforest), huge thanks to
;; sainnhe for designing and maintaining that colorscheme. Colors
;; are taken verbatim from `autoload/everforest.vim' in that repo;
;; only the mapping onto this collection's shared face engine is
;; original work.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-everforest-dark-medium
  "Everforest dark theme, medium contrast background.
Palette ported from sainnhe/everforest.")

(archboki-themes--set-faces
 'archboki-everforest-dark-medium
 '((background   . "#2d353b")
   (foreground   . "#d3c6aa")
   (red          . "#e67e80")
   (green        . "#a7c080")
   (yellow       . "#dbbc7f")
   (blue         . "#3a515d")
   (darkblue     . "#232a2e")
   (magenta      . "#d699b6")
   (cyan         . "#83c092")
   (gray         . "#859289")
   (orange       . "#e69875")
   (hint         . "#7fbbb3")
   (cursorline   . "#343f44")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-everforest-dark-medium)

;;; archboki-everforest-dark-medium-theme.el ends here
