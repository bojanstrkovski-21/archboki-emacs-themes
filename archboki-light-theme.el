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
;; a soft sage/green-tinted white rather than pure white. Syntax
;; accent colors not present in that file (red, green, yellow,
;; orange, magenta, cyan, gray, hint) are filled in from the
;; Everforest Light palette (medium contrast) by sainnhe/everforest,
;; chosen for good legibility on a light background.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-light
  "Light theme with sage-tinted white background and Everforest-derived accents.
Merged from default_light.xaml (UI chrome) and Everforest Light
(syntax accents).")

;; Give the active modeline a soft green tint (echoing the
;; Everforest-derived green accent used elsewhere, e.g. Doom's
;; dashboard shortcuts) instead of the engine's default sage-grey
;; panel color. The engine's raw accent colors (orange/cyan/green/red)
;; are all near-invisible against this olive modeline background, so
;; the doom-modeline icon faces get darkened, higher-contrast
;; variants here too. Emacs themes give priority to the first
;; `custom-theme-set-faces' call for a given face, so this override
;; must be registered before `archboki-themes--set-faces' below.
(custom-theme-set-faces
 'archboki-light
 '(mode-line ((t (:foreground "#1A1A1A" :background "#a6ad78"))))
 '(minibuffer-prompt ((t (:foreground "#1A523D"))))
 '(doom-modeline-buffer-modified ((t (:foreground "#7C3806" :bold t))))
 '(doom-modeline-project-dir ((t (:foreground "#1A523D" :bold t))))
 '(doom-modeline-info ((t (:foreground "#394100"))))
 '(doom-modeline-warning ((t (:foreground "#7C3806"))))
 '(doom-modeline-urgent ((t (:foreground "#AA0A07")))))

(archboki-themes--set-faces
 'archboki-light
 '((background   . "#c9d4b8")
   (foreground   . "#1A1A1A")
   (red          . "#F85552")
   (green        . "#8DA101")
   (yellow       . "#DFA000")
   (blue         . "#0078D4")
   (darkblue     . "#E4E9DE")
   (magenta      . "#DF69BA")
   (cyan         . "#35A77C")
   (gray         . "#939F91")
   (orange       . "#F57D26")
   (hint         . "#3A94C5")
   (cursorline   . "#A7B98C")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-light)

;;; archboki-light-theme.el ends here
