(deftheme spacegray_eighties_dull
  "spacegray_eighties_dull-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (spacegray_eighties_dull-colors
        '(
          (bg         . "#222222")
          (fg         . "#c9c6bc")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#272e36")
          (selection-fg . "#ffffff")
          (black      . "#15171c")
          (red        . "#b24a56")
          (green      . "#92b477")
          (yellow     . "#c6735a")
          (blue       . "#7c8fa5")
          (magenta    . "#a5789e")
          (cyan       . "#80cdcb")
          (white      . "#b3b8c3")
          (br-black   . "#555555")
          (br-red     . "#ec5f67")
          (br-green   . "#89e986")
          (br-yellow  . "#fec254")
          (br-blue    . "#5486c0")
          (br-magenta . "#bf83c1")
          (br-cyan    . "#58c2c1")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key spacegray_eighties_dull-colors)) 'unspecified))))

  (custom-theme-set-faces
   'spacegray_eighties_dull

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

(provide-theme 'spacegray_eighties_dull)
