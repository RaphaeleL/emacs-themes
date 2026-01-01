(deftheme lr_gruberdarker "Custom Variant of rexim/gruber-darker-theme")

(let* ((class '((class color) (min-colors 89)))
       (gruberdarker-colors
        '((bg           . "#181818")   ;; Deep, dark background
          (fg           . "#e4e4e4")   ;; Light grey text
          (cursor       . "#ffdd33")   ;; Main color: yellow
          (cursor-txt   . "#181818")   ;; Dark background for cursor text
          (selection    . "#2c2c2c")   ;; Slightly lighter than bg for selection
          (black        . "#282828")   ;; Softer black
          (grey         . "#52494e")   ;; Warm grey
          (red          . "#f43841")   ;; Vibrant red
          (green        . "#73d936")   ;; Bright green
          (yellow       . "#ffdd33")   ;; Warm yellow
          (brown        . "#cc8c3c")   ;; caramel brown
          (blue         . "#95a99f")   ;; Muted blue
          (magenta      . "#9e95c7")   ;; Soft magenta
          (cyan         . "#95a99f")   ;; Muted cyan
          (white        . "#e4e4e4")   ;; Light grey
          ;; Additional colors for compatibility with example theme
          (bg-1         . "#101010")   ;; Darker background
          (bg+1         . "#282828")   ;; Slightly lighter than bg
          (bg+2         . "#453d41")   ;; Even lighter
          (bg+3         . "#484848")   ;; Selection background variant
          (bg+4         . "#52494e")   ;; Warm grey (same as grey)
          (red-1        . "#c73c3f")   ;; Darker red
          (red+1        . "#ff4f58")   ;; Brighter red
          (fg+1         . "#f4f4ff")   ;; Lighter foreground
          (fg+2         . "#f5f5f5")   ;; Even lighter foreground
          (quartz       . "#95a99f")   ;; Muted blue/grey (same as blue)
          (niagara-2    . "#303540")   ;; Dark niagara
          (niagara-1    . "#565f73")   ;; Medium niagara
          (niagara      . "#96a6c8")   ;; Blue
          (wisteria     . "#9e95c7"))) ;; Soft magenta (same as magenta)

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key) (or (cdr (assoc key gruberdarker-colors)) 'unspecified))))

  (custom-theme-set-variables
   'lr_gruberdarker
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces 'lr_gruberdarker

   ;; Basic faces
   `(default ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'fg)))))
   `(cursor ((,class (:background ,(funcall safe-get-color 'cursor) :foreground ,(funcall safe-get-color 'cursor-txt)))))
   `(region ((,class (:background ,(funcall safe-get-color 'selection)))))
   `(highlight ((,class (:background ,(funcall safe-get-color 'selection)))))
   `(fringe ((,class (:background ,(funcall safe-get-color 'bg)))))
   `(minibuffer-prompt ((,class (:foreground ,(funcall safe-get-color 'yellow) :weight bold))))

   ;; Line number faces - main color for current line
   `(line-number ((,class (:inherit default :foreground ,(funcall safe-get-color 'grey)))))
   `(line-number-current-line ((,class (:inherit default :foreground ,(funcall safe-get-color 'yellow) :weight bold))))
   `(line-number-major-tick ((,class (:foreground ,(funcall safe-get-color 'grey)))))
   `(line-number-minor-tick ((,class (:foreground ,(funcall safe-get-color 'grey)))))

   ;; Font lock faces - carefully tuned for Gruber-darker style
   `(font-lock-builtin-face ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(font-lock-comment-face ((,class (:foreground ,(funcall safe-get-color 'brown) :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,(funcall safe-get-color 'brown)))))
   `(font-lock-constant-face ((,class (:foreground ,(funcall safe-get-color 'blue)))))
   `(font-lock-doc-face ((,class (:foreground ,(funcall safe-get-color 'green) :slant italic))))
   `(font-lock-doc-string-face ((,class (:foreground ,(funcall safe-get-color 'green) :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,(funcall safe-get-color 'blue)))))
   `(font-lock-keyword-face ((,class (:foreground ,(funcall safe-get-color 'yellow) :weight bold))))
   `(font-lock-preprocessor-face ((,class (:foreground ,(funcall safe-get-color 'blue)))))
   `(font-lock-reference-face ((,class (:foreground ,(funcall safe-get-color 'blue)))))
   `(font-lock-string-face ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(font-lock-type-face ((,class (:foreground ,(funcall safe-get-color 'blue)))))
   `(font-lock-variable-name-face ((,class (:foreground ,(funcall safe-get-color 'white)))))
   `(font-lock-warning-face ((,class (:foreground ,(funcall safe-get-color 'red) :weight bold))))

   ;; Modeline faces - Gruber-darker style
   `(mode-line ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'fg)))))
   `(mode-line-inactive ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'fg)))))
   `(mode-line-highlight ((,class (:background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'bg) :weight bold))))
   `(mode-line-emphasis ((,class (:weight bold))))
   `(mode-line-buffer-id ((,class (:foreground ,(funcall safe-get-color 'yellow) :weight bold))))

   ;; Whitespace
   `(whitespace-space ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'black)))))
   `(whitespace-tab ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'black)))))
   `(whitespace-hspace ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'black)))))
   `(whitespace-line ((,class (:background ,(funcall safe-get-color 'grey) :foreground ,(funcall safe-get-color 'red)))))
   `(whitespace-newline ((,class (:background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'black)))))
   `(whitespace-trailing ((,class (:background ,(funcall safe-get-color 'red) :foreground ,(funcall safe-get-color 'red)))))
   `(whitespace-empty ((,class (:background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'yellow)))))
   `(whitespace-indentation ((,class (:background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'red)))))
   `(whitespace-space-after-tab ((,class (:background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'yellow)))))
   `(whitespace-space-before-tab ((,class (:background ,(funcall safe-get-color 'grey) :foreground ,(funcall safe-get-color 'black)))))

   ;; Agda2
   `(agda2-highlight-datatype-face ((,class (:foreground ,(funcall safe-get-color 'quartz)))))
   `(agda2-highlight-primitive-type-face ((,class (:foreground ,(funcall safe-get-color 'quartz)))))
   `(agda2-highlight-function-face ((,class (:foreground ,(funcall safe-get-color 'niagara)))))
   `(agda2-highlight-keyword-face ((,class (:foreground ,(funcall safe-get-color 'yellow) :weight bold))))
   `(agda2-highlight-inductive-constructor-face ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(agda2-highlight-number-face ((,class (:foreground ,(funcall safe-get-color 'wisteria)))))

   ;; AUCTeX
   `(font-latex-bold-face ((,class (:foreground ,(funcall safe-get-color 'quartz) :weight bold))))
   `(font-latex-italic-face ((,class (:foreground ,(funcall safe-get-color 'quartz) :slant italic))))
   `(font-latex-math-face ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(font-latex-sectioning-5-face ((,class (:foreground ,(funcall safe-get-color 'niagara) :weight bold))))
   `(font-latex-slide-title-face ((,class (:foreground ,(funcall safe-get-color 'niagara)))))
   `(font-latex-string-face ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(font-latex-warning-face ((,class (:foreground ,(funcall safe-get-color 'red)))))

   ;; Basic Coloring (additional)
   `(border ((,class (:background ,(funcall safe-get-color 'bg-1) :foreground ,(funcall safe-get-color 'bg+2)))))
   `(vertical-border ((,class (:foreground ,(funcall safe-get-color 'bg+2)))))
   `(link ((,class (:foreground ,(funcall safe-get-color 'niagara) :underline t))))
   `(link-visited ((,class (:foreground ,(funcall safe-get-color 'wisteria) :underline t))))
   `(match ((,class (:background ,(funcall safe-get-color 'bg+4)))))
   `(shadow ((,class (:foreground ,(funcall safe-get-color 'bg+4)))))
   `(secondary-selection ((,class (:background ,(funcall safe-get-color 'bg+3)))))
   `(trailing-whitespace ((,class (:foreground ,(funcall safe-get-color 'black) :background ,(funcall safe-get-color 'red)))))
   `(tooltip ((,class (:background ,(funcall safe-get-color 'bg+4) :foreground ,(funcall safe-get-color 'white)))))

   ;; Calendar
   `(holiday-face ((,class (:foreground ,(funcall safe-get-color 'red)))))

   ;; Compilation
   `(compilation-info ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(compilation-warning ((,class (:foreground ,(funcall safe-get-color 'brown) :weight bold))))
   `(compilation-error ((,class (:foreground ,(funcall safe-get-color 'red+1)))))
   `(compilation-mode-line-fail ((,class (:foreground ,(funcall safe-get-color 'red) :weight bold))))
   `(compilation-mode-line-exit ((,class (:foreground ,(funcall safe-get-color 'green) :weight bold))))

   ;; Completion
   `(completions-annotations ((,class (:inherit shadow))))

   ;; Custom
   `(custom-state ((,class (:foreground ,(funcall safe-get-color 'green)))))

   ;; Diff
   `(diff-removed ((,class (:foreground ,(funcall safe-get-color 'red+1) :background nil))))
   `(diff-added ((,class (:foreground ,(funcall safe-get-color 'green) :background nil))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,(funcall safe-get-color 'niagara) :weight bold))))
   `(dired-ignored ((,class (:foreground ,(funcall safe-get-color 'quartz)))))

   ;; Ebrowse
   `(ebrowse-root-class ((,class (:foreground ,(funcall safe-get-color 'niagara) :weight bold))))
   `(ebrowse-progress ((,class (:background ,(funcall safe-get-color 'niagara)))))

   ;; Egg
   `(egg-branch ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(egg-branch-mono ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(egg-diff-add ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(egg-diff-del ((,class (:foreground ,(funcall safe-get-color 'red)))))
   `(egg-diff-file-header ((,class (:foreground ,(funcall safe-get-color 'wisteria)))))
   `(egg-help-header-1 ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(egg-help-header-2 ((,class (:foreground ,(funcall safe-get-color 'niagara)))))
   `(egg-log-HEAD-name ((,class (:box (:color ,(funcall safe-get-color 'fg))))))
   `(egg-reflog-mono ((,class (:foreground ,(funcall safe-get-color 'niagara-1)))))
   `(egg-section-title ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(egg-text-base ((,class (:foreground ,(funcall safe-get-color 'fg)))))
   `(egg-term ((,class (:foreground ,(funcall safe-get-color 'yellow)))))

   ;; ERC
   `(erc-notice-face ((,class (:foreground ,(funcall safe-get-color 'wisteria)))))
   `(erc-timestamp-face ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(erc-input-face ((,class (:foreground ,(funcall safe-get-color 'red+1)))))
   `(erc-my-nick-face ((,class (:foreground ,(funcall safe-get-color 'red+1)))))

   ;; EShell
   `(eshell-ls-backup ((,class (:foreground ,(funcall safe-get-color 'quartz)))))
   `(eshell-ls-directory ((,class (:foreground ,(funcall safe-get-color 'niagara)))))
   `(eshell-ls-executable ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(eshell-ls-symlink ((,class (:foreground ,(funcall safe-get-color 'yellow)))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,(funcall safe-get-color 'red))
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,(funcall safe-get-color 'red) :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,(funcall safe-get-color 'yellow))
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,(funcall safe-get-color 'yellow) :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,(funcall safe-get-color 'green))
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,(funcall safe-get-color 'green) :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,(funcall safe-get-color 'red)) :inherit unspecified))
      (t (:foreground ,(funcall safe-get-color 'red) :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,(funcall safe-get-color 'yellow)) :inherit unspecified))
      (t (:foreground ,(funcall safe-get-color 'yellow) :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((,class (:background ,(funcall safe-get-color 'bg+2) :foreground ,(funcall safe-get-color 'yellow) :weight bold))))
   `(helm-ff-directory ((,class (:foreground ,(funcall safe-get-color 'niagara) :background ,(funcall safe-get-color 'bg) :weight bold))))
   `(helm-ff-executable ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(helm-ff-file ((,class (:foreground ,(funcall safe-get-color 'fg)))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,(funcall safe-get-color 'bg) :background ,(funcall safe-get-color 'red)))))
   `(helm-ff-symlink ((,class (:foreground ,(funcall safe-get-color 'yellow) :weight bold))))
   `(helm-selection-line ((,class (:background ,(funcall safe-get-color 'bg+1)))))
   `(helm-selection ((,class (:background ,(funcall safe-get-color 'bg+1) :underline nil))))
   `(helm-source-header ((,class (:foreground ,(funcall safe-get-color 'yellow) :background ,(funcall safe-get-color 'bg) :box (:line-width -1 :style released-button)))))

   ;; Ido
   `(ido-first-match ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(ido-only-match ((,class (:foreground ,(funcall safe-get-color 'brown) :weight bold))))
   `(ido-subdir ((,class (:foreground ,(funcall safe-get-color 'niagara) :weight bold))))

   ;; Info
   `(info-xref ((,class (:foreground ,(funcall safe-get-color 'niagara)))))
   `(info-visited ((,class (:foreground ,(funcall safe-get-color 'wisteria)))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((,class (:foreground ,(funcall safe-get-color 'quartz)))))
   `(jabber-chat-prompt-local ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(jabber-chat-prompt-system ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(jabber-rare-time-face ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(jabber-roster-user-online ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(jabber-activity-face ((,class (:foreground ,(funcall safe-get-color 'red)))))
   `(jabber-activity-personal-face ((,class (:foreground ,(funcall safe-get-color 'yellow) :weight bold))))

   ;; Line Highlighting
   `(highlight-current-line-face ((,class (:background ,(funcall safe-get-color 'bg+1)))))

   ;; Linum
   `(linum ((,class (:foreground ,(funcall safe-get-color 'quartz) :background ,(funcall safe-get-color 'bg)))))

   ;; Magit
   `(magit-branch ((,class (:foreground ,(funcall safe-get-color 'niagara)))))
   `(magit-diff-hunk-header ((,class (:background ,(funcall safe-get-color 'bg+2)))))
   `(magit-diff-file-header ((,class (:background ,(funcall safe-get-color 'bg+4)))))
   `(magit-log-sha1 ((,class (:foreground ,(funcall safe-get-color 'red+1)))))
   `(magit-log-author ((,class (:foreground ,(funcall safe-get-color 'brown)))))
   `(magit-log-head-label-remote ((,class (:foreground ,(funcall safe-get-color 'green) :background ,(funcall safe-get-color 'bg+1)))))
   `(magit-log-head-label-local ((,class (:foreground ,(funcall safe-get-color 'niagara) :background ,(funcall safe-get-color 'bg+1)))))
   `(magit-log-head-label-tags ((,class (:foreground ,(funcall safe-get-color 'yellow) :background ,(funcall safe-get-color 'bg+1)))))
   `(magit-log-head-label-head ((,class (:foreground ,(funcall safe-get-color 'fg) :background ,(funcall safe-get-color 'bg+1)))))
   `(magit-item-highlight ((,class (:background ,(funcall safe-get-color 'bg+1)))))
   `(magit-tag ((,class (:foreground ,(funcall safe-get-color 'yellow) :background ,(funcall safe-get-color 'bg)))))
   `(magit-blame-heading ((,class (:background ,(funcall safe-get-color 'bg+1) :foreground ,(funcall safe-get-color 'fg)))))

   ;; Message
   `(message-header-name ((,class (:foreground ,(funcall safe-get-color 'green)))))

   ;; Neo Dir
   `(neo-dir-link-face ((,class (:foreground ,(funcall safe-get-color 'niagara)))))

   ;; Org Mode
   `(org-agenda-structure ((,class (:foreground ,(funcall safe-get-color 'niagara)))))
   `(org-column ((,class (:background ,(funcall safe-get-color 'bg-1)))))
   `(org-column-title ((,class (:background ,(funcall safe-get-color 'bg-1) :underline t :weight bold))))
   `(org-done ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(org-todo ((,class (:foreground ,(funcall safe-get-color 'red-1)))))
   `(org-upcoming-deadline ((,class (:foreground ,(funcall safe-get-color 'yellow)))))

   ;; Search
   `(isearch ((,class (:foreground ,(funcall safe-get-color 'black) :background ,(funcall safe-get-color 'fg+2)))))
   `(isearch-fail ((,class (:foreground ,(funcall safe-get-color 'black) :background ,(funcall safe-get-color 'red)))))
   `(isearch-lazy-highlight-face ((,class (:foreground ,(funcall safe-get-color 'fg+1) :background ,(funcall safe-get-color 'niagara-1)))))

   ;; Sh
   `(sh-quoted-exec ((,class (:foreground ,(funcall safe-get-color 'red+1)))))

   ;; Show Paren
   `(show-paren-match-face ((,class (:background ,(funcall safe-get-color 'bg+4)))))
   `(show-paren-mismatch-face ((,class (:background ,(funcall safe-get-color 'red-1)))))

   ;; Slime
   `(slime-repl-inputed-output-face ((,class (:foreground ,(funcall safe-get-color 'red)))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((,class (:foreground ,(funcall safe-get-color 'yellow)))))

   ;; Speedbar
   `(speedbar-directory-face ((,class (:foreground ,(funcall safe-get-color 'niagara) :weight bold))))
   `(speedbar-file-face ((,class (:foreground ,(funcall safe-get-color 'fg)))))
   `(speedbar-highlight-face ((,class (:background ,(funcall safe-get-color 'bg+1)))))
   `(speedbar-selected-face ((,class (:foreground ,(funcall safe-get-color 'red)))))
   `(speedbar-tag-face ((,class (:foreground ,(funcall safe-get-color 'yellow)))))

   ;; Which Function
   `(which-func ((,class (:foreground ,(funcall safe-get-color 'wisteria)))))

   ;; tab-bar
   `(tab-bar ((,class (:background ,(funcall safe-get-color 'bg+1) :foreground ,(funcall safe-get-color 'bg+4)))))
   `(tab-bar-tab ((,class (:background nil :foreground ,(funcall safe-get-color 'yellow) :weight bold))))
   `(tab-bar-tab-inactive ((,class (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((,class (:foreground ,(funcall safe-get-color 'bg+3) :background ,(funcall safe-get-color 'bg+4)))))
   `(term-color-red ((,class (:foreground ,(funcall safe-get-color 'red-1) :background ,(funcall safe-get-color 'red-1)))))
   `(term-color-green ((,class (:foreground ,(funcall safe-get-color 'green) :background ,(funcall safe-get-color 'green)))))
   `(term-color-blue ((,class (:foreground ,(funcall safe-get-color 'niagara) :background ,(funcall safe-get-color 'niagara)))))
   `(term-color-yellow ((,class (:foreground ,(funcall safe-get-color 'yellow) :background ,(funcall safe-get-color 'yellow)))))
   `(term-color-magenta ((,class (:foreground ,(funcall safe-get-color 'wisteria) :background ,(funcall safe-get-color 'wisteria)))))
   `(term-color-cyan ((,class (:foreground ,(funcall safe-get-color 'quartz) :background ,(funcall safe-get-color 'quartz)))))
   `(term-color-white ((,class (:foreground ,(funcall safe-get-color 'fg) :background ,(funcall safe-get-color 'white)))))

   ;; company-mode
   `(company-tooltip ((,class (:foreground ,(funcall safe-get-color 'fg) :background ,(funcall safe-get-color 'bg+1)))))
   `(company-tooltip-annotation ((,class (:foreground ,(funcall safe-get-color 'brown) :background ,(funcall safe-get-color 'bg+1)))))
   `(company-tooltip-annotation-selection ((,class (:foreground ,(funcall safe-get-color 'brown) :background ,(funcall safe-get-color 'bg-1)))))
   `(company-tooltip-selection ((,class (:foreground ,(funcall safe-get-color 'fg) :background ,(funcall safe-get-color 'bg-1)))))
   `(company-tooltip-mouse ((,class (:background ,(funcall safe-get-color 'bg-1)))))
   `(company-tooltip-common ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(company-tooltip-common-selection ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(company-scrollbar-fg ((,class (:background ,(funcall safe-get-color 'bg-1)))))
   `(company-scrollbar-bg ((,class (:background ,(funcall safe-get-color 'bg+2)))))
   `(company-preview ((,class (:background ,(funcall safe-get-color 'green)))))
   `(company-preview-common ((,class (:foreground ,(funcall safe-get-color 'green) :background ,(funcall safe-get-color 'bg-1)))))

   ;; Proof General
   `(proof-locked-face ((,class (:background ,(funcall safe-get-color 'niagara-2)))))

   ;; Orderless
   `(orderless-match-face-0 ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(orderless-match-face-1 ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(orderless-match-face-2 ((,class (:foreground ,(funcall safe-get-color 'brown)))))
   `(orderless-match-face-3 ((,class (:foreground ,(funcall safe-get-color 'quartz)))))

))

(provide-theme 'lr_gruberdarker)
