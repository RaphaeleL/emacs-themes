(deftheme mathias
  "mathias-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (mathias-colors
        '(
          (bg         . "#000000")
          (fg         . "#bbbbbb")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#555555")
          (selection-fg . "#f2f2f2")
          (black      . "#000000")
          (red        . "#e52222")
          (green      . "#a6e32d")
          (yellow     . "#fc951e")
          (blue       . "#c48dff")
          (magenta    . "#fa2573")
          (cyan       . "#67d9f0")
          (white      . "#f2f2f2")
          (br-black   . "#555555")
          (br-red     . "#ff5555")
          (br-green   . "#55ff55")
          (br-yellow  . "#ffff55")
          (br-blue    . "#5555ff")
          (br-magenta . "#ff55ff")
          (br-cyan    . "#55ffff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key mathias-colors)) 'unspecified))))

  (custom-theme-set-faces
   'mathias

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

(provide-theme 'mathias)
