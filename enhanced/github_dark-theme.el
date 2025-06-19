(deftheme github_dark
  "GitHub Dark theme - GitHub's official dark theme for code editors.")

(let* ((class '((class color) (min-colors 89)))
       (github_dark-colors
        '(
          (bg         . "#0d1117")  ;; GitHub Dark background
          (fg         . "#c9d1d9")  ;; GitHub Dark foreground
          (cursor     . "#7ee787")  ;; Main color: green
          (cursor-txt . "#0d1117")  ;; GitHub Dark cursor text
          (selection  . "#21262d")  ;; GitHub Dark selection
          (selection-fg . "#c9d1d9")  ;; GitHub Dark selection fg
          (black      . "#0d1117")  ;; GitHub Dark black
          (red        . "#ff7b72")  ;; GitHub Dark red
          (green      . "#7ee787")  ;; GitHub Dark green - MAIN COLOR
          (yellow     . "#ffa657")  ;; GitHub Dark yellow
          (blue       . "#79c0ff")  ;; GitHub Dark blue
          (magenta    . "#d2a8ff")  ;; GitHub Dark magenta
          (cyan       . "#a5d6ff")  ;; GitHub Dark cyan
          (white      . "#f0f6fc")  ;; GitHub Dark white
          (br-black   . "#8b949e")  ;; GitHub Dark comment
          (br-red     . "#ff7b72")  ;; GitHub Dark bright red
          (br-green   . "#7ee787")  ;; GitHub Dark bright green
          (br-yellow  . "#ffa657")  ;; GitHub Dark bright yellow
          (br-blue    . "#79c0ff")  ;; GitHub Dark bright blue
          (br-magenta . "#d2a8ff")  ;; GitHub Dark bright magenta
          (br-cyan    . "#a5d6ff")  ;; GitHub Dark bright cyan
          (br-white   . "#f0f6fc")  ;; GitHub Dark bright white
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key github_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'github_dark

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
   `(show-paren-match ((,class (:background ,(funcall safe-get-color 'br-blue)
                                            :foreground ,(funcall safe-get-color 'bg)
                                            :weight bold))))
   `(show-paren-mismatch ((,class (:background ,(funcall safe-get-color 'red)
                                               :foreground ,(funcall safe-get-color 'bg)
                                               :weight bold))))

   ;; Line number faces - main color for current line
   `(line-number ((,class (:foreground ,(funcall safe-get-color 'br-black)))))
   `(line-number-current-line ((,class (:foreground ,(funcall safe-get-color 'green) :weight bold))))
   `(line-number-major-tick ((,class (:foreground ,(funcall safe-get-color 'br-black)))))
   `(line-number-minor-tick ((,class (:foreground ,(funcall safe-get-color 'br-black)))))

   ;; Font lock faces - carefully tuned for GitHub Dark style
   `(font-lock-builtin-face ((,class (:foreground ,(funcall safe-get-color 'blue)))))
   `(font-lock-comment-face ((,class (:foreground ,(funcall safe-get-color 'br-black) :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,(funcall safe-get-color 'br-black)))))
   `(font-lock-constant-face ((,class (:foreground ,(funcall safe-get-color 'magenta)))))
   `(font-lock-doc-face ((,class (:foreground ,(funcall safe-get-color 'br-black) :slant italic))))
   `(font-lock-doc-string-face ((,class (:foreground ,(funcall safe-get-color 'yellow) :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(font-lock-keyword-face ((,class (:foreground ,(funcall safe-get-color 'magenta) :weight bold))))
   `(font-lock-preprocessor-face ((,class (:foreground ,(funcall safe-get-color 'red)))))
   `(font-lock-string-face ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(font-lock-type-face ((,class (:foreground ,(funcall safe-get-color 'br-magenta)))))
   `(font-lock-variable-name-face ((,class (:foreground ,(funcall safe-get-color 'br-white)))))
   `(font-lock-warning-face ((,class (:foreground ,(funcall safe-get-color 'red) :weight bold)))))

   ;; Modeline faces - GitHub Dark style
   `(mode-line ((,class (:background ,(funcall safe-get-color 'bg)
                                     :foreground ,(funcall safe-get-color 'fg)))))
   `(mode-line-inactive ((,class (:background ,(funcall safe-get-color 'black)
                                              :foreground ,(funcall safe-get-color 'br-black)))))
   `(mode-line-highlight ((,class (:background ,(funcall safe-get-color 'blue)
                                               :foreground ,(funcall safe-get-color 'bg)
                                               :weight bold))))
   `(mode-line-emphasis ((,class (:weight bold))))
   `(mode-line-buffer-id ((,class (:foreground ,(funcall safe-get-color 'blue) :weight bold))))))

(provide-theme 'github_dark)