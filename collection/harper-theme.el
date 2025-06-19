(deftheme harper
  "harper-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (harper-colors
        '(
          (bg         . "#010101")
          (fg         . "#a8a49d")
          (cursor     . "#a8a49d")
          (cursor-txt . "#010101")
          (selection  . "#5a5753")
          (selection-fg . "#a8a49d")
          (black      . "#010101")
          (red        . "#f8b63f")
          (green      . "#7fb5e1")
          (yellow     . "#d6da25")
          (blue       . "#489e48")
          (magenta    . "#b296c6")
          (cyan       . "#f5bfd7")
          (white      . "#a8a49d")
          (br-black   . "#726e6a")
          (br-red     . "#f8b63f")
          (br-green   . "#7fb5e1")
          (br-yellow  . "#d6da25")
          (br-blue    . "#489e48")
          (br-magenta . "#b296c6")
          (br-cyan    . "#f5bfd7")
          (br-white   . "#fefbea")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key harper-colors)) 'unspecified))))

  (custom-theme-set-faces
   'harper

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

(provide-theme 'harper)
