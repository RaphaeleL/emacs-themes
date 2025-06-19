(deftheme builtin_pastel_dark
  "builtin_pastel_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (builtin_pastel_dark-colors
        '(
          (bg         . "#000000")
          (fg         . "#bbbbbb")
          (cursor     . "#ffa560")
          (cursor-txt . "#ffffff")
          (selection  . "#363983")
          (selection-fg . "#f2f2f2")
          (black      . "#4f4f4f")
          (red        . "#ff6c60")
          (green      . "#a8ff60")
          (yellow     . "#ffffb6")
          (blue       . "#96cbfe")
          (magenta    . "#ff73fd")
          (cyan       . "#c6c5fe")
          (white      . "#eeeeee")
          (br-black   . "#7c7c7c")
          (br-red     . "#ffb6b0")
          (br-green   . "#ceffac")
          (br-yellow  . "#ffffcc")
          (br-blue    . "#b5dcff")
          (br-magenta . "#ff9cfe")
          (br-cyan    . "#dfdffe")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key builtin_pastel_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'builtin_pastel_dark

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
                                               :weight bold))))))

(provide-theme 'builtin_pastel_dark)
