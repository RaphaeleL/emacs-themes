(deftheme midnightinmojave
  "midnightinmojave-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (midnightinmojave-colors
        '(
          (bg         . "#1e1e1e")
          (fg         . "#ffffff")
          (cursor     . "#32d74b")
          (cursor-txt . "#1c1c1c")
          (selection  . "#4a504d")
          (selection-fg . "#ffffff")
          (black      . "#1e1e1e")
          (red        . "#ff453a")
          (green      . "#32d74b")
          (yellow     . "#ffd60a")
          (blue       . "#0a84ff")
          (magenta    . "#bf5af2")
          (cyan       . "#5ac8fa")
          (white      . "#ffffff")
          (br-black   . "#1e1e1e")
          (br-red     . "#ff453a")
          (br-green   . "#32d74b")
          (br-yellow  . "#ffd60a")
          (br-blue    . "#0a84ff")
          (br-magenta . "#bf5af2")
          (br-cyan    . "#5ac8fa")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key midnightinmojave-colors)) 'unspecified))))

  (custom-theme-set-faces
   'midnightinmojave

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

(provide-theme 'midnightinmojave)
