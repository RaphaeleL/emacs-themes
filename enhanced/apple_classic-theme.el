(deftheme apple_classic
  "Apple Classic theme - Inspired by classic Mac OS aesthetics.")

(let* ((class '((class color) (min-colors 89)))
       (apple_classic-colors
        '(
          (bg         . "#FFFFFF")  ;; Classic white background
          (fg         . "#000000")  ;; Pure black text
          (cursor     . "#0000FF")  ;; Main color: blue
          (cursor-txt . "#FFFFFF")  ;; White cursor text
          (selection  . "#B5D5FF")  ;; Classic Mac blue selection
          (selection-fg . "#000000")  ;; Black selection text
          (black      . "#000000")  ;; Pure black
          (red        . "#C41E3A")  ;; Classic Mac red
          (green      . "#00852B")  ;; Classic Mac green
          (yellow     . "#C7A500")  ;; Classic Mac yellow
          (blue       . "#0000FF")  ;; Classic Mac blue - MAIN COLOR
          (magenta    . "#A020F0")  ;; Classic Mac purple
          (cyan       . "#0087B4")  ;; Classic Mac cyan
          (white      . "#FFFFFF")  ;; Pure white
          (br-black   . "#808080")  ;; Gray for comments
          (br-red     . "#FF0000")  ;; Bright red
          (br-green   . "#00A933")  ;; Bright green
          (br-yellow  . "#FFB700")  ;; Bright yellow
          (br-blue    . "#0066FF")  ;; Bright blue
          (br-magenta . "#CC33FF")  ;; Bright magenta
          (br-cyan    . "#00B7EB")  ;; Bright cyan
          (br-white   . "#FFFFFF")  ;; Pure white
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key apple_classic-colors)) 'unspecified))))

  (custom-theme-set-faces
   'apple_classic

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
   `(line-number ((,class (:inherit default
                                  :foreground ,(funcall safe-get-color 'br-black)))))
   `(line-number-current-line ((,class (:inherit default
                                               :foreground ,(funcall safe-get-color 'blue)
                                               :weight bold))))
   `(line-number-major-tick ((,class (:foreground ,(funcall safe-get-color 'br-black)))))
   `(line-number-minor-tick ((,class (:foreground ,(funcall safe-get-color 'br-black)))))

   ;; Font lock faces - carefully tuned for Apple Classic style
   `(font-lock-builtin-face ((,class (:foreground ,(funcall safe-get-color 'blue)))))
   `(font-lock-comment-face ((,class (:foreground ,(funcall safe-get-color 'br-black) :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,(funcall safe-get-color 'br-black)))))
   `(font-lock-constant-face ((,class (:foreground ,(funcall safe-get-color 'magenta)))))
   `(font-lock-doc-face ((,class (:foreground ,(funcall safe-get-color 'br-black) :slant italic))))
   `(font-lock-doc-string-face ((,class (:foreground ,(funcall safe-get-color 'br-black) :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,(funcall safe-get-color 'blue) :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,(funcall safe-get-color 'br-blue) :weight bold))))
   `(font-lock-preprocessor-face ((,class (:foreground ,(funcall safe-get-color 'magenta)))))
   `(font-lock-string-face ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(font-lock-type-face ((,class (:foreground ,(funcall safe-get-color 'br-magenta)))))
   `(font-lock-variable-name-face ((,class (:foreground ,(funcall safe-get-color 'br-white)))))
   `(font-lock-warning-face ((,class (:foreground ,(funcall safe-get-color 'red) :weight bold))))

   ;; Modeline faces - Apple Classic style
   `(mode-line ((,class (:background ,(funcall safe-get-color 'bg)
                                     :foreground ,(funcall safe-get-color 'fg)))))
   `(mode-line-inactive ((,class (:background ,(funcall safe-get-color 'black)
                                              :foreground ,(funcall safe-get-color 'br-black)))))
   `(mode-line-highlight ((,class (:background ,(funcall safe-get-color 'blue)
                                               :foreground ,(funcall safe-get-color 'bg)
                                               :weight bold))))
   `(mode-line-emphasis ((,class (:weight bold))))
   `(mode-line-buffer-id ((,class (:foreground ,(funcall safe-get-color 'blue) :weight bold))))
))

(provide-theme 'apple_classic)
