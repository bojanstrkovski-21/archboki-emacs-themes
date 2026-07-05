;;; archboki-light-theme.el --- Light theme, merged from default_light.xaml and Everforest Light -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-emacs-themes
;; Package-Requires: ((emacs "27.1") (archboki-themes "0.1.0"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Light variant of the archboki theme family.
;; UI chrome (foreground, modeline, cursorline, accent blue) is
;; taken from the `default_light.xaml' resource dictionary used in
;; the system-pkgs-checker project, with the background shifted to
;; a dimmed sage/green-tinted tone rather than pure white. Syntax
;; accent colors not present in that file (red, green, yellow,
;; orange, magenta, cyan, gray, hint) are filled in from the
;; Everforest Light palette (medium contrast) by sainnhe/everforest,
;; chosen for good legibility on a light background.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-light
  "Light theme with dimmed sage-tinted background and Everforest-derived accents.
Merged from default_light.xaml (UI chrome) and Everforest Light
(syntax accents).")

;; The shared engine's generic `mode-line' face uses the main
;; background color as foreground text (a scheme that only works
;; when the modeline background is darker than the frame, as in the
;; dark theme). On this light theme that left near-white text on a
;; near-white modeline, so override it here with a legible dark
;; foreground. Emacs themes give priority to the first
;; `custom-theme-set-faces' call for a given face, so this override
;; must be registered before `archboki-themes--set-faces' below.
(custom-theme-set-faces
 'archboki-light
 '(mode-line ((t (:foreground "#1A1A1A" :background "#D7DCCE"))))
 '(mode-line-inactive ((t (:foreground "#939F91" :background "#E6EAE0")))))

(archboki-themes--set-faces
 'archboki-light
 '((background   . "#E6EAE0")
   (foreground   . "#1A1A1A")
   (red          . "#F85552")
   (green        . "#8DA101")
   (yellow       . "#DFA000")
   (blue         . "#0078D4")
   (darkblue     . "#D7DCCE")
   (magenta      . "#DF69BA")
   (cyan         . "#35A77C")
   (gray         . "#939F91")
   (orange       . "#F57D26")
   (hint         . "#3A94C5")
   (cursorline   . "#DEE3D6")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-light)

;;; archboki-light-theme.el ends here
