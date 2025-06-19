(deftheme catppuccinmacchiato
  "catppuccinmacchiato-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (catppuccinmacchiato-colors
        '(
          (bg         . "#24273a")
          (fg         . "#cad3f5")
          (cursor     . "#f4dbd6")
          (cursor-txt . "#cad3f5")
          (selection  . "#5b6078")
          (selection-fg . "#cad3f5")
          (black      . "#494d64")
          (red        . "#ed8796")
          (green      . "#a6da95")
          (yellow     . "#eed49f")
          (blue       . "#8aadf4")
          (magenta    . "#f5bde6")
          (cyan       . "#8bd5ca")
          (white      . "#a5adcb")
          (br-black   . "#5b6078")
          (br-red     . "#ec7486")
          (br-green   . "#8ccf7f")
          (br-yellow  . "#e1c682")
          (br-blue    . "#78a1f6")
          (br-magenta . "#f2a9dd")
          (br-cyan    . "#63cbc0")
          (br-white   . "#b8c0e0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key catppuccinmacchiato-colors)) 'unspecified))))

  (custom-theme-set-faces
   'catppuccinmacchiato

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

(provide-theme 'catppuccinmacchiato)
