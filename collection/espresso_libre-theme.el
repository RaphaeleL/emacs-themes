(deftheme espresso_libre
  "espresso_libre-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (espresso_libre-colors
        '(
          (bg         . "#2a211c")
          (fg         . "#b8a898")
          (cursor     . "#ffffff")
          (cursor-txt . "#000000")
          (selection  . "#c3dcff")
          (selection-fg . "#b8a898")
          (black      . "#000000")
          (red        . "#cc0000")
          (green      . "#1a921c")
          (yellow     . "#f0e53a")
          (blue       . "#0066ff")
          (magenta    . "#c5656b")
          (cyan       . "#06989a")
          (white      . "#d3d7cf")
          (br-black   . "#555753")
          (br-red     . "#ef2929")
          (br-green   . "#9aff87")
          (br-yellow  . "#fffb5c")
          (br-blue    . "#43a8ed")
          (br-magenta . "#ff818a")
          (br-cyan    . "#34e2e2")
          (br-white   . "#eeeeec")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key espresso_libre-colors)) 'unspecified))))

  (custom-theme-set-faces
   'espresso_libre

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

(provide-theme 'espresso_libre)
