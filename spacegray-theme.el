(deftheme spacegray
  "spacegray-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (spacegray-colors
        '(
          (bg         . "#20242d")
          (fg         . "#b3b8c3")
          (cursor     . "#b3b8c3")
          (cursor-txt . "#1d1f21")
          (selection  . "#16181e")
          (selection-fg . "#b3b8c3")
          (black      . "#000000")
          (red        . "#b04b57")
          (green      . "#87b379")
          (yellow     . "#e5c179")
          (blue       . "#7d8fa4")
          (magenta    . "#a47996")
          (cyan       . "#85a7a5")
          (white      . "#b3b8c3")
          (br-black   . "#000000")
          (br-red     . "#b04b57")
          (br-green   . "#87b379")
          (br-yellow  . "#e5c179")
          (br-blue    . "#7d8fa4")
          (br-magenta . "#a47996")
          (br-cyan    . "#85a7a5")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key spacegray-colors)) 'unspecified))))

  (custom-theme-set-faces
   'spacegray

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

(provide-theme 'spacegray)
