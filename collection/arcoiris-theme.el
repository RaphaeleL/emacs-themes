(deftheme arcoiris
  "arcoiris-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (arcoiris-colors
        '(
          (bg         . "#201f1e")
          (fg         . "#eee4d9")
          (cursor     . "#7a1c1c")
          (cursor-txt . "#fffbf2")
          (selection  . "#25524a")
          (selection-fg . "#f3fffd")
          (black      . "#333333")
          (red        . "#da2700")
          (green      . "#12c258")
          (yellow     . "#ffc656")
          (blue       . "#518bfc")
          (magenta    . "#e37bd9")
          (cyan       . "#63fad5")
          (white      . "#bab2b2")
          (br-black   . "#777777")
          (br-red     . "#ffb9b9")
          (br-green   . "#e3f6aa")
          (br-yellow  . "#ffddaa")
          (br-blue    . "#b3e8f3")
          (br-magenta . "#cbbaf9")
          (br-cyan    . "#bcffc7")
          (br-white   . "#efefef")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key arcoiris-colors)) 'unspecified))))

  (custom-theme-set-faces
   'arcoiris

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

(provide-theme 'arcoiris)
