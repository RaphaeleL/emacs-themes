(deftheme monokai_pro_light
  "monokai_pro_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (monokai_pro_light-colors
        '(
          (bg         . "#faf4f2")
          (fg         . "#29242a")
          (cursor     . "#706b6e")
          (cursor-txt . "#706b6e")
          (selection  . "#bfb9ba")
          (selection-fg . "#29242a")
          (black      . "#faf4f2")
          (red        . "#e14775")
          (green      . "#269d69")
          (yellow     . "#cc7a0a")
          (blue       . "#e16032")
          (magenta    . "#7058be")
          (cyan       . "#1c8ca8")
          (white      . "#29242a")
          (br-black   . "#a59fa0")
          (br-red     . "#e14775")
          (br-green   . "#269d69")
          (br-yellow  . "#cc7a0a")
          (br-blue    . "#e16032")
          (br-magenta . "#7058be")
          (br-cyan    . "#1c8ca8")
          (br-white   . "#29242a")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key monokai_pro_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'monokai_pro_light

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

(provide-theme 'monokai_pro_light)
