(deftheme overnight_slumber
  "overnight_slumber-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (overnight_slumber-colors
        '(
          (bg         . "#0e1729")
          (fg         . "#ced2d6")
          (cursor     . "#ffa7c4")
          (cursor-txt . "#ffffff")
          (selection  . "#1f2b41")
          (selection-fg . "#ced2d6")
          (black      . "#0a1222")
          (red        . "#ffa7c4")
          (green      . "#85cc95")
          (yellow     . "#ffcb8b")
          (blue       . "#8dabe1")
          (magenta    . "#c792eb")
          (cyan       . "#78ccf0")
          (white      . "#ffffff")
          (br-black   . "#575656")
          (br-red     . "#ffa7c4")
          (br-green   . "#85cc95")
          (br-yellow  . "#ffcb8b")
          (br-blue    . "#8dabe1")
          (br-magenta . "#c792eb")
          (br-cyan    . "#ffa7c4")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key overnight_slumber-colors)) 'unspecified))))

  (custom-theme-set-faces
   'overnight_slumber

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

(provide-theme 'overnight_slumber)
