(deftheme darkside
  "darkside-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (darkside-colors
        '(
          (bg         . "#222324")
          (fg         . "#bababa")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#303333")
          (selection-fg . "#bababa")
          (black      . "#000000")
          (red        . "#e8341c")
          (green      . "#68c256")
          (yellow     . "#f2d42c")
          (blue       . "#1c98e8")
          (magenta    . "#8e69c9")
          (cyan       . "#1c98e8")
          (white      . "#bababa")
          (br-black   . "#000000")
          (br-red     . "#e05a4f")
          (br-green   . "#77b869")
          (br-yellow  . "#efd64b")
          (br-blue    . "#387cd3")
          (br-magenta . "#957bbe")
          (br-cyan    . "#3d97e2")
          (br-white   . "#bababa")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key darkside-colors)) 'unspecified))))

  (custom-theme-set-faces
   'darkside

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

(provide-theme 'darkside)
