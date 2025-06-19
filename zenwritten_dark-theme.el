(deftheme zenwritten_dark
  "zenwritten_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (zenwritten_dark-colors
        '(
          (bg         . "#191919")
          (fg         . "#bbbbbb")
          (cursor     . "#c9c9c9")
          (cursor-txt . "#191919")
          (selection  . "#404040")
          (selection-fg . "#bbbbbb")
          (black      . "#191919")
          (red        . "#de6e7c")
          (green      . "#819b69")
          (yellow     . "#b77e64")
          (blue       . "#6099c0")
          (magenta    . "#b279a7")
          (cyan       . "#66a5ad")
          (white      . "#bbbbbb")
          (br-black   . "#3d3839")
          (br-red     . "#e8838f")
          (br-green   . "#8bae68")
          (br-yellow  . "#d68c67")
          (br-blue    . "#61abda")
          (br-magenta . "#cf86c1")
          (br-cyan    . "#65b8c1")
          (br-white   . "#8e8e8e")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key zenwritten_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'zenwritten_dark

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

(provide-theme 'zenwritten_dark)
