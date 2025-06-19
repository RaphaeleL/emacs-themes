(deftheme catppuccinmocha
  "catppuccinmocha-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (catppuccinmocha-colors
        '(
          (bg         . "#1e1e2e")
          (fg         . "#cdd6f4")
          (cursor     . "#f5e0dc")
          (cursor-txt . "#cdd6f4")
          (selection  . "#585b70")
          (selection-fg . "#cdd6f4")
          (black      . "#45475a")
          (red        . "#f38ba8")
          (green      . "#a6e3a1")
          (yellow     . "#f9e2af")
          (blue       . "#89b4fa")
          (magenta    . "#f5c2e7")
          (cyan       . "#94e2d5")
          (white      . "#a6adc8")
          (br-black   . "#585b70")
          (br-red     . "#f37799")
          (br-green   . "#89d88b")
          (br-yellow  . "#ebd391")
          (br-blue    . "#74a8fc")
          (br-magenta . "#f2aede")
          (br-cyan    . "#6bd7ca")
          (br-white   . "#bac2de")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key catppuccinmocha-colors)) 'unspecified))))

  (custom-theme-set-faces
   'catppuccinmocha

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

(provide-theme 'catppuccinmocha)
