(deftheme onehalfdark
  "onehalfdark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (onehalfdark-colors
        '(
          (bg         . "#282c34")
          (fg         . "#dcdfe4")
          (cursor     . "#a3b3cc")
          (cursor-txt . "#dcdfe4")
          (selection  . "#474e5d")
          (selection-fg . "#dcdfe4")
          (black      . "#282c34")
          (red        . "#e06c75")
          (green      . "#98c379")
          (yellow     . "#e5c07b")
          (blue       . "#61afef")
          (magenta    . "#c678dd")
          (cyan       . "#56b6c2")
          (white      . "#dcdfe4")
          (br-black   . "#282c34")
          (br-red     . "#e06c75")
          (br-green   . "#98c379")
          (br-yellow  . "#e5c07b")
          (br-blue    . "#61afef")
          (br-magenta . "#c678dd")
          (br-cyan    . "#56b6c2")
          (br-white   . "#dcdfe4")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key onehalfdark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'onehalfdark

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

(provide-theme 'onehalfdark)
