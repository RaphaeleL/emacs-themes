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
          ;; Additional colors
          (bg-1         . "#101010")   ;; Darker background
          (bg+1         . "#282828")   ;; Slightly lighter than bg
          (bg+2         . "#453d41")   ;; Even lighter
          (bg+3         . "#484848")   ;; Selection background variant
          (red-1        . "#c73c3f")   ;; Darker red
          (red+1        . "#ff4f58")   ;; Brighter red
          (fg+1         . "#f4f4ff")   ;; Lighter foreground
          (fg+2         . "#f5f5f5")   ;; Even lighter foreground
          (niagara-2    . "#303540")   ;; Dark niagara
          (niagara-1    . "#565f73")   ;; Medium niagara
          (niagara      . "#96a6c8")   ;; Blue
          (bg+4         . "#52494e")   ;; Warm grey (same as grey)
          (quartz       . "#95a99f")   ;; Muted blue/grey (same as blue)
          (wisteria     . "#9e95c7")   ;; Soft magenta (same as magenta)
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key) (or (cdr (assoc key gruberdarker-colors)) 'unspecified))))

  (custom-theme-set-variables
   'lr_gruberdarker
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces 'lr_gruberdarker

   ;; Basic faces
   `(default                                 ((,class :background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'fg))))
   `(cursor                                  ((,class :background ,(funcall safe-get-color 'cursor) :foreground ,(funcall safe-get-color 'cursor-txt))))
   `(region                                  ((,class :background ,(funcall safe-get-color 'selection))))
   `(highlight                               ((,class :background ,(funcall safe-get-color 'selection))))
   `(fringe                                  ((,class :background ,(funcall safe-get-color 'bg))))
   `(minibuffer-prompt                       ((,class :foreground ,(funcall safe-get-color 'yellow) :weight bold)))

   ;; Line number faces - main color for current line
   `(line-number                             ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(line-number-current-line                ((,class :foreground ,(funcall safe-get-color 'yellow) :weight bold)))
   `(line-number-major-tick                  ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(line-number-minor-tick                  ((,class :foreground ,(funcall safe-get-color 'grey))))

   ;; Font lock faces - carefully tuned for Gruber-darker style
   `(font-lock-bracket-face                  ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(font-lock-builtin-face                  ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(font-lock-comment-face                  ((,class :foreground ,(funcall safe-get-color 'brown) :slant italic)))
   `(font-lock-comment-delimiter-face        ((,class :foreground ,(funcall safe-get-color 'brown))))
   `(font-lock-constant-face                 ((,class :foreground ,(funcall safe-get-color 'blue))))
   `(font-lock-delimiter-face                ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(font-lock-doc-face                      ((,class :foreground ,(funcall safe-get-color 'green) :slant italic)))
   `(font-lock-doc-string-face               ((,class :foreground ,(funcall safe-get-color 'green) :slant italic)))
   `(font-lock-doc-markup-face               ((,class :foreground ,(funcall safe-get-color 'green) :weight bold)))
   `(font-lock-function-call-face            ((,class :foreground ,(funcall safe-get-color 'magenta))))
   `(font-lock-function-name-face            ((,class :foreground ,(funcall safe-get-color 'magenta))))
   `(font-lock-keyword-face                  ((,class :foreground ,(funcall safe-get-color 'yellow) :weight bold)))
   `(font-lock-negation-char-face            ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(font-lock-number-face                   ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(font-lock-operator-face                 ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-preprocessor-face             ((,class :foreground ,(funcall safe-get-color 'blue))))
   `(font-lock-property-name-face            ((,class :foreground ,(funcall safe-get-color 'blue))))
   `(font-lock-punctuation-face              ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-regexp-grouping-backreference ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-regexp-grouping-backslash     ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-regexp-grouping-construct     ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-reference-face                ((,class :foreground ,(funcall safe-get-color 'blue))))
   `(font-lock-string-face                   ((,class :foreground ,(funcall safe-get-color 'green))))
   `(font-lock-type-face                     ((,class :foreground ,(funcall safe-get-color 'quartz))))
   `(font-lock-variable-name-face            ((,class :foreground ,(funcall safe-get-color 'magenta))))
   `(font-lock-variable-use-face             ((,class :foreground ,(funcall safe-get-color 'magenta))))
   `(font-lock-warning-face                  ((,class :foreground ,(funcall safe-get-color 'red) :weight bold)))

   ;; Modeline faces - Gruber-darker style
   `(mode-line                               ((,class :background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'fg))))
   `(mode-line-inactive                      ((,class :background ,(funcall safe-get-color 'bg))))
   `(mode-line-highlight                     ((,class :background ,(funcall safe-get-color 'yellow) :weight bold)))
   `(mode-line-emphasis                      ((,class :weight bold)))
   `(mode-line-buffer-id                     ((,class :foreground ,(funcall safe-get-color 'yellow) :weight bold)))

   ;; Whitespace
   `(whitespace-space                        ((,class :background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'black))))
   `(whitespace-tab                          ((,class :background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'black))))
   `(whitespace-hspace                       ((,class :background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'black))))
   `(whitespace-line                         ((,class :background ,(funcall safe-get-color 'grey) :foreground ,(funcall safe-get-color 'red))))
   `(whitespace-newline                      ((,class :background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'black))))
   `(whitespace-trailing                     ((,class :background ,(funcall safe-get-color 'red) :foreground ,(funcall safe-get-color 'red))))
   `(whitespace-empty                        ((,class :background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'yellow))))
   `(whitespace-indentation                  ((,class :background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'red))))
   `(whitespace-space-after-tab              ((,class :background ,(funcall safe-get-color 'yellow) :foreground ,(funcall safe-get-color 'yellow))))
   `(whitespace-space-before-tab             ((,class :background ,(funcall safe-get-color 'grey) :foreground ,(funcall safe-get-color 'black))))

   ;; Basic Coloring (additional)
   `(border                                  ((,class :background ,(funcall safe-get-color 'bg-1) :foreground ,(funcall safe-get-color 'bg+2))))
   `(vertical-border                         ((,class :foreground ,(funcall safe-get-color 'bg+2))))
   `(link                                    ((,class :foreground ,(funcall safe-get-color 'niagara) :underline t)))
   `(link-visited                            ((,class :foreground ,(funcall safe-get-color 'wisteria) :underline t)))
   `(match                                   ((,class :background ,(funcall safe-get-color 'bg+4))))
   `(shadow                                  ((,class :foreground ,(funcall safe-get-color 'bg+4))))
   `(secondary-selection                     ((,class :background ,(funcall safe-get-color 'bg+3))))
   `(trailing-whitespace                     ((,class :foreground ,(funcall safe-get-color 'black) :background ,(funcall safe-get-color 'red))))
   `(tooltip                                 ((,class :background ,(funcall safe-get-color 'bg+4) :foreground ,(funcall safe-get-color 'white))))

   ;; Compilation
   `(compilation-info                        ((,class :foreground ,(funcall safe-get-color 'green))))
   `(compilation-warning                     ((,class :foreground ,(funcall safe-get-color 'brown) :weight bold)))
   `(compilation-error                       ((,class :foreground ,(funcall safe-get-color 'red+1))))
   `(compilation-mode-line-fail              ((,class :foreground ,(funcall safe-get-color 'red) :weight bold)))
   `(compilation-mode-line-exit              ((,class :foreground ,(funcall safe-get-color 'green) :weight bold)))

   ;; Completion
   `(completions-annotations                 ((,class :inherit shadow)))

   ;; Custom
   `(custom-state                            ((,class :foreground ,(funcall safe-get-color 'green))))

   ;; Diff
   `(diff-removed                            ((,class :foreground ,(funcall safe-get-color 'red+1) :background nil)))
   `(diff-added                              ((,class :foreground ,(funcall safe-get-color 'green) :background nil)))

   ;; Dired + DiredFL
   `(dired-directory                         ((,class :foreground ,(funcall safe-get-color 'blue) :weight bold)))
   `(dired-header                            ((,class :foreground ,(funcall safe-get-color 'blue) :weight bold)))
   `(dired-ignored                           ((,class :foreground ,(funcall safe-get-color 'quartz))))
   `(dired-flagged                           ((,class :foreground ,(funcall safe-get-color 'red) :weight bold)))
   `(dired-mark                              ((,class :foreground ,(funcall safe-get-color 'yellow) :weight bold)))
   `(dired-marked                            ((,class :foreground ,(funcall safe-get-color 'yellow) :weight bold)))
   ;; `(dired-ignored                        ((,class :foreground ,(funcall safe-get-color 'dired))))
   ;; `(dired-perm-write                     ((,class :foreground ,(funcall safe-get-color 'red))))
   ;; `(dired-warning                        ((,class :foreground ,(funcall safe-get-color 'red))))
   ;; `(dired-symlink                        ((,class :foreground ,(funcall safe-get-color 'red))))
   ;; `(dired-broken-symlink                 ((,class :foreground ,(funcall safe-get-color 'red))))

   `(diredfl-dir-heading                  ((,class :foreground ,(funcall safe-get-color 'blue) :weight bold)))
   `(diredfl-dir-name                     ((,class :foreground ,(funcall safe-get-color 'quartz) :weight bold)))
   `(diredfl-file-name                    ((,class :foreground ,(funcall safe-get-color 'weight))))
   `(diredfl-file-suffix                  ((,class :foreground ,(funcall safe-get-color 'weight))))
   `(diredfl-dir-priv                     ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(diredfl-exec-priv                    ((,class :foreground ,(funcall safe-get-color 'magenta))))
   `(diredfl-other-priv                   ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-rare-priv                    ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-read-priv                    ((,class :foreground ,(funcall safe-get-color 'quartz))))
   `(diredfl-link-priv                    ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-no-priv                      ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-write-priv                   ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(diredfl-date-time                    ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(diredfl-number                       ((,class :foreground ,(funcall safe-get-color 'quartz))))
   `(diredfl-deletion                     ((,class :foreground ,(funcall safe-get-color 'red) :weight bold)))
   `(diredfl-deletion-file-name           ((,class :foreground ,(funcall safe-get-color 'red) :weight bold)))
   `(diredfl-ignored-file-name            ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-symlink                      ((,class :foreground ,(funcall safe-get-color 'magenta))))
   `(diredfl-flag-mark                    ((,class :foreground ,(funcall safe-get-color 'magenta) :weight bold)))
   `(diredfl-flag-mark-line               ((,class :foreground ,(funcall safe-get-color 'magenta) :weight bold)))

   ;; `(diredfl-executable-tag               ((,class :foreground ,(funcall safe-get-color 'red))))
   ;; `(diredfl-tagged-autofile-name         ((,class :foreground ,(funcall safe-get-color 'red))))
   ;; `(diredfl-autofile-name                ((,class :foreground ,(funcall safe-get-color 'red))))
   ;; `(diredfl-compressed-file-name         ((,class :foreground ,(funcall safe-get-color 'red))))
   ;; `(diredfl-compressed-file-suffix       ((,class :foreground ,(funcall safe-get-color 'red))))

   ;; Ido
   `(ido-first-match                         ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(ido-only-match                          ((,class :foreground ,(funcall safe-get-color 'brown) :weight bold)))
   `(ido-subdir                              ((,class :foreground ,(funcall safe-get-color 'niagara) :weight bold)))

   ;; Info
   `(info-xref                               ((,class :foreground ,(funcall safe-get-color 'niagara))))
   `(info-visited                            ((,class :foreground ,(funcall safe-get-color 'wisteria))))

   ;; Line Highlighting
   `(highlight-current-line-face             ((,class :background ,(funcall safe-get-color 'bg+1))))

   ;; Magit
   `(magit-branch                            ((,class :foreground ,(funcall safe-get-color 'niagara))))
   `(magit-diff-hunk-header                  ((,class :background ,(funcall safe-get-color 'bg+2))))
   `(magit-diff-file-header                  ((,class :background ,(funcall safe-get-color 'bg+4))))
   `(magit-log-sha1                          ((,class :foreground ,(funcall safe-get-color 'red+1))))
   `(magit-log-author                        ((,class :foreground ,(funcall safe-get-color 'brown))))
   `(magit-log-head-label-remote             ((,class :foreground ,(funcall safe-get-color 'green) :background ,(funcall safe-get-color 'bg+1))))
   `(magit-log-head-label-local              ((,class :foreground ,(funcall safe-get-color 'niagara) :background ,(funcall safe-get-color 'bg+1))))
   `(magit-log-head-label-tags               ((,class :foreground ,(funcall safe-get-color 'yellow) :background ,(funcall safe-get-color 'bg+1))))
   `(magit-log-head-label-head               ((,class :foreground ,(funcall safe-get-color 'fg) :background ,(funcall safe-get-color 'bg+1))))
   `(magit-item-highlight                    ((,class :background ,(funcall safe-get-color 'bg+1))))
   `(magit-tag                               ((,class :foreground ,(funcall safe-get-color 'yellow) :background ,(funcall safe-get-color 'bg))))
   `(magit-blame-heading                     ((,class :background ,(funcall safe-get-color 'bg+1) :foreground ,(funcall safe-get-color 'fg))))

   ;; Search
   `(isearch                                 ((,class :foreground ,(funcall safe-get-color 'black) :background ,(funcall safe-get-color 'fg+2))))
   `(isearch-fail                            ((,class :foreground ,(funcall safe-get-color 'black) :background ,(funcall safe-get-color 'red))))
   `(isearch-lazy-highlight-face             ((,class :foreground ,(funcall safe-get-color 'fg+1) :background ,(funcall safe-get-color 'niagara-1))))

   ;; Sh
   `(sh-quoted-exec                          ((,class :foreground ,(funcall safe-get-color 'red+1))))

   ;; Show Paren
   `(show-paren-match-face                   ((,class :background ,(funcall safe-get-color 'bg+4))))
   `(show-paren-mismatch-face                ((,class :background ,(funcall safe-get-color 'red-1))))

   ;; company-mode
   `(company-tooltip                         ((,class :foreground ,(funcall safe-get-color 'fg) :background ,(funcall safe-get-color 'bg+1))))
   `(company-tooltip-annotation              ((,class :foreground ,(funcall safe-get-color 'brown) :background ,(funcall safe-get-color 'bg+1))))
   `(company-tooltip-annotation-selection    ((,class :foreground ,(funcall safe-get-color 'brown) :background ,(funcall safe-get-color 'bg-1))))
   `(company-tooltip-selection               ((,class :foreground ,(funcall safe-get-color 'fg) :background ,(funcall safe-get-color 'bg-1))))
   `(company-tooltip-mouse                   ((,class :background ,(funcall safe-get-color 'bg-1))))
   `(company-tooltip-common                  ((,class :foreground ,(funcall safe-get-color 'green))))
   `(company-tooltip-common-selection        ((,class :foreground ,(funcall safe-get-color 'green))))
   `(company-scrollbar-fg                    ((,class :background ,(funcall safe-get-color 'bg-1))))
   `(company-scrollbar-bg                    ((,class :background ,(funcall safe-get-color 'bg+2))))
   `(company-preview                         ((,class :background ,(funcall safe-get-color 'green))))
   `(company-preview-common                  ((,class :foreground ,(funcall safe-get-color 'green) :background ,(funcall safe-get-color 'bg-1))))

   ;; Orderless
   `(orderless-match-face-0                  ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(orderless-match-face-1                  ((,class :foreground ,(funcall safe-get-color 'green))))
   `(orderless-match-face-2                  ((,class :foreground ,(funcall safe-get-color 'brown))))
   `(orderless-match-face-3                  ((,class :foreground ,(funcall safe-get-color 'quartz))))

))


(provide-theme 'lr_gruberdarker)
