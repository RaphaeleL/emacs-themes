(deftheme hurtado
  "hurtado-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (hurtado-colors
        '(
          (bg         . "#000000")
          (fg         . "#dbdbdb")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#b5d5ff")
          (selection-fg . "#000000")
          (black      . "#575757")
          (red        . "#ff1b00")
          (green      . "#a5e055")
          (yellow     . "#fbe74a")
          (blue       . "#496487")
          (magenta    . "#fd5ff1")
          (cyan       . "#86e9fe")
          (white      . "#cbcccb")
          (br-black   . "#262626")
          (br-red     . "#d51d00")
          (br-green   . "#a5df55")
          (br-yellow  . "#fbe84a")
          (br-blue    . "#89beff")
          (br-magenta . "#c001c1")
          (br-cyan    . "#86eafe")
          (br-white   . "#dbdbdb")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key hurtado-colors)) 'unspecified))))

  (custom-theme-set-faces
   'hurtado

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

(provide-theme 'hurtado)
