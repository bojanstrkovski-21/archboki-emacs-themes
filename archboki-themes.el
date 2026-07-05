;;; archboki-themes.el --- Shared engine for the archboki theme collection -*- lexical-binding: t; -*-

;; Author: bojanstrkovski-21
;; URL: https://github.com/bojanstrkovski-21/archboki-themes
;; Version: 0.1.0
;; Package-Requires: ((emacs "27.1"))
;; Keywords: faces, theme

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This file provides the shared logic used by every theme in the
;; archboki-themes collection.  Each individual theme file (e.g.
;; `archboki-theme.el') defines only a PALETTE alist of semantic
;; color names, then calls `archboki-themes--set-faces' with that
;; palette to generate every face mapping.
;;
;; To add a new theme to the collection:
;;   1. Copy an existing `archboki-<name>-theme.el' file.
;;   2. Change the palette values and `deftheme' name/docstring.
;;   3. Nothing else needs to change -- all face logic lives here.

;;; Code:

(require 'let-alist)

(defgroup archboki-themes ()
  "Options for the archboki-themes collection."
  :group 'faces
  :prefix "archboki-themes-")

(defun archboki-themes--set-faces (theme-name palette)
  "Apply the archboki-themes face mappings for THEME-NAME using PALETTE.
PALETTE is an alist of the form ((background . \"#1d283a\") ...).
Every theme in the collection must supply the same set of keys:
background, foreground, red, green, yellow, blue, darkblue,
magenta, cyan, gray, orange, hint, cursorline."
  (let-alist palette
    (custom-theme-set-faces
     theme-name

     ;; --- Core UI -----------------------------------------------------
     `(default ((t (:foreground ,.foreground :background ,.background))))
     `(cursor ((t (:background ,.yellow))))
     `(fringe ((t (:background ,.background))))
     `(vertical-border ((t (:foreground ,.background :background ,.background))))
     `(window-divider ((t (:foreground ,.background))))
     `(minibuffer-prompt ((t (:foreground ,.cyan))))

     ;; Popups / floats
     `(tooltip ((t (:foreground ,.foreground :background ,.background))))
     `(child-frame-border ((t (:background ,.foreground))))

     ;; Keycap hints in prompts (e.g. the "y"/"n" in y-or-n-p
     ;; confirmations). Left unset this falls back to Emacs's built-in
     ;; grey96/grey80 keycap box, which clashes with every theme here.
     `(help-key-binding ((t (:foreground ,.foreground :background ,.darkblue
                             :box (:line-width (-1 . -1) :color ,.gray)))))

     ;; Search
     `(isearch ((t (:foreground ,.background :background ,.cyan))))
     `(lazy-highlight ((t (:foreground ,.background :background ,.cyan))))
     `(evil-ex-search ((t (:foreground ,.background :background ,.cyan))))

     ;; Modeline
     `(mode-line ((t (:foreground ,.foreground :background ,.darkblue))))
     `(mode-line-inactive ((t (:foreground ,.gray :background ,.darkblue))))
     `(mode-line-buffer-id ((t (:foreground ,.foreground :bold t))))

     ;; Line numbers / gutters
     `(line-number ((t (:foreground ,.blue :background ,.background))))
     `(line-number-current-line ((t (:foreground ,.yellow :background ,.cursorline :bold t))))
     `(sign-column ((t (:background ,.background))))

     ;; Cursor line / selection
     `(hl-line ((t (:background ,.cursorline))))
     `(region ((t (:background ,.blue))))
     `(secondary-selection ((t (:background ,.blue))))

     ;; Errors / warnings
     `(error ((t (:foreground ,.red :bold t))))
     `(warning ((t (:foreground ,.orange))))
     `(success ((t (:foreground ,.green))))

     ;; --- font-lock (syntax highlighting) ------------------------------
     `(font-lock-comment-face ((t (:foreground ,.gray :italic t))))
     `(font-lock-comment-delimiter-face ((t (:foreground ,.gray :italic t))))
     `(font-lock-string-face ((t (:foreground ,.green))))
     `(font-lock-constant-face ((t (:foreground ,.magenta))))
     `(font-lock-keyword-face ((t (:foreground ,.cyan))))
     `(font-lock-function-name-face ((t (:foreground ,.yellow))))
     `(font-lock-variable-name-face ((t (:foreground ,.foreground))))
     `(font-lock-type-face ((t (:foreground ,.cyan))))
     `(font-lock-builtin-face ((t (:foreground ,.red))))
     `(font-lock-preprocessor-face ((t (:foreground ,.red))))
     `(font-lock-warning-face ((t (:foreground ,.orange :bold t))))
     `(font-lock-negation-char-face ((t (:foreground ,.red))))
     `(font-lock-doc-face ((t (:foreground ,.gray :italic t))))

     ;; --- tree-sitter faces --------------------------------------------
     `(tree-sitter-hl-face:keyword ((t (:foreground ,.red))))
     `(tree-sitter-hl-face:function ((t (:foreground ,.yellow))))
     `(tree-sitter-hl-face:variable ((t (:foreground ,.foreground))))
     `(tree-sitter-hl-face:type ((t (:foreground ,.cyan))))
     `(tree-sitter-hl-face:string ((t (:foreground ,.green))))
     `(tree-sitter-hl-face:comment ((t (:foreground ,.gray :italic t))))

     ;; --- diagnostics (flymake) ------------------------------------------
     `(flymake-error ((t (:underline (:style wave :color ,.red)))))
     `(flymake-warning ((t (:underline (:style wave :color ,.orange)))))
     `(flymake-note ((t (:underline (:style wave :color ,.green)))))

     ;; --- diagnostics (flycheck) ------------------------------------------
     `(flycheck-error ((t (:underline (:style wave :color ,.red)))))
     `(flycheck-warning ((t (:underline (:style wave :color ,.orange)))))
     `(flycheck-info ((t (:underline (:style wave :color ,.green)))))

     ;; --- LSP / eglot diagnostics -----------------------------------------
     `(lsp-flycheck-error-unnecessary-face ((t (:foreground ,.red))))
     `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground ,.gray))))

     ;; --- Diff / VC ------------------------------------------------------
     `(diff-added ((t (:foreground ,.green))))
     `(diff-removed ((t (:foreground ,.red))))
     `(diff-changed ((t (:foreground ,.orange))))
     `(vc-edited-state ((t (:foreground ,.orange))))
     `(vc-locally-added-state ((t (:foreground ,.green))))

     ;; --- Doom modeline / doom-specific -----------------------------------
     `(doom-modeline-buffer-file ((t (:foreground ,.foreground :bold t))))
     `(doom-modeline-buffer-modified ((t (:foreground ,.orange :bold t))))
     `(doom-modeline-project-dir ((t (:foreground ,.cyan :bold t))))
     `(doom-modeline-info ((t (:foreground ,.green))))
     `(doom-modeline-warning ((t (:foreground ,.orange))))
     `(doom-modeline-urgent ((t (:foreground ,.red))))

     ;; --- company / corfu completion ---------------------------------------
     `(company-tooltip ((t (:foreground ,.foreground :background ,.darkblue))))
     `(company-tooltip-selection ((t (:background ,.blue))))
     `(company-tooltip-common ((t (:foreground ,.cyan))))
     `(company-scrollbar-bg ((t (:background ,.darkblue))))
     `(company-scrollbar-fg ((t (:background ,.blue))))
     `(corfu-default ((t (:foreground ,.foreground :background ,.darkblue))))
     `(corfu-current ((t (:background ,.blue))))

     ;; --- vertico / consult / orderless --------------------------------------
     `(vertico-current ((t (:background ,.cursorline))))
     `(orderless-match-face-0 ((t (:foreground ,.cyan :bold t))))
     `(orderless-match-face-1 ((t (:foreground ,.magenta :bold t))))
     `(orderless-match-face-2 ((t (:foreground ,.yellow :bold t))))
     `(consult-preview-line ((t (:background ,.cursorline))))

     ;; --- which-key -----------------------------------------------------
     `(which-key-key-face ((t (:foreground ,.yellow))))
     `(which-key-command-description-face ((t (:foreground ,.foreground))))

     ;; --- link / misc -----------------------------------------------------
     `(link ((t (:foreground ,.cyan :underline t))))
     `(shadow ((t (:foreground ,.gray))))
     `(match ((t (:foreground ,.background :background ,.cyan)))))))

(provide 'archboki-themes)
;;; archboki-themes.el ends here
