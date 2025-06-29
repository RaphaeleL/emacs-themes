(deftheme githubdarkcolorblind
  "githubdarkcolorblind-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (githubdarkcolorblind-colors
        '(
(bg         . "#0d1117")
          (fg         . "#c9d1d9")
          (cursor     . "#58a6ff")
          (cursor-txt . "#58a6ff")
          (selection  . "#c9d1d9")
          (selection-fg . "#0d1117")
          (black      . "#484f58")
          (red        . "#ec8e2c")
          (green      . "#58a6ff")
          (yellow     . "#d29922")
          (blue       . "#58a6ff")
          (magenta    . "#bc8cff")
          (cyan       . "#39c5cf")
          (white      . "#b1bac4")
          (br-black   . "#6e7681")
          (br-red     . "#fdac54")
          (br-green   . "#79c0ff")
          (br-yellow  . "#e3b341")
          (br-blue    . "#79c0ff")
          (br-magenta . "#d2a8ff")
          (br-cyan    . "#56d4dd")
          (br-white   . "#ffffff")
          
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key githubdarkcolorblind-colors)) 'unspecified))))

  (custom-theme-set-faces
   'githubdarkcolorblind

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

(provide-theme 'githubdarkcolorblind)