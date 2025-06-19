(deftheme tomorrow_night_eighties
  "tomorrow_night_eighties-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tomorrow_night_eighties-colors
        '(
          (bg         . "#2d2d2d")
          (fg         . "#cccccc")
          (cursor     . "#cccccc")
          (cursor-txt . "#2d2d2d")
          (selection  . "#515151")
          (selection-fg . "#cccccc")
          (black      . "#000000")
          (red        . "#f2777a")
          (green      . "#99cc99")
          (yellow     . "#ffcc66")
          (blue       . "#6699cc")
          (magenta    . "#cc99cc")
          (cyan       . "#66cccc")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#f2777a")
          (br-green   . "#99cc99")
          (br-yellow  . "#ffcc66")
          (br-blue    . "#6699cc")
          (br-magenta . "#cc99cc")
          (br-cyan    . "#66cccc")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tomorrow_night_eighties-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tomorrow_night_eighties

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

(provide-theme 'tomorrow_night_eighties)
