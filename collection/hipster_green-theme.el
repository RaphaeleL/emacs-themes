(deftheme hipster_green
  "hipster_green-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (hipster_green-colors
        '(
(bg         . "#100b05")
          (fg         . "#84c138")
          (cursor     . "#23ff18")
          (cursor-txt . "#ff0018")
          (selection  . "#083905")
          (selection-fg . "#ffffff")
          (black      . "#000000")
          (red        . "#b6214a")
          (green      . "#00a600")
          (yellow     . "#bfbf00")
          (blue       . "#246eb2")
          (magenta    . "#b200b2")
          (cyan       . "#00a6b2")
          (white      . "#bfbfbf")
          (br-black   . "#666666")
          (br-red     . "#e50000")
          (br-green   . "#86a93e")
          (br-yellow  . "#e5e500")
          (br-blue    . "#0000ff")
          (br-magenta . "#e500e5")
          (br-cyan    . "#00e5e5")
          (br-white   . "#e5e5e5")
          
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key hipster_green-colors)) 'unspecified))))

  (custom-theme-set-faces
   'hipster_green

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
   `(show-paren-match ((,class (:background ,(funcall safe-get-color 'br-yellow)
                                            :foreground ,(funcall safe-get-color 'bg)
                                            :weight bold))))
   `(show-paren-mismatch ((,class (:background ,(funcall safe-get-color 'br-red)
                                               :foreground ,(funcall safe-get-color 'bg)
                                               :weight bold))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,(funcall safe-get-color 'blue)))))
   `(font-lock-comment-face ((,class (:foreground ,(funcall safe-get-color 'br-black) :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,(funcall safe-get-color 'br-black)))))
   `(font-lock-constant-face ((,class (:foreground ,(funcall safe-get-color 'cyan)))))
   `(font-lock-doc-face ((,class (:foreground ,(funcall safe-get-color 'br-green) :slant italic))))
   `(font-lock-doc-string-face ((,class (:foreground ,(funcall safe-get-color 'br-green) :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,(funcall safe-get-color 'blue)))))
   `(font-lock-keyword-face ((,class (:foreground ,(funcall safe-get-color 'magenta) :weight bold))))
   `(font-lock-preprocessor-face ((,class (:foreground ,(funcall safe-get-color 'br-magenta)))))
   `(font-lock-string-face ((,class (:foreground ,(funcall safe-get-color 'green)))))
   `(font-lock-type-face ((,class (:foreground ,(funcall safe-get-color 'yellow)))))
   `(font-lock-variable-name-face ((,class (:foreground ,(funcall safe-get-color 'red)))))
   `(font-lock-warning-face ((,class (:foreground ,(funcall safe-get-color 'br-red) :weight bold))))))

(provide-theme 'hipster_green)