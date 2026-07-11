;;; archboki-everforest-dark-soft-theme.el --- Everforest dark, soft contrast -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-emacs-themes
;; Package-Requires: ((emacs "27.1"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A direct port of the Everforest dark (soft contrast) palette by
;; sainnhe (https://github.com/sainnhe/everforest), huge thanks to
;; sainnhe for designing and maintaining that colorscheme. Colors
;; are taken verbatim from `autoload/everforest.vim' in that repo;
;; only the mapping onto this collection's shared face engine is
;; original work.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-everforest-dark-soft
  "Everforest dark theme, soft contrast background.
Palette ported from sainnhe/everforest.")

(archboki-themes--set-faces
 'archboki-everforest-dark-soft
 '((background   . "#333c43")
   (foreground   . "#d3c6aa")
   (red          . "#e67e80")
   (green        . "#a7c080")
   (yellow       . "#dbbc7f")
   (blue         . "#3f5865")
   (darkblue     . "#293136")
   (magenta      . "#d699b6")
   (cyan         . "#83c092")
   (gray         . "#859289")
   (orange       . "#e69875")
   (hint         . "#7fbbb3")
   (cursorline   . "#3a464c")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-everforest-dark-soft)

;;; archboki-everforest-dark-soft-theme.el ends here
