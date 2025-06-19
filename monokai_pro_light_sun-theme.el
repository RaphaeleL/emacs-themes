(deftheme monokai_pro_light_sun
  "monokai_pro_light_sun-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (monokai_pro_light_sun-colors
        '(
          (bg         . "#f8efe7")
          (fg         . "#2c232e")
          (cursor     . "#72696d")
          (cursor-txt . "#72696d")
          (selection  . "#beb5b3")
          (selection-fg . "#2c232e")
          (black      . "#f8efe7")
          (red        . "#ce4770")
          (green      . "#218871")
          (yellow     . "#b16803")
          (blue       . "#d4572b")
          (magenta    . "#6851a2")
          (cyan       . "#2473b6")
          (white      . "#2c232e")
          (br-black   . "#a59c9c")
          (br-red     . "#ce4770")
          (br-green   . "#218871")
          (br-yellow  . "#b16803")
          (br-blue    . "#d4572b")
          (br-magenta . "#6851a2")
          (br-cyan    . "#2473b6")
          (br-white   . "#2c232e")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key monokai_pro_light_sun-colors)) 'unspecified))))

  (custom-theme-set-faces
   'monokai_pro_light_sun

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

(provide-theme 'monokai_pro_light_sun)
