(deftheme lr_materialdark
  "Material Dark theme - Google's Material Design dark theme.")

(let* ((class '((class color) (min-colors 89)))
       (materialdark-colors
        '(
          (bg         . "#263238")  ;; Material Dark background
          (fg         . "#eeffff")  ;; Material Dark foreground
          (cursor     . "#82aaff")  ;; Main color: blue
          (cursor-txt . "#263238")  ;; Material Dark cursor text
          (selection  . "#546e7a")  ;; Material Dark selection
          (selection-fg . "#eeffff")  ;; Material Dark selection fg
          (black      . "#263238")  ;; Material Dark black
          (red        . "#ff5370")  ;; Material Dark red
          (green      . "#c3e88d")  ;; Material Dark green
          (yellow     . "#ffcb6b")  ;; Material Dark yellow
          (blue       . "#82aaff")  ;; Material Dark blue - MAIN COLOR
          (magenta    . "#c792ea")  ;; Material Dark magenta
          (cyan       . "#89ddff")  ;; Material Dark cyan
          (white      . "#eeffff")  ;; Material Dark white
          (br-black   . "#546e7a")  ;; Material Dark comment
          (br-red     . "#ff5370")  ;; Material Dark bright red
          (br-green   . "#c3e88d")  ;; Material Dark bright green
          (br-yellow  . "#ffcb6b")  ;; Material Dark bright yellow
          (br-blue    . "#82aaff")  ;; Material Dark bright blue
          (br-magenta . "#c792ea")  ;; Material Dark bright magenta
          (br-cyan    . "#89ddff")  ;; Material Dark bright cyan
          (br-white   . "#ffffff")  ;; Material Dark bright white
          ;; Additional colors
          (bg-1         . "#1e1f26")   ;; Darker background
          (bg+1         . "#363842")   ;; Slightly lighter than bg
          (bg+2         . "#464852")   ;; Even lighter
          (bg+3         . "#565862")   ;; Selection background variant
          (bg+4         . "#666872")   ;; Warm grey
          (red-1        . "#cc4250")   ;; Darker red
          (red+1        . "#ff6270")   ;; Brighter red
          (fg+1         . "#feffff")   ;; Lighter foreground
          (fg+2         . "#ffffff")   ;; Even lighter foreground
          (grey         . "#546e7a")   ;; Grey
          (brown        . "#ffcb6b")   ;; Brown (same as yellow)
          (niagara-2    . "#2a2f3a")   ;; Dark niagara
          (niagara-1    . "#4a5f7a")   ;; Medium niagara
          (niagara      . "#82aaff")   ;; Blue (same as br-blue)
          (quartz       . "#82aaff")   ;; Blue (same as br-blue)
          (wisteria     . "#c792ea")   ;; Magenta (same as br-magenta)
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key materialdark-colors)) 'unspecified))))

  (custom-theme-set-variables
   'lr_materialdark
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'lr_materialdark

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

   ;; Font lock faces - carefully tuned for Material Dark style
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

   ;; Modeline faces - Material Dark style
   `(mode-line                               ((,class :background ,(funcall safe-get-color 'bg) :foreground ,(funcall safe-get-color 'fg))))
   `(mode-line-inactive                      ((,class :background ,(funcall safe-get-color 'bg))))
   `(mode-line-highlight                     ((,class :background ,(funcall safe-get-color 'blue) :weight bold)))
   `(mode-line-emphasis                      ((,class :weight bold)))
   `(mode-line-buffer-id                     ((,class :foreground ,(funcall safe-get-color 'blue) :weight bold)))

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

(provide-theme 'lr_materialdark)
