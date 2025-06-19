(deftheme zenburn
  "zenburn-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (zenburn-colors
        '(
          (bg         . "#3f3f3f")
          (fg         . "#dcdccc")
          (cursor     . "#73635a")
          (cursor-txt . "#000000")
          (selection  . "#21322f")
          (selection-fg . "#c2d87a")
          (black      . "#4d4d4d")
          (red        . "#705050")
          (green      . "#60b48a")
          (yellow     . "#f0dfaf")
          (blue       . "#506070")
          (magenta    . "#dc8cc3")
          (cyan       . "#8cd0d3")
          (white      . "#dcdccc")
          (br-black   . "#709080")
          (br-red     . "#dca3a3")
          (br-green   . "#c3bf9f")
          (br-yellow  . "#e0cf9f")
          (br-blue    . "#94bff3")
          (br-magenta . "#ec93d3")
          (br-cyan    . "#93e0e3")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key zenburn-colors)) 'unspecified))))

  (custom-theme-set-faces
   'zenburn

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

(provide-theme 'zenburn)
