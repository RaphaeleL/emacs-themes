(deftheme horizon
  "horizon-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (horizon-colors
        '(
          (bg         . "#1c1e26")
          (fg         . "#d5d8da")
          (cursor     . "#6c6f93")
          (cursor-txt . "#6c6f93")
          (selection  . "#6c6f93")
          (selection-fg . "#1c1e26")
          (black      . "#000000")
          (red        . "#e95678")
          (green      . "#29d398")
          (yellow     . "#fab795")
          (blue       . "#26bbd9")
          (magenta    . "#ee64ac")
          (cyan       . "#59e1e3")
          (white      . "#e5e5e5")
          (br-black   . "#666666")
          (br-red     . "#ec6a88")
          (br-green   . "#3fdaa4")
          (br-yellow  . "#fbc3a7")
          (br-blue    . "#3fc4de")
          (br-magenta . "#f075b5")
          (br-cyan    . "#6be4e6")
          (br-white   . "#e5e5e5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key horizon-colors)) 'unspecified))))

  (custom-theme-set-faces
   'horizon

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

(provide-theme 'horizon)
