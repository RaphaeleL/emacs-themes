(deftheme lavandula
  "lavandula-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (lavandula-colors
        '(
          (bg         . "#050014")
          (fg         . "#736e7d")
          (cursor     . "#8c91fa")
          (cursor-txt . "#050014")
          (selection  . "#37323c")
          (selection-fg . "#8c91fa")
          (black      . "#230046")
          (red        . "#7d1625")
          (green      . "#337e6f")
          (yellow     . "#7f6f49")
          (blue       . "#4f4a7f")
          (magenta    . "#5a3f7f")
          (cyan       . "#58777f")
          (white      . "#736e7d")
          (br-black   . "#372d46")
          (br-red     . "#e05167")
          (br-green   . "#52e0c4")
          (br-yellow  . "#e0c386")
          (br-blue    . "#8e87e0")
          (br-magenta . "#a776e0")
          (br-cyan    . "#9ad4e0")
          (br-white   . "#8c91fa")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key lavandula-colors)) 'unspecified))))

  (custom-theme-set-faces
   'lavandula

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

(provide-theme 'lavandula)
