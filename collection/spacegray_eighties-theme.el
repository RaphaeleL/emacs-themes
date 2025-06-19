(deftheme spacegray_eighties
  "spacegray_eighties-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (spacegray_eighties-colors
        '(
          (bg         . "#222222")
          (fg         . "#bdbaae")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#272e35")
          (selection-fg . "#ffffff")
          (black      . "#15171c")
          (red        . "#ec5f67")
          (green      . "#81a764")
          (yellow     . "#fec254")
          (blue       . "#5486c0")
          (magenta    . "#bf83c1")
          (cyan       . "#57c2c1")
          (white      . "#efece7")
          (br-black   . "#555555")
          (br-red     . "#ff6973")
          (br-green   . "#93d493")
          (br-yellow  . "#ffd256")
          (br-blue    . "#4d84d1")
          (br-magenta . "#ff55ff")
          (br-cyan    . "#83e9e4")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key spacegray_eighties-colors)) 'unspecified))))

  (custom-theme-set-faces
   'spacegray_eighties

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

(provide-theme 'spacegray_eighties)
