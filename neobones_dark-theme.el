(deftheme neobones_dark
  "neobones_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (neobones_dark-colors
        '(
          (bg         . "#0f191f")
          (fg         . "#c6d5cf")
          (cursor     . "#ceddd7")
          (cursor-txt . "#0f191f")
          (selection  . "#3a3e3d")
          (selection-fg . "#c6d5cf")
          (black      . "#0f191f")
          (red        . "#de6e7c")
          (green      . "#90ff6b")
          (yellow     . "#b77e64")
          (blue       . "#8190d4")
          (magenta    . "#b279a7")
          (cyan       . "#66a5ad")
          (white      . "#c6d5cf")
          (br-black   . "#263945")
          (br-red     . "#e8838f")
          (br-green   . "#a0ff85")
          (br-yellow  . "#d68c67")
          (br-blue    . "#92a0e2")
          (br-magenta . "#cf86c1")
          (br-cyan    . "#65b8c1")
          (br-white   . "#98a39e")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key neobones_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'neobones_dark

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

(provide-theme 'neobones_dark)
