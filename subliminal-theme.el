(deftheme subliminal
  "subliminal-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (subliminal-colors
        '(
          (bg         . "#282c35")
          (fg         . "#d4d4d4")
          (cursor     . "#c7c7c7")
          (cursor-txt . "#ffffff")
          (selection  . "#484e5b")
          (selection-fg . "#ffffff")
          (black      . "#7f7f7f")
          (red        . "#e15a60")
          (green      . "#a9cfa4")
          (yellow     . "#ffe2a9")
          (blue       . "#6699cc")
          (magenta    . "#f1a5ab")
          (cyan       . "#5fb3b3")
          (white      . "#d4d4d4")
          (br-black   . "#7f7f7f")
          (br-red     . "#e15a60")
          (br-green   . "#a9cfa4")
          (br-yellow  . "#ffe2a9")
          (br-blue    . "#6699cc")
          (br-magenta . "#f1a5ab")
          (br-cyan    . "#5fb3b3")
          (br-white   . "#d4d4d4")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key subliminal-colors)) 'unspecified))))

  (custom-theme-set-faces
   'subliminal

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

(provide-theme 'subliminal)
