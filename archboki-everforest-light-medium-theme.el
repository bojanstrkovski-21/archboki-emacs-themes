;;; archboki-everforest-light-medium-theme.el --- Everforest light, medium contrast -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-emacs-themes
;; Package-Requires: ((emacs "27.1") (archboki-themes "0.1.0"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; A direct port of the Everforest light (medium contrast) palette
;; by sainnhe (https://github.com/sainnhe/everforest), huge thanks
;; to sainnhe for designing and maintaining that colorscheme. Colors
;; are taken verbatim from `autoload/everforest.vim' in that repo;
;; only the mapping onto this collection's shared face engine, and
;; the modeline's green tint below, are original work.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-everforest-light-medium
  "Everforest light theme, medium contrast background.
Palette ported from sainnhe/everforest.")

;; Give the active modeline Everforest's own `bg_green' wash instead
;; of the engine's default panel color. Emacs themes give priority
;; to the first `custom-theme-set-faces' call for a given face, so
;; this override must be registered before `archboki-themes--set-faces'
;; below.
(custom-theme-set-faces
 'archboki-everforest-light-medium
 '(mode-line ((t (:foreground "#5c6a72" :background "#BDC3AF")))))

(archboki-themes--set-faces
 'archboki-everforest-light-medium
 '((background   . "#fdf6e3")
   (foreground   . "#5c6a72")
   (red          . "#f85552")
   (green        . "#8da101")
   (yellow       . "#dfa000")
   (blue         . "#e9f0e9")
   (darkblue     . "#efebd4")
   (magenta      . "#df69ba")
   (cyan         . "#35a77c")
   (gray         . "#939f91")
   (orange       . "#f57d26")
   (hint         . "#3a94c5")
   (cursorline   . "#f4f0d9")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-everforest-light-medium)

;;; archboki-everforest-light-medium-theme.el ends here
