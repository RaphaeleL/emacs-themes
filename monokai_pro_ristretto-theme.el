(deftheme monokai_pro_ristretto
  "monokai_pro_ristretto-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (monokai_pro_ristretto-colors
        '(
          (bg         . "#2c2525")
          (fg         . "#fff1f3")
          (cursor     . "#c3b7b8")
          (cursor-txt . "#c3b7b8")
          (selection  . "#5b5353")
          (selection-fg . "#fff1f3")
          (black      . "#2c2525")
          (red        . "#fd6883")
          (green      . "#adda78")
          (yellow     . "#f9cc6c")
          (blue       . "#f38d70")
          (magenta    . "#a8a9eb")
          (cyan       . "#85dacc")
          (white      . "#fff1f3")
          (br-black   . "#72696a")
          (br-red     . "#fd6883")
          (br-green   . "#adda78")
          (br-yellow  . "#f9cc6c")
          (br-blue    . "#f38d70")
          (br-magenta . "#a8a9eb")
          (br-cyan    . "#85dacc")
          (br-white   . "#fff1f3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key monokai_pro_ristretto-colors)) 'unspecified))))

  (custom-theme-set-faces
   'monokai_pro_ristretto

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

(provide-theme 'monokai_pro_ristretto)
