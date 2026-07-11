;;; archboki-dark-theme.el --- Dark theme with slate-blue background and neon accents -*- lexical-binding: t; no-byte-compile: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-themes
;; Package-Requires: ((emacs "27.1")

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Port of the archboki_nvim Neovim colorscheme.
;; A dark, low-saturation theme with a slate-blue background,
;; soft green foreground, and cyan/magenta/yellow accents.

;;; Code:

(require 'archboki-themes)

(deftheme archboki-dark
  "Dark theme with slate-blue background and neon accents.
Port of the archboki_nvim Neovim colorscheme.")

(archboki-themes--set-faces
 'archboki-dark
 '((background   . "#1d283a")
   (foreground   . "#c9e79a")
   (red          . "#FF5370")
   (green        . "#09b2ad")
   (yellow       . "#ff8800")
   (blue         . "#32446a")
   (darkblue     . "#141c2a")
   (magenta      . "#cc9fe9")
   (cyan         . "#98f6e3")
   (gray         . "#94a3b8")
   (orange       . "#F78C6C")
   (hint         . "#f8fafc")
   (cursorline   . "#28334a")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'archboki-dark)

;;; archboki-dark-theme.el ends here
