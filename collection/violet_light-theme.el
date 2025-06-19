(deftheme violet_light
  "violet_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (violet_light-colors
        '(
          (bg         . "#fcf4dc")
          (fg         . "#536870")
          (cursor     . "#536870")
          (cursor-txt . "#fcf4dc")
          (selection  . "#595ab7")
          (selection-fg . "#fcf4dc")
          (black      . "#56595c")
          (red        . "#c94c22")
          (green      . "#85981c")
          (yellow     . "#b4881d")
          (blue       . "#2e8bce")
          (magenta    . "#d13a82")
          (cyan       . "#32a198")
          (white      . "#d3d0c9")
          (br-black   . "#45484b")
          (br-red     . "#bd3613")
          (br-green   . "#738a04")
          (br-yellow  . "#a57705")
          (br-blue    . "#2176c7")
          (br-magenta . "#c61c6f")
          (br-cyan    . "#259286")
          (br-white   . "#c9c6bd")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key violet_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'violet_light

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

(provide-theme 'violet_light)
