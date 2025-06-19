(deftheme matrix
  "matrix-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (matrix-colors
        '(
          (bg         . "#0f191c")
          (fg         . "#426644")
          (cursor     . "#384545")
          (cursor-txt . "#00ff00")
          (selection  . "#18282e")
          (selection-fg . "#00ff87")
          (black      . "#0f191c")
          (red        . "#23755a")
          (green      . "#82d967")
          (yellow     . "#ffd700")
          (blue       . "#3f5242")
          (magenta    . "#409931")
          (cyan       . "#50b45a")
          (white      . "#507350")
          (br-black   . "#688060")
          (br-red     . "#2fc079")
          (br-green   . "#90d762")
          (br-yellow  . "#faff00")
          (br-blue    . "#4f7e7e")
          (br-magenta . "#11ff25")
          (br-cyan    . "#c1ff8a")
          (br-white   . "#678c61")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key matrix-colors)) 'unspecified))))

  (custom-theme-set-faces
   'matrix

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

(provide-theme 'matrix)
