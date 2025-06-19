(deftheme dracula
  "dracula-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (dracula-colors
        '(
          (bg         . "#1e1f29")
          (fg         . "#e6e6e6")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#44475a")
          (selection-fg . "#ffffff")
          (black      . "#000000")
          (red        . "#ff5555")
          (green      . "#50fa7b")
          (yellow     . "#f1fa8c")
          (blue       . "#bd93f9")
          (magenta    . "#ff79c6")
          (cyan       . "#8be9fd")
          (white      . "#bbbbbb")
          (br-black   . "#555555")
          (br-red     . "#ff5555")
          (br-green   . "#50fa7b")
          (br-yellow  . "#f1fa8c")
          (br-blue    . "#bd93f9")
          (br-magenta . "#ff79c6")
          (br-cyan    . "#8be9fd")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key dracula-colors)) 'unspecified))))

  (custom-theme-set-faces
   'dracula

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

(provide-theme 'dracula)
