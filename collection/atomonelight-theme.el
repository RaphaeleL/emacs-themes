(deftheme atomonelight
  "atomonelight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (atomonelight-colors
        '(
          (bg         . "#f9f9f9")
          (fg         . "#2a2c33")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#ededed")
          (selection-fg . "#2a2c33")
          (black      . "#000000")
          (red        . "#de3e35")
          (green      . "#3f953a")
          (yellow     . "#d2b67c")
          (blue       . "#2f5af3")
          (magenta    . "#950095")
          (cyan       . "#3f953a")
          (white      . "#bbbbbb")
          (br-black   . "#000000")
          (br-red     . "#de3e35")
          (br-green   . "#3f953a")
          (br-yellow  . "#d2b67c")
          (br-blue    . "#2f5af3")
          (br-magenta . "#a00095")
          (br-cyan    . "#3f953a")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key atomonelight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'atomonelight

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

(provide-theme 'atomonelight)
