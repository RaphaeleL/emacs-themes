(deftheme paraiso_dark
  "paraiso_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (paraiso_dark-colors
        '(
          (bg         . "#2f1e2e")
          (fg         . "#a39e9b")
          (cursor     . "#a39e9b")
          (cursor-txt . "#2f1e2e")
          (selection  . "#4f424c")
          (selection-fg . "#a39e9b")
          (black      . "#2f1e2e")
          (red        . "#ef6155")
          (green      . "#48b685")
          (yellow     . "#fec418")
          (blue       . "#06b6ef")
          (magenta    . "#815ba4")
          (cyan       . "#5bc4bf")
          (white      . "#a39e9b")
          (br-black   . "#776e71")
          (br-red     . "#ef6155")
          (br-green   . "#48b685")
          (br-yellow  . "#fec418")
          (br-blue    . "#06b6ef")
          (br-magenta . "#815ba4")
          (br-cyan    . "#5bc4bf")
          (br-white   . "#e7e9db")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key paraiso_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'paraiso_dark

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

(provide-theme 'paraiso_dark)
