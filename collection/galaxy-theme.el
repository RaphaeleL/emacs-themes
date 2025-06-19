(deftheme galaxy
  "galaxy-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (galaxy-colors
        '(
          (bg         . "#1d2837")
          (fg         . "#ffffff")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#b5d5ff")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#f9555f")
          (green      . "#21b089")
          (yellow     . "#fef02a")
          (blue       . "#589df6")
          (magenta    . "#944d95")
          (cyan       . "#1f9ee7")
          (white      . "#bbbbbb")
          (br-black   . "#555555")
          (br-red     . "#fa8c8f")
          (br-green   . "#35bb9a")
          (br-yellow  . "#ffff55")
          (br-blue    . "#589df6")
          (br-magenta . "#e75699")
          (br-cyan    . "#3979bc")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key galaxy-colors)) 'unspecified))))

  (custom-theme-set-faces
   'galaxy

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

(provide-theme 'galaxy)
