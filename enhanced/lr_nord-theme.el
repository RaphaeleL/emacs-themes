(deftheme lr_nord
  "Nord theme - An arctic, north-bluish color palette.")

(let* ((class '((class color) (min-colors 89)))
       (nord-colors
        '(
          (bg         . "#2e3440")  ;; Nord background
          (fg         . "#eceff4")  ;; Nord foreground
          (cursor     . "#5e81ac")  ;; Main color: blue
          (cursor-txt . "#2e3440")  ;; Nord cursor text
          (selection  . "#434c5e")  ;; Nord selection
          (selection-fg . "#eceff4")  ;; Nord selection fg
          (black      . "#2e3440")  ;; Nord black
          (red        . "#bf616a")  ;; Nord red
          (green      . "#a3be8c")  ;; Nord green
          (yellow     . "#ebcb8b")  ;; Nord yellow
          (blue       . "#5e81ac")  ;; Nord blue - MAIN COLOR
          (magenta    . "#b48ead")  ;; Nord magenta
          (cyan       . "#88c0d0")  ;; Nord cyan
          (white      . "#eceff4")  ;; Nord white
          (br-black   . "#4c566a")  ;; Nord comment
          (br-red     . "#bf616a")  ;; Nord bright red
          (br-green   . "#a3be8c")  ;; Nord bright green
          (br-yellow  . "#ebcb8b")  ;; Nord bright yellow
          (br-blue    . "#5e81ac")  ;; Nord bright blue
          (br-magenta . "#b48ead")  ;; Nord bright magenta
          (br-cyan    . "#88c0d0")  ;; Nord bright cyan
          (br-white   . "#eceff4")  ;; Nord bright white
          ;; Additional colors
          (bg-1         . "#1e2024")   ;; Darker background
          (bg+1         . "#3e4044")   ;; Slightly lighter than bg
          (bg+2         . "#4e5054")   ;; Even lighter
          (bg+3         . "#5e6064")   ;; Selection background variant
          (bg+4         . "#6e7074")   ;; Warm grey
          (red-1        . "#984d4f")   ;; Darker red
          (red+1        . "#e6717a")   ;; Brighter red
          (fg+1         . "#fceff4")   ;; Lighter foreground
          (fg+2         . "#ffffff")   ;; Even lighter foreground
          (grey         . "#4c566a")   ;; Grey
          (brown        . "#ebcb8b")   ;; Brown (same as yellow)
          (niagara-2    . "#2a2f3c")   ;; Dark niagara
          (niagara-1    . "#4a5f7c")   ;; Medium niagara
          (niagara      . "#5e81ac")   ;; Blue (same as br-blue)
          (quartz       . "#5e81ac")   ;; Blue (same as br-blue)
          (wisteria     . "#b48ead")   ;; Magenta (same as br-magenta)
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key nord-colors)) 'unspecified))))

  (custom-theme-set-variables
   'lr_nord
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'lr_nord

   ;; Basic faces
   `(default ((,class (:background ,(funcall safe-get-color 'bg)
                                   :foreground ,(funcall safe-get-color 'fg)))))
   `(cursor ((,class (:background ,(funcall safe-get-color 'cursor)
                                  :foreground ,(funcall safe-get-color 'cursor-txt)))))
   `(region ((,class (:background ,(funcall safe-get-color 'selection)
                                  :foreground ,(funcall safe-get-color 'selection-fg)))))
   `(highlight ((,class (:background ,(funcall safe-get-color 'selection)))))
   `(fringe ((,class (:background ,(funcall safe-get-color 'bg)))))
   `(minibuffer-prompt ((,class (:foreground ,(funcall safe-get-color 'blue)
                                             :weight bold))))
   ;; `(show-paren-match ((,class (:background ,(funcall safe-get-color 'br-blue)
   ;;                                          :foreground ,(funcall safe-get-color 'bg)
   ;;                                          :weight bold))))
   ;; `(show-paren-mismatch ((,class (:background ,(funcall safe-get-color 'red)
   ;;                                             :foreground ,(funcall safe-get-color 'bg)
   ;;                                             :weight bold))))

   ;; Line number faces - main color for current line
   `(line-number                             ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(line-number-current-line                ((,class :foreground ,(funcall safe-get-color 'blue) :weight bold)))
   `(line-number-major-tick                  ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(line-number-minor-tick                  ((,class :foreground ,(funcall safe-get-color 'grey))))

   ;; Font lock faces - carefully tuned for Nord style
   `(font-lock-bracket-face                  ((,class :foreground ,(funcall safe-get-color 'blue))))
   `(font-lock-builtin-face                  ((,class :foreground ,(funcall safe-get-color 'cyan))))
   `(font-lock-comment-face                  ((,class :foreground ,(funcall safe-get-color 'br-black) :slant italic)))
   `(font-lock-comment-delimiter-face        ((,class :foreground ,(funcall safe-get-color 'br-black))))
   `(font-lock-constant-face                 ((,class :foreground ,(funcall safe-get-color 'magenta))))
   `(font-lock-delimiter-face                ((,class :foreground ,(funcall safe-get-color 'blue))))
   `(font-lock-doc-face                      ((,class :foreground ,(funcall safe-get-color 'br-black) :slant italic)))
   `(font-lock-doc-string-face               ((,class :foreground ,(funcall safe-get-color 'yellow) :slant italic)))
   `(font-lock-doc-markup-face               ((,class :foreground ,(funcall safe-get-color 'yellow) :weight bold)))
   `(font-lock-function-call-face            ((,class :foreground ,(funcall safe-get-color 'green))))
   `(font-lock-function-name-face            ((,class :foreground ,(funcall safe-get-color 'green))))
   `(font-lock-keyword-face                  ((,class :foreground ,(funcall safe-get-color 'magenta) :weight bold)))
   `(font-lock-negation-char-face            ((,class :foreground ,(funcall safe-get-color 'blue))))
   `(font-lock-number-face                   ((,class :foreground ,(funcall safe-get-color 'blue))))
   `(font-lock-operator-face                 ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-preprocessor-face             ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-property-name-face            ((,class :foreground ,(funcall safe-get-color 'blue))))
   `(font-lock-punctuation-face              ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-regexp-grouping-backreference ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-regexp-grouping-backslash     ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-regexp-grouping-construct     ((,class :foreground ,(funcall safe-get-color 'red))))
   `(font-lock-reference-face                ((,class :foreground ,(funcall safe-get-color 'blue))))
   `(font-lock-string-face                   ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(font-lock-type-face                     ((,class :foreground ,(funcall safe-get-color 'quartz))))
   `(font-lock-variable-name-face            ((,class :foreground ,(funcall safe-get-color 'br-white))))
   `(font-lock-variable-use-face             ((,class :foreground ,(funcall safe-get-color 'br-white))))
   `(font-lock-warning-face                  ((,class :foreground ,(funcall safe-get-color 'red) :weight bold)))

   ;; Modeline faces - Nord style
   `(mode-line                               ((,class :background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'fg))))
   `(mode-line-inactive                      ((,class :background ,(funcall safe-get-color 'bg))))
   `(mode-line-highlight                     ((,class :background ,(funcall safe-get-color 'blue) :weight bold)))
   `(mode-line-emphasis                      ((,class :weight bold)))
   `(mode-line-buffer-id                     ((,class :foreground ,(funcall safe-get-color 'yellow) :weight bold)))

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
   `(diff-removed                            ((,class :foreground ,(funcall safe-get-color 'red+1) :background unspecified)))
   `(diff-added                              ((,class :foreground ,(funcall safe-get-color 'green) :background unspecified)))

   ;; Dired + DiredFL
   `(dired-directory                         ((,class :foreground ,(funcall safe-get-color 'blue) :weight bold)))
   `(dired-header                            ((,class :foreground ,(funcall safe-get-color 'blue) :weight bold)))
   `(dired-ignored                           ((,class :foreground ,(funcall safe-get-color 'quartz))))
   `(dired-flagged                           ((,class :foreground ,(funcall safe-get-color 'red) :weight bold)))
   `(dired-mark                              ((,class :foreground ,(funcall safe-get-color 'yellow) :weight bold)))
   `(dired-marked                            ((,class :foreground ,(funcall safe-get-color 'yellow) :weight bold)))
   `(diredfl-dir-heading                     ((,class :foreground ,(funcall safe-get-color 'blue) :weight bold)))
   `(diredfl-dir-name                        ((,class :foreground ,(funcall safe-get-color 'quartz) :weight bold)))
   `(diredfl-file-name                       ((,class :foreground ,(funcall safe-get-color 'fg))))
   `(diredfl-file-suffix                     ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-dir-priv                        ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(diredfl-exec-priv                       ((,class :foreground ,(funcall safe-get-color 'magenta))))
   `(diredfl-other-priv                      ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-rare-priv                       ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-read-priv                       ((,class :foreground ,(funcall safe-get-color 'quartz))))
   `(diredfl-link-priv                       ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-no-priv                         ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-write-priv                      ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(diredfl-date-time                       ((,class :foreground ,(funcall safe-get-color 'yellow))))
   `(diredfl-number                          ((,class :foreground ,(funcall safe-get-color 'quartz))))
   `(diredfl-deletion                        ((,class :foreground ,(funcall safe-get-color 'red) :weight bold)))
   `(diredfl-deletion-file-name              ((,class :foreground ,(funcall safe-get-color 'red) :weight bold)))
   `(diredfl-ignored-file-name               ((,class :foreground ,(funcall safe-get-color 'grey))))
   `(diredfl-symlink                         ((,class :foreground ,(funcall safe-get-color 'magenta))))
   `(diredfl-flag-mark                       ((,class :foreground ,(funcall safe-get-color 'magenta) :weight bold)))
   `(diredfl-flag-mark-line                  ((,class :foreground ,(funcall safe-get-color 'magenta) :weight bold)))

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

   ;; Whitespace
   `(whitespace-space ((,class (:background ,(funcall safe-get-color 'bg)
                                            :foreground ,(funcall safe-get-color 'br-black)))))
   `(whitespace-tab ((,class (:background ,(funcall safe-get-color 'bg)
                                          :foreground ,(funcall safe-get-color 'br-black)))))
   `(whitespace-hspace ((,class (:background ,(funcall safe-get-color 'bg)
                                             :foreground ,(funcall safe-get-color 'br-black)))))
   `(whitespace-line ((,class (:background ,(funcall safe-get-color 'br-black)
                                           :foreground ,(funcall safe-get-color 'red)))))
   `(whitespace-newline ((,class (:background ,(funcall safe-get-color 'bg)
                                              :foreground ,(funcall safe-get-color 'br-black)))))
   `(whitespace-trailing ((,class (:background ,(funcall safe-get-color 'red)
                                               :foreground ,(funcall safe-get-color 'red)))))
   `(whitespace-empty ((,class (:background ,(funcall safe-get-color 'yellow)
                                            :foreground ,(funcall safe-get-color 'yellow)))))
   `(whitespace-indentation ((,class (:background ,(funcall safe-get-color 'yellow)
                                                  :foreground ,(funcall safe-get-color 'red)))))
   `(whitespace-space-after-tab ((,class (:background ,(funcall safe-get-color 'yellow)
                                                       :foreground ,(funcall safe-get-color 'yellow)))))
   `(whitespace-space-before-tab ((,class (:background ,(funcall safe-get-color 'br-black)
                                                        :foreground ,(funcall safe-get-color 'br-black)))))

))

(provide-theme 'lr_nord)
