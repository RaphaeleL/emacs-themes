(deftheme frontenddelight
  "frontenddelight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (frontenddelight-colors
        '(
          (bg         . "#1b1c1d")
          (fg         . "#adadad")
          (cursor     . "#cdcdcd")
          (cursor-txt . "#1b1c1d")
          (selection  . "#ea6154")
          (selection-fg . "#1b1c1d")
          (black      . "#242526")
          (red        . "#f8511b")
          (green      . "#565747")
          (yellow     . "#fa771d")
          (blue       . "#2c70b7")
          (magenta    . "#f02e4f")
          (cyan       . "#3ca1a6")
          (white      . "#adadad")
          (br-black   . "#5fac6d")
          (br-red     . "#f74319")
          (br-green   . "#74ec4c")
          (br-yellow  . "#fdc325")
          (br-blue    . "#3393ca")
          (br-magenta . "#e75e4f")
          (br-cyan    . "#4fbce6")
          (br-white   . "#8c735b")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key frontenddelight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'frontenddelight

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

(provide-theme 'frontenddelight)
