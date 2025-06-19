(deftheme slate
  "slate-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (slate-colors
        '(
          (bg         . "#222222")
          (fg         . "#35b1d2")
          (cursor     . "#87d3c4")
          (cursor-txt . "#323232")
          (selection  . "#0f3754")
          (selection-fg . "#2dffc0")
          (black      . "#222222")
          (red        . "#e2a8bf")
          (green      . "#81d778")
          (yellow     . "#c4c9c0")
          (blue       . "#264b49")
          (magenta    . "#a481d3")
          (cyan       . "#15ab9c")
          (white      . "#02c5e0")
          (br-black   . "#ffffff")
          (br-red     . "#ffcdd9")
          (br-green   . "#beffa8")
          (br-yellow  . "#d0ccca")
          (br-blue    . "#7ab0d2")
          (br-magenta . "#c5a7d9")
          (br-cyan    . "#8cdfe0")
          (br-white   . "#e0e0e0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key slate-colors)) 'unspecified))))

  (custom-theme-set-faces
   'slate

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

(provide-theme 'slate)
